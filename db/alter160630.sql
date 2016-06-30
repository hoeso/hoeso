DROP TABLE IF EXISTS `Abwesenheit`;
CREATE TABLE `MAAbwesenheit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAID` int(11) NOT NULL DEFAULT '1',
  `Beginn` date DEFAULT NULL,
  `Ende` date DEFAULT NULL,
  `Grund` enum('Urlaub','krank') NOT NULL DEFAULT 'Urlaub',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
