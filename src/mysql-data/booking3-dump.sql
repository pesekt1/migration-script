CREATE DATABASE IF NOT EXISTS `booking3`
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */
/*!80016 DEFAULT ENCRYPTION='N' */
;
USE `booking3`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: booking3
-- ------------------------------------------------------
-- Server version	8.1.0
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
SET NAMES utf8;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `airline`
--
DROP TABLE IF EXISTS `airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `airline` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `airline`
--
LOCK TABLES `airline` WRITE;
/*!40000 ALTER TABLE `airline` DISABLE KEYS */
;
INSERT INTO `airline`
VALUES (1, 'American Airlines'),
(2, 'Delta Airlines'),
(3, 'United Airlines');
/*!40000 ALTER TABLE `airline` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `airport`
--
DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `airport` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `airport`
--
LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */
;
INSERT INTO `airport`
VALUES (
    1,
    'JFK',
    'John F. Kennedy International Airport',
    'New York',
    'NY'
  ),
(
    2,
    'LAX',
    'Los Angeles International Airport',
    'Los Angeles',
    'CA'
  ),
(
    3,
    'ORD',
    'Hare International Airport',
    'Chicago',
    'IL'
  );
/*!40000 ALTER TABLE `airport` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `booking`
--
DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `booking` (`ID` int NOT NULL, PRIMARY KEY (`ID`)) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `booking`
--
LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */
;
INSERT INTO `booking`
VALUES (1),
(2),
(3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `flight`
--
DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `flight` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `departureDateTime` date NOT NULL,
  `ArrivalDateTime` date NOT NULL,
  `Duration` int NOT NULL,
  `Distance` int NOT NULL,
  `departureAirport` int NOT NULL,
  `arrivalAirport` int NOT NULL,
  `airlineID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKflight48259` (`airlineID`),
  KEY `fk_flight_airport1_idx` (`departureAirport`),
  KEY `fk_flight_airport2_idx` (`arrivalAirport`),
  CONSTRAINT `fk_flight_airport1` FOREIGN KEY (`departureAirport`) REFERENCES `airport` (`ID`),
  CONSTRAINT `fk_flight_airport2` FOREIGN KEY (`arrivalAirport`) REFERENCES `airport` (`ID`),
  CONSTRAINT `FKflight48259` FOREIGN KEY (`airlineID`) REFERENCES `airline` (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `flight`
--
LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */
;
INSERT INTO `flight`
VALUES (
    1,
    'AA101',
    '2023-10-01',
    '2023-10-01',
    300,
    2475,
    1,
    2,
    1
  ),
(
    2,
    'DL202',
    '2023-10-02',
    '2023-10-02',
    240,
    1744,
    2,
    3,
    2
  ),
(
    3,
    'UA303',
    '2023-10-03',
    '2023-10-03',
    180,
    740,
    3,
    1,
    3
  );
/*!40000 ALTER TABLE `flight` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `flightclass`
--
DROP TABLE IF EXISTS `flightclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `flightclass` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `flightclass`
--
LOCK TABLES `flightclass` WRITE;
/*!40000 ALTER TABLE `flightclass` DISABLE KEYS */
;
INSERT INTO `flightclass`
VALUES (1, 'Economy'),
(2, 'Business'),
(3, 'First Class');
/*!40000 ALTER TABLE `flightclass` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `passenger`
--
DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `passenger` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `fist_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `passenger`
--
LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */
;
INSERT INTO `passenger`
VALUES (1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Alice', 'Johnson'),
(4, 'Bob', 'Brown');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `ticket`
--
DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
SET character_set_client = utf8mb4;
CREATE TABLE `ticket` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ticketNumber` varchar(255) NOT NULL,
  `Price` double NOT NULL,
  `ConfirmationNumber` varchar(255) NOT NULL,
  `passengerID` int NOT NULL,
  `flightID` int NOT NULL,
  `flightClassID` int NOT NULL,
  `booking_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `purchases` (`passengerID`),
  KEY `issued for` (`flightID`),
  KEY `has` (`flightClassID`),
  KEY `fk_ticket_booking1_idx` (`booking_ID`),
  CONSTRAINT `fk_ticket_booking1` FOREIGN KEY (`booking_ID`) REFERENCES `booking` (`ID`),
  CONSTRAINT `has` FOREIGN KEY (`flightClassID`) REFERENCES `flightclass` (`ID`),
  CONSTRAINT `issued for` FOREIGN KEY (`flightID`) REFERENCES `flight` (`ID`),
  CONSTRAINT `purchases` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `ticket`
--
LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */
;
INSERT INTO `ticket`
VALUES (1, 'T12345', 200, 'CONF123', 1, 1, 1, 1),
(2, 'T12346', 400, 'CONF124', 2, 2, 2, 2),
(3, 'T12347', 600, 'CONF125', 3, 3, 3, 3),
(4, 'T12348', 250, 'CONF126', 4, 1, 1, 1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2024-10-11 23:35:02