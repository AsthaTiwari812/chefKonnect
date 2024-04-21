-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: chef_konnect
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `chef_detail`
--

DROP TABLE IF EXISTS `chef_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef_detail` (
  `chef_id` int DEFAULT NULL,
  `mobile` int NOT NULL,
  `experience` varchar(10) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `cityy` varchar(30) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `chef_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mobile`),
  KEY `chef_id` (`chef_id`),
  CONSTRAINT `chef_detail_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef_ld` (`chef_id`),
  CONSTRAINT `chef_detail_chk_1` CHECK ((`experience` >= 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_detail`
--

LOCK TABLES `chef_detail` WRITE;
/*!40000 ALTER TABLE `chef_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `chef_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_ld`
--

DROP TABLE IF EXISTS `chef_ld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef_ld` (
  `chef_id` int NOT NULL,
  `chef_name` varchar(40) DEFAULT NULL,
  `chef_mail` varchar(20) DEFAULT NULL,
  `passwrd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_ld`
--

LOCK TABLES `chef_ld` WRITE;
/*!40000 ALTER TABLE `chef_ld` DISABLE KEYS */;
/*!40000 ALTER TABLE `chef_ld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_detail` (
  `user_id` int DEFAULT NULL,
  `mobile` int NOT NULL,
  `user_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mobile`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_ld` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ld`
--

DROP TABLE IF EXISTS `user_ld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_ld` (
  `user_id` int NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_mail` varchar(20) DEFAULT NULL,
  `upasswrd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ld`
--

LOCK TABLES `user_ld` WRITE;
/*!40000 ALTER TABLE `user_ld` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_ld` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 15:37:54
