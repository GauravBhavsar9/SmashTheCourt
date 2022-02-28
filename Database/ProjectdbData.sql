-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_table` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `court_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` int DEFAULT NULL,
  `end_time` int DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_status` varchar(100) DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  `payment_status` tinyint DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_table`
--

LOCK TABLES `booking_table` WRITE;
/*!40000 ALTER TABLE `booking_table` DISABLE KEYS */;
INSERT INTO `booking_table` VALUES (1,1,101,'2022-02-10','2022-03-10',15,16,'2022-02-08','booked',2800,1,1),(2,2,301,'2022-01-01','2022-02-01',13,14,'2021-12-30','booked',3100,1,0),(3,3,402,'2022-03-12','2022-04-12',13,14,'2021-12-30','unbooked',5250,0,0),(4,1,501,'2022-04-01','2022-05-01',17,18,'2022-03-29','booked',3900,1,0);
/*!40000 ALTER TABLE `booking_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_info_table`
--

DROP TABLE IF EXISTS `club_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_info_table` (
  `club_id` int NOT NULL AUTO_INCREMENT,
  `club_name` varchar(100) DEFAULT NULL,
  `no_of_courts` int DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `club_address` varchar(100) DEFAULT NULL,
  `club_status` varchar(50) DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`club_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `club_info_table_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner_info_table` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_info_table`
--

LOCK TABLES `club_info_table` WRITE;
/*!40000 ALTER TABLE `club_info_table` DISABLE KEYS */;
INSERT INTO `club_info_table` VALUES (1,'white tigers',2,'mumbai',446521,'shastri nagar pune','open',1),(2,'daredevils',1,'pune',446121,'swargate pune','open',1),(3,'lions den',2,'pune',445424,'kothrud pune','close',2),(4,'smashers',1,'mumbai',443101,'kalamboli mumbai','open',3),(5,'ZP king',1,'jalgaon',446654,'rajguru nagar jalgaon','close',1);
/*!40000 ALTER TABLE `club_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court_info_table`
--

DROP TABLE IF EXISTS `court_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `court_info_table` (
  `court_id` int NOT NULL AUTO_INCREMENT,
  `court_no` int DEFAULT NULL,
  `court_start_time` int DEFAULT NULL,
  `court_end_time` int DEFAULT NULL,
  `court_desc` varchar(100) DEFAULT NULL,
  `court_charge_hr` int DEFAULT NULL,
  `club_id` int DEFAULT NULL,
  PRIMARY KEY (`court_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `court_info_table_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club_info_table` (`club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court_info_table`
--

LOCK TABLES `court_info_table` WRITE;
/*!40000 ALTER TABLE `court_info_table` DISABLE KEYS */;
INSERT INTO `court_info_table` VALUES (1,101,12,20,'wooden',100,1),(2,102,12,20,'synthetic',100,1),(3,201,10,20,'synthetic',150,2),(4,301,10,20,'wooden',150,3),(5,302,10,20,'synthetic',150,3),(6,402,9,21,'synthetic',175,4),(7,501,15,21,'wooden',130,5);
/*!40000 ALTER TABLE `court_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_table`
--

DROP TABLE IF EXISTS `feedback_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_table` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `court_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  CONSTRAINT `feedback_table_chk_1` CHECK (((`rating` >= 0) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_table`
--

LOCK TABLES `feedback_table` WRITE;
/*!40000 ALTER TABLE `feedback_table` DISABLE KEYS */;
INSERT INTO `feedback_table` VALUES (1,'akash kohli',101,5,'best court ever seen'),(2,'pravin tare',301,3,'good court'),(3,'arjun pande',401,4,'good and superbb court');
/*!40000 ALTER TABLE `feedback_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_info_table`
--

DROP TABLE IF EXISTS `owner_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_info_table` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(100) DEFAULT NULL,
  `owner_last_name` varchar(100) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `owner_password` varchar(100) DEFAULT NULL,
  `owner_moblie_no` varchar(100) DEFAULT NULL,
  `owner_security_que` varchar(100) DEFAULT NULL,
  `owner_security_ans` varchar(100) DEFAULT NULL,
  `owner_isactive` tinyint DEFAULT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_info_table`
--

LOCK TABLES `owner_info_table` WRITE;
/*!40000 ALTER TABLE `owner_info_table` DISABLE KEYS */;
INSERT INTO `owner_info_table` VALUES (1,'sunil','pande','pande12@gmail.com','ar123','9899743210','which is your favourite place name?','Mumbai',1),(2,'madhuri','kant','kant12@gmail.com','madhuri@11','9569743210','which is your favourite movie name?','pushpa',0),(3,'shikant','tiwari','tiwari@gmail.com','shir@11','9685743210','which is your favourite movie name?','the outlaws',1);
/*!40000 ALTER TABLE `owner_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_table`
--

DROP TABLE IF EXISTS `user_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info_table` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(100) DEFAULT NULL,
  `user_last_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_moblie_no` varchar(100) DEFAULT NULL,
  `user_gender` varchar(10) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_security_que` varchar(100) DEFAULT NULL,
  `user_security_ans` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_table`
--

LOCK TABLES `user_info_table` WRITE;
/*!40000 ALTER TABLE `user_info_table` DISABLE KEYS */;
INSERT INTO `user_info_table` VALUES (1,'akash','kohli','kohli@gmail.com','akash123','9876543210','male','shastri nagar pune','what is your first school name?','MMJ school'),(2,'pravin','tare','tare11@gmail.com','tare123','9876443210','male','shivaji nagar pune','what is your first school name?','vvi school'),(3,'arjun','pande','pande123@gmail.com','arjun123','8875743210','male','kalamboli mumbai','what is your first pet name?','brick');
/*!40000 ALTER TABLE `user_info_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-25 15:54:18
