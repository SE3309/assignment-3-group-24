-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: dispatcher_management_system
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Trucks`
--

DROP TABLE IF EXISTS `Trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trucks` (
  `Truck_ID` int NOT NULL AUTO_INCREMENT,
  `License_Plate` varchar(15) DEFAULT NULL,
  `Truck_Brand` varchar(50) DEFAULT NULL,
  `Max_Capacity` varchar(30) DEFAULT NULL,
  `Total_Driven` int DEFAULT '0',
  `Availability` smallint DEFAULT NULL,
  `Last_Service_Date` date DEFAULT NULL,
  `Dispatcher_ID` int DEFAULT NULL,
  PRIMARY KEY (`Truck_ID`),
  KEY `Dispatcher_ID` (`Dispatcher_ID`),
  CONSTRAINT `trucks_ibfk_1` FOREIGN KEY (`Dispatcher_ID`) REFERENCES `Dispatcher` (`Dispatcher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trucks`
--

LOCK TABLES `Trucks` WRITE;
/*!40000 ALTER TABLE `Trucks` DISABLE KEYS */;
INSERT INTO `Trucks` VALUES (1,'YLT-482','Rose, Jackson and Smith','26171',98235,0,'2024-07-31',1),(2,'985 ART','Walters, May and Jones','5505',6225,1,'2024-03-10',1),(3,'4U 24309','Burns Ltd','11078',24982,1,'2024-01-05',1),(4,'9MV2646','Allen, Frank and Anderson','11252',39919,1,'2024-01-22',1),(5,'KUO 606','Levy, Davidson and Chavez','12721',6847,1,'2024-08-07',1),(6,'66SX305','Carpenter LLC','9839',16914,1,'2024-05-01',1),(7,'QBW 184','Salas Inc','21049',9377,1,'2024-04-16',1),(8,'81XB492','Klein Group','20120',11439,1,'2024-09-01',1),(9,'729 3264','Bailey Ltd','6596',4554,1,'2024-05-17',1),(10,'TFP 718','Gallegos, Davies and Wagner','15605',25773,1,'2024-09-13',1),(11,'981-165','Jenkins and Sons','16233',75692,0,'2024-03-20',1),(12,'5-63362','Lane-Boyd','11650',66555,1,'2024-04-03',1),(13,'6AH 387','Martinez-Coleman','26639',74754,1,'2024-03-23',1),(14,'LLC 059','Johnson, Heath and Hill','5299',21224,1,'2024-01-20',1),(15,'434 VGS','Bond, Garrett and Bradley','14330',61811,1,'2024-03-10',1),(16,'866 DY0','Wade, Valenzuela and Jacobson','15984',41153,1,'2024-03-30',1),(17,'08W 401','Hernandez, Li and Mann','18233',12695,1,'2024-09-24',1),(18,'BUP-4523','Nielsen-Garza','5236',45379,1,'2024-02-09',1),(19,'YCY-4185','Young-Johnson','13405',7823,1,'2024-09-03',1),(20,'U17 8OR','Porter, Duncan and Fox','7251',52852,1,'2024-03-22',1),(21,'RL8 R7E','Flynn-French','9285',12434,1,'2024-09-20',1),(22,'6-94749X','Evans Ltd','12975',83331,0,'2024-09-08',1),(23,'VOM8110','Quinn Inc','13021',90497,0,'2024-11-16',1),(24,'MTG 561','Jordan, Wilson and Hahn','15594',26718,1,'2024-11-10',1),(25,'YSR 5280','Evans-Holden','7981',51630,1,'2024-10-20',1),(26,'XZC-052','Taylor PLC','7699',55898,1,'2024-07-08',1),(27,'MT-1838','Graham LLC','25304',78086,0,'2024-09-26',1),(28,'PGD-0001','Jones-Love','6656',2920,1,'2024-04-04',1),(29,'HCT 431','Richard-Jones','8579',75198,0,'2024-02-07',1),(30,'SGY-0567','Medina Ltd','16415',80027,0,'2024-08-26',1),(31,'ZED 487','Jones-Hall','25341',47079,1,'2024-07-05',1),(32,'331-AEQF','Johnson-Hart','10363',35608,1,'2024-05-25',1),(33,'8CR7236','Moore, Fox and Wilson','12191',43047,1,'2024-03-08',1),(34,'6-96874D','Mcintosh, Chan and Reynolds','13001',45761,1,'2024-01-26',1),(35,'PHY8732','Cole-Robbins','13769',29135,1,'2024-03-14',1),(36,'950B','Hancock and Sons','15812',99123,0,'2024-01-10',1),(37,'979 MLG','Torres-Roman','10826',28546,1,'2024-11-18',1),(38,'KZO 120','Carey-Miller','23033',94864,0,'2024-03-02',1),(39,'1XT7016','Carter, Fowler and Hernandez','5792',20363,1,'2024-02-02',1),(40,'TSR-236','Sullivan, Gonzalez and Webb','11681',65629,1,'2024-10-08',1),(41,'756-YSZ','Guerrero PLC','22052',25411,1,'2024-03-18',1),(42,'092 YJK','Reed, Morgan and Carter','29962',94830,0,'2024-04-05',1),(43,'098X','Holmes and Sons','28806',94693,0,'2024-01-02',1),(44,'HBE 165','Morris-Smith','18080',17373,1,'2024-11-18',1),(45,'BLN5759','Ruiz-Knapp','28009',21625,1,'2024-08-08',1),(46,'9TK 936','Hancock Group','26955',41225,1,'2024-11-13',1),(47,'33-UI15','Brown-Weber','28913',31076,1,'2024-06-08',1),(48,'369-ZZD','Reynolds, Andrews and Carpenter','15127',24207,1,'2024-10-14',1),(49,'8Z660','Hayden-Guerra','11834',32852,1,'2024-02-24',1),(50,'VQT 548','Hill-Wu','8268',28094,1,'2024-10-19',1),(51,'5JGU024','Davenport-Lozano','11405',19596,1,'2024-02-27',1),(52,'5SGQ 56','Williams, Nielsen and Smith','19434',96004,0,'2024-06-22',1),(53,'LUW 169','Gomez-Harris','12835',97919,0,'2024-10-12',1),(54,'89I 042','Lane, Wilson and Anderson','9041',58952,1,'2024-06-30',1),(55,'553 QBR','Schroeder-Smith','28782',11215,1,'2024-02-04',1),(56,'ZDJ 231','Meyers, Richardson and Powell','8538',31674,1,'2024-08-27',1),(57,'LTC 663','Hunter-Baldwin','13082',69590,1,'2024-06-10',1),(58,'3-7361M','Rodriguez, Bautista and Stokes','29861',69373,1,'2024-05-25',1),(59,'9TH 237','Reese LLC','12611',82862,0,'2024-02-17',1),(60,'HKR-9036','Cross, Padilla and Sherman','16026',70232,1,'2024-01-17',1),(61,'6F450','Payne, Park and Johns','8244',38337,1,'2024-10-10',1),(62,'112EUR','Brown-Flores','16255',29842,1,'2024-08-21',1),(63,'UIG-610','Ritter-Berry','10659',55613,1,'2024-10-26',1),(64,'MCG 124','Kramer, Gutierrez and Davis','8866',61436,1,'2024-02-25',1),(65,'WFJ-166','Howard-Miller','10923',66365,1,'2024-08-05',1),(66,'98-1866E','Ross PLC','22107',92633,0,'2024-07-19',1),(67,'705 3KY','Fitzpatrick LLC','18178',7974,1,'2024-07-29',1),(68,'173-513','Jenkins, Banks and Smith','14047',18377,1,'2024-02-20',1),(69,'791 PJU','Hill, Hutchinson and Maynard','8172',67862,1,'2024-04-03',1),(70,'743S5','Gallagher-Yoder','28706',24258,1,'2024-04-13',1),(71,'RTV 837','Griffith-Waller','5512',14021,1,'2024-03-20',1),(72,'QYN3340','Miller-Cooper','24536',37804,1,'2024-09-18',1),(73,'12O•779','Trujillo-Williams','15828',58989,1,'2024-07-03',1),(74,'DQU-977','Webb and Sons','14096',44935,1,'2024-02-02',1),(75,'392 WWF','Smith-Johnson','9102',25527,1,'2024-07-05',1),(76,'PSJ2736','Wagner-Perez','9879',50702,1,'2024-02-19',1),(77,'DXQ-8744','Schmidt Inc','6048',11412,1,'2024-04-03',1),(78,'CK5 4544','Hardy-Young','25245',36795,1,'2024-10-31',1),(79,'2NM0743','Melendez Group','24051',30163,1,'2024-11-16',1),(80,'3-33848M','Wright-Anderson','17080',90687,0,'2024-01-30',1),(81,'EQV-302','Murray, Moore and Hill','17377',97104,0,'2024-04-04',1),(82,'701O4','Schwartz LLC','24093',62642,1,'2024-05-15',1),(83,'089-GHK','Schmidt, Espinoza and Porter','27130',78832,0,'2024-11-11',1),(84,'4OM9434','Grimes and Sons','14986',69618,1,'2024-11-05',1),(85,'64R 092','Jones-Wilson','13958',67158,1,'2024-09-08',1),(86,'3SD 950','Acevedo, Whitney and Henry','22282',86115,0,'2024-07-25',1),(87,'AY 3130','Turner Group','8172',10682,1,'2024-01-27',1),(88,'2-81680','Meyers-Roberts','14067',38955,1,'2024-08-01',1),(89,'565 FKY','Bell PLC','20628',88105,0,'2024-04-18',1),(90,'AR8 6295','Martin, Terrell and Chapman','24979',64184,1,'2024-10-05',1),(91,'751 LZU','Clark, Padilla and Moore','21604',57182,1,'2024-04-06',1),(92,'459 MRG','Jones LLC','8583',31779,1,'2024-06-26',1),(93,'8SA 646','Curtis Ltd','13628',79716,0,'2024-02-28',1),(94,'JIZ-447','Miller, Murphy and Smith','6315',70501,1,'2024-08-24',1),(95,'KDK 483','Pierce Group','17243',82322,0,'2024-09-29',1),(96,'0-9267J','Pitts-Moore','19258',34469,1,'2024-05-09',1),(97,'KIC4512','Jimenez, Kent and Hunt','24661',20998,1,'2024-01-01',1),(98,'05L 683','Mcdonald-Moon','27954',44136,1,'2024-09-22',1),(99,'XHS-113','Wallace-Mckinney','6426',18015,1,'2024-09-11',1),(100,'JEL 634','Hunt, Bell and Liu','13688',88377,0,'2024-07-10',1),(101,'7QE 695','Scott-Carter','10521',25398,1,'2024-03-27',1),(102,'08-34375','Terrell Inc','19355',50298,1,'2024-08-10',1),(103,'038 SHW','Griffin, Smith and Vaughn','28704',41313,1,'2024-10-13',1),(104,'8C Q3062','Sanchez, Ray and Sanchez','22811',96028,0,'2024-08-30',1),(105,'2W YB368','Villa PLC','6573',3680,1,'2024-11-03',1),(106,'721 0100','Chapman, Turner and Curry','23578',92720,0,'2024-07-10',1),(107,'3PGH 56','Wilkinson, Miller and Jones','20176',2900,1,'2024-04-29',1),(108,'WMA7405','Joyce PLC','23502',59468,1,'2024-11-01',1),(109,'832 HWX','Matthews, Freeman and Keller','10401',98994,0,'2024-05-26',1),(110,'358-YLN','Johnson, Taylor and Love','20411',34552,1,'2024-03-04',1),(111,'972555','Huerta Inc','9045',48172,1,'2024-08-21',1),(112,'4SB52','Gonzalez-James','7143',88951,0,'2024-05-12',1),(113,'1HY 277','Hunt-Nguyen','15713',78724,0,'2024-03-29',1),(114,'453-EDC','King Inc','5755',93955,0,'2024-02-09',1),(115,'TUC-1333','Foley Inc','16364',40266,1,'2024-06-03',1),(116,'FHM-927','Nelson and Sons','12043',98361,0,'2024-11-11',1),(117,'703 UUN','Green Group','8475',75662,1,'2024-09-17',1),(118,'5928 HT','Thomas, Scott and Baker','11237',23893,1,'2024-08-06',1),(119,'200 0AC','West and Sons','29533',4888,1,'2024-05-22',1),(120,'LER-2254','Ellison-Powell','12308',59388,1,'2024-06-25',1),(121,'780-WWU','Harmon-Rhodes','20481',55697,1,'2024-10-26',1),(122,'6YO 231','Smith, Rios and May','25796',73170,1,'2024-09-12',1),(123,'H90 1PW','Torres-Long','19808',38137,1,'2024-11-12',1),(124,'9FOX 90','Hall-Hall','9870',32306,1,'2024-05-22',1),(125,'HAU 150','Hernandez PLC','14739',90828,0,'2024-08-28',1),(126,'21F 907','Morris, Powell and Espinoza','14005',58900,1,'2024-06-16',1),(127,'69A J99','Boyd PLC','18984',19109,1,'2024-07-22',1),(128,'3J 02180','Snow-Stevens','5050',64583,1,'2024-01-05',1),(129,'ZXG 533','Lawson-Gonzalez','8405',59705,1,'2024-02-23',1),(130,'MPY 644','Clark-Williams','29298',53697,1,'2024-08-21',1),(131,'3HL0416','Rose LLC','24179',6249,1,'2024-02-01',1),(132,'QTM-7088','Larson LLC','10575',62855,1,'2024-05-30',1),(133,'XW-7569','Russell and Sons','19132',41275,1,'2024-08-22',1),(134,'NQA9578','Carter, Mooney and Hart','14145',95509,0,'2024-03-11',1),(135,'U00 2EB','Villanueva, Byrd and Hall','9004',38714,1,'2024-07-27',1),(136,'312-UNJ','Diaz, Oneal and Bush','23001',66232,1,'2024-02-02',1),(137,'336 RHW','Leblanc Ltd','28539',63224,1,'2024-02-02',1),(138,'RVC-464','Garcia, Bailey and Lee','16815',46594,1,'2024-10-06',1),(139,'DVP 0971','Cook Inc','13347',10069,1,'2024-09-05',1),(140,'2H GZ872','Johnston-Stevens','6560',16224,1,'2024-09-28',1),(141,'GHR 294','Wilson Group','25069',92984,0,'2024-09-02',1),(142,'RCN6113','Jones-Morris','5728',65074,1,'2024-01-17',1),(143,'HWJ-0284','Pittman, Evans and Rios','27874',76186,0,'2024-01-11',1),(144,'SYO-8539','Daniel-Peterson','12318',12412,1,'2024-01-31',1),(145,'28J•008','Vaughn, Rodriguez and Lang','27746',40967,1,'2024-07-01',1),(146,'2L Q1194','Payne, Bailey and Wiley','18516',25591,1,'2024-10-11',1),(147,'683 3919','Navarro, Potter and Carlson','8190',11679,1,'2024-06-13',1),(148,'39B D97','Love-Fernandez','25549',26812,1,'2024-05-04',1),(149,'025 QQZ','Brennan Inc','24771',94153,0,'2024-09-11',1),(150,'0L147','Koch-Jones','5608',12094,1,'2024-08-04',1),(151,'990-UNX','Reed and Sons','11661',31339,1,'2024-10-17',1),(152,'377 8ZM','James, Smith and Gomez','16311',19527,1,'2024-05-24',1),(153,'4NY H13','Rosales Ltd','6250',95666,0,'2024-05-16',1),(154,'6706','Adams LLC','18604',14667,1,'2024-02-25',1),(155,'891D3','Strong, Stuart and Dixon','14476',39226,1,'2024-05-22',1),(156,'6DAB385','Williams PLC','7821',21935,1,'2024-01-14',1),(157,'9QM 949','Robinson Ltd','20377',63837,1,'2024-02-15',1),(158,'5-N3315','Marquez Ltd','10930',27827,1,'2024-11-15',1),(159,'KIX 017','Gill Ltd','10067',19061,1,'2024-07-16',1),(160,'9CQ E64','Tucker-Acevedo','25690',35674,1,'2024-01-16',1),(161,'OND5073','Peterson, Bray and Walker','13573',35944,1,'2024-06-09',1),(162,'3-T4016','Rogers-Paul','26475',54706,1,'2024-09-03',1),(163,'995 KBW','Reid, Hawkins and Smith','16214',14066,1,'2024-02-14',1),(164,'5830','Thomas, Peterson and Reeves','27647',72298,1,'2024-11-11',1),(165,'AUH 787','Green-Young','5721',59903,1,'2024-06-07',1),(166,'8VN 041','Walsh Group','5298',13800,1,'2024-05-11',1),(167,'434-185','White-Pena','11342',43116,1,'2024-02-23',1),(168,'GBO-2602','Baldwin-Ramos','27348',4553,1,'2024-10-21',1),(169,'ZQZ 535','Mills-Miller','22864',22482,1,'2024-10-13',1),(170,'704WA','Zimmerman, Brewer and Strickland','21379',92897,0,'2024-06-26',1),(171,'AZ9 0998','Colon, Smith and Daugherty','14313',67363,1,'2024-08-12',1),(172,'852 YZ8','Ponce-Brown','19158',98921,0,'2024-08-12',1),(173,'774VB','Munoz-Gross','21367',23563,1,'2024-06-11',1),(174,'6203 PF','Drake-Russell','28781',95714,0,'2024-05-16',1),(175,'7RD Y41','Cunningham, Page and Price','24800',26206,1,'2024-11-18',1),(176,'904-EKHK','Dorsey, Gilbert and Gutierrez','24130',29264,1,'2024-10-11',1),(177,'63Z 814','Wade, Thompson and Smith','12921',73594,1,'2024-06-02',1),(178,'50-NQ08','Warner-Davis','7506',68506,1,'2024-01-16',1),(179,'IH 35111','Lawrence-Olson','19247',62121,1,'2024-04-06',1),(180,'8762','Smith-Jones','26157',94188,0,'2024-08-09',1),(181,'6O 86942','Thompson LLC','24914',68939,1,'2024-08-30',1),(182,'WM 14073','Garcia, Gonzalez and Drake','7253',46469,1,'2024-10-25',1),(183,'86JQ2','Gonzalez PLC','19250',67309,1,'2024-02-24',1),(184,'NEI-3360','Warren, Smith and Hicks','10790',82373,0,'2024-05-19',1),(185,'ULL7177','Gutierrez-Ingram','7447',99067,0,'2024-08-01',1),(186,'WRQ2845','Powers, Perry and Garrett','14418',86776,0,'2024-02-19',1),(187,'864 QE8','Anderson, King and Bradshaw','19671',68026,1,'2024-04-19',1),(188,'44O•025','Rodriguez-Taylor','6188',32453,1,'2024-09-30',1),(189,'LTO 415','Smith, Jones and Hughes','5656',57504,1,'2024-06-08',1),(190,'FAI 245','Wright, Sanchez and Bond','26215',75221,0,'2024-09-17',1),(191,'554 EZM','Martin, Cline and Jenkins','21086',11027,1,'2024-09-24',1),(192,'AEL 848','Tate-Richardson','14631',86499,0,'2024-04-20',1),(193,'967 ZNZ','Aguilar, Everett and Bray','6113',48541,1,'2024-05-16',1),(194,'XQA 761','Keith, Jarvis and Jones','28349',17670,1,'2024-11-01',1),(195,'YUD 8948','Bean, Hicks and Patrick','16720',94777,0,'2024-01-25',1),(196,'RNT9027','Tucker-Andrews','19453',17596,1,'2024-03-24',1),(197,'575 THC','Baird-Poole','22910',76103,0,'2024-08-05',1),(198,'93K F45','Turner-Liu','6848',71545,1,'2024-09-15',1),(199,'901 6SU','Lewis-Johnson','23469',45273,1,'2024-03-05',1),(200,'257 LTA','Kennedy-Patterson','24585',93221,0,'2024-07-31',1),(201,'FUC 9292','Chapman, Brown and Ward','28255',16234,1,'2024-03-21',1),(202,'431326','Todd Ltd','28336',57012,1,'2024-09-05',1),(203,'DGA-691','Callahan, Humphrey and Davis','26929',18178,1,'2024-10-23',1),(204,'25LH122','Webb LLC','17921',46280,1,'2024-10-04',1),(205,'454 KOP','Clarke, Yu and Moore','17692',23058,1,'2024-06-18',1),(206,'L38 2PS','Rodriguez LLC','12572',97695,0,'2024-01-06',1),(207,'KNU 376','Hill-Holland','19137',8397,1,'2024-11-05',1),(208,'0-9021Q','Hines, Smith and Vaughan','7777',30211,1,'2024-06-03',1),(209,'KF 18607','Sutton and Sons','10798',55171,1,'2024-08-13',1),(210,'D11 8NV','Garcia Group','20771',29042,1,'2024-09-12',1),(211,'88CM569','Oneill Inc','12298',87859,0,'2024-05-09',1),(212,'AGK 971','Edwards LLC','14237',36564,1,'2024-03-20',1),(213,'9IH 489','Meyer, Adams and Ewing','12989',57861,1,'2024-08-28',1),(214,'YAH-6814','Campbell Group','18896',76016,0,'2024-05-29',1),(215,'0VOX 63','Jones-Hill','11160',46171,1,'2024-03-06',1),(216,'3E 0L1DCK','Williams-Pennington','18288',14910,1,'2024-03-16',1),(217,'991 5PV','Snyder, Schultz and Mcmillan','19487',15096,1,'2024-10-05',1),(218,'GYK-2150','Harvey and Sons','11661',43742,1,'2024-10-10',1),(219,'676 PUW','Pierce-Johnson','5758',45443,1,'2024-01-13',1),(220,'VMZ-0199','Owens, Martin and Boyle','17638',24385,1,'2024-04-26',1),(221,'HDD 729','Hughes PLC','22769',26886,1,'2024-02-15',1),(222,'5YZ Q23','Church, Mitchell and Green','16576',69455,1,'2024-09-29',1),(223,'PIQ 217','Chapman, Stephens and Pearson','26715',97153,0,'2024-10-08',1),(224,'281-IQC','Reid-Sloan','27313',5462,1,'2024-08-15',1),(225,'0KW 177','Boone-Smith','8181',9726,1,'2024-10-07',1),(226,'RDS 229','Gutierrez LLC','9520',55457,1,'2024-07-07',1),(227,'974 CWZ','Gilbert Group','21205',20003,1,'2024-02-18',1),(228,'XRA 038','Smith, Stephenson and Ward','8610',33721,1,'2024-09-01',1),(229,'KNA 962','Reed, Ramos and Williams','14654',46052,1,'2024-05-06',1),(230,'CUN-5586','Edwards, Fields and Porter','15938',30536,1,'2024-09-05',1),(231,'ZEK 720','Washington Inc','7413',36730,1,'2024-09-04',1),(232,'DOS 199','Turner-Raymond','18982',61252,1,'2024-09-23',1),(233,'TXO-8109','Snyder, Reynolds and Johnson','9618',34625,1,'2024-05-13',1),(234,'1FD 017','Thomas-Nichols','29276',82548,0,'2024-07-15',1),(235,'KGN 034','Davis, Blair and Gardner','27342',38167,1,'2024-09-11',1),(236,'3NP2258','Young-Jackson','25352',3166,1,'2024-03-31',1),(237,'66U P79','Mcclure-Little','8270',31012,1,'2024-01-13',1),(238,'5-22035J','Ramirez LLC','25776',41464,1,'2024-11-02',1),(239,'681-XRN','Hawkins PLC','5047',89904,0,'2024-09-25',1),(240,'MSX 862','Moore-Chavez','6528',31852,1,'2024-08-24',1),(241,'BHQ-472','Brown PLC','22048',65295,1,'2024-11-11',1),(242,'ATN-0534','Francis-Wiley','17851',47899,1,'2024-05-10',1),(243,'393 IXV','Garcia LLC','5484',31682,1,'2024-10-17',1),(244,'VXP2215','Johnson, Castillo and Richard','9210',63170,1,'2024-05-09',1),(245,'172V2','Baxter and Sons','27145',72148,1,'2024-07-16',1),(246,'3PG1230','Rodgers LLC','23350',82171,0,'2024-02-23',1),(247,'BYQ-1660','Dunn, Banks and Trevino','10723',18904,1,'2024-04-23',1),(248,'PAC 600','Gonzales and Sons','23951',5377,1,'2024-01-24',1),(249,'KMP 981','Johnson-Sanchez','9711',12405,1,'2024-09-28',1),(250,'5-5421D','Coleman-Higgins','25566',56723,1,'2024-10-31',1),(251,'35-69938','Flores Inc','13012',64141,1,'2024-10-06',1),(252,'XRD-2497','Smith-Owen','18193',54806,1,'2024-07-28',1),(253,'786LD','Jones PLC','17580',7785,1,'2024-09-30',1),(254,'756 2AB','Williams LLC','11285',644,1,'2024-11-12',1),(255,'41J 642','Taylor, Hoffman and Davidson','13426',42150,1,'2024-08-25',1),(256,'9U 8842K','Hatfield PLC','17902',54815,1,'2024-10-25',1),(257,'102-PJK','Hernandez Inc','25233',23711,1,'2024-06-09',1),(258,'43KM2','Garrison PLC','8485',99615,0,'2024-02-21',1),(259,'0LLG 15','Jackson-Oneal','13398',52184,1,'2024-07-17',1),(260,'LPK-0419','Chang-Day','8607',77822,0,'2024-10-26',1),(261,'5F398','Jones, Zimmerman and Murphy','15392',68040,1,'2024-10-18',1),(262,'19W 154','Barnett-Gonzalez','20838',18962,1,'2024-01-10',1),(263,'6-0913Z','Smith-Smith','13651',31872,1,'2024-02-15',1),(264,'I05-62F','Neal-Harris','13110',13763,1,'2024-02-02',1),(265,'226 8HX','Torres Group','21082',19702,1,'2024-05-14',1),(266,'6IL G64','Garcia-Hall','28428',64309,1,'2024-06-04',1),(267,'289-HKB','Townsend Inc','5159',45154,1,'2024-02-15',1),(268,'52-45141','Shaw-Levine','6416',7929,1,'2024-07-27',1),(269,'814 UJG','Bowers-Moore','25193',71932,1,'2024-03-10',1),(270,'8YW57','Chavez, Rivas and Ramirez','27148',36824,1,'2024-07-17',1),(271,'638 1ZW','Allen Group','18292',703,1,'2024-01-09',1),(272,'99H K32','Palmer Inc','24117',22391,1,'2024-11-11',1),(273,'72-34909','Mccarthy Group','27672',97603,0,'2024-06-30',1),(274,'YF5 9363','Garcia, Brown and Owen','10288',65555,1,'2024-06-25',1),(275,'022 PO9','Mosley, Larson and Farrell','12155',63671,1,'2024-11-17',1),(276,'629 SBH','Holland PLC','29933',71982,1,'2024-05-26',1),(277,'RNA 844','Davies LLC','29438',82530,0,'2024-04-30',1),(278,'7GJ M99','Duran-Woodard','27890',14671,1,'2024-05-18',1),(279,'5-96274A','Le PLC','14411',93502,0,'2024-05-05',1),(280,'AJ8 T1Y','Spencer, Roberts and Lopez','26376',84886,0,'2024-04-19',1),(281,'399 WWT','Garner-Burch','15664',25324,1,'2024-07-15',1),(282,'2HC 423','Weaver-Ward','21919',69827,1,'2024-09-06',1),(283,'9-6475T','Harper-Gordon','14533',22847,1,'2024-09-01',1),(284,'LGN 644','Ferguson, Oconnor and Gonzalez','10997',68495,1,'2024-07-27',1),(285,'TBR 171','Lewis, Brown and Cortez','12858',51440,1,'2024-08-27',1),(286,'517-BNR','Harding-Robertson','13864',81053,0,'2024-04-26',1),(287,'438BSH','Green, Carpenter and Burns','14480',72547,1,'2024-07-05',1),(288,'FTC5337','Barnes, Nguyen and Sutton','24640',44782,1,'2024-09-18',1),(289,'JC5 9987','Barton, Nunez and Clark','12788',27761,1,'2024-02-16',1),(290,'ZXG 874','Brown and Sons','19336',52993,1,'2024-10-07',1),(291,'8T 6075C','Sanchez, Hall and Lee','12946',81456,0,'2024-01-28',1),(292,'HYR 734','Peterson, Atkinson and Osborne','26736',61882,1,'2024-03-09',1),(293,'09-FL71','Jacobs-Nguyen','5841',94934,0,'2024-01-30',1),(294,'LTS 354','Hill and Sons','7469',41645,1,'2024-04-08',1),(295,'43R UY3','Jensen Group','29798',5490,1,'2024-05-10',1),(296,'ZAY 584','Sosa-Pope','9648',20716,1,'2024-11-01',1),(297,'256672','Jones, Brooks and Warren','25435',99026,0,'2024-01-03',1),(298,'KDA 665','Mendez and Sons','27488',31094,1,'2024-03-01',1),(299,'452JX','George, Young and Parrish','24154',84974,0,'2024-02-26',1),(300,'LON 923','Rodriguez-Fernandez','5758',65931,1,'2024-10-02',1),(301,'CZ1 L1U','Kennedy LLC','11783',62621,1,'2024-03-18',1),(302,'CJ-1829','Solis PLC','16002',94340,0,'2024-10-12',1),(303,'70H 5662','Jones, Walker and Matthews','16754',77722,0,'2024-07-03',1),(304,'MUU 367','Robinson, Lyons and Duncan','11119',62329,1,'2024-01-21',1),(305,'377 KSK','Bates Inc','6815',17564,1,'2024-01-24',1),(306,'WYK-428','Daniels, Marsh and Walsh','18948',26551,1,'2024-03-14',1),(307,'975 0431','Mahoney Group','22064',21513,1,'2024-04-09',1),(308,'8038','York, Ferguson and Espinoza','28461',35271,1,'2024-08-18',1),(309,'AKD-3548','Liu, Hughes and Lee','23747',35033,1,'2024-04-27',1),(310,'586 QJT','Butler Group','27356',60977,1,'2024-10-27',1),(311,'3P 05917','Quinn and Sons','27337',67340,1,'2024-05-02',1),(312,'188 6937','Abbott Ltd','17946',39975,1,'2024-08-19',1),(313,'160-NIG','Clark-Villegas','11061',697,1,'2024-03-11',1),(314,'6FW L10','Sherman-Smith','28585',30326,1,'2024-08-20',1),(315,'32F YM9','Kaufman Inc','25609',26337,1,'2024-04-08',1),(316,'512-NJW','Haas, Clark and Turner','12157',89341,0,'2024-09-14',1),(317,'764 YQI','Knight, Dixon and Brooks','19553',73946,1,'2024-04-07',1),(318,'4DPR249','Robinson-Stein','28223',18270,1,'2024-06-30',1),(319,'3R 9G0IEN','Raymond, Knight and Martinez','5688',65206,1,'2024-04-18',1),(320,'PKA-4609','Schmidt and Sons','22450',91715,0,'2024-04-07',1),(321,'0-96092','Paul LLC','20596',16672,1,'2024-07-01',1),(322,'7OV V37','West, Martin and Romero','9277',21727,1,'2024-06-09',1),(323,'2N Q2134','Cook and Sons','27601',48894,1,'2024-01-22',1),(324,'JSS-1196','Nicholson PLC','13254',19043,1,'2024-05-04',1),(325,'QV 4624','Rojas-Rodriguez','13590',1650,1,'2024-01-08',1),(326,'UNI-1128','Reynolds-Lester','24296',86042,0,'2024-03-03',1),(327,'XAB-1988','Wolf, Brown and Strong','26575',87943,0,'2024-10-20',1),(328,'7-D2832','Shaw-Liu','22809',32242,1,'2024-04-07',1),(329,'89N J93','Mclaughlin, Turner and Luna','15663',18908,1,'2024-06-11',1),(330,'036 QW3','Brown-Peterson','8440',64951,1,'2024-09-25',1),(331,'1S 72940','Thompson, Garza and Coleman','20136',10848,1,'2024-05-15',1),(332,'915-DOK','Cisneros Ltd','13410',24620,1,'2024-06-11',1),(333,'3G 1895I','Smith, Glover and Mann','8886',29735,1,'2024-08-31',1),(334,'7776 PY','Lee PLC','27897',85311,0,'2024-10-24',1),(335,'041 WNB','Harding PLC','21903',6305,1,'2024-09-06',1),(336,'47-V127','Kelley, Taylor and Townsend','16237',83190,0,'2024-06-28',1),(337,'5NBQ427','Adams-Lawson','14497',12235,1,'2024-04-07',1),(338,'3D 14426','Maxwell-Clark','16380',48480,1,'2024-07-01',1),(339,'KPL 896','Parker, Martinez and Parker','12993',60218,1,'2024-11-14',1),(340,'4XJO 54','Ramsey, Anderson and Reyes','29876',94245,0,'2024-02-06',1),(341,'369 QEU','Graham PLC','18726',79388,0,'2024-08-23',1),(342,'5QF29','Fernandez Group','16426',92714,0,'2024-09-18',1),(343,'6GL4626','Moon, Olson and Ortega','7711',59638,1,'2024-08-15',1),(344,'7WX I33','Martinez, Lambert and Evans','15879',93355,0,'2024-08-28',1),(345,'404-ELM','Perez Inc','11792',97192,0,'2024-11-12',1),(346,'VFB 1523','Gates PLC','29511',41220,1,'2024-11-05',1),(347,'QMB 299','Chavez, Guzman and Johnson','15462',8664,1,'2024-03-15',1),(348,'ROE 147','Miller-Pham','9686',98798,0,'2024-07-12',1),(349,'02HY5','Lucas Ltd','25912',73801,1,'2024-09-29',1),(350,'1CN O88','Moreno-Arias','7670',16976,1,'2024-03-15',1),(351,'044-YKXA','Esparza Ltd','8119',90060,0,'2024-01-09',1),(352,'623-LOY','Jackson Ltd','15146',82929,0,'2024-07-31',1),(353,'684 YLB','Ford, Schneider and Graves','22894',14162,1,'2024-08-18',1),(354,'7XX P95','Zamora-Fisher','10053',58853,1,'2024-07-17',1),(355,'66-W974','Rhodes-Williams','6139',66838,1,'2024-07-31',1),(356,'56AH8','Jackson-Gonzalez','23068',88083,0,'2024-03-03',1),(357,'3ED J60','Hobbs-Hill','6572',95763,0,'2024-05-30',1),(358,'571AY','Quinn-Brown','21506',1945,1,'2024-11-17',1),(359,'GP 9986','Hess, Skinner and Rivas','28002',83425,0,'2024-04-12',1),(360,'PAE0381','Hill-Moore','19084',18369,1,'2024-05-23',1),(361,'5G 7030D','Olson and Sons','15419',89306,0,'2024-07-16',1),(362,'SZN-4854','Kim PLC','5006',73248,1,'2024-10-04',1),(363,'47-09390','Robinson, Mccullough and Moon','14706',76591,0,'2024-07-18',1),(364,'129406','Clarke, Hill and Anderson','23819',80367,0,'2024-01-13',1),(365,'291 QNB','Mcneil, Lyons and Williams','14522',47102,1,'2024-06-02',1),(366,'3SL7739','Phelps, Cook and Rose','29214',36333,1,'2024-02-24',1),(367,'993163','Hudson, Ramos and Hudson','12543',92496,0,'2024-08-26',1),(368,'TWK-205','Harrison LLC','28208',43995,1,'2024-08-09',1),(369,'26I 3053','Nelson Group','12243',480,1,'2024-05-27',1),(370,'I85 1EY','Evans Ltd','18612',50258,1,'2024-09-06',1),(371,'FAF 802','Cox-Schwartz','24666',41863,1,'2024-08-09',1),(372,'4VL0874','Johnson, Lopez and Stein','5114',12391,1,'2024-02-06',1),(373,'11-9501I','Crawford, Hill and Johnson','24253',94134,0,'2024-05-10',1),(374,'38U 4498','Walls, Mckenzie and Joseph','27485',23891,1,'2024-10-16',1),(375,'KED 225','Downs-Huynh','19948',12870,1,'2024-01-16',1),(376,'4EA 754','Roberts, Cook and Taylor','28449',56123,1,'2024-01-17',1),(377,'47A SO6','Perez-Sherman','11567',39124,1,'2024-01-09',1),(378,'QMX C85','Brown-Salinas','25427',62384,1,'2024-10-16',1),(379,'6-L8445','Fischer and Sons','28245',9925,1,'2024-10-18',1),(380,'98CS0','Arnold LLC','19833',92112,0,'2024-08-02',1),(381,'376-QMM','Conrad PLC','13941',68593,1,'2024-06-07',1),(382,'3A ZK466','Lopez-Thompson','10340',30968,1,'2024-11-01',1),(383,'MV 05652','Nichols-Miller','10447',24007,1,'2024-07-29',1),(384,'VNU-7495','Noble-Wilson','28498',96055,0,'2024-08-07',1),(385,'PKJ3308','Medina-Weeks','5261',10903,1,'2024-02-03',1),(386,'TNL-212','George-Brown','29051',26209,1,'2024-01-12',1),(387,'FDJ 710','Duncan-Cooper','18680',71015,1,'2024-04-20',1),(388,'2-56152U','Smith-Pratt','10061',4729,1,'2024-09-12',1),(389,'OWB Z42','Boyd Inc','17318',77458,0,'2024-02-06',1),(390,'MH5 1862','Wells, Sullivan and Smith','10191',78508,0,'2024-07-22',1),(391,'JZO 188','Travis PLC','5474',26490,1,'2024-04-22',1),(392,'RFR-6331','Hicks Ltd','25758',67976,1,'2024-02-12',1),(393,'1787','Martin, Jones and Miller','14233',99631,0,'2024-07-04',1),(394,'6NL82','Hines Ltd','15447',97007,0,'2024-06-15',1),(395,'EBT9308','Tanner PLC','13182',90317,0,'2024-02-08',1),(396,'NFE 925','Rojas, Anderson and Roberts','27268',13065,1,'2024-07-09',1),(397,'FXO-8874','Phelps Group','29585',18639,1,'2024-10-27',1),(398,'MCP 830','Garcia-Marshall','23105',62256,1,'2024-09-08',1),(399,'670E','Hill, Dickerson and Valdez','21295',37830,1,'2024-05-27',1),(400,'537C2','Orozco, Mitchell and Martin','25599',6829,1,'2024-01-31',1),(401,'319-JYP','Holloway and Sons','7975',15229,1,'2024-08-30',1),(402,'CZ9 S4I','Acosta, Harper and Rowe','29559',62989,1,'2024-07-23',1),(403,'88-U858','Patel Ltd','24148',5960,1,'2024-02-10',1),(404,'740 EGE','Smith-Adams','16342',93653,0,'2024-09-13',1),(405,'359-VUM','Jordan Ltd','13838',71912,1,'2024-01-08',1),(406,'03-YW06','Brown, Warner and Hamilton','19061',82349,0,'2024-06-27',1),(407,'RFG-5616','Pacheco Ltd','19786',43797,1,'2024-08-01',1),(408,'762 QKX','Conley and Sons','25996',47870,1,'2024-11-02',1),(409,'V84 8WX','Snyder, Koch and Marshall','8103',51550,1,'2024-08-12',1),(410,'XYT 5062','Ramirez, Ashley and Huerta','23026',1045,1,'2024-10-04',1),(411,'EWZ1858','Smith, Small and Stone','21818',19163,1,'2024-06-19',1),(412,'AGV 587','Mcclure, Carpenter and Guerrero','24708',37077,1,'2024-06-01',1),(413,'9D421','Williamson-Wright','12971',1718,1,'2024-10-14',1),(414,'O 417382','Melton-Caldwell','10604',45337,1,'2024-09-09',1),(415,'SFI-0066','Patel Inc','9481',92003,0,'2024-06-25',1),(416,'SLC-9111','Gomez-Sanders','5302',64179,1,'2024-01-24',1),(417,'7EN 463','Bond, Fowler and Lawrence','20276',15544,1,'2024-05-31',1),(418,'8-3623F','Huffman-Huff','13623',6012,1,'2024-05-17',1),(419,'WXI 889','Wood Inc','24523',53482,1,'2024-01-17',1),(420,'440 PU3','Villanueva-Webb','8974',76581,0,'2024-02-02',1),(421,'DK 8088','Todd, Stewart and Anderson','16884',97922,0,'2024-10-29',1),(422,'1J 6304Y','Hall Group','15848',70250,1,'2024-02-14',1),(423,'4D 4303P','Martinez-Morrison','26872',88564,0,'2024-08-14',1),(424,'UGG 464','Holt Inc','5591',36857,1,'2024-01-28',1),(425,'0751 FA','Rivera-Archer','24784',90274,0,'2024-08-23',1),(426,'3NEK145','Greene-Olsen','27711',87810,0,'2024-06-15',1),(427,'7X885','Delgado, Walker and Terry','27320',96545,0,'2024-01-31',1),(428,'S93 0ZZ','White LLC','19491',18851,1,'2024-07-10',1),(429,'O04-KJK','Vance, Carlson and Hall','10866',8173,1,'2024-04-09',1),(430,'99W V74','Garcia-Frost','20758',42796,1,'2024-06-07',1),(431,'MCZ7935','Strickland-Hunter','22998',60062,1,'2024-05-23',1),(432,'581 VPA','Webb, Dillon and Oconnell','26649',54310,1,'2024-04-05',1),(433,'1-5440P','White LLC','11989',72023,1,'2024-08-03',1),(434,'363YU','Hamilton-Shields','26522',58044,1,'2024-05-18',1),(435,'HL2 9167','Lee-Evans','22931',72076,1,'2024-03-18',1),(436,'AXZ 006','Cardenas, Hernandez and Watson','5266',88533,0,'2024-02-03',1),(437,'8T 02771','Rodriguez, Mcbride and Williams','10778',62127,1,'2024-05-10',1),(438,'SE 42796','Sullivan-Gonzales','9462',46636,1,'2024-09-19',1),(439,'38W 7073','Blackwell-Davis','20537',41818,1,'2024-03-21',1),(440,'37Y NA6','Macias PLC','22851',14530,1,'2024-06-01',1),(441,'XNL-9009','Glover, Ross and Rogers','6211',5610,1,'2024-01-07',1),(442,'3-83990','Davis-Reid','21880',92025,0,'2024-05-27',1),(443,'GMH1063','Galloway LLC','24327',31535,1,'2024-05-02',1),(444,'724 JSY','Wu LLC','20218',27908,1,'2024-05-11',1),(445,'75KL590','Riley-Morgan','12157',69864,1,'2024-10-09',1),(446,'1OWY581','Jones, Cooper and Cox','24043',20601,1,'2024-04-08',1),(447,'3ARU736','Porter PLC','7151',32693,1,'2024-11-19',1),(448,'ZXM 170','Hodge-Hurley','19438',34683,1,'2024-07-28',1),(449,'967 KCU','Schneider-Rogers','27505',2369,1,'2024-11-17',1),(450,'SGU-1204','Williams, Smith and Fox','10420',17760,1,'2024-06-26',1),(451,'1B256','Davidson Group','8935',83421,0,'2024-04-26',1),(452,'913-YCE','Acevedo-Stark','18856',79080,0,'2024-09-22',1),(453,'YPT-2708','Alexander, Hernandez and Petersen','9650',89630,0,'2024-04-05',1),(454,'PGW-180','Levy Ltd','26127',99476,0,'2024-02-29',1),(455,'SV-7876','Hanson Ltd','8641',37985,1,'2024-09-07',1),(456,'568-NIA','Gonzalez-Frazier','18794',17861,1,'2024-02-05',1),(457,'QWW-8944','Marquez LLC','7161',669,1,'2024-07-09',1),(458,'3W 03554','Velasquez Ltd','25068',20603,1,'2024-05-18',1),(459,'5SVA 26','Cantrell-Carney','28689',42834,1,'2024-09-19',1),(460,'MDJ8660','Cannon, Young and Saunders','16714',37238,1,'2024-02-27',1),(461,'RRB 619','Oliver, Gray and Carroll','13907',83564,0,'2024-07-08',1),(462,'070CR','Wolf and Sons','21897',86106,0,'2024-01-18',1),(463,'31-JZ93','Chen-Wallace','19862',12171,1,'2024-03-21',1),(464,'TFN-3493','Vincent, Warren and Daniels','27552',86777,0,'2024-08-04',1),(465,'ZPQ 787','Cobb-Baldwin','20136',63905,1,'2024-08-05',1),(466,'ENC 8703','Clark, Harper and Reynolds','19499',87613,0,'2024-07-01',1),(467,'HRD 979','Rowe-Matthews','8361',99667,0,'2024-10-22',1),(468,'442-EHW','Hammond-Jackson','9145',95547,0,'2024-06-01',1),(469,'T05 6VZ','Stone, Thompson and Mendez','24903',79112,0,'2024-01-20',1),(470,'836 GHE','Morgan Group','24434',59531,1,'2024-06-04',1),(471,'PDO1115','Briggs-Brown','6378',31314,1,'2024-08-20',1),(472,'4I 69694','Johnston LLC','13102',52347,1,'2024-08-09',1),(473,'6AM1382','Mcguire, Rodgers and Cook','29918',11401,1,'2024-09-14',1),(474,'KPS2669','Bryant and Sons','18201',50797,1,'2024-04-21',1),(475,'2-6797R','Stewart Inc','15287',28132,1,'2024-02-19',1),(476,'851 TNA','Carter, Anderson and Perez','24381',50061,1,'2024-11-02',1),(477,'1RA 774','Johnson-Morris','6087',2465,1,'2024-02-27',1),(478,'1Y 49821','Jackson, Lowe and Bauer','25014',11934,1,'2024-02-12',1),(479,'2F 4004C','Boyle-Salazar','16113',43818,1,'2024-03-08',1),(480,'339 SMW','Browning-Stafford','28717',87018,0,'2024-10-20',1),(481,'FJH N31','Drake PLC','13292',43057,1,'2024-04-07',1),(482,'ECS6230','Smith Inc','6514',89704,0,'2024-09-13',1),(483,'582-PZY','Branch and Sons','6195',18025,1,'2024-02-28',1),(484,'RPG 455','Hall Inc','29707',95724,0,'2024-07-21',1),(485,'LPP-3529','Smith Ltd','26089',97734,0,'2024-04-15',1),(486,'GS 69550','Stewart, Brown and Graham','5113',6261,1,'2024-02-11',1),(487,'611-DUUG','Jones-Le','24959',86563,0,'2024-10-08',1),(488,'79-3826W','Mahoney Group','25185',11052,1,'2024-02-07',1),(489,'LDU 257','Morales LLC','17777',13374,1,'2024-02-08',1),(490,'ISM 778','Brown, Jones and Nolan','13038',32838,1,'2024-09-07',1),(491,'Q 716618','Sanford-Young','7783',18749,1,'2024-02-15',1),(492,'8U 5Z5JSG','Salas-Martin','16294',32603,1,'2024-03-17',1),(493,'431 7920','Parsons-Frank','10899',20773,1,'2024-10-02',1),(494,'8RK18','Vaughn-Frey','6382',81480,0,'2024-05-30',1),(495,'632-RUW','Fisher Ltd','17707',81951,0,'2024-04-01',1),(496,'168 JFW','Robinson, Suarez and Sanchez','27003',70423,1,'2024-04-02',1),(497,'T41-LOL','Cunningham-Johnson','14657',75136,0,'2024-01-19',1),(498,'323 QDC','Miller, Salazar and Jones','16789',25828,1,'2024-02-01',1),(499,'485 ZGF','Lindsey, Friedman and Clark','22124',28764,1,'2024-01-24',1),(500,'NDF4166','Thomas, Kane and Park','16783',91396,0,'2024-04-06',1);
/*!40000 ALTER TABLE `Trucks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 23:21:16