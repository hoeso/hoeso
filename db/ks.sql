-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ks
-- ------------------------------------------------------
-- Server version	5.6.27-2

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
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Angebot`
--

LOCK TABLES `Angebot` WRITE;
/*!40000 ALTER TABLE `Angebot` DISABLE KEYS */;
INSERT INTO `Angebot` VALUES (53,1,'Idee','Eine neue GeschÃ¤ftsidee wird auf dem Kommunikationsserver ( KS ) als Idee hinterlegt. Alle Teilnehmer*innen kÃ¶nnen Ideen einstellen unter Nennung des Ideengebers. Teilnehmer*innen kÃ¶nnen sein\r\n\\begin{itemize}\r\n\\item Gesellschafter*innen\r\n\\item GeschÃ¤ftsfÃ¼hrer der HÃ¶rmann Holding\r\n\\item Hr. HÃ¶rmann sen.\r\n\\end{itemize}\r\n','4','1',0.00,0.00),(54,1,'Anhang','Eine Idee kann AnhÃ¤nge enthalten zur ErlÃ¤uterung. Z.B. kann die Anregung von einem Artikel aus einer Zeitung oder einem Magazin stammen. Ein solcher Artikel wird digitalisiert und auf den KS in die Idee geladen. Eventuelle handschriftliche Randnotizen sind als Text zu Ã¼bernehmen unter Nennung des Autors der Notiz.','12','2',0.00,0.00),(55,1,'Teilnehmer*innen','Es wird eine Liste aller am KS teilnehmenden Personen hinterlegt. Ist z.B. der Urheber*in einer Idee oder der Verfasser*in einer Randnotiz zu benennen, so kann diejenige Person aus dieser Liste Ã¼bernommen werden.','4','3',0.00,0.00),(56,1,'Kriterium','Es kann eine Liste von Kriterien, welche eine Idee haben kann, hinterlegt werden. Diese Kriterien kÃ¶nnen helfen bei der Entscheidungsfindung, ob eine Idee als Projekt in die HÃ¶rmann Gruppe Ã¼bernommen wird. \\\\Kriterien kÃ¶nnen z.B. sein:\r\n\\begin{itemize}\r\n\\item Skills in der Gruppe vorhanden/nicht vorhanden\r\n\\item InvestitionshÃ¶he\r\n\\item fÃ¶rderungsfÃ¤hig\r\n\\end{itemize}\r\nDiese Liste wird von den Teilnehmer*innen gepflegt und ist jederzeit erweiterbar.','6','4',0.00,0.00),(57,1,'Abstimmung','Ob eine Idee zum Projekt wird, entscheidet die Abstimmung zwischen den Teilnehmer*innen. Eine eventuelle grundsÃ¤tzliche Stimmengewichtung der Teilnehmer*innen ist zu diskutieren.','16','5',0.00,0.00),(58,1,'Projekt','Macht die Abstimmung eine Idee zum Projekt, so wandert die Idee mitsamt ihren Unterlagen und Kommentaren in einen Projekt Pool unter Nennung des Projekt-Moderator*in aus der HÃ¶rmann Gruppe.','24','7',0.00,0.00),(59,1,'Moderator*in','Ein Projekt erhÃ¤lt einen Moderator*in aus der HÃ¶rmann Gruppe, welcher die DurchfÃ¼hrung des Projekts Ã¼bertragen wird.\r\n\\\\Ist eine Anbindung des Arbeitsplatzes des Moderators, z.B. fÃ¼r Status-Meldungen, gewÃ¼nscht, so kann sein Arbeitsplatz an den KS angebunden werden.\r\n\\\\Die MÃ¶glichkeiten dieser Anbindung werden auf die Kommunikation zum betreffenden Projekt beschrÃ¤nkt.','24','6',0.00,0.00),(60,1,'Status','Der KS bietet die MÃ¶glichkeit, den Status von Projekten zu verfolgen. Der Status kann abgefragt und/oder aktualisiert werden. ','36','8',0.00,0.00),(61,1,'Chat Room','Der KS verfÃ¼gt Ã¼ber einen Chat Room, in dem die Ideen oder Projekte unmittelbar besprochen werden kÃ¶nnen, sozusagen auf dem kurzen Dienstweg.\r\n\\\\Im Gegensatz zur unverschlÃ¼sselten Mail bietet der Chat Room die MÃ¶glichkeit einer geschlossenen, verschlÃ¼sselten Adhoc-Kommunikation der Teilnehmer*innen.\r\n\\\\Auch hier ist das Hauptaugenmerk, dass die Kommunikation verschlÃ¼sselt, also in privatem Rahmen stattfindet.','24','9',0.00,0.00),(62,1,'Mail verschlÃ¼sselt','Die Mail Kommunikation zwischen den Gesellschafter*innen und den GeschÃ¤ftsfÃ¼hrern und Mitarbeitern der HÃ¶rmann Holding, die Ideen und Projekte betreffend, erfolgt Ã¼ber den KS, weil dieser Mail-Verkehr inhÃ¤rent verschlÃ¼sselt ist.\r\n\\\\Betrifft die Mail eine Idee oder ein Projekt, so kann sie in die Idee oder das Projekt gestellt werden, um dort fÃ¼r alle zentral zugreifbar zu sein.','36','10',0.00,0.00),(63,1,'Standleitung','Auf den Computern der Teilnehmer*innen wird eine verschlÃ¼sselnde Standleitung zum KS konfiguriert. Diese Verbindung wird genutzt zur Bedienung des KS, fÃ¼r den Chat-Room und fÃ¼r Mail-Verkehr, Ideen und Projekte betreffend.\r\n\\\\FÃ¼r diese Software fallen keine Lizenz- oder AnschaffungsgebÃ¼hren an. Die Software gibt es fÃ¼r Computer mit Windows, Apple OSX oder Linux Betriebssystemen.','12','11',0.00,0.00),(64,1,'Chat + Mail Software','Als Chat und Mail-Client wird der Mailer Thunderbird von der Mozilla Foundation verwendet. FÃ¼r diese Software fallen keine Lizenz- oder AnschaffungsgebÃ¼hren an.\r\n\\\\Die Software gibt es fÃ¼r Computer mit Windows, Apple OSX oder Linux Betriebssystemen.','12','12',0.00,0.00),(65,1,'KS Client','Ein KS Client ist ein Arbeitsplatz, mit dem Verbindung zum KS Server aufgenommen wird und die Teilnahme an den oben beschriebenen AktivitÃ¤ten mÃ¶glich ist, wie z.B. das Einstellen oder Einsehen von Ideen und Projekten.\r\n\\\\Als Software kommt der Browser Firefox von der Mozilla Foundation zum Einsatz. FÃ¼r diese Software fallen keine Lizenz- oder AnschaffungsgebÃ¼hren an.\r\n\\\\Die Software gibt es fÃ¼r Computer mit Windows, Apple OSX oder Linux Betriebssystemen.','12','13',0.00,0.00),(66,1,'Firewall Konfiguration','Falls der Computer eines Teilnehmer*in hinter einer ausgehenden Firewall liegt, so ist vom dortigen IT-Verantwortlichen eine Firewall-Regel zu hinterlegen, welche eine Verbindung zwischen diesem Computer und dem KS gestattet.','4','14',0.00,0.00),(67,1,'AbhÃ¶rsicherheit','Eine maximale AbhÃ¶rsicherheit der Kommunikation wird u.a. durch folgende MaÃŸnahmen erreicht:\r\n\\begin{enumerate}\r\n\\item Der Server Standort wird in Deutschland sein. Dessen Daten unterliegen also deutscher Gerichtsbarkeit.\r\n\\item Zum Betrieb des KS und zum Zugriff auf den KS wird keine Software von US-amerikanischen Herstellern eingesetzt. Dies erfolgt absichtlich, um eine maximale AbhÃ¶rsicherheit zu erreichen. Davon ausgenommen sind die auf ArbeitsplÃ¤tzen vorhandenen Betriebssysteme wie Microsoft Windows oder Apple OS X.\r\n\\item Soll eine grÃ¶ÃŸtmÃ¶gliche AbhÃ¶rsicherheit gewÃ¤hrleistet sein, so sind ArbeitsplÃ¤tze mit dem Open-Source Betriebssystem Linux einzusetzen.\r\n\\item Weitere MaÃŸnahmen werden aus naheliegenden GrÃ¼nden hier nicht mehr beschrieben. Sie kÃ¶nnen bei Hr. HÃ¶rmann mÃ¼ndlich erfragt werden.\r\n\\end{enumerate}','0','15',0.00,0.00),(68,1,'Wartung','FÃ¼r die Wartung, welche eine HochverfÃ¼gbarkeit des Server, einen fehlerfreien Ablauf der Programme und des Datenaustausches garantiert und ein tÃ¤gliches Backup aller Daten enthÃ¤lt, fallen an: \\begin{itemize} \\item Monatlich 59,- EUR fÃ¼r den Server. \\item Eine monatliche Pauschale von 99,- EUR. \\end{itemize} Hr. HÃ¶rmann wird den Server also quasi ehrenamtlich mit einer kleinen Aufwandspauschale betreiben.','0','16',0.00,0.00);
/*!40000 ALTER TABLE `Angebot` ENABLE KEYS */;
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
  `Protokoll` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `Prioritaet` enum('maximal','wichtig','einfach','niedrig') NOT NULL DEFAULT 'einfach',
  `akzeptiert` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `abgenommen` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `akzeptiertAm` date DEFAULT NULL,
  `anzeigeSTD` enum('nein','ja') NOT NULL DEFAULT 'nein',
  `installiertAm` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EDV`
