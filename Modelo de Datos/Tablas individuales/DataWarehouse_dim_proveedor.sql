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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_proveedor`
--

LOCK TABLES `dim_proveedor` WRITE;
/*!40000 ALTER TABLE `dim_proveedor` DISABLE KEYS */;
INSERT INTO `dim_proveedor` VALUES (1,45,1,'Exotic Liquids','Charlotte Cooper','Gerente de compras','49 Gilbert St.','EC1 4SD','(171) 555-2222',NULL,NULL),(2,59,2,'New Orleans Cajun Delights','Shelley Burke','Administrador de pedidos','P.O. Box 78934','70117','(100) 555-4822',NULL,NULL),(3,4,3,'Grandma Kelly\'s Homestead','Regina Murphy','Representante de ventas','707 Oxford Rd.','48104','(313) 555-5735','(313) 555-3349',NULL),(4,86,4,'Tokyo Traders','Yoshi Nagase','Gerente de marketing','9-8 Sekimai\r\nMusashino-shi','100','(03) 3555-5011',NULL,NULL),(5,62,5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra ','Administrador de exportaciones','Calle del Rosal 4','33007','(98) 598 76 54',NULL,NULL),(6,60,6,'Mayumi\'s','Mayumi Ohno','Representante de marketing','92 Setsuko\r\nChuo-ku','545','(06) 431-7877',NULL,NULL),(7,52,7,'Pavlova, Ltd.','Ian Devling','Gerente de marketing','74 Rose St.\r\nMoonie Ponds','3058','(03) 444-2343','(03) 444-6588',NULL),(8,49,8,'Specialty Biscuits, Ltd.','Peter Wilson','Representante de ventas','29 King\'s Way','M14 GSD','(161) 555-4448',NULL,NULL),(9,32,9,'PB Knäckebröd AB','Lars Peterson','Agente de ventas','Kaloadagatan 13','S-345 67','031-987 65 43','031-987 65 91',NULL),(10,76,10,'Refrescos Americanas LTDA','Carlos Diaz','Gerente de marketing','Av. das Americanas 12.890','5442','(11) 555 4640',NULL,NULL),(11,11,11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Gerente de ventas','Tiergartenstraße 5','10785','(010) 9984510',NULL,NULL),(12,30,12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Ger. marketing internacional','Bogenallee 51','60439','(069) 992755',NULL,NULL),(13,26,13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinador de mercados','Frahmredder 112a','27478','(04721) 8713','(04721) 8714',NULL),(14,65,14,'Formaggi Fortini s.r.l.','Elio Rossi','Representante de ventas','Viale Dante, 75','48100','(0544) 60323','(0544) 60603',NULL),(15,75,15,'Norske Meierier','Beate Vileid','Gerente de marketing','Hatlevegen 5','1320','(0)2-953010',NULL,NULL),(16,9,16,'Bigfoot Breweries','Cheryl Saylor','Repr. de cuentas regional','3400 - 8th Avenue\r\nSuite 210','97101','(503) 555-9931',NULL,NULL),(17,82,17,'Svensk Sjöföda AB','Michael Björn','Representante de ventas','Brovallavägen 231','S-123 45','08-123 45 67',NULL,NULL),(18,63,18,'Aux joyeux ecclésiastiques','Guylène Nodier','Gerente de ventas','203, Rue des Francs-Bourgeois','75004','(1) 03.83.00.68','(1) 03.83.00.62',NULL),(19,14,19,'New England Seafood Cannery','Robb Merchant','Agente de cuentas al por mayor','Order Processing Dept.\r\n2100 Paul Revere Blvd.','02134','(617) 555-3267','(617) 555-3389',NULL),(20,79,20,'Leka Trading','Chandra Leka','Propietario','471 Serangoon Loop, Suite #402','0512','555-8787',NULL,NULL),(21,47,21,'Lyngbysild','Niels Petersen','Gerente de ventas','Lyngbysild\r\nFiskebakken 10','2800','43844108','43844115',NULL),(22,94,22,'Zaanse Snoepfabriek','Dirk Luchte','Gerente de contabilidad','Verkoop\r\nRijnweg 22','9999 ZZ','(12345) 1212','(12345) 1210',NULL),(23,40,23,'Karkki Oy','Anne Heikkonen','Gerente de producción','Valtakatu 12','53120','(953) 10956',NULL,NULL),(24,84,24,'G\'day, Mate','Wendy Mackenzie','Representante de ventas','170 Prince Edward Parade\r\nHunter\'s Hill','2042','(02) 555-5914','(02) 555-4873',NULL),(25,0,25,'Ma Maison','Jean-Guy Lauzon','Gerente de marketing','2960 Rue St. Laurent','H1J 1C3','(514) 555-9022',NULL,NULL),(26,71,26,'Pasta Buttini s.r.l.','Giovanni Giudici','Administrador de pedidos','Via dei Gelsomini, 153','84100','(089) 6547665','(089) 6547667',NULL),(27,54,27,'Escargots Nouveaux','Marie Delamare','Gerente de ventas','22, rue H. Voiron','71300','85.57.00.07',NULL,NULL),(28,5,28,'Gai pâturage','Eliane Noz','Representante de ventas','Bat. B\r\n3, rue des Alpes','74000','38.76.98.06','38.76.98.58',NULL),(29,81,29,'Forêts d\'érables','Chantal Goulet','Gerente de contabilidad','148 rue Chasseur','J2S 7S8','(514) 555-2955','(514) 555-2921',NULL);
/*!40000 ALTER TABLE `dim_proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:01:22
