DROP TABLE IF EXISTS `Event`;
CREATE TABLE `Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event` text,
  `am` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) TYPE=MyISAM;

DROP TABLE IF EXISTS `BiergartenEvent`;
CREATE TABLE `BiergartenEvent` (
  `ID` int(11) NOT NULL auto_increment,
  `EventID` int(11) NOT NULL DEFAULT '1',
  `BiergartenID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (EventID)
) TYPE=MyISAM;

DROP TABLE IF EXISTS `BiergartenMaenner`;
CREATE TABLE `BiergartenMaenner` (
  `ID` int(11) NOT NULL auto_increment,
  `BiergartenEventID` int(11) NOT NULL DEFAULT '1',
  `SpezlID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (BiergartenEventID,SpezlID)
) TYPE=MyISAM;

