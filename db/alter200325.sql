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
  /*UNIQUE KEY `IDX` (`KursID`,`JahrID`,`KWID`,`TagID`,`VSID`)*/
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


