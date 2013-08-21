DROP TABLE IF EXISTS `Ausschreibung`;
CREATE TABLE `Ausschreibung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BearbeiterID` int(11) NOT NULL DEFAULT '1',
  `PLZ` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
LOCK TABLES `Ausschreibung` WRITE;
INSERT INTO `Ausschreibung` VALUES (1,2290,'80336');
UNLOCK TABLES;

DROP TABLE IF EXISTS `Inhalt`;
CREATE TABLE `Inhalt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AusschreibungID` int(11) NOT NULL DEFAULT '1',
  `Spalte` int(11) NOT NULL default '0',
  `Zeile` int(11) NOT NULL default '0',
  `Inhalt` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Spalte`;
CREATE TABLE `Spalte` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AusschreibungID` int(11) NOT NULL DEFAULT '1',
  `Nr` int(11) NOT NULL default '0',
  `Titel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
