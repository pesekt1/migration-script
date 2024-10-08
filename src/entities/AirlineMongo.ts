import { Entity, ObjectIdColumn, ObjectId, Column } from "typeorm";

@Entity()
export class AirlineMongo {
  @ObjectIdColumn()
  id!: ObjectId;

  @Column()
  name!: string;
}
