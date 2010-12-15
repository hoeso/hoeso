DROP TABLE IF EXISTS `Spezl`;
CREATE TABLE `Spezl` (
  `ID` int(11) NOT NULL auto_increment,
  `Spezl` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Spezl`)
) TYPE=MyISAM;

