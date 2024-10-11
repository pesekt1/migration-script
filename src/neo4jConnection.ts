import neo4j from "neo4j-driver";

// Create a Neo4j driver instance
const driver = neo4j.driver(
  "neo4j://localhost", // Replace with your Neo4j instance URL if different
  neo4j.auth.basic("neo4j", "12345678") // Replace with your Neo4j username and password
);

// Function to test the connection and perform a basic query
async function testConnection(database?: string) {
  const session = driver.session({ database });

  try {
    // Run a basic query to test the connection
    const result = await session.run("MATCH (n) RETURN n LIMIT 10");
    console.log("Neo4j connection successful:");
    result.records.forEach((record) => {
      const node = record.get("n");
      console.log(node.properties);
    });
  } catch (error) {
    console.error("Error connecting to Neo4j:", error);
  } finally {
    // Close the session and driver
    await session.close();
    await driver.close();
  }
}

async function recreateDatabase(database: string) {
  const session = driver.session({ database: "system" });

  try {
    // Drop the database if it exists
    await session.run(`DROP DATABASE ${database} IF EXISTS`);
    await new Promise((resolve) => setTimeout(resolve, 1000));
    console.log(`Database ${database} dropped successfully`);

    // Create the new database
    await session.run(`CREATE DATABASE ${database}`);
    console.log(`Database ${database} created successfully`);

    // Add a delay to ensure the database is fully created
    await new Promise((resolve) => setTimeout(resolve, 1000));
  } catch (error) {
    console.error("Error dropping database:", error);
  } finally {
    await session.close(); // Close the session
  }
}

// Function to create a relationship between nodes
const createRelationship = async (
  fromLabel: string,
  fromId: number | string,
  relationship: string,
  toLabel: string,
  toId: number | string,
  database?: string
) => {
  const session = driver.session({ database });

  try {
    // Construct the Cypher query
    const query = `
      MATCH (a:${fromLabel} {id: $fromId}), (b:${toLabel} {id: $toId})
      CREATE (a)-[:${relationship}]->(b)
    `;
    const params = { fromId, toId };

    // Run the query to create the relationship
    await session.run(query, params);
    console.log(
      `Relationship ${relationship} created successfully between ${fromLabel} ${fromId} and ${toLabel} ${toId}`
    );
  } catch (error) {
    console.error(`Error creating relationship ${relationship}:`, error);
  } finally {
    // Close the session
    await session.close();
  }
};

async function createNode(
  label: string,
  properties: Record<string, any>,
  database?: string
) {
  const session = driver.session({ database });

  try {
    // Construct the Cypher query
    const query = `CREATE (n:${label} $properties) RETURN n`;
    const params = { properties };

    // Run the query to create the node
    const result = await session.run(query, params);
    console.log(
      "Node created successfully:",
      result.records[0].get("n").properties
    );
  } catch (error) {
    console.error("Error creating node:", error);
  } finally {
    // Close the session
    await session.close();
  }
}

async function closeDriver() {
  await driver.close();
}

export {
  testConnection,
  createNode,
  recreateDatabase,
  createRelationship,
  closeDriver,
};
