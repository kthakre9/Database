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
-- Table structure for table `patient_medication`
--

DROP TABLE IF EXISTS `patient_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_medication` (
  `Patient_medication_ID` int(11) NOT NULL,
  `medication_ID` int(11) DEFAULT NULL,
  `patient_ID` int(11) DEFAULT NULL,
  `date_time_administered` datetime DEFAULT NULL,
  `date_time_administered2` datetime DEFAULT NULL,
  `dosage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Patient_medication_ID`),
  KEY `patient_medication_ID` (`medication_ID`),
  KEY `medpatient_ID` (`patient_ID`),
  CONSTRAINT `medpatient_ID` FOREIGN KEY (`patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient_medication_ID` FOREIGN KEY (`medication_ID`) REFERENCES `medication` (`medication_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medication`
--

LOCK TABLES `patient_medication` WRITE;
/*!40000 ALTER TABLE `patient_medication` DISABLE KEYS */;
INSERT INTO `patient_medication` VALUES (4000,8002,700,'2013-10-11 14:54:22',NULL,'once a day'),(4001,8002,701,'2013-04-12 12:10:00','2013-04-12 15:20:00','twice a day'),(4002,8004,702,'2013-07-12 13:10:00',NULL,'once a day'),(4003,8003,704,'2013-06-11 12:21:00',NULL,'once a day'),(4004,8005,706,'2013-07-12 16:10:00',NULL,'once a day'),(4005,8006,703,'2013-01-10 12:10:00',NULL,'once a day'),(4006,8007,705,'2013-09-27 10:28:10',NULL,'once a day');
/*!40000 ALTER TABLE `patient_medication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-10 20:15:58
