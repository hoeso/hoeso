DROP TABLE IF EXISTS `BiergartenBrotzeit`;
CREATE TABLE `BiergartenBrotzeit` (
  `ID` int(11) NOT NULL auto_increment,
  `BiergartenEventID` int(11) NOT NULL default '1',
  `SpezlID` int(11) NOT NULL default '1',
  `BrotzeitGewuerzID` int(11) NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`BiergartenEventID`,`SpezlID`)
) TYPE=MyISAM;
