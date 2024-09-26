import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  JoinColumn,
  Index,
} from "typeorm";
import { Flight } from "./Flight";
import { FlightClass } from "./FlightClass";
import { Passenger } from "./Passenger";
import { Booking } from "./Booking";
import { Airport } from "./Airport";

@Entity()
export class Ticket {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column()
  ticketNumber!: string;

  @Column("double")
  Price!: number;

  @Column()
  ConfirmationNumber!: string;

  @ManyToOne(() => Passenger, (passenger) => passenger.tickets)
  passenger!: Passenger;

  @ManyToOne(() => Flight)
  @JoinColumn({ name: "flightID" })
  @Index("issued for")
  flight!: Flight;

  @ManyToOne(() => FlightClass)
  @JoinColumn({ name: "flightClassID" })
  @Index("has")
  flightClass!: FlightClass;

  @ManyToOne(() => Booking)
  @JoinColumn({ name: "booking_ID" })
  @Index("fk_ticket_booking1_idx")
  booking!: Booking;
}
