-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mcgarry19205519
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `applicants_details`
--

DROP TABLE IF EXISTS `applicants_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants_details` (
  `applicant_id` int(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants_details`
--

LOCK TABLES `applicants_details` WRITE;
/*!40000 ALTER TABLE `applicants_details` DISABLE KEYS */;
INSERT INTO `applicants_details` VALUES (1,'Robert','Plant','9 South Street, West Bromwich, UK','086 5553333'),(2,'Kurt','Cobain','94 Street, Seatle, USA','086 3335555'),(3,'Ian','Anderson','6 Street, Dumfermline, UK','086 1112222'),(4,'Paul','McCartney','10 Penny Lane, Liverpool, UK','086 2221111'),(5,'Jim','Morrison','5 Street, Melbourn, USA','086 3334444'),(6,'Janis','Joplin','55 Street, Port Arthur, USA','086 4443333'),(7,'John','Lennon','4 Lime Street, Liverpool, UK','083 7778888'),(8,'Cassia','Eller','34 Paulista Avenue, Brazil','083 8887777'),(9,'Tina','Turner','7 Street, Nutbush, USA','083 9994444'),(10,'Alanis','Morissette','87 Avenue, Ottawa, Canada','083 4449999 ');
/*!40000 ALTER TABLE `applicants_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants_skills`
--

DROP TABLE IF EXISTS `applicants_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants_skills` (
  `applicant_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  PRIMARY KEY (`applicant_id`,`skill_id`),
  KEY `idskill_idx` (`skill_id`),
  CONSTRAINT `appl_id` FOREIGN KEY (`applicant_id`) REFERENCES `applicants_details` (`applicant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idskill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants_skills`
--

LOCK TABLES `applicants_skills` WRITE;
/*!40000 ALTER TABLE `applicants_skills` DISABLE KEYS */;
INSERT INTO `applicants_skills` VALUES (6,11),(7,11),(8,11),(7,12),(9,13),(10,13),(4,14),(3,15),(5,15),(7,15),(8,16),(1,17),(6,17),(1,18),(2,18),(2,19),(3,19),(4,21),(2,22),(8,22),(10,22);
/*!40000 ALTER TABLE `applicants_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `Interview_id` int(11) NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `stage` varchar(15) DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact_name` varchar(20) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Interview_id`),
  KEY `jobsid_idx` (`job_id`),
  KEY `applicant_id_idx` (`applicant_id`),
  CONSTRAINT `applid` FOREIGN KEY (`applicant_id`) REFERENCES `applicants_details` (`applicant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobsid` FOREIGN KEY (`job_id`) REFERENCES `jobs_description` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (101,'A',9,'first','2019-03-28','900, Belo Horizonte, Brazil','James Stewart','+55 65656565'),(102,'B',8,'first','2019-04-14','Belfield, Dublin 4, Ireland','Clark Gable','+353 34343434'),(103,'C',7,'first','2019-03-17','500, Belo Horizonte, Brazil','Gregory Peck','+353 23232323'),(104,'D',6,'first','2019-03-26','Oxford University, Oxford, UK','Humphrey Bogart','+41 39393939'),(105,'E',5,'first','2019-03-22','Cambridge University, Cambridge, UK','Cary Grant','+1 73737373'),(106,'F',4,'first','2019-03-28','Glasnevin, Dublin, Ireland','Katharine Hepburn','+353 64646464'),(107,'G',10,'first','2019-03-17','CALTECH, Pasadena, USA','Bette Davis','+1 85858585'),(108,'H',3,'first','2019-04-03','CALTECH, Pasadena, USA','Audrey Hepburn','+1 85858585'),(109,'I',2,'first','2019-03-22','Glasnevin, Dublin, Ireland','Ingrid Bergman','+353 64646464'),(110,'J',1,'first','2019-03-28','MIT, Massachusetts, USA','Greta Garbo','+1 59595959'),(111,'A',10,'first','2019-03-17','900, Belo Horizonte, Brazil','James Stewart','+55 65656565'),(112,'G',9,'first','2019-03-22','CALTECH, Pasadena, USA','Bette Davis','+1 85858585'),(114,'B',6,'first','2019-04-14','Oxford University, Oxford, UK','Clark Gable','+41 39393939'),(115,'D',8,'first','2019-03-26','Oxford University, Oxford, UK','Humphrey Bogart','+41 39393939'),(116,'I',1,'first','2019-04-12','Glasnevin, Dublin, Ireland','Ingrid Bergman','+353 64646464'),(117,'J',2,'first','2019-03-22','MIT, Massachusetts, USA','Greta Garbo','+1 59595959'),(201,'A',9,'second','2019-04-03','900, Belo Horizonte, Brazil','James Stewart','+55 65656565'),(202,'E',5,'second','2019-04-12','Cambridge University, Cambridge, UK','Cary Grant','+1 73737373'),(203,'H',3,'second','2019-04-03','CALTECH, Pasadena, USA','Audrey Hepburn','+1 85858585'),(204,'F',4,'second','2019-04-12','Glasnevin, Dublin, Ireland','Katharine Hepburn','+353 64646464'),(301,'E',5,'third','2019-04-14','Cambridge University, Cambridge, UK','Cary Grant','+1 73737373');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_description`
--

DROP TABLE IF EXISTS `jobs_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs_description` (
  `job_id` varchar(10) NOT NULL,
  `type_of_job` varchar(20) DEFAULT NULL,
  `uni_id` int(10) NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `uniid_idx` (`uni_id`),
  CONSTRAINT `uniid` FOREIGN KEY (`uni_id`) REFERENCES `universities_details` (`uni_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_description`
--

LOCK TABLES `jobs_description` WRITE;
/*!40000 ALTER TABLE `jobs_description` DISABLE KEYS */;
INSERT INTO `jobs_description` VALUES ('A','Administrative',100),('B','Teaching',80),('C','Research',100),('D','Teaching',70),('E','Research',30),('F','Web App Developer',30),('G','Administrative',30),('H','Research',10),('I','Software Engineer',20),('J','Software Engineer',40);
/*!40000 ALTER TABLE `jobs_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_skills`
--

DROP TABLE IF EXISTS `jobs_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs_skills` (
  `job_id` varchar(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  PRIMARY KEY (`job_id`,`skill_id`),
  KEY `skillid_idx` (`skill_id`),
  CONSTRAINT `idjob` FOREIGN KEY (`job_id`) REFERENCES `jobs_description` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skillid` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_skills`
--

LOCK TABLES `jobs_skills` WRITE;
/*!40000 ALTER TABLE `jobs_skills` DISABLE KEYS */;
INSERT INTO `jobs_skills` VALUES ('B',11),('C',11),('D',11),('C',12),('A',13),('G',13),('F',14),('C',15),('E',15),('H',15),('B',16),('D',17),('J',17),('I',18),('J',18),('H',19),('I',19),('F',21),('A',22),('B',22),('I',22);
/*!40000 ALTER TABLE `jobs_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `job_id` varchar(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `created` date DEFAULT NULL,
  `stage` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`job_id`,`applicant_id`),
  KEY `applicid_idx` (`applicant_id`),
  CONSTRAINT `applicid` FOREIGN KEY (`applicant_id`) REFERENCES `applicants_details` (`applicant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobid` FOREIGN KEY (`job_id`) REFERENCES `jobs_description` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES ('A',9,'2019-05-03','offered'),('A',10,'2019-05-18','accepted'),('B',6,'2019-06-10','accepted'),('B',8,'2019-06-14','accepted'),('C',7,'2019-06-15','accepted'),('D',6,'2019-05-03','not offered'),('E',5,'2019-06-14','offered'),('F',4,'2019-06-10','not offered'),('G',9,'2019-05-18','declined'),('G',10,'2019-05-03','declined'),('H',3,'2019-06-14','accepted'),('H',7,'2019-06-15','offered'),('I',2,'2019-05-18','accepted'),('J',1,'2019-06-10','accepted'),('J',2,'2019-05-03','offered');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int(10) NOT NULL,
  `skill` varchar(20) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (11,'teaching skills'),(12,'research experience'),(13,'SQL'),(14,'JavaScript'),(15,'PhD'),(16,'Masters Degree'),(17,'Honors Degree'),(18,'Python'),(19,'Java'),(21,'PHP'),(22,'People Skills');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities_details`
--

DROP TABLE IF EXISTS `universities_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universities_details` (
  `uni_id` int(10) NOT NULL,
  `uni_name` varchar(20) DEFAULT NULL,
  `uni_address` varchar(50) DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`uni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities_details`
--

LOCK TABLES `universities_details` WRITE;
/*!40000 ALTER TABLE `universities_details` DISABLE KEYS */;
INSERT INTO `universities_details` VALUES (10,'UFMG','900, Belo Horizonte, Brazil','+55 65656565'),(20,'USP','550, Sao Paulo, Brazil','+55 87878787'),(30,'UCD','Belfield, Dublin 4, Ireland','+353 34343434'),(40,'DCU','Glasnevin, Dublin, Ireland','+353 64646464'),(50,'PUC','500, Belo Horizonte, Brazil','+353 23232323'),(60,'TCD','College Green, Dublin 2, Ireland','+353 47474747'),(70,'OX','Oxford, UK','+41 39393939'),(80,'CALTECH','Pasadena, USA','+1 85858585'),(90,'CAM','Cambridge, UK','+1 73737373'),(100,'MIT','Massachusetts, USA','+1 59595959');
/*!40000 ALTER TABLE `universities_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mcgarry19205519'
--

--
-- Dumping routines for database 'mcgarry19205519'
--
/*!50003 DROP PROCEDURE IF EXISTS `01_uni_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `01_uni_name`(IN uni_name_in VARCHAR(20))
BEGIN
Select *
from universities_details
where uni_name = uni_name_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `02_uni_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `02_uni_id`(IN uni_id_in INT)
BEGIN
Select *
from universities_details
where uni_id  = uni_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `03_applicant_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `03_applicant_surname`(IN surname_in VARCHAR(20))
BEGIN
Select *
from applicants_details
where surname  = surname_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `04_applicant_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `04_applicant_id`(IN applicant_id_in INT)
BEGIN
Select *
from applicants_details
where applicant_id = applicant_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `05_applicants_skill_for_job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `05_applicants_skill_for_job`(IN job_id_in VARCHAR(10))
BEGIN
select 
distinct ad.*
from jobs_description jd
inner join jobs_skills js on jd.job_id = js.job_id
inner join applicants_skills aps on aps.skill_id = js.skill_id
inner join applicants_details ad on aps.applicant_id = ad.applicant_id
where
jd.job_id  = job_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `06_job_description_given_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `06_job_description_given_skill`(IN skill_in VARCHAR(20))
BEGIN
select jd.*
from jobs_description jd, skills s, jobs_skills sj
where sj.job_id = jd.job_id and s.skill_id = sj.skill_id and s.skill = skill_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `07_uni_offering_job_description` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `07_uni_offering_job_description`()
BEGIN
select jd.*, ud.*
from jobs_description jd
inner join universities_details ud on jd.uni_id = ud.uni_id
order by ud.uni_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `08_number_of_offered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `08_number_of_offered`()
BEGIN
select count(*)
from offers
where stage = "offered" or stage = "accepted";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `09_job_with_skill_research` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `09_job_with_skill_research`()
BEGIN
select count(*)
from jobs_description jd, skills s, jobs_skills sj
where jd.job_id = sj.job_id and s.skill_id = sj.skill_id and s.skill = "research experience";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `10_inteviews_on_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `10_inteviews_on_date`(IN interviewDATE DATE)
BEGIN
select *
from interviews
where interview_date = interviewDATE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11_name_and_id_interviwed_twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `11_name_and_id_interviwed_twice`()
BEGIN
select surname, ad.applicant_id, count(inter.applicant_id)
from applicants_details ad, interviews inter
where ad.applicant_id = inter.applicant_id
group by surname, ad.applicant_id
having count(inter.applicant_id) > 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_applicants_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_applicants_details`(IN applicant_id_in INT, first_name_in VARCHAR(20), 
surname_in VARCHAR(20), address_in VARCHAR(50), phone_in VARCHAR(25))
BEGIN

	INSERT INTO applicants_details (applicant_id, first_name, surname, address, phone)
	VALUES (applicant_id_in, first_name_in, surname_in, address_in, phone_in);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_applicants_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_applicants_skills`(IN applicant_id_in INT, skill_id_in INT)
BEGIN
	INSERT INTO applicants_skills (applicant_id, skill_id)
	VALUES (applicant_id_in, skill_id_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_interviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_interviews`(IN interview_number_in INT,job_id_in VARCHAR(10), 
applicant_id_in INT, stage_in VARCHAR(15), interview_date_in DATE, address_in VARCHAR(50), contact_name_in VARCHAR(20), 
contact_number_in VARCHAR(20))
BEGIN

	INSERT INTO interviews (interview_number, job_id, applicant_id, stage, interview_date, address, contact_name, contact_number)
	VALUES (interview_number_in, job_id_in, applicant_id_in, stage_in, interview_date_in, address_in, contact_name_in, contact_number_in);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_jobs_description` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_jobs_description`(IN job_id_in VARCHAR(10), 
type_of_job_in VARCHAR(20), uni_id_in INT(10))
BEGIN
	INSERT INTO jobs_description (job_id, type_of_job, uni_id)
	VALUES (job_id_in, type_of_job_in, uni_id_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_jobs_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_jobs_skills`(IN job_id_in VARCHAR(10), skill_id_in INT)
BEGIN
	INSERT INTO jobs_skills (job_id, skill_id)
	VALUES (job_id_in, skill_id_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_offers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_offers`(IN job_id_in VARCHAR(10), applicant_id_in INT, 
created_in DATE, stage_in VARCHAR(15))
BEGIN
	INSERT INTO offers (job_id, applicant_id, created, stage)
	VALUES (job_id_in, applicant_id_in, created_in, stage_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_skills`(IN skill_id_in INT, skill_in VARCHAR(20))
BEGIN
	INSERT INTO skills (skill_id, skill)
	VALUES (skill_id_in, skill_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_universities_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `table_universities_details`(IN uni_id_in INT, uni_name_in VARCHAR(20), 
uni_address_in VARCHAR(50), contact_in VARCHAR(25))
BEGIN
	INSERT INTO universities_details (uni_id, uni_name, uni_address, contact)
	VALUES (uni_id_in, uni_name_in, uni_address_in, contact_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19 11:08:44
