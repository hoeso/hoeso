DROP TABLE IF EXISTS `Massnahme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Massnahme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Massnahme` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`Massnahme`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Massnahme`
--

LOCK TABLES `Massnahme` WRITE;
/*!40000 ALTER TABLE `Massnahme` DISABLE KEYS */;
INSERT INTO `Massnahme` VALUES (1,'BVA'),(2,'Kfz-L'),(3,'KG'),(4,'KiSi'),(5,'NS Ei'),(6,'NT'),(7,'VPU'),(8,'Waffe');
/*!40000 ALTER TABLE `Massnahme` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `Termin`
--

DROP TABLE IF EXISTS `Termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Termin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeistungID` int(11) NOT NULL DEFAULT 1,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `JahrID` int(11) NOT NULL DEFAULT 16,
  `KWID` int(11) NOT NULL DEFAULT 18,
  `TagID` int(11) NOT NULL DEFAULT 0,
  `VSID` int(11) NOT NULL DEFAULT 1,
  `Dauer` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TrainerOrtLeistung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrainerOrtLeistung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TrainerID` int(11) NOT NULL DEFAULT 16,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `LeistungID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-26 17:32:57
