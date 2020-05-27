ALTER TABLE Trainer ADD  Anrede enum('Herr','Frau') NOT NULL DEFAULT 'Frau' AFTER ID;
ALTER TABLE Proband ADD Titel enum('','Mag.','Dr.','Ing.Mag.','DI','Prof.') NOT NULL DEFAULT '' AFTER Anrede;
ALTER TABLE Terminart ADD Art enum('c','e','n') NOT NULL DEFAULT 'n';

