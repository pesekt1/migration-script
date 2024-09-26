import MysqlDataSource from "./mysqlDataSource";
import { Airline } from "./entities/Airline";
import { Airport } from "./entities/Airport";
import { Flight } from "./entities/Flight";
import { Passenger } from "./entities/Passenger";
import { Booking } from "./entities/Booking";
import { Ticket } from "./entities/Ticket";
import { FlightClass } from "./entities/FlightClass";

const fetchMySQLData = async () => {
  try {
    await MysqlDataSource.initialize();
    console.log("Connected to the MySQL database!");

    // Get the repository for the Airline entity
    const mysqlAirlineRepository = MysqlDataSource.getRepository(Airline);
    const mysqlAirportRepository = MysqlDataSource.getRepository(Airport);
    const mysqlFlightRepository = MysqlDataSource.getRepository(Flight);
    const mysqlPassengerRepository = MysqlDataSource.getRepository(Passenger);
    const mysqlBookingRepository = MysqlDataSource.getRepository(Booking);
    const mysqlTicketRepository = MysqlDataSource.getRepository(Ticket);
    const mysqlFlightClassRepository =
      MysqlDataSource.getRepository(FlightClass);

    // Query data from mysql database:
    const airlines = await mysqlAirlineRepository.find();
    console.log("Airlines from MySQL:", airlines);

    const airports = await mysqlAirportRepository.find();
    console.log("Airport from MySQL:", airports);

    const flights = await mysqlFlightRepository.find({
      relations: ["airline"],
    });
    console.log("Flights from MySQL:", flights);

    const passengers = await mysqlPassengerRepository.find({
      relations: [
        "tickets",
        "tickets.flight",
        "tickets.flight.airline",
        "tickets.flight.departureAirport",
        "tickets.flight.arrivalAirport",
        "tickets.flightClass",
      ],
    });
    console.log("Passengers from MySQL:", passengers);

    const bookings = await mysqlBookingRepository.find({
      relations: [
        "tickets",
        "tickets.passenger",
        "tickets.flight",
        "tickets.flightClass",
        "tickets.flight.airline",
        "tickets.flight.departureAirport",
        "tickets.flight.arrivalAirport",
      ],
    });
    console.log("Bookings from MySQL:", bookings);

    const tickets = await mysqlTicketRepository.find({
      relations: ["flight", "flightClass"],
    });
    console.log("Tickets from MySQL:", tickets);

    const flightClasses = await mysqlFlightClassRepository.find();
    console.log("Flight classes from MySQL:", flightClasses);
    return {
      airlines,
      airports,
      flights,
      passengers,
      bookings,
      tickets,
      flightClasses,
    };
  } catch (error) {
    console.error("Error connecting to MySQL database:", error);
  } finally {
    await MysqlDataSource.destroy();
  }
};

export default fetchMySQLData;
