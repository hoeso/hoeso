ALTER TABLE Proband ADD  Anrede enum('Herr','Frau','') NOT NULL DEFAULT 'Herr' AFTER geborenAm;
ALTER TABLE Bundesland ADD URL varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD wo varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD Strasse varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD PLZ varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD Ort varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD Tel varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD Fax varchar(40) DEFAULT NULL;
ALTER TABLE Bundesland ADD eMail varchar(40) DEFAULT NULL;
