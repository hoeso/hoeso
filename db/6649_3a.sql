DROP TABLE IF EXISTS `Spezl`;
CREATE TABLE `Spezl` (
  `ID` int(11) NOT NULL auto_increment,
  `Spezl` varchar(255) default NULL,
  `maennlich` enum('ja','nein') NOT NULL DEFAULT 'ja',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX` (`Spezl`,maennlich)
) TYPE=MyISAM;
