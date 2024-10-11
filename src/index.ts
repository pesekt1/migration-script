import "reflect-metadata";
import MigrateToMongo from "./MigrateToMongo";
import migrateToNeo4j from "./MigrateToNeo4j";

async function runMigrations() {
  try {
    await MigrateToMongo();
  } catch (error) {
    console.log("Error migrating to MongoDB:", error);
  }

  try {
    await migrateToNeo4j("testdb");
  } catch (error) {
    console.log("Error migrating to Neo4j:", error);
  }

  console.log("Migrations completed successfully!");
  process.exit(0);
}

runMigrations();
