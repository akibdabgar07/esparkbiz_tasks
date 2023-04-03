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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic`
--

LOCK TABLES `academic` WRITE;
/*!40000 ALTER TABLE `academic` DISABLE KEYS */;
INSERT INTO `academic` VALUES (1,'post graduate','saurashtra uni','75','2023','2023-02-16 13:34:29',1),(2,'post graduate','Gujarat','70','2021','2023-02-17 04:03:21',2),(3,'graduate','GTU','80','2020','2023-02-17 04:07:14',3),(4,'graduate','Gujarat','76','2010','2023-02-17 04:38:26',4),(5,'graduate','Atmiya','76','2010','2023-02-17 04:44:54',5),(6,'12th','saurashtra uni','76','2001','2023-02-17 04:51:10',6),(7,'12th','saurashtra uni','76','2001','2023-02-17 04:54:02',7),(8,'12th','saurashtra uni','76','2001','2023-02-17 04:57:40',8),(9,'12th','saurashtra uni','50','2015','2023-02-17 05:00:46',9),(10,'graduate','saurashtra uni','50','2021','2023-02-17 05:09:20',10),(11,'post graduate','saurashtra uni','100','2022','2023-02-17 05:09:20',10);
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
  `street2` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `zipcode` varchar(45) NOT NULL,
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
  `dob` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `relationship_status` varchar(45) NOT NULL,
  `street1` varchar(45) NOT NULL,
  `street2` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_info`
--

LOCK TABLES `basic_info` WRITE;
/*!40000 ALTER TABLE `basic_info` DISABLE KEYS */;
INSERT INTO `basic_info` VALUES (1,'akib','dabgar','1561616777','sdl-1','akib@gmail.com','male','2021-01-06','2023-02-16 13:34:28','commited','ladiroad','nagina ','jetpur','Gujarat','360370'),(2,'vipul','parmar','73374746748','sdl1','thevip4444@gmail.com','male','2023-02-01','2023-02-17 04:03:21','commited','amd1','amd2','ahmedabad','Gujarat','398498'),(3,'Jigar','Vaishnav','73374746748','Business Development Trainee','thevip4444@gmail.com','male','2023-02-01','2023-02-17 04:07:14','commited','amd1','amd2','ahmedabad','Gujarat','398498'),(4,'Ajay','Thakkar','2234556322','Software Developer','ajaythakkar500@gmail.com','male','2023-02-07','2023-02-17 04:38:26','single','mg road','mgroad2','sola','Gujarat','235621'),(5,'Heena','Harsoda','2234556322','Jr Software Developer','ajaythakkar500@gmail.com','female','2023-02-03','2023-02-17 04:44:54','single','iskon','gali','ahmedabad','Gujarat','235621'),(6,'Dikshit','Patel','6358297537','Jr Software Developer','project27398@gmail.com','male','2023-02-03','2023-02-17 04:51:10','single','saniniketan','gali','kanpur','UP','235621'),(7,'Deep','Barochiya','238297537','Sr. Web Designer','deepbarochiya222@gmail.com','male','2023-02-06','2023-02-17 04:54:02','single','saniniketan','gali','Ghaziabad','UP','39838'),(8,'Nirav','Barochiya','238297537','Sr. Web Designer','deepbarochiya222@gmail.com','male','2023-02-06','2023-02-17 04:57:40','single','saniniketan','gali','Ghaziabad','UP','39838'),(9,'Jitendra','Barochiya','238297537','Web Designing','deepbarochiya222@gmail.com','male','2023-02-06','2023-02-17 05:00:46','single','saniniketan','gali','Ghaziabad','UP','39838'),(10,'Ronik ','Limbani','3873297537','Jr. Mobile Developer','roniklimbani01@gmail.com','male','2023-02-06','2023-02-17 05:09:20','commited','nehrunagar','','Ghaziabad','UP','39838');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,'esparkbiz','sdl-1','233','2023-02-06','2023-02-15','2023-02-16 13:34:29',1),(2,'google','sdl1','5.5','2023-01-31','2023-02-08','2023-02-17 04:03:21',2),(3,'microsoft','sdl1','5.2','2022-12-30','2023-02-10','2023-02-17 04:07:14',3),(4,'esparkbiz','Software Developer','55.55','2023-01-31','2023-02-16','2023-02-17 04:38:26',4),(5,'binary','Software Developer','2.3','2022-12-26','2023-02-14','2023-02-17 04:44:54',5),(6,'zindex solution','Software Developer','3.5','2022-11-28','2023-02-14','2023-02-17 04:51:10',6),(7,'zindex solution','Software Developer','3.5','2022-11-28','2023-02-14','2023-02-17 04:54:02',7),(8,'zindex solution','Software Developer','3.5','2022-11-28','2023-02-14','2023-02-17 04:57:40',8),(9,'gatway group','Web Designing','6.5','2022-11-28','2023-02-14','2023-02-17 05:00:46',9),(10,'gatway group','Web Designing','6.5','2022-11-28','2023-02-14','2023-02-17 05:09:20',10);
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
  `lan_read` varchar(45) DEFAULT NULL,
  `lan_write` varchar(45) DEFAULT NULL,
  `lan_speak` varchar(45) DEFAULT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `fk_language_known_1_idx` (`c_id`),
  CONSTRAINT `fk_language_known_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_known`
