import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  JoinColumn,
  Index,
} from "typeorm";
import { Airline } from "./Airline";
import { Airport } from "./Airport";

@Entity()
export class Flight {
  @PrimaryGeneratedColumn()
  ID!: number;

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

  @ManyToOne(() => Airport)
  @JoinColumn({ name: "departureAirport" })
  @Index("fk_flight_airport1_idx")
  departureAirport!: Airport;

  @ManyToOne(() => Airport)
  @JoinColumn({ name: "arrivalAirport" })
  @Index("fk_flight_airport2_idx")
  arrivalAirport!: Airport;

  @ManyToOne(() => Airline)
  @JoinColumn({ name: "airlineID" })
  @Index("FKflight48259")
  airline!: Airline;
}
