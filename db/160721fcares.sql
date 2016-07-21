-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cfs
-- ------------------------------------------------------
-- Server version	5.5.50-0+deb8u1

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (9,'1919-11-07','weiblich','Siebauer','Amalie'),(10,'1940-12-27','weiblich','Bauer','Erika'),(11,'1926-11-14','weiblich','Beckenbauer ','Irmgard'),(12,'1937-07-31','maennlich','Colbus','Reiner'),(13,'1934-08-30','weiblich','Colbus','Ilsemaria'),(14,'1936-05-28','weiblich','Distler ','Andreas'),(15,'1930-04-20','weiblich','Dolatschek','Inge'),(16,'1925-03-11','weiblich','Dolatschek','Ewald'),(17,'1944-01-08','weiblich','Geischberger','Inge'),(18,'1925-07-30','weiblich','Huber','Ingeborg'),(19,'1932-01-20','weiblich','Ihde','Irmgard'),(20,'1961-04-07','maennlich','Karl','Thomas'),(21,'1935-06-26','weiblich','Mauerer','Christine'),(22,'1935-08-13','maennlich','Mauerer','Walter'),(23,'1930-10-17','weiblich','Minderlein','Berta'),(24,'1932-11-09','weiblich','Mitschke','Erna'),(25,'1928-08-09','maennlich','Roth','Alex'),(26,'1934-10-20','weiblich','Roth','Hildegard'),(27,'1934-05-27','weiblich','SchÃ¶bel','Herta'),(28,'1937-07-30','weiblich','Singer','Elisabeth');
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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`ClientID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientAdresse`
--

LOCK TABLES `ClientAdresse` WRITE;
/*!40000 ALTER TABLE `ClientAdresse` DISABLE KEYS */;
INSERT INTO `ClientAdresse` VALUES (11,1,0,'MilbertshofenerStr.39','80807','MÃ¼nchen','0893543662');
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
  `JahrID` int(11) NOT NULL DEFAULT '16',
  `KWID` int(11) NOT NULL DEFAULT '18',
  `TagID` int(11) NOT NULL DEFAULT '0',
  `VSID` int(11) NOT NULL DEFAULT '1',
  `Menge` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`ClientID`,`JahrID`,`KWID`,`TagID`,`VSID`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientVS`
--

LOCK TABLES `ClientVS` WRITE;
/*!40000 ALTER TABLE `ClientVS` DISABLE KEYS */;
INSERT INTO `ClientVS` VALUES (22,9,16,22,1,31,'8'),(23,9,16,22,1,81,'4'),(24,9,16,22,2,31,'8'),(25,9,16,22,2,81,'4'),(26,9,16,22,3,31,'8'),(27,9,16,22,3,81,'4'),(28,9,16,22,4,31,'8'),(29,9,16,22,4,81,'4'),(30,9,16,22,5,31,'8'),(31,9,16,22,5,81,'4'),(32,9,16,22,6,31,'8'),(33,9,16,22,6,81,'4'),(34,9,16,22,7,31,'8'),(35,9,16,22,7,81,'4'),(42,11,16,22,1,37,'16'),(43,11,16,23,1,37,'16'),(44,11,16,22,1,69,'8'),(45,11,16,22,2,37,'16'),(46,11,16,22,2,69,'8'),(47,11,16,22,5,37,'16'),(48,11,16,22,6,37,'16'),(49,11,16,22,6,69,'8'),(50,11,16,25,1,37,'16'),(51,11,16,25,1,69,'8'),(52,11,16,25,2,37,'16'),(53,11,16,25,2,69,'8'),(54,11,16,25,3,37,'16'),(56,11,16,23,2,37,'16'),(57,17,16,24,2,57,'12');
/*!40000 ALTER TABLE `ClientVS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Engagement`
--

DROP TABLE IF EXISTS `Engagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Engagement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Engagement` enum('0%','1%','2%','3%','4%','5%','6%','7%','8%','9%','10%','11%','12%','13%','14%','15%','16%','17%','18%','19%','20%','21%','22%','23%','24%','25%','26%','27%','28%','29%','30%','31%','32%','33%','34%','35%','36%','37%','38%','39%','40%','41%','42%','43%','44%','45%','46%','47%','48%','49%','50%','51%','52%','53%','54%','55%','56%','57%','58%','59%','60%','61%','62%','63%','64%','65%','66%','67%','68%','69%','70%','71%','72%','73%','74%','75%','76%','77%','78%','79%','80%','81%','82%','83%','84%','85%','86%','87%','88%','89%','90%','91%','92%','93%','94%','95%','96%','97%','98%','99%','100%') NOT NULL DEFAULT '20%',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Engagement`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Engagement`
--

LOCK TABLES `Engagement` WRITE;
/*!40000 ALTER TABLE `Engagement` DISABLE KEYS */;
INSERT INTO `Engagement` VALUES (1,'20%'),(2,'60%'),(3,'0%'),(4,'80%');
/*!40000 ALTER TABLE `Engagement` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `Kontingent`
--

DROP TABLE IF EXISTS `Kontingent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kontingent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT '1',
  `ZeitstempelID` int(11) NOT NULL DEFAULT '0',
  `Wochenstunden` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kontingent`
--

LOCK TABLES `Kontingent` WRITE;
/*!40000 ALTER TABLE `Kontingent` DISABLE KEYS */;
INSERT INTO `Kontingent` VALUES (8,11,1,'28'),(9,10,1,'30'),(10,12,1,'21'),(11,13,1,'20'),(12,14,1,'12'),(13,15,1,'4'),(14,16,1,'18'),(15,17,1,'14'),(16,18,1,''),(17,19,1,'');
/*!40000 ALTER TABLE `Kontingent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MA`
--

DROP TABLE IF EXISTS `MA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  `Geschlecht` enum('weiblich','maennlich') NOT NULL DEFAULT 'weiblich',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MA`
--

LOCK TABLES `MA` WRITE;
/*!40000 ALTER TABLE `MA` DISABLE KEYS */;
INSERT INTO `MA` VALUES (10,'Faber','Christina','weiblich'),(12,'Paukner','Stefanie','weiblich'),(13,'Canton','Daniela','weiblich'),(14,'Hofen','Matthias','maennlich'),(15,'Scubert','Beate','weiblich'),(16,'GrÃ¼nwald','Wanda','weiblich'),(17,'FÃ¼ting ','Ilsemarie','weiblich'),(18,'Syreda','Ewa','weiblich'),(19,'Franke','Tatiana','weiblich'),(20,'Heydari','Shirin','weiblich');
/*!40000 ALTER TABLE `MA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAAbwesenheit`
--

DROP TABLE IF EXISTS `MAAbwesenheit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAAbwesenheit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT '1',
  `Beginn` date DEFAULT NULL,
  `Ende` date DEFAULT NULL,
  `Grund` enum('Urlaub','krank') NOT NULL DEFAULT 'Urlaub',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAAbwesenheit`
--

LOCK TABLES `MAAbwesenheit` WRITE;
/*!40000 ALTER TABLE `MAAbwesenheit` DISABLE KEYS */;
/*!40000 ALTER TABLE `MAAbwesenheit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAAdresse`
--

DROP TABLE IF EXISTS `MAAdresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAAdresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT '1',
  `ZeitstempelID` int(11) NOT NULL DEFAULT '0',
  `Strasse` varchar(120) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  `Telefon` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAAdresse`
--

LOCK TABLES `MAAdresse` WRITE;
/*!40000 ALTER TABLE `MAAdresse` DISABLE KEYS */;
INSERT INTO `MAAdresse` VALUES (2,10,1,'Kaiser-Ludwig-Platz 6','80336','MÃ¼nchen','01792445099'),(3,11,1,'Germaniastr.33','80805','MÃ¼nchen','01628093306');
/*!40000 ALTER TABLE `MAAdresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAClient`
--

DROP TABLE IF EXISTS `MAClient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAClient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT '1',
  `ClientID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`ClientID`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAClient`
