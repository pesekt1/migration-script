import "reflect-metadata";
import MigrateToMongo from "./MigrateToMongo";

try {
  MigrateToMongo();
} catch (error) {
  console.log("Error:", error);
}
