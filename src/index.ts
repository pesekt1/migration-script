import "reflect-metadata";
import { AirlineMongo } from "./entities/AirlineMongo";
import { AirportMongo } from "./entities/AirportMongo";
import { Flight } from "./entities/Flight";
import { FlightMongo } from "./entities/FlightMongo";
import { PassengerMongo } from "./entities/PassengerMongo";
import { TicketMongo } from "./entities/TicketMongo";
import fetchMySQLData from "./fetchDataFromMysql";
import MongoDataSource from "./mongoDataSource";
import MysqlDataSource from "./mysqlDataSource";
import { BookingMongo } from "./entities/BookingMongo";

async function migrate() {
  const data = await fetchMySQLData();
  if (!data) {
    console.log("No data fetched from MySQL, exiting...");
    return;
  }
  const {
    airlines,
    airports,
    flights,
    passengers,
    bookings,
    tickets,
    flightClasses,
  } = data;

  try {
    await MongoDataSource.initialize();
    console.log("Connected to the MongoDB database!");

    //mongoAirlineRepository--------------------------
    const mongoAirlineRepository =
      MongoDataSource.getMongoRepository(AirlineMongo);

    await mongoAirlineRepository.deleteMany({});

    await mongoAirlineRepository.insertMany(airlines);
    console.log("Airlines data copied to MongoDB!");

    //mongoAirportRepository----------------------------
    const mongoAirportRepository =
      MongoDataSource.getMongoRepository(AirportMongo);

    await mongoAirportRepository.deleteMany({});

    await mongoAirportRepository.insertMany(airports);
    console.log("Airport data copied to MongoDB!");

    //mongoFlightRepository------------------------------
    const mongoFlightRepository =
      MongoDataSource.getMongoRepository(FlightMongo);

    await mongoFlightRepository.deleteMany({});

    await mongoFlightRepository.insertMany(flights);
    console.log("Flights data copied to MongoDB!");

    //mongoPassengerRepository ----------------------------
    const mongoPassengerRepository =
      MongoDataSource.getMongoRepository(PassengerMongo);

    await mongoPassengerRepository.deleteMany({});

    await mongoPassengerRepository.insertMany(passengers);

    console.log("Passengers data copied to MongoDB!");

    //mongoBookingRepository----------------------------
    const mongoBookingRepository =
      MongoDataSource.getMongoRepository(BookingMongo);

    await mongoBookingRepository.deleteMany({});

    await mongoBookingRepository.insertMany(bookings);

    console.log("Bookings data copied to MongoDB!");
  } catch (error) {
    console.log("Error:", error);
  } finally {
    await MysqlDataSource.destroy();
    await MongoDataSource.destroy();
  }
}

migrate();
