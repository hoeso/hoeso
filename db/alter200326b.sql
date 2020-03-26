ALTER TABLE Termin ADD TrainerID int(11) NOT NULL DEFAULT 16 AFTER OrtID;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrainerOrtLeistung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TrainerID` int(11) NOT NULL DEFAULT 16,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `LeistungID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrainerOrtLeistung`
--

ALTER TABLE Ort DROP TrainerID;
