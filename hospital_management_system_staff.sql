CREATE DATABASE  IF NOT EXISTS `hospital_management_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospital_management_system`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: hospital_management_system
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_catagory_ID` int(11) DEFAULT NULL,
  `Staff_address_ID` int(11) DEFAULT NULL,
  `Staff_fname` varchar(20) DEFAULT NULL,
  `Staff_lname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `scatagory_ID` (`Staff_catagory_ID`),
  KEY `saddress_ID` (`Staff_address_ID`),
  CONSTRAINT `scatagory_ID` FOREIGN KEY (`Staff_catagory_ID`) REFERENCES `staff_catagory` (`Staff_catagory_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `saddress_ID` FOREIGN KEY (`Staff_address_ID`) REFERENCES `address` (`address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (600,550,1007,'Tom','Riddle'),(601,553,1008,'Jane','Smith'),(602,551,1009,'Thomas','Cook'),(603,552,1010,'Sara','Goodwill'),(604,551,1011,'Sam','Rivvers'),(605,552,1012,'Annie','James');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-10 20:16:01
