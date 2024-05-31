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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order_id` int NOT NULL,
  `Table_id` int DEFAULT NULL,
  `Customer_id` int DEFAULT NULL,
  `Discount_id` int DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Order_id`),
  KEY `Table_id` (`Table_id`),
  KEY `Customer_id` (`Customer_id`),
  KEY `Discount_id` (`Discount_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Table_id`) REFERENCES `table` (`Table_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`Discount_id`) REFERENCES `discount` (`Discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,NULL,'2023-04-02 18:00:00','close'),(2,2,2,NULL,'2023-04-02 18:15:00','close'),(3,3,3,NULL,'2023-04-02 18:30:00','close'),(4,4,4,NULL,'2023-04-02 18:45:00','close'),(5,5,5,NULL,'2023-04-02 19:00:00','close'),(6,6,6,NULL,'2023-04-02 19:15:00','close'),(7,7,1,1,'2023-04-02 19:30:00','Open'),(8,8,2,2,'2023-04-02 19:45:00','Open'),(9,9,3,3,'2023-04-02 20:00:00','Open'),(10,1,1,1,'2023-04-21 21:28:59','Open'),(11,1,1,1,'2023-04-22 00:44:01','Close');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
