-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: regula
-- ------------------------------------------------------
-- Server version	5.5.29-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Schadenbuero`
--

DROP TABLE IF EXISTS `Schadenbuero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schadenbuero` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersichererID` int(11) NOT NULL DEFAULT '1',
  `Schadenbuero` varchar(255) DEFAULT NULL,
  `Strasse` varchar(120) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  `Ort` varchar(120) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT '08',
  `Fax` varchar(20) DEFAULT '08',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schadenbuero`
--

LOCK TABLES `Schadenbuero` WRITE;
/*!40000 ALTER TABLE `Schadenbuero` DISABLE KEYS */;
INSERT INTO `Schadenbuero` VALUES (1,1,'SchadenbÃ¼ro MÃ¼nchen Sach','Adenauerring 11','81737','MÃ¼nchen','089 5121-','089 5121-5943');
INSERT INTO `Schadenbuero` VALUES (2,1,'SchadenbÃ¼ro Stuttgart Sach','Schlosstr. 73','70176','Stuttgart','0711 6688','0711 6688 4211');
INSERT INTO `Schadenbuero` VALUES (3,1,' SchadenbÃ¼ro Hamburg Sach','Besenbinderhof 43','20097','Hamburg','040 2865','040 2865 7759');
INSERT INTO `Schadenbuero` VALUES (4,1,'SchadenbÃ¼ro KÃ¶ln  Sach','Hohenstauffenring 78','50674','KÃ¶ln','0221 - 29938','0211-9688 3080');
INSERT INTO `Schadenbuero` VALUES (5,1,'SchadenbÃ¼ro Frankfurt Sach','Oederweg 151','60318','Frankfurt','069 1502','069 1502 2728');
INSERT INTO `Schadenbuero` VALUES (6,1,'MÃ¼nchen Gewerbe Sach','Adenauerring 11','81737','MÃ¼nchen','089 5121-','089 5121-1039');
INSERT INTO `Schadenbuero` VALUES (7,10,'MÃ¼nchen Sach','Adenauerring 11','81737','MÃ¼nchen','089 5121-','089 5121 1039');
INSERT INTO `Schadenbuero` VALUES (8,1,' SchadenbÃ¼ro Stuttgart Haftpflicht','SchloÃŸstr. 73','70176','Stuttgart','0711 6688-','0711 6688 4211');
INSERT INTO `Schadenbuero` VALUES (9,10,'Aachen Sach','Aureliusstr. 2','52062','Aachen','0241 456-','0241 456 4541');
INSERT INTO `Schadenbuero` VALUES (10,11,'SchadenbÃ¼ro Hamburg Sach','Besenbinderhof 43','20097','Hamburg','040 2865-','040 2865 5655');
INSERT INTO `Schadenbuero` VALUES (11,5,'SchadenbÃ¼ro Stuttgart Sach','RotebÃ¼hlstr. 91-93','70178','Stuttgart','0711 / 6600 -','01801 999560 5689');
INSERT INTO `Schadenbuero` VALUES (12,11,'SchadenbÃ¼ro Hamburg Sach Makler','Besenbinderhof 43','20097','Hamburg','040 2865','040 28657416');
INSERT INTO `Schadenbuero` VALUES (13,1,'SchadenbÃ¼ro Hamburg Haft','Besenbinderhof 43','20097','Hamburg','040 2865-','040 2865 77960');
INSERT INTO `Schadenbuero` VALUES (14,1,'SchadenbÃ¼ro KÃ¶ln Kraft','Hohenstauffenring 78','50674 ','KÃ¶ln','0211 9688-','0211 9688 3240');
INSERT INTO `Schadenbuero` VALUES (15,1,'SchadenbÃ¼ro KÃ¶ln Haft','Hohenstauffenring 78','50674 ','KÃ¶ln','0211 9688 -','0211 9688 3240');
INSERT INTO `Schadenbuero` VALUES (16,5,' SchadenbÃ¼ro Hamburg Sach','Nagelsweg 47','20097','Hamburg','040 / 23772 - ','01801 999160 3400');
INSERT INTO `Schadenbuero` VALUES (17,5,'SchadenbÃ¼ro KÃ¶ln Sach','Sachsenring 91','50677','KÃ¶ln','0221 / 3395','01801 999399 7828');
INSERT INTO `Schadenbuero` VALUES (18,5,'SchadenbÃ¼ro NÃ¼rnberg Sach','KÃ¶nigstorgraben 1','90402','NÃ¼rnberg','0911 / 1336 -','01801 999661 1000');
INSERT INTO `Schadenbuero` VALUES (19,5,'SchadenbÃ¼ro KÃ¶ln Haftpflicht','Sachsenring 91','50677','KÃ¶ln','01801 999260-','01801 999399 7828');
INSERT INTO `Schadenbuero` VALUES (20,5,'SchadenbÃ¼ro NÃ¼rnberg Haftpflicht','KÃ¶nigstorgraben 1','90402','NÃ¼rnberg','0911 / 1336 -','01801 999661 1000');
INSERT INTO `Schadenbuero` VALUES (22,12,'Die Regulierer Innendienst','Lerchenauer Str. 331','80995','MÃ¼nchen','089 3186936-','089 31869369');
INSERT INTO `Schadenbuero` VALUES (23,1,'SchadenbÃ¼ro MÃ¼nchen Haftpflicht','Adenauerring 11','81737','MÃ¼nchen','089 5121 -','089 5121 8987');
INSERT INTO `Schadenbuero` VALUES (24,10,'MÃ¼nchen Ausland','Adenauerring 11','81737','MÃ¼nchen','089 5121 -','089 5121 1023');
INSERT INTO `Schadenbuero` VALUES (25,11,'SchadenbÃ¼ro MÃ¼nchen Haft','Neuhauser Str. 23','80331','MÃ¼nchen','089 231901-','089 2603655');
INSERT INTO `Schadenbuero` VALUES (26,13,'Sachschaden','Kolde-Ring 21','48126','MÃ¼nster','0251 702-','0251 70299+Durchwahl');
INSERT INTO `Schadenbuero` VALUES (27,1,'Gewerbe Haftpflicht MÃ¼nchen','Adenauerring 11','81737','MÃ¼nchen','089 5121 -','089 5121- 5088');
INSERT INTO `Schadenbuero` VALUES (28,13,'Haftpflichtschaden','Kolde-Ring 21','48126','MÃ¼nster','0251 702 -','0251 702 99+Durchwah');
INSERT INTO `Schadenbuero` VALUES (29,1,'SchadenbÃ¼ro MÃ¼nchen Kraft','Adenauerring 11','81737','MÃ¼nchen','089 5121-','089 5121 8987');
INSERT INTO `Schadenbuero` VALUES (30,14,'Sach-Schaden','Willi-Hussong-Str. 2','96442','Coburg','09561 96-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (31,14,'SAS Bremen','Am Brill 18','28195','Bremen','0421 5904-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (32,1,'Schaden Axel Lange','Breite StraÃŸe 12','14199','Berlin','030 884188-','030 88418841');
INSERT INTO `Schadenbuero` VALUES (33,10,'Sach-Schaden Hamburg','Besenbinderhof 43','20076','Hamburg','040-2865-','040-2865-0');
INSERT INTO `Schadenbuero` VALUES (34,11,'SchadenbÃ¼ro KÃ¶ln Sach','Hohenstauffenring 78','50674','KÃ¶ln','0221 / 921200-','0221 / 921200600');
INSERT INTO `Schadenbuero` VALUES (35,11,'SchadenbÃ¼ro KÃ¶ln Haftpflicht','Hohenstauffenring 78','50674','KÃ¶ln','0221-921200-','0221-921200600');
INSERT INTO `Schadenbuero` VALUES (36,11,'SchadenbÃ¼ro Hamburg Kraft','Besenbinderhof 43','20997','Hamburg','040 / 180455-','040 / 28653730');
INSERT INTO `Schadenbuero` VALUES (37,11,'SchadenbÃ¼ro MÃ¼nchen Sach','Neuhauser Str. 23','80331','MÃ¼nchen','089 231901-','089 2603655');
INSERT INTO `Schadenbuero` VALUES (38,11,'SchadenbÃ¼ro Stuttgart Haftpflicht','Breitwiesenstr. 19','70565','Stuttgart','0711 61913-','0711 61913-96');
INSERT INTO `Schadenbuero` VALUES (39,1,'SchadenbÃ¼ro Hamburg Kraft','Besenbinderhof 43','20097','Hamburg','040 31176 -','040 31176 7120');
INSERT INTO `Schadenbuero` VALUES (40,6,'SchadenbÃ¼ro SaarbrÃ¼cken Sach','Halbergstr. 52-54','66121','SaarbrÃ¼cken','0681 966 -','0681 966 6674');
INSERT INTO `Schadenbuero` VALUES (41,15,'Sach-Schaden','KÃ¶lnische Str. 108-112','34108','Kassel','0561 70341-','0180 2852369');
INSERT INTO `Schadenbuero` VALUES (42,16,'Sach-Schaden Direktion','Karlstr. 68-72','74076','Heilbronn','07131 186 -','07131 186 353');
INSERT INTO `Schadenbuero` VALUES (43,1,'SchadenbÃ¼ro Frankfurt Haftpflicht','Oederweg 151','60318','Frankfurt','069 1502-','069 1502 2615');
INSERT INTO `Schadenbuero` VALUES (44,5,'SchadenbÃ¼ro Hamburg Kraft','Nagelsweg 47','20097','Hamburg','01801 /999160-','01801 /999160 3400');
INSERT INTO `Schadenbuero` VALUES (45,1,'SchadenbÃ¼ro Frankfurt Kraft','Oederweg 151','60318','Frankfurt','069 1502-','069 1502 2615');
INSERT INTO `Schadenbuero` VALUES (46,5,'SchadenbÃ¼ro Hamburg Haftpflicht','Nagelsweg 47','20097','Hamburg','040 / 23772 - ','01801 999160 3400');
INSERT INTO `Schadenbuero` VALUES (47,13,'Schadenservice Kraftfahrt','Kolde-Ring 21','48126','MÃ¼nster','0251 702-','0251 702 993074');
INSERT INTO `Schadenbuero` VALUES (48,5,'SchadenbÃ¼ro KÃ¶ln Kraftfahrt','Sachsenring 91','50677','KÃ¶ln','01801-999260-','01801-999399-7828');
INSERT INTO `Schadenbuero` VALUES (49,17,'Sach-Schaden','Ferdinand-Sauerbruch-Str. 18','56058','Koblenz','0261-498-','0261-498-3636');
INSERT INTO `Schadenbuero` VALUES (50,18,'SchadenbÃ¼ro Frankfurt','Lurgiallee 10','60439','Frankfurt','069 756 13-','069 75613 4284');
INSERT INTO `Schadenbuero` VALUES (51,10,'Haftpflichtschaden Hamburg','Besenbinderhof 43','20097','Hamburg','040 2865-','040 2865 172535');
INSERT INTO `Schadenbuero` VALUES (52,11,'SchadenbÃ¼ro Stuttgart Kraft','Breitwiesenstr. 19','70565','Stuttgart','0711 61913-','0711 6191396');
INSERT INTO `Schadenbuero` VALUES (53,6,'SaarbrÃ¼cken Haftpflicht','Halbergstr. 50-60','66121','SaarbrÃ¼cken','0681 966-','0681 966-6674');
INSERT INTO `Schadenbuero` VALUES (54,5,'SchadenbÃ¼ro Stuttgart Haftpflicht','RotebÃ¼hlstr. 91-93','70178','Stuttgart','0711 / 6600 -','01801 999560 5689');
INSERT INTO `Schadenbuero` VALUES (55,1,'TV-Schaden','Adenauerring 11','81737','MÃ¼nchen','089 5121-','089  5121 5968');
INSERT INTO `Schadenbuero` VALUES (56,11,'SchadenbÃ¼ro Frankfurt Kraft','Mainzer Landstr. 82-84','60327','Frankfurt','069 97542-','069 97542 188');
INSERT INTO `Schadenbuero` VALUES (57,11,'SchadenbÃ¼ro Makler Haft','Besenbinderhof 43','20097','Hamburg','040 2865-','040 2865 7419');
INSERT INTO `Schadenbuero` VALUES (58,19,'Sach-Schaden','Pohligstr. 3','50969','KÃ¶ln','0221 9366-','0221 9366 9672');
INSERT INTO `Schadenbuero` VALUES (59,10,'Haftpflichtschaden Aachen','Aureliusstr. 2','52064','Aachen','0241 456-','0241 456 4531');
INSERT INTO `Schadenbuero` VALUES (60,11,'SchadenbÃ¼ro Hamburg Haft','Besenbinderhof 43','20097','Hamburg','040 2865-','040 28652180');
INSERT INTO `Schadenbuero` VALUES (61,11,'Schadenzentrum Makler','Raboisen 38-40','20095','Hamburg','040 180455-','040 180 455 500');
INSERT INTO `Schadenbuero` VALUES (62,1,'TV NORD','Johannisbollwerk 16','20459 Hamburg','Hamburg','040 31176-','040 31176 7157');
INSERT INTO `Schadenbuero` VALUES (63,11,'SchadenbÃ¼ro Frankfurt Haft','Mainzer Landstr. 82-84','60327','Frankfurt','069 97542-','069 97542188');
INSERT INTO `Schadenbuero` VALUES (64,5,'SchadenbÃ¼ro Aachen Haftpflicht','Theaterstr. 35-39','52062','Aachen','0241 456-','0241 456 4531');
INSERT INTO `Schadenbuero` VALUES (65,11,'SchadenbÃ¼ro Stuttgart Sach','Breitwiesenstr. 19','70565','Stuttgart','0711 61913-','0711 6191396');
INSERT INTO `Schadenbuero` VALUES (66,20,'Sach-Schaden','TÃ¼bingerstr. 43','70178','Stuttgart','0711-1695','0711-1695 4441');
INSERT INTO `Schadenbuero` VALUES (67,11,'SchadenbÃ¼ro Berlin Sach','Schillstr. 9','10785','Berlin','030 / 311619 - ','030 / 311619 - 4671');
INSERT INTO `Schadenbuero` VALUES (68,9,'Sach-Schaden Hannover','Karl-Wiechert-Allee 55','30625','Hannover','0511-5701-','0511 5701 1500');
INSERT INTO `Schadenbuero` VALUES (69,1,'SchadenbÃ¼ro Stuttgart Kraft','SchloÃŸstr. 73','70176','Stuttgart','0711-6688-','0711 6688 4211');
INSERT INTO `Schadenbuero` VALUES (70,14,'SAS Hannover','Lange Laube 20','30691','Hannover','0511 1677-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (71,14,'SAS Kiel','Hopfenstr. 29','24103','Kiel','0431 6647','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (72,10,'Kraftfahrt KÃ¶ln','Hansaring 40-50','50670','KÃ¶ln','0221-1636','0221-163755697');
INSERT INTO `Schadenbuero` VALUES (73,21,'Direktion','Alte Leipziger Platz1','61440','Oberursel','06171 66','06171 66 2360');
INSERT INTO `Schadenbuero` VALUES (74,5,'SchadenbÃ¼ro Stuttgart Kraft','RotebÃ¼hlstr. 91-93','70178','Stuttgart','0711 6600 -','01801 999560 5689');
INSERT INTO `Schadenbuero` VALUES (75,10,'Kraftfahrt-Schaden Aachen','Aureliusstr. 2','52064','Aachen','0241-456-','0241-4564554');
INSERT INTO `Schadenbuero` VALUES (76,14,'SAS Bonn','Pfarrer-Byns-Str. 1','53249','Bonn','0228 522','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (77,14,'SAS Dresden','Ferdinandplatz 1','01057','Dresden','0351 49160','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (78,14,'SAS Stuttgart','Silcherstr. 1','70137','Stuttgart','0711 2243','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (104,14,'SAS Chemnitz','BrÃ¼ckenstr. 4','09094','Chemnitz','0371-6954-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (79,14,'SAS Essen','Gildehofstr. 1','45113','Essen','0201-1890','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (80,9,'Schadenservice KÃ¶ln','Konrad-Adenauer-Str. 13','50996','KÃ¶ln','0221 35021','0221 35021 37');
INSERT INTO `Schadenbuero` VALUES (81,9,'Schadenservice Hamburg','AdmiralitÃ¤tsstr. 60','20459','Hamburg','040 333012-','040 333012-60');
INSERT INTO `Schadenbuero` VALUES (82,14,'SAS DÃ¼sseldorf','Willi-Becker-Allee 11','40202','DÃ¼sseldorf','0211 7706-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (83,14,'SAS Kassel','Friedrich-Ebert-Str. 21','34197','Kassel','0561 7204-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (84,14,'SAS Mannheim','Tattelsallstr. 15-17','68122','Mannheim','0621-1807-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (85,14,'SAS MÃ¼nchen','Martin-Greif-Str. 1','80222','MÃ¼nchen','089-54492-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (86,11,'SchadenbÃ¼ro Frankfurt Sach','Mainzer Landstr. 82-84','60327','Frankfurt','069-97542-','069-97542-188');
INSERT INTO `Schadenbuero` VALUES (87,9,'SchadenbÃ¼ro MÃ¼nchen','Bavariaring 8-9','80336','MÃ¼nchen','089 54307-','089');
INSERT INTO `Schadenbuero` VALUES (88,14,'SAS Augsburg','Halder Str. 23','86121','Augsburg','0821 3294','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (89,14,'SAS Leipzig','Querstr. 16','04097','Leipzig','0341 2683','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (90,5,'SchadenbÃ¼ro NÃ¼rnberg Kraft','KÃ¶nigstorgraben 1','90402','NÃ¼rnberg','0911 / 1336 -','01801 999661 1000');
INSERT INTO `Schadenbuero` VALUES (91,14,'SAS Berlin','Marburger Str. 10','10914','Berlin','030 21302-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (92,14,'SAS WÃ¼rzburg','Ludwigstr. 20','97066','WÃ¼rzburg','0931 3059','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (93,14,'SAS Wiesbaden','Mainzer Str. 98- 102','65182','Wiesbaden','0611-7605-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (94,14,'Haftpflicht-Schaden Coburg','Willi-Hussong-Str. 2','96442','Coburg','09561-96-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (95,14,'SAS Hamm','Neue Bahnhofstr. 1','59062','Hamm','02381-902-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (96,9,'Schadenzentrum Dortmund','Westfalendamm 100','44141','Dortmund','0231-941034-','0231-941034-40');
INSERT INTO `Schadenbuero` VALUES (97,14,'SAS GieÃŸen','Sonnenstr. 3','35388','GieÃŸen','0641/9391-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (98,14,'SAS Hamburg','Nagelsweg 41-45','20097','Hamburg','040-23605-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (99,14,'SAS MÃ¼nster','Von-Steuben-Str. 20','48022','MÃ¼nster','0251 5302-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (100,14,'SAS Mainz','Wilhelm-Theodor-RhÃ¶mheld-Str. 28','55097','Mainz','06131 989','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (101,14,'SAS KÃ¶ln','Gereonsdriesch 13','50670','KÃ¶ln','0221/1659-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (102,9,'SchadenbÃ¼ro Bremen','Haferwende 14','28357','Bremen','0421 2578-','0421 2578 60');
INSERT INTO `Schadenbuero` VALUES (103,11,'SchadenbÃ¼ro MÃ¼nchen Kraft','Neuhauser Str. 23','80331','MÃ¼nchen','089 5121','089 2603655');
INSERT INTO `Schadenbuero` VALUES (107,14,'SAS Regensburg','Albrechtstr. 2','93038','Regensburg','0941-5688','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (106,14,'SAS Erfurt','Juri-Gagarin-Ring 53','99112','Erfurt','0361 3447','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (108,14,'SAS Duisburg','Friedrich-Wilhelm-Str. 18','47051','Duisburg','0203/2862-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (109,14,'SAS Frankfurt','Postfach 710452','60494','Frankfurt','069 6602','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (110,22,'SchadenbÃ¼ro Dortmund','Joseph-Scherer-Str. 3','44139','Dortmund','0231 135','0231-1352758');
INSERT INTO `Schadenbuero` VALUES (111,23,'Hauptverwaltung','Kronprinzenallee 12-18','42119','Wuppertal','0202 438','0202 438 2846');
INSERT INTO `Schadenbuero` VALUES (112,22,'SchadenbÃ¼ro Hamburg Sach','Rabenstr.15-19','20354','Hamburg','0700-4124-','04041244902582');
INSERT INTO `Schadenbuero` VALUES (114,14,'SAS SaarbrÃ¼cken','n.b.','n.b.','SaarbrÃ¼cken','0681/3037-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (115,14,'SAS Rostock','LohmÃ¼hlenweg 1','18052','Rostock','0381/4964-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (116,24,'Abteilung Schaden','Paradiesstr. 1','73230','Kirchheim','07021-97097-','07021-71757');
INSERT INTO `Schadenbuero` VALUES (117,26,'SchadenbÃ¼ro Berlin','Charlottenstr. 15','10969','Berlin','030 8878-','030 8878 1989');
INSERT INTO `Schadenbuero` VALUES (118,14,'SAS Koblenz','Franz-Weis-Str. 10','56053','Koblenz','0261 4044-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (119,3,'Sach-Schaden','Frankenthaler Str. 5-9','81501','MÃ¼nchen','089 21609','089 21609749');
INSERT INTO `Schadenbuero` VALUES (120,14,'SAS Bielefeld','Gadderbaumer Str. 18','33583','Bielefeld','0521 5285307','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (121,27,'Sach-Schaden','Sonnenstr. 13','80331','MÃ¼nchen','089 5514','089 598955');
INSERT INTO `Schadenbuero` VALUES (122,28,'SchadenbÃ¼ro MÃ¼nchen','Paul-Heyse-Str. 38','80336','MÃ¼nchen','089 53299-','0511-90711349');
INSERT INTO `Schadenbuero` VALUES (123,11,'Schadenzentrum Ost Berlin','Schillstr. 9','10785','Berlin','030/23147-','030/23147-868');
INSERT INTO `Schadenbuero` VALUES (124,29,'Sach-Schaden Dortmund','Ruhrallee 94','44119','Dortmund','0231-919-','0231-919-3164');
INSERT INTO `Schadenbuero` VALUES (125,14,'SAS Dortmund','Saarlandstr. 25','44139','Dortmund','0231 4347','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (127,14,'SAS Coburg','Callenberger Str. 29','96448','Coburg','09561-96','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (128,9,'Schadenzentrum OsnabrÃ¼ck','Postfach 1560','49005','OsnabrÃ¼ck','0541/33129','0541/33129-839');
INSERT INTO `Schadenbuero` VALUES (129,30,'Sach-Schaden','LÃ¶wentorstr.','70376','Stuttgart','0711-898','0711-898 1870');
INSERT INTO `Schadenbuero` VALUES (130,31,'SchadenbÃ¼ro Itzehoe','HansestraÃŸe 10','25521','Itzehoe','04821/773','04821/772-11');
INSERT INTO `Schadenbuero` VALUES (131,32,'Sach-Schaden','Sophienblatt 33','24114','Kiel','0431 603-','0431 603 10 +DW SB');
INSERT INTO `Schadenbuero` VALUES (132,16,'Haftpflicht-Schaden','Karlstr. 68-72','74076','Heilbronn','07131 186-','07131 186 353');
INSERT INTO `Schadenbuero` VALUES (133,33,'Sach-Schaden','Sulzbachstr. 1-7','90489','NÃ¼rnberg','0911-5307-','0911-5307-1781');
INSERT INTO `Schadenbuero` VALUES (134,34,'Abteilung Schaden','Ostendstr. 100','90337','NÃ¼rnberg','0911-531-','0180-3023028');
INSERT INTO `Schadenbuero` VALUES (135,36,'Frankfurt','VoltastraÃŸe 84','60486','Frankfurt','069-7803-','069-7803-771914');
INSERT INTO `Schadenbuero` VALUES (136,37,'SchadenbÃ¼ro KÃ¶ln','Vor den Siebenburgen 2','50676','KÃ¶ln','0221-931240-','0221-931240 199');
INSERT INTO `Schadenbuero` VALUES (137,38,'Schadenabteilung','Arnulfstr. 31','80636','MÃ¼nchen','089-545801-','089-545801-199');
INSERT INTO `Schadenbuero` VALUES (138,14,'SAS NÃ¼rnberg','Willy-Brandt-Platz 18','90312','NÃ¼rnberg','0911/2498','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (139,39,'Sach-Schaden','Akademiestr. 38','63450','Hanau','06181/9230-','06181/9230-210');
INSERT INTO `Schadenbuero` VALUES (140,36,'SchadenbÃ¼ro Stuttgart','Mittlerer Pfad 24','70499','Stuttgart','0711-1395','0711-1395 77+Durchwa');
INSERT INTO `Schadenbuero` VALUES (141,60,'Schadentransfer','Lerchenauer Str. 331','80995','MÃ¼nchen','089-5527328 0','089-31869369');
INSERT INTO `Schadenbuero` VALUES (142,40,'SchadenbÃ¼ro MÃ¼nchen','Hopfenstr. 6','80335','MÃ¼nchen','089-63206','089-63206-156');
INSERT INTO `Schadenbuero` VALUES (143,8,'SchadenbÃ¼ro Berlin','Dovestr. 2-4','10587','Berlin','030-399222','030-3992226141');
INSERT INTO `Schadenbuero` VALUES (144,14,'Haftpflicht-Schaden Augsburg','Halderstr. 23','86121','Augsburg','0821/3294-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (145,41,'Abteilung Schaden','Dorfstr. 38','25924','EmmelsbÃ¼ll-HorsbÃ¼ll','04665 9404','04665 0404 22');
INSERT INTO `Schadenbuero` VALUES (146,17,'GeschÃ¤ftstelle Wiesbaden','Moritzstr. 27','65185 ','Wiesbaden','0611 1407','0611 1407 444');
INSERT INTO `Schadenbuero` VALUES (147,1,'SchadenbÃ¼ro Berlin Kraft','Lietzenburger Str. 75','10719 ','Berlin','030-311619','030-311619 4671');
INSERT INTO `Schadenbuero` VALUES (148,42,'Schadenbearbeitung','Carl-Zeiss-Str. 10','63322','RÃ¶dermark','06074 69665-0','06074 69665-11');
INSERT INTO `Schadenbuero` VALUES (149,14,'Kfz-Schaden ','Postfach 710452','60494','Frankfurt','069 6602','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (150,43,'Abteilung Schaden','Paradiesstr. 1','73230','Kirchheim unter Teck','07021-97097','07021-71757');
INSERT INTO `Schadenbuero` VALUES (151,44,'Abteilung Schaden','WaldstraÃŸe 34','85586','Poing','08121 7733','08121 773-99');
INSERT INTO `Schadenbuero` VALUES (152,36,'Direktion ','','70499','Stuttgart','0711 1395 ','0711 1395 ');
INSERT INTO `Schadenbuero` VALUES (153,45,'Assekuranz Herrmann','Am Hardtwald 1','76275','Ettlingen','07243-500','07243-500555');
INSERT INTO `Schadenbuero` VALUES (154,5,'SchadenbÃ¼ro Aachen Kraftfahrt','AureliusstraÃŸe 2 ','52064','Aachen','0241/456-','0241/456-4554');
INSERT INTO `Schadenbuero` VALUES (155,46,'Fachcenter Schaden','GroÃŸe BÃ¤ckerstr. 7','20095','Hamburg','040-37663-','040-3766398-+Durchwa');
INSERT INTO `Schadenbuero` VALUES (156,14,'Haftpflicht-Schaden Freiburg','Engelberger StraÃŸe 21','79073','Freiburg','0761/3801-307','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (161,9,'Haftpflichtschaden','Friedrichstr. 60','10117','Berlin','030/20373-','030/20373-175');
INSERT INTO `Schadenbuero` VALUES (162,47,'Hauptabteilung 6 ZN','SteinbÃ¼hler Str. 4-6','90443','NÃ¼rnberg','0911 2428-','0911 2428775');
INSERT INTO `Schadenbuero` VALUES (163,9,'Sach-Schaden Berlin','Friedrichstr. 60','10117','Berlin','030-20373','030-20373-175');
INSERT INTO `Schadenbuero` VALUES (164,37,'SchadenbÃ¼ro MÃ¼nchen','Hermann-Lingg-Str.16','80336','MÃ¼nchen','089/51491-','089/51491-97');
INSERT INTO `Schadenbuero` VALUES (165,52,'Sachschaden Hannover','GroÃŸ-Buchholzer Kirchweg 49','30655','Hannover','0511 / 54 48 88','0511 / 54 48 88 - 22');
INSERT INTO `Schadenbuero` VALUES (166,14,'KH-Schaden','Lange Laube 20','30691','Hannover','0180 2153153','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (167,3,'Abteilung 8SG','Warngauer Str. 30','81539','MÃ¼nchen','089 2160','089 21601536');
INSERT INTO `Schadenbuero` VALUES (168,53,'Schadenbearbeitung','Grenzstr. 24','26382','Wilhelmshaven',' 04421 / 7557-','');
INSERT INTO `Schadenbuero` VALUES (169,49,'','','','','','');
INSERT INTO `Schadenbuero` VALUES (170,37,'SchadenbÃ¼ro Frankfurt','GroÃŸe Friedberger StraÃŸe 42','60313','Frankfurt','069 / 299863','069 / 299863-30');
INSERT INTO `Schadenbuero` VALUES (171,10,'MÃ¼nchen Gewerbe Sach','Adenauerring 11','81737','MÃ¼nchen','089/5121-','089/5121-1039');
INSERT INTO `Schadenbuero` VALUES (172,54,'Zentrale KÃ¶ln','Riehler Str. 190','50735','KÃ¶ln','0221 757-','0221 757 39 + DW');
INSERT INTO `Schadenbuero` VALUES (173,55,'KÃ¶ln','Deutz-Kalker-Str. 46','50679','KÃ¶ln','0221 8277-','0221 8277-2561');
INSERT INTO `Schadenbuero` VALUES (174,54,'KÃ¶ln','Riehler Str. 3','50668','KÃ¶ln','0221 757 ','0221 757 3933 80');
INSERT INTO `Schadenbuero` VALUES (175,54,'MÃ¼nster','Von-Steuben-Str. 14','48143','MÃ¼nster','0251 5903','0251 5903 39120');
INSERT INTO `Schadenbuero` VALUES (176,54,'Essen','RÃ¼ttenscheider Str. 41','45128','Essen','0201 7243','0201 724339380');
INSERT INTO `Schadenbuero` VALUES (178,54,'SaarbrÃ¼cken','Trierer Str. 16-20','66111','SaarbrÃ¼cken','0681 4006','0681 4006-39');
INSERT INTO `Schadenbuero` VALUES (179,54,'Wuppertal','Friedrich-Engels-Allee 20','42103','Wuppertal','0202-4932','0202-4932-39186');
INSERT INTO `Schadenbuero` VALUES (181,56,'KÃ¶nigswinter','Johannes-Albers-Allee 2','53639','KÃ¶nigswinter','02223 9217','02223 921750');
INSERT INTO `Schadenbuero` VALUES (182,54,'Regensburg','Richard-Wagner-Str. 5','93055','Regensburg','0941-79608','0941-79 68 039281');
INSERT INTO `Schadenbuero` VALUES (183,14,'AD DACH GmbH & Co. KG','Infanteriestr. 11','80797','MÃ¼nchen','08920208888','0892020888899');
INSERT INTO `Schadenbuero` VALUES (184,10,'Schadentransfer','Lerchenauer Str. 331','80995','MÃ¼nchen','089','089');
INSERT INTO `Schadenbuero` VALUES (185,47,'Hauptabteilung 8SG','Warngauer Str.  30','81539','MÃ¼nchen','089 2160','089 21603302 ');
INSERT INTO `Schadenbuero` VALUES (186,49,'DEVK Versicherungen','Budapester Str. 31','01069','Dresden','0351 4699','0351 4699 39385');
INSERT INTO `Schadenbuero` VALUES (187,54,'Dresden','Budapester Str. 31','1069','Dresden','0351 4699','0351 4699 39385');
INSERT INTO `Schadenbuero` VALUES (188,10,'KFZ MÃ¼nchen','Adenauerring 11','81725 ','MÃ¼nchen','089 5121','089 51210');
INSERT INTO `Schadenbuero` VALUES (189,54,'Stuttgart','NeckarstraÃŸe 146','70190','Stuttgart','0711 / 6668-182','0711 / 666839-182');
INSERT INTO `Schadenbuero` VALUES (191,54,'Hannover','Hamburger Allee 20-22','30161','Hannover','0511/3399','0511/3399-39');
INSERT INTO `Schadenbuero` VALUES (192,57,'Servicecenter Sach-Schaden','Am Hardtwald 3','76275','Ettlingen','07243-500','07243-500 19+DW');
INSERT INTO `Schadenbuero` VALUES (196,58,'Zweigniederlassung Berlin','Warschauer Str. 38','10243','Berlin','030 2933 53','030 2933 53 19');
INSERT INTO `Schadenbuero` VALUES (194,54,'Frankfurt','GÃ¼terplatz 8','60327','Frankfurt','+49 69 75303 ',': +49 69 75303 39 ');
INSERT INTO `Schadenbuero` VALUES (195,54,'SchadenbÃ¼ro Frankfurt','GÃ¼terplatz 8','60327','Frankfurt','+49 69 75303 ','+49 69 75303 39 ');
INSERT INTO `Schadenbuero` VALUES (197,34,'Haftpflicht-Schaden','OstendstraÃŸe 100','90337','NÃ¼rnberg','0911 531','0180 3 023028');
INSERT INTO `Schadenbuero` VALUES (198,59,'Heidelberg','Postfach 10 41 69','69031 ','Heidelberg','06221-709','06221-7091536');
INSERT INTO `Schadenbuero` VALUES (199,60,'Direktion','Gutenbergstr. 30','70176','Stuttgart','0711 662','0711 662-823138');
INSERT INTO `Schadenbuero` VALUES (200,61,'Sach-Schaden','AdmiralitÃ¤tsstrasse 67','20459','Hamburg','040-36139','040-36139467');
INSERT INTO `Schadenbuero` VALUES (201,54,'MÃ¼nchen','Hirtenstr. 24','80335','MÃ¼nchen','089/55110','089/55110-39285');
INSERT INTO `Schadenbuero` VALUES (202,54,'Karlsruhe','Nebeniusstr. 30-32','76137','Karlsruhe','0721-3552-','0721-3552-39288');
INSERT INTO `Schadenbuero` VALUES (203,60,'Betriebsdirektion Karlruhe','Friedrich-Scholl-Platz','76137','Karlruhe','0721-353 ','0721-353 88 2144');
INSERT INTO `Schadenbuero` VALUES (204,62,'Sachschaden','Landsberger Str. 374','80687','MÃ¼nchen','089 20208888-','089 20208888-99');
INSERT INTO `Schadenbuero` VALUES (205,63,'Sachschaden','Landsberger Str. 374','80687','MÃ¼nchen','089 20208888-','089 20208888-99');
INSERT INTO `Schadenbuero` VALUES (206,60,'Leipzig','Goyastr. 2 d','04105','Leipzig','0341-1271','0341-1271-177');
INSERT INTO `Schadenbuero` VALUES (207,54,'NÃ¼rnberg','Essenweinstr. 4-6','90443','NÃ¼rnberg','0911-2365-','0911-2365-39291');
INSERT INTO `Schadenbuero` VALUES (208,28,'SchadenbÃ¼ro Berlin','Kaiserin-Augusta-Allee 104','10553','Berlin','030-34678-','030-34678534');
INSERT INTO `Schadenbuero` VALUES (209,28,'Hannover','VHV-Platz 1/Constantinstrasse 90','30177','Hannover','0511-907-','0511-907-8999');
INSERT INTO `Schadenbuero` VALUES (210,60,'Hannover','BaringstraÃŸe 6','30159','Hannover','0511 / 34848  ','0511 / 34848-326');
INSERT INTO `Schadenbuero` VALUES (211,60,'KÃ¶ln Sachschaden','Riehler StraÃŸe 36','50668','KÃ¶ln','0221 / 97351','0711 / 662-80-5940');
INSERT INTO `Schadenbuero` VALUES (212,60,'Stuttgart (West)','Gutenbergstr. 30','70176','Stuttgart  (West)','07195 / 136','07195 / 136171');
INSERT INTO `Schadenbuero` VALUES (213,60,'MÃ¼nchen','','','MÃ¼nchen','089-45721','089-45721128');
INSERT INTO `Schadenbuero` VALUES (214,60,'Hamburg','','','Hamburg','040-36154','040-69154');
INSERT INTO `Schadenbuero` VALUES (215,7,'MÃ¼nchen','Marsstr. 37','80335','MÃ¼nchen','089-5114','089-5114-2959');
INSERT INTO `Schadenbuero` VALUES (216,16,'Frankfurt','Speicherstr. 55','60327','Frankfurt','069 97113-','069 97113-');
INSERT INTO `Schadenbuero` VALUES (217,49,'','','','','','');
INSERT INTO `Schadenbuero` VALUES (218,64,'Schadenservice Haftpflicht','Hansaallee 199','40549','DÃ¼sseldorf','0211 536','0211 536 3497');
INSERT INTO `Schadenbuero` VALUES (219,65,'Schadenservice KÃ¶ln','Aachener Str. 952-958','50933','KÃ¶ln','0221-4893','0221');
INSERT INTO `Schadenbuero` VALUES (220,54,'Hamburg','Ehrenbergstr.  41-45','22767','Hamburg','040-38103','040-3810339180');
INSERT INTO `Schadenbuero` VALUES (221,14,'SAS Aachen','Franzstr. 2','52045','Aachen','0241 / 4794-','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (222,66,'Abteilung Schaden','Victoriaplatz 2','40198','DÃ¼sseldorf','02153 1217','02153 1217 344');
INSERT INTO `Schadenbuero` VALUES (223,64,'Schadenservice Sach','Hansaallee 199','40549','DÃ¼sseldorf','0211-536','0211-536 3497');
INSERT INTO `Schadenbuero` VALUES (224,14,'SAS Magdeburg','Schleinufer 16','39082','Magdeburg','0391 5964','08002- 485329');
INSERT INTO `Schadenbuero` VALUES (225,60,'SH Haftpflicht Schaden Stuttgart','RotebÃ¼hlplatz 20','70173','Stuttgart','0711 / 662 -','0711 / 662 - 821966');
INSERT INTO `Schadenbuero` VALUES (226,13,'Landshut','SchlachthofstraÃŸe 57','84034','Landshut','0871 / 89144','0871 / 26941');
INSERT INTO `Schadenbuero` VALUES (227,66,'Berlin','CharlottenstraÃŸe 15','10969','Berlin','030 / 8878-','030 / 8878-1829');
INSERT INTO `Schadenbuero` VALUES (228,66,'Leipzig','Lessingstr. 1','04109','Leipzig','0341-9855-','0341-9855-498');
INSERT INTO `Schadenbuero` VALUES (229,66,'MÃ¼nchen','Thomas-Dehler-Str. 9','81737','MÃ¼nchen','089-6275-','089-6275-5290');
INSERT INTO `Schadenbuero` VALUES (230,66,'RegierungsauÃŸendienst','Victoriaplatz 2','40477','DÃ¼sseldorf','0201 / 615495','0201 / 61549587');
INSERT INTO `Schadenbuero` VALUES (231,66,'Hamburg','Ãœberseering 32','22297','Hamburg','040 / 6364-','040 / 6364-1353');
INSERT INTO `Schadenbuero` VALUES (232,66,'Mannheim','am Victoria Turm 2','68163','Mannheim','0621-4205-','0621-4205-555');
INSERT INTO `Schadenbuero` VALUES (233,54,'Berlin','SchÃ¶neberger Ufer 89','10785','Berlin','030 / 25 48 7','(0 30) 25 48 73 91 1');
INSERT INTO `Schadenbuero` VALUES (234,66,'DÃ¼sseldorf','FischerstraÃŸe 10','40198','DÃ¼sseldorf','0211 / 477','0211 / 477-1453');
INSERT INTO `Schadenbuero` VALUES (235,28,'Schadentransfer VHV','','30177','Hannover','','');
INSERT INTO `Schadenbuero` VALUES (236,54,'Schwerin','Wismarsche Str. 164','19053 ','Schwerin','0385 / 5577','0385 / 5577-39-192');
INSERT INTO `Schadenbuero` VALUES (237,47,'Ã–RAG Service GmbH','Hansaallee 199','40549','DÃ¼sseldorf','0211 536','0211 536 3291');
INSERT INTO `Schadenbuero` VALUES (238,14,'','','','','','');
INSERT INTO `Schadenbuero` VALUES (239,8,'SchadenbÃ¼ro MÃ¼nchen','RidlerstraÃŸe 75 ','80339','MÃ¼nchen','089 / 5406184','089 / 5406-18497');
INSERT INTO `Schadenbuero` VALUES (240,9,'Schadenzentrum Karlsruhe','Karlstr. 49a','76133','Karlsruhe','0721/7081','0511/5701-250');
INSERT INTO `Schadenbuero` VALUES (241,67,'SchadenbÃ¼ro Frankfurt','QuerstraÃŸe 8-10','60322','Frankfurt am Main','069 / 25615-','069 / 25615-52124');
INSERT INTO `Schadenbuero` VALUES (243,14,'SAS Halle','Merseburger Str. 46','06146','Halle','0345-2304-157','0800-2485329');
INSERT INTO `Schadenbuero` VALUES (244,49,'','','','','','');
INSERT INTO `Schadenbuero` VALUES (245,69,'Abteilung Schaden','Kochstr. 26','10969','Berlin','030-2587','030-2587-8+Durchwahl');
/*!40000 ALTER TABLE `Schadenbuero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-24  0:54:01
