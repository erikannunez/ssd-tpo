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
-- Table structure for table `dim_anio`
--

DROP TABLE IF EXISTS `dim_anio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_anio` (
  `id_anio` int(11) NOT NULL AUTO_INCREMENT,
  `nro_anio` int(11) NOT NULL,
  `nombre_abreviado` varchar(30) NOT NULL,
  PRIMARY KEY (`id_anio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_anio`
--

LOCK TABLES `dim_anio` WRITE;
/*!40000 ALTER TABLE `dim_anio` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_anio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_cargo`
--

DROP TABLE IF EXISTS `dim_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cargo`
--

LOCK TABLES `dim_cargo` WRITE;
/*!40000 ALTER TABLE `dim_cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_cargo` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_categoria`
--

LOCK TABLES `dim_categoria` WRITE;
/*!40000 ALTER TABLE `dim_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_ciudad`
--

DROP TABLE IF EXISTS `dim_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_ciudad` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) DEFAULT NULL,
  `nombre_ciudad` varchar(64) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_ciudad`
--

LOCK TABLES `dim_ciudad` WRITE;
/*!40000 ALTER TABLE `dim_ciudad` DISABLE KEYS */;
INSERT INTO `dim_ciudad` VALUES (1,1,'Aachen',''),(2,10,'Albuquerque','NM'),(3,10,'Anchorage','AK'),(4,10,'Ann Arbor','MI'),(5,12,'Annecy',''),(6,8,'Århus',''),(7,9,'Barcelona',''),(8,25,'Barquisimeto','Lara'),(9,10,'Bend','OR'),(10,15,'Bérgamo',''),(11,1,'Berlín',''),(12,24,'Berna',''),(13,10,'Boise','ID'),(14,10,'Boston','MA'),(15,23,'Bräcke',''),(16,1,'Brandenburgo',''),(17,5,'Bruselas',''),(18,2,'Buenos Aires',''),(19,10,'Butte','MT'),(20,6,'Campinas','SP'),(21,25,'Caracas','DF'),(22,5,'Charleroi',''),(23,14,'Cork','Co. Cork'),(24,21,'Cowes','Isla de Wight'),(25,1,'Cunewalde',''),(26,1,'Cuxhaven',''),(27,10,'Elgin','OR'),(28,12,'Estrasburgo',''),(29,10,'Eugenia','OR'),(30,1,'Frankfurt',''),(31,24,'Génova',''),(32,23,'Göteborg',''),(33,4,'Graz',''),(34,11,'Helsinki',''),(35,25,'I. de Margarita','Nueva Esparta'),(36,10,'Kirkland','WA'),(37,8,'København',''),(38,1,'Köln',''),(39,10,'Lander','WY'),(40,11,'Lappeenranta',''),(41,1,'Leipzig',''),(42,12,'Lille',''),(43,12,'Lion',''),(44,20,'Lisboa',''),(45,21,'Londres',''),(46,23,'Luleå',''),(47,8,'Lyngby',''),(48,9,'Madrid',''),(49,21,'Manchester',''),(50,1,'Mannheim',''),(51,12,'Marsella',''),(52,3,'Melbourne','Victoria'),(53,17,'México D.F.',''),(54,12,'Montceau',''),(55,7,'Montreal','Québec'),(56,1,'München',''),(57,1,'Münster',''),(58,12,'Nantes',''),(59,10,'New Orleans','LA'),(60,16,'Osaka',''),(61,11,'Oulu',''),(62,9,'Oviedo','Asturias'),(63,12,'París',''),(64,10,'Portland','OR'),(65,15,'Ravenna',''),(66,10,'Redmond','WA'),(67,15,'Reggio Emilia',''),(68,12,'Reims',''),(69,6,'Resende','SP'),(70,6,'Rio de Janeiro','RJ'),(71,15,'Salerno',''),(72,4,'Salzburgo',''),(73,25,'San Cristóbal','Táchira'),(74,10,'San Francisco','CA'),(75,18,'Sandvika',''),(76,6,'São Paulo','SP'),(77,10,'Seattle','WA'),(78,9,'Sevilla',''),(79,22,'Singapore',''),(80,18,'Stavern',''),(81,7,'Ste-Hyacinthe','Québec'),(82,23,'Stockholm',''),(83,1,'Stuttgart',''),(84,3,'Sydney','NSW'),(85,10,'Tacoma','WA'),(86,16,'Tokyo',''),(87,15,'Torino',''),(88,12,'Toulouse',''),(89,7,'Tsawassen','BC'),(90,7,'Vancouver','BC'),(91,12,'Versalles',''),(92,10,'Walla Walla','WA'),(93,19,'Warszawa',''),(94,13,'Zaandam','');
/*!40000 ALTER TABLE `dim_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_ciudad_cliente` int(11) NOT NULL,
  `codigo_cliente` varchar(64) DEFAULT NULL,
  `nombre_cliente` varchar(128) DEFAULT NULL,
  `nombre_contacto` varchar(128) DEFAULT NULL,
  `cargo_contacto` varchar(128) DEFAULT NULL,
  `telefono` varchar(64) DEFAULT NULL,
  `fax` varchar(64) DEFAULT NULL,
  `direccion` varchar(256) DEFAULT NULL,
  `codigo_postal` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_companiaEnvios`
--

DROP TABLE IF EXISTS `dim_companiaEnvios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_companiaEnvios` (
  `id_compania_envios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_compania_envios` varchar(256) DEFAULT NULL,
  `telefono` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_compania_envios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_companiaEnvios`
--

LOCK TABLES `dim_companiaEnvios` WRITE;
/*!40000 ALTER TABLE `dim_companiaEnvios` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_companiaEnvios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_dia`
--

DROP TABLE IF EXISTS `dim_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_dia` (
  `id_dia` int(11) NOT NULL AUTO_INCREMENT,
  `id_mes` int(11) NOT NULL,
  `nro_dia` int(11) NOT NULL,
  PRIMARY KEY (`id_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_dia`
--

LOCK TABLES `dim_dia` WRITE;
/*!40000 ALTER TABLE `dim_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_empleado`
--

DROP TABLE IF EXISTS `dim_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_cargo` int(11) NOT NULL,
  `id_tratamiento` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `codigo_empleado` varchar(64) DEFAULT NULL,
  `apellido` varchar(64) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `fecha_nacimiento` varchar(32) DEFAULT NULL,
  `fecha_contratacion` varchar(32) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `codigo_postal` varchar(64) DEFAULT NULL,
  `telefono_domicilio` varchar(64) DEFAULT NULL,
  `extension` varchar(32) DEFAULT NULL,
  `foto` longblob,
  `nota` varchar(512) DEFAULT NULL,
  `jefe` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_empleado`
--

LOCK TABLES `dim_empleado` WRITE;
/*!40000 ALTER TABLE `dim_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_empleado` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_mes`
--

LOCK TABLES `dim_mes` WRITE;
/*!40000 ALTER TABLE `dim_mes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_pais`
--

DROP TABLE IF EXISTS `dim_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_pais`
--

LOCK TABLES `dim_pais` WRITE;
/*!40000 ALTER TABLE `dim_pais` DISABLE KEYS */;
INSERT INTO `dim_pais` VALUES (1,'Alemania'),(2,'Argentina'),(3,'Australia'),(4,'Austria'),(5,'Bélgica'),(6,'Brasil'),(7,'Canadá'),(8,'Dinamarca'),(9,'España'),(10,'Estados Unidos'),(11,'Finlandia'),(12,'Francia'),(13,'Holanda'),(14,'Irlanda'),(15,'Italia'),(16,'Japón'),(17,'México'),(18,'Noruega'),(19,'Polonia'),(20,'Portugal'),(21,'Reino Unido'),(22,'Singapur'),(23,'Suecia'),(24,'Suiza'),(25,'Venezuela');
/*!40000 ALTER TABLE `dim_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_producto`
--

DROP TABLE IF EXISTS `dim_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo_producto` int(11) DEFAULT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `cantidad_por_unidad` varchar(100) DEFAULT NULL,
  `precio_por_unidad` double DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_producto`
--

LOCK TABLES `dim_producto` WRITE;
/*!40000 ALTER TABLE `dim_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_proveedor`
--

DROP TABLE IF EXISTS `dim_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `id_ciudad_proveedor` int(11) NOT NULL,
  `codigo_proveedor` int(11) DEFAULT NULL,
  `nombre_proveedor` varchar(128) DEFAULT NULL,
  `nombre_contacto` varchar(128) DEFAULT NULL,
  `cargo_contacto` varchar(128) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `codigo_postal` varchar(64) DEFAULT NULL,
  `telefono` varchar(64) DEFAULT NULL,
  `fax` varchar(64) DEFAULT NULL,
  `pagina_principal` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_proveedor`
--

LOCK TABLES `dim_proveedor` WRITE;
/*!40000 ALTER TABLE `dim_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tiempo` (
  `id_tiempo` int(11) NOT NULL AUTO_INCREMENT,
  `id_dia` int(11) NOT NULL,
  `fecha` varchar(32) DEFAULT NULL,
  `dow` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tiempo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiempo`
--

LOCK TABLES `dim_tiempo` WRITE;
/*!40000 ALTER TABLE `dim_tiempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tratamientoEmpleado`
--

DROP TABLE IF EXISTS `dim_tratamientoEmpleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tratamientoEmpleado` (
  `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tratamiento` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_tratamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tratamientoEmpleado`
--

LOCK TABLES `dim_tratamientoEmpleado` WRITE;
/*!40000 ALTER TABLE `dim_tratamientoEmpleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_tratamientoEmpleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_trimestre`
--

DROP TABLE IF EXISTS `dim_trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_trimestre` (
  `id_trimestre` int(11) NOT NULL AUTO_INCREMENT,
  `id_anio` int(11) NOT NULL,
  `nro_trimestre` int(11) NOT NULL,
  `nombre_trimestre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_trimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_trimestre`
--

LOCK TABLES `dim_trimestre` WRITE;
/*!40000 ALTER TABLE `dim_trimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_trimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_presupuesto`
--

DROP TABLE IF EXISTS `fact_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_presupuesto` (
  `id_presupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais_presupuesto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_mes` int(11) NOT NULL,
  `importe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_presupuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_presupuesto`
--

LOCK TABLES `fact_presupuesto` WRITE;
/*!40000 ALTER TABLE `fact_presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_ventas`
--

DROP TABLE IF EXISTS `fact_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_ventas` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_fecha_pedido` int(11) NOT NULL,
  `id_fecha_entrega` int(11) NOT NULL,
  `id_fecha_envio` int(11) NOT NULL,
  `id_compania_envios` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `codigo_venta` varchar(64) DEFAULT NULL,
  `cargo_envio` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_ventas`
--

LOCK TABLES `fact_ventas` WRITE;
/*!40000 ALTER TABLE `fact_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 12:46:01
