DROP TABLE IF EXISTS `Ort`;
CREATE TABLE `Ort` (
  `ID` int(11) NOT NULL auto_increment,
  `Ort` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Ort`)
) TYPE=MyISAM;

DROP TABLE IF EXISTS `Ortsteil`;
CREATE TABLE `Ortsteil` (
  `ID` int(11) NOT NULL auto_increment,
  `OrtID` int(11) NOT NULL DEFAULT '1',
  `Ortsteil` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (OrtID,`Ortsteil`)
) TYPE=MyISAM;

