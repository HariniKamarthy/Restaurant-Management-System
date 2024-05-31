-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant_project
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_id` int NOT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `EPhone_Number` varchar(20) DEFAULT NULL,
  `EEmail` varchar(50) DEFAULT NULL,
  `EAddress` varchar(100) DEFAULT NULL,
  `Role` varchar(10) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `KStation_id` int DEFAULT NULL,
  `Restaurant_id` int DEFAULT NULL,
  PRIMARY KEY (`Employee_id`),
  KEY `KStation_id` (`KStation_id`),
  KEY `Restaurant_id` (`Restaurant_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`KStation_id`) REFERENCES `kitchen_station` (`KStation_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John Smith','123-456-7890','john.smith@restaurant1.com','123 Main St','Manager',50000.00,NULL,1),(2,'Jane Doe','555-555-5555','jane.doe@restaurant1.com','456 Elm St','Server',20000.00,NULL,1),(3,'Samantha Brown','999-999-9999','samantha.brown@restaurant1.com','789 Oak St','Chef',60000.00,1,1),(4,'Michael Johnson','111-111-1111','michael.johnson@restaurant1.com','1010 Broad St','Host',18000.00,NULL,1),(5,'Sarah Lee','222-222-2222','sarah.lee@restaurant1.com','1313 5th Ave','Chef',60000.00,2,1),(6,'Peter Green','333-333-3333','peter.green@restaurant1.com','1212 6th Ave','Chef',60000.00,3,1),(7,'Alex Davis','444-444-4444','alex.davis@restaurant2.com','222 Main St','Manager',50000.00,NULL,1),(8,'Emily Wilson','777-777-7777','emily.wilson@restaurant2.com','333 Elm St','Server',20000.00,NULL,1),(9,'Olivia Lee','999-999-9999','olivia.lee@restaurant2.com','555 Broad St','Host',18000.00,NULL,1),(10,'Jessica Smith','666-666-6666','jessica.smith@restaurant3.com','444 Elm St','Server',20000.00,NULL,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 18:38:12
