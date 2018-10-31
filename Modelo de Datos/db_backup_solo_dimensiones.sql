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
-- Dumping data for table `dim_anio`
--

LOCK TABLES `dim_anio` WRITE;
/*!40000 ALTER TABLE `dim_anio` DISABLE KEYS */;
INSERT INTO `dim_anio` VALUES (1,1996,'96'),(2,1997,'97'),(3,1998,'98');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cargo`
--

LOCK TABLES `dim_cargo` WRITE;
/*!40000 ALTER TABLE `dim_cargo` DISABLE KEYS */;
INSERT INTO `dim_cargo` VALUES (1,'Representante de ventas'),(2,'Vicepresidente comercial'),(3,'Gerente de ventas'),(4,'Coordinador ventas interno');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (1,11,'ALFKI','Alfreds Futterkiste','Maria Anders','Representante de ventas','030-0074321','030-0076545','Obere Str. 57','12209'),(2,53,'ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Propietario','(5) 555-4729','(5) 555-3745','Avda. de la Constitución 2222','05021'),(3,53,'ANTON','Antonio Moreno Taquería','Antonio Moreno','Propietario','(5) 555-3932',NULL,'Mataderos  2312','05023'),(4,45,'AROUT','Around the Horn','Thomas Hardy','Representante de ventas','(71) 555-7788','(71) 555-6750','120 Hanover Sq.','WA1 1DP'),(5,46,'BERGS','Berglunds snabbköp','Christina Berglund','Administrador de pedidos','0921-12 34 65','0921-12 34 67','Berguvsvägen  8','S-958 22'),(6,50,'BLAUS','Blauer See Delikatessen','Hanna Moos','Representante de ventas','0621-08460','0621-08924','Forsterstr. 57','68306'),(7,28,'BLONP','Blondel père et fils','Frédérique Citeaux','Gerente de marketing','88.60.15.31','88.60.15.32','24, place Kléber','67000'),(8,48,'BOLID','Bólido Comidas preparadas','Martín Sommer','Propietario','(91) 555 22 82','(91) 555 91 99','C/ Araquil, 67','28023'),(9,51,'BONAP','Bon app\'','Laurence Lebihan','Propietario','91.24.45.40','91.24.45.41','12, rue des Bouchers','13008'),(10,89,'BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Gerente de contabilidad','(604) 555-4729','(604) 555-3745','23 Tsawassen Blvd.','T2F 8M4'),(11,45,'BSBEV','B\'s Beverages','Victoria Ashworth','Representante de ventas','(71) 555-1212',NULL,'Fauntleroy Circus','EC2 5NT'),(12,18,'CACTU','Cactus Comidas para llevar','Patricio Simpson','Agente de ventas','(1) 135-5555','(1) 135-4892','Cerrito 333','1010'),(13,53,'CENTC','Centro comercial Moctezuma','Francisco Chang','Gerente de marketing','(5) 555-3392','(5) 555-7293','Sierras de Granada 9993','05022'),(14,12,'CHOPS','Chop-suey Chinese','Yang Wang','Propietario','0452-076545',NULL,'Hauptstr. 29','3012'),(15,76,'COMMI','Comércio Mineiro','Pedro Afonso','Asistente de ventas','(11) 555-7647',NULL,'Av. dos Lusíadas, 23','05432-043'),(16,45,'CONSH','Consolidated Holdings','Elizabeth Brown','Representante de ventas','(71) 555-2282','(71) 555-9199','Berkeley Gardens\r\n12  Brewery ','WX1 6LT'),(17,1,'DRACD','Drachenblut Delikatessen','Sven Ottlieb','Administrador de pedidos','0241-039123','0241-059428','Walserweg 21','52066'),(18,58,'DUMON','Du monde entier','Janine Labrune','Propietario','40.67.88.88','40.67.89.89','67, rue des Cinquante Otages','44000'),(19,45,'EASTC','Eastern Connection','Ann Devon','Agente de ventas','(71) 555-0297','(71) 555-3373','35 King George','WX3 6FW'),(20,33,'ERNSH','Ernst Handel','Roland Mendel','Gerente de ventas','7675-3425','7675-3426','Kirchgasse 6','8010'),(21,0,'FAMIA','Familia Arquibaldo','Aria Cruz','Asistente de marketing','(11) 555-9857',NULL,'Rua Orós, 92','05442-030'),(22,48,'FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Gerente de contabilidad','(91) 555 94 44','(91) 555 55 93','C/ Moralzarzal, 86','28034'),(23,42,'FOLIG','Folies gourmandes','Martine Rancé','Asistente de agente de ventas','20.16.10.16','20.16.10.17','184, chaussée de Tournai','59000'),(24,15,'FOLKO','Folk och fä HB','Maria Larsson','Propietario','0695-34 67 21',NULL,'Åkergatan 24','S-844 67'),(25,56,'FRANK','Frankenversand','Peter Franken','Gerente de marketing','089-0877310','089-0877451','Berliner Platz 43','80805'),(26,58,'FRANR','France restauration','Carine Schmitt','Gerente de marketing','40.32.21.21','40.32.21.20','54, rue Royale','44000'),(27,87,'FRANS','Franchi S.p.A.','Paolo Accorti','Representante de ventas','011-4988260','011-4988261','Via Monte Bianco 34','10100'),(28,44,'FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Gerente de ventas','(1) 354-2534','(1) 354-2535','Jardim das rosas n. 32','1675'),(29,7,'GALED','Galería del gastrónomo','Eduardo Saavedra','Gerente de marketing','(93) 203 4560','(93) 203 4561','Rambla de Cataluña, 23','08022'),(30,78,'GODOS','Godos Cocina Típica','José Pedro Freyre','Gerente de ventas','(95) 555 82 82',NULL,'C/ Romero, 33','41101'),(31,20,'GOURL','Gourmet Lanchonetes','André Fonseca','Asistente de ventas','(11) 555-9482',NULL,'Av. Brasil, 442','04876-786'),(32,29,'GREAL','Great Lakes Food Market','Howard Snyder','Gerente de marketing','(503) 555-7555',NULL,'2732 Baker Blvd.','97403'),(33,21,'GROSR','GROSELLA-Restaurante','Manuel Pereira','Propietario','(2) 283-2951','(2) 283-3397','5ª Ave. Los Palos Grandes','1081'),(34,70,'HANAR','Hanari Carnes','Mario Pontes','Gerente de contabilidad','(21) 555-0091','(21) 555-8765','Rua do Paço, 67','05454-876'),(35,73,'HILAA','HILARIÓN-Abastos','Carlos Hernández','Representante de ventas','(5) 555-1340','(5) 555-1948','Carrera 22 con Ave. Carlos Soublette #8-35','5022'),(36,27,'HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Representante de ventas','(503) 555-6874','(503) 555-2376','City Center Plaza\r\n516 Main St.','97827'),(37,23,'HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Asistente de ventas','2967 542','2967 3333','8 Johnstown Road',NULL),(38,24,'ISLAT','Island Trading','Helen Bennett','Gerente de marketing','(198) 555-8888',NULL,'Garden House\r\nCrowther Way','PO31 7PJ'),(39,16,'KOENE','Königlich Essen','Philip Cramer','Asistente de ventas','0555-09876',NULL,'Maubelstr. 90','14776'),(40,91,'LACOR','La corne d\'abondance','Daniel Tonini','Representante de ventas','30.59.84.10','30.59.85.11','67, avenue de l\'Europe','78000'),(41,88,'LAMAI','La maison d\'Asie','Annette Roulet','Gerente de ventas','61.77.61.10','61.77.61.11','1 rue Alsace-Lorraine','31000'),(42,90,'LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Asistente de marketing','(604) 555-3392','(604) 555-7293','1900 Oak St.','V3F 2K1'),(43,92,'LAZYK','Lazy K Kountry Store','John Steel','Gerente de marketing','(509) 555-7969','(509) 555-6221','12 Orchestra Terrace','99362'),(44,0,'LEHMS','Lehmanns Marktstand','Renate Messner','Representante de ventas','069-0245984','069-0245874','Magazinweg 7','60528'),(45,74,'LETSS','Let\'s Stop N Shop','Jaime Yorres','Propietario','(415) 555-5938',NULL,'87 Polk St.\r\nSuite 5','94117'),(46,8,'LILAS','LILA-Supermercado','Carlos González','Gerente de contabilidad','(9) 331-6954','(9) 331-7256','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','3508'),(47,35,'LINOD','LINO-Delicateses','Felipe Izquierdo','Propietario','(8) 34-56-12','(8) 34-93-93','Ave. 5 de Mayo Porlamar','4980'),(48,64,'LONEP','Lonesome Pine Restaurant','Fran Wilson','Gerente de ventas','(503) 555-9573','(503) 555-9646','89 Chiaroscuro Rd.','97219'),(49,10,'MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Gerente de marketing','035-640230','035-640231','Via Ludovico il Moro 22','24100'),(50,17,'MAISD','Maison Dewey','Catherine Dewey','Agente de ventas','(02) 201 24 67','(02) 201 24 68','Rue Joseph-Bens 532','B-1180'),(51,55,'MEREP','Mère Paillarde','Jean Fresnière','Asistente de marketing','(514) 555-8054','(514) 555-8055','43 rue St. Laurent','H1J 1C3'),(52,41,'MORGK','Morgenstern Gesundkost','Alexander Feuer','Asistente de marketing','0342-023176',NULL,'Heerstr. 22','04179'),(53,45,'NORTS','North/South','Simon Crowther','Asistente de ventas','(71) 555-7733','(71) 555-2530','South House\r\n300 Queensbridge','SW7 1RZ'),(54,18,'OCEAN','Océano Atlántico Ltda.','Yvonne Moncada','Agente de ventas','(1) 135-5333','(1) 135-5535','Ing. Gustavo Moncada 8585\r\nPiso 20-A','1010'),(55,3,'OLDWO','Old World Delicatessen','Rene Phillips','Representante de ventas','(907) 555-7584','(907) 555-2880','2743 Bering St.','99508'),(56,38,'OTTIK','Ottilies Käseladen','Henriette Pfalzheim','Propietario','0221-0644327','0221-0765721','Mehrheimerstr. 369','50739'),(57,63,'PARIS','Paris spécialités','Marie Bertrand','Propietario','(1) 42.34.22.66','(1) 42.34.22.77','265, boulevard Charonne','75012'),(58,53,'PERIC','Pericles Comidas clásicas','Guillermo Fernández','Representante de ventas','(5) 552-3745','(5) 545-3745','Calle Dr. Jorge Cash 321','05033'),(59,72,'PICCO','Piccolo und mehr','Georg Pipps','Gerente de ventas','6562-9722','6562-9723','Geislweg 14','5020'),(60,44,'PRINI','Princesa Isabel Vinhos','Isabel de Castro','Representante de ventas','(1) 356-5634',NULL,'Estrada da saúde n. 58','1756'),(61,70,'QUEDE','Que Delícia','Bernardo Batista','Gerente de contabilidad','(21) 555-4252','(21) 555-4545','Rua da Panificadora, 12','02389-673'),(62,0,'QUEEN','Queen Cozinha','Lúcia Carvalho','Asistente de marketing','(11) 555-1189',NULL,'Alameda dos Canàrios, 891','05487-020'),(63,25,'QUICK','QUICK-Stop','Horst Kloss','Gerente de contabilidad','0372-035188',NULL,'Taucherstraße 10','01307'),(64,18,'RANCH','Rancho grande','Sergio Gutiérrez','Representante de ventas','(1) 123-5555','(1) 123-5556','Av. del Libertador 900','1010'),(65,2,'RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Representante agente ventas','(505) 555-5939','(505) 555-3620','2817 Milton Dr.','87110'),(66,67,'REGGC','Reggiani Caseifici','Maurizio Moroni','Asistente de ventas','0522-556721','0522-556722','Strada Provinciale 124','42100'),(67,70,'RICAR','Ricardo Adocicados','Janete Limeira','Asistente de agente de ventas','(21) 555-3412',NULL,'Av. Copacabana, 267','02389-890'),(68,31,'RICSU','Richter Supermarkt','Michael Holz','Gerente de ventas','0897-034214',NULL,'Grenzacherweg 237','1203'),(69,48,'ROMEY','Romero y tomillo','Alejandra Camino','Gerente de contabilidad','(91) 745 6200','(91) 745 6210','Gran Vía, 1','28001'),(70,80,'SANTG','Santé Gourmet','Jonas Bergulfsen','Propietario','07-98 92 35','07-98 92 47','Erling Skakkes gate 78','4110'),(71,13,'SAVEA','Save-a-lot Markets','Jose Pavarotti','Representante de ventas','(208) 555-8097',NULL,'187 Suffolk Ln.','83720'),(72,45,'SEVES','Seven Seas Imports','Hari Kumar','Gerente de ventas','(71) 555-1717','(71) 555-5646','90 Wadhurst Rd.','OX15 4NB'),(73,37,'SIMOB','Simons bistro','Jytte Petersen','Propietario','31 12 34 56','31 13 35 57','Vinbæltet 34','1734'),(74,63,'SPECD','Spécialités du monde','Dominique Perrier','Gerente de marketing','(1) 47.55.60.10','(1) 47.55.60.20','25, rue Lauriston','75016'),(75,39,'SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Gerente de ventas','(307) 555-4680','(307) 555-6525','P.O. Box 555','82520'),(76,22,'SUPRD','Suprêmes délices','Pascale Cartrain','Gerente de contabilidad','(071) 23 67 22 20','(071) 23 67 22 21','Boulevard Tirou, 255','B-6000'),(77,64,'THEBI','The Big Cheese','Liz Nixon','Gerente de marketing','(503) 555-3612',NULL,'89 Jefferson Way\r\nSuite 2','97201'),(78,19,'THECR','The Cracker Box','Liu Wong','Asistente de marketing','(406) 555-5834','(406) 555-8083','55 Grizzly Peak Rd.','59801'),(79,57,'TOMSP','Toms Spezialitäten','Karin Josephs','Gerente de marketing','0251-031259','0251-035695','Luisenstr. 48','44087'),(80,53,'TORTU','Tortuga Restaurante','Miguel Angel Paolino','Propietario','(5) 555-2933',NULL,'Avda. Azteca 123','05033'),(81,0,'TRADH','Tradição Hipermercados','Anabela Domingues','Representante de ventas','(11) 555-2167','(11) 555-2168','Av. Inês de Castro, 414','05634-030'),(82,36,'TRAIH','Trail\'s Head Gourmet Provisioners','Helvetius Nagy','Asistente de ventas','(206) 555-8257','(206) 555-2174','722 DaVinci Blvd.','98034'),(83,6,'VAFFE','Vaffeljernet','Palle Ibsen','Gerente de ventas','86 21 32 43','86 22 33 44','Smagsløget 45','8200'),(84,43,'VICTE','Victuailles en stock','Mary Saveley','Agente de ventas','78.32.54.86','78.32.54.87','2, rue du Commerce','69004'),(85,68,'VINET','Vins et alcools Chevalier','Paul Henriot','Gerente de contabilidad','26.47.15.10','26.47.15.11','59 rue de l\'Abbaye','51100'),(86,83,'WANDK','Die Wandernde Kuh','Rita Müller','Representante de ventas','0711-020361','0711-035428','Adenauerallee 900','70563'),(87,61,'WARTH','Wartian Herkku','Pirkko Koskitalo','Gerente de contabilidad','981-443655','981-443655','Torikatu 38','90110'),(88,69,'WELLI','Wellington Importadora','Paula Parente','Gerente de ventas','(14) 555-8122',NULL,'Rua do Mercado, 12','08737-363'),(89,77,'WHITC','White Clover Markets','Karl Jablonski','Propietario','(206) 555-4112','(206) 555-4115','305 - 14th Ave. S.\r\nSuite 3B','98128'),(90,34,'WILMK','Wilman Kala','Matti Karttunen','Prop./Asistente marketing','90-224 8858','90-224 8858','Keskuskatu 45','21240'),(91,93,'WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Propietario','(26) 642-7012','(26) 642-7012','ul. Filtrowa 68','01-012');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_companiaEnvios`
--

