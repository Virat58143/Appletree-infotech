CREATE DATABASE  IF NOT EXISTS `admin_portal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `admin_portal`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: admin_portal
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `addmission_class`
--

DROP TABLE IF EXISTS `addmission_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addmission_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add2` varchar(255) DEFAULT NULL,
  `cif2` varchar(255) DEFAULT NULL,
  `csy2` varchar(255) DEFAULT NULL,
  `dob2` varchar(255) DEFAULT NULL,
  `ema2` varchar(255) DEFAULT NULL,
  `fmo2` bigint NOT NULL,
  `fnm2` varchar(255) DEFAULT NULL,
  `foc2` varchar(255) DEFAULT NULL,
  `mob2` bigint NOT NULL,
  `pas2` varchar(255) DEFAULT NULL,
  `sqf2` varchar(255) DEFAULT NULL,
  `stu2` varchar(255) DEFAULT NULL,
  `tfe2` bigint NOT NULL,
  `unm2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addmission_class`
--

LOCK TABLES `addmission_class` WRITE;
/*!40000 ALTER TABLE `addmission_class` DISABLE KEYS */;
INSERT INTO `addmission_class` VALUES (1,'47 PAC appartment govindpuram ghaziyabad','full stack web development','2025','2025-05-08','viratchoudhary741@gmail.com',8859151562,'yogesh kumar','business',8859151562,'virat8859','Bsc computer science','virat kumar',35500,'virat8859'),(2,'47 PAC appartment govindpuram ghaziyabad','full stack web development','2024','2000-04-12','veerhuun1235@gmail.com',8859151562,'yogesh kumar','business',9927169458,'abhi234','Bsc computer science','abhi',26000,'abhi234');
/*!40000 ALTER TABLE `addmission_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminmainclass`
--

DROP TABLE IF EXISTS `adminmainclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminmainclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aum` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminmainclass`
--

LOCK TABLES `adminmainclass` WRITE;
/*!40000 ALTER TABLE `adminmainclass` DISABLE KEYS */;
INSERT INTO `adminmainclass` VALUES (1,'apple','apple123');
/*!40000 ALTER TABLE `adminmainclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_class`
--

DROP TABLE IF EXISTS `contact_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adc2` varchar(255) DEFAULT NULL,
  `ema2` varchar(255) DEFAULT NULL,
  `mob3` varchar(255) DEFAULT NULL,
  `nam2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_class`
--

LOCK TABLES `contact_class` WRITE;
/*!40000 ALTER TABLE `contact_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_class`
--

DROP TABLE IF EXISTS `feedback_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adc1` varchar(255) DEFAULT NULL,
  `ema2` varchar(255) DEFAULT NULL,
  `nam2` varchar(255) DEFAULT NULL,
  `rat2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_class`
--

LOCK TABLES `feedback_class` WRITE;
/*!40000 ALTER TABLE `feedback_class` DISABLE KEYS */;
INSERT INTO `feedback_class` VALUES (1,' greate','umesh@gmail.com','umesh','excellent'),(2,'gjkhkl','c@gmail.com','virat','good');
/*!40000 ALTER TABLE `feedback_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installment_class`
--

DROP TABLE IF EXISTS `installment_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installment_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asf2` bigint NOT NULL,
  `cou2` varchar(255) DEFAULT NULL,
  `dfd2` varchar(255) DEFAULT NULL,
  `eif2` bigint NOT NULL,
  `mob2` bigint NOT NULL,
  `mob22` bigint NOT NULL,
  `nam2` varchar(255) DEFAULT NULL,
  `rfe2` bigint NOT NULL,
  `sin2` varchar(255) DEFAULT NULL,
  `snoi2` varchar(255) DEFAULT NULL,
  `tfe2` bigint NOT NULL,
  `tni2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installment_class`
--

LOCK TABLES `installment_class` WRITE;
/*!40000 ALTER TABLE `installment_class` DISABLE KEYS */;
INSERT INTO `installment_class` VALUES (1,0,'full stack web development','2025-05-16',10000,8859151562,8859151562,'virat kumar',25500,'','1',35500,'3'),(2,10000,'full stack web development','2025-04-05',5000,8859151562,8859151562,'virat kumar',20000,'','2',35500,'3'),(4,15000,'full stack web development','2025-05-14',20500,8859151562,8859151562,'virat kumar',0,'2','3',35500,'3'),(5,0,'full stack web development','2025-05-15',10000,9927169458,9927169458,'abhi',16000,'','1',26000,'3'),(6,10000,'full stack web development','2025-05-09',6000,9927169458,9927169458,'abhi',10000,'1','2',26000,'3'),(7,16000,'full stack web development','2025-05-07',10000,9927169458,9927169458,'abhi',0,'','3',26000,'3');
/*!40000 ALTER TABLE `installment_class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 14:39:21
