ALTER TABLE Proband ADD Promille varchar(40) DEFAULT NULL;
ALTER TABLE Proband ADD AZ varchar(40) DEFAULT NULL;
ALTER TABLE Proband ADD wdhAuffaellig enum('ja','nein') NOT NULL DEFAULT 'nein';
ALTER TABLE Proband ADD ProbeFS enum('ja','nein') NOT NULL DEFAULT 'nein';
ALTER TABLE Proband ADD Kommentar text DEFAULT NULL;
