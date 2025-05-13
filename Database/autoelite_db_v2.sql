-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: autoelite_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,3,'No. 789, High Level Road, Nugegoda','0761122334'),(2,4,'No. 321, Temple Road, Kurunegala','0756677889');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_person`
--

DROP TABLE IF EXISTS `delivery_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_person` (
  `delivery_person_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`delivery_person_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `delivery_person_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_person`
--

LOCK TABLES `delivery_person` WRITE;
/*!40000 ALTER TABLE `delivery_person` DISABLE KEYS */;
INSERT INTO `delivery_person` VALUES (1,2,'No. 123, Kandy Road, Colombo','0771234567'),(2,5,'No. 456, Main Street, Galle','0719876543');
/*!40000 ALTER TABLE `delivery_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `m_firstname` varchar(50) DEFAULT NULL,
  `m_lastname` varchar(50) DEFAULT NULL,
  `m_email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `m_password` varchar(100) DEFAULT NULL,
  `M_status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`m_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('Dinusha','Jayawardena','dinusha.manager@example.com','0774455667','manager321','Active');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_name` varchar(150) DEFAULT NULL,
  `m_date` date DEFAULT NULL,
  `m_email` varchar(150) DEFAULT NULL,
  `message` text,
  `m_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'Nimal Perera','2025-05-01','nimal.admin@example.com','System update completed.','Read'),(2,'Sunil Fernando','2025-05-02','sunil.del@example.com','Delivery delayed due to rain.','Unread'),(3,'Kamal Silva','2025-05-03','kamal.cust@example.com','When will my order be delivered?','Unread'),(4,'Amara Senanayake','2025-05-04','amara.cust@example.com','Great service, thank you!','Read'),(5,'Ruwan Wijesinghe','2025-05-05','ruwan.del@example.com','Unable to reach customer.','Unread');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `o_date` date DEFAULT NULL,
  `o_address` text NOT NULL,
  `o_phone` varchar(20) NOT NULL,
  `o_status` varchar(50) DEFAULT 'Pending',
  `paid_status` varchar(50) DEFAULT 'Unpaid',
  `customer_id` int DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  `order_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `customer_id` (`customer_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-05-13','Nimal Pereranull val','09865345678',NULL,NULL,1,25,10000.00),(2,'2025-05-13','Nimal Pererapanadura','0716899444','Pending','Unpaid',1,2,10000.00),(3,'2025-05-13','Nimal Perera bandaragama','075356886','Pending','Unpaid',1,18,10000.00),(4,'2025-05-13','Nimal Perera kegalle','0716899444','Pending','Unpaid',1,23,2342568.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pay_id` int NOT NULL AUTO_INCREMENT,
  `card_number` bigint NOT NULL,
  `expiry_date` date NOT NULL,
  `cvc_value` smallint NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `customer_id` int DEFAULT NULL,
  `o_id` int DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,4567890123456789,'2026-09-01',123,3200.00,1,NULL),(2,5678901234567890,'2025-12-01',456,4500.00,2,NULL),(3,6789012345678901,'2027-06-01',789,12000.00,1,NULL),(4,7890123456789012,'2024-11-01',321,2200.00,2,NULL),(5,8901234567890123,'2025-03-01',654,1100.00,1,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(150) NOT NULL,
  `p_category` varchar(100) NOT NULL,
  `p_price` decimal(10,2) NOT NULL,
  `p_quantity` int NOT NULL,
  `p_description` text,
  `p_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Brake Pad Set','Brakes',3200.00,150,'High-quality brake pads for front wheels.',NULL),(2,'Engine Oil 5W-30','Lubricants',4500.00,200,'Synthetic engine oil for petrol engines.',NULL),(3,'Car Battery 12V','Electrical',12000.00,40,'Maintenance-free car battery.',NULL),(4,'Fuel Filter','Filters',2200.00,75,'Ensures clean fuel supply.',NULL),(5,'Wiper Blades','Accessories',1100.00,120,'All-weather windshield wipers.',NULL),(16,'McLaren 720S Carbon Fiber Hood','Body Parts',1501647.00,5,'Genuine carbon fiber replacement hood for McLaren 720S, reduces weight and enhances aerodynamics','mclaren-hood.png'),(17,'Lamborghini Aventador SVJ Brake Kit','Braking System',1051152.00,8,'High-performance ceramic brake kit for Lamborghini Aventador SVJ with improved stopping power','brembo.png'),(18,'Ferrari Performance ECU','Electronics',840921.00,3,'Programmable engine control unit for Ferrari models with custom mapping capabilities','ecu.png'),(19,'Bugatti Chiron Oil Filter Set','Engine Components',150162.00,15,'Premium oil filtration system specifically designed for Bugatti Chiron W16 engine','thumb.png'),(20,'Porsche 911 GT2 RS Exhaust System','Exhaust',1591746.00,4,'Titanium full exhaust system for Porsche 911 GT2 RS with valve control','exhaust.png'),(21,'Koenigsegg Jesko Carbon Fiber Spoiler','Aerodynamics',2402637.00,2,'Authentic carbon fiber rear spoiler for Koenigsegg Jesko with adjustable angle','spoiler.png'),(22,'Aston Martin DBS Superleggera Wheel Set','Wheels',1952142.00,6,'Forged aluminum wheel set for Aston Martin DBS Superleggera, 20-inch front, 21-inch rear','ruff-rims.png'),(23,'Ford GT Performance Suspension Kit','Suspension',1171284.00,7,'Adjustable coilover suspension kit for Ford GT with track-focused setup options','spring.png'),(24,'Pagani Huayra Interior Trim Kit','Interior',2702967.00,3,'Handcrafted carbon fiber and leather interior trim kit for Pagani Huayra','pagani_interior.jpg'),(25,'Rimac Nevera Battery Management System','Electric Components',1381515.00,4,'Advanced battery management system for Rimac Nevera electric hypercar','battery.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_firstname` varchar(100) NOT NULL,
  `u_lastname` varchar(100) NOT NULL,
  `u_email` varchar(150) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_type` enum('admin','delivery_person','customer','manager') NOT NULL,
  `u_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nimal','Perera','nimal.admin@example.com','admin123','admin',NULL),(2,'Sunil','Fernando','sunil.del@example.com','deliver123','delivery_person',NULL),(3,'Kamal','Silva','kamal.cust@example.com','customer123','customer',NULL),(4,'Amara','Senanayake','amara.cust@example.com','cust456','customer',NULL),(5,'Ruwan','Wijesinghe','ruwan.del@example.com','del789','delivery_person',NULL),(6,'Dinusha','Jayawardena','dinusha.manager@example.com','manager321','manager',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'autoelite_db'
--

--
-- Dumping routines for database 'autoelite_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 18:49:32
