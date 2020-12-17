CREATE DATABASE  IF NOT EXISTS `new_car_system1fixed` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `new_car_system1fixed`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_car_system1fixed
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `counts`
--

DROP TABLE IF EXISTS `counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counts` (
  `ID` int(11) NOT NULL,
  `Rents` int(11) DEFAULT NULL,
  `Reservations` int(11) DEFAULT NULL,
  `Customers` int(11) DEFAULT NULL,
  `Employees` int(11) DEFAULT NULL,
  `Stores` int(11) DEFAULT NULL,
  `Vehicles` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counts`
--

LOCK TABLES `counts` WRITE;
/*!40000 ALTER TABLE `counts` DISABLE KEYS */;
INSERT INTO `counts` VALUES (1,18,18,16,16,5,16);
/*!40000 ALTER TABLE `counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_companies`
--

DROP TABLE IF EXISTS `cust_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_companies` (
  `SSN_cust` bigint(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`SSN_cust`,`Name`),
  CONSTRAINT `con7` FOREIGN KEY (`SSN_cust`) REFERENCES `customers` (`SSN_cust`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_companies`
--

LOCK TABLES `cust_companies` WRITE;
/*!40000 ALTER TABLE `cust_companies` DISABLE KEYS */;
INSERT INTO `cust_companies` VALUES (14294227000,'RentACarGR'),(23779589000,'GermanyTesla'),(32568230000,'TrikalaOnRoad');
/*!40000 ALTER TABLE `cust_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `SSN_cust` bigint(11) NOT NULL,
  `IRS_cust` int(10) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `DriverLicense` int(11) NOT NULL,
  `IdentityNumber` varchar(10) DEFAULT NULL,
  `FirstRegistration` date NOT NULL,
  `Country` varchar(45) NOT NULL,
  `City` varchar(60) DEFAULT NULL,
  `Street` varchar(60) DEFAULT NULL,
  `StreetNumber` int(3) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  `PhoneNumber` bigint(10) DEFAULT NULL,
  `E-mail` varchar(80) DEFAULT NULL,
  `cust_Type` varchar(15) NOT NULL,
  PRIMARY KEY (`SSN_cust`),
  UNIQUE KEY `IRS_cust_UNIQUE` (`IRS_cust`),
  UNIQUE KEY `DriverLicense_UNIQUE` (`DriverLicense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (14294227000,123456782,'Papadopoulos','Kostas',856471232,'UI166686','2015-07-10','Greece','Nauplio','Anagennhshs',43,88752,2196171102,'jd@hotmail.com','Company'),(23779589000,123456791,'Griffith','Adams',856471241,'SV538809','2016-02-07','Germany','Gainesville','Asher',90,88954,2172691356,'ojkhd@hotmail.com','Company'),(24009721000,123456784,'Parks','Aiyana',856471234,'VO534815','2012-04-07','United States','Durham','Esmond',177,57462,2113572552,'lknklmkl','Private Citizen'),(26090876000,123456792,'Trypiti','Aggeliki',856471242,'FT510606','2017-04-17','Greece','Bolos','Aneksartisias',80,56241,2123158473,'konst@gmail.com','Private Citizen'),(28140500000,123456794,'Petrakou','Nontas',856471244,'VJ150232','2011-07-02','Australia','Athens','Solomou',131,54223,2113572552,'oujhui@gmail.com','Private Citizen'),(32568230000,123456786,'Georgiou','Giannis',856471236,'OY118981','2011-07-18','Greece','Trikala','Analhpsews',46,12563,2148803402,'jdhjk@in.gr','Company'),(35507455000,123456785,'Aleksiou','Maria',856471235,'WX916138','2014-09-10','Greece','Chania','Arkadiou',29,58692,2159971526,'sjah@yahoo.com','Private Citizen'),(37481968000,123456796,'Petrou','Aleksia',856471246,'IJ392614','2016-09-23','Greece','Thessaloniki','Aksiou',32,89563,2141243369,'klhiug@gmail.com','Private Citizen'),(39137796000,123456787,'Tharelos','Nikolaos',856471237,'VY124794','2014-09-12','Greece','Arta','Ermou',212,32578,2115128795,'djghdjk@gmail.com','Private Citizen'),(41075947000,123456789,'Panagiotou','Aleksandros',856471239,'YI088775','2017-05-29','Greece','Kalamata','Piliou',187,22698,2116266638,'kjhkj@hotmail.com','Private Citizen'),(42254475000,123456793,'Xalkou','Ariadni',856471243,'AL206557','2014-05-18','Greece','Rhodes','Omirou',245,22478,2163898572,'jhhjk@yahoo.gr','Private Citizen'),(43560918000,123456788,'Koutsou','Katerina',856471238,'WK011110','2015-07-14','Greece','Ioannina','Politi',232,55247,2161098754,'jhjkjj@hotmail.com','Private Citizen'),(52243639000,123456797,'Booth','Frederick',856471247,'MG823988','2013-07-22','France','Augusta','Waldron',233,87456,2183034491,'hhd@gmail.com','Private Citizen'),(54651411000,123456783,'Metaksas','Thanasis',856471233,'NB630458','2011-09-02','Greece','Heraklion','Larisshs',264,66324,2109781683,'khbhjb@gmail.com','Private Citizen'),(57791508000,123456795,'Floros','Manos',856471245,'ZM869053','2015-09-06','Greece','Thessaloniki','Stratiarxou',66,33654,2129730726,'jhjjnl@hotmail.com','Private Citizen'),(62758532000,123456790,'Kyriakidhs','Panagiotis',856471240,'CS725138','2018-01-03','Greece','Athens','Kolokotroni',150,33569,2193984494,'travor@gmail.com','Private Citizen');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addCustomer` BEFORE INSERT ON `customers` FOR EACH ROW
BEGIN
UPDATE counts SET Customers = Customers+1 where ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteCustomer` AFTER DELETE ON `customers` FOR EACH ROW
BEGIN
UPDATE counts SET Customers = Customers-1 where ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
/*!50001 DROP VIEW IF EXISTS `customers_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customers_info` AS SELECT 
 1 AS `SSN_cust`,
 1 AS `IRS_cust`,
 1 AS `DriverLicense`,
 1 AS `FirstRegistration`,
 1 AS `Country`,
 1 AS `Documents`,
 1 AS `cust_Type`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `damages/malfunctions`
--

DROP TABLE IF EXISTS `damages/malfunctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `damages/malfunctions` (
  `VehicleID` int(4) NOT NULL,
  `Damages/Malfunctions` varchar(100) NOT NULL,
  PRIMARY KEY (`VehicleID`,`Damages/Malfunctions`),
  CONSTRAINT `con5` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damages/malfunctions`
--

LOCK TABLES `damages/malfunctions` WRITE;
/*!40000 ALTER TABLE `damages/malfunctions` DISABLE KEYS */;
INSERT INTO `damages/malfunctions` VALUES (15,'broken rear mirror'),(15,'damaged shock absorber'),(41,'hard steering wheel'),(94,'bad breaks'),(136,'car window');
/*!40000 ALTER TABLE `damages/malfunctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e-mail.employee`
--

DROP TABLE IF EXISTS `e-mail.employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e-mail.employee` (
  `SSN_emp` bigint(11) NOT NULL,
  `E-mail` varchar(80) NOT NULL,
  PRIMARY KEY (`SSN_emp`,`E-mail`),
  CONSTRAINT `con15` FOREIGN KEY (`SSN_emp`) REFERENCES `employee` (`SSN_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e-mail.employee`
--

LOCK TABLES `e-mail.employee` WRITE;
/*!40000 ALTER TABLE `e-mail.employee` DISABLE KEYS */;
INSERT INTO `e-mail.employee` VALUES (12345671000,'shgdbnd@hotmail.com'),(12345671100,'hbcgjh@gmail.com'),(12345671200,'hbhydgf@hotmail.com'),(12345671300,'iuefbrhjbf@gmail.com'),(12345671400,'ehbfhe@gmail.com'),(12345671400,'hsgdjs@yahoo.com'),(12345671500,'hhedgey@hotmail.com'),(12345671600,'jehfejdwe@hotmail.com'),(12345678100,'ertyu@hotmail.com'),(12345678200,'dfghj@gmail.com'),(12345678200,'sdfg@gmail.com'),(12345678300,'rtyhjnbv@yahoo.com'),(12345678400,'hhdgu@hotmail.com'),(12345678400,'hsgf@hotmail.com'),(12345678400,'wtefd@gmail.com'),(12345678500,'cvbnjhgf@hotmail.com'),(12345678600,'xghdjnb@gmail.com'),(12345678700,'siduygeh@gmail.com'),(12345678700,'siudjnf@hotmail.com'),(12345678800,'cdbdvih@yahoo.com'),(12345678900,'hduvbcd@yahoo.com');
/*!40000 ALTER TABLE `e-mail.employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e-mail.store`
--

DROP TABLE IF EXISTS `e-mail.store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e-mail.store` (
  `StoreID` int(2) NOT NULL AUTO_INCREMENT,
  `E-mail` varchar(80) NOT NULL,
  PRIMARY KEY (`StoreID`,`E-mail`),
  CONSTRAINT `con1` FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e-mail.store`
--

LOCK TABLES `e-mail.store` WRITE;
/*!40000 ALTER TABLE `e-mail.store` DISABLE KEYS */;
INSERT INTO `e-mail.store` VALUES (1,'rhodes.rents@gmail.com'),(1,'rhodes2.rents@gmail.com'),(2,'patra1.rents@gmail.com'),(2,'patra2.rents@gmail.com'),(3,'heraklion1.rents@gmail.com'),(3,'heraklion2.rents@gmail.com'),(4,'thessaloniki1.rents@gmail.com'),(4,'thessaloniki2.rents@gmail.com'),(5,'athens1.rents@gmail.com'),(5,'athens2..rents@gmail.com');
/*!40000 ALTER TABLE `e-mail.store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `SSN_emp` bigint(11) NOT NULL,
  `IRS_emp` int(10) NOT NULL,
  `IdentityNumber` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `DriverLicense` int(10) NOT NULL,
  `City` varchar(60) DEFAULT NULL,
  `Street` varchar(60) DEFAULT NULL,
  `StreetNumber` int(3) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  PRIMARY KEY (`SSN_emp`),
  UNIQUE KEY `IRS_emp_UNIQUE` (`IRS_emp`),
  UNIQUE KEY `IdentityNumber_UNIQUE` (`IdentityNumber`),
  UNIQUE KEY `DriverLicense_UNIQUE` (`DriverLicense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (12345671000,938762567,'QW 535466','Kantere','Vhrena',2147483647,'Patra','Olgas',45,22345),(12345671100,398273656,'ER 848787','Raiou','Alexandros',125367678,'Patra','Alexandras',66,16344),(12345671200,392876356,'WE 154574','Fligou','Konstantina',484789300,'Athens','Digenh',43,93899),(12345671300,372898265,'UY 456377','Samioth','Georgia',928893767,'Rhodes','Paggaiou',99,33667),(12345671400,392873656,'IU 453676','Kalianiotis','Kiriakos',121345467,'Thessaloniki','Amalthias',12,36454),(12345671500,222345456,'NB 665577','Maurakhs','Athanasios',293878763,'Thessaloniki','Galata',22,16344),(12345671600,298377625,'PO 435267','Marco','Armando',291823878,'Thessaloniki','Agiou Konstantinou',122,16344),(12345678100,134256154,'AG 123456','Georgiou','Ioannis',635782938,'Athens','Pindarou',45,16344),(12345678200,126765143,'AF 123455','Rentou','Eirhnh',983746524,'Athens','Vermiou',34,45655),(12345678300,126789365,'AH 123456','Souliotis','Georgios',998877665,'Patra','Sofokleous',3,34434),(12345678400,236178650,'AR 123345','Titomichelakhs','Ioannhs',223345651,'Corinthos','Sokratous',44,88932),(12345678500,309812675,'AH 278888','Kromida','Maria',987263523,'Peiraeus','Enia',122,93878),(12345678600,376289716,'AU 989833','Geroulh','Magdalhnh',298763540,'Rhodes','Botsarh',32,34672),(12345678700,278165378,'AY 837828','Christos','Souliotis',777777777,'Heraklion','Kefalinias',1,38783),(12345678800,927365428,'AO 656536','Christos','Tsichlis',291876522,'Heraklion','Venizelou',9,43878),(12345678900,289837653,'AW 646464','Nanou','Katerina',235264789,'Heraklion','Vasilews Konstantinou',12,23676);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addEmployee` BEFORE INSERT ON `employee` FOR EACH ROW
BEGIN
UPDATE counts SET Employees = Employees+1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteEmployee` AFTER DELETE ON `employee` FOR EACH ROW
BEGIN
UPDATE counts SET Employees = Employees-1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `new_view1`
--

DROP TABLE IF EXISTS `new_view1`;
/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view1` AS SELECT 
 1 AS `StoreID`,
 1 AS `City`,
 1 AS `Type`,
 1 AS `vcount1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view10`
--

DROP TABLE IF EXISTS `new_view10`;
/*!50001 DROP VIEW IF EXISTS `new_view10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view10` AS SELECT 
 1 AS `Type`,
 1 AS `avr_kilometers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view11`
--

DROP TABLE IF EXISTS `new_view11`;
/*!50001 DROP VIEW IF EXISTS `new_view11`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view11` AS SELECT 
 1 AS `StoreID`,
 1 AS `City`,
 1 AS `anual_income`,
 1 AS `YEAR`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view12`
--

DROP TABLE IF EXISTS `new_view12`;
/*!50001 DROP VIEW IF EXISTS `new_view12`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view12` AS SELECT 
 1 AS `VehicleID`,
 1 AS `LicensePlate`,
 1 AS `NextService`,
 1 AS `InsuranceExp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view2`
--

DROP TABLE IF EXISTS `new_view2`;
/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view2` AS SELECT 
 1 AS `RentID`,
 1 AS `Country`,
 1 AS `SSN_cust`,
 1 AS `PaymentMethod`,
 1 AS `PaymentAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view3`
--

DROP TABLE IF EXISTS `new_view3`;
/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view3` AS SELECT 
 1 AS `StoreID`,
 1 AS `store_city`,
 1 AS `income`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view4`
--

DROP TABLE IF EXISTS `new_view4`;
/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view4` AS SELECT 
 1 AS `SSN_emp`,
 1 AS `StoreID`,
 1 AS `LastName`,
 1 AS `FirstName`,
 1 AS `Position`,
 1 AS `Salary`,
 1 AS `FinishDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view5`
--

DROP TABLE IF EXISTS `new_view5`;
/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view5` AS SELECT 
 1 AS `VehicleID`,
 1 AS `COUNT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view6`
--

DROP TABLE IF EXISTS `new_view6`;
/*!50001 DROP VIEW IF EXISTS `new_view6`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view6` AS SELECT 
 1 AS `black_list`,
 1 AS `LastName`,
 1 AS `FirstName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view7`
--

DROP TABLE IF EXISTS `new_view7`;
/*!50001 DROP VIEW IF EXISTS `new_view7`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view7` AS SELECT 
 1 AS `RentID`,
 1 AS `SSN_cust`,
 1 AS `PaymentMethod`,
 1 AS `PaymentAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view8`
--

DROP TABLE IF EXISTS `new_view8`;
/*!50001 DROP VIEW IF EXISTS `new_view8`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view8` AS SELECT 
 1 AS `VehicleID`,
 1 AS `StartDate`,
 1 AS `FinishDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view9`
--

DROP TABLE IF EXISTS `new_view9`;
/*!50001 DROP VIEW IF EXISTS `new_view9`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view9` AS SELECT 
 1 AS `SSN_cust`,
 1 AS `LastName`,
 1 AS `FirstName`,
 1 AS `sum_rents`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `phone_employee`
--

DROP TABLE IF EXISTS `phone_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_employee` (
  `SSN_emp` bigint(11) NOT NULL,
  `PhoneNumber` bigint(10) NOT NULL,
  PRIMARY KEY (`SSN_emp`,`PhoneNumber`),
  CONSTRAINT `con13` FOREIGN KEY (`SSN_emp`) REFERENCES `employee` (`SSN_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_employee`
--

LOCK TABLES `phone_employee` WRITE;
/*!40000 ALTER TABLE `phone_employee` DISABLE KEYS */;
INSERT INTO `phone_employee` VALUES (12345671000,2827737829),(12345671000,9338828399),(12345671100,2928733990),(12345671200,2092837209),(12345671200,2837829239),(12345671200,9837229930),(12345671300,2939200837),(12345671400,2873729200),(12345671500,8372930029),(12345671600,9198239299),(12345678100,2109711701),(12345678200,2109928822),(12345678200,6912345678),(12345678300,2102833748),(12345678300,2102929292),(12345678400,3838387728),(12345678400,6983373788),(12345678500,3838387272),(12345678600,9292839399),(12345678700,3647388828),(12345678800,2838383829),(12345678800,3929838382),(12345678900,9298382939);
/*!40000 ALTER TABLE `phone_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_store`
--

DROP TABLE IF EXISTS `phone_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_store` (
  `StoreID` int(2) NOT NULL,
  `PhoneNumber` bigint(14) NOT NULL,
  PRIMARY KEY (`StoreID`,`PhoneNumber`),
  CONSTRAINT `con2` FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_store`
--

LOCK TABLES `phone_store` WRITE;
/*!40000 ALTER TABLE `phone_store` DISABLE KEYS */;
INSERT INTO `phone_store` VALUES (1,2813456204),(1,2813456214),(2,2895627083),(2,4443564672),(3,2810235405),(3,2810235413),(4,2310567303),(4,2310567313),(5,2109783450),(5,2109783451);
/*!40000 ALTER TABLE `phone_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rents` (
  `RentID` int(10) NOT NULL,
  `SSN_emp` bigint(11) NOT NULL,
  `SSN_cust` bigint(11) NOT NULL,
  `VehicleID` int(4) NOT NULL,
  `StartDate` date NOT NULL,
  `FinishDate` date DEFAULT NULL,
  `StartLocation` varchar(45) NOT NULL,
  `FinishLocation` varchar(45) DEFAULT NULL,
  `Employee_Hand` bigint(11) NOT NULL,
  `Employee_Receive` bigint(11) DEFAULT NULL,
  `ReturnState` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RentID`),
  KEY `con20_idx` (`SSN_cust`),
  KEY `con21_idx` (`VehicleID`),
  KEY `con22_idx` (`SSN_emp`),
  CONSTRAINT `con20` FOREIGN KEY (`SSN_cust`) REFERENCES `customers` (`SSN_cust`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `con21` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `con22` FOREIGN KEY (`SSN_emp`) REFERENCES `employee` (`SSN_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (1,12345678700,14294227000,29,'2015-08-11','2015-08-14','Heraklion','Heraklion',12345678700,12345678900,'VERY GOOD'),(2,12345678700,14294227000,29,'2016-08-14','2016-08-19','Heraklion','Rhodes',12345678700,12345678900,'GOOD'),(3,12345678300,24009721000,41,'2012-06-01','2012-06-02','Patra','Athens',12345678300,12345678100,'GOOD'),(4,12345678100,24009721000,118,'2012-09-08','2012-09-13','Athens','Athens',12345678100,12345678100,'VERY GOOD'),(5,12345678300,24009721000,82,'2013-09-08','2013-09-11','Patra','Patra',12345678300,12345678300,'GOOD'),(6,12345678900,62758532000,136,'2018-01-03','2018-01-05','Heraklion','Heraklion',12345678900,12345678900,'GOOD'),(8,12345678900,28140500000,5,'2011-07-02','2011-07-04','Rhodes','Athens',12345678600,12345678100,'GOOD'),(9,12345678900,28140500000,94,'2012-05-03','2012-05-05','Heraklion','Thessaloniki',12345678900,12345671600,'VERY GOOD'),(10,12345678300,32568230000,95,'2011-07-23','2011-08-01','Patra','Patra',12345678300,12345678300,'VERY GOOD'),(11,12345678100,41075947000,22,'2017-05-29','2017-05-30','Athens','Athens',12345678100,12345678100,'BAD'),(12,12345671600,42254475000,6,'2014-05-18','2014-05-21','Thessaloniki','Athens',12345671600,12345678100,'BAD'),(13,12345678300,35507455000,82,'2014-09-10','2014-09-12','Patra','Athens',12345678300,12345678100,'GOOD'),(14,12345678300,39137796000,41,'2014-10-01','2014-10-03','Patra','Heraklion',12345678300,12345678900,'BAD'),(15,12345678300,39137796000,41,'2015-10-15','2015-10-20','Patra','Thessaloniki',12345678300,12345671600,'GOOD'),(16,12345678900,43560918000,136,'2015-07-14','2015-07-15','Heraklion','Patra',12345678900,12345678300,'VERY GOOD'),(17,12345678100,52243639000,5,'2013-07-22','2013-07-23','Athens','Athens',12345678100,12345678100,'VERY GOOD'),(18,12345678600,54651411000,15,'2011-09-02','2011-09-03','Rhodes','Rhodes',12345678600,12345678600,'GOOD'),(19,12345671600,57791508000,17,'2015-09-06','2015-09-07','Thessaloniki','Thessaloniki',12345671600,12345671600,'GOOD'),(20,12345671600,57791508000,6,'2018-01-08',NULL,'Thessaloniki',NULL,12345671600,NULL,NULL),(21,12345678600,54651411000,5,'2018-01-07',NULL,'Rhodes',NULL,12345678600,NULL,NULL),(22,12345678300,39137796000,41,'2018-01-09','2018-01-18','Patra','Patra',12345678900,NULL,NULL);
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addRent` BEFORE INSERT ON `rents` FOR EACH ROW
BEGIN
UPDATE counts SET Rents = Rents+1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_car_system1fixed`.`rents_AFTER_DELETE` AFTER DELETE ON `rents` FOR EACH ROW
BEGIN
UPDATE counts SET Rents = Rents-1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `ReservationID` int(10) NOT NULL,
  `SSN_cust` bigint(11) NOT NULL,
  `VehicleID` int(4) NOT NULL,
  `StartDate` date NOT NULL,
  `FinishDate` date DEFAULT NULL,
  `DateOfReserv` date NOT NULL,
  `Paid` varchar(3) DEFAULT NULL,
  `StartLocation` varchar(45) DEFAULT NULL,
  `FinishLocation` varchar(45) DEFAULT NULL,
  `LicensePlate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `con10_idx` (`SSN_cust`),
  KEY `con11_idx` (`VehicleID`),
  CONSTRAINT `con10` FOREIGN KEY (`SSN_cust`) REFERENCES `customers` (`SSN_cust`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `con11` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,14294227000,29,'2015-08-11','2015-08-14','2015-07-10','YES','Heraklion','Heraklion','GKO6026'),(2,14294227000,29,'2016-08-14','2016-08-19','2016-08-11','NO','Heraklion','Rhodes','GKO6026'),(3,23779589000,36,'2016-02-09','2016-02-17','2016-02-07','YES','Thessaloniki','Thessaloniki','YXO8125'),(4,24009721000,41,'2012-06-01','2012-06-02','2012-04-07','YES','Patra','Athens','RHG4910'),(5,24009721000,118,'2012-09-08','2012-09-13','2012-04-07','YES','Athens','Athens','JOH1962'),(6,24009721000,114,'2016-11-12','2016-11-15','2012-04-07','NO','Heraklion','Heraklion','FFC4211'),(7,26090876000,36,'2017-04-18','2017-04-23','2017-04-17','NO','Thessaloniki','Patra','YXO8125'),(8,28140500000,94,'2012-05-03','2012-05-05','2012-08-02','NO','Heraklion','Thessaloniki','BRP2115'),(9,28140500000,95,'2014-08-09','2014-08-17','2014-08-06','NO','Patra','Patra','UOM3313'),(10,32568230000,95,'2011-07-23','2011-08-01','2011-07-18','YES','Patra','Patra','UOM3313'),(11,35507455000,82,'2016-09-16','2016-09-21','2016-09-10','NO','Patra','Athens','TJE6074'),(12,35507455000,29,'2017-04-29','2017-05-03','2017-04-27','YES','Heraklion','Heraklion','GKO6026'),(13,37481968000,36,'2016-09-25','2016-09-29','2016-09-23','YES','Thessaloniki','Thessaloniki','YXO8125'),(14,39137796000,41,'2014-10-01','2014-10-03','2014-09-12','NO','Patra','Heraklion','RHG4910'),(15,39137796000,41,'2015-10-15','2015-10-20','2015-10-13','YES','Patra','Thessaloniki','RHG4910'),(16,39137796000,118,'2016-11-16','2016-11-20','2016-11-14','YES','Athens','Athens','JOH1962'),(17,39137796000,114,'2018-01-13','2018-01-19','2017-12-31','NO','Heraklion','Heraklion','FFC4211'),(18,39137796000,41,'2018-01-09','2018-01-18','2018-01-07','YES','Patra','Patra','RHG4910');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addReservation` BEFORE INSERT ON `reservation` FOR EACH ROW
BEGIN
UPDATE counts SET Reservations = Reservations+1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteReservation` AFTER DELETE ON `reservation` FOR EACH ROW
BEGIN
UPDATE counts SET Reservations = Reservations-1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `residents_abroad_docs`
--

DROP TABLE IF EXISTS `residents_abroad_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residents_abroad_docs` (
  `SSN_cust` bigint(11) NOT NULL,
  `Documents` varchar(45) NOT NULL,
  PRIMARY KEY (`SSN_cust`,`Documents`),
  CONSTRAINT `con8` FOREIGN KEY (`SSN_cust`) REFERENCES `customers` (`SSN_cust`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residents_abroad_docs`
--

LOCK TABLES `residents_abroad_docs` WRITE;
/*!40000 ALTER TABLE `residents_abroad_docs` DISABLE KEYS */;
INSERT INTO `residents_abroad_docs` VALUES (23779589000,'insurance.eu'),(23779589000,'passport'),(24009721000,'passport'),(28140500000,'passport'),(52243639000,'green.insurance'),(52243639000,'passport');
/*!40000 ALTER TABLE `residents_abroad_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `StoreID` int(2) NOT NULL,
  `City` varchar(60) DEFAULT NULL,
  `Street` varchar(60) DEFAULT NULL,
  `StreetNumber` int(3) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  PRIMARY KEY (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Rhodes','Pindarou',82,85380),(2,'Patra','Solomou',48,45697),(3,'Heraklion','Aphrodiths',70,13589),(4,'Thessaloniki','Tsimiskh',178,80217),(5,'Athens','Ionias',85,55142);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addStore` BEFORE INSERT ON `stores` FOR EACH ROW
BEGIN
UPDATE counts SET Stores = Stores+1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteStore` AFTER DELETE ON `stores` FOR EACH ROW
BEGIN
UPDATE counts SET Stores = Stores-1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_history` (
  `RentID` int(10) NOT NULL,
  `PaymentMethod` varchar(45) NOT NULL,
  `PaymentAmount` double NOT NULL,
  PRIMARY KEY (`RentID`),
  CONSTRAINT `con24` FOREIGN KEY (`RentID`) REFERENCES `rents` (`RentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history`
--

LOCK TABLES `transaction_history` WRITE;
/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
INSERT INTO `transaction_history` VALUES (1,'cash',93),(2,'card',123),(3,'cash',34.4),(4,'check',343),(5,'cash',22),(6,'cash',98),(8,'cash',22.4),(9,'card',90.6),(10,'card',234),(11,'card',43),(12,'check',233),(13,'cash',67.4),(14,'card',23),(15,'cash',65),(16,'card',344),(17,'cash',323),(18,'card',45),(19,'card',88.8),(20,'card',45),(21,'cash',33),(22,'check',97);
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `VehicleID` int(4) NOT NULL,
  `StoreID` int(2) NOT NULL,
  `LicensePlate` varchar(10) NOT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Constructor` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Kilometers` int(6) DEFAULT NULL,
  `CylinderCapacity` int(5) DEFAULT NULL,
  `HorsePower` int(5) DEFAULT NULL,
  `FuelType` varchar(15) DEFAULT NULL,
  `NextService` date DEFAULT NULL,
  `LastService` date DEFAULT NULL,
  `InsuranceExp` date DEFAULT NULL,
  PRIMARY KEY (`VehicleID`),
  UNIQUE KEY `LicensePlate_UNIQUE` (`LicensePlate`),
  KEY `con4_idx` (`StoreID`),
  CONSTRAINT `con4` FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (5,1,'DTU2709','Corolla','Toyota','Car',1997,11123,3162,414,'Diesel','2018-03-08','2015-03-31','2018-10-12'),(6,4,'WUY3843','YZF','Yamaha','Motorcycle',2008,5071,2076,555,'Petrol','2018-01-25','2015-11-10','2018-08-06'),(15,1,'WLE9572','Grizzly','Yamaha','ATV',1995,8819,1440,570,'Petrol','2018-09-01','2015-02-14','2018-03-29'),(17,4,'LFE9180','Ninja','Kawasaki','Motorcycle',2014,8872,2618,450,'Diesel','2018-03-17','2015-01-09','2018-04-28'),(22,5,'TMC2428','Panda','Fiat','Car',1994,5183,1743,98,'Petrol','2018-07-14','2016-02-20','2020-06-13'),(29,3,'GKQ6026','MSX','Honda','Motorcycle',1990,11145,3543,465,'Diesel','2018-11-13','2015-05-27','2019-04-16'),(36,4,'YXO8125','Rider','Nissan','ATV',2006,6674,3211,368,'Diesel','2018-07-25','2017-07-05','2019-11-04'),(41,2,'RHG4910','Transit','Ford','Mini Van',2003,2357,1219,245,'Diesel','2018-09-11','2015-09-18','2018-06-28'),(45,5,'CSW9389','Panda','Fiat','Car',1996,16273,2119,91,'Petrol','2018-05-25','2015-01-26','2020-11-29'),(82,2,'TJE6074','Silverado','Chevrolet','Truck',1998,16498,3073,625,'Diesel','2018-07-29','2016-11-15','2019-07-25'),(94,3,'BRP2115','Tundra','Toyota','Motorcycle',2013,1956,3516,172,'Diesel','2018-08-11','2016-07-16','2019-07-31'),(95,2,'UOM3313','Super Duty','Ford','Truck',1995,9795,759,365,'Diesel','2018-02-10','2017-02-13','2020-02-17'),(114,3,'FFC4211','ZSXR','Fiat','Motorcycle',1996,13825,2007,559,'Petrol','2018-04-09','2016-05-25','2018-04-19'),(115,5,'CGX6237','CityVan','Toyota','Mini Van',1990,9135,2573,444,'Petrol','2018-06-27','2016-12-05','2020-12-03'),(118,5,'JQH1962','Road','Nissan','ATV',2012,16617,2038,492,'Diesel','2018-02-02','2017-05-18','2018-10-16'),(136,3,'HAP0849','Matiz','Chevrolet','Car',1997,2426,809,487,'Petrol','2018-08-31','2015-08-05','2018-01-19');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addVehicle` BEFORE INSERT ON `vehicle` FOR EACH ROW
BEGIN
UPDATE counts SET Vehicles = Vehicles+1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteVehicle` AFTER DELETE ON `vehicle` FOR EACH ROW
BEGIN
UPDATE counts SET Vehicles = Vehicles-1 WHERE ID=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vehicle_service`
--

DROP TABLE IF EXISTS `vehicle_service`;
/*!50001 DROP VIEW IF EXISTS `vehicle_service`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vehicle_service` AS SELECT 
 1 AS `VehicleID`,
 1 AS `StoreID`,
 1 AS `LicensePlate`,
 1 AS `Kilometers`,
 1 AS `NextService`,
 1 AS `LastService`,
 1 AS `InsuranceExp`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `SSN_emp` bigint(11) NOT NULL,
  `StoreID` int(2) NOT NULL,
  `StartDate` date NOT NULL,
  `FinishDate` date DEFAULT NULL,
  `Position` varchar(45) NOT NULL,
  `Salary` double NOT NULL,
  PRIMARY KEY (`SSN_emp`,`StoreID`,`StartDate`),
  KEY `con16_idx` (`StoreID`),
  CONSTRAINT `con16` FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `con17` FOREIGN KEY (`SSN_emp`) REFERENCES `employee` (`SSN_emp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (12345671000,2,'2017-11-30',NULL,'Office',640),(12345671100,2,'2013-08-25','2017-02-08','Office',1200),(12345671200,5,'2014-09-02','2016-09-04','Driver',470.5),(12345671300,1,'2011-08-17','2016-02-24','Driver',455),(12345671400,4,'2016-12-23',NULL,'Driver',900),(12345671500,4,'2013-03-29',NULL,'Office',230),(12345671600,4,'2012-02-01',NULL,'Office',2300),(12345678100,5,'2011-03-12',NULL,'Office',783.5),(12345678200,5,'2011-04-22',NULL,'Office',555),(12345678300,2,'2011-01-02',NULL,'Office',454),(12345678400,5,'2014-04-24',NULL,'Driver',1430),(12345678500,5,'2016-06-23','2017-01-05','Driver',664),(12345678600,1,'2011-03-04',NULL,'Office',545.6),(12345678700,3,'2013-05-02',NULL,'Office',545.77),(12345678800,3,'2014-09-02',NULL,'Driver',5454),(12345678900,3,'2011-01-04',NULL,'Office',5343);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'new_car_system1fixed'
--

--
-- Dumping routines for database 'new_car_system1fixed'
--

--
-- Final view structure for view `customers_info`
--

/*!50001 DROP VIEW IF EXISTS `customers_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customers_info` AS select `customers`.`SSN_cust` AS `SSN_cust`,`customers`.`IRS_cust` AS `IRS_cust`,`customers`.`DriverLicense` AS `DriverLicense`,`customers`.`FirstRegistration` AS `FirstRegistration`,`customers`.`Country` AS `Country`,`residents_abroad_docs`.`Documents` AS `Documents`,`customers`.`cust_Type` AS `cust_Type`,`cust_companies`.`Name` AS `Name` from ((`customers` left join `residents_abroad_docs` on((`customers`.`SSN_cust` = `residents_abroad_docs`.`SSN_cust`))) left join `cust_companies` on((`customers`.`SSN_cust` = `cust_companies`.`SSN_cust`))) order by `customers`.`SSN_cust` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view1`
--

/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view1` AS select `vehicle`.`StoreID` AS `StoreID`,`stores`.`City` AS `City`,`vehicle`.`Type` AS `Type`,count(`vehicle`.`VehicleID`) AS `vcount1` from (`vehicle` left join `stores` on((`stores`.`StoreID` = `vehicle`.`StoreID`))) group by `vehicle`.`Type`,`stores`.`City` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view10`
--

/*!50001 DROP VIEW IF EXISTS `new_view10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view10` AS select `vehicle`.`Type` AS `Type`,avg(`vehicle`.`Kilometers`) AS `avr_kilometers` from `vehicle` group by `vehicle`.`Type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view11`
--

/*!50001 DROP VIEW IF EXISTS `new_view11`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view11` AS select `stores`.`StoreID` AS `StoreID`,`rents`.`StartLocation` AS `City`,sum(`transaction_history`.`PaymentAmount`) AS `anual_income`,year(`rents`.`StartDate`) AS `YEAR` from ((`rents` left join `stores` on((`rents`.`StartLocation` = `stores`.`City`))) left join `transaction_history` on((`rents`.`RentID` = `transaction_history`.`RentID`))) group by `rents`.`StartLocation`,year(`rents`.`StartDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view12`
--

/*!50001 DROP VIEW IF EXISTS `new_view12`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view12` AS select `vehicle`.`VehicleID` AS `VehicleID`,`vehicle`.`LicensePlate` AS `LicensePlate`,`vehicle`.`NextService` AS `NextService`,`vehicle`.`InsuranceExp` AS `InsuranceExp` from `vehicle` having (((`vehicle`.`NextService` > now()) and (`vehicle`.`NextService` < (now() + interval 30 day))) or ((`vehicle`.`InsuranceExp` > now()) and (`vehicle`.`InsuranceExp` < (now() + interval 30 day)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view2`
--

/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view2` AS select `rents`.`RentID` AS `RentID`,`customers`.`Country` AS `Country`,`customers`.`SSN_cust` AS `SSN_cust`,`transaction_history`.`PaymentMethod` AS `PaymentMethod`,`transaction_history`.`PaymentAmount` AS `PaymentAmount` from ((`rents` left join `customers` on((`rents`.`SSN_cust` = `customers`.`SSN_cust`))) left join `transaction_history` on((`rents`.`RentID` = `transaction_history`.`RentID`))) where (not((`customers`.`Country` like 'Greece'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view3`
--

/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view3` AS select `stores`.`StoreID` AS `StoreID`,`rents`.`StartLocation` AS `store_city`,sum(`transaction_history`.`PaymentAmount`) AS `income` from ((`rents` left join `stores` on((`rents`.`StartLocation` = `stores`.`City`))) left join `transaction_history` on((`rents`.`RentID` = `transaction_history`.`RentID`))) group by `rents`.`StartLocation` order by `income` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view4`
--

/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view4` AS select `employee`.`SSN_emp` AS `SSN_emp`,`works`.`StoreID` AS `StoreID`,`employee`.`LastName` AS `LastName`,`employee`.`FirstName` AS `FirstName`,`works`.`Position` AS `Position`,`works`.`Salary` AS `Salary`,`works`.`FinishDate` AS `FinishDate` from (`employee` left join `works` on((`employee`.`SSN_emp` = `works`.`SSN_emp`))) where isnull(`works`.`FinishDate`) having (`works`.`Salary` > 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view5`
--

/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view5` AS select `rents`.`VehicleID` AS `VehicleID`,count(`rents`.`RentID`) AS `COUNT` from `rents` group by `rents`.`VehicleID` having (count(`COUNT`) <= 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view6`
--

/*!50001 DROP VIEW IF EXISTS `new_view6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view6` AS select `customers`.`SSN_cust` AS `black_list`,`customers`.`LastName` AS `LastName`,`customers`.`FirstName` AS `FirstName` from `customers` where `customers`.`SSN_cust` in (select `rents`.`SSN_cust` from `rents` where (`rents`.`ReturnState` like 'BAD')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view7`
--

/*!50001 DROP VIEW IF EXISTS `new_view7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view7` AS select `rents`.`RentID` AS `RentID`,`rents`.`SSN_cust` AS `SSN_cust`,`transaction_history`.`PaymentMethod` AS `PaymentMethod`,`transaction_history`.`PaymentAmount` AS `PaymentAmount` from (`rents` left join `transaction_history` on((`rents`.`RentID` = `transaction_history`.`RentID`))) where isnull(`rents`.`Employee_Receive`) order by `transaction_history`.`PaymentAmount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view8`
--

/*!50001 DROP VIEW IF EXISTS `new_view8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view8` AS select `reservation`.`VehicleID` AS `VehicleID`,`reservation`.`StartDate` AS `StartDate`,`reservation`.`FinishDate` AS `FinishDate` from `reservation` where (`reservation`.`StartDate` > now()) union select `rents`.`VehicleID` AS `VehicleID`,`rents`.`StartDate` AS `StartDate`,`rents`.`FinishDate` AS `FinishDate` from `rents` where (isnull(`rents`.`FinishDate`) or (`rents`.`FinishDate` > now())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view9`
--

/*!50001 DROP VIEW IF EXISTS `new_view9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view9` AS select `customers`.`SSN_cust` AS `SSN_cust`,`customers`.`LastName` AS `LastName`,`customers`.`FirstName` AS `FirstName`,count(`rents`.`RentID`) AS `sum_rents` from (`customers` left join `rents` on((`customers`.`SSN_cust` = `rents`.`SSN_cust`))) where (not((`rents`.`ReturnState` like 'BAD'))) group by `rents`.`SSN_cust` having (count(`sum_rents`) >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_service`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_service`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_service` AS select `vehicle`.`VehicleID` AS `VehicleID`,`vehicle`.`StoreID` AS `StoreID`,`vehicle`.`LicensePlate` AS `LicensePlate`,`vehicle`.`Kilometers` AS `Kilometers`,`vehicle`.`NextService` AS `NextService`,`vehicle`.`LastService` AS `LastService`,`vehicle`.`InsuranceExp` AS `InsuranceExp` from `vehicle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11  0:14:11
