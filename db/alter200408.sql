CREATE TABLE `ProbandTermin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TerminID` int(11) NOT NULL DEFAULT 1,
  `ProbandMassnahmeID` int(11) NOT NULL DEFAULT 1,
  `anwesend` enum('nein','ja') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`TerminID`,`ProbandMassnahmeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

