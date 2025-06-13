CREATE DATABASE  IF NOT EXISTS `vibevintage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vibevintage`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: vibevintage
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (4,'test','test1234','2025-05-29 05:37:32'),(5,'admin@aadiityashah','harihar','2025-05-29 06:48:32'),(6,'test666','test666','2025-06-13 06:13:32');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kids_collection`
--

DROP TABLE IF EXISTS `kids_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kids_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kids_collection`
--

LOCK TABLES `kids_collection` WRITE;
/*!40000 ALTER TABLE `kids_collection` DISABLE KEYS */;
INSERT INTO `kids_collection` VALUES (1,'Sweatshirt for boys',499.00,'Kids Dress for Boys | Boy\'s Cotton full Sleeves Printed Sweatshirt and Pant Set | Sweatshirt and Joggers Combo Clothing Trendy Dress for Kids Boys','2024-11-22 13:04:39'),(2,'Full Sleeve Sweatshirt',679.00,'Boys Full Sleeves Sweatshirt Cotton Graphic Printed Designs Tees | Latest Stylish Sweat T Shirt | Hypoallergenic Breathable Skin Friendly Fabric','2024-11-22 13:07:48'),(3,'BTS Fancy Set for Girls',599.00,'100% Cotton Fancy Set of top and Rayon Palazzo for Kids and Girls | Age_4-17 Years','2024-11-22 13:09:03'),(4,'Madara Uchiha Sweatshirt',579.00,'Anime Hoodie for Boys Naruto Series Madara Uchiha Front and Back Printed Hoodies Hooded Sweatshirt Best Winter Wear','2024-11-22 13:10:30'),(5,'Lahenga Choli for girls',999.00,'New latest Girl\'s Tissue checks readymade Lehenga choli for girls dress','2024-11-22 13:11:35'),(6,'Boys Clothing Set (3 Piece)',979.00,'Boys Clothing Set 3 Piece Dress for Boys, Set of Coat, Pant & Shirt, Ideal for Wedding and Birthday','2024-11-22 13:13:21'),(7,'Girls Denim Jeans',945.00,'Girls Denim Jeans Set, 3/4 Sleeves Jacket and Jeans Pants','2024-11-22 13:14:40'),(8,'Girls Gown Frock',985.00,'Girls\' Gown Frock','2024-11-22 13:15:43'),(9,'Full Sleeve Shirt (Black)',349.00,'Stylish Boys Cotton Printed Full Sleeve T-Shirt (Black)','2024-11-22 13:17:16'),(10,'Kids Waistcoat and Pants for Boys',599.00,'Kids T-Shirt, Waistcoat and Pant for Boys','2024-11-22 13:22:29'),(16,'Kurta and Pant set for Girls',599.00,'Kurta and Pant set for Girls','2024-11-22 17:34:08');
/*!40000 ALTER TABLE `kids_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `men_collection`
--

