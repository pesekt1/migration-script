import "reflect-metadata";
import { DataSource } from "typeorm";
import { Airline } from "./entities/Airline";
import { AirlineMongo } from "./entities/AirlineMongo";
import { Airport } from "./entities/Airport";
import { AirportMongo } from "./entities/AirportMongo";
import { Flight } from "./entities/Flight";
import { FlightMongo } from "./entities/FlightMongo";

const mysqlConnectionString = "mysql://migration:1234@localhost:3306/booking3";
const mongoConnectionString = "mongodb://localhost:27017/booking";

const MysqlDataSource = new DataSource({
  type: "mysql",
  url: mysqlConnectionString,
  entities: [Airline, Airport, Flight],
  synchronize: false,
  logging: false,
});

const MongoDataSource = new DataSource({
  type: "mongodb",
  url: mongoConnectionString,
  useNewUrlParser: true,
  useUnifiedTopology: true,
  entities: [AirlineMongo, AirportMongo, FlightMongo],
  synchronize: true,
  logging: false,
});

async function migrate() {
  try {
    await MysqlDataSource.initialize();
    console.log("Connected to the MySQL database!");

    // Get the repository for the Airline entity
    const mysqlAirlineRepository = MysqlDataSource.getRepository(Airline);
    const mysqlAirportRepository = MysqlDataSource.getRepository(Airport);
    const mysqlFlightRepository = MysqlDataSource.getRepository(Flight);

    // Query data from mysql database:
    const airlines = await mysqlAirlineRepository.find();
    console.log("Airlines from MySQL:", airlines);

    const airports = await mysqlAirportRepository.find();
    console.log("Airport from MySQL:", airports);

    const flights = await mysqlFlightRepository.find();
    console.log("Flights from MySQL:", flights);

    await MongoDataSource.initialize();
    console.log("Connected to the MongoDB database!");

    // Get the repository for the Airline entity
    const mongoAirlineRepository =
      MongoDataSource.getMongoRepository(AirlineMongo);

    await mongoAirlineRepository.deleteMany({});

    await mongoAirlineRepository.insertMany(airlines);
    console.log("Airlines data copied to MongoDB!");

    const mongoAirportRepository =
      MongoDataSource.getMongoRepository(AirportMongo);

    await mongoAirportRepository.deleteMany({});

    await mongoAirportRepository.insertMany(airports);
    console.log("Airport data copied to MongoDB!");

    const mongoFlightRepository =
      MongoDataSource.getMongoRepository(FlightMongo);

    await mongoFlightRepository.deleteMany({});

    // Map MySQL flights to MongoDB flights with embedded airline information
    const mongoFlights = flights.map((flight) => {
      const mongoFlight = new Flight();
      mongoFlight.number = flight.number;
      mongoFlight.departureDateTime = flight.departureDateTime;
      mongoFlight.arrivalDateTime = flight.arrivalDateTime;
      mongoFlight.duration = flight.duration;
      mongoFlight.distance = flight.distance;

      const foundAirline = airlines.find((airline) => airline.ID === flight.ID);

      if (!foundAirline) {
        throw new Error(`Airline with ID ${flight.ID} not found`);
      }

      mongoFlight.airline = foundAirline; // Embed the correct airline object
      return mongoFlight;
    });

    await mongoFlightRepository.insertMany(mongoFlights);
    console.log("Flights data copied to MongoDB!");
  } catch (error) {
    console.log("Error:", error);
  } finally {
    await MysqlDataSource.destroy();
    await MongoDataSource.destroy();
  }
}

migrate();

// MysqlDataSource.initialize()
//   .then(async () => {
//     console.log("Connected to the MySQL database!");

//     // Get the repository for the Airline entity
//     const airlineRepository = MysqlDataSource.getRepository(Airline);

//     // Query some data from the airline table
//     const airlines = await airlineRepository.find();
//     console.log("Airlines:", airlines);
//   })
//   .catch((error) =>
//     console.log("Error connecting to the MySQL database: ", error)
//   );

// MongoDataSource.initialize()
//   .then(async () => {
//     console.log("Connected to the MongoDB database!");

//     // Get the repository for the Airline entity
//     const airlineRepository = MongoDataSource.getMongoRepository(Airline);

//     // Query some data from the airline collection
//     const airlines = await airlineRepository.find();
//     console.log("Airlines from MongoDB:", airlines);
//   })
//   .catch((error) =>
//     console.log("Error connecting to the MongoDB database: ", error)
//   );
