-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: job_application
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `academic`
--

DROP TABLE IF EXISTS `academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic` (
  `academic_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `course_board` varchar(45) NOT NULL,
  `course_percentage` varchar(45) NOT NULL,
  `passing_year` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int NOT NULL,
  PRIMARY KEY (`academic_id`),
  KEY `fk_academic_1_idx` (`c_id`),
  CONSTRAINT `fk_academic_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic`
--

LOCK TABLES `academic` WRITE;
/*!40000 ALTER TABLE `academic` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `street1` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `fk_address_1_idx` (`c_id`),
  CONSTRAINT `fk_address_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_info`
--

DROP TABLE IF EXISTS `basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_info` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `relationship_status` varchar(45) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_info`
--

LOCK TABLES `basic_info` WRITE;
/*!40000 ALTER TABLE `basic_info` DISABLE KEYS */;
INSERT INTO `basic_info` VALUES (1,'abhay','jethva','988674536','ceo','xyz@gmail.com','male','1997-08-06','2023-02-02 10:48:16','single');
/*!40000 ALTER TABLE `basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `experience_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `ctc` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int NOT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `fk_experience_1_idx` (`c_id`),
  CONSTRAINT `fk_experience_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (2,'espark','developer','10lpa','1997-09-07','2012-08-21','2023-02-02 11:05:11',1);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_known`
--

DROP TABLE IF EXISTS `language_known`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_known` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read` varchar(45) DEFAULT NULL,
  `write` varchar(45) DEFAULT NULL,
  `speak` varchar(45) DEFAULT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `fk_language_known_1_idx` (`c_id`),
  CONSTRAINT `fk_language_known_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_known`
--

LOCK TABLES `language_known` WRITE;
/*!40000 ALTER TABLE `language_known` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_known` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferances`
--

DROP TABLE IF EXISTS `preferances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferances` (
  `preferances_id` int NOT NULL AUTO_INCREMENT,
  `preferd_location_id` int NOT NULL,
  `notice_period` varchar(45) NOT NULL,
  `expacted_ctc` varchar(45) NOT NULL,
  `current_ctc` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int NOT NULL,
  PRIMARY KEY (`preferances_id`),
  KEY `fk_preferances_1_idx` (`c_id`),
  KEY `fk_preferances_2_idx` (`preferd_location_id`),
  CONSTRAINT `fk_preferances_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`),
  CONSTRAINT `fk_preferances_2` FOREIGN KEY (`preferd_location_id`) REFERENCES `preferd_location_city` (`preferd_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferances`
--

LOCK TABLES `preferances` WRITE;
/*!40000 ALTER TABLE `preferances` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferd_location_city`
--

DROP TABLE IF EXISTS `preferd_location_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferd_location_city` (
  `preferd_location_id` int NOT NULL AUTO_INCREMENT,
  `p_city` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int NOT NULL,
  PRIMARY KEY (`preferd_location_id`),
  KEY `fk_preferd_location_city_1_idx` (`c_id`),
  CONSTRAINT `fk_preferd_location_city_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferd_location_city`
--

LOCK TABLES `preferd_location_city` WRITE;
/*!40000 ALTER TABLE `preferd_location_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferd_location_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `references_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`references_id`),
  KEY `fk_references_1_idx` (`c_id`),
  CONSTRAINT `fk_references_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `technology_id` int NOT NULL AUTO_INCREMENT,
  `technology_name` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int NOT NULL,
  PRIMARY KEY (`technology_id`),
  KEY `fk_technology_1_idx` (`c_id`),
  CONSTRAINT `fk_technology_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09  9:24:15