--

LOCK TABLES `language_known` WRITE;
/*!40000 ALTER TABLE `language_known` DISABLE KEYS */;
INSERT INTO `language_known` VALUES (1,'Hindi','2023-02-16 13:34:29','yes','yes','yes',1),(2,'Gujrati','2023-02-16 13:34:29','yes','yes','yes',1),(3,'English','2023-02-16 13:34:29','yes','no','yes',1),(4,'Hindi','2023-02-17 04:03:21','yes','yes','yes',2),(5,'Gujrati','2023-02-17 04:03:21','yes','yes','yes',2),(6,'English','2023-02-17 04:03:21','yes','yes','yes',2),(7,'Hindi','2023-02-17 04:07:14','yes','yes','yes',3),(8,'Gujrati','2023-02-17 04:07:14','yes','yes','yes',3),(9,'Gujrati','2023-02-17 04:38:26','yes','yes','yes',4),(10,'Hindi','2023-02-17 04:44:54','yes','yes','yes',5),(11,'Gujrati','2023-02-17 04:44:54','yes','yes','yes',5),(12,'Hindi','2023-02-17 04:51:10','yes','yes','yes',6),(13,'Gujrati','2023-02-17 04:51:10','yes','yes','yes',6),(14,'English','2023-02-17 04:51:10','yes','yes','no',6),(15,'Hindi','2023-02-17 04:54:02','yes','yes','yes',7),(16,'Gujrati','2023-02-17 04:54:02','yes','yes','yes',7),(17,'English','2023-02-17 04:54:02','yes','yes','no',7),(18,'Hindi','2023-02-17 04:57:40','yes','yes','yes',8),(19,'Gujrati','2023-02-17 04:57:40','yes','yes','yes',8),(20,'English','2023-02-17 04:57:40','yes','yes','no',8),(21,'Hindi','2023-02-17 05:00:46','yes','yes','yes',9),(22,'Gujrati','2023-02-17 05:00:46','yes','yes','yes',9),(23,'English','2023-02-17 05:00:46','yes','yes','no',9),(24,'Hindi','2023-02-17 05:09:20','yes','yes','yes',10),(25,'Gujrati','2023-02-17 05:09:20','yes','yes','yes',10),(26,'English','2023-02-17 05:09:20','yes','yes','no',10);
/*!40000 ALTER TABLE `language_known` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_master`
--

DROP TABLE IF EXISTS `option_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_master` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `option_key` varchar(45) NOT NULL,
  `select_master_id` int NOT NULL,
  `option_value` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`option_id`),
  KEY `fk_option_master_1_idx` (`select_master_id`),
  CONSTRAINT `fk_option_master_1` FOREIGN KEY (`select_master_id`) REFERENCES `select_master` (`select_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (1,'relationstatus',1,'single','2023-02-14 08:54:18'),(2,'relationstatus',1,'commited','2023-02-14 08:54:46'),(3,'state',2,'rajshthan','2023-02-14 09:43:14'),(4,'state',2,'Gujarat','2023-02-14 09:43:14'),(5,'state',2,'UP','2023-02-14 09:43:14'),(6,'NameOfCourse',3,'10th','2023-02-14 10:16:50'),(7,'NameOfCourse',3,'12th','2023-02-14 10:16:50'),(8,'NameOfCourse',3,'graduate','2023-02-14 10:16:50'),(9,'NameOfCourse',3,'post graduate','2023-02-14 10:16:50'),(10,'NameOfBoard',4,'saurashtra uni','2023-02-14 10:31:43'),(11,'NameOfBoard',4,'GTU','2023-02-14 10:31:43'),(12,'NameOfBoard',4,'Gujarat','2023-02-14 10:31:43'),(13,'NameOfBoard',4,'Atmiya','2023-02-14 10:31:43'),(14,'NameOfBoard',4,'PuneUni','2023-02-14 10:31:43'),(15,'language',5,'Hindi','2023-02-14 10:43:03'),(16,'language',5,'Gujrati','2023-02-14 10:43:03'),(17,'language',5,'English','2023-02-14 10:43:03'),(18,'technologies',6,'mysql','2023-02-14 11:17:22'),(19,'technologies',6,'python','2023-02-14 11:17:22'),(20,'technologies',6,'java','2023-02-14 11:17:22'),(21,'technologies',6,'javascript','2023-02-14 11:17:22'),(22,'prefered_location',7,'ahmedabad','2023-02-14 11:34:02'),(23,'prefered_location',7,'jetpur','2023-02-14 11:34:02'),(24,'prefered_location',7,'rajkot','2023-02-14 11:34:02'),(25,'prefered_location',7,'delhi','2023-02-14 11:34:02'),(26,'department',8,'web devlopment','2023-02-14 11:51:29'),(27,'department',8,'marketing','2023-02-14 11:51:29'),(28,'department',8,'accounting','2023-02-14 11:51:29');
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferances`
--

DROP TABLE IF EXISTS `preferances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferances` (
  `preferances_id` int NOT NULL AUTO_INCREMENT,
  `notice_period` varchar(45) NOT NULL,
  `expacted_ctc` varchar(45) NOT NULL,
  `current_ctc` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`preferances_id`),
  KEY `fk_preferances_1_idx` (`c_id`),
  CONSTRAINT `fk_preferances_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferances`
--

LOCK TABLES `preferances` WRITE;
/*!40000 ALTER TABLE `preferances` DISABLE KEYS */;
INSERT INTO `preferances` VALUES (1,'3','5.5','4.5','web devlopment',1,'2023-02-16 13:34:29'),(2,'2 month','7.0','5.0','web devlopment',2,'2023-02-17 04:03:21'),(3,'2 month','9.0','5.0','marketing',3,'2023-02-17 04:07:14'),(4,'1 month','6.6','5.5','web devlopment',4,'2023-02-17 04:38:26'),(5,'2 weeks','6.6','5.5','web devlopment',5,'2023-02-17 04:44:54'),(6,'2 weeks','3.6','2.5','web devlopment',6,'2023-02-17 04:51:10'),(7,'2 weeks','3.44','2.5','marketing',7,'2023-02-17 04:54:02'),(8,'2 weeks','3.44','2.5','marketing',8,'2023-02-17 04:57:40'),(9,'2 weeks','3.44','2.5','accounting',9,'2023-02-17 05:00:46'),(10,'3 weeks','3.44','2.5','accounting',10,'2023-02-17 05:09:20');
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
  `p_location` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`preferd_location_id`),
  KEY `fk_preferd_location_city_1_idx` (`c_id`),
  CONSTRAINT `fk_preferd_location_city_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferd_location_city`
