-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vpi
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

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
-- Table structure for table `Adresse`
--

DROP TABLE IF EXISTS `Adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrtBehoerdeID` int(11) NOT NULL DEFAULT 1,
  `Strasse` varchar(120) DEFAULT NULL,
  `Nr` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`OrtBehoerdeID`,`Strasse`,`Nr`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adresse`
--

LOCK TABLES `Adresse` WRITE;
/*!40000 ALTER TABLE `Adresse` DISABLE KEYS */;
INSERT INTO `Adresse` VALUES (1,3,'Promenade','16'),(2,1,'Elsa-Brandström-Str','2'),(3,1,'Rabenbauernweg','28a'),(4,2,'Hackerweg','21'),(5,1,'Schmiedingerstr','21'),(6,4,'Georgenberg','109');
/*!40000 ALTER TABLE `Adresse` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Behoerde`
--

LOCK TABLES `Behoerde` WRITE;
/*!40000 ALTER TABLE `Behoerde` DISABLE KEYS */;
INSERT INTO `Behoerde` VALUES (1,'BH Salzburg Umgebung'),(2,'LPD Salzburg'),(3,'BH Braunau'),(4,'BH Vöcklabruck'),(5,'BH Wels'),(6,'BH Steyr'),(7,'BH Zell am See'),(8,'BH Tamsweg'),(9,'BH Perg'),(10,'BH Grieskirchen-Eferding'),(11,'BH St. Johann'),(12,'BH Gmunden'),(13,'BH Linz Land'),(14,'LPD Oberösterreich Linz'),(15,'LPD Oberösterreich Wels'),(16,'LPD Oberösterreich Steyr'),(17,'BH Freistadt'),(18,'BH Urfahr Umgebung'),(19,'BH Kirchdorf'),(20,'BH Hallein');
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
INSERT INTO `Bundesland` VALUES (1,'Oberösterreich'),(2,'Salzburg');
/*!40000 ALTER TABLE `Bundesland` ENABLE KEYS */;
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
  `Termine` enum('1','2','3','4','5','6') NOT NULL DEFAULT '4',
  `Dauer` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KursartID`,`Termine`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dauer`
--

LOCK TABLES `Dauer` WRITE;
/*!40000 ALTER TABLE `Dauer` DISABLE KEYS */;
INSERT INTO `Dauer` VALUES (12,1,'4','12');
/*!40000 ALTER TABLE `Dauer` ENABLE KEYS */;
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
-- Table structure for table `Kategorie`
--

DROP TABLE IF EXISTS `Kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kategorie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Kategorie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Kategorie`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kategorie`
--

LOCK TABLES `Kategorie` WRITE;
/*!40000 ALTER TABLE `Kategorie` DISABLE KEYS */;
INSERT INTO `Kategorie` VALUES (4,'Alkohol'),(8,''),(6,'Kurve'),(7,'Sonstige');
/*!40000 ALTER TABLE `Kategorie` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `Klient` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kurs`
--

LOCK TABLES `Kurs` WRITE;
/*!40000 ALTER TABLE `Kurs` DISABLE KEYS */;
INSERT INTO `Kurs` VALUES (1,1,12);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KursTrainer`
--

LOCK TABLES `KursTrainer` WRITE;
/*!40000 ALTER TABLE `KursTrainer` DISABLE KEYS */;
INSERT INTO `KursTrainer` VALUES (1,1,1);
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
  `TerminartID` int(11) NOT NULL DEFAULT 1,
  `Kursart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TerminartID`,`Kursart`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kursart`
--

LOCK TABLES `Kursart` WRITE;
/*!40000 ALTER TABLE `Kursart` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kursart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leistung`
--

DROP TABLE IF EXISTS `Leistung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Leistung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Leistung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Leistung`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leistung`
--

LOCK TABLES `Leistung` WRITE;
/*!40000 ALTER TABLE `Leistung` DISABLE KEYS */;
INSERT INTO `Leistung` VALUES (1,'Nachschulung Kurs'),(2,'Untersuchung/Einzeltermin'),(3,'Verkehrscoaching Sbg');
/*!40000 ALTER TABLE `Leistung` ENABLE KEYS */;
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
-- Table structure for table `Mail`
--

