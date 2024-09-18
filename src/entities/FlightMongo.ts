import { Entity, ObjectIdColumn, ObjectId, Column } from "typeorm";
import { AirlineMongo } from "./AirlineMongo";

@Entity()
export class FlightMongo {
  @ObjectIdColumn()
  id!: ObjectId;

  @Column()
  number!: string;

  @Column()
  departureDateTime!: Date;

  @Column()
  arrivalDateTime!: Date;

  @Column()
  duration!: number;

  @Column()
  distance!: number;

  @Column((type) => AirlineMongo)
  airline!: AirlineMongo;
}
