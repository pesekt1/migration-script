import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  JoinColumn,
  OneToMany,
  ManyToMany,
  JoinTable,
} from "typeorm";
import { Ticket } from "./Ticket";
import { Booking } from "./Booking";

@Entity()
export class Passenger {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column()
  fist_name!: string;

  @Column()
  last_name!: string;

  @OneToMany(() => Ticket, (ticket) => ticket.passenger)
  @JoinColumn({ name: "passengerID" })
  tickets!: Ticket[];

  @ManyToMany(() => Booking, (booking) => booking.passengers)
  @JoinTable({
    name: "ticket", // Table name for the junction table
    joinColumn: {
      name: "passengerID",
      referencedColumnName: "ID",
    },
    inverseJoinColumn: {
      name: "booking_ID",
      referencedColumnName: "ID",
    },
  })
  bookings!: Booking[];
}
