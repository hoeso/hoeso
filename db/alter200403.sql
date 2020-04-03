ALTER TABLE Termin ADD Kuerzel varchar(20) DEFAULT '' AFTER Dauer;
ALTER TABLE Ort ADD Kuerzel varchar(20) DEFAULT 'ST' AFTER PLZ;
ALTER TABLE Terminart ADD Kuerzel varchar(20) DEFAULT '.UE' AFTER Terminart;

