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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_ciudad`),
  KEY `dim_ciudad_dim_pais_fk` (`id_pais`),
  CONSTRAINT `dim_ciudad_dim_pais_fk` FOREIGN KEY (`id_pais`) REFERENCES `dim_pais` (`id_pais`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_cliente`),
  KEY `dim_cliente_dim_ciudad_fk` (`id_ciudad_cliente`),
  CONSTRAINT `dim_cliente_dim_ciudad_fk` FOREIGN KEY (`id_ciudad_cliente`) REFERENCES `dim_ciudad` (`id_ciudad`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_dia`),
  KEY `dim_dia_dim_mes_fk` (`id_mes`),
  CONSTRAINT `dim_dia_dim_mes_fk` FOREIGN KEY (`id_mes`) REFERENCES `dim_mes` (`id_mes`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `codigo_empleado` int(11) DEFAULT NULL,
  `apellido` varchar(64) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `fecha_contratacion` datetime DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `codigo_postal` varchar(64) DEFAULT NULL,
  `telefono_domicilio` varchar(64) DEFAULT NULL,
  `extension` varchar(32) DEFAULT NULL,
  `foto` text,
  `nota` varchar(512) DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `dim_empleado_dim_cargo_fk` (`id_cargo`),
  KEY `dim_empleado_dim_ciudad_fk` (`id_ciudad`),
  KEY `dim_empleado_dim_tratamientoEmpleado_fk` (`id_tratamiento`),
  CONSTRAINT `dim_empleado_dim_cargo_fk` FOREIGN KEY (`id_cargo`) REFERENCES `dim_cargo` (`id_cargo`) ON UPDATE CASCADE,
  CONSTRAINT `dim_empleado_dim_ciudad_fk` FOREIGN KEY (`id_ciudad`) REFERENCES `dim_ciudad` (`id_ciudad`) ON UPDATE CASCADE,
  CONSTRAINT `dim_empleado_dim_tratamientoEmpleado_fk` FOREIGN KEY (`id_tratamiento`) REFERENCES `dim_tratamientoempleado` (`id_tratamiento`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_mes`),
  KEY `dim_mes_dim_trimestre_fk` (`id_trimestre`),
  CONSTRAINT `dim_mes_dim_trimestre_fk` FOREIGN KEY (`id_trimestre`) REFERENCES `dim_trimestre` (`id_trimestre`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_producto`),
  KEY `dim_producto_dim_categoria_fk` (`id_categoria`),
  KEY `dim_producto_dim_proveedor_fk` (`id_proveedor`),
  CONSTRAINT `dim_producto_dim_categoria_fk` FOREIGN KEY (`id_categoria`) REFERENCES `dim_categoria` (`id_categoria`) ON UPDATE CASCADE,
  CONSTRAINT `dim_producto_dim_proveedor_fk` FOREIGN KEY (`id_proveedor`) REFERENCES `dim_proveedor` (`id_proveedor`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_proveedor`),
  KEY `dim_proveedor_dim_ciudad_fk` (`id_ciudad_proveedor`),
  CONSTRAINT `dim_proveedor_dim_ciudad_fk` FOREIGN KEY (`id_ciudad_proveedor`) REFERENCES `dim_ciudad` (`id_ciudad`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tiempo` (
  `id_tiempo` int(11) NOT NULL AUTO_INCREMENT,
  `id_dia` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `dow` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tiempo`),
  KEY `dim_tiempo_dim_dia_fk` (`id_dia`),
  CONSTRAINT `dim_tiempo_dim_dia_fk` FOREIGN KEY (`id_dia`) REFERENCES `dim_dia` (`id_dia`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`id_trimestre`),
  KEY `dim_trimestre_dim_anio_fk` (`id_anio`),
  CONSTRAINT `dim_trimestre_dim_anio_fk` FOREIGN KEY (`id_anio`) REFERENCES `dim_anio` (`id_anio`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `id_tiempo` int(11) NOT NULL,
  `importe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_presupuesto`),
  KEY `fact_presupuesto_dim_categoria_fk` (`id_categoria`),
  KEY `fact_presupuesto_dim_pais_fk` (`id_pais_presupuesto`),
  KEY `fact_presupuesto_dim_tiempo_fk` (`id_tiempo`),
  CONSTRAINT `fact_presupuesto_dim_categoria_fk` FOREIGN KEY (`id_categoria`) REFERENCES `dim_categoria` (`id_categoria`) ON UPDATE CASCADE,
  CONSTRAINT `fact_presupuesto_dim_pais_fk` FOREIGN KEY (`id_pais_presupuesto`) REFERENCES `dim_pais` (`id_pais`) ON UPDATE CASCADE,
  CONSTRAINT `fact_presupuesto_dim_tiempo_fk` FOREIGN KEY (`id_tiempo`) REFERENCES `dim_tiempo` (`id_tiempo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `codigo_venta` int(11) DEFAULT NULL,
  `cargo_envio` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `subtotal_venta` double DEFAULT NULL,
  `total_venta` double DEFAULT NULL COMMENT 'Es el total de la venta con el descuento realizado',
  PRIMARY KEY (`id_venta`),
  KEY `fact_ventas_dim_cliente_fk` (`id_cliente`),
  KEY `fact_ventas_dim_companiaEnvios_fk` (`id_compania_envios`),
  KEY `fact_ventas_dim_empleado_fk` (`id_empleado`),
  KEY `fact_ventas_dim_producto_fk` (`id_producto`),
  KEY `fact_ventas_dim_tiempo_fecha_entrega_fk` (`id_fecha_entrega`),
  KEY `fact_ventas_dim_tiempo_fecha_envio_fk` (`id_fecha_envio`),
  KEY `fact_ventas_dim_tiempo_fecha_pedido_fk` (`id_fecha_pedido`),
  CONSTRAINT `fact_ventas_dim_cliente_fk` FOREIGN KEY (`id_cliente`) REFERENCES `dim_cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_companiaEnvios_fk` FOREIGN KEY (`id_compania_envios`) REFERENCES `dim_companiaenvios` (`id_compania_envios`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_empleado_fk` FOREIGN KEY (`id_empleado`) REFERENCES `dim_empleado` (`id_empleado`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_producto_fk` FOREIGN KEY (`id_producto`) REFERENCES `dim_producto` (`id_producto`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_tiempo_fecha_entrega_fk` FOREIGN KEY (`id_fecha_entrega`) REFERENCES `dim_tiempo` (`id_tiempo`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_tiempo_fecha_envio_fk` FOREIGN KEY (`id_fecha_envio`) REFERENCES `dim_tiempo` (`id_tiempo`) ON UPDATE CASCADE,
  CONSTRAINT `fact_ventas_dim_tiempo_fecha_pedido_fk` FOREIGN KEY (`id_fecha_pedido`) REFERENCES `dim_tiempo` (`id_tiempo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 22:16:26
