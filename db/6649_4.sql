DROP TABLE IF EXISTS `Biergarten`;
CREATE TABLE `Biergarten` (
  `ID` int(11) NOT NULL auto_increment,
  `Biergarten` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Biergarten`)
) TYPE=MyISAM;

