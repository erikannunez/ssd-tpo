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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_producto`
--

LOCK TABLES `dim_producto` WRITE;
/*!40000 ALTER TABLE `dim_producto` DISABLE KEYS */;
INSERT INTO `dim_producto` VALUES (1,1,1,1,'Té Dharamsala','10 cajas x 20 bolsas',18),(2,1,1,2,'Cerveza tibetana Barley','24 - bot. 12 l',19),(3,1,2,3,'Sirope de regaliz','12 - bot. 550 ml',10),(4,2,2,4,'Especias Cajun del chef Anton','48 - frascos 6 l',22),(5,2,2,5,'Mezcla Gumbo del chef Anton','36 cajas',21.35),(6,3,2,6,'Mermelada de grosellas de la abuela','12 - frascos 8 l',25),(7,3,7,7,'Peras secas orgánicas del tío Bob','12 - paq. 1 kg',30),(8,3,2,8,'Salsa de arándanos Northwoods','12 - frascos 12 l',40),(9,4,6,9,'Buey Mishi Kobe','18 - paq. 500 g',97),(10,4,8,10,'Pez espada','12 - frascos 200 ml',31),(11,5,4,11,'Queso Cabrales','paq. 1 kg',21),(12,5,4,12,'Queso Manchego La Pastora','10 - paq. 500 g',38),(13,6,8,13,'Algas Konbu','caja 2 kg',6),(14,6,7,14,'Cuajada de judías','40 - paq. 100 g',23.25),(15,6,2,15,'Salsa de soja baja en sodio','24 - bot. 250 ml',15.5),(16,7,3,16,'Postre de merengue Pavlova','32 - cajas 500 g',17.45),(17,7,6,17,'Cordero Alice Springs','20 - latas 1 kg',39),(18,7,8,18,'Langostinos tigre Carnarvon','paq. 16 kg',62.5),(19,8,3,19,'Pastas de té de chocolate','10 cajas x 12 piezas',9.2),(20,8,3,20,'Mermelada de Sir Rodney\'s','30 cajas regalo',81),(21,8,3,21,'Bollos de Sir Rodney\'s','24 paq. x 4 piezas',10),(22,9,5,22,'Pan de centeno crujiente estilo Gustaf\'s','24 - paq. 500 g',21),(23,9,5,23,'Pan fino','12 - paq. 250 g',9),(24,10,1,24,'Refresco Guaraná Fantástica','12 - latas 355 ml',4.5),(25,11,3,25,'Crema de chocolate y nueces NuNuCa','20 - vasos  450 g',14),(26,11,3,26,'Ositos de goma Gumbär','100 - bolsas 250 g',31.23),(27,11,3,27,'Chocolate Schoggi','100 - piezas 100 g',43.9),(28,12,7,28,'Col fermentada Rössle','25 - latas 825 g',45.6),(29,12,6,29,'Salchicha Thüringer','50 bolsas x 30 salch',123.79),(30,13,8,30,'Arenque blanco del noroeste','10 - vasos 200 g',25.89),(31,14,4,31,'Queso gorgonzola Telino','12 - paq. 100 g',12.5),(32,14,4,32,'Queso Mascarpone Fabioli','24 - paq. 200 g',32),(33,15,4,33,'Queso de cabra','500 g',2.5),(34,16,1,34,'Cerveza Sasquatch','24 - bot. 12 l',14),(35,16,1,35,'Cerveza negra Steeleye','24 - bot. 12 l',18),(36,17,8,36,'Escabeche de arenque','24 - frascos 250 g',19),(37,17,8,37,'Salmón ahumado Gravad','12 - paq. 500 g',26),(38,18,1,38,'Vino Côte de Blaye','12 - bot. 75 cl',263.5),(39,18,1,39,'Licor verde Chartreuse','750 cc por bot.',18),(40,19,8,40,'Carne de cangrejo de Boston','24 - latas 4 l',18.4),(41,19,8,41,'Crema de almejas estilo Nueva Inglaterra','12 - latas 12 l',9.65),(42,20,5,42,'Tallarines de Singapur','32 - 1 kg paq.',14),(43,20,1,43,'Café de Malasia','16 - latas 500 g',46),(44,20,2,44,'Azúcar negra Malacca','20 - bolsas 2 kg',19.45),(45,21,8,45,'Arenque ahumado','paq. 1k',9.5),(46,21,8,46,'Arenque salado','4 - vasos 450 g',12),(47,22,3,47,'Galletas Zaanse','10 - cajas 4 l',9.5),(48,22,3,48,'Chocolate holandés','10 paq.',12.75),(49,23,3,49,'Regaliz','24 - paq. 50 g',20),(50,23,3,50,'Chocolate blanco','12 - barras 100 g',16.25),(51,24,7,51,'Manzanas secas Manjimup','50 - paq. 300 g',53),(52,24,5,52,'Cereales para Filo','16 - cajas 2 kg',7),(53,24,6,53,'Empanada de carne','48 porc.',32.8),(54,25,6,54,'Empanada de cerdo','16 tartas',7.45),(55,25,6,55,'Paté chino','24 cajas x 2 tartas',24),(56,26,5,56,'Gnocchi de la abuela Alicia','24 - paq. 250 g',38),(57,26,5,57,'Raviolis Angelo','24 - paq. 250 g',19.5),(58,27,8,58,'Caracoles de Borgoña','24 porc.',13.25),(59,28,4,59,'Raclet de queso Courdavault','paq. 5 kg',55),(60,28,4,60,'Camembert Pierrot','15 - paq. 300 g',34),(61,29,2,61,'Sirope de arce','24 - bot. 500 ml',28.5),(62,29,3,62,'Tarta de azúcar','48 tartas',49.3),(63,7,2,63,'Sandwich de vegetales','15 - frascos 625 g',43.9),(64,12,5,64,'Bollos de pan de Wimmer','20 bolsas x 4 porc.',33.25),(65,2,2,65,'Salsa de pimiento picante de Luisiana','32 - bot. 8 l',21.05),(66,2,2,66,'Especias picantes de Luisiana','24 - frascos 8 l',17),(67,16,1,67,'Cerveza Laughing Lumberjack','24 - bot. 12 l',14),(68,8,3,68,'Barras de pan de Escocia','10 cajas x 8 porc.',12.5),(69,15,4,69,'Queso Gudbrandsdals','paq. 10 kg',36),(70,7,1,70,'Cerveza Outback','24 - bot. 355 ml',15),(71,15,4,71,'Crema de queso Fløtemys','10 - paq. 500 g',21.5),(72,14,4,72,'Queso Mozzarella Giovanni','24 - paq. 200 g',34.8),(73,17,8,73,'Caviar rojo','24 - frascos150 g',15),(74,4,7,74,'Queso de soja Longlife','paq. 5 kg',10),(75,12,1,75,'Cerveza Klosterbier Rhönbräu','24 - bot. 0,5 l',7.75),(76,23,1,76,'Licor Cloudberry','500 ml',18),(77,12,2,77,'Salsa verde original Frankfurter','12 cajas',13);
/*!40000 ALTER TABLE `dim_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:01:23
