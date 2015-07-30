-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kn
-- ------------------------------------------------------
-- Server version	5.6.25-3

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
-- Table structure for table `Angebot`
--

DROP TABLE IF EXISTS `Angebot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Angebot` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EDVID` int(11) NOT NULL DEFAULT '1',
  `Section` varchar(255) DEFAULT NULL,
  `Details` text,
  `realisierungsStunden` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62') NOT NULL DEFAULT '1',
  `Position` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120') NOT NULL,
  `Festpreis` decimal(8,2) NOT NULL DEFAULT '0.00',
  `Spende` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX2` (`EDVID`,`Position`),
  UNIQUE KEY `IDX` (`EDVID`,`Section`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Angebot`
--

LOCK TABLES `Angebot` WRITE;
/*!40000 ALTER TABLE `Angebot` DISABLE KEYS */;
INSERT INTO `Angebot` VALUES (1,2,'','','0','1',0.00,0.00),(2,1,'Liste aller Notebooks','Die HÃ¶rmann Kommunikationstechnik GmbH erstellt eine Liste aller Notebooks, auf denen die erbrachten Stunden eingegeben werden  und benennt jeweils den Mitarbeiter, der das Notebook benutzt.','0','2',0.00,0.00),(3,1,'Mitarbeiter','Es wird eine Liste aller Mitarbeiter gepflegt mit Nennung der Funktion, in der diese tÃ¤tig sind. Mit Funktion ist z.B. gemeint Projektleiter, Bauleiter, Monteur.','4','1',0.00,0.00),(4,1,'Bereich','Die vier genannten Firmen-Bereiche Kommunikationstechnik, Freileitungsbau, Energie Erz. & Effizienz und Service & Wartung werden in den Formularen als Auswahl zur VerfÃ¼gung gestellt.','3','3',0.00,0.00),(5,1,'Region','Die sieben genannten Regionen beim KostentrÃ¤ger werden in den Formularen als Auswahl zur VerfÃ¼gung gestellt.','3','4',0.00,0.00),(6,1,'Projekt','Die bei der Folie \\grq Systematik der Auftrags-Nummern\\grq genannten Projekte werden als Liste zur VerfÃ¼gung gestellt. ZusÃ¤tzlich zum Projekt wird dessen Region angegeben und die 2-stellige Projektnummer. Die Liste kann vom Innendienst gepflegt, z.B. erweitert werden.','6','6',0.00,0.00),(7,1,'Auftragsart','Die acht genannten Auftragsarten beim KostentrÃ¤ger werden in den Formularen als Auswahl zur VerfÃ¼gung gestellt.','3','5',0.00,0.00),(8,1,'Baustelle','Ein Baustelle wird hinterlegt mit Bezug auf ihr Projekt und Nennung der Auftragsart.','6','7',0.00,0.00),(9,1,'Baustellen Mitarbeiter','Mitarbeiter werden unter Nennung ihrer dortigen Funktion - z.B. Bauleiter oder Monteur - den einzelnen Baustellen zugeordnet.','6','8',0.00,0.00),(10,1,'Notebook Lese-Synchronisation','Ein auf den Server lesend zugreifendes Notebook wird so konfiguriert, dass der Server am Zugriff erkennt, welches Notebook zugreift und damit auch, welcher Mitarbeiter zugreift. Dadurch weiss der Server, welche Baustellen mit welchen Mitarbeitern Ã¼ber das zugreifende Notebook betreut werden. FÃ¼r jeden Mitarbeiter auf diesen Baustellen werden daraufhin diejenigen Daten auf das Notebook transferiert, die nÃ¶tig sind, um die Wochenstunden aller Mitarbeiter zu erfassen.','32','9',0.00,0.00),(11,3,'Download','109 MB von apachefriends.org/de herunterladen.','0','1',0.00,0.00),(12,3,'Installation','Es werden nur die Komponten mysql, php, apache installiert ins voreingestellte Verzeichnis C:\\xampplite .\r\n\\\\\\\\Apache2 Ports, Listen-Directive setzen in C:\\xampplite\\apache\\conf\\httpd.conf','0','2',0.00,0.00);
/*!40000 ALTER TABLE `Angebot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Auftragsart`
--

DROP TABLE IF EXISTS `Auftragsart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Auftragsart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Auftragsart` varchar(255) DEFAULT 'Handelsware',
  `Ziffer` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX2` (`Ziffer`),
  UNIQUE KEY `IDX` (`Auftragsart`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Auftragsart`
--

LOCK TABLES `Auftragsart` WRITE;
/*!40000 ALTER TABLE `Auftragsart` DISABLE KEYS */;
INSERT INTO `Auftragsart` VALUES (1,'Handelsware','1'),(2,'Montage / Installation','2'),(3,'Mischauftrag','3');
/*!40000 ALTER TABLE `Auftragsart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Beistellung`
--

DROP TABLE IF EXISTS `Beistellung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beistellung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AngebotID` int(11) NOT NULL DEFAULT '1',
  `Beistellung` text,
  `erfolgt` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beistellung`
--

LOCK TABLES `Beistellung` WRITE;
/*!40000 ALTER TABLE `Beistellung` DISABLE KEYS */;
/*!40000 ALTER TABLE `Beistellung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bereich`
--

DROP TABLE IF EXISTS `Bereich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bereich` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bereich` varchar(255) DEFAULT 'Kommunikationstechnik',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Bereich`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bereich`
--

LOCK TABLES `Bereich` WRITE;
/*!40000 ALTER TABLE `Bereich` DISABLE KEYS */;
INSERT INTO `Bereich` VALUES (1,'Kommunikationstechnik'),(2,'Freileitungsbau'),(3,'Energie Erz. & Effizienz'),(4,'Service & Wartung');
/*!40000 ALTER TABLE `Bereich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diskussion`
--

DROP TABLE IF EXISTS `Diskussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diskussion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EDVID` int(11) NOT NULL DEFAULT '1',
  `Diskussion` text,
  `gelesen` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diskussion`
--

LOCK TABLES `Diskussion` WRITE;
/*!40000 ALTER TABLE `Diskussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Diskussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EDV`
--

DROP TABLE IF EXISTS `EDV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EDV` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Projekt` varchar(255) DEFAULT NULL,
  `Beschreibung` text,
  `versandtAm` date DEFAULT NULL,
  `geprueftAm` date DEFAULT NULL,
  `Einwand` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `Prioritaet` enum('maximal','wichtig','einfach','niedrig') NOT NULL DEFAULT 'einfach',
  `akzeptiert` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `abgenommen` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `akzeptiertAm` date DEFAULT NULL,
  `PDF` enum('ja','nein') NOT NULL DEFAULT 'nein',
  `installiertAm` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EDV`
--

LOCK TABLES `EDV` WRITE;
/*!40000 ALTER TABLE `EDV` DISABLE KEYS */;
INSERT INTO `EDV` VALUES (1,'Automatisierte Wochenberichte','Die Angabe der Wochenarbeitszeiten der Bauleiter und Monteure auf den Baustellen soll dort offline auf Notebooks mÃ¶glich sein und mit einem zentralen Server synchronisiert werden. Auf den Server greift auch der Innendienst zu, kontrolliert die Angaben des AuÃŸendienstes und sichtet die daraus resultierenden Wochenberichte, deren Inhalt nach Abnahme ins PDS-System Ã¼berstellt wird.',NULL,NULL,'nein','einfach','nein','nein',NULL,'nein',NULL),(3,'XAMPP Installation','Technische Doku der Installation unter Windows8.',NULL,NULL,'nein','einfach','nein','nein',NULL,'nein',NULL);
/*!40000 ALTER TABLE `EDV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funktion`
--

DROP TABLE IF EXISTS `Funktion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Funktion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Funktion` varchar(64) DEFAULT 'Monteur',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Funktion`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funktion`
--

LOCK TABLES `Funktion` WRITE;
/*!40000 ALTER TABLE `Funktion` DISABLE KEYS */;
INSERT INTO `Funktion` VALUES (1,'Projektleiter'),(2,'Bauleiter'),(3,'Monteur');
/*!40000 ALTER TABLE `Funktion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mitarbeiter`
--

DROP TABLE IF EXISTS `Mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mitarbeiter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) DEFAULT 'Huber',
  `Vorname` varchar(128) DEFAULT 'Anton',
  `PersonalNr` varchar(128) DEFAULT 'Anton',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Name`,`PersonalNr`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mitarbeiter`
--

LOCK TABLES `Mitarbeiter` WRITE;
/*!40000 ALTER TABLE `Mitarbeiter` DISABLE KEYS */;
INSERT INTO `Mitarbeiter` VALUES (1,'Klein','F.','1234');
/*!40000 ALTER TABLE `Mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MitarbeiterFunktion`
--

DROP TABLE IF EXISTS `MitarbeiterFunktion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MitarbeiterFunktion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MitarbeiterID` int(11) NOT NULL DEFAULT '1',
  `FunktionID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MitarbeiterID`,`FunktionID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MitarbeiterFunktion`
--

LOCK TABLES `MitarbeiterFunktion` WRITE;
/*!40000 ALTER TABLE `MitarbeiterFunktion` DISABLE KEYS */;
INSERT INTO `MitarbeiterFunktion` VALUES (1,1,1);
/*!40000 ALTER TABLE `MitarbeiterFunktion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MitarbeiterTaetigkeit`
--

DROP TABLE IF EXISTS `MitarbeiterTaetigkeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MitarbeiterTaetigkeit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MitarbeiterID` int(11) NOT NULL DEFAULT '1',
  `TaetigkeitID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MitarbeiterID`,`TaetigkeitID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MitarbeiterTaetigkeit`
--

LOCK TABLES `MitarbeiterTaetigkeit` WRITE;
/*!40000 ALTER TABLE `MitarbeiterTaetigkeit` DISABLE KEYS */;
INSERT INTO `MitarbeiterTaetigkeit` VALUES (1,1,1);
/*!40000 ALTER TABLE `MitarbeiterTaetigkeit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Region` varchar(64) DEFAULT 'KN-ZENTRALE',
  `Buero` varchar(64) DEFAULT 'Kirchseeon',
  `KostentraegerNr` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`KostentraegerNr`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'KN-ZENTRALE','Kirchseeon','0'),(2,'MITTE','Bad Camberg','1'),(3,'NORD','Berlin','2'),(4,'OST','ZwÃ¶nitz','3'),(5,'SÃœD','Kirchseeon','6'),(6,'WEST','Gelsenkirchen','7'),(7,'SÃœD-WEST','Warthausen','8');
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stundensatz`
--

DROP TABLE IF EXISTS `Stundensatz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stundensatz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ZeitstempelID` int(11) NOT NULL DEFAULT '0',
  `Stundensatz` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stundensatz`
--

LOCK TABLES `Stundensatz` WRITE;
/*!40000 ALTER TABLE `Stundensatz` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stundensatz` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2015-07-30 16:45:47
