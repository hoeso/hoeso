-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cfs
-- ------------------------------------------------------
-- Server version	5.6.28-1

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
-- Table structure for table `Beziehung`
--

DROP TABLE IF EXISTS `Beziehung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beziehung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Beziehung` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Beziehung`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beziehung`
--

LOCK TABLES `Beziehung` WRITE;
/*!40000 ALTER TABLE `Beziehung` DISABLE KEYS */;
INSERT INTO `Beziehung` VALUES (1,'Vater'),(2,'Mutter'),(3,'Tochter'),(4,'Sohn'),(5,'Neffe'),(6,'Nichte'),(7,'Tante'),(8,'Onkel'),(9,'Client'),(10,'Enkel'),(11,'Enkelin');
/*!40000 ALTER TABLE `Beziehung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `geborenAm` date DEFAULT '1901-01-01',
  `Geschlecht` enum('weiblich','maennlich') NOT NULL DEFAULT 'weiblich',
  `Name` varchar(80) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'1901-01-01','weiblich','Meisel','Inge'),(2,'1902-01-02','maennlich','Millowitsch','Willy');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientAdresse`
--

DROP TABLE IF EXISTS `ClientAdresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientAdresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL DEFAULT '1',
  `ZeitstempelID` int(11) NOT NULL DEFAULT '0',
  `Strasse` varchar(120) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  `Telefon` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientAdresse`
--

LOCK TABLES `ClientAdresse` WRITE;
/*!40000 ALTER TABLE `ClientAdresse` DISABLE KEYS */;
INSERT INTO `ClientAdresse` VALUES (1,1,1,'KurfÃ¼rstendamm 19-24','10719','Berlin','030-1'),(2,2,1,'BahnhofstraÃŸe 1','51143','KÃ¶ln','069/870021176');
/*!40000 ALTER TABLE `ClientAdresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientBeziehung`
--

DROP TABLE IF EXISTS `ClientBeziehung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientBeziehung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Beziehung` varchar(255) DEFAULT 'Kind',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientBeziehung`
--

LOCK TABLES `ClientBeziehung` WRITE;
/*!40000 ALTER TABLE `ClientBeziehung` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientBeziehung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientVS`
--

DROP TABLE IF EXISTS `ClientVS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientVS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL DEFAULT '1',
  `TagID` int(11) NOT NULL DEFAULT '0',
  `VSID` int(11) NOT NULL DEFAULT '1',
  `Menge` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`ClientID`,`TagID`,`VSID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientVS`
--

LOCK TABLES `ClientVS` WRITE;
/*!40000 ALTER TABLE `ClientVS` DISABLE KEYS */;
INSERT INTO `ClientVS` VALUES (1,2,1,49,'18'),(3,1,1,1,'4');
/*!40000 ALTER TABLE `ClientVS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  `Telefon` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Faber','Christine','089/1'),(2,'Johann','HÃ¶rmann','089/338794');
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PersonClient`
--

DROP TABLE IF EXISTS `PersonClient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersonClient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) NOT NULL DEFAULT '1',
  `BeziehungID` int(11) NOT NULL DEFAULT '1',
  `RechtID` int(11) NOT NULL DEFAULT '0',
  `ClientID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`PersonID`,`RechtID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PersonClient`
--

LOCK TABLES `PersonClient` WRITE;
/*!40000 ALTER TABLE `PersonClient` DISABLE KEYS */;
INSERT INTO `PersonClient` VALUES (3,2,10,1,1),(4,1,3,3,1);
/*!40000 ALTER TABLE `PersonClient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recht`
--

DROP TABLE IF EXISTS `Recht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recht` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Recht` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Recht`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recht`
--

LOCK TABLES `Recht` WRITE;
/*!40000 ALTER TABLE `Recht` DISABLE KEYS */;
INSERT INTO `Recht` VALUES (1,'nicht bevollmÃ¤chtigt'),(2,'informationsberechtigt'),(3,'Entbindung Schweigepflicht'),(4,'');
/*!40000 ALTER TABLE `Recht` ENABLE KEYS */;
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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Tag`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (1,'Montag'),(2,'Dienstag'),(3,'Mittwoch'),(4,'Donnerstag'),(5,'Freitag'),(6,'Samstag'),(7,'Sonntag');
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

--
-- Table structure for table `Zeitstempel`
--

DROP TABLE IF EXISTS `Zeitstempel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zeitstempel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Zeitstempel` (`Datum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zeitstempel`
--

LOCK TABLES `Zeitstempel` WRITE;
/*!40000 ALTER TABLE `Zeitstempel` DISABLE KEYS */;
INSERT INTO `Zeitstempel` VALUES (1,'2016-01-01');
/*!40000 ALTER TABLE `Zeitstempel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-12 22:04:13
