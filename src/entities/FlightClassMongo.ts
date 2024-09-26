import { Entity, ObjectIdColumn, ObjectId, Column } from "typeorm";

@Entity()
export class FlightClassMongo {
  @ObjectIdColumn()
  id!: ObjectId;

  @Column()
  class_id!: number;

  @Column()
  name!: string;
}
