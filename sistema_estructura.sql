CREATE DATABASE  IF NOT EXISTS `futbol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `futbol`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: futbol
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `codemast`
--

DROP TABLE IF EXISTS `codemast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codemast` (
  `Type` varchar(10) NOT NULL DEFAULT '',
  `Code` varchar(10) NOT NULL DEFAULT '',
  `Description` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`Type`,`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `codetype`
--

DROP TABLE IF EXISTS `codetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codetype` (
  `Type` varchar(10) NOT NULL DEFAULT '',
  `Description` varchar(30) NOT NULL DEFAULT '',
  `Comment` mediumtext,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webappserverprops`
--

DROP TABLE IF EXISTS `webappserverprops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webappserverprops` (
  `Key` varchar(64) NOT NULL DEFAULT '',
  `CreateDate` date NOT NULL DEFAULT '0001-01-01',
  `CreateTime` varchar(12) NOT NULL DEFAULT '',
  `ExpiresDate` date NOT NULL DEFAULT '0001-01-01',
  `ExpiresTime` varchar(12) NOT NULL DEFAULT '',
  `Locked` smallint NOT NULL DEFAULT '0',
  `LockedDate` date NOT NULL DEFAULT '0001-01-01',
  `LockedTime` varchar(12) NOT NULL DEFAULT '',
  `Page` smallint NOT NULL DEFAULT '0',
  `Pages` smallint NOT NULL DEFAULT '0',
  `Data` mediumtext,
  PRIMARY KEY (`Key`,`Page`),
  UNIQUE KEY `WebAppServerProps002` (`ExpiresDate` DESC,`ExpiresTime` DESC,`Key`,`Page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webappsession`
--

DROP TABLE IF EXISTS `webappsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webappsession` (
  `SessionKey` varchar(36) NOT NULL DEFAULT '',
  `CreateDate` date NOT NULL DEFAULT '0001-01-01',
  `CreateTime` varchar(8) NOT NULL DEFAULT '',
  `LastAccessDate` date NOT NULL DEFAULT '0001-01-01',
  `LastAccessTime` varchar(8) NOT NULL DEFAULT '',
  `UseCount` int NOT NULL DEFAULT '0',
  `RemoteAddress` varchar(57) NOT NULL DEFAULT '',
  `LoginName` varchar(20) NOT NULL DEFAULT '',
  `Active` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`SessionKey`),
  UNIQUE KEY `WebAppSession002` (`CreateDate`,`CreateTime`,`SessionKey`),
  UNIQUE KEY `WebAppSession003` (`LastAccessDate`,`LastAccessTime`,`SessionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webappuser`
--

DROP TABLE IF EXISTS `webappuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webappuser` (
  `LoginName` varchar(20) NOT NULL DEFAULT '',
  `Password` varchar(128) NOT NULL DEFAULT '',
  `Rights` smallint NOT NULL DEFAULT '0',
  `FullName` varchar(30) NOT NULL DEFAULT '',
  `LastLogin` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`LoginName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-11 14:23:09
