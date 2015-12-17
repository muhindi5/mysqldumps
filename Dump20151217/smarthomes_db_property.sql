CREATE DATABASE  IF NOT EXISTS `smarthomes_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `smarthomes_db`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: smarthomes_db
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `property_type` enum('APARTMENT','BUNGALOW','MANSIONETTE','STUDIO','UNDEVELOPED LAND') DEFAULT NULL,
  `sale_status` enum('AVAILABLE','SOLD') DEFAULT 'AVAILABLE',
  `price` decimal(9,0) NOT NULL,
  `location_id` int(11) NOT NULL,
  `images_dir_id` varchar(20) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `header` varchar(1000) DEFAULT NULL,
  `intent` enum('SALE','RENTAL','LEASE') NOT NULL,
  PRIMARY KEY (`property_id`),
  KEY `owner_id` (`owner_id`),
  KEY `location_id` (`location_id`),
  FULLTEXT KEY `tx_index` (`keywords`,`description`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `property_owner` (`owner_id`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (2,1,'APARTMENT','AVAILABLE',120000,1,'9823','It comes with a large living room with balcony, spacious well finished Kitchen. High ceilings Large windows, multiple light fixtures, ample storage in both kitchens and bedrooms. The 3 bedroom Apartment has 2 bedrooms en suite, and one shared bathroom. The master Bedroom has a balcony. 3rd non en suite bedroom is ideal as a guest bedroom or study.\nLift, Wide staircases, ample secure parking in a closed compound.\n\nThe apartment is set in a compound of 90 and ideal for young families.\n\nA lovely apartment in the heart of Lavington is 5 mins away from Lavington Mall, 3 from Valley Arcade and 2 mins to For You Chinese restaurant.','Lavington, Apartment, 3-bedroomed','3 Bedroom Apartment, Lavington','SALE'),(3,3,'UNDEVELOPED LAND','AVAILABLE',17000000,2,'2395','Exclusive access gate to visit the Ol Pejeta Conservancy at concessionary rates\n    Share in 1,000 acre Wildlife Estate\n    Abundant game and birdlife in the Wildlife Estate\n    Additional Game in the Conservancy including the Big Five\n    MKWE is just 4 km. from the fabulous \"Morani\" restaurant recently opened on Ol Pejeta Conservancy.\n    A new 18-hole Championship Golf course has been launched only some 6 Km. from the Mount Kenya Wildlife Estate, offering buyers at MKWE the prospect of an additional activity available close at hand.\n','farming, rural, estate, wildlife','1000-Acre Wildlife Estate','SALE'),(4,2,'MANSIONETTE','SOLD',6500000,3,'1135','It comes with a large living room with balcony, spacious well finished Kitchen. High ceilings Large windows, multiple light fixtures, ample storage in both kitchens and bedrooms. The 3 bedroom Apartment has 2 bedrooms en suite, and one shared bathroom. The master Bedroom has a balcony. 3rd non en suite bedroom is ideal as a guest bedroom or study.\n','mansionette,nyahururu, kieni,rural','4 Bedroomed Mansionette, Kieni-Nyahururu','SALE'),(8,11,'STUDIO','AVAILABLE',1400000,12,'3826','Comes with a large living room with balcony, spacious well finished Kitchen. High ceilings Large windows, multiple light fixtures, ample storage in both kitchens and bedrooms. The 3 bedroom studio has 2 bedrooms en suite, and one shared bathroom. The master Bedroom has a balcony. 3rd non en suite bedroom is ideal as a guest bedroom or study.  Lift, Wide staircases, ample secure parking in a closed compound. The apartment is set in a compound of 90 and ideal for young families. A lovely apartment in the heart of Lavington is 5 mins away from Lavington Mall, 3 from Valley Arcade and 2 mins to For You Chinese restaurant.','maisonette, laikipia,nyahururu,balcony,3-bedroomed','Masionnete  for Sale in Mzima Springs','SALE');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-17 17:33:35
