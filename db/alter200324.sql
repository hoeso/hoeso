ALTER TABLE Trainer ADD Titel enum('Mag.','Dr.','Ing.Mag.') NOT NULL DEFAULT 'Mag.' AFTER Vorname;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TelProband` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TelID` int(11) NOT NULL DEFAULT 1,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TelID`,`ProbandID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proband` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `geborenAm` date DEFAULT '1901-01-01',
  `Name` varchar(80) DEFAULT NULL,
  `Vorname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`geborenAm`,`Name`,Vorname)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

