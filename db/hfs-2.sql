CREATE TABLE `District` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Station` varchar(255) DEFAULT NULL,
  `TLD` enum('ar') NOT NULL DEFAULT 'ar',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX` (`District`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8; 
