/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zeitstempel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Zeitstempel` (`Datum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `Zeitstempel` VALUES (1,'1999-01-01');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MassnahmeGebuehr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MassnahmeID` int(11) NOT NULL DEFAULT 1,
  `ZeitstempelID` int(11) NOT NULL DEFAULT 1,
  `Gebuehr` decimal(8,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MassnahmeID`,`ZeitstempelID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `MassnahmeGebuehr` VALUES (1,12,1,495.00),(2,11,1,495.00),(3,10,1,495.00);
