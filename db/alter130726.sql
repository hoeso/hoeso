/*DROP TABLE IF EXISTS `TopicToken`;*/
CREATE TABLE `TopicForderung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TopicID` int(11) NOT NULL DEFAULT '1',
  `Forderung` enum('1','2') NOT NULL default '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (TopicID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
