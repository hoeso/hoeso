-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vpi
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Behoerde`
--

DROP TABLE IF EXISTS `Behoerde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Behoerde` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Behoerde` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Behoerde`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Behoerde`
--

LOCK TABLES `Behoerde` WRITE;
/*!40000 ALTER TABLE `Behoerde` DISABLE KEYS */;
INSERT INTO `Behoerde` VALUES (1,'BH Salzburg Umgebung');
/*!40000 ALTER TABLE `Behoerde` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `Beziehung` VALUES (1,'Vater'),(2,'Mutter'),(3,'Tochter'),(4,'Sohn'),(5,'Neffe'),(6,'Nichte'),(7,'Tante'),(8,'Onkel'),(9,'Klient'),(10,'Enkel'),(11,'Enkelin');
/*!40000 ALTER TABLE `Beziehung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bundesland`
--

DROP TABLE IF EXISTS `Bundesland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bundesland` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bundesland` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Bundesland`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bundesland`
--

LOCK TABLES `Bundesland` WRITE;
/*!40000 ALTER TABLE `Bundesland` DISABLE KEYS */;
INSERT INTO `Bundesland` VALUES (1,'OÖ'),(2,'Salzburg');
/*!40000 ALTER TABLE `Bundesland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BundeslandTrainer`
--

DROP TABLE IF EXISTS `BundeslandTrainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BundeslandTrainer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BundeslandID` int(11) NOT NULL DEFAULT 1,
  `TrainerID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`BundeslandID`,`TrainerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BundeslandTrainer`
--

LOCK TABLES `BundeslandTrainer` WRITE;
/*!40000 ALTER TABLE `BundeslandTrainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `BundeslandTrainer` ENABLE KEYS */;
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
-- Table structure for table `Dauer`
--

DROP TABLE IF EXISTS `Dauer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dauer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KursartID` int(11) NOT NULL DEFAULT 1,
  `Teilnehmer` enum('>6','1','>1','>2','>3','>4','>5','>7','>8','>9','>10','>11','>12','>13','>14','>15','>16') NOT NULL DEFAULT '>6',
  `Termine` enum('1','2','3','4','5','6') NOT NULL DEFAULT '4',
  `Dauer` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KursartID`,`Teilnehmer`,`Termine`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dauer`
--

LOCK TABLES `Dauer` WRITE;
/*!40000 ALTER TABLE `Dauer` DISABLE KEYS */;
INSERT INTO `Dauer` VALUES (12,1,'>6','4','12');
/*!40000 ALTER TABLE `Dauer` ENABLE KEYS */;
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
-- Table structure for table `Klient`
--

DROP TABLE IF EXISTS `Klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Klient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `geborenAm` date DEFAULT '1901-01-01',
  `Geschlecht` enum('weiblich','maennlich') NOT NULL DEFAULT 'weiblich',
  `Name` varchar(80) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Klient`
--

