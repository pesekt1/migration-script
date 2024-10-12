import {
  createNode,
  createRelationship,
  recreateDatabase,
  closeDriver,
} from "./neo4jConnection";
import fetchMySQLData from "./fetchDataFromMysql";

async function migrateAirlinesToNeo4j(
  airlines: { ID: number; name: string }[],
  database: string
) {
  for (const airline of airlines) {
    await createNode(
      "Airline",
      { id: airline.ID, name: airline.name },
      database
    );
  }
}

async function migrateFlightClassesToNeo4j(
  flightClasses: { ID: number; name: string }[],
  database: string
) {
  for (const flightClass of flightClasses) {
    await createNode(
      "FlightClass",
      { id: flightClass.ID, name: flightClass.name },
      database
    );
  }
}

async function migratePassengersToNeo4j(
  passengers: { ID: number; fist_name: string; last_name: string }[],
  database: string
) {
  for (const passenger of passengers) {
    await createNode(
      "Passenger",
      {
        id: passenger.ID,
        first_name: passenger.fist_name,
        last_name: passenger.last_name,
      },
      database
    );
  }
}

async function migrateBookingsToNeo4j(
  bookings: { ID: number }[],
  database: string
) {
  for (const booking of bookings) {
    await createNode(
      "Booking",
      {
        id: booking.ID,
      },
      database
    );
  }
}

async function migrateTicketsToNeo4j(tickets: any[], database: string) {
  for (const ticket of tickets) {
    await createNode(
      "Ticket",
      {
        id: ticket.ID,
        ticketNumber: ticket.ticketNumber,
        price: ticket.Price,
        confirmationNumber: ticket.ConfirmationNumber,
      },
      database
    );

    // Create relationships
    await createRelationship(
      "Ticket",
      ticket.ID,
      "FOR",
      "Flight",
      ticket.flight.ID,
      database
    );
    await createRelationship(
      "Ticket",
      ticket.ID,
      "OF_CLASS",
      "FlightClass",
      ticket.flightClass.ID,
      database
    );
    await createRelationship(
      "Ticket",
      ticket.ID,
      "FOR",
      "Passenger",
      ticket.passenger.ID,
      database
    );
    await createRelationship(
      "Booking",
      ticket.booking.ID,
      "CONTAINS",
      "Ticket",
      ticket.ID,
      database
    );
  }
}

async function migrateAirportsToNeo4j(
  airports: {
    ID: number;
    code: string;
    name: string;
    city: string;
    state: string;
  }[],
  database: string
) {
  for (const airport of airports) {
    await createNode(
      "Airport",
      {
        id: airport.ID,
        code: airport.code,
        name: airport.name,
        city: airport.city,
        state: airport.state,
      },
      database
    );
  }
}

async function migrateFlightsToNeo4j(flights: any[], database: string) {
  for (const flight of flights) {
    await createNode(
      "Flight",
      {
        id: flight.ID,
        number: flight.number,
        departureDateTime: flight.departureDateTime.toISOString(),
        arrivalDateTime: flight.arrivalDateTime.toISOString(),
        duration: flight.duration,
        distance: flight.distance,
      },
      database
    );

    // Create relationships
    await createRelationship(
      "Flight",
      flight.ID,
      "DEPARTS_FROM",
      "Airport",
      flight.departureAirport.ID,
      database
    );
    await createRelationship(
      "Flight",
      flight.ID,
      "ARRIVES_AT",
      "Airport",
      flight.arrivalAirport.ID,
      database
    );
    await createRelationship(
      "Flight",
      flight.ID,
      "OPERATED_BY",
      "Airline",
      flight.airline.ID,
      database
    );
  }
}

async function migrateToNeo4j(database: string) {
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
    await recreateDatabase(database);
  } catch (error) {
    console.log("Error:", error);
  }

  try {
    await migrateAirlinesToNeo4j(airlines, database);
    await migrateAirportsToNeo4j(airports, database);
    await migrateFlightsToNeo4j(flightsExtended, database);
    await migrateFlightClassesToNeo4j(data.flightClasses, database);
    await migratePassengersToNeo4j(passengers, database);
    await migrateBookingsToNeo4j(bookings, database);
    await migrateTicketsToNeo4j(ticketsExtended, database);
    console.log("Migration successful.");
  } catch (error) {
    console.log("Error migrating data:", error);
  } finally {
    await closeDriver();
  }
}

export default migrateToNeo4j;
