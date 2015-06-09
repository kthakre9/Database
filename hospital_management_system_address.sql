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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_ID` int(11) NOT NULL,
  `address_line1` varchar(45) DEFAULT NULL,
  `address_line2` varchar(45) DEFAULT NULL,
  `address_city` varchar(20) DEFAULT NULL,
  `address_country` varchar(20) DEFAULT NULL,
  `address_zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1000,'75 Saint Alphonsus Street','Apt 2012','Boston','USA',2120),(1001,'75 Saint Alphonsus Street','Apt 1501','Boston','USA',2120),(1002,'75 Saint Alphonsus Street','Apt 1612','Boston','USA',2120),(1003,'75 Saint Alphonsus Street','Apt 1002','Boston','USA',2120),(1004,'17 C Smith Street','Mission Main Apartments','Boston','USA',2120),(1005,'Central Park West','5th Avenue','New york','USA',10023),(1006,'Central Park West','6th Avenue','New york','USA',10025),(1007,'72 Staniford Street','Emerson Place Apartments','Boston','USA',2114),(1008,'Walden Park Apartments','205 Walden St Cambridge','Boston','USA',2140),(1009,'Littles Brook Court Burlington','Heritage at Stone Ridge Apartments','Boston','USA',1803),(1010,'929 House Apartments','929 Massachusetts Avenue Cambridge','Boston','USA',2139),(1011,'Archstone Boston Common Apartments',' 660 Washington St.','Boston','USA',2111),(1012,'Third Square Apartments','285 Third Street Cambridge','Boston','USA',2142),(1014,'Gateway at Malden Center Apartments','14 Summer Street Malden','Boston','USA',2148);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-10 20:15:59