--

LOCK TABLES `preferd_location_city` WRITE;
/*!40000 ALTER TABLE `preferd_location_city` DISABLE KEYS */;
INSERT INTO `preferd_location_city` VALUES (1,'ahmedabad',1,'2023-02-16 13:34:29'),(2,'ahmedabad',1,'2023-02-16 13:34:29'),(3,'ahmedabad',1,'2023-02-16 13:34:29'),(4,'ahmedabad',1,'2023-02-16 13:34:29'),(5,'ahmedabad',1,'2023-02-16 13:34:29'),(6,'ahmedabad',1,'2023-02-16 13:34:29'),(7,'ahmedabad',1,'2023-02-16 13:34:29'),(8,'ahmedabad',1,'2023-02-16 13:34:29'),(9,'ahmedabad',1,'2023-02-16 13:34:29'),(10,'rajkot',2,'2023-02-17 04:03:21'),(11,'rajkot',2,'2023-02-17 04:03:21'),(12,'rajkot',2,'2023-02-17 04:03:21'),(13,'rajkot',2,'2023-02-17 04:03:21'),(14,'rajkot',2,'2023-02-17 04:03:21'),(15,'rajkot',2,'2023-02-17 04:03:21'),(16,'jetpur',3,'2023-02-17 04:07:14'),(17,'rajkot',3,'2023-02-17 04:07:14'),(18,'ahmedabad',4,'2023-02-17 04:38:26'),(19,'ahmedabad',4,'2023-02-17 04:38:26'),(20,'ahmedabad',4,'2023-02-17 04:38:26'),(21,'ahmedabad',4,'2023-02-17 04:38:26'),(22,'ahmedabad',4,'2023-02-17 04:38:26'),(23,'ahmedabad',4,'2023-02-17 04:38:26'),(24,'ahmedabad',4,'2023-02-17 04:38:26'),(25,'ahmedabad',4,'2023-02-17 04:38:26'),(26,'ahmedabad',4,'2023-02-17 04:38:26'),(27,'rajkot',5,'2023-02-17 04:44:54'),(28,'rajkot',5,'2023-02-17 04:44:54'),(29,'rajkot',5,'2023-02-17 04:44:54'),(30,'rajkot',5,'2023-02-17 04:44:54'),(31,'rajkot',5,'2023-02-17 04:44:54'),(32,'rajkot',5,'2023-02-17 04:44:54'),(33,'delhi',6,'2023-02-17 04:51:10'),(34,'delhi',6,'2023-02-17 04:51:10'),(35,'delhi',6,'2023-02-17 04:51:10'),(36,'delhi',6,'2023-02-17 04:51:10'),(37,'delhi',6,'2023-02-17 04:51:10'),(38,'delhi',7,'2023-02-17 04:54:02'),(39,'delhi',7,'2023-02-17 04:54:02'),(40,'delhi',7,'2023-02-17 04:54:02'),(41,'delhi',7,'2023-02-17 04:54:02'),(42,'delhi',7,'2023-02-17 04:54:02'),(43,'delhi',8,'2023-02-17 04:57:40'),(44,'delhi',8,'2023-02-17 04:57:40'),(45,'delhi',8,'2023-02-17 04:57:40'),(46,'delhi',8,'2023-02-17 04:57:40'),(47,'delhi',8,'2023-02-17 04:57:40'),(48,'jetpur',9,'2023-02-17 05:00:46'),(49,'jetpur',9,'2023-02-17 05:00:46'),(50,'jetpur',9,'2023-02-17 05:00:46'),(51,'jetpur',9,'2023-02-17 05:00:46'),(52,'jetpur',9,'2023-02-17 05:00:46'),(53,'jetpur',9,'2023-02-17 05:00:46'),(54,'rajkot',10,'2023-02-17 05:09:20'),(55,'rajkot',10,'2023-02-17 05:09:20'),(56,'rajkot',10,'2023-02-17 05:09:20'),(57,'rajkot',10,'2023-02-17 05:09:20'),(58,'rajkot',10,'2023-02-17 05:09:20'),(59,'rajkot',10,'2023-02-17 05:09:20');
/*!40000 ALTER TABLE `preferd_location_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references_table`
--

DROP TABLE IF EXISTS `references_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references_table` (
  `references_id` int NOT NULL AUTO_INCREMENT,
  `reference_name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `relation` varchar(45) NOT NULL,
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`references_id`),
  KEY `fk_references_1_idx` (`c_id`),
  CONSTRAINT `fk_references_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references_table`
--

LOCK TABLES `references_table` WRITE;
/*!40000 ALTER TABLE `references_table` DISABLE KEYS */;
INSERT INTO `references_table` VALUES (1,'abhay','22333','department head',1,'2023-02-16 13:34:29'),(2,'ramiz','234444','senior brother',1,'2023-02-16 13:34:29'),(3,'ajay bhatt','236737744','friend',2,'2023-02-17 04:03:21'),(4,'raj pethani','345556332','relative',2,'2023-02-17 04:03:21'),(5,'ajay bhatt','236737744','friend',3,'2023-02-17 04:07:14'),(6,'raj pethani','345556332','relative',3,'2023-02-17 04:07:14'),(7,'sanjay','345645464','cousin',4,'2023-02-17 04:38:26'),(8,'Mitkumar Kapadiya','355666535','senior',4,'2023-02-17 04:38:26'),(9,'Jaydeep Kathrotiya','345645464','company friend',5,'2023-02-17 04:44:54'),(10,'Mitkumar Kapadiya','355666535','senior',5,'2023-02-17 04:44:54'),(11,'Deep Barochiya','34564522','company friend',6,'2023-02-17 04:51:10'),(12,'Archit Patel','35566235','senior',6,'2023-02-17 04:51:10'),(13,'Deep Barochiya','34564522','company friend',7,'2023-02-17 04:54:02'),(14,'Archit Patel','35566235','senior',7,'2023-02-17 04:54:02'),(15,'Deep Barochiya','34564522','company friend',8,'2023-02-17 04:57:40'),(16,'Archit Patel','35566235','senior',8,'2023-02-17 04:57:40'),(17,'Jaykishan Kacha','34564522','company friend',9,'2023-02-17 05:00:46'),(18,'Jay Sakhiya','35523235','cousion',9,'2023-02-17 05:00:46'),(19,'Hiren Ramoliya','332522452','company friend',10,'2023-02-17 05:09:20'),(20,'Jay Sakhiya','355234435','cousion',10,'2023-02-17 05:09:20');
/*!40000 ALTER TABLE `references_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_master`
--

DROP TABLE IF EXISTS `select_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_master` (
  `select_master_id` int NOT NULL AUTO_INCREMENT,
  `select_name` varchar(45) NOT NULL,
  `select_key` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`select_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'relationstatus','relationstatus','2023-02-14 08:35:30'),(2,'state','state','2023-02-14 09:41:41'),(3,'NameOfCourse','NameOfCourse','2023-02-14 10:13:17'),(4,'NameOfBoard','NameOfBoard','2023-02-14 10:29:33'),(5,'language','language','2023-02-14 10:40:48'),(6,'technologies','technologies','2023-02-14 11:16:00'),(7,'prefered_location','prefered_location','2023-02-14 11:32:18'),(8,'department','department','2023-02-14 11:50:00');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
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
  `c_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`technology_id`),
  KEY `fk_technology_1_idx` (`c_id`),
  CONSTRAINT `fk_technology_1` FOREIGN KEY (`c_id`) REFERENCES `basic_info` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'mysql','Mediator',1,'2023-02-16 13:34:29'),(2,'python','Mediator',1,'2023-02-16 13:34:29'),(3,'java','Mediator',1,'2023-02-16 13:34:29'),(4,'javascript','Mediator',1,'2023-02-16 13:34:29'),(5,'mysql','Mediator',2,'2023-02-17 04:03:21'),(6,'python','Mediator',2,'2023-02-17 04:03:21'),(7,'javascript','undefined',2,'2023-02-17 04:03:21'),(8,'mysql','Mediator',3,'2023-02-17 04:07:14'),(9,'python','Mediator',3,'2023-02-17 04:07:14'),(10,'mysql','Mediator',4,'2023-02-17 04:38:26'),(11,'python','Mediator',4,'2023-02-17 04:38:26'),(12,'java','Mediator',4,'2023-02-17 04:38:26'),(13,'javascript','Expert',4,'2023-02-17 04:38:26'),(14,'mysql','Mediator',5,'2023-02-17 04:44:54'),(15,'python','Beginer',5,'2023-02-17 04:44:54'),(16,'javascript','Expert',5,'2023-02-17 04:44:54'),(17,'mysql','Mediator',6,'2023-02-17 04:51:10'),(18,'python','Beginer',6,'2023-02-17 04:51:10'),(19,'javascript','Expert',6,'2023-02-17 04:51:10'),(20,'mysql','Mediator',7,'2023-02-17 04:54:02'),(21,'python','Beginer',7,'2023-02-17 04:54:02'),(22,'javascript','Expert',7,'2023-02-17 04:54:02'),(23,'mysql','Mediator',8,'2023-02-17 04:57:40'),(24,'python','Beginer',8,'2023-02-17 04:57:40'),(25,'javascript','Expert',8,'2023-02-17 04:57:40'),(26,'mysql','Mediator',9,'2023-02-17 05:00:46'),(27,'python','Beginer',9,'2023-02-17 05:00:46'),(28,'java','Beginer',9,'2023-02-17 05:00:46'),(29,'javascript','Expert',9,'2023-02-17 05:00:46'),(30,'mysql','Mediator',10,'2023-02-17 05:09:20'),(31,'python','Beginer',10,'2023-02-17 05:09:20'),(32,'java','Beginer',10,'2023-02-17 05:09:20'),(33,'javascript','Expert',10,'2023-02-17 05:09:20');
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

-- Dump completed on 2023-02-17 10:42:10
