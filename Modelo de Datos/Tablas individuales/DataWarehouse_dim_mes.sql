-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: DataWarehouse
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `dim_mes`
--

DROP TABLE IF EXISTS `dim_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_mes` (
  `id_mes` int(11) NOT NULL AUTO_INCREMENT,
  `id_trimestre` int(11) NOT NULL,
  `nro_mes` int(11) NOT NULL,
  `nombre_mes` varchar(30) NOT NULL,
  `nombre_abreviado` varchar(30) NOT NULL,
  `estacion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_mes`
--

LOCK TABLES `dim_mes` WRITE;
/*!40000 ALTER TABLE `dim_mes` DISABLE KEYS */;
INSERT INTO `dim_mes` VALUES (1,1,1,'enero','ene','verano'),(2,1,2,'febrero','feb','verano'),(3,1,3,'marzo','mar','otoño'),(4,2,4,'abril','abr','otoño'),(5,2,5,'mayo','may','otoño'),(6,2,6,'junio','jun','invierno'),(7,3,7,'julio','jul','invierno'),(8,3,8,'agosto','ago','invierno'),(9,3,9,'septiembre','sep','primavera'),(10,4,10,'octubre','oct','primavera'),(11,4,11,'noviembre','nov','primavera'),(12,4,12,'diciembre','dic','verano'),(13,5,1,'enero','ene','verano'),(14,5,2,'febrero','feb','verano'),(15,5,3,'marzo','mar','otoño'),(16,6,4,'abril','abr','otoño'),(17,6,5,'mayo','may','otoño'),(18,6,6,'junio','jun','invierno'),(19,7,7,'julio','jul','invierno'),(20,7,8,'agosto','ago','invierno'),(21,7,9,'septiembre','sep','primavera'),(22,8,10,'octubre','oct','primavera'),(23,8,11,'noviembre','nov','primavera'),(24,8,12,'diciembre','dic','verano'),(25,9,1,'enero','ene','verano'),(26,9,2,'febrero','feb','verano'),(27,9,3,'marzo','mar','otoño'),(28,10,4,'abril','abr','otoño'),(29,10,5,'mayo','may','otoño'),(30,10,6,'junio','jun','invierno'),(31,11,7,'julio','jul','invierno'),(32,11,8,'agosto','ago','invierno'),(33,11,9,'septiembre','sep','primavera'),(34,12,10,'octubre','oct','primavera'),(35,12,11,'noviembre','nov','primavera'),(36,12,12,'diciembre','dic','verano');
/*!40000 ALTER TABLE `dim_mes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:01:21
