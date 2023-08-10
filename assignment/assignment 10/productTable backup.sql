CREATE DATABASE  IF NOT EXISTS `frozenfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `frozenfood`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(90) NOT NULL,
  `productType` int NOT NULL,
  `description` varchar(90) NOT NULL,
  `size` decimal(7,1) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `sizeTypeId` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `productType` (`productType`),
  KEY `sizeTypeId` (`sizeTypeId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productType`) REFERENCES `producttype` (`ID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sizeTypeId`) REFERENCES `sizetype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'lamb shank',1,'lamb shank in rosemary and mint sauce',10.0,20,9.99,1),(2,'veal',1,'veal osso buco',15.5,15,11.99,1),(3,'short rib',1,'braveheart angus beef boneless short rib',12.0,40,7.99,1),(4,'flank steak',1,'braveheart angus beef flank steak',2.0,30,16.99,2),(5,'chicken',1,'boneless chicken breasts',8.0,56,21.99,3),(6,'pork chops',1,'bacon-wrapped pork chops',4.0,42,19.99,3),(7,'langoustines',2,'medium wild langoustines',7.0,25,20.99,3),(8,'octopus',2,'cooked small octopus tentacles',3.0,15,23.00,3),(9,'shrimp',2,'red shrimp from argentina XL',12.0,50,12.99,3),(10,'clams',2,'coquina clams',12.0,45,9.99,3),(11,'peas',3,'extra fine french peas',2.0,60,5.99,2),(12,'artichoke',3,'artichoke bottoms',2.0,24,17.69,2),(13,'bean',3,'very find yellow wax beans',2.0,30,6.29,2),(14,'broccoli',3,'broccoli florets',2.0,55,4.49,2),(15,'potatoes',3,'family size smashed red potatoes',32.0,55,12.99,1),(16,'potatoes',3,'family size whipped sweet potatoes',32.0,55,14.49,1),(17,'potatoes',3,'potatoes au gratin',3.0,55,8.49,1),(18,'rice',4,'jasmine rice',2.0,45,9.99,2),(19,'rice',4,'brown, red and wild rice medley',2.0,35,9.99,2),(20,'quinoa',4,'organic quinoa',2.0,26,12.99,2),(21,'lentils',4,'black beluga lentils',2.0,18,9.99,2),(22,'pastry',5,'frangipane king cake',19.0,32,19.99,1),(23,'pastry',5,'chocolate croissant',3.0,90,1.90,1),(24,'dessert',5,'tiramisu classico',3.0,60,4.99,1),(25,'dessert',5,'authentic french creme brulee',5.0,54,5.99,1),(26,'pie',5,'cappuccino pie',3.0,10,36.50,2),(27,'cake',5,'red berry cheesecake',3.0,12,36.50,2),(28,'bread',5,'brioche burger buns',4.0,44,4.80,3),(29,'bread',5,'ciabatta sandwich 6 inch',3.0,28,3.29,3),(30,'dough',5,'mini blinis',16.0,26,4.46,3),(61,'steak',1,'Butcher\'s Cut Filet Mignon',10.0,30,33.74,1),(62,'steak',1,'Butcher\'s Cut Top Sirloin',5.0,50,14.99,1),(63,'steak',1,'T-Bone Steak',18.0,40,33.33,1),(64,'bison',1,'Ground Bison',1.0,20,22.49,2),(65,'turkey',1,'Home-Style Roasted Turkey Breast',1.8,45,21.99,2),(66,'turkey',1,'Turkey Burgers',8.0,30,21.99,3),(67,'ham',1,'Spiral Sliced Ham',9.0,15,89.99,2),(68,'pork',1,'Breaded Pork Tenderloin',4.0,25,19.99,3),(69,'salmon',2,'Lemon Dill Salmon Fillets',6.0,20,8.79,1),(70,'seabass',2,'Chilean Sea Bass',5.0,30,19.99,1),(71,'crab',2,'King Crab Legs',2.0,16,109.99,2),(72,'crab',2,'Gourmet Crab Cakes',4.0,26,34.99,3),(73,'lobster',2,'Cold Water Lobster Tails',5.0,35,22.99,1),(74,'bean',3,'Green Beans',6.5,45,10.99,1),(75,'broccoli',3,'Steakhouse Broccoli and Cauliflower Gratin',22.0,35,12.99,1),(76,'brussels sprouts',3,'Brussels Sprouts with Bacon & Shallots',9.5,35,14.99,1),(77,'corn',3,'Steakhouse Creamed Corn',20.0,40,10.99,1),(78,'mixed',3,'Roasted Vegetable Medley',7.0,50,9.99,1),(79,'asparagus',3,'Asparagus Spears With Hollandaise Sauce',12.0,30,15.99,1),(80,'potatoes',3,'Potatoes au Gratin',8.0,55,14.99,3),(81,'risotto',4,'Pepper Jack Risotto Cakes',8.0,25,19.99,3),(82,'rice',4,'Harvest Rice Pilaf',25.0,45,14.99,1),(83,'bread',5,'Mini Baguettes with Garlic Butter',4.0,35,49.99,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 14:34:34
