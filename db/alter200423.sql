ALTER TABLE Vormerkung ADD Wunschtermin varchar(120) DEFAULT NULL;
ALTER TABLE Termin DROP VM;

CREATE TABLE `Vormerkung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RegionID` int(11) NOT NULL DEFAULT 1,
  `ProbandAdresseID` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`RegionID`,`ProbandAdresseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
