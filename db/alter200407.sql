DROP TABLE IF EXISTS `ProbandMassnahme`;
CREATE TABLE `ProbandMassnahme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProbandID` int(11) NOT NULL DEFAULT 1,
  `MassnahmeID` int(11) NOT NULL DEFAULT 1,
  `bestaetigt` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  `bezahlt` enum('nein','ja','') NOT NULL DEFAULT 'nein',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `OrtBehoerde` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BehoerdeID` int(11) NOT NULL DEFAULT 1,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`BehoerdeID`,`PLZ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

