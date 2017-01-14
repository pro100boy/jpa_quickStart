CREATE DATABASE  IF NOT EXISTS `javastudy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `javastudy`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: javastudy
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_CONTACT_1` (`first_name`,`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'Name0','LastName0','2015-07-08',0),(8,'Name1 ','LastName1','2014-09-01',0),(10,'Name2','LastName2','2014-05-01',0),(11,'Name3','LastName3','2016-09-02',0),(12,'Name4','LastName4','2015-11-01',0),(13,'Name5','LastName5','2012-09-07',0),(29,'NameInsert','LastNameInsert','2015-10-08',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_hobby_detail`
--

DROP TABLE IF EXISTS `contact_hobby_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_hobby_detail` (
  `contact_id` int(11) NOT NULL,
  `hobby_id` varchar(20) NOT NULL,
  PRIMARY KEY (`contact_id`,`hobby_id`),
  KEY `FK_CONTACT_HOBBY_DETAIL_2` (`hobby_id`),
  CONSTRAINT `FK_CONTACT_HOBBY_DETAIL_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CONTACT_HOBBY_DETAIL_2` FOREIGN KEY (`hobby_id`) REFERENCES `hobby` (`hobby_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_hobby_detail`
--

LOCK TABLES `contact_hobby_detail` WRITE;
/*!40000 ALTER TABLE `contact_hobby_detail` DISABLE KEYS */;
INSERT INTO `contact_hobby_detail` VALUES (8,'Football'),(13,'Football'),(11,'Movies'),(8,'Swimming');
/*!40000 ALTER TABLE `contact_hobby_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_tel_detail`
--

DROP TABLE IF EXISTS `contact_tel_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_tel_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `tel_type` varchar(20) NOT NULL,
  `tel_number` varchar(20) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_contact_tel_detail_1` (`contact_id`,`tel_type`),
  CONSTRAINT `FK_CONTACT_TEL_DETAIL_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_tel_detail`
--

LOCK TABLES `contact_tel_detail` WRITE;
/*!40000 ALTER TABLE `contact_tel_detail` DISABLE KEYS */;
INSERT INTO `contact_tel_detail` VALUES (1,3,'Домашний','8-800-200-600',0),(3,3,'Рабочий','555-44-33',0),(4,8,'Домашний','0880',0),(26,29,'Home','1111111111',0),(27,29,'Городской','8-499-000-333',0),(28,29,'Mobile','2222222222',0);
/*!40000 ALTER TABLE `contact_tel_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hobby` (
  `hobby_id` varchar(20) NOT NULL,
  PRIMARY KEY (`hobby_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES ('Football'),('Movies'),('Swimming');
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-10 22:20:57
