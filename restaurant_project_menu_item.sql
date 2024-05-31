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
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `MItem_id` int NOT NULL,
  `MName` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` text,
  PRIMARY KEY (`MItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,'Classic Burger',8.99,'A juicy beef patty topped with lettuce, tomato, onion, and pickles'),(2,'Chicken Caesar Salad',10.99,'Romaine lettuce, grilled chicken, croutons, and Parmesan cheese'),(3,'Margherita Pizza',12.99,'Tomato sauce, fresh mozzarella, and basil on a thin crust'),(4,'BBQ Ribs Pasta',16.99,'Slow-cooked and basted in our signature BBQ sauce'),(5,'Fish and Chips Sides',14.99,'Beer-battered cod served with fries and tartar sauce'),(6,'Spaghetti Bolognese Pasta',11.99,'Spaghetti with a meaty tomato sauce and Parmesan cheese'),(7,'Avacado Burger',10.99,'Tasty burger with avocado and spicy sauce'),(8,'Healthy Salad',9.99,'Healthy salad with mixed greens and veggies'),(9,'Chicken Quinoa Salad',11.99,'Fresh salad with grilled chicken and quinoa'),(10,'Classic Pizza',12.99,'Classic pizza with pepperoni and mushrooms'),(11,'Gourmet pizza',13.99,'Gourmet pizza with prosciutto and arugula'),(12,'Traditional pasta',11.99,'Traditional pasta with meat sauce'),(13,'French Fries Sides',3.99,'Crispy french fries'),(14,'Onion Rings Sides',4.99,'Golden Onion Rings'),(15,'Soda Drink',2.99,'Refreshing soda'),(16,'Lemon Tea Drink',3.99,'Iced tea with lemon');
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
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