--

LOCK TABLES `EDV` WRITE;
/*!40000 ALTER TABLE `EDV` DISABLE KEYS */;
INSERT INTO `EDV` VALUES (1,'Kommunikation-Server','Angeboten wird ein Server mit geschlossener, verschlÃ¼sselter Kommunikation Ã¼ber das Internet. Teilnehmer sind die Gesellschafter*innen und GeschÃ¤ftsfÃ¼hrer der HÃ¶rmann Holding GmbH & Co. KG. Er dient dem geschÃ¼tzten Ideen-Austausch und der Diskussion neuer GeschÃ¤ftsideen, parallel zur IT-Landschaft der HÃ¶rmann Gruppe. Es sollen insbesondere Anregungen von Hr. HÃ¶rmann sen., welche bisher z.B. als Zeitungsartikel mit Randnotizen in Papierform die HÃ¶rmann Holding erreichen, mit diesem Server allen Gesellschafter*innen und den involvierten GeschÃ¤ftsfÃ¼hrern der HÃ¶rmann Holding zugÃ¤nglich gemacht und Ã¼ber das Internet diskutiert werden kÃ¶nnen. Jegliche Kommunikation erfolgt inhÃ¤rent verschlÃ¼sselt und ist somit maximal abhÃ¶rsicher.','2015-12-08',NULL,'nein','einfach','nein','nein',NULL,'nein',NULL);
/*!40000 ALTER TABLE `EDV` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stundensatz`
--

LOCK TABLES `Stundensatz` WRITE;
/*!40000 ALTER TABLE `Stundensatz` DISABLE KEYS */;
INSERT INTO `Stundensatz` VALUES (3,42,59.00);
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zeitstempel`
--

LOCK TABLES `Zeitstempel` WRITE;
/*!40000 ALTER TABLE `Zeitstempel` DISABLE KEYS */;
INSERT INTO `Zeitstempel` VALUES (42,'2015-01-01');
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

-- Dump completed on 2015-12-07 19:48:39