DROP TABLE IF EXISTS `Mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Mail`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mail`
--

LOCK TABLES `Mail` WRITE;
/*!40000 ALTER TABLE `Mail` DISABLE KEYS */;
INSERT INTO `Mail` VALUES (1,'mertsarac0609@icloud.com'),(2,'denisepargger17@gmail.com'),(3,'do.ho@gmx.at'),(4,'franzzachbauer@hotmail.com'),(5,'daniel.staiger@gmx.at');
/*!40000 ALTER TABLE `Mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Massnahme`
--

DROP TABLE IF EXISTS `Massnahme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Massnahme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Massnahme` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Massnahme`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Massnahme`
--

LOCK TABLES `Massnahme` WRITE;
/*!40000 ALTER TABLE `Massnahme` DISABLE KEYS */;
INSERT INTO `Massnahme` VALUES (1,'BVA'),(2,'Kfz-L'),(3,'KG'),(4,'KiSi'),(5,'NS Ei'),(6,'NT'),(7,'VPU'),(8,'Waffe'),(9,'VC'),(10,'NS Sonstige'),(11,'NS Kurve'),(12,'NS Alk'),(13,'ZuSitz');
/*!40000 ALTER TABLE `Massnahme` ENABLE KEYS */;
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
  `Kuerzel` varchar(20) DEFAULT 'ST',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`BundeslandID`,`Kursort`,`PLZ`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ort`
--

