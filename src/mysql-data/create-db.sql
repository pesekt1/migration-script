-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
  UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
  FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE,
  SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema booking3
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema booking3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `booking3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `booking3`;
-- -----------------------------------------------------
-- Table `booking3`.`airline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`airline` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`airport` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`booking` (`ID` INT NOT NULL, PRIMARY KEY (`ID`)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`flight` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(255) NOT NULL,
  `departureDateTime` DATE NOT NULL,
  `ArrivalDateTime` DATE NOT NULL,
  `Duration` INT NOT NULL,
  `Distance` INT NOT NULL,
  `departureAirport` INT NOT NULL,
  `arrivalAirport` INT NOT NULL,
  `airlineID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `FKflight48259` (`airlineID` ASC) VISIBLE,
  INDEX `fk_flight_airport1_idx` (`departureAirport` ASC) VISIBLE,
  INDEX `fk_flight_airport2_idx` (`arrivalAirport` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airport1` FOREIGN KEY (`departureAirport`) REFERENCES `booking3`.`airport` (`ID`),
  CONSTRAINT `fk_flight_airport2` FOREIGN KEY (`arrivalAirport`) REFERENCES `booking3`.`airport` (`ID`),
  CONSTRAINT `FKflight48259` FOREIGN KEY (`airlineID`) REFERENCES `booking3`.`airline` (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`flightclass`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`flightclass` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`passenger` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `fist_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `booking3`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking3`.`ticket` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ticketNumber` VARCHAR(255) NOT NULL,
  `Price` DOUBLE NOT NULL,
  `ConfirmationNumber` VARCHAR(255) NOT NULL,
  `passengerID` INT NOT NULL,
  `flightID` INT NOT NULL,
  `flightClassID` INT NOT NULL,
  `booking_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `purchases` (`passengerID` ASC) VISIBLE,
  INDEX `issued for` (`flightID` ASC) VISIBLE,
  INDEX `has` (`flightClassID` ASC) VISIBLE,
  INDEX `fk_ticket_booking1_idx` (`booking_ID` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_booking1` FOREIGN KEY (`booking_ID`) REFERENCES `booking3`.`booking` (`ID`),
  CONSTRAINT `has` FOREIGN KEY (`flightClassID`) REFERENCES `booking3`.`flightclass` (`ID`),
  CONSTRAINT `issued for` FOREIGN KEY (`flightID`) REFERENCES `booking3`.`flight` (`ID`),
  CONSTRAINT `purchases` FOREIGN KEY (`passengerID`) REFERENCES `booking3`.`passenger` (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;