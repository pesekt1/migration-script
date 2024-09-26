import { Entity, ObjectIdColumn, ObjectId, Column } from "typeorm";
import { TicketMongo } from "./TicketMongo";

@Entity()
export class PassengerMongo {
  @ObjectIdColumn()
  id!: ObjectId;

  @Column()
  passenger_id!: number;

  @Column()
  first_name!: string;

  @Column()
  last_name!: string;

  @Column((type) => TicketMongo)
  tickets!: TicketMongo[];
}
