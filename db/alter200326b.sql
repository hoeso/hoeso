DROP TABLE IF EXISTS `TrainerOrtLeistung`;
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

LOCK TABLES `TrainerOrtLeistung` WRITE;
/*!40000 ALTER TABLE `TrainerOrtLeistung` DISABLE KEYS */;
INSERT INTO `TrainerOrtLeistung` VALUES (1,2,8,1),(2,2,7,1),(3,2,10,1),(4,2,17,1),(5,2,9,1),(6,2,6,1),(7,2,16,1),(8,3,5,1),(9,3,4,1),(10,3,3,1),(11,3,2,1),(12,5,12,1),(13,5,11,1),(14,5,14,1),(15,5,13,1),(16,5,15,1),(17,1,1,1);
/*!40000 ALTER TABLE `TrainerOrtLeistung` ENABLE KEYS */;
UNLOCK TABLES;

ALTER TABLE Ort DROP TrainerID;
