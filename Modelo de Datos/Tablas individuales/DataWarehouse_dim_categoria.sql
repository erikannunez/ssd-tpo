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
-- Table structure for table `dim_categoria`
--

DROP TABLE IF EXISTS `dim_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(128) DEFAULT NULL,
  `descripcion` varchar(512) DEFAULT NULL,
  `imagen` longblob,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_categoria`
--

LOCK TABLES `dim_categoria` WRITE;
/*!40000 ALTER TABLE `dim_categoria` DISABLE KEYS */;
INSERT INTO `dim_categoria` VALUES (1,1,'Bebidas','Gaseosas, café, té, cervezas y maltas',NULL),(2,2,'Condimentos','Salsas dulces y picantes, delicias, comida para untar y aderezos',NULL),(3,3,'Repostería','Postres, dulces y pan dulce',NULL),(4,4,'Lácteos','Quesos',NULL),(5,5,'Granos/Cereales','Pan, galletas, pasta y cereales',NULL),(6,6,'Carnes','Carnes preparadas',NULL),(7,7,'Frutas/Verduras','Frutas secas y queso de soja',NULL),(8,8,'Pescado/Marisco','Pescados, mariscos y algas',NULL);
/*!40000 ALTER TABLE `dim_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:01:25
