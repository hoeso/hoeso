DROP TABLE IF EXISTS `Brotzeit`;
CREATE TABLE `Brotzeit` (
  `ID` int(11) NOT NULL auto_increment,
  `Brotzeit` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Brotzeit`)
) TYPE=MyISAM;

