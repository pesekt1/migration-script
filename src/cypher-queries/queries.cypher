// Query Data

// Get All Flights Operated by a Specific Airline
MATCH (a:Airline { name: 'American Airlines' })-[o:OPERATED_BY]-(f:Flight)
RETURN f, o, a;

// Get All Passengers on a Specific Flight
MATCH (f:Flight { number: 'AA3131' })<-[fo:FOR]-(t:Ticket)<-[pu:PURCHASED]-(p:Passenger)
RETURN f, fo, t, pu, p;

// Get All Flights Departing from a Specific Airport
MATCH (a:Airport { code: 'JFK' })<-[d:DEPARTS_FROM]-(f:Flight)
RETURN a, d, f;

// Get All Tickets for a Specific Passenger
MATCH (p:Passenger { first_name: 'John', last_name: 'Doe' })-[pu:PURCHASED]->(t:Ticket)
RETURN p, pu, t;

// Get All Flights and Their Departure and Arrival Airports
MATCH (f:Flight)-[d:DEPARTS_FROM]->(da:Airport), (f)-[a:ARRIVES_AT]->(aa:Airport)
RETURN f, d, da, a, aa

// Get All Passengers and Their Booked Flights
MATCH (p:Passenger)-[pu:PURCHASED]->(t:Ticket)-[fo:FOR]->(f:Flight)
RETURN p, pu, t, fo, f

// Get All Flights with Their Airlines - using alias
MATCH (f:Flight)-[:OPERATED_BY]->(a:Airline)
RETURN f.number AS FlightNumber, a.name AS AirlineName;

//Get all passengers who did not purchase any ticket.
MATCH (p:Passenger)
WHERE NOT (p)-[:PURCHASED]->(:Ticket)
RETURN p;

// Get all airlines that don't operate any flight
MATCH (a:Airline)
WHERE NOT (a)-[:OPERATED_BY]->(:Flight)
RETURN a;

// Get all airports that are not used as departure or arrival
MATCH (a:Airport)
WHERE NOT (a)<-[:DEPARTS_FROM]-(:Flight) AND NOT (a)<-[:ARRIVES_AT]-(:Flight)
RETURN a;

// Get bookings with more than one ticket
MATCH (b:Booking)<-[:BELONGS_TO]-(t:Ticket)
WITH b, COUNT(t) AS ticketCount
WHERE ticketCount > 1
RETURN b, ticketCount;

// Query flight classes and count how many times they were used in tickets, including those not used at all
MATCH (fc:FlightClass)
OPTIONAL MATCH (fc)<-[:OF_CLASS]-(t:Ticket)
WITH fc, COUNT(t) AS ticketCount
RETURN fc.name AS FlightClassName, ticketCount
 ORDER BY ticketCount DESC;

// Update Data

// Update the Name of an Airline
MATCH (a:Airline { name: 'American Airlines' })
 SET a.name = 'American Airlines Inc.'
RETURN a;

// Update the Departure Time of a Flight
MATCH (f:Flight { number: 'AA101' })
 SET f.departureDateTime = '2023-10-01T11:00:00'
RETURN f;

// Delete Data

// Delete a Specific Ticket
MATCH (t:Ticket { ticketNumber: 'T12345' })
DETACH DELETE t;

// Delete a Specific Passenger
MATCH (p:Passenger { firstName: 'John', lastName: 'Doe' })
DETACH DELETE p;
