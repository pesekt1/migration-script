import {
  createNode,
  createRelationship,
  recreateDatabase,
  closeDriver,
} from "./neo4jConnection";
import fetchMySQLData from "./fetchDataFromMysql";

import { Airline } from "./entities/Airline";
import { FlightClass } from "./entities/FlightClass";
import { Flight } from "./entities/Flight";
import { Passenger } from "./entities/Passenger";
import { Booking } from "./entities/Booking";
import { Ticket } from "./entities/Ticket";
import { Airport } from "./entities/Airport";

async function migrateAirlinesToNeo4j(airlines: Airline[]) {
  for (const airline of airlines) {
    await createNode("Airline", { id: airline.ID, name: airline.name });
  }
}

async function migrateFlightClassesToNeo4j(flightClasses: FlightClass[]) {
  for (const flightClass of flightClasses) {
    await createNode("FlightClass", {
      id: flightClass.ID,
      name: flightClass.name,
    });
  }
}

async function migratePassengersToNeo4j(passengers: Passenger[]) {
  for (const passenger of passengers) {
    await createNode("Passenger", {
      id: passenger.ID,
      first_name: passenger.fist_name,
      last_name: passenger.last_name,
    });
  }
}

async function migrateBookingsToNeo4j(bookings: Booking[]) {
  for (const booking of bookings) {
    await createNode("Booking", {
      id: booking.ID,
    });
  }
}

async function migrateTicketsToNeo4j(tickets: Ticket[]) {
  for (const ticket of tickets) {
    await createNode("Ticket", {
      id: ticket.ID,
      ticketNumber: ticket.ticketNumber,
      price: ticket.Price,
      confirmationNumber: ticket.ConfirmationNumber,
    });

    // Create relationships
    await createRelationship(
      "Ticket",
      ticket.ID,
      "FOR",
      "Flight",
      ticket.flight.ID
    );
    await createRelationship(
      "Ticket",
      ticket.ID,
      "OF_CLASS",
      "FlightClass",
      ticket.flightClass.ID
    );
    await createRelationship(
      "Passenger",
      ticket.passenger.ID,
      "PURCHASED",
      "Ticket",
      ticket.ID
    );
    await createRelationship(
      "Ticket",
      ticket.ID,
      "BELONGS_TO",
      "Booking",
      ticket.booking.ID
    );
  }
}

async function migrateAirportsToNeo4j(airports: Airport[]) {
  for (const airport of airports) {
    await createNode("Airport", {
      id: airport.ID,
      code: airport.code,
      name: airport.name,
      city: airport.city,
      state: airport.state,
    });
  }
}

async function migrateFlightsToNeo4j(flights: Flight[]) {
  for (const flight of flights) {
    await createNode("Flight", {
      id: flight.ID,
      number: flight.number,
      departureDateTime: flight.departureDateTime.toISOString(),
      arrivalDateTime: flight.arrivalDateTime.toISOString(),
      duration: flight.duration,
      distance: flight.distance,
    });

    // Create relationships
    await createRelationship(
      "Flight",
      flight.ID,
      "DEPARTS_FROM",
      "Airport",
      flight.departureAirport.ID
    );
    await createRelationship(
      "Flight",
      flight.ID,
      "ARRIVES_AT",
      "Airport",
      flight.arrivalAirport.ID
    );
    await createRelationship(
      "Flight",
      flight.ID,
      "OPERATED_BY",
      "Airline",
      flight.airline.ID
    );
  }
}

async function migrateToNeo4j() {
  const data = await fetchMySQLData();
  if (!data) {
    console.log("No data fetched from MySQL, exiting...");
    return;
  }
  const {
    airlines,
    airports,
    flightsExtended,
    passengers,
    bookings,
    ticketsExtended,
  } = data;
  console.log(flightsExtended);

  try {
    await recreateDatabase();
  } catch (error) {
    console.log("Error:", error);
  }

  try {
    await migrateAirlinesToNeo4j(airlines);
    await migrateAirportsToNeo4j(airports);
    await migrateFlightsToNeo4j(flightsExtended);
    await migrateFlightClassesToNeo4j(data.flightClasses);
    await migratePassengersToNeo4j(passengers);
    await migrateBookingsToNeo4j(bookings);
    await migrateTicketsToNeo4j(ticketsExtended);
    console.log("Migration successful.");
  } catch (error) {
    console.log("Error migrating data:", error);
  } finally {
    await closeDriver();
  }
}

export default migrateToNeo4j;
