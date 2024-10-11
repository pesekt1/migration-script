import { DataSource } from "typeorm";
import { Airline } from "./entities/Airline";
import { Airport } from "./entities/Airport";
import { Flight } from "./entities/Flight";
import { Passenger } from "./entities/Passenger";
import { Booking } from "./entities/Booking";
import { Ticket } from "./entities/Ticket";
import { FlightClass } from "./entities/FlightClass";

const mysqlConnectionString = "mysql://migration:1234@localhost:3306/booking3";

const MysqlDataSource = new DataSource({
  type: "mysql",
  url: mysqlConnectionString,
  entities: [Airline, Airport, Flight, Passenger, Booking, Ticket, FlightClass],
  synchronize: false,
  logging: false,
});

export default MysqlDataSource;
