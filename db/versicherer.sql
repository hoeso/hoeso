-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: regula
-- ------------------------------------------------------
-- Server version	5.5.29-1

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
-- Table structure for table `Versicherer`
--

DROP TABLE IF EXISTS `Versicherer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Versicherer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Versicherer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Versicherer`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Versicherer`
--

LOCK TABLES `Versicherer` WRITE;
/*!40000 ALTER TABLE `Versicherer` DISABLE KEYS */;
INSERT INTO `Versicherer` VALUES (1,'Generali Versicherung');
INSERT INTO `Versicherer` VALUES (2,'Allianz');
INSERT INTO `Versicherer` VALUES (3,'Versicherungskammer Bayern');
INSERT INTO `Versicherer` VALUES (5,'AachenMÃ¼nchener Versicherung');
INSERT INTO `Versicherer` VALUES (6,'Cosmos Direkt');
INSERT INTO `Versicherer` VALUES (7,'WWK Versicherung');
INSERT INTO `Versicherer` VALUES (8,'AXA');
INSERT INTO `Versicherer` VALUES (9,'Concordia');
INSERT INTO `Versicherer` VALUES (10,'Generali Deutschland Schadenmanagement GmbH');
INSERT INTO `Versicherer` VALUES (11,'Generali Versicherung Hamburg');
INSERT INTO `Versicherer` VALUES (12,'Die Regulierer');
INSERT INTO `Versicherer` VALUES (13,'LVM Versicherungen');
INSERT INTO `Versicherer` VALUES (14,'HUK Coburg');
INSERT INTO `Versicherer` VALUES (15,'Bruderhilfe Sachversicherung AG');
INSERT INTO `Versicherer` VALUES (16,'Chartis Europe S. A. - Direktion fÃ¼r Deutschland');
INSERT INTO `Versicherer` VALUES (17,'Debeka Versicherung AG');
INSERT INTO `Versicherer` VALUES (18,'ACE');
INSERT INTO `Versicherer` VALUES (19,'VPV Versicherungen');
INSERT INTO `Versicherer` VALUES (20,'WGV Versicherungen');
INSERT INTO `Versicherer` VALUES (21,'Alte Leipziger Versicherung');
INSERT INTO `Versicherer` VALUES (22,'Signal Iduna');
INSERT INTO `Versicherer` VALUES (23,'Barmenia Versicherung');
INSERT INTO `Versicherer` VALUES (24,'PHARMASSEC');
INSERT INTO `Versicherer` VALUES (30,'Sparkassenversicherung');
INSERT INTO `Versicherer` VALUES (26,'D.A.S.');
INSERT INTO `Versicherer` VALUES (27,'Hausbesitzer Versicherung');
INSERT INTO `Versicherer` VALUES (28,'VHV Versicherung');
INSERT INTO `Versicherer` VALUES (29,'Continentale');
INSERT INTO `Versicherer` VALUES (31,'Itzehoer Versicherungen');
INSERT INTO `Versicherer` VALUES (32,'Provinzial Versicherung');
INSERT INTO `Versicherer` VALUES (33,'Universa Versicherung');
INSERT INTO `Versicherer` VALUES (34,'NÃ¼rnberger SofortService AG');
INSERT INTO `Versicherer` VALUES (47,'Bayerischer Versicherungsverband');
INSERT INTO `Versicherer` VALUES (36,'R+V Allgemeine Versicherung AG');
INSERT INTO `Versicherer` VALUES (37,'Helvetia Versicherungen');
INSERT INTO `Versicherer` VALUES (38,'Hiscox Insurance Company Limited');
INSERT INTO `Versicherer` VALUES (39,'Die Hanauer 24');
INSERT INTO `Versicherer` VALUES (40,'XL Insurance Company Limited');
INSERT INTO `Versicherer` VALUES (41,'Schleswiger Versicherungsverein a.G.');
INSERT INTO `Versicherer` VALUES (42,'Carl Rieck GmbH');
INSERT INTO `Versicherer` VALUES (43,'DentAssec GmbH');
INSERT INTO `Versicherer` VALUES (44,'HVB - Hausverwaltung Biller');
INSERT INTO `Versicherer` VALUES (45,'Basler-Securitas Vers. AG');
INSERT INTO `Versicherer` VALUES (46,'GrundeigentÃ¼mer Versicherung VVaG');
INSERT INTO `Versicherer` VALUES (48,'TWD Fibres GmbH');
INSERT INTO `Versicherer` VALUES (49,'');
INSERT INTO `Versicherer` VALUES (52,'LBN Versicherungsverein a.G.');
INSERT INTO `Versicherer` VALUES (53,'Zender Versicherungsmakler');
INSERT INTO `Versicherer` VALUES (54,'DEVK Versicherungen');
INSERT INTO `Versicherer` VALUES (55,'Chartis Regulierung Roland Assistance');
INSERT INTO `Versicherer` VALUES (56,'SHB Allgemeine Versicherung VVaG');
INSERT INTO `Versicherer` VALUES (57,'Assekuranz Herrmann');
INSERT INTO `Versicherer` VALUES (58,'Schwarzmeer und Ostsee Versicherungs AG');
INSERT INTO `Versicherer` VALUES (59,'Janitos Versicherung AG');
INSERT INTO `Versicherer` VALUES (60,'WÃ¼rttembergische AG');
INSERT INTO `Versicherer` VALUES (61,'Condor Versicherungsgruppe');
INSERT INTO `Versicherer` VALUES (62,'AD DACH GmbH ');
INSERT INTO `Versicherer` VALUES (63,'AD HAUS GmbH ');
INSERT INTO `Versicherer` VALUES (64,'Deutsche Assistance Service GmbH');
INSERT INTO `Versicherer` VALUES (65,'GVV Versicherung');
INSERT INTO `Versicherer` VALUES (66,'ERGO Versicherungsgruppe AG');
INSERT INTO `Versicherer` VALUES (67,'Schweizer National Versicherungs-AG');
INSERT INTO `Versicherer` VALUES (69,'IDEAL Versicherung AG');
/*!40000 ALTER TABLE `Versicherer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-24  0:41:24