DROP TABLE IF EXISTS `men_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `men_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_collection`
--

LOCK TABLES `men_collection` WRITE;
/*!40000 ALTER TABLE `men_collection` DISABLE KEYS */;
INSERT INTO `men_collection` VALUES (18,'Men Office Wear','349','','Men\'s Cotton Blend Stitched Solid Full Sleeve Slim Fit Shirt'),(19,'Casual Shirt for Men','479','','Casual Shirt for Men|| Shirt for Men|| Men Stylish Shirt (Rib-Shirt)'),(20,'Winter Jacket','599','','Winter Jacket for Men || Quilted Jackets for Men & Boys || Regular Fit Jacket For Casual Wear'),(21,'Hoodie','699','','Trendy Men\'s Hoodie'),(23,'Stylish Shirt for Men','428','','Casual Shirt for Men || Shirt for Men Latest Stylish || Men Stylish Shirt || Men Solid Plain Shirt'),(24,'Half Sleeve T Shirt ','409','','T-Shirt | T-Shirt for Men | Polo T Shirt for Men | Casual T Shirt for Men | Men T Shirt | Men T Shirts Stylish Latest | Half Sleeve T Shirt'),(25,'Regular Fit Polo','719','','Men\'s Regular Fit Polo'),(26,'Marvel Superhero Shirt','718','','Marvel Men\'s Printed Regular Fit T-Shirt'),(27,'Marvel Captain Shield Shirt','609','','Marvel Captain\'s Shield T Shirt'),(28,'MoonKnight T-Shirt','1500','','Men\'s Marvel Printed 100% Cotton T-Shirt - Regular Fit, Round Neck, Half Sleeves - Moon Knight'),(29,'Jeans for Men','1299','','Relaxing Jeans for Men (Blue)'),(30,'Black Jeans','1179','','Comfortable Black Jeans for Men');
/*!40000 ALTER TABLE `men_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `men_collection` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (17,'','','','',888.50,50.00,938.50,'COD','2025-05-09 15:17:00','2025-05-09 15:17:00',NULL,10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,14,'uploads/regularfit1.jpg'),(2,14,'uploads/regularfit2.jpg'),(3,18,'uploads/officewear1.jpg'),(4,18,'uploads/officewear2.jpg'),(5,19,'uploads/mentshirt1.jpg'),(6,20,'uploads/winterjacket.jpg'),(7,21,'uploads/hoodie2.jpg'),(8,22,'uploads/regularfit1.jpg'),(9,22,'uploads/regularfit2.jpg'),(10,23,'uploads/stylishshirt1.jpg'),(11,23,'uploads/stylishshirt2.jpg'),(12,24,'uploads/tshirt1.jpg'),(13,24,'uploads/tshirt2.jpg'),(14,25,'uploads/tshirt3.jpg'),(15,25,'uploads/tshirt4.jpg'),(16,26,'uploads/mc1.jpg'),(17,26,'uploads/mc2.jpg'),(18,27,'uploads/mc3.jpg'),(19,27,'uploads/mc4.jpg'),(20,28,'uploads/mc5.jpg'),(21,28,'uploads/mc6.jpg'),(22,29,'uploads/menjeans.jpg'),(23,29,'uploads/menjeans2.jpg'),(24,30,'uploads/blackjeans.jpg'),(25,30,'uploads/blackjeans2.jpg'),(26,1,'uploads/sweatshirtboys.jpg'),(27,2,'uploads/sweatshirtboys2.jpg'),(28,2,'uploads/sweatshirtboys3.jpg'),(29,3,'uploads/btsfancyset.jpg'),(30,3,'uploads/btsfancyset2.jpg'),(31,4,'uploads/madaruchicha1.jpg'),(32,4,'uploads/madaruchicha2.jpg'),(33,5,'uploads/lahengacholi.jpg'),(34,6,'uploads/weddingparty1.jpg'),(35,6,'uploads/weddingparty2.jpg'),(36,7,'uploads/denimset.jpg'),(37,7,'uploads/denimset2.jpg'),(38,8,'uploads/gownfrock1.jpg'),(39,8,'uploads/gownfrock2.jpg'),(40,9,'uploads/blacksleeve1.jpg'),(41,9,'uploads/blacksleeve2.jpg'),(42,31,'uploads/kidwaistcoat1.jpg'),(43,31,'uploads/kidwaistcoat2.jpg'),(44,10,'uploads/kidwaistcoat1.jpg'),(45,10,'uploads/kidwaistcoat2.jpg'),(46,11,'uploads/lastgirl.jpg'),(47,11,'uploads/lastgirl2.jpg'),(48,12,'uploads/lastgirl.jpg'),(49,12,'uploads/lastgirl2.jpg'),(50,13,'uploads/lastgirl.jpg'),(51,13,'uploads/lastgirl2.jpg'),(52,14,'uploads/lastgirl.jpg'),(53,14,'uploads/lastgirl2.jpg'),(54,15,'uploads/lastgirl.jpg'),(55,15,'uploads/lastgirl2.jpg'),(56,16,'uploads/lastgirl.jpg'),(57,16,'uploads/lastgirl2.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_general_ci DEFAULT 'customer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'aadiityashah','aadiityashah09','customer','2025-05-09 15:16:16','aadiityashah708@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_collection`
--

DROP TABLE IF EXISTS `women_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `women_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_collection`
--

LOCK TABLES `women_collection` WRITE;
/*!40000 ALTER TABLE `women_collection` DISABLE KEYS */;
INSERT INTO `women_collection` VALUES (1,'Women\'s Rayon Blend Anarkali Printed Kurta with Palazzo & Dupatta',809.00,'Women/Anarkaliset.jpg',NULL,'Rayon Blend Anarkali set with Palazzo & Dupatta.'),(2,'Women\'s Rayon Blend Straight Embroidered Kurta with Pant & Dupatta',909.00,'Women/EmbroideredKurta.jpg',NULL,'Straight Embroidered Kurta with matching Pant & Dupatta.'),(3,'Women\'s Rayon Blend Chikankari Embroidered Straight Kurta',459.00,'Women/ChikankariEmbroidered.jpg',NULL,'Chikankari Embroidered Straight Kurta in Rayon Blend.'),(4,'Women\'s Cotton Blend Printed Anarkali Kurta with Pant & Dupatta',859.00,'Women/Anarkalikurta.jpg',NULL,'Printed Cotton Blend Anarkali Kurta with Pant & Dupatta.'),(5,'Women\'s Rayon Blend Embroidered Straight Kurta with Pant & Dupatta',689.00,'Women/Rayonblendkurta.jpg',NULL,'Rayon Blend Embroidered Straight Kurta with matching set.'),(6,'Women\'s Cotton Hooded Neck Sweatshirt',649.00,'Women/Hoodedsweatshirt.jpg',NULL,'Comfortable and stylish hooded neck sweatshirt for women.'),(7,'Stretchable Viscose Ankle Length Leggings',549.00,'Women/leggings.jpg',NULL,'Classic fit stretchable ankle-length leggings.'),(8,'Women\'s Soft Dola Silk Saree with Heavy Lace Blouse',1999.00,'Women/Sareewithblousepiece.jpg',NULL,'Soft Dola Silk Saree with beautiful embroidery and lace blouse.'),(9,'Western Dress with Shrug',629.00,'Women/Westerndress1.jpg','Women/Westerndress2.jpg','Lycra Western Dress with matching shrug for a trendy look.'),(10,'Women\'s Bodycon Solid Dress',399.00,'Women/Soliddress.jpg','Women/Soliddress2.jpg','Elegant Bodycon solid dress for casual occasions.'),(11,'Regular Fit Mid Rise Jeans',1575.00,'Women/midraisejeans.jpg','Women/midraisejeans2.jpg','Classic Regular Fit Mid Rise Jeans for women.'),(12,'Antiviral Protective Cropped T-Shirt',1348.00,'Women/croppedtshirt.jpg','Women/croppedtshirt2.jpg','Stylish multicolor cropped t-shirt with antiviral finish.'),(13,'Full Sleeve Cotton Boyfriend Fit Shirt',1500.00,'Women/shirt1.jpg','Women/shirt2.jpg','Comfortable full sleeve collared boyfriend fit shirt.'),(14,'Women\'s Rayon Long Sleeve Double Pocket Shirt',499.00,'Women/shirt3.jpg','Women/shirt4.jpg','Casual long sleeve shirt with double pockets.'),(15,'Stylish Quilted Winter Jacket',1125.00,'Women/Jacket1.jpg','Women/Jacket2.jpg','Solid color stylish winter jacket with quilted design.'),(16,'Trendy Black Shorts',479.00,'uploads/shortswomen.jpg','uploads/shortswomen2.jpg','Black Shorts for Women');
/*!40000 ALTER TABLE `women_collection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-13 11:55:44