LOCK TABLES `Klient` WRITE;
/*!40000 ALTER TABLE `Klient` DISABLE KEYS */;
INSERT INTO `Klient` VALUES (9,'1919-11-07','weiblich','Siebauer','Amalie');
/*!40000 ALTER TABLE `Klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KlientAdresse`
--

DROP TABLE IF EXISTS `KlientAdresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KlientAdresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  `ZeitstempelID` int(11) NOT NULL DEFAULT 0,
  `Strasse` varchar(120) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  `Telefon` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KlientID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KlientAdresse`
--

LOCK TABLES `KlientAdresse` WRITE;
/*!40000 ALTER TABLE `KlientAdresse` DISABLE KEYS */;
INSERT INTO `KlientAdresse` VALUES (11,1,0,'MilbertshofenerStr.39','80807','MÃ¼nchen','0893543662');
/*!40000 ALTER TABLE `KlientAdresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KlientBeziehung`
--

DROP TABLE IF EXISTS `KlientBeziehung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KlientBeziehung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Beziehung` varchar(255) DEFAULT 'Kind',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KlientBeziehung`
--

LOCK TABLES `KlientBeziehung` WRITE;
/*!40000 ALTER TABLE `KlientBeziehung` DISABLE KEYS */;
/*!40000 ALTER TABLE `KlientBeziehung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KlientKurs`
--

DROP TABLE IF EXISTS `KlientKurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KlientKurs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  `KursartID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KlientID`,`KursartID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KlientKurs`
--

LOCK TABLES `KlientKurs` WRITE;
/*!40000 ALTER TABLE `KlientKurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `KlientKurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KlientVS`
--

DROP TABLE IF EXISTS `KlientVS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KlientVS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  `JahrID` int(11) NOT NULL DEFAULT 16,
  `KWID` int(11) NOT NULL DEFAULT 18,
  `TagID` int(11) NOT NULL DEFAULT 0,
  `VSID` int(11) NOT NULL DEFAULT 1,
  `Menge` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KlientID`,`JahrID`,`KWID`,`TagID`,`VSID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KlientVS`
--

LOCK TABLES `KlientVS` WRITE;
/*!40000 ALTER TABLE `KlientVS` DISABLE KEYS */;
INSERT INTO `KlientVS` VALUES (22,9,16,22,1,31,'8'),(23,9,16,22,1,81,'4'),(24,9,16,22,2,31,'8'),(25,9,16,22,2,81,'4'),(26,9,16,22,3,31,'8'),(27,9,16,22,3,81,'4'),(28,9,16,22,4,31,'8'),(29,9,16,22,4,81,'4'),(30,9,16,22,5,31,'8'),(31,9,16,22,5,81,'4'),(32,9,16,22,6,31,'8'),(33,9,16,22,6,81,'4'),(34,9,16,22,7,31,'8'),(35,9,16,22,7,81,'4');
/*!40000 ALTER TABLE `KlientVS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kontingent`
--

DROP TABLE IF EXISTS `Kontingent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kontingent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT 1,
  `ZeitstempelID` int(11) NOT NULL DEFAULT 0,
  `Wochenstunden` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kontingent`
--

LOCK TABLES `Kontingent` WRITE;
/*!40000 ALTER TABLE `Kontingent` DISABLE KEYS */;
INSERT INTO `Kontingent` VALUES (8,11,1,'28');
/*!40000 ALTER TABLE `Kontingent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kurs`
--

DROP TABLE IF EXISTS `Kurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kurs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `DauerID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`OrtID`,`DauerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kurs`
--

LOCK TABLES `Kurs` WRITE;
/*!40000 ALTER TABLE `Kurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KursTrainer`
--

DROP TABLE IF EXISTS `KursTrainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KursTrainer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KursartID` int(11) NOT NULL DEFAULT 1,
  `TrainerID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KursartID`,`TrainerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KursTrainer`
--

LOCK TABLES `KursTrainer` WRITE;
/*!40000 ALTER TABLE `KursTrainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `KursTrainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kursart`
--

DROP TABLE IF EXISTS `Kursart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kursart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Kursart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Kursart`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kursart`
--

LOCK TABLES `Kursart` WRITE;
/*!40000 ALTER TABLE `Kursart` DISABLE KEYS */;
INSERT INTO `Kursart` VALUES (1,'Nachschulung');
/*!40000 ALTER TABLE `Kursart` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MA`
--

LOCK TABLES `MA` WRITE;
/*!40000 ALTER TABLE `MA` DISABLE KEYS */;
INSERT INTO `MA` VALUES (10,'Faber','Christina','weiblich'),(11,'Martic','Katharina','weiblich');
/*!40000 ALTER TABLE `MA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAAdresse`
--

DROP TABLE IF EXISTS `MAAdresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAAdresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT 1,
  `ZeitstempelID` int(11) NOT NULL DEFAULT 0,
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
  `MAID` int(11) NOT NULL DEFAULT 1,
  `ClientID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`ClientID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAClient`
--

LOCK TABLES `MAClient` WRITE;
/*!40000 ALTER TABLE `MAClient` DISABLE KEYS */;
INSERT INTO `MAClient` VALUES (18,10,9),(19,11,9);
/*!40000 ALTER TABLE `MAClient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAKlient`
--

DROP TABLE IF EXISTS `MAKlient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAKlient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT 1,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAID`,`KlientID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAKlient`
--

LOCK TABLES `MAKlient` WRITE;
/*!40000 ALTER TABLE `MAKlient` DISABLE KEYS */;
INSERT INTO `MAKlient` VALUES (18,10,9),(19,11,9);
/*!40000 ALTER TABLE `MAKlient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAKlientVS`
--

DROP TABLE IF EXISTS `MAKlientVS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAKlientVS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAKlientID` int(11) NOT NULL DEFAULT 1,
  `KlientVSID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MAKlientID`,`KlientVSID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAKlientVS`
--

LOCK TABLES `MAKlientVS` WRITE;
/*!40000 ALTER TABLE `MAKlientVS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MAKlientVS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ort`
--

DROP TABLE IF EXISTS `Ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ort` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BundeslandID` int(11) NOT NULL DEFAULT 1,
  `Kursort` varchar(255) DEFAULT NULL,
  `Ortschaft` varchar(120) DEFAULT NULL,
  `Strasse` varchar(120) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`BundeslandID`,`Kursort`,`PLZ`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ort`
--

LOCK TABLES `Ort` WRITE;
/*!40000 ALTER TABLE `Ort` DISABLE KEYS */;
INSERT INTO `Ort` VALUES (1,2,'INFAR','Salzburg','Karl-Wurmb-Str. 3','5020');
/*!40000 ALTER TABLE `Ort` ENABLE KEYS */;
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
  `PersonID` int(11) NOT NULL DEFAULT 1,
  `BeziehungID` int(11) NOT NULL DEFAULT 1,
  `RechtID` int(11) NOT NULL DEFAULT 0,
  `ClientID` int(11) NOT NULL DEFAULT 1,
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
-- Table structure for table `PersonKlient`
--

