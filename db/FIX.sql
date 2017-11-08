-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cfs
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

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
-- Table structure for table `Jahr`
--

DROP TABLE IF EXISTS `Jahr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jahr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Jahr` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Jahr`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jahr`
--

LOCK TABLES `Jahr` WRITE;
/*!40000 ALTER TABLE `Jahr` DISABLE KEYS */;
INSERT INTO `Jahr` VALUES (1,2001),(2,2002),(3,2003),(4,2004),(5,2005),(6,2006),(7,2007),(8,2008),(9,2009),(10,2010),(11,2011),(12,2012),(13,2013),(14,2014),(15,2015),(16,2016),(17,2017),(18,2018),(19,2019),(20,2020),(21,2021),(22,2022);
/*!40000 ALTER TABLE `Jahr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KW`
--

DROP TABLE IF EXISTS `KW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KW` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KW` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KW`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KW`
--

LOCK TABLES `KW` WRITE;
/*!40000 ALTER TABLE `KW` DISABLE KEYS */;
INSERT INTO `KW` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53);
/*!40000 ALTER TABLE `KW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tag` varchar(10) DEFAULT NULL,
  `SC` enum('Mo','Di','Mi','Do','Fr','Sa','So') NOT NULL DEFAULT 'Mo',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Tag`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (1,'Montag','Mo'),(2,'Dienstag','Di'),(3,'Mittwoch','Mi'),(4,'Donnerstag','Do'),(5,'Freitag','Fr'),(6,'Samstag','Sa'),(7,'Sonntag','So');
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VS`
--

DROP TABLE IF EXISTS `VS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Quart` time DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Quart`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VS`
--

LOCK TABLES `VS` WRITE;
/*!40000 ALTER TABLE `VS` DISABLE KEYS */;
INSERT INTO `VS` VALUES (1,'00:00:00'),(2,'00:15:00'),(3,'00:30:00'),(4,'00:45:00'),(5,'01:00:00'),(6,'01:15:00'),(7,'01:30:00'),(8,'01:45:00'),(9,'02:00:00'),(10,'02:15:00'),(11,'02:30:00'),(12,'02:45:00'),(13,'03:00:00'),(14,'03:15:00'),(15,'03:30:00'),(16,'03:45:00'),(17,'04:00:00'),(18,'04:15:00'),(19,'04:30:00'),(20,'04:45:00'),(21,'05:00:00'),(22,'05:15:00'),(23,'05:30:00'),(24,'05:45:00'),(25,'06:00:00'),(26,'06:15:00'),(27,'06:30:00'),(28,'06:45:00'),(29,'07:00:00'),(30,'07:15:00'),(31,'07:30:00'),(32,'07:45:00'),(33,'08:00:00'),(34,'08:15:00'),(35,'08:30:00'),(36,'08:45:00'),(37,'09:00:00'),(38,'09:15:00'),(39,'09:30:00'),(40,'09:45:00'),(41,'10:00:00'),(42,'10:15:00'),(43,'10:30:00'),(44,'10:45:00'),(45,'11:00:00'),(46,'11:15:00'),(47,'11:30:00'),(48,'11:45:00'),(49,'12:00:00'),(50,'12:15:00'),(51,'12:30:00'),(52,'12:45:00'),(53,'13:00:00'),(54,'13:15:00'),(55,'13:30:00'),(56,'13:45:00'),(57,'14:00:00'),(58,'14:15:00'),(59,'14:30:00'),(60,'14:45:00'),(61,'15:00:00'),(62,'15:15:00'),(63,'15:30:00'),(64,'15:45:00'),(65,'16:00:00'),(66,'16:15:00'),(67,'16:30:00'),(68,'16:45:00'),(69,'17:00:00'),(70,'17:15:00'),(71,'17:30:00'),(72,'17:45:00'),(73,'18:00:00'),(74,'18:15:00'),(75,'18:30:00'),(76,'18:45:00'),(77,'19:00:00'),(78,'19:15:00'),(79,'19:30:00'),(80,'19:45:00'),(81,'20:00:00'),(82,'20:15:00'),(83,'20:30:00'),(84,'20:45:00'),(85,'21:00:00'),(86,'21:15:00'),(87,'21:30:00'),(88,'21:45:00'),(89,'22:00:00'),(90,'22:15:00'),(91,'22:30:00'),(92,'22:45:00'),(93,'23:00:00'),(94,'23:15:00'),(95,'23:30:00'),(96,'23:45:00');
/*!40000 ALTER TABLE `VS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-08 13:53:21
