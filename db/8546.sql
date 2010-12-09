DROP TABLE IF EXISTS `Gewuerz`;
CREATE TABLE `Gewuerz` (
  `ID` int(11) NOT NULL auto_increment,
  `Gewuerz` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Gewuerz`)
) TYPE=MyISAM;

DROP TABLE IF EXISTS `BrotzeitGewuerz`;
CREATE TABLE `BrotzeitGewuerz` (
  `ID` int(11) NOT NULL auto_increment,
  `BrotzeitID` int(11) NOT NULL default '1',
  `GewuerzID` int(11) NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`BrotzeitID`,`GewuerzID`)
) TYPE=MyISAM;
