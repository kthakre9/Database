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
-- Temporary table structure for view `patient_appointment`
--

DROP TABLE IF EXISTS `patient_appointment`;
/*!50001 DROP VIEW IF EXISTS `patient_appointment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `patient_appointment` (
  `appointment_ID` tinyint NOT NULL,
  `Patient` tinyint NOT NULL,
  `Appointment_Status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view1` (
  `patient_medication_ID` tinyint NOT NULL,
  `patient` tinyint NOT NULL,
  `medication_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `patient_appointment`
--

/*!50001 DROP TABLE IF EXISTS `patient_appointment`*/;
/*!50001 DROP VIEW IF EXISTS `patient_appointment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_appointment` AS select `ap`.`Appointment_ID` AS `appointment_ID`,concat_ws(',',`p`.`patient_fname`,`p`.`patient_lname`) AS `Patient`,`a`.`Appointment_status_description` AS `Appointment_Status` from ((`patient` `p` join `appointment_status` `a`) join `appointment` `ap`) where ((`p`.`Patient_ID` = `ap`.`Patient_ID`) and (`ap`.`Appointment_status_ID` = `a`.`Appointment_status_ID`)) order by `ap`.`Appointment_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view1`
--

/*!50001 DROP TABLE IF EXISTS `view1`*/;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `pm`.`Patient_medication_ID` AS `patient_medication_ID`,concat_ws(',',`p`.`patient_fname`,`p`.`patient_lname`) AS `patient`,`m`.`medication_name` AS `medication_name` from ((`patient_medication` `pm` join `patient` `p`) join `medication` `m`) where ((`p`.`Patient_ID` = `pm`.`patient_ID`) and (`m`.`medication_ID` = `pm`.`medication_ID`)) order by `pm`.`Patient_medication_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-10 20:16:02
