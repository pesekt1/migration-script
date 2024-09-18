import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity()
export class Airport {
  @PrimaryGeneratedColumn()
  ID!: number;

  @Column()
  code!: string;

  @Column()
  name!: string;

  @Column()
  city!: string;

  @Column()
  state!: string;
}
