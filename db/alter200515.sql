CREATE TABLE `ProbandMassnahmeZahlung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandMassnahmeID` int(11) NOT NULL DEFAULT '1',
  `Betrag` decimal(8,2) NOT NULL DEFAULT '0.00',
  `Datum` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