DROP TABLE IF EXISTS `PersonKlient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersonKlient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) NOT NULL DEFAULT 1,
  `BeziehungID` int(11) NOT NULL DEFAULT 1,
  `RechtID` int(11) NOT NULL DEFAULT 0,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`PersonID`,`RechtID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PersonKlient`
--

LOCK TABLES `PersonKlient` WRITE;
/*!40000 ALTER TABLE `PersonKlient` DISABLE KEYS */;
/*!40000 ALTER TABLE `PersonKlient` ENABLE KEYS */;
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
-- Table structure for table `Tel`
--

DROP TABLE IF EXISTS `Tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tel` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Tel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tel`
--

LOCK TABLES `Tel` WRITE;
/*!40000 ALTER TABLE `Tel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TelKlient`
--

DROP TABLE IF EXISTS `TelKlient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TelKlient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TelID` int(11) NOT NULL DEFAULT 1,
  `KlientID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TelID`,`KlientID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TelKlient`
--

LOCK TABLES `TelKlient` WRITE;
/*!40000 ALTER TABLE `TelKlient` DISABLE KEYS */;
/*!40000 ALTER TABLE `TelKlient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trainer`
--

DROP TABLE IF EXISTS `Trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trainer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  `Telefon` varchar(80) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Name`,`Vorname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trainer`
--

LOCK TABLES `Trainer` WRITE;
/*!40000 ALTER TABLE `Trainer` DISABLE KEYS */;
INSERT INTO `Trainer` VALUES (1,'Horn','Robert','+436641767307');
/*!40000 ALTER TABLE `Trainer` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zeitstempel`
--

LOCK TABLES `Zeitstempel` WRITE;
/*!40000 ALTER TABLE `Zeitstempel` DISABLE KEYS */;
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

-- Dump completed on 2020-03-19 18:57:33
