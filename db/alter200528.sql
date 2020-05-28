CREATE TABLE `MassnahmeGebuehr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MassnahmeID` int(11) NOT NULL DEFAULT 1,
  `ZeitstempelID` int(11) NOT NULL DEFAULT 1,
  `Gebuehr` decimal(8,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`MassnahmeID`,`ZeitstempelID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

