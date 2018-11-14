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
-- Dumping data for table `dim_mes`
--

LOCK TABLES `dim_mes` WRITE;
/*!40000 ALTER TABLE `dim_mes` DISABLE KEYS */;
INSERT INTO `dim_mes` VALUES (1,1,1,'enero','ene','verano'),(2,1,2,'febrero','feb','verano'),(3,1,3,'marzo','mar','otoño'),(4,2,4,'abril','abr','otoño'),(5,2,5,'mayo','may','otoño'),(6,2,6,'junio','jun','invierno'),(7,3,7,'julio','jul','invierno'),(8,3,8,'agosto','ago','invierno'),(9,3,9,'septiembre','sep','primavera'),(10,4,10,'octubre','oct','primavera'),(11,4,11,'noviembre','nov','primavera'),(12,4,12,'diciembre','dic','verano'),(13,5,1,'enero','ene','verano'),(14,5,2,'febrero','feb','verano'),(15,5,3,'marzo','mar','otoño'),(16,6,4,'abril','abr','otoño'),(17,6,5,'mayo','may','otoño'),(18,6,6,'junio','jun','invierno'),(19,7,7,'julio','jul','invierno'),(20,7,8,'agosto','ago','invierno'),(21,7,9,'septiembre','sep','primavera'),(22,8,10,'octubre','oct','primavera'),(23,8,11,'noviembre','nov','primavera'),(24,8,12,'diciembre','dic','verano'),(25,9,1,'enero','ene','verano'),(26,9,2,'febrero','feb','verano'),(27,9,3,'marzo','mar','otoño'),(28,10,4,'abril','abr','otoño'),(29,10,5,'mayo','may','otoño'),(30,10,6,'junio','jun','invierno'),(31,11,7,'julio','jul','invierno'),(32,11,8,'agosto','ago','invierno'),(33,11,9,'septiembre','sep','primavera'),(34,12,10,'octubre','oct','primavera'),(35,12,11,'noviembre','nov','primavera'),(36,12,12,'diciembre','dic','verano');
/*!40000 ALTER TABLE `dim_mes` ENABLE KEYS */;
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

-- Dump completed on 2018-11-13 21:33:52