LOCK TABLES `Ort` WRITE;
/*!40000 ALTER TABLE `Ort` DISABLE KEYS */;
INSERT INTO `Ort` VALUES (1,2,'INFAR Landesstelle Salzburg','Salzburg','Karl-Wurmb-Str. 3','5020','S'),(2,1,'Seminarhaus St. Klara','Vöcklabruck','Salzburger Straße 20','4840','VB'),(3,1,'INFAR Landesstelle Oberösterreich','Linz','Weingartshofstrasse 37-39','4020','L'),(4,1,'Fahrschule Staudinger','Kirchdorf','Sengsschmiedstraße 8','4560','KI'),(5,1,'Fahrschule Staudinger','Steyr','Pachergasse 12','4400','ST'),(6,1,'Fahrschule Yo-Yo','Ried im Innkreis','Rainerstraße 8','4910 ','RI'),(7,1,'Fahrschule Rastl','Bad Ischl','Gassnerweg 1b','4820 ','BdI'),(8,1,'Bezirksbauernkammer','Braunau','Hammersteinplatz 5','5280 ','BR'),(9,1,'Fahrschule startup@-kölblinger','Wels','Herrengasse 1 / Roseggerstraße 2','4600 ','WE'),(10,1,'Fahrschule Rastl','Mondsee','Viktor-Kaplan-Straße 2','5310','MO'),(11,2,'Fahrschule Zebra','St. Johann im Pongau','Industriestraße 9','5600 ','JO'),(12,2,'Fahrschule Pewny','Radstadt','Hofhaimergasse 13','5550','RA'),(13,2,'Fahrschule Zebra','Zell am See','Brucker Bundesstraße 11','5700','ZE'),(14,2,'Fahrschule Zebra','Saalfelden','Mittergasse 23','5760','SA'),(15,2,'Rotes Kreuz ','Tamsweg','Josef-Ehrenreich-Straße 1','5580 ','TA'),(16,1,'Gastzimmer Eferding','Eferding','Schmiedstraße 11','4070 ','EF'),(17,1,'Fahrschule Scharinger','Ostermiething','Gewerbegebiet 2','5121','OS'),(18,2,'Malteser','Salzburg','Imbergstr','5020',''),(19,1,'Bezirksbauernkammer Freistadt','Freistadt','Kammerstraße 4','4240','FR'),(20,1,'Fahrschule Mayr','Gallneukirchen','Gaisbacherstraße 22','4210','GA'),(21,1,'Bezirksbauernkammer Grieskirchen','Grieskirchen','Manglburg 2','4710','GR'),(22,1,'Kolpinghaus','Gmunden','Marktplatz 13','4810','GM'),(23,1,'Bezirksbauernkammer Perg','Perg','Fadingerstraße 13','4320','PE'),(24,1,'Praxis Dr. Stöbich','Rohrbach','Stadtplatz 16','4150','RO'),(25,1,'Fahrschule Clarissa','Schärding','Denisgasse 8','4780','SC');
/*!40000 ALTER TABLE `Ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrtBehoerde`
--

DROP TABLE IF EXISTS `OrtBehoerde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrtBehoerde` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BehoerdeID` int(11) NOT NULL DEFAULT 1,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`BehoerdeID`,`PLZ`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrtBehoerde`
--

LOCK TABLES `OrtBehoerde` WRITE;
/*!40000 ALTER TABLE `OrtBehoerde` DISABLE KEYS */;
INSERT INTO `OrtBehoerde` VALUES (1,2,'5020','Salzburg'),(2,4,'4863','Attersee'),(3,9,'4310','Mauthausen'),(4,20,'5431','Kuchl');
/*!40000 ALTER TABLE `OrtBehoerde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proband`
--

DROP TABLE IF EXISTS `Proband`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proband` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `geborenAm` date DEFAULT '1901-01-01',
  `Vorname` varchar(40) DEFAULT NULL,
  `Name` varchar(80) DEFAULT NULL,
  `Promille` varchar(40) DEFAULT NULL,
  `AZ` varchar(40) DEFAULT NULL,
  `wdhAuffaellig` enum('ja','nein') NOT NULL DEFAULT 'nein',
  `ProbeFS` enum('ja','nein') NOT NULL DEFAULT 'nein',
  `Kommentar` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`geborenAm`,`Name`,`Vorname`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proband`
--

LOCK TABLES `Proband` WRITE;
/*!40000 ALTER TABLE `Proband` DISABLE KEYS */;
INSERT INTO `Proband` VALUES (4,'1997-06-09','Mert','Sarac',NULL,NULL,'nein','nein',NULL),(5,'1999-11-20','Rakan','Alobaed',NULL,NULL,'nein','nein',NULL),(6,'2001-02-20','Denise','Pargger',NULL,NULL,'nein','nein',NULL),(7,'1994-03-01','Dominik','Hochreiter',NULL,NULL,'nein','nein',NULL),(8,'1969-02-02','Franz','Zachbauer',NULL,NULL,'nein','nein',NULL),(9,'0199-02-12','Daniel','Staiger',NULL,NULL,'nein','nein',NULL);
/*!40000 ALTER TABLE `Proband` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProbandAdresse`
--

DROP TABLE IF EXISTS `ProbandAdresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProbandAdresse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  `AdresseID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`AdresseID`,`ProbandID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProbandAdresse`
--

LOCK TABLES `ProbandAdresse` WRITE;
/*!40000 ALTER TABLE `ProbandAdresse` DISABLE KEYS */;
INSERT INTO `ProbandAdresse` VALUES (1,5,2),(2,7,1),(3,4,3),(4,6,4),(5,9,6);
/*!40000 ALTER TABLE `ProbandAdresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProbandMail`
--

DROP TABLE IF EXISTS `ProbandMail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProbandMail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  `MailID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MailID`,`ProbandID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProbandMail`
--

LOCK TABLES `ProbandMail` WRITE;
/*!40000 ALTER TABLE `ProbandMail` DISABLE KEYS */;
INSERT INTO `ProbandMail` VALUES (1,4,1),(2,6,2),(6,7,3),(4,8,4),(5,9,5);
/*!40000 ALTER TABLE `ProbandMail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProbandMassnahme`
--

DROP TABLE IF EXISTS `ProbandMassnahme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProbandMassnahme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  `MassnahmeID` int(11) NOT NULL DEFAULT 1,
  `bestaetigt` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  `bezahlt` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProbandMassnahme`
--

LOCK TABLES `ProbandMassnahme` WRITE;
/*!40000 ALTER TABLE `ProbandMassnahme` DISABLE KEYS */;
INSERT INTO `ProbandMassnahme` VALUES (1,4,9,'nein','nein'),(2,5,10,'nein','nein'),(3,6,11,'nein','nein'),(4,7,7,'nein','nein'),(5,9,11,'nein','nein');
/*!40000 ALTER TABLE `ProbandMassnahme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProbandTel`
--

DROP TABLE IF EXISTS `ProbandTel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProbandTel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  `TelID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TelID`,`ProbandID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProbandTel`
--

LOCK TABLES `ProbandTel` WRITE;
/*!40000 ALTER TABLE `ProbandTel` DISABLE KEYS */;
INSERT INTO `ProbandTel` VALUES (7,5,3),(10,4,2),(8,6,4),(9,8,5);
/*!40000 ALTER TABLE `ProbandTel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProbandTermin`
--

DROP TABLE IF EXISTS `ProbandTermin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProbandTermin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TerminID` int(11) NOT NULL DEFAULT 1,
  `ProbandMassnahmeID` int(11) NOT NULL DEFAULT 1,
  `anwesend` enum('nein','ja') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TerminID`,`ProbandMassnahmeID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProbandTermin`
--

LOCK TABLES `ProbandTermin` WRITE;
/*!40000 ALTER TABLE `ProbandTermin` DISABLE KEYS */;
INSERT INTO `ProbandTermin` VALUES (1,30,1,'nein'),(2,31,2,'ja'),(3,32,4,'nein'),(4,31,5,'nein');
/*!40000 ALTER TABLE `ProbandTermin` ENABLE KEYS */;
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
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Tag`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (1,'Montag','Mo','Monday'),(2,'Dienstag','Di','Tuesday'),(3,'Mittwoch','Mi','Wednesday'),(4,'Donnerstag','Do','Thursday'),(5,'Freitag','Fr','Friday'),(6,'Samstag','Sa','Saturday'),(7,'Sonntag','So','Sunday');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tel`
--