LOCK TABLES `dim_companiaEnvios` WRITE;
/*!40000 ALTER TABLE `dim_companiaEnvios` DISABLE KEYS */;
INSERT INTO `dim_companiaEnvios` VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931');
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
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_dia`
--

LOCK TABLES `dim_dia` WRITE;
/*!40000 ALTER TABLE `dim_dia` DISABLE KEYS */;
INSERT INTO `dim_dia` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,2,1),(33,2,2),(34,2,3),(35,2,4),(36,2,5),(37,2,6),(38,2,7),(39,2,8),(40,2,9),(41,2,10),(42,2,11),(43,2,12),(44,2,13),(45,2,14),(46,2,15),(47,2,16),(48,2,17),(49,2,18),(50,2,19),(51,2,20),(52,2,21),(53,2,22),(54,2,23),(55,2,24),(56,2,25),(57,2,26),(58,2,27),(59,2,28),(60,2,29),(61,3,1),(62,3,2),(63,3,3),(64,3,4),(65,3,5),(66,3,6),(67,3,7),(68,3,8),(69,3,9),(70,3,10),(71,3,11),(72,3,12),(73,3,13),(74,3,14),(75,3,15),(76,3,16),(77,3,17),(78,3,18),(79,3,19),(80,3,20),(81,3,21),(82,3,22),(83,3,23),(84,3,24),(85,3,25),(86,3,26),(87,3,27),(88,3,28),(89,3,29),(90,3,30),(91,3,31),(92,4,1),(93,4,2),(94,4,3),(95,4,4),(96,4,5),(97,4,6),(98,4,7),(99,4,8),(100,4,9),(101,4,10),(102,4,11),(103,4,12),(104,4,13),(105,4,14),(106,4,15),(107,4,16),(108,4,17),(109,4,18),(110,4,19),(111,4,20),(112,4,21),(113,4,22),(114,4,23),(115,4,24),(116,4,25),(117,4,26),(118,4,27),(119,4,28),(120,4,29),(121,4,30),(122,5,1),(123,5,2),(124,5,3),(125,5,4),(126,5,5),(127,5,6),(128,5,7),(129,5,8),(130,5,9),(131,5,10),(132,5,11),(133,5,12),(134,5,13),(135,5,14),(136,5,15),(137,5,16),(138,5,17),(139,5,18),(140,5,19),(141,5,20),(142,5,21),(143,5,22),(144,5,23),(145,5,24),(146,5,25),(147,5,26),(148,5,27),(149,5,28),(150,5,29),(151,5,30),(152,5,31),(153,6,1),(154,6,2),(155,6,3),(156,6,4),(157,6,5),(158,6,6),(159,6,7),(160,6,8),(161,6,9),(162,6,10),(163,6,11),(164,6,12),(165,6,13),(166,6,14),(167,6,15),(168,6,16),(169,6,17),(170,6,18),(171,6,19),(172,6,20),(173,6,21),(174,6,22),(175,6,23),(176,6,24),(177,6,25),(178,6,26),(179,6,27),(180,6,28),(181,6,29),(182,6,30),(183,7,1),(184,7,2),(185,7,3),(186,7,4),(187,7,5),(188,7,6),(189,7,7),(190,7,8),(191,7,9),(192,7,10),(193,7,11),(194,7,12),(195,7,13),(196,7,14),(197,7,15),(198,7,16),(199,7,17),(200,7,18),(201,7,19),(202,7,20),(203,7,21),(204,7,22),(205,7,23),(206,7,24),(207,7,25),(208,7,26),(209,7,27),(210,7,28),(211,7,29),(212,7,30),(213,7,31),(214,8,1),(215,8,2),(216,8,3),(217,8,4),(218,8,5),(219,8,6),(220,8,7),(221,8,8),(222,8,9),(223,8,10),(224,8,11),(225,8,12),(226,8,13),(227,8,14),(228,8,15),(229,8,16),(230,8,17),(231,8,18),(232,8,19),(233,8,20),(234,8,21),(235,8,22),(236,8,23),(237,8,24),(238,8,25),(239,8,26),(240,8,27),(241,8,28),(242,8,29),(243,8,30),(244,8,31),(245,9,1),(246,9,2),(247,9,3),(248,9,4),(249,9,5),(250,9,6),(251,9,7),(252,9,8),(253,9,9),(254,9,10),(255,9,11),(256,9,12),(257,9,13),(258,9,14),(259,9,15),(260,9,16),(261,9,17),(262,9,18),(263,9,19),(264,9,20),(265,9,21),(266,9,22),(267,9,23),(268,9,24),(269,9,25),(270,9,26),(271,9,27),(272,9,28),(273,9,29),(274,9,30),(275,10,1),(276,10,2),(277,10,3),(278,10,4),(279,10,5),(280,10,6),(281,10,7),(282,10,8),(283,10,9),(284,10,10),(285,10,11),(286,10,12),(287,10,13),(288,10,14),(289,10,15),(290,10,16),(291,10,17),(292,10,18),(293,10,19),(294,10,20),(295,10,21),(296,10,22),(297,10,23),(298,10,24),(299,10,25),(300,10,26),(301,10,27),(302,10,28),(303,10,29),(304,10,30),(305,10,31),(306,11,1),(307,11,2),(308,11,3),(309,11,4),(310,11,5),(311,11,6),(312,11,7),(313,11,8),(314,11,9),(315,11,10),(316,11,11),(317,11,12),(318,11,13),(319,11,14),(320,11,15),(321,11,16),(322,11,17),(323,11,18),(324,11,19),(325,11,20),(326,11,21),(327,11,22),(328,11,23),(329,11,24),(330,11,25),(331,11,26),(332,11,27),(333,11,28),(334,11,29),(335,11,30),(336,12,1),(337,12,2),(338,12,3),(339,12,4),(340,12,5),(341,12,6),(342,12,7),(343,12,8),(344,12,9),(345,12,10),(346,12,11),(347,12,12),(348,12,13),(349,12,14),(350,12,15),(351,12,16),(352,12,17),(353,12,18),(354,12,19),(355,12,20),(356,12,21),(357,12,22),(358,12,23),(359,12,24),(360,12,25),(361,12,26),(362,12,27),(363,12,28),(364,12,29),(365,12,30),(366,12,31),(367,13,1),(368,13,2),(369,13,3),(370,13,4),(371,13,5),(372,13,6),(373,13,7),(374,13,8),(375,13,9),(376,13,10),(377,13,11),(378,13,12),(379,13,13),(380,13,14),(381,13,15),(382,13,16),(383,13,17),(384,13,18),(385,13,19),(386,13,20),(387,13,21),(388,13,22),(389,13,23),(390,13,24),(391,13,25),(392,13,26),(393,13,27),(394,13,28),(395,13,29),(396,13,30),(397,13,31),(398,14,1),(399,14,2),(400,14,3),(401,14,4),(402,14,5),(403,14,6),(404,14,7),(405,14,8),(406,14,9),(407,14,10),(408,14,11),(409,14,12),(410,14,13),(411,14,14),(412,14,15),(413,14,16),(414,14,17),(415,14,18),(416,14,19),(417,14,20),(418,14,21),(419,14,22),(420,14,23),(421,14,24),(422,14,25),(423,14,26),(424,14,27),(425,14,28),(426,15,1),(427,15,2),(428,15,3),(429,15,4),(430,15,5),(431,15,6),(432,15,7),(433,15,8),(434,15,9),(435,15,10),(436,15,11),(437,15,12),(438,15,13),(439,15,14),(440,15,15),(441,15,16),(442,15,17),(443,15,18),(444,15,19),(445,15,20),(446,15,21),(447,15,22),(448,15,23),(449,15,24),(450,15,25),(451,15,26),(452,15,27),(453,15,28),(454,15,29),(455,15,30),(456,15,31),(457,16,1),(458,16,2),(459,16,3),(460,16,4),(461,16,5),(462,16,6),(463,16,7),(464,16,8),(465,16,9),(466,16,10),(467,16,11),(468,16,12),(469,16,13),(470,16,14),(471,16,15),(472,16,16),(473,16,17),(474,16,18),(475,16,19),(476,16,20),(477,16,21),(478,16,22),(479,16,23),(480,16,24),(481,16,25),(482,16,26),(483,16,27),(484,16,28),(485,16,29),(486,16,30),(487,17,1),(488,17,2),(489,17,3),(490,17,4),(491,17,5),(492,17,6),(493,17,7),(494,17,8),(495,17,9),(496,17,10),(497,17,11),(498,17,12),(499,17,13),(500,17,14),(501,17,15),(502,17,16),(503,17,17),(504,17,18),(505,17,19),(506,17,20),(507,17,21),(508,17,22),(509,17,23),(510,17,24),(511,17,25),(512,17,26),(513,17,27),(514,17,28),(515,17,29),(516,17,30),(517,17,31),(518,18,1),(519,18,2),(520,18,3),(521,18,4),(522,18,5),(523,18,6),(524,18,7),(525,18,8),(526,18,9),(527,18,10),(528,18,11),(529,18,12),(530,18,13),(531,18,14),(532,18,15),(533,18,16),(534,18,17),(535,18,18),(536,18,19),(537,18,20),(538,18,21),(539,18,22),(540,18,23),(541,18,24),(542,18,25),(543,18,26),(544,18,27),(545,18,28),(546,18,29),(547,18,30),(548,19,1),(549,19,2),(550,19,3),(551,19,4),(552,19,5),(553,19,6),(554,19,7),(555,19,8),(556,19,9),(557,19,10),(558,19,11),(559,19,12),(560,19,13),(561,19,14),(562,19,15),(563,19,16),(564,19,17),(565,19,18),(566,19,19),(567,19,20),(568,19,21),(569,19,22),(570,19,23),(571,19,24),(572,19,25),(573,19,26),(574,19,27),(575,19,28),(576,19,29),(577,19,30),(578,19,31),(579,20,1),(580,20,2),(581,20,3),(582,20,4),(583,20,5),(584,20,6),(585,20,7),(586,20,8),(587,20,9),(588,20,10),(589,20,11),(590,20,12),(591,20,13),(592,20,14),(593,20,15),(594,20,16),(595,20,17),(596,20,18),(597,20,19),(598,20,20),(599,20,21),(600,20,22),(601,20,23),(602,20,24),(603,20,25),(604,20,26),(605,20,27),(606,20,28),(607,20,29),(608,20,30),(609,20,31),(610,21,1),(611,21,2),(612,21,3),(613,21,4),(614,21,5),(615,21,6),(616,21,7),(617,21,8),(618,21,9),(619,21,10),(620,21,11),(621,21,12),(622,21,13),(623,21,14),(624,21,15),(625,21,16),(626,21,17),(627,21,18),(628,21,19),(629,21,20),(630,21,21),(631,21,22),(632,21,23),(633,21,24),(634,21,25),(635,21,26),(636,21,27),(637,21,28),(638,21,29),(639,21,30),(640,22,1),(641,22,2),(642,22,3),(643,22,4),(644,22,5),(645,22,6),(646,22,7),(647,22,8),(648,22,9),(649,22,10),(650,22,11),(651,22,12),(652,22,13),(653,22,14),(654,22,15),(655,22,16),(656,22,17),(657,22,18),(658,22,19),(659,22,20),(660,22,21),(661,22,22),(662,22,23),(663,22,24),(664,22,25),(665,22,26),(666,22,27),(667,22,28),(668,22,29),(669,22,30),(670,22,31),(671,23,1),(672,23,2),(673,23,3),(674,23,4),(675,23,5),(676,23,6),(677,23,7),(678,23,8),(679,23,9),(680,23,10),(681,23,11),(682,23,12),(683,23,13),(684,23,14),(685,23,15),(686,23,16),(687,23,17),(688,23,18),(689,23,19),(690,23,20),(691,23,21),(692,23,22),(693,23,23),(694,23,24),(695,23,25),(696,23,26),(697,23,27),(698,23,28),(699,23,29),(700,23,30),(701,24,1),(702,24,2),(703,24,3),(704,24,4),(705,24,5),(706,24,6),(707,24,7),(708,24,8),(709,24,9),(710,24,10),(711,24,11),(712,24,12),(713,24,13),(714,24,14),(715,24,15),(716,24,16),(717,24,17),(718,24,18),(719,24,19),(720,24,20),(721,24,21),(722,24,22),(723,24,23),(724,24,24),(725,24,25),(726,24,26),(727,24,27),(728,24,28),(729,24,29),(730,24,30),(731,24,31),(732,25,1),(733,25,2),(734,25,3),(735,25,4),(736,25,5),(737,25,6),(738,25,7),(739,25,8),(740,25,9),(741,25,10),(742,25,11),(743,25,12),(744,25,13),(745,25,14),(746,25,15),(747,25,16),(748,25,17),(749,25,18),(750,25,19),(751,25,20),(752,25,21),(753,25,22),(754,25,23),(755,25,24),(756,25,25),(757,25,26),(758,25,27),(759,25,28),(760,25,29),(761,25,30),(762,25,31),(763,26,1),(764,26,2),(765,26,3),(766,26,4),(767,26,5),(768,26,6),(769,26,7),(770,26,8),(771,26,9),(772,26,10),(773,26,11),(774,26,12),(775,26,13),(776,26,14),(777,26,15),(778,26,16),(779,26,17),(780,26,18),(781,26,19),(782,26,20),(783,26,21),(784,26,22),(785,26,23),(786,26,24),(787,26,25),(788,26,26),(789,26,27),(790,26,28),(791,27,1),(792,27,2),(793,27,3),(794,27,4),(795,27,5),(796,27,6),(797,27,7),(798,27,8),(799,27,9),(800,27,10),(801,27,11),(802,27,12),(803,27,13),(804,27,14),(805,27,15),(806,27,16),(807,27,17),(808,27,18),(809,27,19),(810,27,20),(811,27,21),(812,27,22),(813,27,23),(814,27,24),(815,27,25),(816,27,26),(817,27,27),(818,27,28),(819,27,29),(820,27,30),(821,27,31),(822,28,1),(823,28,2),(824,28,3),(825,28,4),(826,28,5),(827,28,6),(828,28,7),(829,28,8),(830,28,9),(831,28,10),(832,28,11),(833,28,12),(834,28,13),(835,28,14),(836,28,15),(837,28,16),(838,28,17),(839,28,18),(840,28,19),(841,28,20),(842,28,21),(843,28,22),(844,28,23),(845,28,24),(846,28,25),(847,28,26),(848,28,27),(849,28,28),(850,28,29),(851,28,30),(852,29,1),(853,29,2),(854,29,3),(855,29,4),(856,29,5),(857,29,6),(858,29,7),(859,29,8),(860,29,9),(861,29,10),(862,29,11),(863,29,12),(864,29,13),(865,29,14),(866,29,15),(867,29,16),(868,29,17),(869,29,18),(870,29,19),(871,29,20),(872,29,21),(873,29,22),(874,29,23),(875,29,24),(876,29,25),(877,29,26),(878,29,27),(879,29,28),(880,29,29),(881,29,30),(882,29,31),(883,30,1),(884,30,2),(885,30,3),(886,30,4),(887,30,5),(888,30,6),(889,30,7),(890,30,8),(891,30,9),(892,30,10),(893,30,11),(894,30,12),(895,30,13),(896,30,14),(897,30,15),(898,30,16),(899,30,17),(900,30,18),(901,30,19),(902,30,20),(903,30,21),(904,30,22),(905,30,23),(906,30,24),(907,30,25),(908,30,26),(909,30,27),(910,30,28),(911,30,29),(912,30,30),(913,31,1),(914,31,2),(915,31,3),(916,31,4),(917,31,5),(918,31,6),(919,31,7),(920,31,8),(921,31,9),(922,31,10),(923,31,11),(924,31,12),(925,31,13),(926,31,14),(927,31,15),(928,31,16),(929,31,17),(930,31,18),(931,31,19),(932,31,20),(933,31,21),(934,31,22),(935,31,23),(936,31,24),(937,31,25),(938,31,26),(939,31,27),(940,31,28),(941,31,29),(942,31,30),(943,31,31),(944,32,1),(945,32,2),(946,32,3),(947,32,4),(948,32,5),(949,32,6),(950,32,7),(951,32,8),(952,32,9),(953,32,10),(954,32,11),(955,32,12),(956,32,13),(957,32,14),(958,32,15),(959,32,16),(960,32,17),(961,32,18),(962,32,19),(963,32,20),(964,32,21),(965,32,22),(966,32,23),(967,32,24),(968,32,25),(969,32,26),(970,32,27),(971,32,28),(972,32,29),(973,32,30),(974,32,31),(975,33,1),(976,33,2),(977,33,3),(978,33,4),(979,33,5),(980,33,6),(981,33,7),(982,33,8),(983,33,9),(984,33,10),(985,33,11),(986,33,12),(987,33,13),(988,33,14),(989,33,15),(990,33,16),(991,33,17),(992,33,18),(993,33,19),(994,33,20),(995,33,21),(996,33,22),(997,33,23),(998,33,24),(999,33,25),(1000,33,26),(1001,33,27),(1002,33,28),(1003,33,29),(1004,33,30),(1005,34,1),(1006,34,2),(1007,34,3),(1008,34,4),(1009,34,5),(1010,34,6),(1011,34,7),(1012,34,8),(1013,34,9),(1014,34,10),(1015,34,11),(1016,34,12),(1017,34,13),(1018,34,14),(1019,34,15),(1020,34,16),(1021,34,17),(1022,34,18),(1023,34,19),(1024,34,20),(1025,34,21),(1026,34,22),(1027,34,23),(1028,34,24),(1029,34,25),(1030,34,26),(1031,34,27),(1032,34,28),(1033,34,29),(1034,34,30),(1035,34,31),(1036,35,1),(1037,35,2),(1038,35,3),(1039,35,4),(1040,35,5),(1041,35,6),(1042,35,7),(1043,35,8),(1044,35,9),(1045,35,10),(1046,35,11),(1047,35,12),(1048,35,13),(1049,35,14),(1050,35,15),(1051,35,16),(1052,35,17),(1053,35,18),(1054,35,19),(1055,35,20),(1056,35,21),(1057,35,22),(1058,35,23),(1059,35,24),(1060,35,25),(1061,35,26),(1062,35,27),(1063,35,28),(1064,35,29),(1065,35,30),(1066,36,1),(1067,36,2),(1068,36,3),(1069,36,4),(1070,36,5),(1071,36,6),(1072,36,7),(1073,36,8),(1074,36,9),(1075,36,10),(1076,36,11),(1077,36,12),(1078,36,13),(1079,36,14),(1080,36,15),(1081,36,16),(1082,36,17),(1083,36,18),(1084,36,19),(1085,36,20),(1086,36,21),(1087,36,22),(1088,36,23),(1089,36,24),(1090,36,25),(1091,36,26),(1092,36,27),(1093,36,28),(1094,36,29),(1095,36,30),(1096,36,31);
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

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tiempo` (
  `id_tiempo` int(11) NOT NULL AUTO_INCREMENT,
  `id_dia` int(11) NOT NULL,
  `fecha` varchar(32) NOT NULL,
  `dow` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tiempo`)
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiempo`
--

LOCK TABLES `dim_tiempo` WRITE;
/*!40000 ALTER TABLE `dim_tiempo` DISABLE KEYS */;
INSERT INTO `dim_tiempo` VALUES (1,1,'1996-01-01','lunes'),(2,2,'1996-01-02','martes'),(3,3,'1996-01-03','miércoles'),(4,4,'1996-01-04','jueves'),(5,5,'1996-01-05','viernes'),(6,6,'1996-01-06','sábado'),(7,7,'1996-01-07','domingo'),(8,8,'1996-01-08','lunes'),(9,9,'1996-01-09','martes'),(10,10,'1996-01-10','miércoles'),(11,11,'1996-01-11','jueves'),(12,12,'1996-01-12','viernes'),(13,13,'1996-01-13','sábado'),(14,14,'1996-01-14','domingo'),(15,15,'1996-01-15','lunes'),(16,16,'1996-01-16','martes'),(17,17,'1996-01-17','miércoles'),(18,18,'1996-01-18','jueves'),(19,19,'1996-01-19','viernes'),(20,20,'1996-01-20','sábado'),(21,21,'1996-01-21','domingo'),(22,22,'1996-01-22','lunes'),(23,23,'1996-01-23','martes'),(24,24,'1996-01-24','miércoles'),(25,25,'1996-01-25','jueves'),(26,26,'1996-01-26','viernes'),(27,27,'1996-01-27','sábado'),(28,28,'1996-01-28','domingo'),(29,29,'1996-01-29','lunes'),(30,30,'1996-01-30','martes'),(31,31,'1996-01-31','miércoles'),(32,32,'1996-02-01','jueves'),(33,33,'1996-02-02','viernes'),(34,34,'1996-02-03','sábado'),(35,35,'1996-02-04','domingo'),(36,36,'1996-02-05','lunes'),(37,37,'1996-02-06','martes'),(38,38,'1996-02-07','miércoles'),(39,39,'1996-02-08','jueves'),(40,40,'1996-02-09','viernes'),(41,41,'1996-02-10','sábado'),(42,42,'1996-02-11','domingo'),(43,43,'1996-02-12','lunes'),(44,44,'1996-02-13','martes'),(45,45,'1996-02-14','miércoles'),(46,46,'1996-02-15','jueves'),(47,47,'1996-02-16','viernes'),(48,48,'1996-02-17','sábado'),(49,49,'1996-02-18','domingo'),(50,50,'1996-02-19','lunes'),(51,51,'1996-02-20','martes'),(52,52,'1996-02-21','miércoles'),(53,53,'1996-02-22','jueves'),(54,54,'1996-02-23','viernes'),(55,55,'1996-02-24','sábado'),(56,56,'1996-02-25','domingo'),(57,57,'1996-02-26','lunes'),(58,58,'1996-02-27','martes'),(59,59,'1996-02-28','miércoles'),(60,60,'1996-02-29','jueves'),(61,61,'1996-03-01','viernes'),(62,62,'1996-03-02','sábado'),(63,63,'1996-03-03','domingo'),(64,64,'1996-03-04','lunes'),(65,65,'1996-03-05','martes'),(66,66,'1996-03-06','miércoles'),(67,67,'1996-03-07','jueves'),(68,68,'1996-03-08','viernes'),(69,69,'1996-03-09','sábado'),(70,70,'1996-03-10','domingo'),(71,71,'1996-03-11','lunes'),(72,72,'1996-03-12','martes'),(73,73,'1996-03-13','miércoles'),(74,74,'1996-03-14','jueves'),(75,75,'1996-03-15','viernes'),(76,76,'1996-03-16','sábado'),(77,77,'1996-03-17','domingo'),(78,78,'1996-03-18','lunes'),(79,79,'1996-03-19','martes'),(80,80,'1996-03-20','miércoles'),(81,81,'1996-03-21','jueves'),(82,82,'1996-03-22','viernes'),(83,83,'1996-03-23','sábado'),(84,84,'1996-03-24','domingo'),(85,85,'1996-03-25','lunes'),(86,86,'1996-03-26','martes'),(87,87,'1996-03-27','miércoles'),(88,88,'1996-03-28','jueves'),(89,89,'1996-03-29','viernes'),(90,90,'1996-03-30','sábado'),(91,91,'1996-03-31','domingo'),(92,92,'1996-04-01','lunes'),(93,93,'1996-04-02','martes'),(94,94,'1996-04-03','miércoles'),(95,95,'1996-04-04','jueves'),(96,96,'1996-04-05','viernes'),(97,97,'1996-04-06','sábado'),(98,98,'1996-04-07','domingo'),(99,99,'1996-04-08','lunes'),(100,100,'1996-04-09','martes'),(101,101,'1996-04-10','miércoles'),(102,102,'1996-04-11','jueves'),(103,103,'1996-04-12','viernes'),(104,104,'1996-04-13','sábado'),(105,105,'1996-04-14','domingo'),(106,106,'1996-04-15','lunes'),(107,107,'1996-04-16','martes'),(108,108,'1996-04-17','miércoles'),(109,109,'1996-04-18','jueves'),(110,110,'1996-04-19','viernes'),(111,111,'1996-04-20','sábado'),(112,112,'1996-04-21','domingo'),(113,113,'1996-04-22','lunes'),(114,114,'1996-04-23','martes'),(115,115,'1996-04-24','miércoles'),(116,116,'1996-04-25','jueves'),(117,117,'1996-04-26','viernes'),(118,118,'1996-04-27','sábado'),(119,119,'1996-04-28','domingo'),(120,120,'1996-04-29','lunes'),(121,121,'1996-04-30','martes'),(122,122,'1996-05-01','miércoles'),(123,123,'1996-05-02','jueves'),(124,124,'1996-05-03','viernes'),(125,125,'1996-05-04','sábado'),(126,126,'1996-05-05','domingo'),(127,127,'1996-05-06','lunes'),(128,128,'1996-05-07','martes'),(129,129,'1996-05-08','miércoles'),(130,130,'1996-05-09','jueves'),(131,131,'1996-05-10','viernes'),(132,132,'1996-05-11','sábado'),(133,133,'1996-05-12','domingo'),(134,134,'1996-05-13','lunes'),(135,135,'1996-05-14','martes'),(136,136,'1996-05-15','miércoles'),(137,137,'1996-05-16','jueves'),(138,138,'1996-05-17','viernes'),(139,139,'1996-05-18','sábado'),(140,140,'1996-05-19','domingo'),(141,141,'1996-05-20','lunes'),(142,142,'1996-05-21','martes'),(143,143,'1996-05-22','miércoles'),(144,144,'1996-05-23','jueves'),(145,145,'1996-05-24','viernes'),(146,146,'1996-05-25','sábado'),(147,147,'1996-05-26','domingo'),(148,148,'1996-05-27','lunes'),(149,149,'1996-05-28','martes'),(150,150,'1996-05-29','miércoles'),(151,151,'1996-05-30','jueves'),(152,152,'1996-05-31','viernes'),(153,153,'1996-06-01','sábado'),(154,154,'1996-06-02','domingo'),(155,155,'1996-06-03','lunes'),(156,156,'1996-06-04','martes'),(157,157,'1996-06-05','miércoles'),(158,158,'1996-06-06','jueves'),(159,159,'1996-06-07','viernes'),(160,160,'1996-06-08','sábado'),(161,161,'1996-06-09','domingo'),(162,162,'1996-06-10','lunes'),(163,163,'1996-06-11','martes'),(164,164,'1996-06-12','miércoles'),(165,165,'1996-06-13','jueves'),(166,166,'1996-06-14','viernes'),(167,167,'1996-06-15','sábado'),(168,168,'1996-06-16','domingo'),(169,169,'1996-06-17','lunes'),(170,170,'1996-06-18','martes'),(171,171,'1996-06-19','miércoles'),(172,172,'1996-06-20','jueves'),(173,173,'1996-06-21','viernes'),(174,174,'1996-06-22','sábado'),(175,175,'1996-06-23','domingo'),(176,176,'1996-06-24','lunes'),(177,177,'1996-06-25','martes'),(178,178,'1996-06-26','miércoles'),(179,179,'1996-06-27','jueves'),(180,180,'1996-06-28','viernes'),(181,181,'1996-06-29','sábado'),(182,182,'1996-06-30','domingo'),(183,183,'1996-07-01','lunes'),(184,184,'1996-07-02','martes'),(185,185,'1996-07-03','miércoles'),(186,186,'1996-07-04','jueves'),(187,187,'1996-07-05','viernes'),(188,188,'1996-07-06','sábado'),(189,189,'1996-07-07','domingo'),(190,190,'1996-07-08','lunes'),(191,191,'1996-07-09','martes'),(192,192,'1996-07-10','miércoles'),(193,193,'1996-07-11','jueves'),(194,194,'1996-07-12','viernes'),(195,195,'1996-07-13','sábado'),(196,196,'1996-07-14','domingo'),(197,197,'1996-07-15','lunes'),(198,198,'1996-07-16','martes'),(199,199,'1996-07-17','miércoles'),(200,200,'1996-07-18','jueves'),(201,201,'1996-07-19','viernes'),(202,202,'1996-07-20','sábado'),(203,203,'1996-07-21','domingo'),(204,204,'1996-07-22','lunes'),(205,205,'1996-07-23','martes'),(206,206,'1996-07-24','miércoles'),(207,207,'1996-07-25','jueves'),(208,208,'1996-07-26','viernes'),(209,209,'1996-07-27','sábado'),(210,210,'1996-07-28','domingo'),(211,211,'1996-07-29','lunes'),(212,212,'1996-07-30','martes'),(213,213,'1996-07-31','miércoles'),(214,214,'1996-08-01','jueves'),(215,215,'1996-08-02','viernes'),(216,216,'1996-08-03','sábado'),(217,217,'1996-08-04','domingo'),(218,218,'1996-08-05','lunes'),(219,219,'1996-08-06','martes'),(220,220,'1996-08-07','miércoles'),(221,221,'1996-08-08','jueves'),(222,222,'1996-08-09','viernes'),(223,223,'1996-08-10','sábado'),(224,224,'1996-08-11','domingo'),(225,225,'1996-08-12','lunes'),(226,226,'1996-08-13','martes'),(227,227,'1996-08-14','miércoles'),(228,228,'1996-08-15','jueves'),(229,229,'1996-08-16','viernes'),(230,230,'1996-08-17','sábado'),(231,231,'1996-08-18','domingo'),(232,232,'1996-08-19','lunes'),(233,233,'1996-08-20','martes'),(234,234,'1996-08-21','miércoles'),(235,235,'1996-08-22','jueves'),(236,236,'1996-08-23','viernes'),(237,237,'1996-08-24','sábado'),(238,238,'1996-08-25','domingo'),(239,239,'1996-08-26','lunes'),(240,240,'1996-08-27','martes'),(241,241,'1996-08-28','miércoles'),(242,242,'1996-08-29','jueves'),(243,243,'1996-08-30','viernes'),(244,244,'1996-08-31','sábado'),(245,245,'1996-09-01','domingo'),(246,246,'1996-09-02','lunes'),(247,247,'1996-09-03','martes'),(248,248,'1996-09-04','miércoles'),(249,249,'1996-09-05','jueves'),(250,250,'1996-09-06','viernes'),(251,251,'1996-09-07','sábado'),(252,252,'1996-09-08','domingo'),(253,253,'1996-09-09','lunes'),(254,254,'1996-09-10','martes'),(255,255,'1996-09-11','miércoles'),(256,256,'1996-09-12','jueves'),(257,257,'1996-09-13','viernes'),(258,258,'1996-09-14','sábado'),(259,259,'1996-09-15','domingo'),(260,260,'1996-09-16','lunes'),(261,261,'1996-09-17','martes'),(262,262,'1996-09-18','miércoles'),(263,263,'1996-09-19','jueves'),(264,264,'1996-09-20','viernes'),(265,265,'1996-09-21','sábado'),(266,266,'1996-09-22','domingo'),(267,267,'1996-09-23','lunes'),(268,268,'1996-09-24','martes'),(269,269,'1996-09-25','miércoles'),(270,270,'1996-09-26','jueves'),(271,271,'1996-09-27','viernes'),(272,272,'1996-09-28','sábado'),(273,273,'1996-09-29','domingo'),(274,274,'1996-09-30','lunes'),(275,275,'1996-10-01','martes'),(276,276,'1996-10-02','miércoles'),(277,277,'1996-10-03','jueves'),(278,278,'1996-10-04','viernes'),(279,279,'1996-10-05','sábado'),(280,280,'1996-10-06','domingo'),(281,281,'1996-10-07','lunes'),(282,282,'1996-10-08','martes'),(283,283,'1996-10-09','miércoles'),(284,284,'1996-10-10','jueves'),(285,285,'1996-10-11','viernes'),(286,286,'1996-10-12','sábado'),(287,287,'1996-10-13','domingo'),(288,288,'1996-10-14','lunes'),(289,289,'1996-10-15','martes'),(290,290,'1996-10-16','miércoles'),(291,291,'1996-10-17','jueves'),(292,292,'1996-10-18','viernes'),(293,293,'1996-10-19','sábado'),(294,294,'1996-10-20','domingo'),(295,295,'1996-10-21','lunes'),(296,296,'1996-10-22','martes'),(297,297,'1996-10-23','miércoles'),(298,298,'1996-10-24','jueves'),(299,299,'1996-10-25','viernes'),(300,300,'1996-10-26','sábado'),(301,301,'1996-10-27','domingo'),(302,302,'1996-10-28','lunes'),(303,303,'1996-10-29','martes'),(304,304,'1996-10-30','miércoles'),(305,305,'1996-10-31','jueves'),(306,306,'1996-11-01','viernes'),(307,307,'1996-11-02','sábado'),(308,308,'1996-11-03','domingo'),(309,309,'1996-11-04','lunes'),(310,310,'1996-11-05','martes'),(311,311,'1996-11-06','miércoles'),(312,312,'1996-11-07','jueves'),(313,313,'1996-11-08','viernes'),(314,314,'1996-11-09','sábado'),(315,315,'1996-11-10','domingo'),(316,316,'1996-11-11','lunes'),(317,317,'1996-11-12','martes'),(318,318,'1996-11-13','miércoles'),(319,319,'1996-11-14','jueves'),(320,320,'1996-11-15','viernes'),(321,321,'1996-11-16','sábado'),(322,322,'1996-11-17','domingo'),(323,323,'1996-11-18','lunes'),(324,324,'1996-11-19','martes'),(325,325,'1996-11-20','miércoles'),(326,326,'1996-11-21','jueves'),(327,327,'1996-11-22','viernes'),(328,328,'1996-11-23','sábado'),(329,329,'1996-11-24','domingo'),(330,330,'1996-11-25','lunes'),(331,331,'1996-11-26','martes'),(332,332,'1996-11-27','miércoles'),(333,333,'1996-11-28','jueves'),(334,334,'1996-11-29','viernes'),(335,335,'1996-11-30','sábado'),(336,336,'1996-12-01','domingo'),(337,337,'1996-12-02','lunes'),(338,338,'1996-12-03','martes'),(339,339,'1996-12-04','miércoles'),(340,340,'1996-12-05','jueves'),(341,341,'1996-12-06','viernes'),(342,342,'1996-12-07','sábado'),(343,343,'1996-12-08','domingo'),(344,344,'1996-12-09','lunes'),(345,345,'1996-12-10','martes'),(346,346,'1996-12-11','miércoles'),(347,347,'1996-12-12','jueves'),(348,348,'1996-12-13','viernes'),(349,349,'1996-12-14','sábado'),(350,350,'1996-12-15','domingo'),(351,351,'1996-12-16','lunes'),(352,352,'1996-12-17','martes'),(353,353,'1996-12-18','miércoles'),(354,354,'1996-12-19','jueves'),(355,355,'1996-12-20','viernes'),(356,356,'1996-12-21','sábado'),(357,357,'1996-12-22','domingo'),(358,358,'1996-12-23','lunes'),(359,359,'1996-12-24','martes'),(360,360,'1996-12-25','miércoles'),(361,361,'1996-12-26','jueves'),(362,362,'1996-12-27','viernes'),(363,363,'1996-12-28','sábado'),(364,364,'1996-12-29','domingo'),(365,365,'1996-12-30','lunes'),(366,366,'1996-12-31','martes'),(367,367,'1997-01-01','miércoles'),(368,368,'1997-01-02','jueves'),(369,369,'1997-01-03','viernes'),(370,370,'1997-01-04','sábado'),(371,371,'1997-01-05','domingo'),(372,372,'1997-01-06','lunes'),(373,373,'1997-01-07','martes'),(374,374,'1997-01-08','miércoles'),(375,375,'1997-01-09','jueves'),(376,376,'1997-01-10','viernes'),(377,377,'1997-01-11','sábado'),(378,378,'1997-01-12','domingo'),(379,379,'1997-01-13','lunes'),(380,380,'1997-01-14','martes'),(381,381,'1997-01-15','miércoles'),(382,382,'1997-01-16','jueves'),(383,383,'1997-01-17','viernes'),(384,384,'1997-01-18','sábado'),(385,385,'1997-01-19','domingo'),(386,386,'1997-01-20','lunes'),(387,387,'1997-01-21','martes'),(388,388,'1997-01-22','miércoles'),(389,389,'1997-01-23','jueves'),(390,390,'1997-01-24','viernes'),(391,391,'1997-01-25','sábado'),(392,392,'1997-01-26','domingo'),(393,393,'1997-01-27','lunes'),(394,394,'1997-01-28','martes'),(395,395,'1997-01-29','miércoles'),(396,396,'1997-01-30','jueves'),(397,397,'1997-01-31','viernes'),(398,398,'1997-02-01','sábado'),(399,399,'1997-02-02','domingo'),(400,400,'1997-02-03','lunes'),(401,401,'1997-02-04','martes'),(402,402,'1997-02-05','miércoles'),(403,403,'1997-02-06','jueves'),(404,404,'1997-02-07','viernes'),(405,405,'1997-02-08','sábado'),(406,406,'1997-02-09','domingo'),(407,407,'1997-02-10','lunes'),(408,408,'1997-02-11','martes'),(409,409,'1997-02-12','miércoles'),(410,410,'1997-02-13','jueves'),(411,411,'1997-02-14','viernes'),(412,412,'1997-02-15','sábado'),(413,413,'1997-02-16','domingo'),(414,414,'1997-02-17','lunes'),(415,415,'1997-02-18','martes'),(416,416,'1997-02-19','miércoles'),(417,417,'1997-02-20','jueves'),(418,418,'1997-02-21','viernes'),(419,419,'1997-02-22','sábado'),(420,420,'1997-02-23','domingo'),(421,421,'1997-02-24','lunes'),(422,422,'1997-02-25','martes'),(423,423,'1997-02-26','miércoles'),(424,424,'1997-02-27','jueves'),(425,425,'1997-02-28','viernes'),(426,426,'1997-03-01','sábado'),(427,427,'1997-03-02','domingo'),(428,428,'1997-03-03','lunes'),(429,429,'1997-03-04','martes'),(430,430,'1997-03-05','miércoles'),(431,431,'1997-03-06','jueves'),(432,432,'1997-03-07','viernes'),(433,433,'1997-03-08','sábado'),(434,434,'1997-03-09','domingo'),(435,435,'1997-03-10','lunes'),(436,436,'1997-03-11','martes'),(437,437,'1997-03-12','miércoles'),(438,438,'1997-03-13','jueves'),(439,439,'1997-03-14','viernes'),(440,440,'1997-03-15','sábado'),(441,441,'1997-03-16','domingo'),(442,442,'1997-03-17','lunes'),(443,443,'1997-03-18','martes'),(444,444,'1997-03-19','miércoles'),(445,445,'1997-03-20','jueves'),(446,446,'1997-03-21','viernes'),(447,447,'1997-03-22','sábado'),(448,448,'1997-03-23','domingo'),(449,449,'1997-03-24','lunes'),(450,450,'1997-03-25','martes'),(451,451,'1997-03-26','miércoles'),(452,452,'1997-03-27','jueves'),(453,453,'1997-03-28','viernes'),(454,454,'1997-03-29','sábado'),(455,455,'1997-03-30','domingo'),(456,456,'1997-03-31','lunes'),(457,457,'1997-04-01','martes'),(458,458,'1997-04-02','miércoles'),(459,459,'1997-04-03','jueves'),(460,460,'1997-04-04','viernes'),(461,461,'1997-04-05','sábado'),(462,462,'1997-04-06','domingo'),(463,463,'1997-04-07','lunes'),(464,464,'1997-04-08','martes'),(465,465,'1997-04-09','miércoles'),(466,466,'1997-04-10','jueves'),(467,467,'1997-04-11','viernes'),(468,468,'1997-04-12','sábado'),(469,469,'1997-04-13','domingo'),(470,470,'1997-04-14','lunes'),(471,471,'1997-04-15','martes'),(472,472,'1997-04-16','miércoles'),(473,473,'1997-04-17','jueves'),(474,474,'1997-04-18','viernes'),(475,475,'1997-04-19','sábado'),(476,476,'1997-04-20','domingo'),(477,477,'1997-04-21','lunes'),(478,478,'1997-04-22','martes'),(479,479,'1997-04-23','miércoles'),(480,480,'1997-04-24','jueves'),(481,481,'1997-04-25','viernes'),(482,482,'1997-04-26','sábado'),(483,483,'1997-04-27','domingo'),(484,484,'1997-04-28','lunes'),(485,485,'1997-04-29','martes'),(486,486,'1997-04-30','miércoles'),(487,487,'1997-05-01','jueves'),(488,488,'1997-05-02','viernes'),(489,489,'1997-05-03','sábado'),(490,490,'1997-05-04','domingo'),(491,491,'1997-05-05','lunes'),(492,492,'1997-05-06','martes'),(493,493,'1997-05-07','miércoles'),(494,494,'1997-05-08','jueves'),(495,495,'1997-05-09','viernes'),(496,496,'1997-05-10','sábado'),(497,497,'1997-05-11','domingo'),(498,498,'1997-05-12','lunes'),(499,499,'1997-05-13','martes'),(500,500,'1997-05-14','miércoles'),(501,501,'1997-05-15','jueves'),(502,502,'1997-05-16','viernes'),(503,503,'1997-05-17','sábado'),(504,504,'1997-05-18','domingo'),(505,505,'1997-05-19','lunes'),(506,506,'1997-05-20','martes'),(507,507,'1997-05-21','miércoles'),(508,508,'1997-05-22','jueves'),(509,509,'1997-05-23','viernes'),(510,510,'1997-05-24','sábado'),(511,511,'1997-05-25','domingo'),(512,512,'1997-05-26','lunes'),(513,513,'1997-05-27','martes'),(514,514,'1997-05-28','miércoles'),(515,515,'1997-05-29','jueves'),(516,516,'1997-05-30','viernes'),(517,517,'1997-05-31','sábado'),(518,518,'1997-06-01','domingo'),(519,519,'1997-06-02','lunes'),(520,520,'1997-06-03','martes'),(521,521,'1997-06-04','miércoles'),(522,522,'1997-06-05','jueves'),(523,523,'1997-06-06','viernes'),(524,524,'1997-06-07','sábado'),(525,525,'1997-06-08','domingo'),(526,526,'1997-06-09','lunes'),(527,527,'1997-06-10','martes'),(528,528,'1997-06-11','miércoles'),(529,529,'1997-06-12','jueves'),(530,530,'1997-06-13','viernes'),(531,531,'1997-06-14','sábado'),(532,532,'1997-06-15','domingo'),(533,533,'1997-06-16','lunes'),(534,534,'1997-06-17','martes'),(535,535,'1997-06-18','miércoles'),(536,536,'1997-06-19','jueves'),(537,537,'1997-06-20','viernes'),(538,538,'1997-06-21','sábado'),(539,539,'1997-06-22','domingo'),(540,540,'1997-06-23','lunes'),(541,541,'1997-06-24','martes'),(542,542,'1997-06-25','miércoles'),(543,543,'1997-06-26','jueves'),(544,544,'1997-06-27','viernes'),(545,545,'1997-06-28','sábado'),(546,546,'1997-06-29','domingo'),(547,547,'1997-06-30','lunes'),(548,548,'1997-07-01','martes'),(549,549,'1997-07-02','miércoles'),(550,550,'1997-07-03','jueves'),(551,551,'1997-07-04','viernes'),(552,552,'1997-07-05','sábado'),(553,553,'1997-07-06','domingo'),(554,554,'1997-07-07','lunes'),(555,555,'1997-07-08','martes'),(556,556,'1997-07-09','miércoles'),(557,557,'1997-07-10','jueves'),(558,558,'1997-07-11','viernes'),(559,559,'1997-07-12','sábado'),(560,560,'1997-07-13','domingo'),(561,561,'1997-07-14','lunes'),(562,562,'1997-07-15','martes'),(563,563,'1997-07-16','miércoles'),(564,564,'1997-07-17','jueves'),(565,565,'1997-07-18','viernes'),(566,566,'1997-07-19','sábado'),(567,567,'1997-07-20','domingo'),(568,568,'1997-07-21','lunes'),(569,569,'1997-07-22','martes'),(570,570,'1997-07-23','miércoles'),(571,571,'1997-07-24','jueves'),(572,572,'1997-07-25','viernes'),(573,573,'1997-07-26','sábado'),(574,574,'1997-07-27','domingo'),(575,575,'1997-07-28','lunes'),(576,576,'1997-07-29','martes'),(577,577,'1997-07-30','miércoles'),(578,578,'1997-07-31','jueves'),(579,579,'1997-08-01','viernes'),(580,580,'1997-08-02','sábado'),(581,581,'1997-08-03','domingo'),(582,582,'1997-08-04','lunes'),(583,583,'1997-08-05','martes'),(584,584,'1997-08-06','miércoles'),(585,585,'1997-08-07','jueves'),(586,586,'1997-08-08','viernes'),(587,587,'1997-08-09','sábado'),(588,588,'1997-08-10','domingo'),(589,589,'1997-08-11','lunes'),(590,590,'1997-08-12','martes'),(591,591,'1997-08-13','miércoles'),(592,592,'1997-08-14','jueves'),(593,593,'1997-08-15','viernes'),(594,594,'1997-08-16','sábado'),(595,595,'1997-08-17','domingo'),(596,596,'1997-08-18','lunes'),(597,597,'1997-08-19','martes'),(598,598,'1997-08-20','miércoles'),(599,599,'1997-08-21','jueves'),(600,600,'1997-08-22','viernes'),(601,601,'1997-08-23','sábado'),(602,602,'1997-08-24','domingo'),(603,603,'1997-08-25','lunes'),(604,604,'1997-08-26','martes'),(605,605,'1997-08-27','miércoles'),(606,606,'1997-08-28','jueves'),(607,607,'1997-08-29','viernes'),(608,608,'1997-08-30','sábado'),(609,609,'1997-08-31','domingo'),(610,610,'1997-09-01','lunes'),(611,611,'1997-09-02','martes'),(612,612,'1997-09-03','miércoles'),(613,613,'1997-09-04','jueves'),(614,614,'1997-09-05','viernes'),(615,615,'1997-09-06','sábado'),(616,616,'1997-09-07','domingo'),(617,617,'1997-09-08','lunes'),(618,618,'1997-09-09','martes'),(619,619,'1997-09-10','miércoles'),(620,620,'1997-09-11','jueves'),(621,621,'1997-09-12','viernes'),(622,622,'1997-09-13','sábado'),(623,623,'1997-09-14','domingo'),(624,624,'1997-09-15','lunes'),(625,625,'1997-09-16','martes'),(626,626,'1997-09-17','miércoles'),(627,627,'1997-09-18','jueves'),(628,628,'1997-09-19','viernes'),(629,629,'1997-09-20','sábado'),(630,630,'1997-09-21','domingo'),(631,631,'1997-09-22','lunes'),(632,632,'1997-09-23','martes'),(633,633,'1997-09-24','miércoles'),(634,634,'1997-09-25','jueves'),(635,635,'1997-09-26','viernes'),(636,636,'1997-09-27','sábado'),(637,637,'1997-09-28','domingo'),(638,638,'1997-09-29','lunes'),(639,639,'1997-09-30','martes'),(640,640,'1997-10-01','miércoles'),(641,641,'1997-10-02','jueves'),(642,642,'1997-10-03','viernes'),(643,643,'1997-10-04','sábado'),(644,644,'1997-10-05','domingo'),(645,645,'1997-10-06','lunes'),(646,646,'1997-10-07','martes'),(647,647,'1997-10-08','miércoles'),(648,648,'1997-10-09','jueves'),(649,649,'1997-10-10','viernes'),(650,650,'1997-10-11','sábado'),(651,651,'1997-10-12','domingo'),(652,652,'1997-10-13','lunes'),(653,653,'1997-10-14','martes'),(654,654,'1997-10-15','miércoles'),(655,655,'1997-10-16','jueves'),(656,656,'1997-10-17','viernes'),(657,657,'1997-10-18','sábado'),(658,658,'1997-10-19','domingo'),(659,659,'1997-10-20','lunes'),(660,660,'1997-10-21','martes'),(661,661,'1997-10-22','miércoles'),(662,662,'1997-10-23','jueves'),(663,663,'1997-10-24','viernes'),(664,664,'1997-10-25','sábado'),(665,665,'1997-10-26','domingo'),(666,666,'1997-10-27','lunes'),(667,667,'1997-10-28','martes'),(668,668,'1997-10-29','miércoles'),(669,669,'1997-10-30','jueves'),(670,670,'1997-10-31','viernes'),(671,671,'1997-11-01','sábado'),(672,672,'1997-11-02','domingo'),(673,673,'1997-11-03','lunes'),(674,674,'1997-11-04','martes'),(675,675,'1997-11-05','miércoles'),(676,676,'1997-11-06','jueves'),(677,677,'1997-11-07','viernes'),(678,678,'1997-11-08','sábado'),(679,679,'1997-11-09','domingo'),(680,680,'1997-11-10','lunes'),(681,681,'1997-11-11','martes'),(682,682,'1997-11-12','miércoles'),(683,683,'1997-11-13','jueves'),(684,684,'1997-11-14','viernes'),(685,685,'1997-11-15','sábado'),(686,686,'1997-11-16','domingo'),(687,687,'1997-11-17','lunes'),(688,688,'1997-11-18','martes'),(689,689,'1997-11-19','miércoles'),(690,690,'1997-11-20','jueves'),(691,691,'1997-11-21','viernes'),(692,692,'1997-11-22','sábado'),(693,693,'1997-11-23','domingo'),(694,694,'1997-11-24','lunes'),(695,695,'1997-11-25','martes'),(696,696,'1997-11-26','miércoles'),(697,697,'1997-11-27','jueves'),(698,698,'1997-11-28','viernes'),(699,699,'1997-11-29','sábado'),(700,700,'1997-11-30','domingo'),(701,701,'1997-12-01','lunes'),(702,702,'1997-12-02','martes'),(703,703,'1997-12-03','miércoles'),(704,704,'1997-12-04','jueves'),(705,705,'1997-12-05','viernes'),(706,706,'1997-12-06','sábado'),(707,707,'1997-12-07','domingo'),(708,708,'1997-12-08','lunes'),(709,709,'1997-12-09','martes'),(710,710,'1997-12-10','miércoles'),(711,711,'1997-12-11','jueves'),(712,712,'1997-12-12','viernes'),(713,713,'1997-12-13','sábado'),(714,714,'1997-12-14','domingo'),(715,715,'1997-12-15','lunes'),(716,716,'1997-12-16','martes'),(717,717,'1997-12-17','miércoles'),(718,718,'1997-12-18','jueves'),(719,719,'1997-12-19','viernes'),(720,720,'1997-12-20','sábado'),(721,721,'1997-12-21','domingo'),(722,722,'1997-12-22','lunes'),(723,723,'1997-12-23','martes'),(724,724,'1997-12-24','miércoles'),(725,725,'1997-12-25','jueves'),(726,726,'1997-12-26','viernes'),(727,727,'1997-12-27','sábado'),(728,728,'1997-12-28','domingo'),(729,729,'1997-12-29','lunes'),(730,730,'1997-12-30','martes'),(731,731,'1997-12-31','miércoles'),(732,732,'1998-01-01','jueves'),(733,733,'1998-01-02','viernes'),(734,734,'1998-01-03','sábado'),(735,735,'1998-01-04','domingo'),(736,736,'1998-01-05','lunes'),(737,737,'1998-01-06','martes'),(738,738,'1998-01-07','miércoles'),(739,739,'1998-01-08','jueves'),(740,740,'1998-01-09','viernes'),(741,741,'1998-01-10','sábado'),(742,742,'1998-01-11','domingo'),(743,743,'1998-01-12','lunes'),(744,744,'1998-01-13','martes'),(745,745,'1998-01-14','miércoles'),(746,746,'1998-01-15','jueves'),(747,747,'1998-01-16','viernes'),(748,748,'1998-01-17','sábado'),(749,749,'1998-01-18','domingo'),(750,750,'1998-01-19','lunes'),(751,751,'1998-01-20','martes'),(752,752,'1998-01-21','miércoles'),(753,753,'1998-01-22','jueves'),(754,754,'1998-01-23','viernes'),(755,755,'1998-01-24','sábado'),(756,756,'1998-01-25','domingo'),(757,757,'1998-01-26','lunes'),(758,758,'1998-01-27','martes'),(759,759,'1998-01-28','miércoles'),(760,760,'1998-01-29','jueves'),(761,761,'1998-01-30','viernes'),(762,762,'1998-01-31','sábado'),(763,763,'1998-02-01','domingo'),(764,764,'1998-02-02','lunes'),(765,765,'1998-02-03','martes'),(766,766,'1998-02-04','miércoles'),(767,767,'1998-02-05','jueves'),(768,768,'1998-02-06','viernes'),(769,769,'1998-02-07','sábado'),(770,770,'1998-02-08','domingo'),(771,771,'1998-02-09','lunes'),(772,772,'1998-02-10','martes'),(773,773,'1998-02-11','miércoles'),(774,774,'1998-02-12','jueves'),(775,775,'1998-02-13','viernes'),(776,776,'1998-02-14','sábado'),(777,777,'1998-02-15','domingo'),(778,778,'1998-02-16','lunes'),(779,779,'1998-02-17','martes'),(780,780,'1998-02-18','miércoles'),(781,781,'1998-02-19','jueves'),(782,782,'1998-02-20','viernes'),(783,783,'1998-02-21','sábado'),(784,784,'1998-02-22','domingo'),(785,785,'1998-02-23','lunes'),(786,786,'1998-02-24','martes'),(787,787,'1998-02-25','miércoles'),(788,788,'1998-02-26','jueves'),(789,789,'1998-02-27','viernes'),(790,790,'1998-02-28','sábado'),(791,791,'1998-03-01','domingo'),(792,792,'1998-03-02','lunes'),(793,793,'1998-03-03','martes'),(794,794,'1998-03-04','miércoles'),(795,795,'1998-03-05','jueves'),(796,796,'1998-03-06','viernes'),(797,797,'1998-03-07','sábado'),(798,798,'1998-03-08','domingo'),(799,799,'1998-03-09','lunes'),(800,800,'1998-03-10','martes'),(801,801,'1998-03-11','miércoles'),(802,802,'1998-03-12','jueves'),(803,803,'1998-03-13','viernes'),(804,804,'1998-03-14','sábado'),(805,805,'1998-03-15','domingo'),(806,806,'1998-03-16','lunes'),(807,807,'1998-03-17','martes'),(808,808,'1998-03-18','miércoles'),(809,809,'1998-03-19','jueves'),(810,810,'1998-03-20','viernes'),(811,811,'1998-03-21','sábado'),(812,812,'1998-03-22','domingo'),(813,813,'1998-03-23','lunes'),(814,814,'1998-03-24','martes'),(815,815,'1998-03-25','miércoles'),(816,816,'1998-03-26','jueves'),(817,817,'1998-03-27','viernes'),(818,818,'1998-03-28','sábado'),(819,819,'1998-03-29','domingo'),(820,820,'1998-03-30','lunes'),(821,821,'1998-03-31','martes'),(822,822,'1998-04-01','miércoles'),(823,823,'1998-04-02','jueves'),(824,824,'1998-04-03','viernes'),(825,825,'1998-04-04','sábado'),(826,826,'1998-04-05','domingo'),(827,827,'1998-04-06','lunes'),(828,828,'1998-04-07','martes'),(829,829,'1998-04-08','miércoles'),(830,830,'1998-04-09','jueves'),(831,831,'1998-04-10','viernes'),(832,832,'1998-04-11','sábado'),(833,833,'1998-04-12','domingo'),(834,834,'1998-04-13','lunes'),(835,835,'1998-04-14','martes'),(836,836,'1998-04-15','miércoles'),(837,837,'1998-04-16','jueves'),(838,838,'1998-04-17','viernes'),(839,839,'1998-04-18','sábado'),(840,840,'1998-04-19','domingo'),(841,841,'1998-04-20','lunes'),(842,842,'1998-04-21','martes'),(843,843,'1998-04-22','miércoles'),(844,844,'1998-04-23','jueves'),(845,845,'1998-04-24','viernes'),(846,846,'1998-04-25','sábado'),(847,847,'1998-04-26','domingo'),(848,848,'1998-04-27','lunes'),(849,849,'1998-04-28','martes'),(850,850,'1998-04-29','miércoles'),(851,851,'1998-04-30','jueves'),(852,852,'1998-05-01','viernes'),(853,853,'1998-05-02','sábado'),(854,854,'1998-05-03','domingo'),(855,855,'1998-05-04','lunes'),(856,856,'1998-05-05','martes'),(857,857,'1998-05-06','miércoles'),(858,858,'1998-05-07','jueves'),(859,859,'1998-05-08','viernes'),(860,860,'1998-05-09','sábado'),(861,861,'1998-05-10','domingo'),(862,862,'1998-05-11','lunes'),(863,863,'1998-05-12','martes'),(864,864,'1998-05-13','miércoles'),(865,865,'1998-05-14','jueves'),(866,866,'1998-05-15','viernes'),(867,867,'1998-05-16','sábado'),(868,868,'1998-05-17','domingo'),(869,869,'1998-05-18','lunes'),(870,870,'1998-05-19','martes'),(871,871,'1998-05-20','miércoles'),(872,872,'1998-05-21','jueves'),(873,873,'1998-05-22','viernes'),(874,874,'1998-05-23','sábado'),(875,875,'1998-05-24','domingo'),(876,876,'1998-05-25','lunes'),(877,877,'1998-05-26','martes'),(878,878,'1998-05-27','miércoles'),(879,879,'1998-05-28','jueves'),(880,880,'1998-05-29','viernes'),(881,881,'1998-05-30','sábado'),(882,882,'1998-05-31','domingo'),(883,883,'1998-06-01','lunes'),(884,884,'1998-06-02','martes'),(885,885,'1998-06-03','miércoles'),(886,886,'1998-06-04','jueves'),(887,887,'1998-06-05','viernes'),(888,888,'1998-06-06','sábado'),(889,889,'1998-06-07','domingo'),(890,890,'1998-06-08','lunes'),(891,891,'1998-06-09','martes'),(892,892,'1998-06-10','miércoles'),(893,893,'1998-06-11','jueves'),(894,894,'1998-06-12','viernes'),(895,895,'1998-06-13','sábado'),(896,896,'1998-06-14','domingo'),(897,897,'1998-06-15','lunes'),(898,898,'1998-06-16','martes'),(899,899,'1998-06-17','miércoles'),(900,900,'1998-06-18','jueves'),(901,901,'1998-06-19','viernes'),(902,902,'1998-06-20','sábado'),(903,903,'1998-06-21','domingo'),(904,904,'1998-06-22','lunes'),(905,905,'1998-06-23','martes'),(906,906,'1998-06-24','miércoles'),(907,907,'1998-06-25','jueves'),(908,908,'1998-06-26','viernes'),(909,909,'1998-06-27','sábado'),(910,910,'1998-06-28','domingo'),(911,911,'1998-06-29','lunes'),(912,912,'1998-06-30','martes'),(913,913,'1998-07-01','miércoles'),(914,914,'1998-07-02','jueves'),(915,915,'1998-07-03','viernes'),(916,916,'1998-07-04','sábado'),(917,917,'1998-07-05','domingo'),(918,918,'1998-07-06','lunes'),(919,919,'1998-07-07','martes'),(920,920,'1998-07-08','miércoles'),(921,921,'1998-07-09','jueves'),(922,922,'1998-07-10','viernes'),(923,923,'1998-07-11','sábado'),(924,924,'1998-07-12','domingo'),(925,925,'1998-07-13','lunes'),(926,926,'1998-07-14','martes'),(927,927,'1998-07-15','miércoles'),(928,928,'1998-07-16','jueves'),(929,929,'1998-07-17','viernes'),(930,930,'1998-07-18','sábado'),(931,931,'1998-07-19','domingo'),(932,932,'1998-07-20','lunes'),(933,933,'1998-07-21','martes'),(934,934,'1998-07-22','miércoles'),(935,935,'1998-07-23','jueves'),(936,936,'1998-07-24','viernes'),(937,937,'1998-07-25','sábado'),(938,938,'1998-07-26','domingo'),(939,939,'1998-07-27','lunes'),(940,940,'1998-07-28','martes'),(941,941,'1998-07-29','miércoles'),(942,942,'1998-07-30','jueves'),(943,943,'1998-07-31','viernes'),(944,944,'1998-08-01','sábado'),(945,945,'1998-08-02','domingo'),(946,946,'1998-08-03','lunes'),(947,947,'1998-08-04','martes'),(948,948,'1998-08-05','miércoles'),(949,949,'1998-08-06','jueves'),(950,950,'1998-08-07','viernes'),(951,951,'1998-08-08','sábado'),(952,952,'1998-08-09','domingo'),(953,953,'1998-08-10','lunes'),(954,954,'1998-08-11','martes'),(955,955,'1998-08-12','miércoles'),(956,956,'1998-08-13','jueves'),(957,957,'1998-08-14','viernes'),(958,958,'1998-08-15','sábado'),(959,959,'1998-08-16','domingo'),(960,960,'1998-08-17','lunes'),(961,961,'1998-08-18','martes'),(962,962,'1998-08-19','miércoles'),(963,963,'1998-08-20','jueves'),(964,964,'1998-08-21','viernes'),(965,965,'1998-08-22','sábado'),(966,966,'1998-08-23','domingo'),(967,967,'1998-08-24','lunes'),(968,968,'1998-08-25','martes'),(969,969,'1998-08-26','miércoles'),(970,970,'1998-08-27','jueves'),(971,971,'1998-08-28','viernes'),(972,972,'1998-08-29','sábado'),(973,973,'1998-08-30','domingo'),(974,974,'1998-08-31','lunes'),(975,975,'1998-09-01','martes'),(976,976,'1998-09-02','miércoles'),(977,977,'1998-09-03','jueves'),(978,978,'1998-09-04','viernes'),(979,979,'1998-09-05','sábado'),(980,980,'1998-09-06','domingo'),(981,981,'1998-09-07','lunes'),(982,982,'1998-09-08','martes'),(983,983,'1998-09-09','miércoles'),(984,984,'1998-09-10','jueves'),(985,985,'1998-09-11','viernes'),(986,986,'1998-09-12','sábado'),(987,987,'1998-09-13','domingo'),(988,988,'1998-09-14','lunes'),(989,989,'1998-09-15','martes'),(990,990,'1998-09-16','miércoles'),(991,991,'1998-09-17','jueves'),(992,992,'1998-09-18','viernes'),(993,993,'1998-09-19','sábado'),(994,994,'1998-09-20','domingo'),(995,995,'1998-09-21','lunes'),(996,996,'1998-09-22','martes'),(997,997,'1998-09-23','miércoles'),(998,998,'1998-09-24','jueves'),(999,999,'1998-09-25','viernes'),(1000,1000,'1998-09-26','sábado'),(1001,1001,'1998-09-27','domingo'),(1002,1002,'1998-09-28','lunes'),(1003,1003,'1998-09-29','martes'),(1004,1004,'1998-09-30','miércoles'),(1005,1005,'1998-10-01','jueves'),(1006,1006,'1998-10-02','viernes'),(1007,1007,'1998-10-03','sábado'),(1008,1008,'1998-10-04','domingo'),(1009,1009,'1998-10-05','lunes'),(1010,1010,'1998-10-06','martes'),(1011,1011,'1998-10-07','miércoles'),(1012,1012,'1998-10-08','jueves'),(1013,1013,'1998-10-09','viernes'),(1014,1014,'1998-10-10','sábado'),(1015,1015,'1998-10-11','domingo'),(1016,1016,'1998-10-12','lunes'),(1017,1017,'1998-10-13','martes'),(1018,1018,'1998-10-14','miércoles'),(1019,1019,'1998-10-15','jueves'),(1020,1020,'1998-10-16','viernes'),(1021,1021,'1998-10-17','sábado'),(1022,1022,'1998-10-18','domingo'),(1023,1023,'1998-10-19','lunes'),(1024,1024,'1998-10-20','martes'),(1025,1025,'1998-10-21','miércoles'),(1026,1026,'1998-10-22','jueves'),(1027,1027,'1998-10-23','viernes'),(1028,1028,'1998-10-24','sábado'),(1029,1029,'1998-10-25','domingo'),(1030,1030,'1998-10-26','lunes'),(1031,1031,'1998-10-27','martes'),(1032,1032,'1998-10-28','miércoles'),(1033,1033,'1998-10-29','jueves'),(1034,1034,'1998-10-30','viernes'),(1035,1035,'1998-10-31','sábado'),(1036,1036,'1998-11-01','domingo'),(1037,1037,'1998-11-02','lunes'),(1038,1038,'1998-11-03','martes'),(1039,1039,'1998-11-04','miércoles'),(1040,1040,'1998-11-05','jueves'),(1041,1041,'1998-11-06','viernes'),(1042,1042,'1998-11-07','sábado'),(1043,1043,'1998-11-08','domingo'),(1044,1044,'1998-11-09','lunes'),(1045,1045,'1998-11-10','martes'),(1046,1046,'1998-11-11','miércoles'),(1047,1047,'1998-11-12','jueves'),(1048,1048,'1998-11-13','viernes'),(1049,1049,'1998-11-14','sábado'),(1050,1050,'1998-11-15','domingo'),(1051,1051,'1998-11-16','lunes'),(1052,1052,'1998-11-17','martes'),(1053,1053,'1998-11-18','miércoles'),(1054,1054,'1998-11-19','jueves'),(1055,1055,'1998-11-20','viernes'),(1056,1056,'1998-11-21','sábado'),(1057,1057,'1998-11-22','domingo'),(1058,1058,'1998-11-23','lunes'),(1059,1059,'1998-11-24','martes'),(1060,1060,'1998-11-25','miércoles'),(1061,1061,'1998-11-26','jueves'),(1062,1062,'1998-11-27','viernes'),(1063,1063,'1998-11-28','sábado'),(1064,1064,'1998-11-29','domingo'),(1065,1065,'1998-11-30','lunes'),(1066,1066,'1998-12-01','martes'),(1067,1067,'1998-12-02','miércoles'),(1068,1068,'1998-12-03','jueves'),(1069,1069,'1998-12-04','viernes'),(1070,1070,'1998-12-05','sábado'),(1071,1071,'1998-12-06','domingo'),(1072,1072,'1998-12-07','lunes'),(1073,1073,'1998-12-08','martes'),(1074,1074,'1998-12-09','miércoles'),(1075,1075,'1998-12-10','jueves'),(1076,1076,'1998-12-11','viernes'),(1077,1077,'1998-12-12','sábado'),(1078,1078,'1998-12-13','domingo'),(1079,1079,'1998-12-14','lunes'),(1080,1080,'1998-12-15','martes'),(1081,1081,'1998-12-16','miércoles'),(1082,1082,'1998-12-17','jueves'),(1083,1083,'1998-12-18','viernes'),(1084,1084,'1998-12-19','sábado'),(1085,1085,'1998-12-20','domingo'),(1086,1086,'1998-12-21','lunes'),(1087,1087,'1998-12-22','martes'),(1088,1088,'1998-12-23','miércoles'),(1089,1089,'1998-12-24','jueves'),(1090,1090,'1998-12-25','viernes'),(1091,1091,'1998-12-26','sábado'),(1092,1092,'1998-12-27','domingo'),(1093,1093,'1998-12-28','lunes'),(1094,1094,'1998-12-29','martes'),(1095,1095,'1998-12-30','miércoles'),(1096,1096,'1998-12-31','jueves');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tratamientoEmpleado`
--

LOCK TABLES `dim_tratamientoEmpleado` WRITE;
/*!40000 ALTER TABLE `dim_tratamientoEmpleado` DISABLE KEYS */;
INSERT INTO `dim_tratamientoEmpleado` VALUES (1,'Srta.'),(2,'Dr.'),(3,'Sra.'),(4,'Sr.');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_trimestre`
--

LOCK TABLES `dim_trimestre` WRITE;
/*!40000 ALTER TABLE `dim_trimestre` DISABLE KEYS */;
INSERT INTO `dim_trimestre` VALUES (1,1,1,'Primero'),(2,1,2,'Segundo'),(3,1,3,'Tercero'),(4,1,4,'Cuarto'),(5,2,1,'Primero'),(6,2,2,'Segundo'),(7,2,3,'Tercero'),(8,2,4,'Cuarto'),(9,3,1,'Primero'),(10,3,2,'Segundo'),(11,3,3,'Tercero'),(12,3,4,'Cuarto');
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

-- Dump completed on 2018-10-31 15:55:52
