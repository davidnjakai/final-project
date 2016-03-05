-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: lecrooms
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB-log

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrators` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (203,'HChris','passwordH'),(204,'MKamau','passwordM');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('BBIT1A','BBIT 1st yr'),('BBIT1B','BBIT 1st yr'),('BBIT2A','BBIT 2nd yr'),('BBIT2B','BBIT 2nd yr'),('BBIT3A','BBIT 3rd yr'),('BBIT3B','BBIT 3rd yr'),('BBIT4A','BBIT 4th yr'),('BBIT4B','BBIT 4th yr'),('BCOM1','BCOM 1st yr'),('BCOM2','BCOM 2nd yr'),('BCOM3','BCOM 3rd yr'),('BCOM4','BCOM 4th yr'),('BIF1','BIF 1st yr'),('BIF2','BIF 2nd yr'),('BIF3','BIF 3rd yr'),('BIF4','BIF 4th yr'),('BTC1','BTC 1st yr'),('BTC2','BTC 2nd yr'),('BTC3','BTC 3rd yr'),('BTC4','BTC 4th yr');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturers`
--

DROP TABLE IF EXISTS `lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecturers` (
  `staff_no` int(11) NOT NULL,
  `staff_name` varchar(45) NOT NULL,
  `staff_email` varchar(45) NOT NULL,
  `staff_phone` int(11) DEFAULT NULL,
  `staff_password` varchar(45) NOT NULL,
  PRIMARY KEY (`staff_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturers`
--

LOCK TABLES `lecturers` WRITE;
/*!40000 ALTER TABLE `lecturers` DISABLE KEYS */;
INSERT INTO `lecturers` VALUES (1232,'PMicheni','pmicheni@strathmore.edu',733929394,'passwordP'),(1234,'SEvalia','sevalia@strathmore.edu',707986782,'passwordS'),(1236,'JMaiyeka','jmaiyeka@strathmore.edu',721638489,'passwordJ'),(2334,'COuma','couma@strathmore.edu',725808489,'passwordC'),(2345,'NMaingi','nmaingi@strathmore.edu',721938489,'passwordN'),(2365,'JWanga','jwanga@strathmore.edu',722345678,'passwordJ'),(5425,'JWachudi','jwachudi@strathmore.edu',703896782,'passwordJ'),(5432,'VOmwenga','vomwenga@strathmore.edu',707986789,'passwordV'),(5439,'FMogesa','fmogesa@strathmore.edu',763286782,'passwordF'),(5490,'PMagati','pmagati@strathmore.edu',707576782,'passwordP'),(5638,'MMurithi','mmurithi@strathmore.edu',727986782,'passwordM'),(5680,'PNgaru','pngaru@strathmore.edu',707986743,'passwordP'),(5832,'JMuteti','jmuteti@strathmore.edu',721934489,'passwordJ'),(6432,'MOketch','moketch@strathmore.edu',704838934,'passwordM'),(6534,'RKingori','rkingori@strathmore.edu',722238281,'passwordR'),(6538,'BNjeru','bnjeru@strathmore.edu',721638432,'passwordB'),(7543,'BSowon','bsowon@strathmore.edu',721638322,'passwordB');
/*!40000 ALTER TABLE `lecturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_id` varchar(45) NOT NULL,
  `room_capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('LT1',50),('LT2',50),('LT3',50),('LT4',50),('LT5',50),('MSB1',30),('MSB2',30),('MSB3',30),('MSB4',30),('MSB5',30),('RM1',50),('RM2',50),('RM3',50),('RM4',50),('RM5',50);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `sch_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `room_id` varchar(45) NOT NULL,
  `unit_id` varchar(45) NOT NULL,
  `course_id` varchar(45) NOT NULL,
  `reserved` tinyint(1) NOT NULL,
  `confimed` tinyint(1) NOT NULL,
  `staff_no` int(11) NOT NULL,
  PRIMARY KEY (`sch_id`),
  KEY `sch_uni_idx` (`unit_id`),
  KEY `sch_cou_idx` (`course_id`),
  KEY `sch_roo_idx` (`room_id`),
  KEY `sch_sta_idx` (`staff_no`),
  CONSTRAINT `sch_cou` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sch_roo` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sch_sta` FOREIGN KEY (`staff_no`) REFERENCES `lecturers` (`staff_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sch_uni` FOREIGN KEY (`unit_id`) REFERENCES `units` (`unit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'2016-02-01 08:00:00','2016-02-01 10:00:00','LT1','BBT1101','BBIT1A',0,0,1234),(2,'2016-02-01 11:00:00','2016-02-01 12:00:00','LT2','HED1102','BBIT1A',0,0,6538),(3,'2016-02-01 13:00:00','2016-02-01 14:00:00','LT3','BCM1201','BBIT1A',0,0,5680),(4,'2016-02-02 08:00:00','2016-02-02 09:00:00','LT1','BCM1102','BBIT1A',0,0,5490),(5,'2016-02-02 10:00:00','2016-02-02 12:00:00','LT4','BCM1201','BBIT1A',0,0,5680),(6,'2016-02-02 14:00:00','2016-02-02 15:00:00','LT3','MAT1301','BBIT1A',0,0,2334),(7,'2016-02-03 12:00:00','2016-02-03 14:00:00','LT3','HED1102','BBIT1A',0,0,6538),(8,'2016-02-03 15:00:00','2016-02-03 17:00:00','LT5','MAT1301','BBIT1A',0,0,2334),(9,'2016-02-04 08:00:00','2016-02-04 09:00:00','LT5','BCM1101','BBIT1A',0,0,5425),(10,'2016-02-04 10:00:00','2016-02-04 13:00:00','LT1','BBT1102','BBIT1A',0,0,1236),(11,'2016-02-04 14:00:00','2016-02-04 15:00:00','LT2','BBT1101','BBIT1A',0,0,1234),(12,'2016-02-05 08:00:00','2016-02-05 10:00:00','LT2','BCM1101','BBIT1A',0,0,5425),(13,'2016-02-05 10:00:00','2016-02-05 12:00:00','LT1','BCM1102','BBIT1A',0,0,5490),(14,'2016-02-01 08:00:00','2016-02-01 11:00:00','LT2','HED1202','BBIT1B',0,0,5638),(15,'2016-02-01 12:00:00','2016-02-01 13:00:00','LT1','HED1101','BBIT1B',0,0,1232),(16,'2016-02-01 14:00:00','2016-02-01 16:00:00','LT3','BCM2103','BBIT1B',0,0,5832),(17,'2016-02-02 08:00:00','2016-02-02 10:00:00','LT4','MAT1402','BBIT1B',0,0,2334),(18,'2016-02-02 13:00:00','2016-02-02 15:00:00','LT5','BBT1201','BBIT1B',0,0,5432),(19,'2016-02-03 08:00:00','2016-02-03 10:00:00','LT1','HED1101','BBIT1B',0,0,1232),(20,'2016-02-03 10:00:00','2016-02-03 12:00:00','LT1','BCM2201','BBIT1B',0,0,5439),(21,'2016-02-03 14:00:00','2016-02-03 15:00:00','LT5','MAT1402','BBIT1B',0,0,2334),(22,'2016-02-04 14:00:00','2016-02-04 15:00:00','LT1','BCM2201','BBIT1B',0,0,5439),(23,'2016-02-04 15:00:00','2016-02-04 16:00:00','LT3','HED2103','BBIT1B',0,0,6432),(24,'2016-02-04 16:00:00','2016-02-04 17:00:00','LT3','BCM2103','BBIT1B',0,0,5832),(25,'2016-02-05 09:00:00','2016-02-05 11:00:00','LT4','HED2103','BBIT1B',0,0,6432),(26,'2016-02-05 11:00:00','2016-02-05 12:00:00','LT5','BBT1201','BBIT1B',0,0,5432);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `stud_id` int(11) NOT NULL,
  `stud_surname` varchar(45) NOT NULL,
  `stud_onames` varchar(45) NOT NULL,
  `stud_course` varchar(45) NOT NULL,
  `stud_dob` date NOT NULL,
  `stud_email` varchar(45) DEFAULT NULL,
  `stud_phone` int(11) DEFAULT NULL,
  `stud_password` varchar(45) NOT NULL,
  PRIMARY KEY (`stud_id`),
  KEY `stu_cou_idx` (`stud_course`),
  CONSTRAINT `stu_cou` FOREIGN KEY (`stud_course`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (70922,'Chhabhadia','Anil Harji','BBIT4B','1992-01-20','anil@gmail.com',708432890,'passwordC'),(71392,'Njakai','David Seroney','BBIT4B','1992-12-29','dvdseroney@gmail.com',790505019,'passwordN'),(71841,'Omuchillo','Maxwell Miya','BBIT4B','1992-01-02','maxwell@gmail.com',707890789,'passwordO');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `unit_id` varchar(45) NOT NULL,
  `unit_name` varchar(45) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES ('BBT1101','Computer Fundamentals '),('BBT1102','Introduction to Programming'),('BBT1201','Data Structures and Algorithms'),('BBT2101','Systems Analysis and Design'),('BBT2103','Database Systems'),('BBT2201','Computer Organization and Architecture'),('BBT2204','Information Systems Project 1'),('BBT3101','Networking 1'),('BCM1101','Fundamentals of Accounting'),('BCM1102','Fundamentals of Economics'),('BCM1201','Principles of Management'),('BCM2103','Business Finance'),('BCM2201','Cost Accounting'),('HED1101','Introduction to Critical Thinking'),('HED1102','Communication Skills 1'),('HED1202','Communication Skills 2'),('HED2103','Development Studies'),('MAT1301','Discrete Mathematics'),('MAT1402','Mathematics 1'),('MAT2301','Mathematics 2');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-29  4:43:07