LOCK TABLES `Tel` WRITE;
/*!40000 ALTER TABLE `Tel` DISABLE KEYS */;
INSERT INTO `Tel` VALUES (2,'+4366052011'),(3,'+436606075293'),(4,'+436764487996'),(5,'+436604842818');
/*!40000 ALTER TABLE `Tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Termin`
--

DROP TABLE IF EXISTS `Termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Termin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TerminartID` int(11) NOT NULL DEFAULT 1,
  `KategorieID` int(11) NOT NULL DEFAULT 1,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `TrainerID` int(11) NOT NULL DEFAULT 16,
  `JahrID` int(11) NOT NULL DEFAULT 16,
  `KWID` int(11) NOT NULL DEFAULT 18,
  `TagID` int(11) NOT NULL DEFAULT 0,
  `VSID` int(11) NOT NULL DEFAULT 1,
  `Dauer` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96') NOT NULL,
  `Kuerzel` varchar(20) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Termin`
--

LOCK TABLES `Termin` WRITE;
/*!40000 ALTER TABLE `Termin` DISABLE KEYS */;
INSERT INTO `Termin` VALUES (31,1,8,1,1,20,18,6,41,'12',' S'),(30,3,8,18,10,20,17,5,57,'12','Malt'),(28,2,8,3,9,20,15,1,41,'28','L'),(29,2,8,1,4,20,15,3,69,'4',' S.UE'),(27,1,8,3,3,20,17,3,69,'12','L22'),(26,1,8,3,2,20,16,6,37,'12','L18'),(32,2,8,2,4,20,21,1,37,'4',' VB.UE');
/*!40000 ALTER TABLE `Termin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Terminart`
--

DROP TABLE IF EXISTS `Terminart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Terminart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Terminart` varchar(255) DEFAULT NULL,
  `Kuerzel` varchar(20) DEFAULT '.UE',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Terminart`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Terminart`
--

LOCK TABLES `Terminart` WRITE;
/*!40000 ALTER TABLE `Terminart` DISABLE KEYS */;
INSERT INTO `Terminart` VALUES (1,'Nachschulung Kurs',''),(2,'Untersuchung/Einzeltermin','.UE'),(3,'Verkehrscoaching Sbg','');
/*!40000 ALTER TABLE `Terminart` ENABLE KEYS */;
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
  `Titel` enum('Mag.','Dr.','Ing.Mag.') NOT NULL DEFAULT 'Mag.',
  `Telefon` varchar(80) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Name`,`Vorname`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trainer`
--

LOCK TABLES `Trainer` WRITE;
/*!40000 ALTER TABLE `Trainer` DISABLE KEYS */;
INSERT INTO `Trainer` VALUES (1,'Horn','Robert','Ing.Mag.','0664/1767307'),(2,'Mühlbacher','Michaela','Mag.','0660/1101133 '),(3,'Mitterndorfer','Renate','Mag.','0699/19088493'),(4,'Standler','Natalie','Mag.','0660/1518656'),(5,'Schatzl','Werner','Mag.','0650/2201106'),(6,'Gappmaier','Alexander','Mag.','0664/3138243'),(7,'Riegler','Erwin','Mag.',''),(10,'Ruby','Maria','Dr.','0699/12634849'),(9,'Ruby','Isabella','Mag.','0664/9697322');
/*!40000 ALTER TABLE `Trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrainerOrtTerminart`
--

DROP TABLE IF EXISTS `TrainerOrtTerminart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrainerOrtTerminart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TrainerID` int(11) NOT NULL DEFAULT 16,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `TerminartID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrainerOrtTerminart`
--

LOCK TABLES `TrainerOrtTerminart` WRITE;
/*!40000 ALTER TABLE `TrainerOrtTerminart` DISABLE KEYS */;
INSERT INTO `TrainerOrtTerminart` VALUES (1,2,8,1),(2,2,7,1),(3,2,10,1),(4,2,17,1),(5,2,9,1),(6,2,6,1),(7,2,16,1),(8,3,5,1),(9,3,4,1),(10,3,3,1),(11,3,2,1),(12,5,12,1),(13,5,11,1),(14,5,14,1),(15,5,13,1),(16,5,15,1),(17,1,1,1),(18,4,10,2),(19,4,2,2),(20,4,13,2),(21,4,14,2),(22,4,12,2),(23,4,1,2),(24,4,11,2),(25,7,5,2),(26,3,3,2),(29,10,18,3);
/*!40000 ALTER TABLE `TrainerOrtTerminart` ENABLE KEYS */;
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
-- Table structure for table `Vormerkung`
--

DROP TABLE IF EXISTS `Vormerkung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vormerkung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `ProbandMassnahmeID` int(11) NOT NULL DEFAULT 1,
  `Frist` date DEFAULT NULL,
  `Kommentar` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`OrtID`,`ProbandMassnahmeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vormerkung`
--

LOCK TABLES `Vormerkung` WRITE;
/*!40000 ALTER TABLE `Vormerkung` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vormerkung` ENABLE KEYS */;
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

-- Dump completed on 2020-05-22 14:49:44
