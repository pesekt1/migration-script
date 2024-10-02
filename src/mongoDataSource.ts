import { DataSource } from "typeorm";
import { AirlineMongo } from "./entities/AirlineMongo";
import { AirportMongo } from "./entities/AirportMongo";
import { FlightMongo } from "./entities/FlightMongo";
import { PassengerMongo } from "./entities/PassengerMongo";
import { TicketMongo } from "./entities/TicketMongo";
import { BookingMongo } from "./entities/BookingMongo";

const mongoConnectionString = "mongodb://localhost:27017/booking";

const MongoDataSource = new DataSource({
  type: "mongodb",
  url: mongoConnectionString,
  useNewUrlParser: true,
  useUnifiedTopology: true,
  entities: [
    AirlineMongo,
    AirportMongo,
    FlightMongo,
    PassengerMongo,
    TicketMongo,
    BookingMongo,
  ],
  synchronize: true,
  logging: true,
});

export default MongoDataSource;
