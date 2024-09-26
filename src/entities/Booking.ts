import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToMany,
  ManyToMany,
} from "typeorm";
import { Passenger } from "./Passenger";
import { Ticket } from "./Ticket";

@Entity()
export class Booking {
  @PrimaryGeneratedColumn()
  ID!: number;

  @ManyToMany(() => Passenger, (passenger) => passenger.bookings)
  passengers!: Passenger[];

  //same for tickets
  @OneToMany(() => Ticket, (ticket) => ticket.booking)
  tickets!: Ticket[];
}
