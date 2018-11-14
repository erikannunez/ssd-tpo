-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: ssddb.ck6ywww2iqip.sa-east-1.rds.amazonaws.com    Database: DataWarehouse
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Dumping data for table `dim_ciudad`
--

LOCK TABLES `dim_ciudad` WRITE;
/*!40000 ALTER TABLE `dim_ciudad` DISABLE KEYS */;
INSERT INTO `dim_ciudad` VALUES (1,1,'Aachen',''),(2,10,'Albuquerque','NM'),(3,10,'Anchorage','AK'),(4,10,'Ann Arbor','MI'),(5,12,'Annecy',''),(6,8,'Århus',''),(7,9,'Barcelona',''),(8,25,'Barquisimeto','Lara'),(9,10,'Bend','OR'),(10,15,'Bérgamo',''),(11,1,'Berlín',''),(12,24,'Berna',''),(13,10,'Boise','ID'),(14,10,'Boston','MA'),(15,23,'Bräcke',''),(16,1,'Brandenburgo',''),(17,5,'Bruselas',''),(18,2,'Buenos Aires',''),(19,10,'Butte','MT'),(20,6,'Campinas','SP'),(21,25,'Caracas','DF'),(22,5,'Charleroi',''),(23,14,'Cork','Co. Cork'),(24,21,'Cowes','Isla de Wight'),(25,1,'Cunewalde',''),(26,1,'Cuxhaven',''),(27,10,'Elgin','OR'),(28,12,'Estrasburgo',''),(29,10,'Eugenia','OR'),(30,1,'Frankfurt',''),(31,24,'Génova',''),(32,23,'Göteborg',''),(33,4,'Graz',''),(34,11,'Helsinki',''),(35,25,'I. de Margarita','Nueva Esparta'),(36,10,'Kirkland','WA'),(37,8,'København',''),(38,1,'Köln',''),(39,10,'Lander','WY'),(40,11,'Lappeenranta',''),(41,1,'Leipzig',''),(42,12,'Lille',''),(43,12,'Lion',''),(44,20,'Lisboa',''),(45,21,'Londres',''),(46,23,'Luleå',''),(47,8,'Lyngby',''),(48,9,'Madrid',''),(49,21,'Manchester',''),(50,1,'Mannheim',''),(51,12,'Marsella',''),(52,3,'Melbourne','Victoria'),(53,17,'México D.F.',''),(54,12,'Montceau',''),(55,7,'Montreal','Québec'),(56,1,'München',''),(57,1,'Münster',''),(58,12,'Nantes',''),(59,10,'New Orleans','LA'),(60,16,'Osaka',''),(61,11,'Oulu',''),(62,9,'Oviedo','Asturias'),(63,12,'París',''),(64,10,'Portland','OR'),(65,15,'Ravenna',''),(66,10,'Redmond','WA'),(67,15,'Reggio Emilia',''),(68,12,'Reims',''),(69,6,'Resende','SP'),(70,6,'Rio de Janeiro','RJ'),(71,15,'Salerno',''),(72,4,'Salzburgo',''),(73,25,'San Cristóbal','Táchira'),(74,10,'San Francisco','CA'),(75,18,'Sandvika',''),(76,6,'São Paulo','SP'),(77,10,'Seattle','WA'),(78,9,'Sevilla',''),(79,22,'Singapore',''),(80,18,'Stavern',''),(81,7,'Ste-Hyacinthe','Québec'),(82,23,'Stockholm',''),(83,1,'Stuttgart',''),(84,3,'Sydney','NSW'),(85,10,'Tacoma','WA'),(86,16,'Tokyo',''),(87,15,'Torino',''),(88,12,'Toulouse',''),(89,7,'Tsawassen','BC'),(90,7,'Vancouver','BC'),(91,12,'Versalles',''),(92,10,'Walla Walla','WA'),(93,19,'Warszawa',''),(94,13,'Zaandam','');
/*!40000 ALTER TABLE `dim_ciudad` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 21:33:47
