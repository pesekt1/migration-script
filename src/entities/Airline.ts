import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity()
export class Airline {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column()
  name!: string;
}
