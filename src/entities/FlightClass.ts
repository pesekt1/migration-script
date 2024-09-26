import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "flightclass" })
export class FlightClass {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column()
  name!: string;
}
