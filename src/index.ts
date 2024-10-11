import "reflect-metadata";
import MigrateToMongo from "./MigrateToMongo";

async function runMigration() {
  try {
    await MigrateToMongo();
  } catch (error) {
    console.log("Error:", error);
  }
}

runMigration();
