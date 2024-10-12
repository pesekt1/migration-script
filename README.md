# Migration script:
Migrates data from MySQL to MongoDB.

## MySQL ERD:
![MySQL ERD](./src/assets/flight%20booking%20system%20ERD.png)

## MongoDB Design - Collections:
You can see the examples of the collections in the `src/collections-examples` folder where each collection is represented by a json document:
- airlines.json
- airports.json
- bookings.json
- flights.json
- passengers.json

Example of passenger document:
```json
{
  "passenger_id": 1,
  "first_name": "John Doe",
  "last_name": "Doe",
  "tickets": [
    {
      "ticket_id": 1,
      "ticket_number": "1234567890",
      "price": 100.0,
      "confirmation_number": "ABC123",
      "class": {
        "class_id": 1,
        "name": "First Class"
      },
      "flight": {
        "flight_id": 1,
        "flight_number": "AA123",
        "departure_time": "2015-01-01T12:00:00Z",
        "arrival_time": "2015-01-01T13:00:00Z",
        "airline": {
          "airline_id": 1,
          "name": "American Airlines",
          "code": "AA"
        },
        "arrival_airport": {
          "airport_id": 1,
          "name": "Los Angeles International Airport",
          "code": "LAX"
        },
        "departure_airport": {
          "airport_id": 2,
          "name": "San Francisco International Airport",
          "code": "SFO"
        }
      }
    }
  ]
}
```


## Neo4j Design - Graph:
![Neo4j schema](./src/assets/booking-neo4j-schema.png)

## Neo4j Data example:
![Neo4j Data](./src/assets/neo4j_booking.png)

## TODO
I have a typo in the passengers table in myslq. fist_name should be first_name. 