import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { PassengerMongo } from "./PassengerMongo";

@Entity()
export class BookingMongo {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column((type) => PassengerMongo)
  passengers!: PassengerMongo[];
}
