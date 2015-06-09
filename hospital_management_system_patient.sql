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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `Patient_ID` int(11) NOT NULL,
  `Patient_ailment_ID` int(11) DEFAULT NULL,
  `Patient_address_ID` int(11) DEFAULT NULL,
  `patient_fname` varchar(20) DEFAULT NULL,
  `patient_lname` varchar(20) DEFAULT NULL,
  `medication_ID` int(11) DEFAULT NULL,
  `patient_medication_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`),
  KEY `ailment_ID` (`Patient_ailment_ID`),
  KEY `address_ID` (`Patient_address_ID`),
  CONSTRAINT `address_ID` FOREIGN KEY (`Patient_address_ID`) REFERENCES `address` (`address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ailment_ID` FOREIGN KEY (`Patient_ailment_ID`) REFERENCES `ailment` (`Ailment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (700,7401,1000,'Kasturi',' Meshram',8002,4000),(701,7401,1006,'Tina',' Khanna',8002,4001),(702,7402,1001,'Rahul',' Arora',8004,4002),(703,7403,1002,'Seema',' Gupta',8006,4005),(704,7406,1003,'Priya',' Nanda',8005,4003),(705,7405,1004,'Avni','Gaikwad',8007,4006),(706,7402,1005,'Sumera','Khan',8004,4004);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-10 20:16:00
