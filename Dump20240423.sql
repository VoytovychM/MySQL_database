-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ChatAttachments`
--

DROP TABLE IF EXISTS `ChatAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChatAttachments` (
  `ChatAttachmentID` int NOT NULL,
  `UserID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `ChatID` int NOT NULL,
  `Status` tinyint DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`ChatAttachmentID`),
  UNIQUE KEY `ChatAttachmentID_UNIQUE` (`ChatAttachmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChatAttachments`
--

LOCK TABLES `ChatAttachments` WRITE;
/*!40000 ALTER TABLE `ChatAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChatAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chats`
--

DROP TABLE IF EXISTS `Chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Chats` (
  `ChatID` int NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `CreatedAT` datetime NOT NULL,
  PRIMARY KEY (`ChatID`),
  UNIQUE KEY `ChatID_UNIQUE` (`ChatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chats`
--

LOCK TABLES `Chats` WRITE;
/*!40000 ALTER TABLE `Chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupAttachments`
--

DROP TABLE IF EXISTS `GroupAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GroupAttachments` (
  `GroupAttachmentID` int unsigned NOT NULL,
  `GroupID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `Status` tinyint DEFAULT NULL,
  `CreatedAT` datetime DEFAULT NULL,
  PRIMARY KEY (`GroupAttachmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupAttachments`
--

LOCK TABLES `GroupAttachments` WRITE;
/*!40000 ALTER TABLE `GroupAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Groups` (
  `GroupID` int unsigned NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Field` varchar(45) DEFAULT NULL,
  `Status` tinyint DEFAULT NULL,
  `CreatedAT` datetime DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Homeworks`
--

DROP TABLE IF EXISTS `Homeworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Homeworks` (
  `HomeworkID` int NOT NULL,
  `GroupID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Body` text,
  `Status` tinyint DEFAULT NULL,
  `CreatedAT` datetime DEFAULT NULL,
  PRIMARY KEY (`HomeworkID`),
  UNIQUE KEY `HomeworkID_UNIQUE` (`HomeworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Homeworks`
--

LOCK TABLES `Homeworks` WRITE;
/*!40000 ALTER TABLE `Homeworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Homeworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeworkSolutions`
--

DROP TABLE IF EXISTS `HomeworkSolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomeworkSolutions` (
  `HomeworkSolutionID` int NOT NULL,
  `StudentID` int NOT NULL,
  `HomeworkID` int NOT NULL,
  `Body` text,
  `Grade` varchar(45) DEFAULT NULL,
  `Comment` text,
  `Status` tinyint DEFAULT NULL,
  `CreatedAT` datetime DEFAULT NULL,
  PRIMARY KEY (`HomeworkSolutionID`),
  UNIQUE KEY `HomeworkSolutionID_UNIQUE` (`HomeworkSolutionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeworkSolutions`
--

LOCK TABLES `HomeworkSolutions` WRITE;
/*!40000 ALTER TABLE `HomeworkSolutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `HomeworkSolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `MessageID` int NOT NULL,
  `Body` text,
  `AuthorID` int NOT NULL,
  `ChatID` int NOT NULL,
  `Status` tinyint DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`MessageID`),
  UNIQUE KEY `MessageID_UNIQUE` (`MessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule`
--

DROP TABLE IF EXISTS `Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Schedule` (
  `ScheduleID` int NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `GroupID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Duration` time NOT NULL,
  `Status` tinyint DEFAULT NULL,
  `CreatedAT` datetime DEFAULT NULL,
  PRIMARY KEY (`ScheduleID`),
  UNIQUE KEY `ScheduleID_UNIQUE` (`ScheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule`
--

LOCK TABLES `Schedule` WRITE;
/*!40000 ALTER TABLE `Schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `StudentID` int NOT NULL,
  `StudentName` varchar(45) NOT NULL,
  `StudentSurname` varchar(45) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `Email` varchar(45) NOT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `StudentID_UNIQUE` (`StudentID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Mariia','Voytovych','1986-01-05','mary.voytovych@gmail.com',NULL);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `TeacherID` int unsigned NOT NULL,
  `TeacherName` varchar(45) DEFAULT NULL,
  `TeacherSurname` varchar(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Specialisation` varchar(45) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 12:09:44
