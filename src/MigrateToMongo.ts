import { AirlineMongo } from "./entities/AirlineMongo";
import { AirportMongo } from "./entities/AirportMongo";
import { FlightMongo } from "./entities/FlightMongo";
import { PassengerMongo } from "./entities/PassengerMongo";
import { BookingMongo } from "./entities/BookingMongo";
import MongoDataSource from "./mongoDataSource";
import fetchMySQLData from "./fetchDataFromMysql";

const MigrateToMongo = async () => {
  const data = await fetchMySQLData();
  if (!data) {
    console.log("No data fetched from MySQL, exiting...");
    return;
  }
  const { airlines, airports, flights, passengers, bookings } = data;

  try {
    const repos = await initializeMongoDataSource();

    if (!repos) {
      console.log("Error in MongoDB DataSource, exiting...");
      return;
    }

    const {
      mongoAirlineRepository,
      mongoAirportRepository,
      mongoFlightRepository,
      mongoPassengerRepository,
      mongoBookingRepository,
    } = repos;

    await mongoAirlineRepository.insertMany(airlines);
    console.log("Airlines data copied to MongoDB!");

    await mongoAirportRepository.insertMany(airports);
    console.log("Airport data copied to MongoDB!");

    await mongoFlightRepository.insertMany(flights);
    console.log("Flights data copied to MongoDB!");

    await mongoPassengerRepository.insertMany(passengers);
    console.log("Passengers data copied to MongoDB!");

    await mongoBookingRepository.insertMany(bookings);
    console.log("Bookings data copied to MongoDB!");
  } catch (error) {
    console.log("Error:", error);
  } finally {
    await MongoDataSource.destroy();
  }
};

const initializeMongoDataSource = async () => {
  try {
    await MongoDataSource.initialize();
    console.log("Connected to the MongoDB database!");

    //mongoAirlineRepository--------------------------
    const mongoAirlineRepository =
      MongoDataSource.getMongoRepository(AirlineMongo);

    await mongoAirlineRepository.deleteMany({});

    //mongoAirportRepository----------------------------
    const mongoAirportRepository =
      MongoDataSource.getMongoRepository(AirportMongo);

    await mongoAirportRepository.deleteMany({});

    //mongoFlightRepository------------------------------
    const mongoFlightRepository =
      MongoDataSource.getMongoRepository(FlightMongo);

    await mongoFlightRepository.deleteMany({});

    //mongoPassengerRepository ----------------------------
    const mongoPassengerRepository =
      MongoDataSource.getMongoRepository(PassengerMongo);

    await mongoPassengerRepository.deleteMany({});

    //mongoBookingRepository----------------------------
    const mongoBookingRepository =
      MongoDataSource.getMongoRepository(BookingMongo);

    await mongoBookingRepository.deleteMany({});

    return {
      mongoAirlineRepository,
      mongoAirportRepository,
      mongoFlightRepository,
      mongoPassengerRepository,
      mongoBookingRepository,
    };
  } catch (error) {
    console.log("Error:", error);
  }
};

export default MigrateToMongo;
