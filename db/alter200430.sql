DROP TABLE IF EXISTS `Vormerkung`;
CREATE TABLE `Vormerkung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrtID` int(11) NOT NULL DEFAULT 1,
  `ProbandMassnahmeID` int(11) NOT NULL DEFAULT 1,
  `Frist` date DEFAULT NULL,
  `Kommentar` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`OrtID`,`ProbandMassnahmeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE Region;
DROP TABLE Umkreis;
