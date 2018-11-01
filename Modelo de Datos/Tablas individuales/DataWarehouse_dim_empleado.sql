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
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_empleado`
--

LOCK TABLES `dim_empleado` WRITE;
/*!40000 ALTER TABLE `dim_empleado` DISABLE KEYS */;
INSERT INTO `dim_empleado` VALUES (1,1,1,77,1,'Davolio','Nancy','1968-12-08 00:00:00','1992-05-01 00:00:00','507 - 20th Ave. E.\r\nApt. 2A','98122','(206) 555-9857','5467','EMPID1.BMP','Su formación incluye una licenciatura en Psicología por la Universidad del Estado de Colorado. También escribió \"El arte de la llamada en frío\". Nancy es miembro de Toastmasters International.',2),(2,2,2,85,2,'Fuller','Andrew','1952-02-19 00:00:00','1992-08-14 00:00:00','908 W. Capital Way','98401','(206) 555-9482','3457','EMPID2.BMP','Andrew completó su licenciatura en Comercio y un doctorado en Marketing Internacional de la Universidad de Dallas. Habla con fluidez en francés e italiano y lee el alemán. Ingresó en la empresa como representante de ventas, fue ascendido a gerente de cuentas y después fue nombrado vicepresidente comercial.\r\nAndrew es miembro de la Mesa redonda de administración de Ventas, la Cámara de comercio de Seattle y de la Asociación de importadores de la Cuenca del Pacífico.',NULL),(3,1,1,36,3,'Leverling','Janet','1963-08-30 00:00:00','1992-04-01 00:00:00','722 Moss Bay Blvd.','98033','(206) 555-3412','3355','EMPID3.BMP','Janet es licenciada en Química por la Universidad de Boston. También ha completado un programa de formación en Gestión de minoristas de alimentación. Janet fue contratada como vendedora asociada y fue ascendida a representante de ventas.',2),(4,1,3,66,4,'Peacock','Margaret','1958-09-19 00:00:00','1993-05-03 00:00:00','4110 Old Redmond Rd.','98052','(206) 555-8122','5176','EMPID4.BMP','Margaret es licenciada en Literatura inglesa por el Colegio Universitario Concordia, y tiene un máster del Instituto Americano de Artes Culinarias. Estuvo asignada temporalmente a la oficina de Londres antes de regresar a su puesto permanente en Seattle.',2),(5,3,4,45,5,'Buchanan','Steven','1955-03-04 00:00:00','1993-10-17 00:00:00','14 Garrett Hill','SW1 8JR','(71) 555-4848','3453','EMPID5.BMP','Steven Buchanan se graduó en la Universidad de St. Andrews, Escocia. Tras su ingreso en la empresa dedicó 6 meses a un programa de orientación en la oficina de Seattle y luego volvió a su puesto permanente en Londres, donde fue ascendido a gerente de ventas. Completó con éxito los cursos de Telemarketing y Gestión de ventas internacional. Habla francés.',2),(6,1,4,45,6,'Suyama','Michael','1963-07-02 00:00:00','1993-10-17 00:00:00','Coventry House\r\nMiner Rd.','EC2 7JR','(71) 555-7773','428','EMPID6.BMP','Michael se graduó en la Universidad de Sussex (MA, economía) y la Universidad de California en Los Angeles (MBA, marketing). También ha asistido a cursos de Ventas multiculturales y Administración del tiempo para profesionales de ventas. Habla\r\njaponés y lee y escribe en francés, portugués y español.',5),(7,1,4,45,7,'King','Robert','1960-05-29 00:00:00','1994-01-02 00:00:00','Edgeham Hollow\r\nWinchester Way','RG1 9SP','(71) 555-5598','465','EMPID7.BMP','Robert King colaboró en la organización Peace Corps y viajó extensamente antes de completar su licenciatura en inglés en la Universidad de Michigan, el año en que ingresó en la empresa. Después de completar un curso denominado \"Ventas en Europa\", fue\r\ntransferido a la oficina de Londres.',5),(8,4,1,77,8,'Callahan','Laura','1958-01-09 00:00:00','1994-03-05 00:00:00','4726 - 11th Ave. N.E.','98105','(206) 555-1189','2344','EMPID8.BMP','Laura se graduó en Psicología por la Universidad de Washington. También completó un curso de francés de negocios. Lee y escribe en francés.',2),(9,1,1,45,9,'Dodsworth','Anne','1969-07-02 00:00:00','1994-11-15 00:00:00','7 Houndstooth Rd.','WG2 7LT','(71) 555-4444','452','EMPID9.BMP','Anne tiene una licenciatura en inglés por el  St. Lawrence College.  Habla con fluidez el francés y el alemán.',5);
/*!40000 ALTER TABLE `dim_empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:01:18