--

LOCK TABLES `MAClient` WRITE;
/*!40000 ALTER TABLE `MAClient` DISABLE KEYS */;
INSERT INTO `MAClient` VALUES (18,10,9),(20,16,9),(21,20,9),(22,15,10),(23,10,14),(24,13,14),(25,12,15),(30,13,11),(27,12,16),(28,10,16),(29,10,15),(31,12,11),(32,14,11),(33,16,11),(34,17,11),(35,12,17),(36,19,17),(37,10,18),(39,12,18),(40,13,18),(41,10,19),(42,13,21),(43,13,22),(44,10,21),(45,10,23),(46,17,9),(47,18,23),(48,10,25),(49,12,27),(50,10,28);
/*!40000 ALTER TABLE `MAClient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAClientVS`
--

DROP TABLE IF EXISTS `MAClientVS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAClientVS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAClientID` int(11) NOT NULL DEFAULT '1',
  `ClientVSID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAClientID`,`ClientVSID`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAClientVS`
--

LOCK TABLES `MAClientVS` WRITE;
/*!40000 ALTER TABLE `MAClientVS` DISABLE KEYS */;
INSERT INTO `MAClientVS` VALUES (37,30,42),(38,30,43),(39,30,44),(40,30,45),(41,30,46),(42,32,47),(43,32,48),(44,32,49),(45,30,50),(46,30,51),(47,30,52),(48,30,53),(49,31,54),(51,30,56),(52,35,57);
/*!40000 ALTER TABLE `MAClientVS` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (5,'Siebauer','Viktoria','01741924029');
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recht`
--

LOCK TABLES `Recht` WRITE;
/*!40000 ALTER TABLE `Recht` DISABLE KEYS */;
INSERT INTO `Recht` VALUES (1,'nicht bevollmÃ¤chtigt'),(2,'informationsberechtigt'),(3,'Entbindung Schweigepflicht');
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

-- Dump completed on 2016-07-21 22:01:58
