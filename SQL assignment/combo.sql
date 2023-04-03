-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: combo_db
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
-- Table structure for table `employee_tb`
--

DROP TABLE IF EXISTS `employee_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_tb` (
  `employee_tb_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(45) NOT NULL,
  `emp_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_tb`
--

LOCK TABLES `employee_tb` WRITE;
/*!40000 ALTER TABLE `employee_tb` DISABLE KEYS */;
INSERT INTO `employee_tb` VALUES (1,'yax','patel','yax@gmail.com','amd','sdl','2838383','2023-02-28 13:18:45'),(2,'aaaaa','patel','raj@gmail.com','rajkot','dev','73374746748','2023-02-28 13:19:17'),(3,'01838','pranav','hhhh@gmail.com','Ghaziabad','marketing','2234556322','2023-02-28 13:20:45'),(4,'070770','akib','akib@gmail.com','jetsaddd','developing','72347554','2023-02-28 13:21:42'),(5,'qeqeqwe','tetegttrert','sjsj@gmail.com','','','','2023-03-01 07:27:58'),(6,'akib','','','','','ryrry','2023-03-01 07:29:32'),(7,'rajjj','sddd','fff','fff','ff','ff','2023-03-01 07:29:52'),(8,'','','','','','ffffssxf','2023-03-28 05:11:12'),(9,'','','','','','wdewdewde','2023-03-28 05:11:21'),(10,'','','','','','','2023-03-28 05:16:50'),(11,'','','','','','','2023-03-28 05:16:54'),(12,'','','','','','','2023-03-28 05:16:59');
/*!40000 ALTER TABLE `employee_tb` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (1,'relationstatus',1,'single','2023-02-14 08:54:18'),(2,'relationstatus',1,'commited','2023-02-14 08:54:46'),(3,'state',2,'rajshthan','2023-02-14 09:43:14'),(4,'state',2,'Gujarat','2023-02-14 09:43:14'),(5,'state',2,'UP','2023-02-14 09:43:14'),(6,'NameOfCourse',3,'10th','2023-02-14 10:16:50'),(7,'NameOfCourse',3,'12th','2023-02-14 10:16:50'),(8,'NameOfCourse',3,'graduate','2023-02-14 10:16:50'),(9,'NameOfCourse',3,'post graduate','2023-02-14 10:16:50'),(10,'NameOfBoard',4,'saurashtra uni','2023-02-14 10:31:43'),(11,'NameOfBoard',4,'GTU','2023-02-14 10:31:43'),(12,'NameOfBoard',4,'Gujarat','2023-02-14 10:31:43'),(13,'NameOfBoard',4,'Atmiya','2023-02-14 10:31:43'),(14,'NameOfBoard',4,'PuneUni','2023-02-14 10:31:43'),(15,'language',5,'Hindi','2023-02-14 10:43:03'),(16,'language',5,'Gujrati','2023-02-14 10:43:03'),(17,'language',5,'English','2023-02-14 10:43:03'),(18,'technologies',6,'mysql','2023-02-14 11:17:22'),(19,'technologies',6,'python','2023-02-14 11:17:22'),(20,'technologies',6,'java','2023-02-14 11:17:22'),(21,'technologies',6,'javascript','2023-02-14 11:17:22'),(22,'prefered_location',7,'ahmedabad','2023-02-14 11:34:02'),(23,'prefered_location',7,'jetpur','2023-02-14 11:34:02'),(24,'prefered_location',7,'rajkot','2023-02-14 11:34:02'),(25,'prefered_location',7,'delhi','2023-02-14 11:34:02'),(26,'department',8,'web devlopment','2023-02-14 11:51:29'),(27,'department',8,'marketing','2023-02-14 11:51:29'),(28,'department',8,'accounting','2023-02-14 11:51:29'),(29,'Gender',9,'Male','2023-02-22 13:23:35'),(30,'Gender',9,'Female','2023-02-22 13:23:35'),(31,'Gender',9,'Other','2023-02-22 13:23:35'),(42,'subject',10,'maths','2023-02-23 03:47:58'),(43,'subkect',10,'Computer Science','2023-02-23 03:47:58'),(44,'subject',10,'Economics','2023-02-23 03:47:58'),(45,'subject',10,'English','2023-02-23 03:47:58'),(46,'subject',10,'Geography','2023-02-23 03:47:58'),(47,'subject',10,'Entrepreneurship','2023-02-23 03:47:58'),(48,'college',11,'bosamiya arts and commerce college','2023-02-23 04:00:43'),(49,'college',11,'Patna Science College','2023-02-23 04:00:43'),(50,'college',11,'SHREE SWAMINARAYAN COLLEGE','2023-02-23 04:00:43'),(51,'college',11,'bihar gov. college','2023-02-23 04:00:43'),(52,'college',11,'Indian Institute of Management','2023-02-23 04:00:43');
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'relationstatus','relationstatus','2023-02-14 08:35:30'),(2,'state','state','2023-02-14 09:41:41'),(3,'NameOfCourse','NameOfCourse','2023-02-14 10:13:17'),(4,'NameOfBoard','NameOfBoard','2023-02-14 10:29:33'),(5,'language','language','2023-02-14 10:40:48'),(6,'technologies','technologies','2023-02-14 11:16:00'),(7,'prefered_location','prefered_location','2023-02-14 11:32:18'),(8,'department','department','2023-02-14 11:50:00'),(9,'Gender','Gender','2023-02-22 13:22:26'),(10,'subject','subject','2023-02-23 03:42:57'),(11,'college','college','2023-02-23 03:48:59');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 10:17:37
