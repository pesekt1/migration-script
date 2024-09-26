import { Entity, ObjectIdColumn, ObjectId, Column } from "typeorm";

import { FlightClassMongo } from "./FlightClassMongo";
import { FlightMongo } from "./FlightMongo";
import { AirportMongo } from "./AirportMongo";

@Entity()
export class TicketMongo {
  @ObjectIdColumn()
  id!: ObjectId;

  @Column()
  ticket_id!: number;

  @Column()
  ticket_number!: string;

  @Column("double")
  price!: number;

  @Column()
  confirmation_number!: string;

  @Column((type) => FlightClassMongo)
  class!: FlightClassMongo;

  @Column((type) => FlightMongo)
  flight!: FlightMongo;

  @Column((type) => AirportMongo)
  arrival_airport!: AirportMongo;

  @Column((type) => AirportMongo)
  departure_airport!: AirportMongo;
}
