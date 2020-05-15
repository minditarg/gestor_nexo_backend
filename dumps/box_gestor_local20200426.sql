-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: boxrental
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='las pantallas del menu existentes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (1,'configuración',1),(11,'usuarios gestión',1),(12,'usuarios tipos',1),(21,'insumos categorias',1),(22,'insumos gestión',1),(23,'insumos costos',1),(24,'insumos auditoria',1),(31,'alertas costos',1),(32,'alertas pedidos',1),(41,'stock gestión',1),(42,'stock ajuste',1),(43,'stock ingresos',1),(44,'stock auditoria',1),(51,'modulos gestión',1),(52,'modulos estados',1),(53,'modulos plantillas',1),(54,'modulos analisis',1),(55,'modulos auditoria',1),(61,'pañol modulos',1),(62,'pañol entregas',1),(63,'pañol devoluciones',1),(71,'pedidos',1),(72,'pedidos estados',1);
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuraciones`
--

DROP TABLE IF EXISTS `configuraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuraciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuraciones`
--

LOCK TABLES `configuraciones` WRITE;
/*!40000 ALTER TABLE `configuraciones` DISABLE KEYS */;
INSERT INTO `configuraciones` VALUES (1,'alerta_costo','5');
/*!40000 ALTER TABLE `configuraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costos_historico`
--

DROP TABLE IF EXISTS `costos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costos_historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_insumo` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `costo` decimal(20,2) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costos_historico`
--

LOCK TABLES `costos_historico` WRITE;
/*!40000 ALTER TABLE `costos_historico` DISABLE KEYS */;
INSERT INTO `costos_historico` VALUES (1,7,'2020-01-19 05:55:41',1.00,72),(2,854,'2020-01-20 04:33:53',33000.00,72),(3,785,'2020-01-20 04:35:04',2016.00,72),(4,34,'2020-01-20 04:35:51',99.00,72),(5,1024,'2020-01-20 04:41:58',3600.00,72),(6,764,'2020-01-20 05:38:10',350.00,72),(7,190,'2020-01-20 06:18:18',650.00,72),(8,186,'2020-01-20 06:18:46',650.00,72),(9,487,'2020-01-20 06:29:08',4400.00,72),(10,402,'2020-01-20 06:34:40',4400.00,72),(11,403,'2020-01-20 06:34:47',4400.00,72),(12,1025,'2020-01-20 15:13:10',17680.00,72),(13,810,'2020-01-20 15:13:38',3150.00,72),(14,854,'2020-01-20 15:14:39',41000.00,72),(15,1026,'2020-01-20 15:16:10',3500.00,72),(16,1027,'2020-01-20 15:19:41',20000.00,72),(17,1028,'2020-01-20 15:44:59',3500.00,72),(18,1029,'2020-01-20 15:46:50',1000.00,72),(19,1030,'2020-01-20 15:49:13',450.00,72),(20,94,'2020-01-22 18:59:33',75.00,72),(21,1,'2020-01-22 19:11:37',28923.00,72),(22,1,'2020-01-22 19:11:55',28923.80,72),(23,1,'2020-01-22 19:12:09',28923.00,72),(24,1,'2020-01-22 19:12:21',28923.00,72),(25,1,'2020-01-22 19:14:29',28923.00,72),(26,1,'2020-01-22 19:15:48',28923.00,72),(27,1,'2020-01-22 19:18:16',28923.00,72),(28,1,'2020-01-22 19:20:35',28923.00,72),(29,1,'2020-01-22 19:21:37',28923.50,72),(30,2,'2020-01-22 19:24:33',1513.20,72),(31,2,'2020-01-22 19:25:02',1513.50,72),(32,1,'2020-01-22 19:26:48',28923.55,72),(33,509,'2020-01-24 03:56:57',907.50,72),(34,510,'2020-01-24 03:57:09',907.50,72),(35,511,'2020-01-24 03:57:17',907.50,72),(36,1031,'2020-01-24 03:58:59',996.03,72),(37,364,'2020-01-24 03:59:39',990.16,72),(38,764,'2020-01-24 04:00:25',81.00,72),(39,764,'2020-01-24 04:00:27',81.14,72),(40,772,'2020-01-24 04:01:02',124.11,72),(41,771,'2020-01-24 04:01:48',24.00,72),(42,380,'2020-01-24 04:03:02',115.98,72),(43,773,'2020-01-24 04:04:07',2462.54,72),(44,754,'2020-01-24 04:04:44',2574.54,72),(45,793,'2020-01-24 04:07:01',2164.11,72),(46,1032,'2020-01-27 11:40:11',21069.26,72),(47,1033,'2020-01-27 11:40:39',6414.44,72),(48,1034,'2020-01-27 11:41:10',11385.95,72),(49,1034,'2020-01-27 11:41:28',11385.95,72),(50,7,'2020-01-30 04:03:04',15.73,72),(51,7,'2020-01-30 04:06:49',15.73,72),(52,1024,'2020-01-30 04:07:41',4358.42,72),(53,1,'2020-01-30 04:08:40',31339.00,72),(54,1035,'2020-01-30 05:46:04',120.00,72),(55,1036,'2020-01-30 05:46:17',21.00,72),(56,1037,'2020-01-30 05:46:27',25.00,72),(57,1038,'2020-01-30 05:46:39',248.00,72),(58,1039,'2020-01-30 05:46:54',1500.00,72),(59,1040,'2020-01-30 05:47:19',1500.00,72),(60,1041,'2020-01-30 05:48:16',83.13,72),(61,1042,'2020-01-30 05:48:32',83.13,72),(62,1043,'2020-01-30 05:48:46',15.00,72),(63,1044,'2020-01-30 05:56:28',168.33,72),(64,1046,'2020-01-30 05:56:48',6.25,72),(65,1047,'2020-01-30 05:58:05',83.30,72),(66,1049,'2020-01-31 07:07:26',2988.70,72),(67,1050,'2020-01-31 07:07:45',3291.20,72),(68,1048,'2020-01-31 07:08:49',1089.00,72),(69,480,'2020-01-31 07:21:47',199.65,72),(70,819,'2020-01-31 07:33:06',13915.00,72),(71,761,'2020-01-31 09:40:20',821.25,72),(72,772,'2020-01-31 09:40:47',91.00,72),(73,71,'2020-01-31 09:42:54',955.98,72),(74,19,'2020-01-31 09:44:36',2167.00,72),(75,9,'2020-01-31 09:45:46',2167.00,72),(76,27,'2020-01-31 09:46:40',2167.00,72),(77,48,'2020-01-31 09:48:16',613.86,72),(78,69,'2020-01-31 10:11:57',511.73,72),(79,1051,'2020-01-31 10:14:23',511.73,72),(80,1052,'2020-01-31 10:18:22',511.73,72),(81,67,'2020-01-31 10:19:29',1287.44,72),(82,44,'2020-01-31 10:21:07',1287.44,72),(83,48,'2020-01-31 10:22:04',1366.59,72),(84,44,'2020-01-31 10:25:15',1412.84,72),(85,372,'2020-01-31 10:39:40',502.00,72),(86,375,'2020-01-31 10:40:22',1920.23,72),(87,1053,'2020-02-10 00:32:47',500.50,72),(88,1053,'2020-02-10 00:33:00',500.51,72),(89,1053,'2020-02-10 00:33:21',500.51,72),(90,1054,'2020-02-14 12:11:09',368.00,72),(91,1,'2020-02-14 16:17:59',31340.00,72),(92,1055,'2020-02-18 11:41:16',10.00,72),(93,1,'2020-02-18 12:02:43',32000.00,72),(94,3,'2020-02-18 12:03:41',5.35,72),(95,1,'2020-02-20 00:41:11',32001.00,72),(96,1,'2020-02-20 00:41:19',32000.00,72),(97,1,'2020-02-20 00:42:13',32000.00,72),(98,1,'2020-02-20 00:42:21',32000.00,72),(99,1,'2020-02-20 00:43:11',32001.00,72),(100,1,'2020-02-20 00:49:00',32001.00,72),(101,1,'2020-02-20 00:49:09',32000.00,72),(102,1,'2020-02-20 00:49:23',32000.56,72),(103,481,'2020-02-20 04:11:29',653.40,72),(104,1024,'2020-02-20 04:12:45',3448.50,72),(105,754,'2020-02-20 04:15:48',2574.52,72),(106,765,'2020-02-20 04:18:16',2028.68,72),(107,757,'2020-02-20 04:18:44',99.32,72),(108,488,'2020-02-20 05:02:24',79860.00,72),(109,595,'2020-02-20 09:30:38',1300.00,72),(110,362,'2020-02-20 11:44:22',1437.52,72),(111,431,'2020-02-26 03:57:58',5707.68,72),(112,7,'2020-02-26 04:16:18',1033.20,72),(113,7,'2020-02-26 04:16:44',1033.20,72),(114,16,'2020-02-26 04:54:35',1033.20,72),(115,24,'2020-02-26 04:55:23',164.27,72),(116,40,'2020-02-26 04:56:29',8.35,72),(117,52,'2020-02-26 04:58:50',435.60,72),(118,56,'2020-02-26 04:59:21',9.43,72),(119,57,'2020-02-26 04:59:32',13.95,72),(120,58,'2020-02-26 05:00:26',36900.00,72),(121,59,'2020-02-26 05:01:27',5500.00,72),(122,60,'2020-02-26 05:01:40',15.37,72),(123,63,'2020-02-26 05:01:59',8.23,72),(124,64,'2020-02-26 05:02:14',34.13,72),(125,65,'2020-02-26 05:02:25',48.32,72),(126,66,'2020-02-26 05:04:42',3500.00,72),(127,69,'2020-02-26 05:07:14',894.24,72),(128,68,'2020-02-26 05:25:07',600.00,72),(129,70,'2020-02-26 05:28:50',266.20,72),(130,71,'2020-02-26 05:29:15',975.00,72),(131,73,'2020-02-26 05:29:57',10300.00,72),(132,73,'2020-02-26 05:30:09',11313.50,72),(133,74,'2020-02-26 05:31:03',121.00,72),(134,78,'2020-02-26 05:31:36',364.05,72),(135,79,'2020-02-26 05:31:51',365.85,72),(136,79,'2020-02-26 05:32:05',364.05,72),(137,86,'2020-02-26 06:11:04',281.71,72),(138,79,'2020-02-26 06:12:13',258.27,72),(139,13,'2020-02-26 06:13:38',1749.99,72),(140,17,'2020-02-26 06:14:14',1749.99,72),(141,89,'2020-02-26 06:26:00',17000.00,72),(142,90,'2020-02-26 06:27:13',70.00,72),(143,103,'2020-02-26 06:29:22',47.94,72),(144,115,'2020-02-26 06:31:07',36.06,72),(145,1057,'2020-02-26 09:10:56',511.73,88),(146,1059,'2020-02-26 09:11:15',750.00,88),(147,133,'2020-02-26 11:49:02',1090.00,72),(148,142,'2020-02-26 11:49:30',3630.00,72),(149,143,'2020-02-26 11:49:43',660.00,72),(150,144,'2020-02-26 11:50:05',1007.00,72),(151,145,'2020-02-26 11:50:39',1354.00,72),(152,146,'2020-02-26 11:51:05',1584.00,72),(153,147,'2020-02-26 11:51:17',1199.00,72),(154,148,'2020-02-26 11:53:53',1364.00,72),(155,149,'2020-02-26 11:55:42',1700.00,72),(156,150,'2020-02-26 11:55:59',1403.00,72),(157,151,'2020-02-26 11:57:26',3047.00,72),(158,151,'2020-02-26 12:13:07',3452.00,72),(159,151,'2020-02-26 12:13:22',3047.00,72),(160,139,'2020-02-26 12:14:03',3452.00,72),(161,180,'2020-02-26 12:16:30',2568.00,72),(162,195,'2020-02-26 12:24:07',514.00,72),(163,199,'2020-02-26 12:26:21',6456.56,72),(164,198,'2020-02-26 12:26:36',2722.50,72),(165,205,'2020-02-26 12:29:34',1318.00,72),(166,695,'2020-02-28 10:42:18',41.00,88),(167,696,'2020-02-28 10:42:53',65.00,88),(168,552,'2020-02-28 10:44:33',5203.00,88),(169,553,'2020-02-28 10:48:07',5203.00,88),(170,554,'2020-02-28 10:49:01',6350.00,88),(171,557,'2020-02-28 10:49:46',442.00,88),(172,571,'2020-02-28 11:53:27',15.00,88),(173,595,'2020-02-28 11:55:47',1573.00,88),(174,596,'2020-02-28 11:56:11',291.00,88),(175,601,'2020-02-28 11:56:49',2226.00,88),(176,601,'2020-02-28 11:56:49',2226.00,88),(177,602,'2020-02-28 11:57:01',3413.00,88),(178,603,'2020-02-28 11:57:17',3452.00,88),(179,604,'2020-02-28 11:57:33',2837.00,88),(180,1060,'2020-03-02 04:09:25',11900.00,88),(181,3,'2020-03-02 10:32:37',5.35,72),(182,2,'2020-03-02 10:32:48',1513.50,72),(183,5,'2020-03-02 10:32:55',1067.00,72),(184,5,'2020-03-02 10:32:59',1067.00,72),(185,605,'2020-03-03 11:26:40',16523.93,88),(186,605,'2020-03-03 11:26:53',16523.93,88),(187,610,'2020-03-03 11:27:24',7986.00,88),(188,622,'2020-03-03 11:28:27',17.92,88),(189,629,'2020-03-03 11:29:23',244.61,88),(190,631,'2020-03-03 11:30:56',56.54,88),(191,632,'2020-03-03 11:31:22',738.61,88),(192,653,'2020-03-03 11:35:04',60.00,88),(193,655,'2020-03-03 11:35:15',60.00,88),(194,664,'2020-03-03 11:36:23',95.53,88),(195,675,'2020-03-03 11:37:35',15.00,88),(196,691,'2020-03-03 11:39:14',2298.00,88),(197,692,'2020-03-03 11:39:27',6500.00,88),(198,693,'2020-03-03 11:40:10',6800.00,88),(199,717,'2020-03-03 11:41:51',30.00,88),(200,718,'2020-03-03 11:42:33',250.00,88),(201,729,'2020-03-03 12:04:13',3300.00,88),(202,730,'2020-03-03 12:06:05',24200.00,88),(203,471,'2020-03-03 12:44:11',7305.86,88),(204,472,'2020-03-03 12:44:32',7674.23,88),(205,473,'2020-03-03 12:44:51',18376.75,88),(206,731,'2020-03-03 12:50:41',73.21,88),(207,1026,'2020-03-03 12:50:55',20328.00,88),(208,1061,'2020-03-03 12:51:09',11132.00,88),(209,1062,'2020-03-03 12:51:23',1936.00,88),(210,1063,'2020-03-03 12:51:44',3630.00,88),(211,1064,'2020-03-03 12:51:58',3631.21,88),(212,1065,'2020-03-03 12:52:13',3632.42,88),(213,1066,'2020-03-03 12:52:28',3633.63,88),(214,1067,'2020-03-03 12:52:41',3634.84,88),(215,153,'2020-03-03 12:57:04',2042.00,88),(216,154,'2020-03-03 12:58:38',2915.00,88),(217,155,'2020-03-03 12:59:48',2909.00,88),(218,159,'2020-03-03 13:00:17',1078.00,88),(219,160,'2020-03-03 13:04:27',545.00,88),(220,102,'2020-03-03 18:03:06',45500.00,72),(221,135,'2020-03-04 12:18:38',1200.00,88),(222,162,'2020-03-06 10:24:12',1086.22,88),(223,1068,'2020-03-06 11:05:55',2661.95,88),(224,1069,'2020-03-06 11:06:11',3035.65,88),(225,1070,'2020-03-06 11:06:23',3469.31,88),(226,1071,'2020-03-06 11:06:40',3902.98,88),(227,222,'2020-03-06 11:09:36',16380.00,88),(228,216,'2020-03-06 11:14:06',6400.00,88),(229,218,'2020-03-06 11:25:12',26300.00,88),(230,219,'2020-03-06 11:25:58',26300.00,88),(231,218,'2020-03-06 11:26:15',9100.00,88),(232,220,'2020-03-06 11:27:11',13846.00,88),(233,221,'2020-03-06 11:31:01',16380.00,88),(234,225,'2020-03-06 11:31:59',5200.00,88),(235,169,'2020-03-06 11:34:35',4950.00,88),(236,170,'2020-03-06 11:35:57',8200.00,88),(237,172,'2020-03-06 11:37:59',12750.00,88),(238,175,'2020-03-06 11:39:07',38000.00,88),(239,176,'2020-03-06 11:39:29',65800.00,88),(240,173,'2020-03-06 11:39:58',15131.00,88),(241,166,'2020-03-06 11:40:59',650.00,88),(242,383,'2020-03-06 11:42:31',1500.00,88),(243,137,'2020-03-06 11:44:48',500.00,88),(244,168,'2020-03-10 10:02:42',540.00,88),(245,187,'2020-03-10 10:13:56',4130.00,88),(246,188,'2020-03-10 10:14:13',3360.00,88),(247,189,'2020-03-10 10:14:42',2086.00,88),(248,203,'2020-03-10 10:21:28',650.00,88),(249,213,'2020-03-10 10:22:19',3050.00,88),(250,191,'2020-03-10 10:51:56',5000.00,88),(251,191,'2020-03-10 10:51:57',5000.00,88),(252,854,'2020-03-11 09:20:54',80000.00,88),(253,852,'2020-03-11 09:21:06',45000.00,88),(254,1072,'2020-03-11 09:33:00',3500.00,88),(255,1073,'2020-03-11 09:33:10',3500.00,88),(256,186,'2020-03-11 10:30:13',786.00,88),(257,190,'2020-03-11 10:31:10',786.00,88),(258,1074,'2020-03-11 10:37:04',250.00,88),(259,1075,'2020-03-11 10:40:04',494.00,88),(260,189,'2020-03-12 13:59:34',2956.15,88),(261,214,'2020-03-17 08:24:56',500.00,88),(262,214,'2020-03-17 08:25:32',1500.00,88),(263,204,'2020-03-17 08:29:36',850.00,88),(264,215,'2020-03-17 08:30:48',1500.00,88),(265,185,'2020-03-17 08:32:22',5000.00,88),(266,264,'2020-03-17 09:21:26',4800.00,88),(267,266,'2020-03-17 09:21:38',4800.00,88),(268,231,'2020-03-17 09:21:54',4800.00,88),(269,261,'2020-03-17 09:22:09',5800.00,88),(270,226,'2020-03-17 09:23:00',14500.00,88),(271,235,'2020-03-17 09:28:19',12500.00,88),(272,236,'2020-03-17 09:28:37',5800.00,88),(273,237,'2020-03-17 09:28:52',5800.00,88),(274,9,'2020-03-17 09:42:54',2167.00,88),(275,1,'2020-03-17 09:43:06',32000.56,88),(276,2,'2020-03-17 09:43:26',1513.50,88),(277,1078,'2020-03-17 06:08:37',97.00,72),(278,4,'2020-03-18 10:39:03',1162.00,82),(279,6,'2020-03-18 10:41:06',186.00,82),(280,1080,'2020-03-18 11:18:32',2360.00,88),(281,1079,'2020-03-18 11:19:17',1140.00,88),(282,3,'2020-03-20 11:11:49',5.39,72),(283,1,'2020-03-22 18:10:33',32000.56,72),(284,2,'2020-03-24 17:24:56',1513.50,72),(285,4,'2020-03-24 17:25:32',1163.00,72),(286,5,'2020-03-24 17:26:54',1070.00,72),(287,5,'2020-03-24 17:27:28',1075.00,72);
/*!40000 ALTER TABLE `costos_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(500) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  `id_movimiento` int(11) DEFAULT '4',
  `motivo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
INSERT INTO `devoluciones` VALUES (1,'r1',2,72,'2020-01-22 16:26:50',1,4,'r1'),(2,'r2',2,72,'2020-01-22 16:29:00',1,4,'otro'),(3,'daf',45,72,'2020-02-09 20:39:07',1,4,'dfa'),(4,'OSCAR',46,72,'2020-02-19 11:17:49',1,4,'NO se requiere');
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones_detalles`
--

DROP TABLE IF EXISTS `devoluciones_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devoluciones_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_devolucion` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones_detalles`
--

LOCK TABLES `devoluciones_detalles` WRITE;
/*!40000 ALTER TABLE `devoluciones_detalles` DISABLE KEYS */;
INSERT INTO `devoluciones_detalles` VALUES (1,1,307,1.00,NULL),(2,2,307,1.00,NULL),(3,3,1053,0.50,NULL),(4,4,803,1.00,NULL);
/*!40000 ALTER TABLE `devoluciones_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(500) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  `id_movimiento` int(11) DEFAULT '2',
  `referencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,'DEMO',1,72,'2020-01-19 06:07:39',1,2,'DEMO'),(2,'francisco',19,72,'2020-01-22 16:49:19',1,2,'s'),(3,'Fran',23,72,'2020-01-24 06:10:56',1,2,'l'),(4,'fran',23,72,'2020-01-24 06:11:41',1,2,'w'),(10,'Oscar',6,72,'2020-02-09 19:35:24',1,2,'n/a'),(11,'Matias',6,72,'2020-02-09 19:42:18',1,2,'n/a'),(12,'Matias',6,72,'2020-02-09 19:54:05',1,2,'n/a'),(13,'Matias',43,72,'2020-02-09 20:06:50',1,2,'n/a'),(14,'Daniel',43,72,'2020-02-09 20:16:16',1,2,'n/a'),(15,'Daniel',43,72,'2020-02-09 20:18:31',1,2,'n/a'),(16,'dan',45,72,'2020-02-09 20:38:04',1,2,'addaf'),(17,'OSCAR',46,72,'2020-02-19 11:16:54',1,2,'PINTOR'),(18,'oscar',46,72,'2020-02-19 11:20:00',1,2,'venta'),(19,'juan',48,72,'2020-03-09 09:58:04',1,2,'juan'),(20,'oscar',48,NULL,'2020-03-12 10:27:28',1,2,'all'),(21,'oscar',59,92,'2020-03-18 07:11:48',1,2,'oscar'),(22,'Alonso',69,72,'2020-03-30 01:33:56',1,2,'Se los llevo completo');
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas_detalles`
--

DROP TABLE IF EXISTS `entregas_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregas_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_entrega` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas_detalles`
--

LOCK TABLES `entregas_detalles` WRITE;
/*!40000 ALTER TABLE `entregas_detalles` DISABLE KEYS */;
INSERT INTO `entregas_detalles` VALUES (1,1,803,2.00,NULL),(2,1,7,10.00,NULL),(3,2,7,5.00,NULL),(4,3,7,3.00,NULL),(5,4,7,1.00,NULL),(15,10,2,2.00,NULL),(16,11,2,0.00,NULL),(17,12,2,0.20,NULL),(18,13,803,1.10,NULL),(19,14,1,0.20,NULL),(20,15,1,0.16,NULL),(21,16,1053,10.33,NULL),(22,17,803,1.00,NULL),(23,18,803,2.00,NULL),(24,19,1,13.00,NULL),(25,20,803,2.00,NULL),(26,20,7,0.02,NULL),(27,20,3,4.00,NULL),(28,21,3,12.00,NULL),(29,21,4,23.00,NULL),(30,22,1,5.00,NULL);
/*!40000 ALTER TABLE `entregas_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL COMMENT 'el usuario que genera el pedido',
  `referencia` varchar(300) DEFAULT NULL COMMENT 'identificador del pedido, puede ser el numero de presupuesto enviado por el proveedor',
  `proveedor` varchar(300) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `fecha_referencia` date DEFAULT NULL,
  `id_movimiento` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
INSERT INTO `ingresos` VALUES (1,72,'GASTOS','BOX RENTAL ADM_SISTEMA','2020-01-30 06:45:55',1,'2020-01-30',1),(2,72,'ingreso daniel','daniel','2020-02-04 21:56:20',1,'2020-02-04',1),(3,72,'d1','d1','2020-02-04 22:00:04',1,'2020-02-04',1),(4,72,'d2','d2','2020-02-04 22:00:56',1,'2020-02-04',1),(5,72,'d3','d3','2020-02-04 22:01:39',1,'2020-02-04',1),(6,72,'d5','d5','2020-02-04 22:34:25',1,'2020-02-04',1),(7,72,'d6','d6','2020-02-04 22:39:30',1,'2020-02-04',1),(8,72,'d7','d7','2020-02-04 22:41:27',1,'2020-02-04',1),(9,72,'d8','d8','2020-02-04 22:42:13',1,'2020-02-04',1),(10,72,'d9','d9','2020-02-04 22:43:16',1,'2020-02-04',1),(11,72,'dd1','dd1','2020-02-04 22:56:36',1,'2020-02-04',1),(12,72,'fda','fda','2020-02-10 00:35:13',1,'2020-02-10',1),(13,72,'202001','casa del audio','2020-02-19 12:31:25',1,'2020-02-19',1),(14,72,'202001','nano shop','2020-02-19 12:32:15',1,'2020-02-19',1),(15,72,'axor nqn','el viejo watt','2020-03-02 10:50:29',1,'2020-03-02',1),(16,72,'ford','gps','2020-03-02 10:51:54',1,'2020-03-02',1),(17,72,'ref555','proveedor 1','2020-03-03 06:17:18',1,'2020-03-03',1),(18,92,'Oscar','casa del audio','2020-03-18 10:54:35',1,'2020-03-18',1),(19,72,'r1','p1','2020-03-20 11:19:13',1,'2020-03-20',1),(20,72,'r2','r2','2020-03-20 11:22:39',1,'2020-03-20',1),(21,72,'ref','prov1','2020-03-22 19:30:53',1,'2020-03-22',1),(22,72,'prueba','prueba','2020-03-22 19:52:14',1,'2020-03-22',1),(23,72,'prueba2','prueba2','2020-03-22 20:03:33',1,'2020-03-22',1),(24,72,'prueba3','prueba3','2020-03-22 20:05:53',1,'2020-03-22',1),(25,72,'prueba4','prueba4','2020-03-22 16:30:17',1,'2020-03-22',1),(26,72,'prueba5','prueba5','2020-03-22 16:30:55',1,'2020-03-22',1);
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos_detalles`
--

DROP TABLE IF EXISTS `ingresos_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ingreso` int(11) NOT NULL,
  `id_insumo` int(11) NOT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='los detalles de cada pedido de insumos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos_detalles`
--

LOCK TABLES `ingresos_detalles` WRITE;
/*!40000 ALTER TABLE `ingresos_detalles` DISABLE KEYS */;
INSERT INTO `ingresos_detalles` VALUES (1,1,1035,999999.00,1),(2,1,1036,999999.00,1),(3,1,1037,999999.00,1),(4,1,1038,999999.00,1),(5,1,1039,999999.00,1),(6,1,1040,999999.00,1),(7,1,1041,999999.00,1),(8,1,1042,999999.00,1),(9,1,1043,999999.00,1),(10,1,1044,999999.00,1),(11,1,1046,999999.00,1),(12,1,1047,999999.00,1),(13,2,2,0.00,1),(14,2,4,12.00,1),(15,2,1,1.00,1),(16,3,2,0.30,1),(17,3,4,12.00,1),(18,4,2,0.30,1),(19,4,4,12.00,1),(20,4,2,4.00,1),(21,5,2,2.00,1),(22,5,2,5.00,1),(23,6,2,4.00,1),(24,6,4,10.00,1),(25,7,2,5.00,1),(26,7,4,12.00,1),(27,8,2,0.30,1),(28,8,4,12.00,1),(29,9,2,4.00,1),(30,9,4,12.00,1),(31,10,2,4.00,1),(32,10,4,12.00,1),(33,11,2,6.00,1),(34,11,4,12.00,1),(35,12,1053,50.02,1),(36,13,1,10.00,1),(37,14,2,5.00,1),(38,15,1060,1.00,1),(39,16,733,1.00,1),(40,17,3,520.00,1),(41,17,1,1.00,1),(42,18,1,4.00,1),(43,19,2,2.00,1),(44,20,2,5.00,1),(45,21,2,3.00,1),(46,22,1060,20.00,1),(47,23,1,2.00,1),(48,24,2,30.00,1),(49,25,1,4.00,1),(50,26,1,5.00,1),(51,26,2,5.00,1);
/*!40000 ALTER TABLE `ingresos_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos`
--

DROP TABLE IF EXISTS `insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_insumos_categorias` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT '0',
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `unidad` varchar(45) DEFAULT 'unidades',
  `minimo` int(11) DEFAULT '0',
  `cantidad` decimal(20,2) DEFAULT '0.00',
  `costo` decimal(20,2) DEFAULT '0.00',
  `fecha_actualizacion_costo` datetime DEFAULT NULL,
  `alertar` tinyint(4) DEFAULT '0',
  `autorizar` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1084 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` VALUES (1,1,1,'Aire Acondicionado  Split 2200 F/C ON -OFF',1,'unidades',5,10.00,32000.56,'2020-03-22 18:10:33',1,0),(2,1,2,'Anafe de 2 hornallas electrico cocina 2000W',1,'unidades',5,49.20,1513.50,'2020-03-24 17:24:56',1,0),(3,1,3,'esquinero plastico bco c/tapa Modelo: Trapecio',1,'unidades, Paq. 500 und',500,504.00,5.39,'2020-03-20 11:11:49',1,0),(4,1,4,'Artefacto Estanco Led   Plafon 1,20X15X10CM LUZ FRIA 2 tubos 18W                 ',1,'unidades',10,83.00,1163.00,'2020-03-24 17:25:32',1,0),(5,1,5,'Aplique exterior direccional led /TBC in accero inoxidable',1,'unidades',5,0.00,1075.00,'2020-03-24 17:27:28',1,0),(6,1,6,'Bornera Tripolar 60Amp T3-60 TEA KELANOL                                    ',1,'unidades',5,0.00,186.00,'2020-03-18 10:41:06',1,0),(7,1,7,'Cable Unippolar Normalizado Blanco 1,5 mm    ',1,'Metros ',300,280.98,1033.20,'2020-02-26 04:16:44',1,0),(8,1,8,'Cable Unipolar Normalizado Celeste 1,5 mm   ',1,'Metros',300,0.00,1033.00,NULL,1,0),(9,1,9,'Cable Unipolar Normalizado Celeste 2,50 mm                   ',1,'Metros',300,0.00,2167.00,'2020-03-17 09:42:54',1,0),(10,1,10,'Cable Unipolar Normalizado Celeste 4,00 mm  ',1,'Metros',300,0.00,2445.00,NULL,1,0),(11,1,11,'Cable Unipolar Normalizado Celeste 6,00 mm  ',1,'Metros',300,0.00,3383.00,NULL,1,0),(12,1,12,'Cable Unipolar Normalizado Marron 1,5 mm     ',1,'Metros',300,0.00,1010.00,NULL,1,0),(13,1,13,'Cable Unipolar Normalizado Marron 2,50 mm   ',1,'Metros',300,0.00,1749.99,'2020-02-26 06:13:38',1,0),(14,1,14,'Cable Unipolar Normalizado Marron 4,00 mm     ',1,'Metros',300,0.00,2441.00,NULL,1,0),(15,1,15,'Cable Unipolar Normalizado Marron 6,00 mm                             ',1,'Metros',300,0.00,3383.00,NULL,1,0),(16,1,16,'Cable Unipolar Normalizado Negro 1,5 mm                                 ',1,'Metros',300,0.00,1033.20,'2020-02-26 04:54:35',1,0),(17,1,17,'Cable Unipolar Normalizado Negro 2,50 mm     ',1,'Metros',300,0.00,1749.99,'2020-02-26 06:14:14',1,0),(18,1,18,'Cable Unipolar Normalizado Negro 4,0 mm         ',1,'Metros',300,0.00,2272.00,NULL,1,0),(19,1,19,'Cable Unipolar Normalizado Rojo 2,5 mm                                         ',1,'Metros',300,0.00,2167.00,'2020-01-31 09:44:36',1,0),(20,1,20,'Cable Unipolar Normalizado Rojo 4,0 mm                                         ',1,'Metros',300,0.00,2272.00,NULL,1,0),(21,1,21,'Cable Unipolar Normalizado Rojo x 1,5 mm      ',1,'Metros',300,0.00,1013.00,NULL,1,0),(22,1,22,'Cable tipo taller Normalizado 2 x 2,5 mm',1,'Metros',100,0.00,39.00,NULL,1,0),(23,1,23,'Cable tipo taller Normalizado 3 x 2,5 mm',1,'Metros',100,0.00,53.00,NULL,1,0),(24,1,24,'Cable tipo taller Normalizado 5 x 2,5 mm',1,'Metros',100,0.00,164.27,'2020-02-26 04:55:23',1,0),(25,1,25,'Cable tipo taller Normalizado 6 x 2,5 mm',1,'Metros',100,0.00,59.00,NULL,1,0),(26,1,26,'Cable Unipolar Normalizado Verde Tierra 1,5 mm       ',1,'Metros',300,0.00,1065.00,NULL,1,0),(27,1,27,'Cable Unipolar Normalizado Verde Tierra 2,50 mm       ',1,'Metros',300,0.00,2167.00,'2020-01-31 09:46:40',1,0),(28,1,28,'Cable Unipolar Normalizado Verde Tierra 4,00 mm                         ',1,'Metros',300,0.00,2170.00,NULL,1,0),(29,1,29,'Cable Unipolar Normalizado Verde Tierra 6,00 mm                            ',1,'Metros',300,0.00,3383.00,NULL,1,0),(30,1,30,'Caja de pase estanco 115 x 115 x 81 blanco (Mod:0998/8)',1,'unidades',10,0.00,235.00,NULL,1,0),(31,1,31,'Bornera De Distribución Elent 7 Salidas (Mod:BIPOLAR 125 AMP)',1,'unidades',10,0.00,264.00,NULL,1,0),(32,1,32,'Caja de pase estanco 122x166x81  (PR1000/81)',1,'unidades',10,0.00,294.00,NULL,1,0),(33,1,33,'Caja de pase estanco 92x92x75   (PR997/75)                           ',1,'unidades',10,0.00,206.00,NULL,1,0),(34,1,34,'Caja Rectangular Exterior PVC  Universal 13x8x5cm blanco                                 ',1,'unidades',30,0.00,99.00,'2020-01-20 04:35:51',1,0),(35,1,35,'Caño de cobre Termomecanica 1/2 Aire Acondicionado',1,'Metros, Rollo x 15 Mts',75,0.00,5203.00,NULL,1,0),(36,1,36,'Caño de cobre Termomecanica 1/4 Aire Acondicionado',1,'Metros, Rollo x 15 Mts',75,0.00,5203.00,NULL,1,0),(37,1,37,'Caño de cobre Termomecanica 3/8 Aire Acondicionado',1,'Metros, Rollo x 15 Mts',75,0.00,2614.00,NULL,1,0),(38,1,38,'Caño Rigido PVC de 20mm semipesado gris',1,'Paq. 90 Mts 30 Tiras',90,0.00,2393.00,NULL,1,0),(39,1,39,'Caño Rigido PVC de 25mm semipesado  gris',1,'Paq. 60 Mts 20 Tiras',60,0.00,2257.00,NULL,1,0),(40,1,40,'Conectores de 20mm para tubo rigido PVC     gris                                  ',1,'unidades',100,0.00,8.35,'2020-02-26 04:56:29',1,0),(41,1,41,'Conectores de 25mm para tubo rigido PVC  GRIS                                       ',1,'unidades',100,0.00,17.00,NULL,1,0),(42,1,42,'Curva de 20mm para tubo rigido PVC      GRIS                                    ',1,'unidades',100,0.00,18.00,NULL,1,0),(43,1,43,'Curva de 25mm para tubo rigido PVC  GRIS                                                  ',1,'unidades',100,0.00,18.00,NULL,1,0),(44,1,44,'Detector de Humo Fotoelectrico (Mod:376400)  + Baterias',1,'unidades',5,0.00,1412.84,'2020-01-31 10:25:15',1,0),(45,1,45,'Disyuntor Diferencial  40 amp. Bipolar Sica (Mod:785640)                           ',1,'unidades',5,0.00,1437.00,NULL,1,0),(46,1,46,'Extractor Para Baño  Marca: SAJAX Mod 4\" Premium',1,'unidades',5,0.00,1136.00,NULL,1,0),(47,1,47,'Ficha Steck industrial Hembra 16 amp.  2polos+tierra N3056 IP44            ',1,'unidades',5,0.00,252.00,NULL,1,0),(48,1,48,'Ficha Steck Hembra de amurar 32 Amp. Azul para Pared, 2X32A+T  Mod: N3206  ',1,'unidades',5,0.00,1366.59,'2020-01-31 10:22:04',1,0),(49,1,49,'Ficha Steck Macho industrial de 16Amp 2polos+tierra Mod:3076. Monofasico',1,'unidades',0,0.00,313.00,NULL,1,0),(50,1,50,'Ficha Steck Macho 2x32 Amp.+Tierra (Mod: N3276)    monofasico                           ',1,'unidades',0,0.00,640.00,NULL,1,0),(51,1,51,'Ficha steck trifasico 32 amp. Macho con caja a 45¡ (Mod:N4206)',1,'unidades',0,0.00,1030.00,NULL,1,0),(52,1,52,'Conector metalico ficha trailer 7 contactos                 ',1,'unidades',0,0.00,435.60,'2020-02-26 04:58:50',1,0),(53,1,53,'Funda aislacion para refrigeracion de 1/2 (para ca–o Aire Acondicionado',1,'unidades',0,0.00,73.00,NULL,1,0),(54,1,54,'Funda aislacion para refrigeracion de1/4 (para ca–o Aire Acondicionado)',1,'unidades',0,0.00,48.00,NULL,1,0),(55,1,55,'Funda aislacion para refrigeracion sw 3/8 (para ca–o Aire Acondicionado)',1,'unidades',0,0.00,48.00,NULL,1,0),(56,1,56,'Grampa de 20mm p/fijar tubo rigido PCV   gris                                        ',1,'unidades',0,0.00,9.43,'2020-02-26 04:59:21',1,0),(57,1,57,'Grampa de 25mm p/ fijar tubo rigido PVC gris                                               ',1,'unidades',0,0.00,13.95,'2020-02-26 04:59:32',1,0),(58,1,58,'Heladera  A280 - 280 Lts',1,'unidades',0,0.00,36900.00,'2020-02-26 05:00:26',1,0),(59,1,59,'Horno Electrico 20 ltros 260x440x145mm',1,'unidades',0,0.00,5500.00,'2020-02-26 05:01:27',1,0),(60,1,60,'Bastidor Universal 3 modulos blanco Marca: KALOP (mod:KL40702)               ',1,'unidades',0,0.00,15.37,'2020-02-26 05:01:40',1,0),(61,1,61,'modulo punto para llave de luz blanco Marca:KALOP (mod: KD40100)                       ',1,'unidades',0,0.00,37.00,NULL,1,0),(62,1,62,'Tapa bastidor mod: Civil Marca: KALOP blanca 3 modulos                            ',1,'unidades',0,0.00,15.00,NULL,1,0),(63,1,63,'Tapa Ciega Bastidor modulo tap—n ciego blanco Marca: KALOP (Mod:KD40570           ',1,'unidades',0,0.00,8.23,'2020-02-26 05:01:59',1,0),(64,1,64,'Toma Corriente binorma 10Amp Marca:KALOP blanco Mod: KD40245',1,'unidades',0,0.00,34.13,'2020-02-26 05:02:14',1,0),(65,1,65,'Lampara Led foco 7w rosca comun luz fria (Mod:VE-BLB7)                             ',1,'unidades',0,0.00,48.32,'2020-02-26 05:02:25',1,0),(66,1,66,'Luces de Trailer (kit de luces laterales y posteriores E0052                                    ',1,'unidades',0,0.00,3500.00,'2020-02-26 05:04:42',1,0),(67,1,67,'Luminaria Led exterior (Tortuga) Blanco 18W 230x105x45mm 6000K Marca:Akai Energy',1,'unidades',0,0.00,1287.44,'2020-01-31 10:19:29',1,0),(68,1,68,'Puente Para Termica Bipolar (PEINE BIPOLAR)  X 1 Mts',1,'unidades',0,0.00,600.00,'2020-02-26 05:25:07',1,0),(69,1,69,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 18W **   TBC ** (Mod:TS-SMD620BW) luz dia     ',1,'unidades',0,0.00,894.24,'2020-02-26 05:07:14',1,0),(70,1,70,'Ficha Steck 16A-6H / 200-250v IP44 Cod.s 3046      ',1,'unidades',5,0.00,266.20,'2020-02-26 05:28:50',1,0),(71,1,71,'luz de emergencia  TBC 30 led (Mod:LE-30L)                  ',1,'unidades',0,0.00,975.00,'2020-02-26 05:29:15',1,0),(72,1,72,'Pulsador de Mando d22 Verde 1na d40 A-crom c/Rector + Cambre Bastidor,tapa y caja',1,'unidades',0,0.00,559.00,NULL,1,0),(73,1,73,'Microondas de 20 lts.  (Alto 260 / ancho 440 / Prof 145 mm)',1,'unidades',0,0.00,11313.50,'2020-02-26 05:30:09',1,0),(74,1,74,'Rejilla de gas   17x17  ˜ 20x20 cm blanco',1,'unidades',0,0.00,121.00,'2020-02-26 05:31:03',1,0),(75,1,75,'Tablero de 12 Bocas no de embutir (Mod:PR413) Linea recta',1,'unidades',0,0.00,1020.00,NULL,1,0),(76,1,76,'Tablero de 4 Bocas no de embutir (Mod: PR409) Linea recta                         ',1,'unidades',0,0.00,83.00,NULL,1,0),(77,1,77,'Tablero de 8 Bocas, caja plas p/llave termica con tapa 189x161x59  no embutir (Mod:PR408) Linea rect',1,'unidades',0,0.00,705.00,NULL,1,0),(78,1,78,'Termica bipolar de 10 Amp. SICA   (Mod:7822106)                        ',1,'unidades',0,0.00,364.05,'2020-02-26 05:31:36',1,0),(79,1,79,'Termica bipolar de 15 Amp. SICA  (Mod:7822151)                      ',1,'unidades',0,0.00,258.27,'2020-02-26 06:12:13',1,0),(80,1,80,'Termica bipolar de 20 Amp. SICA  (Mod:7822205)                    ',1,'unidades',0,0.00,366.00,NULL,1,0),(81,1,81,'Terminales tipo ojal  6 mm',1,'unidades',0,0.00,12.00,NULL,1,0),(82,1,82,'Toma corriente 20 Amp. Marca: CAMBRE Mod: SIGLO XXII linea blanca',1,'unidades',0,0.00,82.00,NULL,1,0),(83,1,83,'Tubo Led para artefacto estanco led de 1200mmx18W (para E0004)                                   ',1,'unidades',0,0.00,123.00,NULL,1,0),(84,1,84,'Union de 20  PVC GRIS para ca–o rigido                                         ',1,'unidades',0,0.00,8.00,NULL,1,0),(85,1,85,'Union de 25   PVC GRIS para ca–o rigido                                    ',1,'unidades',0,0.00,58.00,NULL,1,0),(86,1,86,'Caja de pase estanco de 100 x 170 x 67 para bornera  (PR995/67)',1,'unidades',0,0.00,281.71,'2020-02-26 06:11:04',1,0),(87,1,87,'Disyuntor trifasico 40 amper (3P+Neutro 40A 30mA AC)',1,'unidades',0,0.00,2735.00,NULL,1,0),(88,1,88,'Termica bipolar 32 amp (Mod:7822328) SICA',1,'unidades',0,0.00,614.00,NULL,1,0),(89,1,89,'Televisor de 32\" Lcd.',1,'unidades',0,0.00,17000.00,'2020-02-26 06:26:00',1,0),(90,1,90,'Borne Paso Zolada R32/35 1x 2,5mm 24a Gris (Mod:BPN-2,5)',1,'unidades',0,0.00,70.00,'2020-02-26 06:27:13',1,0),(91,1,91,'Cartel \" Salida de Emergencia\" Fondo Gris, Letras Verdes.  Marca: Atomlux (Mod:9905L)',1,'unidades',0,0.00,1177.00,NULL,1,0),(92,1,92,'Borne Paso Zolada R32/35 1x 1,5mm  Gris ',1,'unidades',0,0.00,66.00,NULL,1,0),(93,1,93,'Caja de aloje para Rj45 (Mod:6930) Marca:CAMBRE blanco',1,'unidades',0,0.00,51.00,NULL,1,0),(94,1,94,'Jack Rj45 ficha conector red Utp Cat 5e(Mod:CE4002) ',1,'unidades',0,0.00,75.00,'2020-01-22 18:59:33',1,0),(95,1,95,'Llave Exterior Caja Superficial 2 Modulo Blanco Sica (Mod:366506)',1,'unidades',0,0.00,169.00,NULL,1,0),(96,1,96,'Periscopios Completos (02 tomas Corrientes, 01 Datos Rj45 E5, 01 Tapa Lisa) Marca: CAMBRE Mod:6991',1,'unidades',0,0.00,436.00,NULL,1,0),(97,1,97,'estanco (2x36W) Led cun tubos 1,30x13x8',1,'unidades',0,0.00,1199.00,NULL,1,0),(98,1,98,'Borne De Paso Zoloda P/cable 4.0mm (Mod:Bpn-04)',1,'unidades',0,0.00,182.00,NULL,1,0),(99,1,99,'Aire Acondicionado 2500 F/C ON-OFF  BLANCO',1,'unidades',0,0.00,22854.00,NULL,1,0),(100,1,100,'Aire Acondicionado 3000 F/C  ON-OFF  BLANCO',1,'unidades',0,0.00,27750.00,NULL,1,0),(101,1,101,'Aire Acondicionado 3500 F/C  ON -OFF  BLANCO',1,'unidades',0,0.00,27829.00,NULL,1,0),(102,1,102,'Aire Acondicionado 4400/4500 F/C  ON-OFF  BLANCO',1,'unidades',0,0.00,45500.00,'2020-03-03 18:03:06',1,0),(103,1,103,'Cable tipo taller (TPR)  3x 1,5',1,'unidades',0,0.00,47.94,'2020-02-26 06:29:22',1,0),(104,1,104,'Cable tipo taller (TPR)  3x4',1,'unidades',0,0.00,105.00,NULL,1,0),(105,1,105,'Borne Paso Zolada R32/35 1x 6mm 41a Gris   (mod:BPN-06)',1,'unidades',0,0.00,1350.00,NULL,1,0),(106,1,106,'Reflector LED de 150W  LUZ FRIA  INTERELEC',1,'unidades',0,0.00,5041.00,NULL,1,0),(107,1,107,'Periscopios Completos (03 tomas Corrientes, 01 Datos Rj45 E5) BLANCO',1,'unidades',0,0.00,491.00,NULL,1,0),(108,1,108,'Toma Corriente capsulada, exterior con toma 10A (Mod:KL48201)',1,'unidades',0,0.00,165.00,NULL,1,0),(109,1,109,'Tecla 3 posiciones + Tapa bastidor+ Bastidor  (Marca Cambre) blanco',1,'unidades',0,0.00,345.00,NULL,1,0),(110,1,110,'RICHI FICHA CON TOMA DE TIERRA SALIDA LONGITUDINAL GR  (E.0110-0111-0112-0113)',1,'unidades',0,0.00,65.00,NULL,1,0),(111,1,111,'RICHI TOMA MîVIL CON TOMA DE TIERRA SALIDA TRASERA GR',1,'unidades',0,0.00,61.00,NULL,1,0),(112,1,112,'SCAME FICHA INDUSTRIAL 3X 32A+T+N HEMB 380 ROJO PH 6 IP44',1,'unidades',0,0.00,1026.00,NULL,1,0),(113,1,113,'SCAME FICHA INDUSTRIAL 3X 32A+T+N MACH 380 ROJO PH 6 IP44',1,'unidades',0,0.00,755.00,NULL,1,0),(114,1,114,'Cable Subterraneo 5x2,5 mts Normalizado Iram Kalop (Sintenax/Argenplas/Fonseca)',1,'unidades',0,0.00,133.00,NULL,1,0),(115,1,115,'Cable Red Utp Cat 5e ',1,'unidades',0,0.00,36.06,'2020-02-26 06:31:07',1,0),(116,1,116,'Llave De Luz Kalop Completa Usb Doble + 2 Toma Color Blanco',1,'unidades',0,0.00,654.00,NULL,1,0),(117,1,117,'Periscopio Met‡lico Escritorio 2 Tomas Dobles+calado 4 Rj45',1,'unidades',0,0.00,2481.00,NULL,1,0),(118,1,118,'Ficha Pc RJ45 Macho ',1,'unidades',0,0.00,24.00,NULL,1,0),(119,1,119,'fusible de vidrio de 2A de 30mm de largo  (Maquina de Soldar)',1,'unidades',0,0.00,5.00,NULL,1,0),(120,1,120,'Cable Unipolar Normalizado  blanco 2,5 mm           ',1,'unidades',0,0.00,1718.00,NULL,1,0),(121,1,121,'Cable Unipolar Normalizado Negro 10 mm      ',1,'unidades',0,0.00,8568.00,NULL,1,0),(122,1,122,'Aire Acondicionado 3050  INVERTER',1,'unidades',0,0.00,40956.00,NULL,1,0),(123,1,123,'Aire Acondicionado 2700  INVERTER',1,'unidades',0,0.00,32447.00,NULL,1,0),(124,1,124,'Garrafas Gas Refrigerante R410 A 11.3 Kg',1,'unidades',0,0.00,16335.00,NULL,1,0),(125,1,125,'Rack Mural 19P x6ux460mm s/fondo negro GENROD',1,'unidades',0,0.00,6501.00,NULL,1,0),(126,1,126,'Patch panel p/12mod toma PC RJ45  CAT 5E',1,'unidades',0,0.00,1815.00,NULL,1,0),(127,1,127,'Canal de Tension Horizontal 1U x 5 Tomas cambre GENROD',1,'unidades',0,0.00,1796.00,NULL,1,0),(128,1,128,'Switch 16 Bocas  Gigabit 10/100/1000 Rackeable',1,'unidades',0,0.00,5445.00,NULL,1,0),(129,1,129,'Barra P/Tierra  P/Riel DIM 125A de 7 Bornes',1,'unidades',0,0.00,188.00,NULL,1,0),(130,1,130,'Celula FotoControl',0,'unidades',0,0.00,605.00,NULL,1,0),(131,1,131,'Ficha 220V 10 Amp (Macho / Hembra) - alargue mig',1,'unidades',0,0.00,149.00,NULL,1,0),(132,1,132,'Terminales Puntera 16mm Tiff Ctn',1,'unidades',0,0.00,5.00,NULL,1,0),(133,2,1,'ANGULO 1\"1/4 x 1/8  de 6000mm',1,'unidades',0,0.00,1090.00,'2020-02-26 11:49:02',1,0),(134,2,2,'Angulo 3\' x 3/16',1,'unidades',0,0.00,1650.00,NULL,1,0),(135,2,3,'Angulo 3/4 x 1/8',1,'unidades',0,0.00,1200.00,'2020-03-04 12:18:38',1,0),(136,2,4,'Angulo 31,75 x 31,75 mm en 1/8 ',1,'unidades',0,0.00,730.00,NULL,1,0),(137,2,5,'Cancamos especiales para mod. 12 mts. en chapa negra en 6,35 mm (segœn plano)',1,'unidades',0,0.00,500.00,'2020-03-06 11:44:48',1,0),(138,2,6,'Ca–o 50 x 50 x 1,2 mm de espesor',1,'unidades',0,0.00,1286.00,NULL,1,0),(139,2,7,'Caño estructural 100 x 100 x 1,6 mm * 6 mts',1,'unidades',0,0.00,3452.00,'2020-02-26 12:14:03',1,0),(140,2,8,'Caño estructural 100 x 100 x 2 mm.',1,'unidades',0,0.00,3784.00,NULL,1,0),(141,2,9,'Caño estructural 100 x 100 x 3.2 mm.',1,'unidades',0,0.00,6297.00,NULL,1,0),(142,2,10,'Caño estructural 100 x 50 x 2 mm',1,'unidades',0,0.00,3630.00,'2020-02-26 11:49:30',1,0),(143,2,11,'Caño estructural 20 x 20 x 1,6 mm',1,'unidades',0,0.00,660.00,'2020-02-26 11:49:43',1,0),(144,2,12,'Caño estructural 40 x 20 x 1,6 mm',1,'unidades',0,0.00,1007.00,'2020-02-26 11:50:05',1,0),(145,2,13,'Caño estructural 40 x 40 x 1,6 mm',1,'unidades',0,0.00,1354.00,'2020-02-26 11:50:39',1,0),(146,2,14,'Caño estructural 40 x 40 x 2 mm',1,'unidades',0,0.00,1584.00,'2020-02-26 11:51:05',1,0),(147,2,15,'Caño estructural 50 x 20 x 1,6 mm',1,'unidades',0,0.00,1199.00,'2020-02-26 11:51:17',1,0),(148,2,16,'Caño Estructural 50 x 30 x 1,6 mm.',1,'unidades',0,0.00,1364.00,'2020-02-26 11:53:53',1,0),(149,2,17,'Ca–o estructural 50 x 50 x 1,6 mm * 6 Mts  ',1,'unidades',0,0.00,1700.00,'2020-02-26 11:55:42',1,0),(150,2,18,'Ca–o estructural 50 x 50 x 2 mm * 6 Mts',1,'unidades',0,0.00,1403.00,'2020-02-26 11:55:59',1,0),(151,2,19,'Ca–o estructural 50 x 50 x 3,2 mm * 6 mts',1,'unidades',0,0.00,3047.00,'2020-02-26 12:13:22',1,0),(152,2,20,'Ca–o estructural 60 x 60 x 3,2 mm',1,'unidades',0,0.00,3673.00,NULL,1,0),(153,2,21,'Ca–o estructural 80 x 40 x 1,6 mm',1,'unidades',50,0.00,2042.00,'2020-03-03 12:57:04',1,0),(154,2,22,'Ca–o estructural 80 x 40 x 2 mm  de 6 mts',1,'unidades',0,0.00,2915.00,'2020-03-03 12:58:38',1,0),(155,2,23,'Caño Redondo 114,30 x 1,59 LF  ',1,'Tira 6 mts',0,0.00,2909.00,'2020-03-03 12:59:48',1,0),(156,2,24,'Caño redondo 3 1/2  x 2 mm ',1,'Tira 6 mts',0,0.00,1604.00,NULL,1,0),(157,2,25,'Caño Redondo 4 1/2\"  x1/4\" ',1,'Tira 6 Mts',0,0.00,7941.00,NULL,1,0),(158,2,26,'Caño Redondo 44,45  x 1,59 LF ',1,'Tira 6 Mts',0,0.00,1141.00,NULL,1,0),(159,2,27,'Caño Redondo 50,80  x 1,59 LF  ',1,'Tira 6 mts',0,0.00,1078.00,'2020-03-03 13:00:17',1,0),(160,2,28,'Chapa Galvanizada Techo Acanalada C-25, natural',1,'x ML',0,0.00,545.00,'2020-03-03 13:04:27',1,0),(161,2,29,'Chapa lisa  (1,22x3,00x1,2) ',1,'Plancha',0,0.00,1936.00,NULL,1,0),(162,2,30,'Chapa trapezoidal T101 ancho 1,10 mts *BLANCO*',1,'x ML ',0,0.00,1086.22,'2020-03-06 10:24:12',1,0),(163,2,31,'Chasis 12000 x 2500',0,'unidades',0,0.00,1.00,NULL,1,0),(164,2,32,'Chasis 6000 x 2500',0,'unidades',0,0.00,1.00,NULL,1,0),(165,2,33,'Chasis 6000 x 3000',0,'unidades',0,0.00,1.00,NULL,1,0),(166,2,34,'Cinta Metalica Perforada Fleje Galvanizada 19mm X 30 Mtrs',1,'unidades',0,0.00,650.00,'2020-03-06 11:40:59',1,0),(167,2,35,'Cubo p/sugecion de Modulos   ESPESOR 5 MM ',1,'unidades',2700,0.00,2662.00,NULL,1,0),(168,2,36,'Faja soporte de Aire 600 x 300 en planchuela de 1 1/4 x 1/8 ',1,'unidades',0,0.00,540.00,'2020-03-10 10:02:42',1,0),(169,2,37,'IPN 100 mm x 6 mts',1,'unidades',0,0.00,4950.00,'2020-03-06 11:34:35',1,0),(170,2,38,'IPN 140mm x 6 mts',1,'unidades',0,0.00,8200.00,'2020-03-06 11:35:57',1,0),(171,2,39,'IPN 160 mm x 12 mts  ',1,'unidades',0,0.00,28393.00,NULL,1,0),(172,2,40,'IPN 160 mm x 6 mts  ',1,'unidades',0,0.00,12750.00,'2020-03-06 11:37:59',1,0),(173,2,41,'IPN 180 mm x 6 mts',1,'unidades',0,0.00,15131.00,'2020-03-06 11:39:58',1,0),(174,2,42,'IPN 200 mm x 6 mts',1,'unidades',0,0.00,24129.00,NULL,1,0),(175,2,43,'IPN 220 X 6 mts',1,'unidades',0,0.00,38000.00,'2020-03-06 11:39:07',1,0),(176,2,44,'IPN 260 mm x 6 mts',1,'unidades',0,0.00,65800.00,'2020-03-06 11:39:29',1,0),(177,2,45,'Juego Completo de Rodante (Masa, Maciso, elasticos) PROVEEDOR CA„ITO',1,'unidades',0,0.00,1.00,NULL,1,0),(178,2,46,'loker Guardarropa Metalico de 8 Puertas con porta candado',1,'unidades',0,0.00,16214.00,NULL,1,0),(179,2,47,'Malla 25x25x2,6mm  3x1,20',1,'unidades',0,0.00,2089.00,NULL,1,0),(180,2,48,'Malla Romboidal industrial (METAL DESPLEGADO ( 250-16-20 ) AN: 1.22 x La 3.00 x ESp 1,6 MM  *Chica*',1,'Plancha',0,0.00,2568.00,'2020-02-26 12:16:30',1,0),(181,2,49,'Malla Romboidal industrial (METAL DESPLEGADO ( 450-20-30 ) AN: 1.22 x La 3.00 x ESp 2 MM  *Mediana*',1,'Plancha',0,0.00,1955.00,NULL,1,0),(182,2,50,'Malla Romboidal IND. METAL DESPLEGADO (450-30-30) AN: 1.00 x La 3.00 x ESp 3.2 MM, *Grande*',1,'Plancha',2,0.00,2208.00,NULL,1,0),(183,2,51,'OVALO medida exterior (230x140mm) Medidas radio(70x120)mm en espesor 5/16 (7,94mm)',1,'unidades',0,0.00,1210.00,NULL,1,0),(184,2,52,'Panchuela de 1\" 1/2 de ancho por 1/8 de espesor    ',1,'unidades',0,0.00,1.00,NULL,1,0),(185,2,53,'Patas de Escritorio (oficinas) de 600x1400x680 de alto en estructural 50x50 en 1,6mm',1,'unidades',0,0.00,5000.00,'2020-03-17 08:32:22',1,0),(186,2,54,'Perfil \"T\" en Aluminio Crudo 25x25mm en 1,25mm de espesor',1,'Tira de 6 Mts',0,0.00,786.00,'2020-03-11 10:30:13',1,0),(187,2,55,'Perfil C Chapa Galvanizada De 100 X 50 X 15 X 1.6 Mm',1,'Tira 6 Mts',0,0.00,4130.00,'2020-03-10 10:13:56',1,0),(188,2,56,'Perfil C Chapa Galvanizada De 140 X 60 X 20 X 2 Mm',1,'Tiras 6 Mts',0,0.00,3360.00,'2020-03-10 10:14:13',1,0),(189,2,57,'Perfil C Chapa Galvanizada 80mm X 40mm X 15mm EN 2Mm ',1,'Tiras 6 Mts',0,0.00,2956.15,'2020-03-12 13:59:34',1,0),(190,2,58,'Perfil De Aluminio \"T\"  25 X 1,5 Blanco ',1,'Tira de 6 Mts',0,0.00,786.00,'2020-03-11 10:31:10',1,0),(191,2,59,'Chapa Estampada Antideslizante 16 (1,60 Mm) de 2.44 x 1.22 Semilla Melon',1,'Plancha ',0,0.00,5000.00,'2020-03-10 10:51:57',1,0),(192,2,60,'PLANCHA DE SEMILLA DE MELON 1,25 x 2,44 mts e 3,2mm',1,'Plancha',0,0.00,5458.00,NULL,1,0),(193,2,61,'PLANCHA DE SEMILLA DE MELON 1,25 x 3,00 mts e 3,2mm',1,'Plancha',0,0.00,7191.00,NULL,1,0),(194,2,62,'PLANCHUELA 1\"1/4 x 1/8 EN TIRA  6 MTS',1,'unidades',0,0.00,141.00,NULL,1,0),(195,2,63,'Plegado Alero Ventana/Puerta 20x50x20 N¼10 de 3000mm en 1,60mm',1,'unidades',0,0.00,514.00,'2020-02-26 12:24:07',1,0),(196,2,64,'plegado Angulo Galvanizado 40 x 50 x 1,6 mm en 3000 mm largo',1,'unidades',0,0.00,1857.00,NULL,1,0),(197,2,65,'plegado Cancamos en 5 mm chapa negra 110x110x0,39 con ojal _ 30mm',1,'unidades',0,0.00,375.00,NULL,1,0),(198,2,66,'Plegado chasis 2500 mm de largo80x160x80mm',1,'unidades',10,0.00,2722.50,'2020-02-26 12:26:36',1,0),(199,2,67,'Plegado chasis 6000 mm de largo 80x160x80mm',1,'unidades',10,0.00,6456.56,'2020-02-26 12:26:21',1,0),(200,2,68,'Plegado Company 80x85x80 en 3,2mm de 2500',1,'unidades',0,0.00,1446.00,NULL,1,0),(201,2,69,'Plegado Company 80x85x80 en 3,2mm de 6000',1,'unidades',0,0.00,3473.00,NULL,1,0),(202,2,70,'Plegado cubre caño (2)  * 10x80x50mm ',1,'Tira de 3 Mts',0,0.00,563.00,NULL,1,0),(203,2,71,'Plegado cubre caño aire 20x50x80x50x20mm en Chapa Lisa Negra',1,'unidades',0,0.00,650.00,'2020-03-10 10:21:28',1,0),(204,2,72,'Cumbrera Sinusoidal O Acanalada Cincalum C25',1,'x ML',0,0.00,850.00,'2020-03-17 08:29:36',1,0),(205,2,73,'plegado Esquineros N¡ 9 en 2 mm espesor  ( Medida: 2440 )',1,'unidades',0,0.00,1318.00,'2020-02-26 12:29:34',1,0),(206,2,74,'plegado Galvanizado para puerta 2050 mm largo N¡ 8',1,'unidades',0,0.00,425.00,NULL,1,0),(207,2,75,'plegado Galvanizado para puerta 900 mm largo N¡ 8',1,'unidades',0,0.00,589.00,NULL,1,0),(208,2,76,'plegado Galvanizado tipo \"U\" 2400 mm N¡ 7',1,'unidades',85,0.00,778.00,NULL,1,0),(209,2,77,'plegado Galvanizado tipo \"U\" 6000 mm N¡ 7',1,'unidades',0,0.00,1857.00,NULL,1,0),(210,2,78,'Plegado guardabarro rodante segœn plano',1,'unidades',0,0.00,1.00,NULL,1,0),(211,2,79,'Plegado guia de cortina Galvanizdo calibre 20 (0,9mm) 20x20x50 de 3000mm',1,'unidades',0,0.00,425.00,NULL,1,0),(212,2,80,'Plegado para cubrir columnas de modulo de 12 mts. (10x10xint-135x10x10 mm de 1,6mm en largo 3000mm)s',1,'unidades',0,0.00,756.00,NULL,1,0),(213,2,81,'Plegado para ducha 20x50x300x50x50mm en 1,6mm',1,'unidades',0,0.00,3050.00,'2020-03-10 10:22:19',1,0),(214,2,82,'Plegado soporte de aire (base)20x450x20mm s/plano',1,'unidades',0,0.00,1500.00,'2020-03-17 08:25:32',1,0),(215,2,83,'Soporte Aire Acondicionado 800 x 350 x 600 en estructural 80x40 en 1,6mm',1,'unidades',0,0.00,1500.00,'2020-03-17 08:30:48',1,0),(216,2,84,'UPN 100',1,'unidades',0,0.00,6400.00,'2020-03-06 11:14:06',1,0),(217,2,85,'UPN 100 mm x 6 mts',0,'unidades',0,0.00,0.00,NULL,1,0),(218,2,86,'UPN 140 mm x 6 mts',1,'unidades',0,0.00,9100.00,'2020-03-06 11:26:15',1,0),(219,2,87,'UPN 160 mm x 12 mts ',1,'unidades',0,0.00,26300.00,'2020-03-06 11:25:58',1,0),(220,2,88,'UPN 160 mm x 6 mts   ',1,'unidades',0,0.00,13846.00,'2020-03-06 11:27:11',1,0),(221,2,89,'UPN 180 mm x 6 mts',0,'unidades',0,0.00,16380.00,'2020-03-06 11:31:01',1,0),(222,2,90,'UPN 180 x70',1,'unidades',0,0.00,16380.00,'2020-03-06 11:09:36',1,0),(223,2,91,'UPN 200 mm x 6 mts',1,'unidades',0,0.00,16068.00,NULL,1,0),(224,2,92,'UPN 260 mm x 6 mts',1,'unidades',0,0.00,25704.00,NULL,1,0),(225,2,93,'UPN 80 X 6 mts',1,'unidades',0,0.00,5200.00,'2020-03-06 11:31:59',1,0),(226,3,1,'Bajo mesada  98 x 56 cm  en melamina en color TEKA ARTICA',1,'unidades',0,0.00,14500.00,'2020-03-17 09:23:00',1,0),(227,3,2,'Bajo  mesada  en melamina en Color TEKA ARTICA',1,'unidades',0,0.00,1.00,NULL,1,0),(228,3,3,'Almohadas 70 x 40 cm',0,'unidades',0,0.00,1210.00,NULL,1,0),(229,3,4,'Alacena vivienda  100 x 60 cm  en melamina Color TEKA ARTICA         Nuevo plano',1,'unidades',0,0.00,6050.00,NULL,1,0),(230,3,5,'Campana   55 x 60 cm en melamina Color TEKA ARTICA        Nuevo plano',1,'unidades',0,0.00,6050.00,NULL,1,0),(231,3,6,'Tabla para Mesa vivienda de 0,90 x 0,60 mts.bordes de PVC en color TEKA ARTICA',1,'unidades',0,0.00,4800.00,'2020-03-17 09:21:54',1,0),(232,3,7,'Muebles escobero  de 1200x400x400mm Color TEKA ARTICA',1,'unidades',0,0.00,1.00,NULL,1,0),(233,3,8,'Tapa de 1,20 x 0,60 mts. Color Roble ',1,'unidades',0,0.00,1.00,NULL,1,0),(234,3,9,'Cajonera de un cajon 400x500x100mm color Roble',1,'unidades',0,0.00,1.00,NULL,1,0),(235,3,10,'Cama cucheta',0,'unidades',0,0.00,12500.00,'2020-03-17 09:28:19',1,0),(236,3,11,'Tapa de 1,80 x 0,68 mts.Segun proyecto',1,'unidades',0,0.00,5800.00,'2020-03-17 09:28:37',1,0),(237,3,12,'Tapa de 1,50 x 0,68 mts. Segœn proyecto',1,'unidades',0,0.00,5800.00,'2020-03-17 09:28:52',1,0),(238,3,13,'Colchon de 1 Plaza Espuma Alta Densidad',0,'unidades',0,0.00,6050.00,NULL,1,0),(239,3,14,'Tapa para ca–o 200 mm x 2,380 mts Color Teka Artica',1,'unidades',0,0.00,3398.00,NULL,1,0),(240,3,15,'Cubre ca–o varios para mod. 6,00 mts.60x110x60 mm Medina interna Teka Artica',1,'unidades',0,0.00,3025.00,NULL,1,0),(241,3,16,'Sillon Ejecutivo negro',1,'unidades',0,0.00,5445.00,NULL,1,0),(242,3,17,'Cortinas black out 0,65 x 1,00 mts.',0,'unidades',0,0.00,0.00,NULL,1,0),(243,3,18,'Cortinas black out 0,90 x 1,00 mts.',0,'unidades',0,0.00,0.00,NULL,1,0),(244,3,19,'Tapa para mesa de 1.00x 1,00 mts. Color Teka Artica',1,'unidades',0,0.00,1.00,NULL,1,0),(245,3,20,'Escritorio de 1.40x 0.60 mts. Color Roble',1,'unidades',0,0.00,1.00,NULL,1,0),(246,3,21,'TAPA FORMA L 0,60x0,60 en Teka Artica',1,'unidades',0,0.00,3428.00,NULL,1,0),(247,3,22,'Box para Ba–o 3 (   puertas de sanitarios +   divisiones + frentes +  pasadores libre/ocupado) Color',1,'unidades',0,0.00,1.00,NULL,1,0),(248,3,23,'Cortinas Black out 1,10 x 1,00 mts.',0,'unidades',0,0.00,0.00,NULL,1,0),(249,3,24,'Sillon de Oficina  IKEA con respaldo fijo y apoya brazos color negro',1,'unidades',0,0.00,3328.00,NULL,1,0),(250,3,25,'Banco Cambiador para vestuario 1,50 mts largo x 0,43 mts h x 0,40 mts prof  ',1,'unidades',0,0.00,4235.00,NULL,1,0),(251,3,26,'Cortinas black out 1,15 x 1,00 mts.',0,'unidades',0,0.00,0.00,NULL,1,0),(252,3,27,'Placard Melanina de 1,50x1,85x0,45mts con puertas y cajonera color Teka Artica',1,'unidades',0,0.00,6776.00,NULL,1,0),(253,3,28,'Cortinas black out 1,30 x 1,00 mts.',0,'unidades',0,0.00,0.00,NULL,1,0),(254,3,29,'Mesa de Trabajo de 6,00 x 0,60, con huecos pasa cable con cara frontal con PVC Teka Artica',1,'unidades',0,0.00,12047.00,NULL,1,0),(255,3,30,'Cortinas Black Out 1,17 x 1,20 mts',0,'unidades',0,0.00,0.00,NULL,1,0),(256,3,31,'Tapa Foma \" C \" 60x110x60mm Teka Artica',1,'unidades',0,0.00,5654.00,NULL,1,0),(257,3,32,'Tapa para ca–o 150 mm x 2,30 mts color  Teka Artica ',1,'unidades',0,0.00,3025.00,NULL,1,0),(258,3,33,'Box para Ba–o 1 ( 2 puertas de sanitarios + 2 divisiones + frentes + 2 pasadores libre/ocupado) Colo',1,'unidades',0,0.00,10653.00,NULL,1,0),(259,3,34,'Box para Ba–o 2 ( 4 puertas de sanitarios + 4 divisiones + frentes + 4 pasadores libre/ocupado) colo',1,'unidades',0,0.00,33880.00,NULL,1,0),(260,3,35,'Box para Ba–o 4 ( 5 puertas de sanitarios + 4 divisiones + frentes + 5 pasadores libre/ocupado +02 d',1,'unidades',0,0.00,37510.00,NULL,1,0),(261,3,36,'tabla Mesa  1,60 x 0,90 Mts con los 4 Bordes PVC, Melanina Roble Escencia',1,'unidades',0,0.00,5800.00,'2020-03-17 09:22:09',1,0),(262,3,37,'Tabla Mesa  1,70 x 0,90 Mts con los 4 Bordes PVC, Melanina Roble Escencia',1,'unidades',0,0.00,9453.00,NULL,1,0),(263,3,38,'Tabla mesa 1200 X 800MM P/comedor y 4 sillas con borde de PVC color Roble',1,'unidades',0,0.00,18150.00,NULL,1,0),(264,3,39,'Tabla Mesa Escritorio  1,40 x 0,60 Mts con los 4 Bordes, Melanina Roble Escencia',1,'unidades',0,0.00,4800.00,'2020-03-17 09:21:26',1,0),(265,3,40,'Soporte de Monitor (Alto: 10cm, Ancho: 30cm, Profundidad:24,5cm ) color Roble',1,'unidades',0,0.00,478.00,NULL,1,0),(266,3,41,'Tabla Division Escritorio 1,30 x 0,30 Mts con los 3 Bordes PVC enchapado, Melanina Roble Escencia',1,'unidades',0,0.00,4800.00,'2020-03-17 09:21:38',1,0),(267,3,42,'Tapa Lateral de Escritorio 70,5x35 cm Roble Escencia, 4 bordes PVC',1,'unidades',0,0.00,768.00,NULL,1,0),(268,3,43,'Mueble para Biblioteca Alto:42cm, Ancho: 90cm, profundidad: 30cm, roble escencia en borde PVC',1,'unidades',0,0.00,2593.00,NULL,1,0),(269,3,44,'Tirador cromo ** piave iossa zamac (4105)',1,'unidades',0,0.00,29.00,NULL,1,0),(270,3,45,'Tapa de 2370 x 200 cm  color Teka Artica',1,'unidades',0,0.00,1880.00,NULL,1,0),(271,3,46,'Escalones de Madera 600x300x40mm de espesor',1,'unidades',0,0.00,1903.00,NULL,1,0),(272,3,47,'Madera Durmiente para Deck Medida final ancho: 9cm x largo: 2 mts espesor de 4,5 cm, cepillada, con ',1,'unidades',0,0.00,2208.00,NULL,1,0),(273,3,48,'Zocalo de Madera pindo de 1/2 x 2 de 3 mts pintada a blanco',1,'unidades',0,0.00,2494.00,NULL,1,0),(274,3,49,'Base de Apoyo: en durmientes de Madera 45x12x24 cm',1,'unidades',0,0.00,2642.00,NULL,1,0),(275,3,50,'pasador  Libre/Ocupado',1,'unidades',0,0.00,1473.00,NULL,1,0),(276,3,51,'Sillas Eco Cuero Negro',1,'unidades',0,0.00,1.00,NULL,1,0),(277,3,52,'Sillas Eco Cuero Negro Giratoria',1,'unidades',0,0.00,1.00,NULL,1,0),(278,3,53,'Cortinas black out 1,60 x 1,10 mts.',1,'unidades',0,0.00,2904.00,NULL,1,0),(279,3,54,'cortinas Black Out 1,40 x 1,10 mts.',1,'unidades',0,0.00,2541.00,NULL,1,0),(280,3,55,'cortinas Black Out 1,20 x 1,00 mts.',1,'unidades',0,0.00,2299.00,NULL,1,0),(281,3,56,'Cortinas Screen Roller 0,65 x 1,00 mts.',1,'unidades',0,0.00,1936.00,NULL,1,0),(282,3,57,'Cortinas Screen Roller 0,85 x 1,00 mts.',1,'unidades',0,0.00,3205.00,NULL,1,0),(283,3,58,'Cortinas Screen Roller 1,05 x 1,00 mts.',1,'unidades',0,0.00,2904.00,NULL,1,0),(284,3,59,'Cortinas Screen Roller 1,20 x 1,00 mts.',1,'unidades',0,0.00,3134.00,NULL,1,0),(285,3,60,'Cortinas Screen Roller 1,40 x 1,00 mts.',1,'unidades',0,0.00,3582.00,NULL,1,0),(286,3,61,'Cortinas Screen Roller 1,15 x 1,00 mts',1,'unidades',0,0.00,3562.00,NULL,1,0),(287,3,62,'Cortinas Screen Roller 1,60 x 1,00 mts.',1,'unidades',0,0.00,4054.00,NULL,1,0),(288,3,63,'cortinas Screen Roller 1,30 x 1,00 mts.',1,'unidades',0,0.00,3660.00,NULL,1,0),(289,3,64,'cortinas Screen Roller 1,20 x 1,00 mts.',1,'unidades',0,0.00,3146.00,NULL,1,0),(290,3,65,'cortinas Screen Roller 1,05 x 1,00 mts.',1,'unidades',0,0.00,2662.00,NULL,1,0),(291,3,66,'cortinas Black Out 1,05 x 1,00 mts.',1,'unidades',0,0.00,1.00,NULL,1,0),(292,3,67,'Silla fija plastica con patas de Hierro Modelo BC Fija',1,'unidades',0,0.00,817.00,NULL,1,0),(293,3,68,'cortinas Screen Roller 1,00 x 2,00 mts.',1,'unidades',0,0.00,3872.00,NULL,1,0),(294,3,69,'cortinas Screen Roller 0,80 x 2,00 mts.',1,'unidades',0,0.00,2541.00,NULL,1,0),(295,3,70,'base de hormigon para deck de jardin 28x28x20 castelatto',1,'unidades',0,0.00,246.00,NULL,1,0),(296,4,1,'Toner Alternativo 83a 283a M127 M127f M125 M201 ',1,'unidades',2,0.00,560.00,NULL,1,0),(297,4,2,'Resma de papel A4 de 70gr',1,'unidades',5,0.00,208.00,NULL,1,0),(298,4,3,'Toner P/hp 217a Cf217a Negro Alternativo HP130 M102 Sin Chip Aqx',1,'unidades',2,0.00,569.00,NULL,1,0),(299,5,1,'DWE4214 - DEWALT AMOLADORA 4 1/2\" 1200    C/GATILLO',1,'unidades',0,0.00,11002.00,NULL,1,0),(300,5,2,'Atornilladora electrica',1,'unidades',0,0.00,0.00,NULL,1,0),(301,5,3,'Atornilladora electrica',1,'unidades',0,0.00,0.00,NULL,1,0),(302,5,4,'Atornilladora electrica',1,'unidades',0,0.00,0.00,NULL,1,0),(303,5,5,'Atornilladora electrica rotomartillo',1,'unidades',0,0.00,0.00,NULL,1,0),(304,5,6,'Atornilladora electrica rotomartillo',1,'unidades',0,0.00,0.00,NULL,1,0),(305,5,7,'Atornilladora a bateria de 18v',1,'unidades',0,0.00,0.00,NULL,1,0),(306,5,8,'Atornilladora a bateria de 20v',1,'unidades',0,0.00,0.00,NULL,1,0),(307,5,9,'Atornilladora a bateria de 18v',1,'unidades',0,2.00,0.00,NULL,1,0),(308,5,10,'Atornilladora a bateria de 20v',1,'unidades',0,0.00,0.00,NULL,1,0),(309,5,11,'Atornilladora a bateria de 18v',1,'unidades',0,0.00,0.00,NULL,1,0),(310,5,12,'DWE4577 - Amoladora Angular DEWALT de 7\'  (180mm 2700 W)',1,'unidades',0,0.00,23069.00,NULL,1,0),(311,5,13,'DWE4212 - Amoladora de 4\'',1,'unidades',0,0.00,0.00,NULL,1,0),(312,5,14,'6117-59A - Amoladora de 4\'',1,'unidades',0,0.00,0.00,NULL,1,0),(313,5,15,'9558NB - Amoladora de 4\'',1,'unidades',0,0.00,0.00,NULL,1,0),(314,5,16,'D28136 - Amoladora de 4\'',1,'unidades',0,0.00,0.00,NULL,1,0),(315,5,17,'Amoladora de 4\'',0,'unidades',0,0.00,0.00,NULL,1,0),(316,5,18,'DW752 - Amoladora de banco',1,'unidades',0,0.00,0.00,NULL,1,0),(317,5,19,'Cierra  caladora',1,'unidades',0,0.00,0.00,NULL,1,0),(318,5,20,'Cierra  caladora',1,'unidades',0,0.00,0.00,NULL,1,0),(319,5,21,'Cierra  caladora',1,'unidades',0,0.00,0.00,NULL,1,0),(320,5,22,'Cierra  caladora',1,'unidades',0,0.00,0.00,NULL,1,0),(321,5,23,'Cierra  caladora',1,'unidades',0,0.00,0.00,NULL,1,0),(322,5,24,'Cierra  circular',1,'unidades',0,0.00,0.00,NULL,1,0),(323,5,25,'Cierra  sensitiva',1,'unidades',0,0.00,0.00,NULL,1,0),(324,5,26,'Cierra sensitiva',1,'unidades',0,0.00,0.00,NULL,1,0),(325,5,27,'Compresor de aire grande',1,'unidades',0,0.00,0.00,NULL,1,0),(326,5,28,'Compresor de aire chico',1,'unidades',0,0.00,0.00,NULL,1,0),(327,5,29,'Compresor de aire grande',1,'unidades',0,0.00,0.00,NULL,1,0),(328,5,30,'Pistola de calor',1,'unidades',0,0.00,0.00,NULL,1,0),(329,5,31,'Pistola de calor',1,'unidades',0,0.00,0.00,NULL,1,0),(330,5,32,'Remachadora Hid. Neumtica Mod. N640CV',1,'unidades',0,0.00,27830.00,NULL,1,0),(331,5,33,'Soldadora Mig',1,'unidades',0,0.00,0.00,NULL,1,0),(332,5,34,'Termofusora ',1,'unidades',0,0.00,0.00,NULL,1,0),(333,5,35,'Taladro percutor/atorn. A bateria 20v',1,'unidades',0,0.00,34492.00,NULL,1,0),(334,5,36,'Cortadora de plasma de 15 Amp. ',1,'unidades',0,0.00,0.00,NULL,1,0),(335,5,37,'Soldadora Mig c/ devanadora desmontable ( Va con pa-0162)',1,'unidades',0,0.00,235542.00,NULL,1,0),(336,5,38,'Pesta–adora Excentrica Refrigeracion Con Embrague Cortadora',1,'unidades',0,0.00,4058.00,NULL,1,0),(337,5,39,'Juego Caja Herramientas Mecanicas 120 Piezas Stanley 91-931',1,'unidades',0,0.00,13552.00,NULL,1,0),(338,5,40,'Tijera Corta Tubo Ca–o Fusion Pvc Ppl Bremen Profesional Cod. 6798 Dgm',1,'unidades',0,0.00,2239.00,NULL,1,0),(339,5,41,'Careta Fotosencible ESAB warrior tech',1,'unidades',0,0.00,8356.00,NULL,1,0),(340,5,42,'Pesta–adora Excentrica Refrigeracion Con Embreague Cortadora  ( LONG TERM ) ',1,'unidades',0,0.00,3352.00,NULL,1,0),(341,5,43,'Tester Mult’metro Digital Unit Ut61a Detector Voltaje Hfe',1,'unidades',0,0.00,4477.00,NULL,1,0),(342,6,1,'Abrazadera de 2\"',1,'unidades',0,0.00,30.00,NULL,1,0),(343,6,2,'Abrazadera de 8/16\"',1,'unidades',0,0.00,23.00,NULL,1,0),(344,6,3,'Acople Rapido 1/4 con punta Reforzada',1,'unidades',0,0.00,274.00,NULL,1,0),(345,6,4,'Adaptador Enchufes Juego Hembra 10 Amp Para Alargues ',1,'unidades',0,0.00,153.00,NULL,1,0),(346,6,5,'Adaptador Enchufes Juego Macho  10 Amp Para Alargues',1,'unidades',0,0.00,1.00,NULL,1,0),(347,6,6,'Aerosol antiadherente para torcha',1,'unidades',0,0.00,1.00,NULL,1,0),(348,6,7,'Aislante 10mm doble capa de aluminio 2da mano ',1,'unidades',0,0.00,1452.00,NULL,1,0),(349,6,8,'Aislante 5mm doble capa de aluminio 2da mano ',1,'unidades',0,0.00,1210.00,NULL,1,0),(350,6,9,'Aislante Termico ESP. L:17.28 mt x A: 1.25 mt de Esp.: 50 mm, Modelo: micro aire plata techo revesti',1,'unidades',0,0.00,1.00,NULL,1,0),(351,6,10,'Alargue, Sujetador P/Puntas Atornillador 75',1,'unidades',0,0.00,150.00,NULL,1,0),(352,6,11,'Alicate 160mm',1,'unidades',0,0.00,614.00,NULL,1,0),(353,6,12,'Almohadas 70 x 40 cm',1,'unidades',0,0.00,1210.00,NULL,1,0),(354,6,13,'Angulo Esquinero 38X38 mm Galvanizado ',1,'unidades',0,0.00,8.00,NULL,1,0),(355,6,14,'Antipanico completo HAFELE ( COD. T290-00 , T005-01 , T800P10 )',1,'unidades',0,0.00,3831.00,NULL,1,0),(356,6,15,'Arandela  Plana 8mm 5/16 x 2\" para Aire',1,'unidades',0,0.00,1.00,NULL,1,0),(357,6,16,'Arnes Apolo, 3 punto de enganche',1,'unidades',0,0.00,1694.00,NULL,1,0),(358,6,17,'Aserrin en Bolsa ',1,'unidades',0,0.00,24.00,NULL,1,0),(359,6,18,'Base cuadrada para 4 tornillos',1,'unidades',0,0.00,1.00,NULL,1,0),(360,6,19,'base de hormigon para deck de jardin 28x28x20 castelatto',1,'unidades',0,0.00,1.00,NULL,1,0),(361,6,20,'Baterias 9V',1,'unidades',0,0.00,85.00,NULL,1,0),(362,6,21,'Bisagras tipo piano (Bis DD 2000-80-5-1,5 Zincada)',1,'unidades',6,0.00,1437.52,'2020-02-20 11:44:22',1,0),(363,6,22,'Repuesto Blister para cutter de 18mm',1,'unidades',0,0.00,93.00,NULL,1,0),(364,6,23,'Bolsa de trapo de 5 kg   (Blanco )',1,'unidades',0,0.00,990.16,'2020-01-24 03:59:39',1,0),(365,6,24,'Burlete de puerta 5 x 10  (PA25)',1,'unidades',0,0.00,15.00,NULL,1,0),(366,6,25,'Burletes medianos para auto   (PA24)',1,'unidades',0,0.00,101.00,NULL,1,0),(367,6,26,'Calco Box Grande blanco',1,'unidades',0,0.00,1.00,NULL,1,0),(368,6,27,'Calcos Box (CHICOS)',1,'unidades',0,0.00,424.00,NULL,1,0),(369,6,28,'Cascote molido para relleno',1,'unidades',0,0.00,845.00,NULL,1,0),(370,6,29,'Cemento De Contacto Lata De 4 Lts',1,'unidades',0,0.00,2211.00,NULL,1,0),(371,6,30,'Antipanico con boton central',1,'unidades',0,0.00,1.00,NULL,1,0),(372,6,31,'Cerradura Kallay Modelo 503 frente acero inox reforzada',1,'unidades',0,0.00,502.00,'2020-01-31 10:39:40',1,0),(373,6,32,'Cerradura pomo con llave YALE (T800P10)',1,'unidades',0,0.00,571.00,NULL,1,0),(374,6,33,'Chapa para N¡ de chasis',1,'unidades',0,0.00,102.00,NULL,1,0),(375,6,34,'Cierra puertas Aereo (Hafele) de 60 Kg.',1,'unidades',0,0.00,1920.23,'2020-01-31 10:40:22',1,0),(376,6,35,'cinta adhesiva 48 x 30 papel bifaz',1,'unidades',0,0.00,277.00,NULL,1,0),(377,6,36,'Cinta Aisladora Negra ( 20mts )',1,'unidades',0,0.00,78.00,NULL,1,0),(378,6,37,'Cinta de embalar Trasparente 48x50',1,'unidades',0,0.00,67.00,NULL,1,0),(379,6,38,'Cinta de papel Ancha Blanca 48x50',1,'unidades',0,0.00,227.00,NULL,1,0),(380,6,39,'Cinta de papel Fina Blanca (Enmascarar de 24 x 50)',1,'unidades',0,0.00,115.98,'2020-01-24 04:03:02',1,0),(381,6,40,'Cinta de pvc para aire con pegamento',1,'unidades',0,0.00,190.00,NULL,1,0),(382,6,41,'Cinta de pvc para aire sin pegamento',1,'unidades',0,0.00,190.00,NULL,1,0),(383,6,42,'Cinta Metrica Dogo 8 Mts Reforzada (DOGO)',1,'unidades',0,0.00,1500.00,'2020-03-06 11:42:31',1,0),(384,6,43,'Cinta Pasacables Acero Metalica Profesional de 10 Mts',1,'unidades',0,0.00,591.00,NULL,1,0),(385,6,44,'Cinta pasacables Acero Metalica Profesional de 15 Mts',1,'unidades',0,0.00,303.00,NULL,1,0),(386,6,45,'Clavo Punta Paris 1\"  x KG',1,'unidades',0,0.00,166.00,NULL,1,0),(387,6,46,'cola de amarre simple regulable 2mts con mosqueton est‡ndar',1,'unidades',0,0.00,920.00,NULL,1,0),(388,6,47,'Control Remoto Universal  P/Aire  + baterias',1,'unidades',0,0.00,555.00,NULL,1,0),(389,6,48,'Copa dentada 110   (MAKITA)',1,'unidades',0,0.00,1779.00,NULL,1,0),(390,6,49,'Copa dentada 22     (MAKITA)',1,'unidades',0,0.00,631.00,NULL,1,0),(391,6,50,'Copa dentada 25     (MAKITA)',1,'unidades',0,0.00,447.00,NULL,1,0),(392,6,51,'Copa dentada 27     (MAKITA)',1,'unidades',0,0.00,580.00,NULL,1,0),(393,6,52,'Copa dentada 32     (MAKITA)',1,'unidades',0,0.00,609.00,NULL,1,0),(394,6,53,'Copa dentada 43     (MAKITA)',1,'unidades',0,0.00,788.00,NULL,1,0),(395,6,54,'Copa dentada 51     (MAKITA)',1,'unidades',0,0.00,851.00,NULL,1,0),(396,6,55,'Copa dentada 53 universal    (MAKITA)',1,'unidades',0,0.00,886.00,NULL,1,0),(397,6,56,'Copa dentada 54     (MAKITA)',1,'unidades',0,0.00,973.00,NULL,1,0),(398,6,57,'Copa dentada 60     (MAKITA)',1,'unidades',0,0.00,973.00,NULL,1,0),(399,6,58,'Copa dentada 64     (MAKITA)',1,'unidades',0,0.00,1002.00,NULL,1,0),(400,6,59,'Copa dentada 70     (MAKITA)',1,'unidades',0,0.00,1175.00,NULL,1,0),(401,6,60,'Copa imantada de 3/8',1,'unidades',0,0.00,143.00,NULL,1,0),(402,6,61,'Cordon de soldadura 3720 ( 01 por cada 02 Cod PA0-0128)',1,'unidades',0,0.00,4400.00,'2020-01-20 06:34:40',1,0),(403,6,62,'Cordon de soldadura Dolomite 3910 w/r 2500 ( 01 por cada 02 Cod PA0-0197)',1,'unidades',0,0.00,4400.00,'2020-01-20 06:34:47',1,0),(404,6,63,'Cuter de metal  18mm',1,'unidades',0,0.00,178.00,NULL,1,0),(405,6,64,'Delantal para soldador con plomo',1,'unidades',0,0.00,1.00,NULL,1,0),(406,6,65,'Destornillador de Mano (Phillips 6x150 art2302)',1,'unidades',0,0.00,180.00,NULL,1,0),(407,6,66,'Destornillador de Mano 2,5 Phillips',1,'unidades',0,0.00,294.00,NULL,1,0),(408,6,67,'Destornillador de Mano 3 Phillips',1,'unidades',0,0.00,197.00,NULL,1,0),(409,6,68,'Destornillador de Mano 4 Phillips',1,'unidades',0,0.00,227.00,NULL,1,0),(410,6,69,'Destornillador de Mano 6 Phillips',1,'unidades',0,0.00,227.00,NULL,1,0),(411,6,70,'Destornillador de Mano 8 Phillips',1,'unidades',0,0.00,340.00,NULL,1,0),(412,6,71,'Destornillador de Mano punta plana  6 mm',1,'unidades',0,0.00,247.00,NULL,1,0),(413,6,72,'Destornillador de Mano punta plana 4 mm',1,'unidades',0,0.00,157.00,NULL,1,0),(414,6,73,'Destornillador de Mano punta plana 7,5 mm',1,'unidades',0,0.00,344.00,NULL,1,0),(415,6,74,'Destornillador de Mano punta plana 8 mm',1,'unidades',0,0.00,344.00,NULL,1,0),(416,6,75,'Difusores Blanco MIG 36',1,'unidades',0,0.00,47.00,NULL,1,0),(417,6,76,'Disco de Corte 355x3x25,4mm 14\"x1/8\"x1\"  (MAKITA)',1,'unidades',0,0.00,232.00,NULL,1,0),(418,6,77,'Disco de corte de 4\" 1/2      (TYROLIT)',1,'unidades',0,0.00,73.00,NULL,1,0),(419,6,78,'Disco de Corte de 7\"            (TYROLIT)',1,'unidades',0,0.00,104.00,NULL,1,0),(420,6,79,'Disco de Debaste de 4\" 1/2',1,'unidades',0,0.00,143.00,NULL,1,0),(421,6,80,'Disco de Debaste de 7\"',1,'unidades',0,0.00,87.00,NULL,1,0),(422,6,81,'Disco de Flap de 4\" 1/2, Para Metal  (TYROLIT)',1,'unidades',0,0.00,157.00,NULL,1,0),(423,6,82,'disgregante bidon de 5 lts.',1,'unidades',0,0.00,726.00,NULL,1,0),(424,6,83,'Disolvente Industrial (desengrasante)',1,'unidades',0,0.00,1753.00,NULL,1,0),(425,6,84,'Durmientes en liston 2,60 x 0,20 x 0,10 ',1,'unidades',0,0.00,1143.00,NULL,1,0),(426,6,85,'Electrodo 5/64\" (2.0mm) 1Kg (6013)',1,'unidades',0,0.00,170.00,NULL,1,0),(427,6,86,'Escuadra de aluminio professional c/sombrero 45¼ ',1,'unidades',0,0.00,459.00,NULL,1,0),(428,6,87,'Esquinero çngulo Doble 35x35 2mm Escuadra',1,'unidades',0,0.00,11.00,NULL,1,0),(429,6,88,'Esquinero çngulo Doble 65x65 2mm Escuadra',1,'unidades',0,0.00,21.00,NULL,1,0),(430,6,89,'Faja lumbar',1,'unidades',0,0.00,1.00,NULL,1,0),(431,6,90,'Fanacola 90  (Lata    14Kg)',1,'unidades',0,0.00,5707.68,'2020-02-26 03:57:58',1,0),(432,6,91,'Fanatite 520  (Pomo 01Kg)',1,'unidades',0,0.00,994.00,NULL,1,0),(433,6,92,'Fenolico 18mm  01 Cara Buena ** COLOR ROJO **',1,'unidades',0,0.00,1470.00,NULL,1,0),(434,6,93,'Gafas Protectoras Transparentes',1,'unidades',0,0.00,103.00,NULL,1,0),(435,6,94,'Goma anti vibratoria para aire',1,'unidades',0,0.00,1.00,NULL,1,0),(436,6,95,'Guantes de tela (Puntos Negros de Goma) DOGO ',1,'unidades',0,0.00,86.00,NULL,1,0),(437,6,96,'Guantes descarne',1,'unidades',0,0.00,107.00,NULL,1,0),(438,6,97,'Guantes para soldar  (steelPro) amarrillo/marron',1,'unidades',0,0.00,614.00,NULL,1,0),(439,6,98,'Hoja Cierra caladora Corta',1,'unidades',0,0.00,1.00,NULL,1,0),(440,6,99,'Hoja Cierra caladora larga Kit 5 Hojas, (1,6mm-3,2mm),(1/16\" - 1/8\")  Marca: Starret BU424',1,'Kit 5',0,0.00,634.00,NULL,1,0),(441,6,100,'Hoja Cierra caladora larga Kit 5 Hojas, (2,5-6mm),(1/16\" - 1/8\")  Marca BOSH T318B',1,'Kit 5 ',0,0.00,623.00,NULL,1,0),(442,6,101,'Lana de Vidrio aislante C/aluminio 50mm Ignifugo',1,'unidades',0,0.00,3597.00,NULL,1,0),(443,6,102,'Lana de Vidrio aislante C/aluminio 50mm Ignifugo c/menbrana hidrofuga tipo TIBEX ',1,'unidades',0,0.00,2904.00,NULL,1,0),(444,6,103,'Lanza para rodante',1,'unidades',0,0.00,1.00,NULL,1,0),(445,6,104,'L‡piz para carpintero',1,'unidades',0,0.00,102.00,NULL,1,0),(446,6,105,'Llave allen tipo \"T\" de 4mm BREMEN',1,'unidades',0,0.00,316.00,NULL,1,0),(447,6,106,'llave combinada 10 mm',1,'unidades',0,0.00,352.00,NULL,1,0),(448,6,107,'llave combinada 13 mm',1,'unidades',0,0.00,352.00,NULL,1,0),(449,6,108,'lubricante WD-40 311Grs / 432CM3',1,'unidades',0,0.00,287.00,NULL,1,0),(450,6,109,'Machimbre Pvc  10mm (5,00 X 0,20 MTS) C/U',1,'unidades',0,0.00,611.00,NULL,1,0),(451,6,110,'Machimbre Pvc  10mm (6,00 X 0,20 MTS) C/U',1,'unidades',0,0.00,647.00,NULL,1,0),(452,6,111,'Mandril c/llave 13mm makita',1,'unidades',0,0.00,272.00,NULL,1,0),(453,6,112,'Mangas para soldar',1,'unidades',0,0.00,1.00,NULL,1,0),(454,6,113,'MANGUERA ALTA PRESION 300 LBS. 10 MM  (Rollo de 25 Mts)',1,'unidades',0,0.00,68.00,NULL,1,0),(455,6,114,'Manguera de Cristal  1/2 \' ',1,'unidades',0,0.00,36.00,NULL,1,0),(456,6,115,'Marcdor para hierro',1,'unidades',0,0.00,304.00,NULL,1,0),(457,6,116,'Matafuego 10Kg ABC C/tarjeta Baliza Soporte Habilitacion',1,'unidades',0,0.00,6318.00,NULL,1,0),(458,6,117,'Matafuego 5Kg ABC C/tarjeta Baliza Soporte Habilitacion',1,'unidades',0,0.00,3906.00,NULL,1,0),(459,6,118,'Mecha de 10 mm Titanio',1,'unidades',0,0.00,476.00,NULL,1,0),(460,6,119,'Mecha de 13 mm Titanio',1,'unidades',0,0.00,969.00,NULL,1,0),(461,6,120,'Mecha de 6,0 mm',1,'unidades',0,0.00,210.00,NULL,1,0),(462,6,121,'Mecha de 6,5 mm',1,'unidades',0,0.00,141.00,NULL,1,0),(463,6,122,'Mecha de 8 mm Titanio (AC/RAP A002)',1,'unidades',0,0.00,202.00,NULL,1,0),(464,6,123,'Mota Pico de Loro Multiple 10\"',1,'unidades',0,0.00,1264.00,NULL,1,0),(465,6,124,'Nivel de Mano Stanley con Iman de 120 CM',1,'unidades',0,0.00,2299.00,NULL,1,0),(466,6,125,'Panel Acustico Basic Conos 50 mm',1,'unidades',0,0.00,139.00,NULL,1,0),(467,6,126,'Panel termico 2380  PUR',1,'unidades',0,0.00,5166.00,NULL,1,0),(468,6,127,'Panel termico 2500   PUR',1,'unidades',0,0.00,5427.00,NULL,1,0),(469,6,128,'Panel termico 5980   PUR',1,'unidades',0,0.00,12807.00,NULL,1,0),(470,6,129,'Panel termico 7980   PUR',1,'unidades',0,0.00,17323.00,NULL,1,0),(471,6,130,'Panel Termico EPS 2,380 x 1,17 en 20kg.de 50 mm, Ambas caras Lisas Prepintadas en Blanco',1,'unidades',0,0.00,7305.86,'2020-03-03 12:44:11',1,0),(472,6,131,'Panel Termico EPS 2,500 x 1,17 en 20kg.de 50 mm, Ambas caras Lisas Prepintadas en Blanco',1,'unidades',0,0.00,7674.23,'2020-03-03 12:44:32',1,0),(473,6,132,'Panel Termico EPS 5,980 x 1,17 en 20kg.de 50 mm, Ambas caras Lisas Prepintadas en Blanco',1,'unidades',0,0.00,18376.75,'2020-03-03 12:44:51',1,0),(474,6,133,'Pasacable de Embutir p/Escritorio 60mm Negro C/Tapa C/Resorte',1,'unidades',0,0.00,14.00,NULL,1,0),(475,6,134,'Pasador 140 mm P/Candado',1,'unidades',0,0.00,96.00,NULL,1,0),(476,6,135,'Pasador de bronce C/traba 8x5cm',1,'unidades',0,0.00,213.00,NULL,1,0),(477,6,136,'Patin fijo sin forrar',1,'unidades',0,0.00,1.00,NULL,1,0),(478,6,137,'Patin Seprador de Alambre CEB-70 (Plasma 80)',1,'unidades',0,0.00,82.00,NULL,1,0),(479,6,138,'Perfil Montante 35mm Durlock',1,'unidades',0,0.00,212.00,NULL,1,0),(480,6,139,'Perfil Solera 35mm P/ Durlock O Knauf Tabiques',1,'unidades',0,0.00,199.65,'2020-01-31 07:21:47',1,0),(481,6,140,'Picaporte doble paleta',1,'unidades',0,0.00,653.40,'2020-02-20 04:11:29',1,0),(482,6,141,'Pilas AAA',1,'unidades',0,0.00,51.00,NULL,1,0),(483,6,142,'Piloto de lluvia',1,'unidades',0,0.00,1.00,NULL,1,0),(484,6,143,'Pinza comun',1,'unidades',0,0.00,738.00,NULL,1,0),(485,6,144,'Pinza de punta media cana 200mm',1,'unidades',0,0.00,749.00,NULL,1,0),(486,6,145,'Piso de Listones WR55 Fortress 3000 residencia (1caja 3,37m2)',1,'unidades',0,0.00,932.00,NULL,1,0),(487,6,146,'Piso Vinilico Simil listones de madera (GEA-1602 / WR 51 Ev) 15,24 x 91,44 cm de 2 mm ** 3,34m2',1,'unidades',0,0.00,4400.00,'2020-01-20 06:29:08',1,0),(488,6,147,'Piso Vinilico XLPU 3720 1.5 mm de espesor 1rollo 55Mts (Cod 0128/0129)',1,'unidades',3,0.00,79860.00,'2020-02-20 05:02:24',1,0),(489,6,148,'Piso Vinilico XLPU Dolomite 3910 w/r2500 1.5 mm de espesor 1rollo 55Mts (Cod 0197/0198)',1,'unidades',0,0.00,51909.00,NULL,1,0),(490,6,149,'pistola desempolvadora p/compresor L200 BEMAR pico corto',1,'unidades',0,0.00,386.00,NULL,1,0),(491,6,150,'Pistones n¼ 5',1,'unidades',0,0.00,1.00,NULL,1,0),(492,6,151,'POMO CERRADURA CON LLAVE HAFELE (911.64.166) ',1,'unidades',0,0.00,1039.00,NULL,1,0),(493,6,152,'Porta Pico 0,9 mm contacto M6 MIG 36   (06 und x paq.)',1,'unidades',0,0.00,44.00,NULL,1,0),(494,6,153,'Precintos NYLON 3,6 x 200 mm NEGROS',1,'unidades',0,0.00,157.00,NULL,1,0),(495,6,154,'Protector Auditivo Copa L-320',1,'unidades',0,0.00,736.00,NULL,1,0),(496,6,155,'Protector Auditivo tapon',1,'unidades',0,0.00,1.00,NULL,1,0),(497,6,156,'Protector Facial Vincha (sin Malla) Marca LIBUS',1,'unidades',0,0.00,793.00,NULL,1,0),(498,6,157,'Protector Mascara de Soldar Transparente 11 x 9 cm',1,'unidades',0,0.00,132.00,NULL,1,0),(499,6,158,'Punta Enchufe 1/4 C/rosca Macho',1,'unidades',0,0.00,45.00,NULL,1,0),(500,6,159,'Punta para pico contacto M6 0,9 mm',1,'unidades',0,0.00,69.00,NULL,1,0),(501,6,160,'Punta para Tester ',1,'unidades',0,0.00,65.00,NULL,1,0),(502,6,161,'Punta Phillips Imantada (PH2x50) BREMEN o superior',1,'unidades',0,0.00,55.00,NULL,1,0),(503,6,162,'Puntas de Trazar',1,'unidades',0,0.00,62.00,NULL,1,0),(504,6,163,'Racord Rosca 1/4 Macho manguera',1,'unidades',0,0.00,22.00,NULL,1,0),(505,6,164,'RemacheAcero/Acero 6.4 - 12 Ciego',1,'unidades',0,0.00,14.00,NULL,1,0),(506,6,165,'Repuesto facial burbuja (plastico trasparente Incoloro)',1,'unidades',0,0.00,1134.00,NULL,1,0),(507,6,166,'Rollo alambre para soldar 0,9 mm',1,'unidades',0,0.00,2340.00,NULL,1,0),(508,6,167,'Ruedas para rodante',1,'unidades',0,0.00,1.00,NULL,1,0),(509,6,168,'Sellador adhesil 11 GRIS (cdo.209381163) + Pico de Aplicaci—n    (01 caja 12 Und)',1,'unidades',0,0.00,907.50,'2020-01-24 03:56:57',1,0),(510,6,169,'Sellador adhesil blanco + Pico de Aplicaci—n   (01 caja 12 Und)',1,'unidades',0,0.00,907.50,'2020-01-24 03:57:09',1,0),(511,6,170,'Sellador adhesil negro  + Pico de Aplicaci—n    (01 caja 12 Und)',1,'unidades',0,0.00,907.50,'2020-01-24 03:57:17',1,0),(512,6,171,'Sensor de movimiento infrarojo 1000w 360¼ p/techo',1,'unidades',0,0.00,902.00,NULL,1,0),(513,6,172,'Servicio de Revision de Extintores PQS 5K + Polvo de Reposicion',1,'unidades',0,0.00,859.00,NULL,1,0),(514,6,173,'Silla plastica negra Mascardi',1,'unidades',0,0.00,920.00,NULL,1,0),(515,6,174,'Soga Elastica c/ ganchos',1,'unidades',0,0.00,1.00,NULL,1,0),(516,6,175,'Sopapa para vidrio',1,'unidades',0,0.00,1.00,NULL,1,0),(517,6,176,'Soporte Copa Dentada (A1) chico',1,'unidades',0,0.00,227.00,NULL,1,0),(518,6,177,'Soporte Copa Dentada (A2) grande',1,'unidades',0,0.00,427.00,NULL,1,0),(519,6,178,'Strech film chico Manual 10 cm de 500Grs. ',1,'unidades',0,0.00,104.00,NULL,1,0),(520,6,179,'Strech Film grande C/Mango 50 cm de 2,5Kg',1,'unidades',0,0.00,109.00,NULL,1,0),(521,6,180,'Tanza para bordeadora 1,5mm',1,'unidades',0,0.00,937.00,NULL,1,0),(522,6,181,'Tobera MIG 36 Conica',1,'unidades',0,0.00,224.00,NULL,1,0),(523,6,182,'Tope de puerta Roscado  goma 30mm ',1,'unidades',0,0.00,38.00,NULL,1,0),(524,6,183,'Tornillo 5/16 x 2\" para Aire con (02) arandelas planas  y tuerca-autofrenante',1,'unidades',0,0.00,9.00,NULL,1,0),(525,6,184,'Tornillo cabeza de tanque 8 x 1/4 punta mecha',1,'unidades',0,0.00,1.00,NULL,1,0),(526,6,185,'Tornillo Cabeza de tanque 8x3/4 punta mecha (T-1 MECHA)',1,'unidades',0,0.00,66.00,NULL,1,0),(527,6,186,'Tornillo Drywall para madera 6 x 1 1/2 (TORNILLO. T-3 AGUJA )',1,'unidades',0,0.00,1.00,NULL,1,0),(528,6,187,'Tornillo Drywall para madera 6 x 2 (TORNILLO. T-4 MADERA) ',1,'unidades',0,0.00,1.00,NULL,1,0),(529,6,188,'Tornillo hexagonal 3/8 punta mecha  14x1   ',1,'unidades',0,0.00,2.00,NULL,1,0),(530,6,189,'Tornillo pan Framing 6 x 7/16 punta mecha',1,'unidades',0,0.00,1.00,NULL,1,0),(531,6,190,'Tornillo para madera 3,5 x 15  ',1,'unidades',0,0.00,1.00,NULL,1,0),(532,6,191,'Tornillo para madera 6 x 1  (TORNILLO. T-2 AGUJA) ',1,'unidades',0,0.00,1.00,NULL,1,0),(533,6,192,'Tornillo para piso 10x1 1/2 T-3 punta mecha con alas  ',1,'unidades',0,0.00,2.00,NULL,1,0),(534,6,193,'Tornillos cabeza de tanque 8 x 1 punta mecha',1,'unidades',0,0.00,1.00,NULL,1,0),(535,6,194,'Tubo Aislante VESPEL CEB-70   (Plasma 80)',1,'unidades',0,0.00,621.00,NULL,1,0),(536,6,195,'Tubo de gas',1,'unidades',0,0.00,1.00,NULL,1,0),(537,6,196,'Tuerca Aire Acondicionado de 1/4',1,'unidades',0,0.00,24.00,NULL,1,0),(538,6,197,'Tuerca autofrenante 1/2 para Aire',1,'unidades',0,0.00,55.00,NULL,1,0),(539,6,198,'Tuerca autofrenante 5/16 para Aire',1,'unidades',0,0.00,2.00,NULL,1,0),(540,6,199,'Tuerca de 1/2',1,'unidades',0,0.00,5.00,NULL,1,0),(541,6,200,'Tuerca de 3/4',1,'unidades',0,0.00,15.00,NULL,1,0),(542,6,201,'Varilla roscada 1/2',1,'unidades',0,0.00,193.00,NULL,1,0),(543,6,202,'Varilla roscada 3/4',1,'unidades',0,0.00,397.00,NULL,1,0),(544,6,203,'Calco Box web',1,'unidades',0,0.00,1.00,NULL,1,0),(545,6,204,'Tornillos Mitto para madera 3 x 16',1,'unidades',0,0.00,1.00,NULL,1,0),(546,6,205,'Bisagra Forj. Amurar 32x32x150',1,'unidades',0,0.00,100.00,NULL,1,0),(547,7,1,'Accesorios 6 set de baño  KIT 1 Estandar *   (LAT.ACC.PI6)',1,'unidades',5,0.00,1779.00,NULL,1,0),(548,7,2,'Buje Reduccion de 3/4 x 1/2 Gal.',1,'unidades',0,0.00,19.00,NULL,1,0),(549,7,3,'Arandela para inodoro',1,'unidades',0,0.00,186.00,NULL,1,0),(550,7,4,'Aro Base posa inodoro',1,'unidades',0,0.00,30.00,NULL,1,0),(551,7,5,'Asiento P/Inodoro Universal Blanco',1,'unidades',0,0.00,671.00,NULL,1,0),(552,7,6,'Bacha vanitory de Marmol sintetico 1 agujero, 85 x 50 x 40cm. Monocomando     Blanco  (VAN.VAN.00000',1,'unidades',5,0.00,5203.00,'2020-02-28 10:44:33',1,0),(553,7,7,'Bacha vanitory de Marmol sintetico 3 agujeros, 85 x 50 x 40cm.    Blanco  (VAN.VAN.0000000)',1,'unidades',5,0.00,5203.00,'2020-02-28 10:48:07',1,0),(554,7,8,'Inodoro Ba–o Quimico Portatil 20lts',1,'unidades',0,0.00,6350.00,'2020-02-28 10:49:01',1,0),(555,7,9,'Barral cortina de ducha de 1,8  (PLO-0088 / 43)',1,'unidades',0,0.00,121.00,NULL,1,0),(556,7,10,'Valbula Temporizadora P/Mingitorio marca:ZEAT con flexible (NO CON CAÑO RIGIDO)',1,'unidades',5,0.00,1726.00,NULL,1,0),(557,7,11,'Ca–o 40 Awaduck',1,'unidades',0,0.00,442.00,'2020-02-28 10:49:46',1,0),(558,7,12,'ca–o corrugado Blanco desagote ',1,'unidades',0,0.00,46.00,NULL,1,0),(559,7,13,'Ca–o rigido 110 Awaduck',1,'unidades',0,0.00,496.00,NULL,1,0),(560,7,14,'Caño rigido 20mm Fusion  (redeco) ',1,'unidades, bolsa de 20und',20,0.00,224.00,NULL,1,0),(561,7,15,'Ca–o rigido 25 Fusion (redeco)',1,'unidades',0,0.00,263.00,NULL,1,0),(562,7,16,'Ca–o rigido 32 Fusion',1,'unidades',0,0.00,429.00,NULL,1,0),(563,7,17,'Ca–o rigido 50 Awaduck',1,'unidades',0,0.00,712.00,NULL,1,0),(564,7,18,'Codo 110 a 45¡ M/H',1,'unidades',0,0.00,137.00,NULL,1,0),(565,7,19,'Codo 110 con 1 acometida Awaduck  (AWA.BOC.2460)',1,'unidades',0,0.00,194.00,NULL,1,0),(566,7,20,'Codo 90¡ 110 H/H Awaduck',1,'unidades',0,0.00,162.00,NULL,1,0),(567,7,21,'Codo 90¡ 110 M/H Awaduck',1,'unidades',0,0.00,135.00,NULL,1,0),(568,7,22,'Codo 90¡  20 con rosca H fusion  (redeco)',1,'unidades',0,0.00,64.00,NULL,1,0),(569,7,23,'Codo 90¡  20 con rosca M fusion (redeco)',1,'unidades',0,0.00,78.00,NULL,1,0),(570,7,24,'Codo 90¡  20 fusion',1,'unidades',0,0.00,11.00,NULL,1,0),(571,7,25,'Codo 90¡  20 M/H fusion           (redeco)',1,'unidades',0,0.00,15.00,'2020-02-28 11:53:27',1,0),(572,7,26,'Codo 90¡  con rosca H  25 X 3/4 fusion  (redeco)',1,'unidades',0,0.00,94.00,NULL,1,0),(573,7,27,'Codo 90¡  con rosca M 25 X 3/4 fusion   (redeco)',1,'unidades',0,0.00,96.00,NULL,1,0),(574,7,28,'Codo 90¡  25 fusion (redeco)',1,'unidades',0,0.00,15.00,NULL,1,0),(575,7,29,'Codo 45¡  40 H/H Awaduck',1,'unidades',0,0.00,24.00,NULL,1,0),(576,7,30,'Codo 45¡  40 M/H Awaduck',1,'unidades',0,0.00,19.00,NULL,1,0),(577,7,31,'Codo 90¡  40 H/H Awaduck',1,'unidades',0,0.00,25.00,NULL,1,0),(578,7,32,'Codo 90¡  40 M/H Awaduck',1,'unidades',0,0.00,20.00,NULL,1,0),(579,7,33,'Codo 45¡  50 H/H Awaduck',1,'unidades',0,0.00,39.00,NULL,1,0),(580,7,34,'Codo 45¡  50 M/H Awaduck ',1,'unidades',0,0.00,27.00,NULL,1,0),(581,7,35,'Codo 90¡  50 H/H Awaduck',1,'unidades',0,0.00,43.00,NULL,1,0),(582,7,36,'Codo 90¡  50 M/H Awaduck',1,'unidades',0,0.00,34.00,NULL,1,0),(583,7,37,'Codo 45¡  63 M/H Awaduck',1,'unidades',0,0.00,44.00,NULL,1,0),(584,7,38,'Codo 90¡  63 H/H Awaduck',1,'unidades',0,0.00,72.00,NULL,1,0),(585,7,39,'Codo 90¡  63 M/H Awaduck',1,'unidades',0,0.00,61.00,NULL,1,0),(586,7,40,'Codo acometida 110 Awaduck  ',1,'unidades',0,0.00,273.00,NULL,1,0),(587,7,41,'Codo Galvanizado  3/4',1,'unidades',0,0.00,55.00,NULL,1,0),(588,7,42,'Codo ppn 2\"',1,'unidades',0,0.00,99.00,NULL,1,0),(589,7,43,'Cortina ducha Plastica (plo-0009 / 88)',1,'unidades',0,0.00,151.00,NULL,1,0),(590,7,44,'Cupla 3/4 ppn',1,'unidades',0,0.00,10.00,NULL,1,0),(591,7,45,'Cupla ppn 1\" 1/2',1,'unidades',0,0.00,41.00,NULL,1,0),(592,7,46,'Cupla ppn 2\"',1,'unidades',0,0.00,67.00,NULL,1,0),(593,7,47,'Desplazador de inodoro',1,'unidades',0,0.00,36.00,NULL,1,0),(594,7,48,'Espejos chicos para ba–o 40 x 60 con marco blanco',1,'unidades',0,0.00,1173.00,NULL,1,0),(595,7,49,'Espejos largos 1,00 x 0,50 mts',1,'unidades',6,0.00,1573.00,'2020-02-28 11:55:47',1,0),(596,7,50,'Flexible 1/2  Amallado de 35cm',1,'unidades',0,0.00,291.00,'2020-02-28 11:56:11',1,0),(597,7,51,'Flexible 3/4  Corrugado',1,'unidades',0,0.00,333.00,NULL,1,0),(598,7,52,'Goma para descarga de inodoro (fuelle)',1,'unidades',0,0.00,35.00,NULL,1,0),(599,7,53,'Grfieria cocina monocomando',1,'unidades',0,0.00,2240.00,NULL,1,0),(600,7,54,'Griferia cocina con mezcladora 3 agujeros',1,'unidades',0,0.00,2226.00,NULL,1,0),(601,7,55,'Griferia ducha (Hydros Viva Plus) ',1,'unidades',3,0.00,2226.00,'2020-02-28 11:56:49',1,0),(602,7,56,'Griferia vanitory monocomando (LUGO Griferia Peirano)',1,'unidades',0,0.00,3413.00,'2020-02-28 11:57:01',1,0),(603,7,57,'Griferia Vanitory triple',1,'unidades',0,0.00,3452.00,'2020-02-28 11:57:17',1,0),(604,7,58,'Inodoro corto P/mochila Superior Colgante (plo-0052/67)',1,'unidades',0,0.00,2837.00,'2020-02-28 11:57:33',1,0),(605,7,59,'Inodoro largo Con Mochila + Asiento Universal + kit de instalacion (*OJO* Sin Fuelle y Base blanca d',1,'unidades',0,0.00,16523.93,'2020-03-03 11:26:53',1,0),(606,7,60,'Llave de paso de 25mm  (redeco)',1,'unidades',0,0.00,439.00,NULL,1,0),(607,7,61,'Lubricante para ca–o (Aereosol) Awaduck',1,'unidades',0,0.00,222.00,NULL,1,0),(608,7,62,'Mesada de acero inoxidable con bacha izquierda',1,'unidades',0,0.00,4926.00,NULL,1,0),(609,7,63,'Mesada de acero inoxidable lisa sin bacha',1,'unidades',0,0.00,2652.00,NULL,1,0),(610,7,64,'Mesada de marmol con 01 bacha izquierda P/Cocina Monocomando 1,020 x 0,60 mts, con Zocalo en 02 cara',1,'unidades',0,0.00,7986.00,'2020-03-03 11:27:24',1,0),(611,7,65,'Mingitorio Marca Ferrum + Kit de Arandela/goma para fijacion',1,'unidades',0,0.00,4951.00,NULL,1,0),(612,7,66,'Mochila de inodoro Blanco (plo-0057)',1,'unidades',0,0.00,3149.00,NULL,1,0),(613,7,67,'Mochila PVC para colgar Blanco (plo-0058)',1,'unidades',0,0.00,2067.00,NULL,1,0),(614,7,68,'Niple 1\" ppn',1,'unidades',0,0.00,113.00,NULL,1,0),(615,7,69,'Niple 3/4 ppn',1,'unidades',0,0.00,17.00,NULL,1,0),(616,7,70,'Niple de 5 u 8 cm Galvanizado 3/4',1,'unidades',0,0.00,24.00,NULL,1,0),(617,7,71,'Niple ppn 1\" 1/2',1,'unidades',0,0.00,55.00,NULL,1,0),(618,7,72,'Niple ppn 2\"',1,'unidades',0,0.00,70.00,NULL,1,0),(619,7,73,'Porta papel Higienico de acero inoxidable',1,'unidades',0,0.00,657.00,NULL,1,0),(620,7,74,'Receptaculo 80x80 cm (Marca Roca modelo Sacha)',1,'unidades',0,0.00,5101.00,NULL,1,0),(621,7,75,'Reduccion 1\" a 1/2 ppn',1,'unidades',0,0.00,9.00,NULL,1,0),(622,7,76,'Reduccion 25 a 20 Fusion  (redeco)',1,'unidades',0,0.00,17.92,'2020-03-03 11:28:27',1,0),(623,7,77,'Reduccion 40 a 20 Fusion',1,'unidades',0,0.00,25.00,NULL,1,0),(624,7,78,'Reduccion 50/40 Awaduck',1,'unidades',0,0.00,34.00,NULL,1,0),(625,7,79,'Reduccion 63/40 Awaduck',1,'unidades',0,0.00,39.00,NULL,1,0),(626,7,80,'Reduccion 63/50 Awaduck',1,'unidades',0,0.00,38.00,NULL,1,0),(627,7,81,'Reduccion ppn 2\" a 1\"',1,'unidades',0,0.00,38.00,NULL,1,0),(628,7,82,'Sellador de Rocas Hidro 3  (H3)  125cc',1,'unidades',0,0.00,219.00,NULL,1,0),(629,7,83,'Sifon Simple RAO',1,'unidades',0,0.00,244.61,'2020-03-03 11:29:23',1,0),(630,7,84,'Sobre paso 20 fusion',1,'unidades',0,0.00,39.00,NULL,1,0),(631,7,85,'Sobre paso 25 fusion',1,'unidades',0,0.00,56.54,'2020-03-03 11:30:56',1,0),(632,7,86,'Sopapa Vertical 40 cromada para ducha (4128 - awaduct)',1,'unidades',0,0.00,738.61,'2020-03-03 11:31:22',1,0),(633,7,87,'Sopapa para vanitory',1,'unidades',0,0.00,90.00,NULL,1,0),(634,7,88,'Soporte cortina de ducha',1,'unidades',0,0.00,12.00,NULL,1,0),(635,7,89,'Tanque de plastico de agua 500 Lts FLAP',1,'unidades',0,0.00,4458.00,NULL,1,0),(636,7,90,'Tapon 2\" H PPN',1,'unidades',0,0.00,25.00,NULL,1,0),(637,7,91,'Tapon 20 Fusion H',1,'unidades',0,0.00,7.00,NULL,1,0),(638,7,92,'Tapon 3/4  ppn M',1,'unidades',0,0.00,5.00,NULL,1,0),(639,7,93,'Tap—n 63 Awaduck H',1,'unidades',0,0.00,57.00,NULL,1,0),(640,7,94,'Tapon Galvanizado H',1,'unidades',0,0.00,37.00,NULL,1,0),(641,7,95,'Tapon Galvanizado M',1,'unidades',0,0.00,36.00,NULL,1,0),(642,7,96,'Tapon H ppn 20',1,'unidades',0,0.00,7.00,NULL,1,0),(643,7,97,'Tapon M ppn 20',1,'unidades',0,0.00,7.00,NULL,1,0),(644,7,98,'Tapon M ppn 25',1,'unidades',0,0.00,5.00,NULL,1,0),(645,7,99,'Tee 1/2 ppn',1,'unidades',0,0.00,15.00,NULL,1,0),(646,7,100,'Tee 110 a 45¡ M/H Awaduck',1,'unidades',0,0.00,265.00,NULL,1,0),(647,7,101,'Tee 110 a 90¡ M/H Awaduck',1,'unidades',0,0.00,212.00,NULL,1,0),(648,7,102,'Tee 25 con rosca H Fusion 3/4  (redeco)',1,'unidades',0,0.00,115.00,NULL,1,0),(649,7,103,'Tee 25 fusion  (redeco)',1,'unidades',0,0.00,25.00,NULL,1,0),(650,7,104,'Tee 3/4 ppn',1,'unidades',0,0.00,21.00,NULL,1,0),(651,7,105,'Tee 32 Fusion',1,'unidades',0,0.00,32.00,NULL,1,0),(652,7,106,'Tee 40 H/H Awaduck ',1,'unidades',0,0.00,45.00,NULL,1,0),(653,7,107,'Tee 40 M/H Awaduck',1,'unidades',0,0.00,60.00,'2020-03-03 11:35:04',1,0),(654,7,108,'Tee 50 H/H Awaduck',1,'unidades',0,0.00,57.00,NULL,1,0),(655,7,109,'Tee 50 M/H Awaduck',1,'unidades',0,0.00,60.00,'2020-03-03 11:35:15',1,0),(656,7,110,'Tee de 20 Fusion  ',1,'unidades',0,0.00,12.00,NULL,1,0),(657,7,111,'Tee de 20 con rosca H   ',1,'unidades',0,0.00,82.00,NULL,1,0),(658,7,112,'Tee Galvanizada (25) 3/4',1,'unidades',0,0.00,78.00,NULL,1,0),(659,7,113,'Teflon Alta Densidad 3/4 x 40 (Latyn Plast)',1,'unidades',0,0.00,201.00,NULL,1,0),(660,7,114,'Termotanque electrico 40 lts. Con resistencia frontal',1,'unidades',0,0.00,8686.00,NULL,1,0),(661,7,115,'Termotanque electrico 65 lts. Con resistencia frontal',1,'unidades',0,0.00,9447.00,NULL,1,0),(662,7,116,'Termotanque electrico 120 lts. Con resistencia frontal',1,'unidades',0,0.00,17048.00,NULL,1,0),(663,7,117,'Tornillo para tapa + tuerca de 80mm plastico',1,'unidades',0,0.00,55.00,NULL,1,0),(664,7,118,'Tubo 20 con rosca M fusion',1,'unidades',0,0.00,95.53,'2020-03-03 11:36:23',1,0),(665,7,119,'Tubo de 20 con rosca H',1,'unidades',0,0.00,56.00,NULL,1,0),(666,7,120,'Codo de 25 con rosca H de 1/2',1,'unidades',0,0.00,66.00,NULL,1,0),(667,7,121,'Tubo de 25 con rosca M de 3/4',1,'unidades',0,0.00,77.00,NULL,1,0),(668,7,122,'Union 110 Awaduck',1,'unidades',0,0.00,129.00,NULL,1,0),(669,7,123,'Reduccion de 1\'\' 1/2 a 1 \'\'',1,'unidades',0,0.00,19.00,NULL,1,0),(670,7,124,'Union 32 Fusion',1,'unidades',0,0.00,15.00,NULL,1,0),(671,7,125,'Union 40 Awaduck',1,'unidades',0,0.00,30.00,NULL,1,0),(672,7,126,'Union 50 Awaduck',1,'unidades',0,0.00,44.00,NULL,1,0),(673,7,127,'Union 63 Awaduck',1,'unidades',0,0.00,58.00,NULL,1,0),(674,7,128,'Union de 20 fusion (redeco)',1,'unidades',0,0.00,7.00,NULL,1,0),(675,7,129,'Union de 25 Fusion (redeco)',1,'unidades',0,0.00,15.00,'2020-03-03 11:37:35',1,0),(676,7,130,'Union doble 1\" ppn',1,'unidades',0,0.00,65.00,NULL,1,0),(677,7,131,'Union doble 1/2 ppn',1,'unidades',0,0.00,29.00,NULL,1,0),(678,7,132,'Union Doble 25 Fusion',1,'unidades',0,0.00,61.00,NULL,1,0),(679,7,133,'Entre rosca c/tuerca Galvanizada 3/4 M/M',1,'unidades',0,0.00,48.00,NULL,1,0),(680,7,134,'Vanitory con pie Blanco (Juego completo)',1,'unidades',0,0.00,1715.00,NULL,1,0),(681,7,135,'Mueble Vanitory , Monocomando',1,'unidades',0,0.00,4049.00,NULL,1,0),(682,7,136,'Tapon 63 Awaduck M',1,'unidades',0,0.00,31.00,NULL,1,0),(683,7,137,'Tubo de 25 con rosca H',1,'unidades',0,0.00,77.00,NULL,1,0),(684,7,138,'Llave de paso de 32 fusion',1,'unidades',0,0.00,360.00,NULL,1,0),(685,7,139,'Reduccion de 32 a 25 fusion',1,'unidades',0,0.00,20.00,NULL,1,0),(686,7,140,'Tee fusion 25 con rosca  H de 1/2\"',1,'unidades',0,0.00,91.00,NULL,1,0),(687,7,141,'Reduccion de 3/4 a 1/2 PPN',1,'unidades',0,0.00,8.00,NULL,1,0),(688,7,142,'Mesada de Marmol GRIS',1,'unidades',0,0.00,1819.00,NULL,1,0),(689,7,143,'Acople rapido M 3/4 PPN',1,'unidades',0,0.00,80.00,NULL,1,0),(690,7,144,'BOMBA DE 1/2HP',1,'unidades',0,0.00,2368.00,NULL,1,0),(691,7,145,'PROTECTOR DE MARCHA',1,'unidades',0,0.00,2298.00,'2020-03-03 11:39:14',1,0),(692,7,146,'Mesada de Marmol p/ba–o con bacha izq. 100 x 40 cm.',1,'unidades',0,0.00,6500.00,'2020-03-03 11:39:27',1,0),(693,7,147,'PRESURIZADOR CONTROL DE PRESION AUT. P/AGUA',1,'unidades',0,0.00,6800.00,'2020-03-03 11:40:10',1,0),(694,7,148,'Tee Bronce 1 x 1/2',1,'unidades',0,0.00,180.00,NULL,1,0),(695,7,149,'Buje Reduccion Bronce 3/8 x 1/4',1,'unidades',0,0.00,41.00,'2020-02-28 10:42:18',1,0),(696,7,150,'Buje Reduccion Bronce 1/2 x 3/8 x 1/4',1,'unidades',0,0.00,65.00,'2020-02-28 10:42:53',1,0),(697,7,151,'Rosca con tuerca Bonce 1\'\'',1,'unidades',0,0.00,70.00,NULL,1,0),(698,7,152,'Valvula Retencion Bronce 3/4',1,'unidades',0,0.00,213.00,NULL,1,0),(699,7,153,'Rosca con tuerca Bronce 3/4',1,'unidades',0,0.00,46.00,NULL,1,0),(700,7,154,'Bidematic',1,'unidades',0,0.00,1491.00,NULL,1,0),(701,7,155,'Jabonera Piazza ',1,'unidades',0,0.00,329.00,NULL,1,0),(702,7,156,'Reduccion de 32 a 20',1,'unidades',0,0.00,21.00,NULL,1,0),(703,7,157,'Reduccion de 3/4 a 1\" ppn',1,'unidades',0,0.00,15.00,NULL,1,0),(704,7,158,'Reduccion de 1\" a 3/4 ppn',1,'unidades',0,0.00,7.00,NULL,1,0),(705,7,159,'Sopapa para bacha de cocina grande',1,'unidades',0,0.00,90.00,NULL,1,0),(706,7,160,'Bidet Ferrum Blanco Monocomando',1,'unidades',0,0.00,2064.00,NULL,1,0),(707,7,161,'Reduccion de 1\" a 3/4 bronce',1,'unidades',0,0.00,52.00,NULL,1,0),(708,7,162,'Mesada de Marmol Bacha Sencilla Izquierda de cocina monocomando 1,05 x 0,60 mts con Zocalo en 2 cara',1,'unidades',0,0.00,10890.00,NULL,1,0),(709,7,163,'Mesada de Marmol Bacha Sencilla Derecha monocomando. 1,60 x 0,80 mts con Zocalo en 2 caras cortas y ',1,'unidades',0,0.00,16638.00,NULL,1,0),(710,7,164,'Buje Reduccion Mh 110 X 40 Awaduct',1,'unidades',0,0.00,78.00,NULL,1,0),(711,7,165,'MINGITORIO de 150 X 20 X 50 CM ACERO INOXIDABLE ',1,'unidades',0,0.00,18102.00,NULL,1,0),(712,7,166,'Dispensador de Jabon Liquido (Blanco)',1,'unidades',0,0.00,306.00,NULL,1,0),(713,7,167,'Mesada de Marmol con 2 Bacha Redondas centradas p/ba–o Monocomando 1,20 x 0,45 mts con Zocalo en 2 c',1,'unidades',0,0.00,7018.00,NULL,1,0),(714,7,168,'Mesada de Marmol con 2 Bacha Redonda p/ba–o Monocomando 1,20 x 0,45 mts con Zocalo en 1 caras cortas',1,'unidades',0,0.00,7018.00,NULL,1,0),(715,7,169,'Dispensador de Papel (Toallas Desechables) (Blanco)',1,'unidades',0,0.00,306.00,NULL,1,0),(716,7,170,'Aromatizador Dosificado Analogico/Automatico c/baterias',1,'unidades',0,0.00,477.00,NULL,1,0),(717,7,171,'reduccion de 3/4 a 1/2 galvanizado',1,'unidades',0,0.00,30.00,'2020-03-03 11:41:51',1,0),(718,7,172,'Acople rapido M 3/4 galvanizado',1,'unidades',0,0.00,250.00,'2020-03-03 11:42:33',1,0),(719,7,173,'Mesada de Marmol Bacha Doble Cocina a la derecha Monocomando 2,00 x 0,45 mts con Zocalo en 2 caras c',1,'unidades',0,0.00,11616.00,NULL,1,0),(720,7,174,'Ferrum Lavatorio + Kit de Instalcion + Griferia Monocomndo + Columna (blanco)',1,'unidades',0,0.00,5155.00,NULL,1,0),(721,7,175,'Cesto Papelero Plstico Blanco de 44Lts',1,'unidades',0,0.00,680.00,NULL,1,0),(722,7,176,'Mesada de Marmol con 3 Bacha Redondas centradas p/ba–o Monocomando 1,60 x 0,50 mts con Zocalo en 2 c',1,'unidades',0,0.00,10406.00,NULL,1,0),(723,7,177,'Box de Ducha (receptaculo de 80x80 con vidrios esmerilados)',1,'unidades',0,0.00,9801.00,NULL,1,0),(724,7,178,'Termotanque electrico 80 lts. Con resistencia frontal',1,'unidades',0,0.00,7381.00,NULL,1,0),(725,7,179,'Termotanque electrico 95 lts. Con resistencia frontal',1,'unidades',0,0.00,11830.00,NULL,1,0),(726,7,180,'Termotanque electrico 45 lts. Con resistencia frontal',1,'unidades',0,0.00,7299.00,NULL,1,0),(727,7,181,'Mesada de Marmol con 1 Bacha Redondas centradas Monocomando P/ba–o  0,78 x 0,45 mts con Zocalo en 2 ',1,'unidades',0,0.00,3993.00,NULL,1,0),(728,7,182,'Termotanque Electrico de 53 Lts, con resistencia frontal',1,'unidades',0,0.00,9167.00,NULL,1,0),(729,7,183,'Bidet Ferrum Blanco 3 agujeros',1,'unidades',0,0.00,3300.00,'2020-03-03 12:04:13',1,0),(730,7,184,'Termotanque Electrico de 53 Lts, con resistencia frontal',1,'unidades',0,0.00,24200.00,'2020-03-03 12:06:05',1,0),(731,7,185,'Tubo de 25 con rosca H de 3/4 Fusion (redeco)',1,'unidades',0,0.00,73.21,'2020-03-03 12:50:41',1,0),(732,8,1,'Neumatico 175/70 R14',1,'unidades',0,0.00,2662.00,NULL,1,0),(733,8,2,'Neumatico 245/70 R17,5',1,'unidades',0,1.00,16698.00,NULL,1,0),(734,8,3,'Neumatico 195/70 R15c 104/102R',1,'unidades',0,0.00,4160.00,NULL,1,0),(735,8,4,'Neumatico dunlop 275/80 R22.5',1,'unidades',0,0.00,19965.00,NULL,1,0),(736,8,5,'Neumatico Delantero Michelin 275/80 R22,5',1,'unidades',0,0.00,27830.00,NULL,1,0),(737,8,6,'alineacion cubiertas',1,'unidades',0,0.00,1210.00,NULL,1,0),(738,8,7,'alineacion cubiertas',1,'unidades',0,0.00,351.00,NULL,1,0),(739,8,8,'neumatico 295/80 R22,5  goodyear K MAX D traccion',1,'unidades',0,0.00,28562.00,NULL,1,0),(740,8,9,'Servicio de Vehiculo',1,'unidades',0,0.00,0.00,NULL,1,0),(741,8,10,'Liquido Refrigerante',1,'unidades',0,0.00,0.00,NULL,1,0),(742,8,11,'Grasa',1,'unidades',0,0.00,0.00,NULL,1,0),(743,8,12,'Aceite p/motor',1,'unidades',0,0.00,0.00,NULL,1,0),(744,8,13,'Aceite Hidraulico',1,'unidades',0,0.00,0.00,NULL,1,0),(745,8,14,'Cepillo Limpia Parabrisas',1,'unidades',0,0.00,0.00,NULL,1,0),(746,9,1,'Contenedor Maritimo de 20\" (6,00 x 2,50 mts) Sin Nacionalizar (usado)',1,'unidades',0,0.00,2662.00,NULL,1,0),(747,9,2,'Contenedor Maritimo de 20\" (6,00 x 2,50 mts) Nacionalizado',1,'unidades',0,0.00,3328.00,NULL,1,0),(748,9,3,'Contenedor Maritimo de 20\" (6,00 x 2,50 mts) Nacionalizado (nuevo)',1,'unidades',0,0.00,4356.00,NULL,1,0),(749,9,4,'Contenedor Maritimo de 40\" (12,00 x 2,50 mts) Sin Nacionalizar (usado)',1,'unidades',0,0.00,3328.00,NULL,1,0),(750,9,5,'Contenedor Maritimo de 40\" (12,00 x 2,50 mts) Nacionalizado',1,'unidades',0,0.00,3993.00,NULL,1,0),(751,9,6,'Contenedor Maritimo de 40\" (12,00 x 2,50 mts) Nacionalizado (nuevo)',1,'unidades',0,0.00,6897.00,NULL,1,0),(752,9,7,'Traslado del Contenedor a Sede BoxRental BsAs',1,'unidades',0,0.00,21982.00,NULL,1,0),(753,9,8,'Alquiler Grua para contenedor 40\" (12.00 x 2.50 mts)',1,'unidades',0,0.00,18150.00,NULL,1,0),(754,10,1,'Aguarras         18 lts',1,'unidades',0,0.00,2574.52,'2020-02-20 04:15:48',1,0),(755,10,2,'Cinta Obra para pintor Ancha Azul doble AA 48mm x 40m (no desti–e)',1,'unidades',0,0.00,196.00,NULL,1,0),(756,10,3,'Filtro para mascara de pintar ',1,'unidades',0,0.00,777.00,NULL,1,0),(757,10,4,'Filtro para colar pintura (filpint 100 und x caja)',1,'unidades',0,0.00,99.32,'2020-02-20 04:18:44',1,0),(758,10,5,'Probase Galvite Hierro / chapacril (4 Lts)',1,'unidades',0,0.00,1888.00,NULL,1,0),(759,10,6,'Guantes goma pintor (MAPA) Talla: 10',1,'unidades',0,0.00,157.00,NULL,1,0),(760,10,7,'Lija 180 al agua',1,'unidades',0,0.00,24.00,NULL,1,0),(761,10,8,'Masilla Blanca ( Lata 4 KG) con endurecedor ',1,'unidades',0,0.00,821.25,'2020-01-31 09:40:20',1,0),(762,10,9,'Pincel N¡ 12',1,'unidades',0,0.00,78.00,NULL,1,0),(763,10,10,'Pincel N¡ 15',1,'unidades',0,0.00,77.00,NULL,1,0),(764,10,11,'Pincel N¡ 20',1,'unidades',0,0.00,81.14,'2020-01-24 04:00:27',1,0),(765,10,12,'Pintura Antioxido ferrobec 4 lts.',1,'unidades',0,0.00,2028.68,'2020-02-20 04:18:16',1,0),(766,10,13,'Pintura Blanco Panel   Kem Glo Esm 4055     (4Lts)',1,'unidades',0,0.00,1862.00,NULL,1,0),(767,10,14,'Pintura Verde Box       Kem Glo Esm 4054     (4Lts)',1,'unidades',0,0.00,2413.00,NULL,1,0),(768,10,15,'Rodillo de goma espuma',1,'unidades',0,0.00,22.00,NULL,1,0),(769,10,16,'Rodillo de lana 11 cm epoxi           ',1,'unidades',0,0.00,56.00,NULL,1,0),(770,10,17,'Rodillo de lana grande x 22cm ',1,'unidades',0,0.00,184.00,NULL,1,0),(771,10,18,'Rodillo espuma de 10 cm',1,'unidades',0,0.00,24.00,'2020-01-24 04:01:48',1,0),(772,10,19,'Rodillo espuma de 3 cm satin fish   ',1,'unidades',0,0.00,91.00,'2020-01-31 09:40:47',1,0),(773,10,20,'Thinner              18 lts',1,'unidades',0,0.00,2462.54,'2020-01-24 04:04:07',1,0),(774,10,21,'Pintura asf‡ltica 18 lt.  (1 x cada pa-0051)',1,'unidades',0,0.00,2257.00,NULL,1,0),(775,10,22,'Lija al agua 500',1,'unidades',0,0.00,30.00,NULL,1,0),(776,10,23,'Mascarillas de Proteccion   (Barbijos)',1,'unidades',0,0.00,29.00,NULL,1,0),(777,10,24,'Pintura Negra mate 4 Lt.',1,'unidades',0,0.00,1626.00,NULL,1,0),(778,10,25,'Pintura Naranja 4 Lt.',1,'unidades',0,0.00,760.00,NULL,1,0),(779,10,26,'Repuesto rodillo sin mango 3\" Satin Finish',1,'unidades',0,0.00,99.00,NULL,1,0),(780,10,27,'Espatula para masilla CABO LARGO 120MM',1,'unidades',0,0.00,356.00,NULL,1,0),(781,10,28,'(EXPRO-azul) Pintura  KEN GLO Color RAL 5025',1,'unidades',0,0.00,2099.00,NULL,1,0),(782,10,29,'Traje de Pintura XXL    (Mameluco Descartable) ',1,'unidades',0,0.00,388.00,NULL,1,0),(783,10,30,'Oring N 204, para maquina de pintar',1,'unidades',0,0.00,6.00,NULL,1,0),(784,10,31,'Kit de Limpieza Maquina de Pintar',1,'unidades',0,0.00,161.00,NULL,1,0),(785,10,32,'Pintura VITROSPRAY negro (4Lts) - CPV0402',1,'unidades',0,0.00,2016.00,'2020-01-20 04:35:04',1,0),(786,10,33,'Pintura VITROSPRAY bermellon **Rojo**   (4Lts) - CPV0406',1,'unidades',0,0.00,2191.00,NULL,1,0),(787,10,34,'Pintura (Gris) Ferrobet Duo Forjado Color Hierro Antiguo    4 Lts',1,'unidades',0,0.00,3061.00,NULL,1,0),(788,10,35,'(BAKER-azul) Pintura   Kem Glo PANTONE 19-4045 TCX',1,'unidades',0,0.00,2212.00,NULL,1,0),(789,10,36,'Lija para Madera 180',1,'unidades',0,0.00,22.00,NULL,1,0),(790,10,37,'(MASUR-GRIS) Pintura Kem Glob Esm 6025 (serious Gray)   4 Lts',1,'unidades',0,0.00,1976.00,NULL,1,0),(791,10,38,'Pintura Gris Espacial (1281681) SINTEPLAST    4 LTS',1,'unidades',0,0.00,1781.00,NULL,1,0),(792,10,39,'Pintura Verde Metalizado Box Rental',1,'unidades',0,0.00,0.00,NULL,1,0),(793,10,40,'Pintura BLANCO BRILLANTE (SW7006 EXTRA WHITE) - SRT',1,'unidades',0,0.00,2164.11,'2020-01-24 04:07:01',1,0),(794,10,41,'Pintura GRIS BRILLANTE (SW7075 WEB GRAY) - SRT',1,'unidades',0,0.00,0.00,NULL,1,0),(795,11,1,'Ventana 850 x 900 cm Abatible/Rebatible blanca 90¡ Vidrio Templado',1,'unidades',0,0.00,3025.00,NULL,1,0),(796,11,2,'Ventana 100 x 85 cm angulo a 90¡ blanco pa–o fijo Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(797,11,3,'Ventana 100 x 90 cm corrediza angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(798,11,4,'Ventana 100 x 90 cm guillotina con mosquitero angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(799,11,5,'Ventana 100 x 90 cm levadiza a 90¡ blanco Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(800,11,6,'Ventana 100 x 90 cm pa–o fijo angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,3146.00,NULL,1,0),(801,11,7,'Ventana 115 x 90 cm pa–o fijo a 90¡ blanco Vidrio Templado',1,'unidades',0,0.00,4309.00,NULL,1,0),(802,11,8,'Ventana 120 x 30 cm angulo curvo negro corrediza Vidrio Templado',1,'unidades',0,0.00,2904.00,NULL,1,0),(803,11,9,'Ventana 130 x 90 cm pa–o fijo a 90¡ blanco Vidrio Templado',1,'unidades',0,4.90,5470.00,NULL,1,0),(804,11,10,'Ventana 35 x 60 cm pa–o fijo a 90¡ blanco Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(805,11,11,'Ventana 40 x 30 cm corrediza a 90¡ blanco con Mosquitero Vidrio Templado',1,'unidades',0,0.00,1815.00,NULL,1,0),(806,11,12,'Ventana 40 x 30 cm corrediza angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(807,11,13,'Ventana 50 x 120 cm angulo curvo negro corrediza Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(808,11,14,'Ventana 50 x 90 cm guillotina con mosquitero angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(809,11,15,'Ventana 60 x 100 cm angulo a 90¡ blanco pa–o fijo Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(810,11,16,'Ventana 60 x 90 cm guillotina sin mosquitero angulo curvo negro Vidrio Templado',1,'unidades',0,0.00,3150.00,'2020-01-20 15:13:38',1,0),(811,11,17,'Ventana 90 x 1.20 cm negra 90¡ elevadiza Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(812,11,18,'Ventana 1,50 x 0,90 pa–o fijo a 90¼ Blanca Vidrio Templado',1,'unidades',0,0.00,3327.00,NULL,1,0),(813,11,19,'Mosquitero para ventana de 0,85 x 0,90 mts. Con imanes y bisagras',1,'unidades',0,0.00,1.00,NULL,1,0),(814,11,20,'Rejilla Inyeccion con Pal. 20x20',1,'unidades',0,0.00,485.00,NULL,1,0),(815,11,21,'Ventana 150 x 75 cm pa–o fijo a 90¡ blanco Vidrio Templado',1,'unidades',0,0.00,3872.00,NULL,1,0),(816,11,22,'Ventana 120 x 800 cm Proyectante con Vidrio Laminado Seguridad 3+3, linea herrero',1,'unidades',0,0.00,5990.00,NULL,1,0),(817,11,23,'Ventana 115 x 90 cm Guillotina fijo a 90¡ blanco Vidrio Templado',1,'unidades',0,0.00,3449.00,NULL,1,0),(818,11,24,'Ventana 130 x 90 cm corrediza, vidrio laminado 3+3, linea herrero',1,'unidades',0,0.00,6534.00,NULL,1,0),(819,11,25,'Ventana 120 x 90 cm corrediza, vidrio laminado 3+3, linea herrero/modena',1,'unidades',0,0.00,13915.00,'2020-01-31 07:33:06',1,0),(820,11,26,'Ventana 60 x 90 cm angulo a 90¡ blanco guillotina sin mosquitero Vidrio Templado',1,'unidades',0,0.00,2541.00,NULL,1,0),(821,11,27,'Ventana 50 x 90 cm angulo a 90¡ blanco guillotina con mosquitero Vidrio Templado',1,'unidades',0,0.00,1.00,NULL,1,0),(822,11,28,'Ventana 100 x 90 cm angulo a 90¼ blanco pa–o fijo  Vidrio Templado',1,'unidades',0,0.00,6897.00,NULL,1,0),(823,11,29,'Ventana 1200 x 800 cm corrediza, vidrio laminado 3+3, linea modena',1,'unidades',0,0.00,1513.00,NULL,1,0),(824,11,30,'Ventana 500 x 300 cm pa–o fijo, vidrio laminado 3+3, linea modena',1,'unidades',0,0.00,4114.00,NULL,1,0),(825,11,31,'Ventana 1200 x 1000 cm pa–o fijo, vidrio laminado 3+3, linea modena',1,'unidades',0,0.00,0.00,NULL,1,0),(826,12,1,'Hidromasaje Jacuzzi Esquinero 130 X 130 Acr’lico 8 Jets',1,'unidades',0,0.00,52030.00,NULL,1,0),(827,13,1,'Secador De Piso de 100cm',1,'unidades',0,0.00,696.00,NULL,1,0),(828,13,2,'Escobillon Mediano',1,'unidades',0,0.00,785.00,NULL,1,0),(829,13,3,'Escobillon de Cerdas plasticas 60cm c/cabo Industrial ',1,'unidades',0,0.00,788.00,NULL,1,0),(830,13,4,'Trapo De Piso Gris Economico',1,'unidades',0,0.00,16.00,NULL,1,0),(831,13,5,'Franela Profesional Chica 40 X 60 Cm',1,'unidades',0,0.00,85.00,NULL,1,0),(832,13,6,'Lustramuebles En Aerosol 360cc',1,'unidades',0,0.00,570.00,NULL,1,0),(833,13,7,'Desodorante Piso Liquido X 5 Lts',1,'unidades',0,0.00,355.00,NULL,1,0),(834,13,8,'Lavandina en Bid—n 5 Lt. ',1,'unidades',0,0.00,98.00,NULL,1,0),(835,13,9,'Detergente bidon 5lt',1,'unidades',0,0.00,295.00,NULL,1,0),(836,13,10,'Bols—n Econ—mico Papel HigiŽnico 30 Rollos Aprox 60 Metros',1,'unidades',0,0.00,393.00,NULL,1,0),(837,13,11,'Balde Plastico De Agua Para Limpieza 10 Litros',1,'unidades',0,0.00,145.00,NULL,1,0),(838,13,12,'Liquido Limpia Vidrios Productos De Limpieza Sueltos',1,'unidades',0,0.00,79.00,NULL,1,0),(839,13,13,'Fragancia Desodorante Perfume Aerosol P/ambient',1,'unidades',0,0.00,109.00,NULL,1,0),(840,13,14,'Fibro Esponja Econ—mica',1,'unidades',0,0.00,12.00,NULL,1,0),(841,13,15,'Esponja Lavado Microfibra Autos Oregon Limpieza Vehicular',1,'unidades',0,0.00,215.00,NULL,1,0),(842,13,16,'Trapo Rejilla Pabilo Super Economica    30 x 30 cm',1,'unidades',0,0.00,13.00,NULL,1,0),(843,13,17,'Rejilla Doble Grande Lava Auto    46 x 63 cm',1,'unidades',0,0.00,745.00,NULL,1,0),(844,13,18,'Pa–o Amarillo Multiusos Tipo Ballerina 40 X 40 Cm.',1,'unidades',0,0.00,22.00,NULL,1,0),(845,13,19,'Liquido Lava Parabrisa 5 Litros',1,'unidades',0,0.00,166.00,NULL,1,0),(846,13,20,'Desengrasante Exterior 4Lts P/Autos',1,'unidades',0,0.00,1709.00,NULL,1,0),(847,13,21,'Silicona Perfumada Para Plasticos Interiores   5 Lts',1,'unidades',0,0.00,956.00,NULL,1,0),(848,13,22,'Revividor De Negro Revigal 5 Lts Neumaticos Y Alfombras',1,'unidades',0,0.00,787.00,NULL,1,0),(849,13,23,'Servilletas Papel 33x33 Caja 1000',1,'unidades',0,0.00,310.00,NULL,1,0),(850,14,1,'Recarga de Cilindro',1,'unidades',0,0.00,605.00,NULL,1,0),(851,14,2,'Alquiler Bombona de Oxigeno + Kit',1,'unidades',0,0.00,2420.00,NULL,1,0),(852,14,3,'Servicio de ploteo a modulos 6 mts (sencillo)',1,'unidades',0,0.00,45000.00,'2020-03-11 09:21:06',1,0),(853,14,4,'Instalacion de Pisos Vinilico',1,'unidades',0,0.00,266.00,NULL,1,0),(854,14,5,'Ploteo de modulo Completo  6,00 x 2,50',1,'unidades',0,0.00,80000.00,'2020-03-11 09:20:54',1,0),(855,14,6,'Operario P/Montaje',1,'unidades',0,0.00,3267.00,NULL,1,0),(856,14,7,'Nafta',1,'unidades',0,0.00,61.00,NULL,1,0),(1024,10,42,'cetol para dekc color teca (4Lts)',1,'litros',0,0.00,3448.50,'2020-02-20 04:12:45',1,0),(1025,12,2,'Reparacion de carpineria modulo actc',1,'unidades',1,0.00,17680.00,'2020-01-20 15:13:10',1,0),(1026,7,186,'Mesada de marmol con 4 bachas redondas centradas p/griferia monocomando p/baño 2400 x 450mm con zoca',1,'unidad',0,0.00,20328.00,'2020-03-03 12:50:55',1,0),(1027,12,3,'fabricacion 3 operarios 3 dias',1,'unidad ',1,0.00,20000.00,'2020-01-20 15:19:41',1,0),(1028,6,206,'Cerradura Kallay 2006 Para Puerta. Línea Módena.',1,'unidad',0,0.00,3500.00,'2020-01-20 15:44:59',1,0),(1029,6,207,'Picaporte Para Puerta De Aluminio H50 Linea Modena',1,'unidad',0,0.00,1000.00,'2020-01-20 15:46:50',1,0),(1030,6,208,'Placa Cementicia Siding Cedar 6 Mm Superboard 3,60x0,2 Textura Simil Madera',1,'unidad',0,0.00,450.00,'2020-01-20 15:49:13',1,0),(1031,5,44,'MOTA MAZA ALBAÑIL 1000GRS C/FIBRA',1,'UNIDAD',0,0.00,996.03,'2020-01-24 03:58:59',1,0),(1032,5,45,'DW331K - DEWALT SIERRA CALADORA 7000W KIT PENDULAR',1,'UNIDAD',0,0.00,21069.26,'2020-01-27 11:40:11',1,0),(1033,5,46,'SXH1530 - TERMOFUSORA STANLEY 1500W X6ACC',1,'UNIDAD',0,0.00,6414.44,'2020-01-27 11:40:39',1,0),(1034,5,47,'DWE4214 - DEWALT AMOLADORA 4 1/2\" 1200W',0,'UNIDAD',0,0.00,11385.95,'2020-01-27 11:41:28',1,0),(1035,15,1,'DIC-VALOR HORAS X 4 OPERARIOS',0,'UNIDAD ',0,999999.00,120.00,'2020-01-30 05:46:04',1,0),(1036,15,2,'DIC-ELECTRICIDAD/HORA',0,'UNIDAD',0,999999.00,21.00,'2020-01-30 05:46:17',1,0),(1037,15,3,'DIC-DESGASTEMAQUINAS/HERRAMIENTAS X HORAS',0,'UNIDD',0,999999.00,25.00,'2020-01-30 05:46:27',1,0),(1038,15,4,'DIC-ALQUILER DE GALPON',0,'UNIDAD',0,999999.00,248.00,'2020-01-30 05:46:39',1,0),(1039,15,5,'DIC-USO DE HIDROGRUA',0,'UNIDAD',0,999999.00,1500.00,'2020-01-30 05:46:54',1,0),(1040,15,6,'DIC-USO DEL CLARK',0,'',0,999999.00,1500.00,'2020-01-30 05:47:19',1,0),(1041,15,7,'DIC-VALOR HORA HOMBRE PRODUCCION',0,'',0,999999.00,83.13,'2020-01-30 05:48:16',1,0),(1042,15,8,'DIC-VALOR HORA HOMBRE COMPRAS',0,'',0,999999.00,83.13,'2020-01-30 05:48:32',1,0),(1043,15,9,'DIC-UNIFORME PERSONAL OPERARIO',0,'',0,999999.00,15.00,'2020-01-30 05:48:46',1,0),(1044,15,10,'IND-CARGA SOCIALES/IPROT/INTERNET/UOCRA/POSC WEB/GPS/HORA',0,'',0,999999.00,168.33,'2020-01-30 05:56:28',1,0),(1045,0,0,'IND-HORA HOMBRE ADMINISTRATIVO',1,'',0,0.00,0.00,NULL,1,0),(1046,15,11,'IND-USO DE CAMIONETA/HORA',0,'',0,999999.00,6.25,'2020-01-30 05:56:48',1,0),(1047,15,12,'HORA HOMBRE ADMINISTRATIVO',0,'UNIDAD',0,999999.00,83.30,'2020-01-30 05:58:05',1,0),(1048,6,209,'Pvc Revestimiento Machimbre 200x10mm Blanco Mate M2',1,'M2',0,0.00,1089.00,'2020-01-31 07:08:49',1,0),(1049,6,210,'Aislante 5mm doble capa de aluminio X 20 M2',1,'m2',0,0.00,2988.70,'2020-01-31 07:07:26',1,0),(1050,6,211,'Aislante 10mm doble capa de aluminio X 20M2',1,'m2',0,0.00,3291.20,'2020-01-31 07:07:45',1,0),(1051,1,133,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 18W ** TBC ** (Mod:TS-SMD620BW-RE) luz dia',1,'unidad',0,0.00,511.73,'2020-01-31 10:14:23',1,0),(1052,1,134,'Luminaria Plafon Led Fria 20 x 20 interior (220x24mm) 18W ** INTERELEC ** luz dia ',1,'UNIDAD',0,0.00,511.73,'2020-01-31 10:18:22',1,0),(1053,3,71,'mueble raro',1,'centimetros',15,510.18,500.51,'2020-02-10 00:33:21',1,0),(1054,16,1,'Control Remoto',1,'unidades',10,0.00,368.00,'2020-02-14 12:11:09',1,0),(1055,4,4,'borrador',1,'unidades',5,0.00,10.00,'2020-02-18 11:41:16',1,0),(1056,8,15,'Parabrisa para Ford Cargo 1722E',1,'unidad',0,0.00,0.00,NULL,1,0),(1057,1,135,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 20W **   TBCin ** (Mod:TS-SMD620BW-RE) luz dia',1,'unidad',20,0.00,511.73,'2020-02-26 09:10:56',1,0),(1058,1,136,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 18W **   INTERELEC ** (Mod:TS-SMD620BW-RE) luz',1,'UNIDAD',20,0.00,0.00,NULL,1,0),(1059,1,137,'Kit Puesta a Tierra Jabalina 1.00 mts + caja + tomacable',1,'unidad',5,0.00,750.00,'2020-02-26 09:11:15',1,0),(1060,5,48,'Set Llaves Combinadas Tubos Stanley 91931 120 Pzas',1,'SET / KIT',0,21.00,11900.00,'2020-03-02 04:09:25',1,0),(1061,7,187,'Mesada de marmol con 2 bachas redondas centradas p/griferia monocomando p/baño 1400 x 450mm con zoca',1,'unidad',0,0.00,11132.00,'2020-03-03 12:51:09',1,0),(1062,7,188,'Placa de melamina para box de baño de 1360 x 1100 mm en TEKA ARTICA con bordes de 2 mm en PVC',1,'unidad',0,0.00,1936.00,'2020-03-03 12:51:23',1,0),(1063,7,189,'Espejo para baño de 2000 x 500 mm marco de madera color blanco',1,'unidad',0,0.00,3630.00,'2020-03-03 12:51:44',1,0),(1064,7,190,'Codo a 90° con rosca H de 32 (redeco)',1,'unidad',0,0.00,3631.21,'2020-03-03 12:51:58',1,0),(1065,7,191,'Codo a 90° fusion de 32 (redeco)',1,'unidad',0,0.00,3632.42,'2020-03-03 12:52:13',1,0),(1066,7,192,'Cupla reduccion de 32 a 25 fusion (redeco)',1,'unidad',0,0.00,3633.63,'2020-03-03 12:52:28',1,0),(1067,7,193,'Tee de 32 fusicion (redeco)',1,'unidad',0,0.00,3634.84,'2020-03-03 12:52:41',1,0),(1068,2,94,'Recorte para puerta de panel 600 x 2000',1,'unidad',0,0.00,2661.95,'2020-03-06 11:05:55',1,0),(1069,2,95,'Recorte para puerta de panel 700 x 2000',1,'unidad',0,0.00,3035.65,'2020-03-06 11:06:11',1,0),(1070,2,96,'Recorte para puerta de panel 800 x 2000',1,'unidad',0,0.00,3469.31,'2020-03-06 11:06:23',1,0),(1071,2,97,'Recorte para puerta de panel 900 x 2000',1,'unidad',0,0.00,3902.98,'2020-03-06 11:06:40',1,0),(1072,2,98,'Plegado de Cenefa de Terminacion en Chapa Lisa de 50x600x100x2x6000 en 1.2mm',1,'Tiras de 6 mts',0,0.00,3500.00,'2020-03-11 09:33:00',1,0),(1073,2,99,'Plegado de Cenefa de Terminacion en Chapa Lisa de 50x600x100x20x6100 en 1.2mm',1,'Tira de 6100 mts',0,0.00,3500.00,'2020-03-11 09:33:10',1,0),(1074,2,100,'Plegado de Cenefa de Terminacion en Chapa Lisa de 150x150x600mm en 1.2mm',1,'Tiras',0,0.00,250.00,'2020-03-11 10:37:04',1,0),(1075,2,101,'Perfil \"H\" Union PVC',1,'Tira de 6 Mts',0,0.00,494.00,'2020-03-11 10:40:04',1,1),(1076,2,102,'Grampa Soporte para Caño 2\" x 4\" (05x10cm) Zincada',1,'unidades',0,0.00,0.00,NULL,1,1),(1077,2,103,'Perfil \"J\" Terminación PVC',1,'Tira de 1 Mts',0,0.00,0.00,NULL,1,0),(1078,13,24,'Glade',1,'unidades',5,0.00,97.00,'2020-03-17 06:08:37',1,0),(1079,13,25,'Limpia Motor Desengrasante Auto',1,'Bidon 5 Lts',1,0.00,1140.00,'2020-03-18 11:19:17',1,0),(1080,8,16,'Aceite Selenia 15w40 Original Fiat',1,'Bidon 4 Lts',1,0.00,2360.00,'2020-03-18 11:18:32',1,0),(1081,2,104,'hierro fuerte 3',0,'unidades',5,0.00,0.00,NULL,1,0),(1082,2,105,'Cama Cucheta de Caños Estructurales',1,'unidades',0,0.00,0.00,NULL,1,0),(1083,3,72,'Colchón de 1 Plaza Espuma Alta Densidad 80KG',1,'unidad',0,0.00,0.00,NULL,1,0);
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos_categorias`
--

DROP TABLE IF EXISTS `insumos_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumos_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos_categorias`
--

LOCK TABLES `insumos_categorias` WRITE;
/*!40000 ALTER TABLE `insumos_categorias` DISABLE KEYS */;
INSERT INTO `insumos_categorias` VALUES (1,'E','Electricidad',1),(2,'H','Hierro',1),(3,'M','Muebles',1),(4,'OFC','Oficina',1),(5,'MAQ','Maquinas',1),(6,'PA','Pañol',1),(7,'PLO','Plomeria',1),(8,'AUT','Vehiculos',1),(9,'CON','Contenedores',1),(10,'PI','Pinturas',1),(11,'V','Ventanas',1),(12,'VA','Varios',1),(13,'LI','Limpieza',1),(14,'SE','Servicios',1),(15,'GASTOS ','GASTOS DIRECTOS E INDIRECTOS',0),(16,'OT','Otros',1);
/*!40000 ALTER TABLE `insumos_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos_movimientos`
--

DROP TABLE IF EXISTS `insumos_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumos_movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_movimiento` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT '0.00',
  `id_user` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_ingreso` int(11) DEFAULT NULL,
  `id_entrega` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `id_devolucion` int(11) DEFAULT NULL,
  `parcial` decimal(20,2) DEFAULT '0.00',
  `minimo` int(11) DEFAULT '0',
  `alertar` tinyint(4) DEFAULT '0',
  `autorizar` tinyint(4) DEFAULT '0',
  `id_insumos_categorias` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `unidad` varchar(200) DEFAULT NULL,
  `costo` decimal(20,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos_movimientos`
--

LOCK TABLES `insumos_movimientos` WRITE;
/*!40000 ALTER TABLE `insumos_movimientos` DISABLE KEYS */;
INSERT INTO `insumos_movimientos` VALUES (1,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-17 15:14:39',NULL,NULL,1,NULL,0.00,0,0,0,1,2,'unidades',28923.00),(2,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-17 15:14:58',NULL,NULL,1,NULL,0.00,0,0,0,1,1,'unidades',28923.00),(3,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-17 15:52:38',NULL,NULL,1,NULL,0.00,0,0,0,1,1,'unidades',28923.00),(4,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-19 05:49:16',NULL,NULL,1,NULL,0.00,6,1,0,1,1,'unidades',28923.00),(5,5,'Cable Unippolar Normalizado Blanco 1,5 mm    ',0.00,72,'2020-01-19 05:54:44',NULL,NULL,7,NULL,0.00,300,1,0,1,7,'Metros ',1033.00),(6,3,NULL,300.00,72,'2020-01-19 06:05:33',NULL,NULL,7,NULL,300.00,300,0,0,NULL,NULL,NULL,NULL),(7,3,NULL,12.00,72,'2020-01-19 06:06:22',NULL,NULL,803,NULL,12.00,0,0,0,NULL,NULL,NULL,NULL),(8,2,NULL,2.00,72,'2020-01-19 06:07:39',NULL,1,803,NULL,10.00,0,0,0,NULL,NULL,NULL,NULL),(9,2,NULL,10.00,72,'2020-01-19 06:07:39',NULL,1,7,NULL,290.00,300,0,0,NULL,NULL,NULL,NULL),(10,5,'Griferia ducha (Hydros Viva Plus) ',0.00,72,'2020-01-19 06:11:45',NULL,NULL,601,NULL,0.00,3,1,0,7,55,'unidades',3212.00),(11,6,'cetol para dekc color teca (4Lts)',0.00,72,'2020-01-20 04:41:18',NULL,NULL,1024,NULL,0.00,0,1,0,10,42,NULL,NULL),(12,5,'Valbula Temporizadora P/Mingitorio marca:ZEAT con flexible (NO CON CAÑO RIGIDO)',0.00,72,'2020-01-20 05:55:28',NULL,NULL,556,NULL,0.00,5,1,0,7,10,'unidades',1726.00),(13,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-20 06:26:53',NULL,NULL,1,NULL,0.00,0,1,0,1,1,'unidades',28923.00),(14,5,'Caño rigido 20mm Fusion  (redeco) ',0.00,72,'2020-01-20 12:48:31',NULL,NULL,560,NULL,0.00,20,1,0,7,14,'unidades, bolsa de 20und',224.00),(15,6,'Reparacion de carpineria modulo actc',0.00,72,'2020-01-20 15:12:51',NULL,NULL,1025,NULL,0.00,1,0,0,12,2,NULL,NULL),(16,6,'Automatico de bomba ACTC',0.00,72,'2020-01-20 15:15:45',NULL,NULL,1026,NULL,0.00,0,0,0,7,186,NULL,NULL),(17,6,'fabricacion 3 operarios 3 dias',0.00,72,'2020-01-20 15:18:53',NULL,NULL,1027,NULL,0.00,1,0,0,12,3,NULL,NULL),(18,6,'Cerradura Kallay 2006 Para Puerta. Línea Módena.',0.00,72,'2020-01-20 15:44:42',NULL,NULL,1028,NULL,0.00,0,0,0,6,206,NULL,NULL),(19,6,'Picaporte Para Puerta De Aluminio H50 Linea Modena',0.00,72,'2020-01-20 15:46:25',NULL,NULL,1029,NULL,0.00,0,0,0,6,207,NULL,NULL),(20,6,'Placa Cementicia Siding Cedar 6 Mm Superboard 3,60x0,2 Textura Simil Madera',0.00,72,'2020-01-20 15:48:48',NULL,NULL,1030,NULL,0.00,0,0,0,6,208,NULL,NULL),(21,4,NULL,1.00,72,'2020-01-22 16:26:50',NULL,NULL,307,1,1.00,0,0,0,NULL,NULL,NULL,NULL),(22,4,NULL,1.00,72,'2020-01-22 16:29:00',NULL,NULL,307,2,2.00,0,0,0,NULL,NULL,NULL,NULL),(23,2,NULL,5.00,72,'2020-01-22 16:49:19',NULL,2,7,NULL,285.00,300,0,0,NULL,NULL,NULL,NULL),(24,6,'MOTA MAZA ALBAÑIL 1000GRS C/FIBRA',0.00,72,'2020-01-24 03:58:34',NULL,NULL,1031,NULL,0.00,0,0,0,5,44,NULL,NULL),(25,5,'Cinta de papel Fina Blanca (Enmascarar de 24 x 50)',0.00,72,'2020-01-24 04:03:21',NULL,NULL,380,NULL,0.00,0,0,0,6,39,'unidades',115.98),(26,5,'Cinta de papel Fina Blanca (Enmascarar de 24 x 50)',0.00,72,'2020-01-24 04:03:31',NULL,NULL,380,NULL,0.00,0,0,0,6,39,'unidades',115.98),(27,2,NULL,3.00,72,'2020-01-24 06:10:56',NULL,3,7,NULL,282.00,300,0,0,NULL,NULL,NULL,NULL),(28,2,NULL,1.00,72,'2020-01-24 06:11:41',NULL,4,7,NULL,281.00,300,0,0,NULL,NULL,NULL,NULL),(29,6,'DW331K - DEWALT SIERRA CALADORA 7000W KIT PENDULAR',0.00,72,'2020-01-27 11:34:55',NULL,NULL,1032,NULL,0.00,0,0,0,5,45,NULL,NULL),(30,6,'SXH1530 - TERMOFUSORA STANLEY 1500W X6ACC',0.00,72,'2020-01-27 11:35:34',NULL,NULL,1033,NULL,0.00,0,0,0,5,46,NULL,NULL),(31,6,'DWE4214 - DEWALT AMOLADORA 4 1/2\" 1200W',0.00,72,'2020-01-27 11:36:14',NULL,NULL,1034,NULL,0.00,0,0,0,5,47,NULL,NULL),(32,6,'DIC-VALOR HORAS X 4 OPERARIOS',0.00,72,'2020-01-30 05:26:46',NULL,NULL,1035,NULL,0.00,0,0,0,15,1,NULL,NULL),(33,6,'DIC-ELECTRICIDAD/HORA',0.00,72,'2020-01-30 05:27:16',NULL,NULL,1036,NULL,0.00,0,0,0,15,2,NULL,NULL),(34,6,'DIC-DESGASTEMAQUINAS/HERRAMIENTAS X HORAS',0.00,72,'2020-01-30 05:39:58',NULL,NULL,1037,NULL,0.00,0,0,0,15,3,NULL,NULL),(35,6,'DIC-ALQUILER DE GALPON',0.00,72,'2020-01-30 05:40:25',NULL,NULL,1038,NULL,0.00,0,0,0,15,4,NULL,NULL),(36,6,'DIC-USO DE HIDROGRUA',0.00,72,'2020-01-30 05:40:59',NULL,NULL,1039,NULL,0.00,0,0,0,15,5,NULL,NULL),(37,6,'DIC-USO DEL CLARK',0.00,72,'2020-01-30 05:41:23',NULL,NULL,1040,NULL,0.00,0,0,0,15,6,NULL,NULL),(38,6,'DIC-VALOR HORA HOMBRE PRODUCCION',0.00,72,'2020-01-30 05:41:55',NULL,NULL,1041,NULL,0.00,0,0,0,15,7,NULL,NULL),(39,6,'DIC-VALOR HORA HOMBRE COMPRAS',0.00,72,'2020-01-30 05:42:20',NULL,NULL,1042,NULL,0.00,0,0,0,15,8,NULL,NULL),(40,6,'DIC-UNIFORME PERSONAL OPERARIO',0.00,72,'2020-01-30 05:43:21',NULL,NULL,1043,NULL,0.00,0,0,0,15,9,NULL,NULL),(41,6,'IND-CARGA SOCIALES/IPROT/INTERNET/UOCRA/POSC WEB/GPS/HORA',0.00,72,'2020-01-30 05:44:06',NULL,NULL,1044,NULL,0.00,0,0,0,15,10,NULL,NULL),(42,6,'IND-HORA HOMBRE ADMINISTRATIVO',0.00,72,'2020-01-30 05:44:21',NULL,NULL,1045,NULL,0.00,0,0,0,0,0,NULL,NULL),(43,6,'IND-USO DE CAMIONETA/HORA',0.00,72,'2020-01-30 05:44:46',NULL,NULL,1046,NULL,0.00,0,0,0,15,11,NULL,NULL),(44,6,'HORA HOMBRE ADMINISTRATIVO',0.00,72,'2020-01-30 05:57:46',NULL,NULL,1047,NULL,0.00,0,0,0,15,12,NULL,NULL),(45,5,'Aire Acondicionado  Split 2200 F/C ON -OFF',0.00,72,'2020-01-30 06:29:29',NULL,NULL,1,NULL,0.00,5,1,0,1,1,'unidades',31339.00),(46,5,'Anafe de 2 hornallas electrico cocina 2000W',0.00,72,'2020-01-30 06:29:43',NULL,NULL,2,NULL,0.00,5,1,0,1,2,'unidades',1513.50),(47,5,'Plegado chasis 2500 mm de largo80x160x80mm',0.00,72,'2020-01-30 06:30:48',NULL,NULL,198,NULL,0.00,10,1,0,2,66,'unidades',1997.00),(48,5,'Plegado chasis 6000 mm de largo 80x160x80mm',0.00,72,'2020-01-30 06:31:09',NULL,NULL,199,NULL,0.00,10,1,0,2,67,'unidades',6457.00),(49,5,'Ca–o estructural 80 x 40 x 1,6 mm',0.00,72,'2020-01-30 06:31:53',NULL,NULL,153,NULL,0.00,50,1,0,2,21,'unidades',1713.00),(50,5,'Ca–o estructural 80 x 40 x 1,6 mm',0.00,72,'2020-01-30 06:32:15',NULL,NULL,153,NULL,0.00,50,1,0,2,21,'unidades',1713.00),(51,5,'plegado Galvanizado tipo \"U\" 2400 mm N¡ 7',0.00,72,'2020-01-30 06:32:46',NULL,NULL,208,NULL,0.00,85,1,0,2,76,'unidades',778.00),(52,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1035,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(53,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1036,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(54,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1037,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(55,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1038,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(56,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1039,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(57,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1040,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(58,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1041,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(59,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1042,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(60,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1043,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(61,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1044,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(62,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1046,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(63,1,NULL,999999.00,72,'2020-01-30 06:45:55',1,NULL,1047,NULL,999999.00,0,0,0,NULL,NULL,NULL,NULL),(73,6,'Pvc Revestimiento Machimbre 200x10mm Blanco Mate M2',0.00,72,'2020-01-31 07:04:58',NULL,NULL,1048,NULL,0.00,0,1,0,6,209,NULL,NULL),(74,6,'Aislante 5mm doble capa de aluminio X 20 M2',0.00,72,'2020-01-31 07:06:09',NULL,NULL,1049,NULL,0.00,0,1,0,6,210,NULL,NULL),(75,6,'Aislante 10mm doble capa de aluminio X 20M2',0.00,72,'2020-01-31 07:06:37',NULL,NULL,1050,NULL,0.00,0,1,0,6,211,NULL,NULL),(76,5,'Ventana 120 x 90 cm corrediza, vidrio laminado 3+3, linea herrero/modena',0.00,72,'2020-01-31 09:35:20',NULL,NULL,819,NULL,0.00,0,1,0,11,25,'unidades',13915.00),(77,6,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 18W ** TBC ** (Mod:TS-SMD620BW-RE) luz dia',0.00,72,'2020-01-31 10:13:55',NULL,NULL,1051,NULL,0.00,0,1,0,1,133,NULL,NULL),(78,6,'Luminaria Plafon Led Fria 20 x 20 interior (220x24mm) 18W ** INTERELEC ** luz dia ',0.00,72,'2020-01-31 10:17:17',NULL,NULL,1052,NULL,0.00,0,1,0,1,134,NULL,NULL),(79,1,NULL,0.00,72,'2020-02-04 17:56:20',2,NULL,2,NULL,0.00,5,0,0,NULL,NULL,NULL,NULL),(80,1,NULL,12.00,72,'2020-02-04 17:56:20',2,NULL,4,NULL,12.00,0,0,0,NULL,NULL,NULL,NULL),(81,1,NULL,1.00,72,'2020-02-04 17:56:20',2,NULL,1,NULL,1.00,5,0,0,NULL,NULL,NULL,NULL),(82,1,NULL,0.00,72,'2020-02-04 18:00:04',3,NULL,2,NULL,0.00,5,0,0,NULL,NULL,NULL,NULL),(83,1,NULL,12.00,72,'2020-02-04 18:00:04',3,NULL,4,NULL,24.00,0,0,0,NULL,NULL,NULL,NULL),(84,1,NULL,0.00,72,'2020-02-04 18:00:56',4,NULL,2,NULL,0.00,5,0,0,NULL,NULL,NULL,NULL),(85,1,NULL,12.00,72,'2020-02-04 18:00:56',4,NULL,4,NULL,36.00,0,0,0,NULL,NULL,NULL,NULL),(86,1,NULL,4.00,72,'2020-02-04 18:00:56',4,NULL,2,NULL,4.00,5,0,0,NULL,NULL,NULL,NULL),(87,1,NULL,2.00,72,'2020-02-04 18:01:39',5,NULL,2,NULL,6.00,5,0,0,NULL,NULL,NULL,NULL),(88,1,NULL,5.00,72,'2020-02-04 18:01:39',5,NULL,2,NULL,11.00,5,0,0,NULL,NULL,NULL,NULL),(89,1,NULL,4.00,72,'2020-02-04 18:34:25',6,NULL,2,NULL,15.00,5,0,0,NULL,NULL,NULL,NULL),(90,1,NULL,10.00,72,'2020-02-04 18:34:26',6,NULL,4,NULL,46.00,0,0,0,NULL,NULL,NULL,NULL),(91,1,NULL,5.00,72,'2020-02-04 18:39:30',7,NULL,2,NULL,20.00,5,0,0,NULL,NULL,NULL,NULL),(92,1,NULL,12.00,72,'2020-02-04 18:39:30',7,NULL,4,NULL,58.00,0,0,0,NULL,NULL,NULL,NULL),(93,1,NULL,0.00,72,'2020-02-04 18:41:27',8,NULL,2,NULL,20.00,5,0,0,NULL,NULL,NULL,NULL),(94,1,NULL,12.00,72,'2020-02-04 18:41:28',8,NULL,4,NULL,70.00,0,0,0,NULL,NULL,NULL,NULL),(95,1,NULL,4.00,72,'2020-02-04 18:42:13',9,NULL,2,NULL,24.00,5,0,0,NULL,NULL,NULL,NULL),(96,1,NULL,12.00,72,'2020-02-04 18:42:14',9,NULL,4,NULL,82.00,0,0,0,NULL,NULL,NULL,NULL),(97,1,NULL,4.00,72,'2020-02-04 18:43:16',10,NULL,2,NULL,28.00,5,0,0,NULL,NULL,NULL,NULL),(98,1,NULL,12.00,72,'2020-02-04 18:43:16',10,NULL,4,NULL,94.00,0,0,0,NULL,NULL,NULL,NULL),(99,1,NULL,6.00,72,'2020-02-04 18:56:36',11,NULL,2,NULL,34.00,5,0,0,NULL,NULL,NULL,NULL),(100,1,NULL,12.00,72,'2020-02-04 18:56:36',11,NULL,4,NULL,106.00,0,0,0,NULL,NULL,NULL,NULL),(101,2,NULL,2.00,72,'2020-02-09 19:35:24',NULL,10,2,NULL,32.00,5,0,0,NULL,NULL,NULL,NULL),(102,2,NULL,0.00,72,'2020-02-09 19:42:18',NULL,11,2,NULL,32.00,5,0,0,NULL,NULL,NULL,NULL),(103,2,NULL,0.00,72,'2020-02-09 19:54:05',NULL,12,2,NULL,32.00,5,0,0,NULL,NULL,NULL,NULL),(104,2,NULL,1.10,72,'2020-02-09 20:06:50',NULL,13,803,NULL,9.00,0,0,0,NULL,NULL,NULL,NULL),(105,2,NULL,0.20,72,'2020-02-09 20:16:16',NULL,14,1,NULL,1.00,5,0,0,NULL,NULL,NULL,NULL),(106,2,NULL,0.16,72,'2020-02-09 20:18:31',NULL,15,1,NULL,1.00,5,0,0,NULL,NULL,NULL,NULL),(107,6,'mueble raro',0.00,72,'2020-02-09 20:32:27',NULL,NULL,1053,NULL,0.00,15,0,0,3,71,NULL,NULL),(108,3,NULL,469.99,72,'2020-02-09 20:34:42',NULL,NULL,1053,NULL,470.00,15,0,0,NULL,NULL,NULL,NULL),(109,1,NULL,50.02,72,'2020-02-09 20:35:14',12,NULL,1053,NULL,520.00,15,0,0,NULL,NULL,NULL,NULL),(110,2,NULL,10.33,72,'2020-02-09 20:38:04',NULL,16,1053,NULL,510.00,15,0,0,NULL,NULL,NULL,NULL),(111,4,NULL,0.50,72,'2020-02-09 20:39:07',NULL,NULL,1053,3,510.00,15,0,0,NULL,NULL,NULL,NULL),(112,6,'Control Remoto',0.00,72,'2020-02-14 12:09:52',NULL,NULL,1054,NULL,0.00,10,0,0,16,1,NULL,NULL),(113,3,NULL,1.64,72,'2020-02-14 12:19:19',NULL,NULL,1,NULL,2.00,5,0,0,NULL,NULL,NULL,NULL),(114,6,'borrador',0.00,72,'2020-02-18 11:19:55',NULL,NULL,1055,NULL,0.00,5,1,0,4,4,NULL,NULL),(115,5,'Toner Alternativo 83a 283a M127 M127f M125 M201 ',0.00,72,'2020-02-18 11:21:11',NULL,NULL,296,NULL,0.00,2,1,0,4,1,'unidades',560.00),(116,5,'Toner P/hp 217a Cf217a Negro Alternativo HP130 M102 Sin Chip Aqx',0.00,72,'2020-02-18 11:21:23',NULL,NULL,298,NULL,0.00,2,1,0,4,3,'unidades',569.00),(117,5,'Resma de papel A4 de 70gr',0.00,72,'2020-02-18 11:21:42',NULL,NULL,297,NULL,0.00,5,1,0,4,2,'unidades',208.00),(118,2,NULL,1.00,72,'2020-02-19 11:16:54',NULL,17,803,NULL,8.00,0,0,0,NULL,NULL,NULL,NULL),(119,4,NULL,1.00,72,'2020-02-19 11:17:49',NULL,NULL,803,4,9.00,0,0,0,NULL,NULL,NULL,NULL),(120,2,NULL,2.00,72,'2020-02-19 11:20:00',NULL,18,803,NULL,7.00,0,0,0,NULL,NULL,NULL,NULL),(121,3,NULL,2.00,72,'2020-02-19 12:19:56',NULL,NULL,1,NULL,2.00,5,0,0,NULL,NULL,NULL,NULL),(122,3,NULL,32.00,72,'2020-02-19 12:20:05',NULL,NULL,2,NULL,32.00,5,0,0,NULL,NULL,NULL,NULL),(123,1,NULL,10.00,72,'2020-02-19 12:31:24',13,NULL,1,NULL,12.00,5,0,0,NULL,NULL,NULL,NULL),(124,1,NULL,5.00,72,'2020-02-19 12:32:14',14,NULL,2,NULL,37.00,5,0,0,NULL,NULL,NULL,NULL),(125,5,'Piso Vinilico XLPU 3720 1.5 mm de espesor 1rollo 55Mts (Cod 0128/0129)',0.00,72,'2020-02-20 05:02:02',NULL,NULL,488,NULL,0.00,3,1,0,6,147,'unidades',77198.00),(126,5,'Espejos largos 1,00 x 0,50 mts',0.00,72,'2020-02-20 09:30:25',NULL,NULL,595,NULL,0.00,6,1,0,7,49,'unidades',787.00),(127,5,'Bisagras tipo piano (Bis DD 2000-80-5-1,5 Zincada)',0.00,72,'2020-02-20 11:43:47',NULL,NULL,362,NULL,0.00,6,1,0,6,21,'unidades',1197.00),(128,5,'esquinero plastico bco c/tapa Modelo: Trapecio',0.00,72,'2020-02-26 04:19:02',NULL,NULL,3,NULL,0.00,500,1,0,1,3,'unidades, Paq. 500 und',5.35),(129,5,'Artefacto Estanco Led   Plafon 1,20X15X10CM LUZ FRIA 2 tubos 18W                 ',106.00,72,'2020-02-26 04:19:44',NULL,NULL,4,NULL,106.00,10,1,0,1,4,'unidades',1162.00),(130,5,'Aplique exterior direccional led /TBC in accero inoxidable',0.00,72,'2020-02-26 04:20:23',NULL,NULL,5,NULL,0.00,5,1,0,1,5,'unidades',1067.00),(131,5,'Bornera Tripolar 60Amp T3-60 TEA KELANOL                                    ',0.00,72,'2020-02-26 04:20:42',NULL,NULL,6,NULL,0.00,5,1,0,1,6,'unidades',186.00),(132,5,'Cable Unipolar Normalizado Celeste 1,5 mm   ',0.00,72,'2020-02-26 04:21:10',NULL,NULL,8,NULL,0.00,300,1,0,1,8,'unidades',1033.00),(133,5,'Cable Unipolar Normalizado Celeste 2,50 mm                   ',0.00,72,'2020-02-26 04:22:04',NULL,NULL,9,NULL,0.00,300,1,0,1,9,'unidades',2167.00),(134,5,'Cable Unipolar Normalizado Celeste 4,00 mm  ',0.00,72,'2020-02-26 04:22:15',NULL,NULL,10,NULL,0.00,300,1,0,1,10,'unidades',2445.00),(135,5,'Cable Unipolar Normalizado Celeste 6,00 mm  ',0.00,72,'2020-02-26 04:22:28',NULL,NULL,11,NULL,0.00,300,1,0,1,11,'unidades',3383.00),(136,5,'Cable Unipolar Normalizado Marron 1,5 mm     ',0.00,72,'2020-02-26 04:22:38',NULL,NULL,12,NULL,0.00,300,1,0,1,12,'unidades',1010.00),(137,5,'Cable Unipolar Normalizado Marron 2,50 mm   ',0.00,72,'2020-02-26 04:22:49',NULL,NULL,13,NULL,0.00,300,1,0,1,13,'unidades',1509.00),(138,5,'Cable Unipolar Normalizado Marron 2,50 mm   ',0.00,72,'2020-02-26 04:22:53',NULL,NULL,13,NULL,0.00,300,1,0,1,13,'unidades',1509.00),(139,5,'Cable Unipolar Normalizado Marron 4,00 mm     ',0.00,72,'2020-02-26 04:23:00',NULL,NULL,14,NULL,0.00,300,1,0,1,14,'unidades',2441.00),(140,5,'Cable Unipolar Normalizado Marron 6,00 mm                             ',0.00,72,'2020-02-26 04:23:11',NULL,NULL,15,NULL,0.00,300,1,0,1,15,'unidades',3383.00),(141,5,'Cable Unipolar Normalizado Celeste 1,5 mm   ',0.00,72,'2020-02-26 04:23:49',NULL,NULL,8,NULL,0.00,300,1,0,1,8,'Metros',1033.00),(142,5,'Cable Unipolar Normalizado Celeste 2,50 mm                   ',0.00,72,'2020-02-26 04:24:07',NULL,NULL,9,NULL,0.00,300,1,0,1,9,'Metros',2167.00),(143,5,'Cable Unipolar Normalizado Celeste 4,00 mm  ',0.00,72,'2020-02-26 04:24:56',NULL,NULL,10,NULL,0.00,300,1,0,1,10,'Metros',2445.00),(144,5,'Cable Unipolar Normalizado Celeste 6,00 mm  ',0.00,72,'2020-02-26 04:25:27',NULL,NULL,11,NULL,0.00,300,1,0,1,11,'Metros',3383.00),(145,5,'Cable Unipolar Normalizado Marron 1,5 mm     ',0.00,72,'2020-02-26 04:25:40',NULL,NULL,12,NULL,0.00,300,1,0,1,12,'Metros',1010.00),(146,5,'Cable Unipolar Normalizado Marron 2,50 mm   ',0.00,72,'2020-02-26 04:25:52',NULL,NULL,13,NULL,0.00,300,1,0,1,13,'Metros',1509.00),(147,5,'Cable Unipolar Normalizado Marron 4,00 mm     ',0.00,72,'2020-02-26 04:26:49',NULL,NULL,14,NULL,0.00,300,1,0,1,14,'Metros',2441.00),(148,5,'Cable Unipolar Normalizado Marron 6,00 mm                             ',0.00,72,'2020-02-26 04:26:59',NULL,NULL,15,NULL,0.00,300,1,0,1,15,'Metros',3383.00),(149,5,'Cable Unipolar Normalizado Negro 1,5 mm                                 ',0.00,72,'2020-02-26 04:27:26',NULL,NULL,16,NULL,0.00,300,1,0,1,16,'Metros',918.00),(150,5,'Cable Unipolar Normalizado Negro 2,50 mm     ',0.00,72,'2020-02-26 04:27:38',NULL,NULL,17,NULL,0.00,300,1,0,1,17,'Metros',1537.00),(151,5,'Cable Unipolar Normalizado Negro 4,0 mm         ',0.00,72,'2020-02-26 04:27:49',NULL,NULL,18,NULL,0.00,300,1,0,1,18,'Metros',2272.00),(152,5,'Cable Unipolar Normalizado Rojo 4,0 mm                                         ',0.00,72,'2020-02-26 04:27:57',NULL,NULL,20,NULL,0.00,300,1,0,1,20,'Metros',2272.00),(153,5,'Cable Unipolar Normalizado Rojo 2,5 mm                                         ',0.00,72,'2020-02-26 04:28:07',NULL,NULL,19,NULL,0.00,300,1,0,1,19,'Metros',2167.00),(154,5,'Cable Unipolar Normalizado Rojo x 1,5 mm      ',0.00,72,'2020-02-26 04:28:37',NULL,NULL,21,NULL,0.00,300,1,0,1,21,'Metros',1013.00),(155,5,'Cable tipo taller Normalizado 2 x 2,5 mm',0.00,72,'2020-02-26 04:28:47',NULL,NULL,22,NULL,0.00,300,1,0,1,22,'Metros',39.00),(156,5,'Cable tipo taller Normalizado 3 x 2,5 mm',0.00,72,'2020-02-26 04:29:03',NULL,NULL,23,NULL,0.00,300,1,0,1,23,'Metros',53.00),(157,5,'Cable tipo taller Normalizado 5 x 2,5 mm',0.00,72,'2020-02-26 04:29:21',NULL,NULL,24,NULL,0.00,300,1,0,1,24,'Metros',131.00),(158,5,'Cable tipo taller Normalizado 6 x 2,5 mm',0.00,72,'2020-02-26 04:29:33',NULL,NULL,25,NULL,0.00,300,1,0,1,25,'Metros',59.00),(159,5,'Cable Unipolar Normalizado Verde Tierra 1,5 mm       ',0.00,72,'2020-02-26 04:29:47',NULL,NULL,26,NULL,0.00,300,1,0,1,26,'Metros',1065.00),(160,5,'Cable Unipolar Normalizado Verde Tierra 2,50 mm       ',0.00,72,'2020-02-26 04:29:58',NULL,NULL,27,NULL,0.00,300,1,0,1,27,'Metros',2167.00),(161,5,'Cable Unipolar Normalizado Verde Tierra 4,00 mm                         ',0.00,72,'2020-02-26 04:30:10',NULL,NULL,28,NULL,0.00,300,1,0,1,28,'Metros',2170.00),(162,5,'Cable Unipolar Normalizado Verde Tierra 6,00 mm                            ',0.00,72,'2020-02-26 04:30:32',NULL,NULL,29,NULL,0.00,300,1,0,1,29,'Metros',3383.00),(163,5,'Cable tipo taller Normalizado 2 x 2,5 mm',0.00,72,'2020-02-26 04:31:38',NULL,NULL,22,NULL,0.00,100,1,0,1,22,'Metros',39.00),(164,5,'Cable tipo taller Normalizado 3 x 2,5 mm',0.00,72,'2020-02-26 04:35:20',NULL,NULL,23,NULL,0.00,100,1,0,1,23,'Metros',53.00),(165,5,'Cable tipo taller Normalizado 5 x 2,5 mm',0.00,72,'2020-02-26 04:35:30',NULL,NULL,24,NULL,0.00,100,1,0,1,24,'Metros',131.00),(166,5,'Cable tipo taller Normalizado 6 x 2,5 mm',0.00,72,'2020-02-26 04:35:42',NULL,NULL,25,NULL,0.00,100,1,0,1,25,'Metros',59.00),(167,5,'Caja de pase estanco 115 x 115 x 81 blanco (Mod:0998/8)',0.00,72,'2020-02-26 04:37:28',NULL,NULL,30,NULL,0.00,10,1,0,1,30,'unidades',235.00),(168,5,'Bornera De Distribución Elent 7 Salidas (Mod:BIPOLAR 125 AMP)',0.00,72,'2020-02-26 04:38:00',NULL,NULL,31,NULL,0.00,10,1,0,1,31,'unidades',264.00),(169,5,'Caja de pase estanco 122x166x81  (PR1000/81)',0.00,72,'2020-02-26 04:39:04',NULL,NULL,32,NULL,0.00,10,1,0,1,32,'unidades',294.00),(170,5,'Caja de pase estanco 92x92x75   (PR997/75)                           ',0.00,72,'2020-02-26 04:39:19',NULL,NULL,33,NULL,0.00,10,1,0,1,33,'unidades',206.00),(171,5,'Caja Rectangular Exterior PVC  Universal 13x8x5cm blanco                                 ',0.00,72,'2020-02-26 04:40:00',NULL,NULL,34,NULL,0.00,30,1,0,1,34,'unidades',99.00),(172,5,'Caño de cobre Termomecanica 1/2 Aire Acondicionado',0.00,72,'2020-02-26 04:40:58',NULL,NULL,35,NULL,0.00,75,1,0,1,35,'Metros, Rollo x 15 Mts',5203.00),(173,5,'Caño de cobre Termomecanica 1/4 Aire Acondicionado',0.00,72,'2020-02-26 04:41:44',NULL,NULL,36,NULL,0.00,75,1,0,1,36,'Metros, Rollo x 15 Mts',5203.00),(174,5,'Caño de cobre Termomecanica 3/8 Aire Acondicionado',0.00,72,'2020-02-26 04:42:15',NULL,NULL,37,NULL,0.00,75,1,0,1,37,'Metros, Rollo x 15 Mts',2614.00),(175,5,'Caño Rigido PVC de 20mm semipesado gris',0.00,72,'2020-02-26 04:44:24',NULL,NULL,38,NULL,0.00,90,1,0,1,38,'Paq. 90 Mts 30 Tiras',2393.00),(176,5,'Caño Rigido PVC de 25mm semipesado  gris',0.00,72,'2020-02-26 04:45:07',NULL,NULL,39,NULL,0.00,60,1,0,1,39,'Paq. 60 Mts 20 Tiras',2257.00),(177,5,'Conectores de 20mm para tubo rigido PVC     gris                                  ',0.00,72,'2020-02-26 04:45:43',NULL,NULL,40,NULL,0.00,100,1,0,1,40,'unidades',8.00),(178,5,'Conectores de 25mm para tubo rigido PVC  GRIS                                       ',0.00,72,'2020-02-26 04:46:04',NULL,NULL,41,NULL,0.00,100,1,0,1,41,'unidades',17.00),(179,5,'Curva de 20mm para tubo rigido PVC      GRIS                                    ',0.00,72,'2020-02-26 04:46:16',NULL,NULL,42,NULL,0.00,100,1,0,1,42,'unidades',18.00),(180,5,'Curva de 25mm para tubo rigido PVC  GRIS                                                  ',0.00,72,'2020-02-26 04:46:30',NULL,NULL,43,NULL,0.00,100,1,0,1,43,'unidades',18.00),(181,5,'Detector de Humo Fotoelectrico (Mod:376400)  + Baterias',0.00,72,'2020-02-26 04:46:49',NULL,NULL,44,NULL,0.00,5,1,0,1,44,'unidades',1412.84),(182,5,'Disyuntor Diferencial  40 amp. Bipolar Sica (Mod:785640)                           ',0.00,72,'2020-02-26 04:47:13',NULL,NULL,45,NULL,0.00,5,1,0,1,45,'unidades',1437.00),(183,5,'Extractor de baño 4\" (ca–o 100mm /medida 157x157mm/100m3H)',0.00,72,'2020-02-26 04:51:40',NULL,NULL,46,NULL,0.00,5,1,0,1,46,'unidades',1136.00),(184,5,'Extractor Para Baño  Marca: SAJAX Mod 4\" Premium',0.00,72,'2020-02-26 04:52:58',NULL,NULL,46,NULL,0.00,5,1,0,1,46,'unidades',1136.00),(185,5,'Ficha Steck industrial Hembra 16 amp.  2polos+tierra N3056 IP44            ',0.00,72,'2020-02-26 04:53:18',NULL,NULL,47,NULL,0.00,5,1,0,1,47,'unidades',252.00),(186,5,'Ficha Steck Hembra de amurar 32 Amp. Azul para Pared, 2X32A+T  Mod: N3206  ',0.00,72,'2020-02-26 04:53:30',NULL,NULL,48,NULL,0.00,5,1,0,1,48,'unidades',1366.59),(187,5,'Ficha Steck 16A-6H / 200-250v IP44 Cod.s 3046      ',0.00,72,'2020-02-26 05:09:43',NULL,NULL,70,NULL,0.00,5,1,0,1,70,'unidades',1482.00),(188,6,'Parabrisa para Ford Cargo 1722E',0.00,88,'2020-02-26 07:51:01',NULL,NULL,1056,NULL,0.00,0,0,0,8,15,NULL,NULL),(189,6,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 20W **   TBCin ** (Mod:TS-SMD620BW-RE) luz dia            ',0.00,88,'2020-02-26 09:08:26',NULL,NULL,1057,NULL,0.00,20,1,0,1,135,NULL,NULL),(190,6,'Luminaria Plafon Led Fria 20 x 20 interior (220x40mm) 18W **   INTERELEC ** (Mod:TS-SMD620BW-RE) luz dia            ',0.00,88,'2020-02-26 09:09:04',NULL,NULL,1058,NULL,0.00,20,1,0,1,136,NULL,NULL),(191,6,'Kit Puesta a Tierra Jabalina 1.00 mts + caja + tomacable',0.00,88,'2020-02-26 09:10:00',NULL,NULL,1059,NULL,0.00,5,1,0,1,137,NULL,NULL),(192,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 450-30-30 ) AN: 1.00 x La 3.00 x ESp 3.2 MM, NERVIO: 3mm **3 M2 Rombo Grande',0.00,72,'2020-02-26 12:18:35',NULL,NULL,182,NULL,0.00,2,1,0,2,50,'unidades',2208.00),(193,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 450-30-30 ) AN: 1.00 x La 3.00 x ESp 3.2 MM, Rombo Grande',0.00,72,'2020-02-26 12:19:50',NULL,NULL,182,NULL,0.00,2,1,0,2,50,'unidades',2208.00),(194,5,'Malla Romboidal IND. METAL DESPLEGADO (450-30-30) AN: 1.00 x La 3.00 x ESp 3.2 MM, Rombo Grande',0.00,72,'2020-02-26 12:21:34',NULL,NULL,182,NULL,0.00,2,1,0,2,50,'unidades',2208.00),(195,5,'Accesorios 6 set de baño  KIT 1 Estandar *   (LAT.ACC.PI6)',0.00,88,'2020-02-28 10:15:19',NULL,NULL,547,NULL,0.00,5,1,0,7,1,'unidades',1779.00),(196,5,'Bacha vanitory de Marmol sintetico 1 agujero, 85 x 50 x 40cm. Monocomando     Blanco  (VAN.VAN.0000001)',0.00,88,'2020-02-28 10:45:13',NULL,NULL,552,NULL,0.00,5,1,0,7,6,'unidades',5203.00),(197,5,'Bacha vanitory de Marmol sintetico 3 agujeros, 85 x 50 x 40cm.    Blanco  (VAN.VAN.0000000)',0.00,88,'2020-02-28 10:46:01',NULL,NULL,553,NULL,0.00,5,1,0,7,7,'unidades',1580.00),(198,6,'Set Llaves Combinadas Tubos Stanley 91931 120 Pzas',0.00,88,'2020-03-02 04:09:13',NULL,NULL,1060,NULL,0.00,0,0,0,5,48,NULL,NULL),(199,1,NULL,1.00,72,'2020-03-02 10:50:28',15,NULL,1060,NULL,1.00,0,0,0,NULL,NULL,NULL,NULL),(200,1,NULL,1.00,72,'2020-03-02 10:51:53',16,NULL,733,NULL,1.00,0,0,0,NULL,NULL,NULL,NULL),(201,1,NULL,520.00,72,'2020-03-03 06:17:18',17,NULL,3,NULL,520.00,500,0,0,NULL,NULL,NULL,NULL),(202,1,NULL,1.00,72,'2020-03-03 06:17:18',17,NULL,1,NULL,13.00,5,0,0,NULL,NULL,NULL,NULL),(203,5,'Sifon Simple RAO',0.00,88,'2020-03-03 11:30:05',NULL,NULL,629,NULL,0.00,0,1,0,7,83,'unidades',244.61),(204,5,'Sopapa Vertical 40 cromada para ducha (4128 - awaduct)',0.00,88,'2020-03-03 11:32:05',NULL,NULL,632,NULL,0.00,0,1,0,7,86,'unidades',738.61),(205,5,'Termotanque Electrico de 53 Lts, con resistencia frontal',0.00,88,'2020-03-03 12:05:28',NULL,NULL,730,NULL,0.00,0,1,0,7,184,'unidades',1055.00),(206,5,'Tubo de 25 con rosca H de 3/4 Fusion (redeco)',0.00,88,'2020-03-03 12:35:39',NULL,NULL,731,NULL,0.00,0,1,0,7,185,'unidades',2.00),(207,5,'Mesada de marmol con 4 bachas redondas centradas p/griferia monocomando p/baño 2400 x 450mm con zocalo 1 cara larga y 1 corta',0.00,88,'2020-03-03 12:37:22',NULL,NULL,1026,NULL,0.00,0,1,0,7,186,'unidad',3500.00),(208,6,'Mesada de marmol con 2 bachas redondas centradas p/griferia monocomando p/baño 1400 x 450mm con zocalo 1 cara larga y 1 corta',0.00,88,'2020-03-03 12:38:09',NULL,NULL,1061,NULL,0.00,0,1,0,7,187,NULL,NULL),(209,6,'Placa de melamina para box de baño de 1360 x 1100 mm en TEKA ARTICA con bordes de 2 mm en PVC',0.00,88,'2020-03-03 12:39:04',NULL,NULL,1062,NULL,0.00,0,1,0,7,188,NULL,NULL),(210,6,'Espejo para baño de 2000 x 500 mm marco de madera color blanco',0.00,88,'2020-03-03 12:39:43',NULL,NULL,1063,NULL,0.00,0,1,0,7,189,NULL,NULL),(211,6,'Codo a 90° con rosca H de 32 (redeco)',0.00,88,'2020-03-03 12:48:33',NULL,NULL,1064,NULL,0.00,0,1,0,7,190,NULL,NULL),(212,6,'Codo a 90° fusion de 32 (redeco)',0.00,88,'2020-03-03 12:49:08',NULL,NULL,1065,NULL,0.00,0,1,0,7,191,NULL,NULL),(213,6,'Cupla reduccion de 32 a 25 fusion (redeco)',0.00,88,'2020-03-03 12:49:42',NULL,NULL,1066,NULL,0.00,0,1,0,7,192,NULL,NULL),(214,6,'Tee de 32 fusicion (redeco)',0.00,88,'2020-03-03 12:50:06',NULL,NULL,1067,NULL,0.00,0,1,0,7,193,NULL,NULL),(215,5,'Chapa Galvanizada Techo Acanalada C-25, natural',0.00,88,'2020-03-03 13:08:27',NULL,NULL,160,NULL,0.00,0,1,0,2,28,'x M2',545.00),(216,5,'Chapa lisa  (1,22x3,00x1,2) ',0.00,88,'2020-03-03 13:09:52',NULL,NULL,161,NULL,0.00,0,1,0,2,29,'x M2',1936.00),(217,5,'Chapa lisa  (1,22x3,00x1,2) ',0.00,88,'2020-03-04 03:46:53',NULL,NULL,161,NULL,0.00,0,1,0,2,29,'Lamina',1936.00),(218,5,'Chapa trapezoidal T101 ancho 1,10 mts *BLANCO*',0.00,88,'2020-03-06 10:56:59',NULL,NULL,162,NULL,0.00,0,1,0,2,30,'x ML ',1086.22),(219,5,'plegado Cumbrera (segœn plano)',0.00,88,'2020-03-06 10:58:46',NULL,NULL,204,NULL,0.00,0,1,0,2,72,'x ML',1.00),(220,6,'Recorte para puerta de panel 600 x 2000',0.00,88,'2020-03-06 11:02:09',NULL,NULL,1068,NULL,0.00,0,1,0,2,94,NULL,NULL),(221,6,'Recorte para puerta de panel 700 x 2000',0.00,88,'2020-03-06 11:02:50',NULL,NULL,1069,NULL,0.00,0,1,0,2,95,NULL,NULL),(222,6,'Recorte para puerta de panel 800 x 2000',0.00,88,'2020-03-06 11:03:12',NULL,NULL,1070,NULL,0.00,0,1,0,2,96,NULL,NULL),(223,6,'Recorte para puerta de panel 900 x 2000',0.00,88,'2020-03-06 11:03:28',NULL,NULL,1071,NULL,0.00,0,1,0,2,97,NULL,NULL),(224,5,'Cinta Metrica Dogo 8 Mts Reforzada (DOGO)',0.00,88,'2020-03-06 11:42:56',NULL,NULL,383,NULL,0.00,0,1,0,6,42,'unidades',1500.00),(225,5,'Chapa Galvanizada Techo Acanalada C-25, natural',0.00,88,'2020-03-06 11:46:48',NULL,NULL,160,NULL,0.00,0,1,0,2,28,'x ML',545.00),(226,5,'Chapa lisa  (1,22x3,00x1,2) ',0.00,88,'2020-03-06 11:47:13',NULL,NULL,161,NULL,0.00,0,1,0,2,29,'Plancha',1936.00),(227,3,NULL,2.50,72,'2020-03-07 07:54:51',NULL,NULL,2,NULL,2.00,5,0,0,NULL,NULL,NULL,NULL),(228,3,NULL,4.20,72,'2020-03-07 07:59:17',NULL,NULL,2,NULL,4.20,5,0,0,NULL,NULL,NULL,0.00),(229,2,NULL,13.00,72,'2020-03-09 09:58:04',NULL,19,1,NULL,0.00,5,0,0,NULL,NULL,NULL,0.00),(230,5,'Perfil C Galvanizado De 100 X 50 X 15 X 2 Mm',0.00,88,'2020-03-10 06:06:31',NULL,NULL,187,NULL,0.00,0,1,0,2,55,'unidades',1.00),(231,5,'Perfil C Chapa Galvanizada De 140 X 60 X 20 X 2 Mm',0.00,88,'2020-03-10 06:07:14',NULL,NULL,188,NULL,0.00,0,1,0,2,56,'unidades',1.00),(232,5,'Perfil C Chapa Galvanizada De 100 X 50 X 15 X 2 Mm',0.00,88,'2020-03-10 06:07:35',NULL,NULL,187,NULL,0.00,0,1,0,2,55,'unidades',1.00),(233,5,'Perfil C Chapa Glvanizada 80mm X 40mm X 15mm EN 2Mm ',0.00,88,'2020-03-10 06:08:21',NULL,NULL,189,NULL,0.00,0,1,0,2,57,'Tiras 6 Mts',3690.00),(234,5,'Perfil C Chapa Galvanizada De 140 X 60 X 20 X 2 Mm',0.00,88,'2020-03-10 06:10:22',NULL,NULL,188,NULL,0.00,0,1,0,2,56,'Tiras 6 Mts',1.00),(235,5,'Perfil C Chapa Galvanizada De 100 X 50 X 15 X 2 Mm',0.00,88,'2020-03-10 06:10:40',NULL,NULL,187,NULL,0.00,0,1,0,2,55,'Tira 6 Mts',1.00),(236,5,'Perfil C Chapa Galvanizada De 100 X 50 X 15 X 1.6 Mm',0.00,88,'2020-03-10 06:11:23',NULL,NULL,187,NULL,0.00,0,1,0,2,55,'Tira 6 Mts',1.00),(237,5,'Plegado cubre caño (2)  * 10x80x50mm ',0.00,88,'2020-03-10 06:17:49',NULL,NULL,202,NULL,0.00,0,1,0,2,70,'Tira de 3 Mts',563.00),(238,5,'Plegado cubre caño aire 20x50x80x50x20mm en Chapa Lisa Negra',0.00,88,'2020-03-10 06:18:54',NULL,NULL,203,NULL,0.00,0,1,0,2,71,'unidades',1.00),(239,5,'Chapa Estampada Antideslizante 16 (1,60 Mm) 2,44 X 1,22',0.00,88,'2020-03-10 06:29:01',NULL,NULL,191,NULL,0.00,0,1,0,2,59,'Plancha 2.44 x 1.22',1936.00),(240,5,'Chapa Estampada Antideslizante 16 (1,60 Mm) Semilla Melon',0.00,88,'2020-03-10 06:29:41',NULL,NULL,191,NULL,0.00,0,1,0,2,59,'Plancha de 2.44 x 1.22',1936.00),(241,5,'PLANCHA DE SEMILLA DE MELON 1,25 x 2,44 mts e 3,2mm',0.00,88,'2020-03-10 06:50:57',NULL,NULL,192,NULL,0.00,0,1,0,2,60,'Plancha',5458.00),(242,5,'PLANCHA DE SEMILLA DE MELON 1,25 x 3,00 mts e 3,2mm',0.00,88,'2020-03-10 06:51:07',NULL,NULL,193,NULL,0.00,0,1,0,2,61,'Plancha',7191.00),(243,5,'Chapa Estampada Antideslizante 16 (1,60 Mm) de 2.44 x 1.22 Semilla Melon',0.00,88,'2020-03-10 06:51:29',NULL,NULL,191,NULL,0.00,0,1,0,2,59,'Plancha ',1936.00),(244,5,'Caño estructural 100 x 100 x 1,6 mm * 6 mts',0.00,88,'2020-03-10 12:57:35',NULL,NULL,139,NULL,0.00,0,1,0,2,7,'unidades',3452.00),(245,5,'Caño estructural 100 x 100 x 2 mm.',0.00,88,'2020-03-10 12:57:48',NULL,NULL,140,NULL,0.00,0,1,0,2,8,'unidades',3784.00),(246,5,'Caño estructural 100 x 100 x 3.2 mm.',0.00,88,'2020-03-10 12:58:01',NULL,NULL,141,NULL,0.00,0,1,0,2,9,'unidades',6297.00),(247,5,'Caño estructural 100 x 50 x 2 mm',0.00,88,'2020-03-10 12:58:12',NULL,NULL,142,NULL,0.00,0,1,0,2,10,'unidades',3630.00),(248,5,'Caño estructural 20 x 20 x 1,6 mm',0.00,88,'2020-03-10 12:58:25',NULL,NULL,143,NULL,0.00,0,1,0,2,11,'unidades',660.00),(249,5,'Caño estructural 40 x 20 x 1,6 mm',0.00,88,'2020-03-10 12:58:39',NULL,NULL,144,NULL,0.00,0,1,0,2,12,'unidades',1007.00),(250,5,'Caño estructural 40 x 40 x 1,6 mm',0.00,88,'2020-03-10 12:58:51',NULL,NULL,145,NULL,0.00,0,1,0,2,13,'unidades',1354.00),(251,5,'Caño estructural 40 x 40 x 2 mm',0.00,88,'2020-03-10 12:59:08',NULL,NULL,146,NULL,0.00,0,1,0,2,14,'unidades',1584.00),(252,5,'Caño estructural 50 x 20 x 1,6 mm',0.00,88,'2020-03-10 12:59:19',NULL,NULL,147,NULL,0.00,0,1,0,2,15,'unidades',1199.00),(253,5,'Caño Estructural 50 x 30 x 1,6 mm.',0.00,88,'2020-03-10 12:59:31',NULL,NULL,148,NULL,0.00,0,1,0,2,16,'unidades',1364.00),(254,6,'Plegado de Cenefa de Terminacion en Chapa Lisa de 50x600x100x2x6000 en 1.2mm',0.00,88,'2020-03-11 05:26:27',NULL,NULL,1072,NULL,0.00,0,1,0,2,98,NULL,0.00),(255,6,'Plegado de Cenefa de Terminacion en Chapa Lisa de 50x600x100x20x6100 en 1.2mm',0.00,88,'2020-03-11 05:27:45',NULL,NULL,1073,NULL,0.00,0,1,0,2,99,NULL,0.00),(256,5,'Perfil \"T\" en Aluminio Crudo 25x25mm en 1,25mm de espesor',0.00,88,'2020-03-11 06:31:37',NULL,NULL,186,NULL,0.00,0,1,0,2,54,'Tira de 6 Mts',786.00),(257,5,'Perfil De Aluminio T 25 X 1,5 Blanco ',0.00,88,'2020-03-11 06:31:58',NULL,NULL,190,NULL,0.00,0,1,0,2,58,'Tira de 6 Mts',786.00),(258,5,'Perfil De Aluminio \"T\"  25 X 1,5 Blanco ',0.00,88,'2020-03-11 06:33:47',NULL,NULL,190,NULL,0.00,0,1,0,2,58,'Tira de 6 Mts',786.00),(259,5,'Cubo p/sugecion de Modulos   ESPESOR 5 MM ',0.00,88,'2020-03-11 06:34:29',NULL,NULL,167,NULL,0.00,2700,1,0,2,35,'unidades',2662.00),(260,6,'Plegado de Cenefa de Terminacion en Chapa Lisa de 150x150x600mm en 1.2mm',0.00,88,'2020-03-11 06:36:29',NULL,NULL,1074,NULL,0.00,0,1,0,2,100,NULL,0.00),(261,6,'Perfil \"H\" Union PVC',0.00,88,'2020-03-11 06:39:09',NULL,NULL,1075,NULL,0.00,0,1,1,2,101,NULL,0.00),(262,5,'Perfil \"H\" Union PVC',0.00,88,'2020-03-11 06:39:25',NULL,NULL,1075,NULL,0.00,494,1,1,2,101,'Tira de 6 Mts',0.00),(263,5,'Perfil \"H\" Union PVC',0.00,88,'2020-03-11 06:39:36',NULL,NULL,1075,NULL,0.00,0,1,1,2,101,'Tira de 6 Mts',0.00),(264,6,'Grampa Soporte para Caño 2\" x 4\" (05x10cm) Zincada',0.00,88,'2020-03-11 09:47:58',NULL,NULL,1076,NULL,0.00,0,1,1,2,102,NULL,0.00),(265,6,'Perfil \"J\" Terminación PVC',0.00,88,'2020-03-11 12:32:23',NULL,NULL,1077,NULL,0.00,0,1,0,2,103,NULL,0.00),(266,5,'Perfil C Chapa Galvanizada 80mm X 40mm X 15mm EN 2Mm ',0.00,88,'2020-03-12 10:00:05',NULL,NULL,189,NULL,0.00,0,1,0,2,57,'Tiras 6 Mts',2956.15),(267,2,NULL,2.00,NULL,'2020-03-12 10:27:28',NULL,20,803,NULL,4.90,0,0,0,NULL,NULL,NULL,0.00),(268,2,NULL,0.02,NULL,'2020-03-12 10:27:28',NULL,20,7,NULL,280.98,300,0,0,NULL,NULL,NULL,0.00),(269,2,NULL,4.00,NULL,'2020-03-12 10:27:29',NULL,20,3,NULL,516.00,500,0,0,NULL,NULL,NULL,0.00),(270,5,'Cumbrera Sinusoidal O Acanalada Cincalum C25',0.00,88,'2020-03-17 04:29:11',NULL,NULL,204,NULL,0.00,0,1,0,2,72,'x ML',1.00),(271,5,'Caño Redondo 114,30 ¯ x 1,59 LF  ',0.00,88,'2020-03-17 04:41:29',NULL,NULL,155,NULL,0.00,0,1,0,2,23,'Tira 6 mts',2909.00),(272,5,'Caño redondo 3 1/2  x 2 mm ',0.00,88,'2020-03-17 04:41:53',NULL,NULL,156,NULL,0.00,0,1,0,2,24,'Tira 6 mts',1604.00),(273,5,'Caño Redondo 4 1/2\" ¯ x1/4\" ',0.00,88,'2020-03-17 04:42:19',NULL,NULL,157,NULL,0.00,0,1,0,2,25,'Tira 6 Mts',7941.00),(274,5,'Caño Redondo 4 1/2\"  x1/4\" ',0.00,88,'2020-03-17 04:42:30',NULL,NULL,157,NULL,0.00,0,1,0,2,25,'Tira 6 Mts',7941.00),(275,5,'Caño Redondo 44,45 ¯ x 1,59 LF ',0.00,88,'2020-03-17 04:42:52',NULL,NULL,158,NULL,0.00,0,1,0,2,26,'Tira 6 Mts',1141.00),(276,5,'Ca–o Redondo 50,80  x 1,59 LF  ',0.00,88,'2020-03-17 04:43:19',NULL,NULL,159,NULL,0.00,0,1,0,2,27,'Tira 6 mts',1078.00),(277,5,'Caño Redondo 50,80  x 1,59 LF  ',0.00,88,'2020-03-17 04:43:29',NULL,NULL,159,NULL,0.00,0,1,0,2,27,'Tira 6 mts',1078.00),(278,5,'Caño Redondo 44,45  x 1,59 LF ',0.00,88,'2020-03-17 04:43:51',NULL,NULL,158,NULL,0.00,0,1,0,2,26,'Tira 6 Mts',1141.00),(279,5,'Caño Redondo 114,30 x 1,59 LF  ',0.00,88,'2020-03-17 04:44:04',NULL,NULL,155,NULL,0.00,0,1,0,2,23,'Tira 6 mts',2909.00),(280,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 250-16-20 ) AN: 1.22 x La 3.00 x ESp 1,6 MM  ** 3,66 ',0.00,88,'2020-03-17 04:45:02',NULL,NULL,180,NULL,0.00,0,1,0,2,48,'Plancha',2568.00),(281,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 250-16-20 ) AN: 1.22 x La 3.00 x ESp 1,6 MM  *Mediana*',0.00,88,'2020-03-17 05:05:19',NULL,NULL,180,NULL,0.00,0,1,0,2,48,'Plancha',2568.00),(282,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 250-16-20 ) AN: 1.22 x La 3.00 x ESp 1,6 MM  *Chica*',0.00,88,'2020-03-17 05:05:32',NULL,NULL,180,NULL,0.00,0,1,0,2,48,'Plancha',2568.00),(283,5,'Malla Romboidal industrial (METAL DESPLEGADO ( 450-20-30 ) AN: 1.22 x La 3.00 x ESp 2 MM  *Mediana*',0.00,88,'2020-03-17 05:05:59',NULL,NULL,181,NULL,0.00,0,1,0,2,49,'Plancha',1955.00),(284,5,'Malla Romboidal IND. METAL DESPLEGADO (450-30-30) AN: 1.00 x La 3.00 x ESp 3.2 MM, *Grande*',0.00,88,'2020-03-17 05:13:56',NULL,NULL,182,NULL,0.00,2,1,0,2,50,'Plancha',2208.00),(285,6,'Glade',0.00,72,'2020-03-17 06:07:24',NULL,NULL,1078,NULL,0.00,5,1,0,13,24,NULL,0.00),(286,5,'DWE4214 - DEWALT AMOLADORA 4 1/2\" 1200    C/GATILLO',0.00,84,'2020-03-18 06:13:58',NULL,NULL,299,NULL,0.00,0,1,0,5,1,'unidades',11002.00),(287,5,'DWE4577 - Amoladora Angular DEWALT de 7\'  (180mm 2700 W)',0.00,84,'2020-03-18 06:14:34',NULL,NULL,310,NULL,0.00,0,1,0,5,12,'unidades',23069.00),(288,5,'DWE4212 - Amoladora de 4\'',0.00,84,'2020-03-18 06:15:10',NULL,NULL,311,NULL,0.00,0,1,0,5,13,'unidades',0.00),(289,5,'6117-59A - Amoladora de 4\'',0.00,84,'2020-03-18 06:22:29',NULL,NULL,312,NULL,0.00,0,1,0,5,14,'unidades',0.00),(290,5,'9558NB - Amoladora de 4\'',0.00,84,'2020-03-18 06:22:55',NULL,NULL,313,NULL,0.00,0,1,0,5,15,'unidades',0.00),(291,5,'D28136 - Amoladora de 4\'',0.00,84,'2020-03-18 06:23:21',NULL,NULL,314,NULL,0.00,0,1,0,5,16,'unidades',0.00),(292,5,'DW752 - Amoladora de banco',0.00,84,'2020-03-18 06:25:19',NULL,NULL,316,NULL,0.00,0,1,0,5,18,'unidades',0.00),(293,1,NULL,4.00,92,'2020-03-18 06:54:35',18,NULL,1,NULL,4.00,5,0,0,NULL,NULL,NULL,0.00),(294,2,NULL,12.00,92,'2020-03-18 07:11:48',NULL,21,3,NULL,504.00,500,0,0,NULL,NULL,NULL,0.00),(295,2,NULL,23.00,92,'2020-03-18 07:11:49',NULL,21,4,NULL,83.00,10,0,0,NULL,NULL,NULL,0.00),(296,6,'Limpia Motor Desengrasante Auto',0.00,88,'2020-03-18 07:16:01',NULL,NULL,1079,NULL,0.00,1,1,0,13,25,NULL,0.00),(297,6,'Aceite Selenia 15w40 Original Fiat',0.00,88,'2020-03-18 07:16:58',NULL,NULL,1080,NULL,0.00,1,1,0,8,16,NULL,0.00),(298,6,'hierro fuerte 3',0.00,72,'2020-03-18 08:26:46',NULL,NULL,1081,NULL,0.00,5,1,0,2,104,NULL,0.00),(299,5,'Antipanico con boton central',0.00,88,'2020-03-18 09:28:50',NULL,NULL,371,NULL,0.00,0,1,0,6,30,'unidades',1.00),(300,5,'Protector Facial Vincha (sin Malla) Marca LIBUS',0.00,88,'2020-03-18 09:29:55',NULL,NULL,497,NULL,0.00,0,1,0,6,156,'unidades',793.00),(301,5,'Burlete de puerta 5 x 10  (PA25)',0.00,88,'2020-03-18 09:31:39',NULL,NULL,365,NULL,0.00,0,1,0,6,24,'unidades',15.00),(302,5,'Burletes medianos para auto   (PA24)',0.00,88,'2020-03-18 09:32:02',NULL,NULL,366,NULL,0.00,0,1,0,6,25,'unidades',101.00),(303,6,'Cama Cucheta de Caños Estructurales',0.00,88,'2020-03-18 09:35:18',NULL,NULL,1082,NULL,0.00,0,1,0,2,105,NULL,0.00),(304,6,'Colchón de 1 Plaza Espuma Alta Densidad 80KG',0.00,88,'2020-03-18 11:23:39',NULL,NULL,1083,NULL,0.00,0,1,0,3,72,NULL,0.00),(305,5,'Hoja Cierra caladora larga Kit 5 Hojas, (1,6mm-3,2mm),(1/16\" - 1/8\")  Marca: Starret BU424',0.00,88,'2020-03-18 11:37:13',NULL,NULL,440,NULL,0.00,0,1,0,6,99,'Kit 5',634.00),(306,5,'Hoja Cierra caladora larga Kit 5 Hojas, (2,5-6mm),(1/16\" - 1/8\")  Marca BOSH T318B',0.00,88,'2020-03-18 11:39:08',NULL,NULL,441,NULL,0.00,0,1,0,6,100,'Kit 5 ',623.00),(307,5,'Repuesto Blister para cutter de 18mm',0.00,88,'2020-03-18 11:53:13',NULL,NULL,363,NULL,0.00,0,1,0,6,22,'unidades',93.00),(308,1,NULL,2.00,72,'2020-03-20 11:19:12',19,NULL,2,NULL,6.20,5,0,0,NULL,NULL,NULL,0.00),(309,1,NULL,5.00,72,'2020-03-20 11:22:38',20,NULL,2,NULL,11.20,5,0,0,NULL,NULL,NULL,0.00),(310,1,NULL,3.00,72,'2020-03-22 15:30:53',21,NULL,2,NULL,14.20,5,0,0,NULL,NULL,NULL,0.00),(311,1,NULL,20.00,72,'2020-03-22 15:52:14',22,NULL,1060,NULL,21.00,0,0,0,NULL,NULL,NULL,0.00),(312,1,NULL,2.00,72,'2020-03-22 16:03:33',23,NULL,1,NULL,6.00,5,0,0,NULL,NULL,NULL,0.00),(313,1,NULL,30.00,72,'2020-03-22 16:05:53',24,NULL,2,NULL,44.20,5,0,0,NULL,NULL,NULL,0.00),(314,1,NULL,4.00,72,'2020-03-22 16:30:17',25,NULL,1,NULL,10.00,5,0,0,NULL,NULL,NULL,0.00),(315,1,NULL,5.00,72,'2020-03-22 16:30:55',26,NULL,1,NULL,15.00,5,0,0,NULL,NULL,NULL,0.00),(316,1,NULL,5.00,72,'2020-03-22 16:30:55',26,NULL,2,NULL,49.20,5,0,0,NULL,NULL,NULL,0.00),(317,2,NULL,5.00,72,'2020-03-30 01:33:56',NULL,22,1,NULL,10.00,5,0,0,NULL,NULL,NULL,0.00);
/*!40000 ALTER TABLE `insumos_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `id_modulo_estado` tinyint(4) DEFAULT '1' COMMENT '''creado, en produccion, en pausa, finalizado, etc''',
  `cotizacion` varchar(45) DEFAULT NULL,
  `chasis` varchar(150) DEFAULT '0',
  `cliente` varchar(150) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'DEMO SISTEMA',5,NULL,'1','Cliente',1),(2,'garita 5x2.50',5,NULL,'1020','Cliente',1),(3,'ACTC 2020',2,NULL,'2016','Cliente',1),(4,'reparaciones varias fco. alvarez',2,NULL,'Presupuesto Laura','Cliente',1),(5,'demo 2',2,NULL,'1','Cliente',1),(6,'d1',2,NULL,'a1','Cliente',1),(7,'d2',2,NULL,'a2','Cliente',1),(8,'d3',4,NULL,'a3','Cliente',1),(9,'d4',2,NULL,'a4','Cliente',1),(10,'daniel 1',2,NULL,'d1','Cliente',1),(11,'dan2',2,NULL,'d2','Cliente',1),(12,'d3',2,NULL,'d3','Cliente',1),(13,'d4',2,NULL,'d4','Cliente',1),(17,'d5',2,NULL,'d5','Cliente',1),(18,'ypf',2,NULL,'4040','Cliente',0),(19,'company ypf',5,NULL,'4040','Cliente',1),(23,'99999999',5,NULL,'9999999','Cliente',1),(25,'cc4',2,NULL,'cc4','Cliente',1),(30,'DESC',1,NULL,'PRUEBA','Cliente',0),(34,'DESC',1,NULL,'PRUEBA2','Cliente',0),(36,'DESC',1,NULL,'PRUEBA','Cliente',0),(37,'DESC',1,NULL,'PRUEBA','Cliente',0),(38,'DESC2',1,NULL,'PRUEBA2','Cliente',0),(39,'DESC',1,NULL,'PRUEBA','Cliente',0),(40,'DESC',1,NULL,'PRUEBA','Cliente',0),(41,'PRUEBA',1,NULL,'PRUEBA','Cliente',0),(42,'DESC',2,NULL,'PRUEBA','Cliente',1),(43,'1234',2,NULL,'1234','Cliente',1),(44,'d2',2,NULL,'c2','Cliente',1),(45,'d3',5,NULL,'mod333','Cliente',1),(46,'Sanitario YPF',2,NULL,'202008','Cliente',1),(47,'testtttt',1,NULL,'ch test 1','Cliente',0),(48,'oficina 6 mts',2,NULL,'cotizacion 26022020','Cliente',1),(49,'casa grande',2,NULL,'2000987655','Cliente',1),(50,'fdasfas',2,NULL,'coti 4','Cliente',1),(51,'de',2,NULL,'','Cliente',1),(52,'mat de montaje',2,'cotizacion 02032020V22','2222','Cliente',1),(53,'d1',2,'cotidan2','20200308444','Cliente',1),(56,'modulo x',2,'cot 5678','hola','Cliente',1),(57,'DESC',2,'COT 789465','','Cliente',1),(58,'fdd',2,'coti444',NULL,'Cliente',1),(59,'DESC HOLA',2,'COT DAN','','Cliente',1),(60,'desc',2,'test d','chassii','Cliente',1),(61,'Modulo Comedor 6.00 x 2.50',2,'12032020V33 - Coster','chass','Cliente',1),(62,'descr',2,'COT MAT','chass678','Cliente',1),(63,'DESC',2,'COT MM','chass67','Cliente',1),(64,'HOLA',2,'COT MAT65','chass6789','Cliente',1),(65,'desc',2,'COT mm','chass567','Cliente',1),(66,'DESC',2,'COTMJK','chass5679','Cliente',1),(67,'Hola',2,'COT MAT678','HOLAMAT','Cliente',1),(68,'hola',2,'COT689','MAT','Cliente',1),(69,'hola',2,'COT prueba','chassssss','Cliente',1);
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_estados`
--

DROP TABLE IF EXISTS `modulos_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_estados`
--

LOCK TABLES `modulos_estados` WRITE;
/*!40000 ALTER TABLE `modulos_estados` DISABLE KEYS */;
INSERT INTO `modulos_estados` VALUES (1,'Inicial'),(2,'En Produccion'),(3,'En Pausa'),(4,'Cancelado'),(5,'Finalizado');
/*!40000 ALTER TABLE `modulos_estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_insumos`
--

DROP TABLE IF EXISTS `modulos_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad_asignada` decimal(20,2) DEFAULT '0.00' COMMENT 'la cantidad de insumos que de ese tipo que lleva el modulo',
  `cantidad` decimal(20,2) DEFAULT '0.00' COMMENT 'la cantidad actual que ya se le asigno al modulo para su construccion',
  `activo` varchar(45) DEFAULT '1',
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=945 DEFAULT CHARSET=utf8 COMMENT='los insumos y cantidades que cada modulo lleva';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_insumos`
--

LOCK TABLES `modulos_insumos` WRITE;
/*!40000 ALTER TABLE `modulos_insumos` DISABLE KEYS */;
INSERT INTO `modulos_insumos` VALUES (1,1,306,10.00,0.00,'0',NULL),(2,1,37,1.00,0.00,'0',NULL),(3,1,121,0.00,0.00,'0',NULL),(4,1,40,0.00,0.00,'0',NULL),(5,1,50,0.00,0.00,'0',NULL),(6,2,307,11.00,13.00,'1',0),(7,2,37,5.00,5.00,'1',1),(8,2,36,0.00,3.00,'1',2),(9,2,32,4.00,4.00,'1',3),(10,3,307,0.00,0.00,'0',NULL),(11,3,37,0.00,0.00,'0',NULL),(12,3,36,0.00,0.00,'0',NULL),(13,1,7,10.00,20.00,'1',0),(14,1,803,2.00,2.00,'1',1),(15,2,5,0.00,8.00,'1',0),(16,2,1,0.00,2.00,'1',1),(17,3,810,0.00,1.00,'1',0),(18,3,761,0.00,1.00,'1',1),(19,3,606,0.00,1.00,'1',2),(20,3,561,0.00,3.00,'1',3),(21,3,572,0.00,3.00,'1',4),(22,3,785,0.00,1.00,'1',5),(23,3,766,0.00,1.00,'1',6),(24,3,786,0.00,1.00,'1',7),(25,3,34,0.00,1.00,'1',8),(26,3,854,0.00,1.00,'1',9),(27,3,1026,0.00,1.00,'1',10),(28,3,143,0.00,1.00,'1',11),(29,3,1027,0.00,1.00,'1',12),(30,3,1025,0.00,1.00,'1',13),(31,4,272,0.00,15.00,'1',0),(32,4,1024,0.00,1.00,'1',1),(33,4,1028,0.00,1.00,'1',2),(34,4,1029,0.00,1.00,'1',3),(35,4,1030,0.00,5.00,'1',4),(36,4,528,0.00,50.00,'1',5),(37,5,199,0.00,2.00,'1',0),(38,5,198,0.00,2.00,'1',1),(39,5,153,0.00,5.00,'1',2),(40,5,208,0.00,17.00,'1',3),(41,5,209,0.00,6.00,'1',4),(42,5,205,0.00,4.00,'1',5),(43,5,197,0.00,4.00,'1',6),(44,5,526,0.00,60.00,'1',7),(45,5,529,0.00,30.00,'1',8),(46,5,433,0.00,5.00,'1',9),(47,5,533,0.00,60.00,'1',10),(48,5,432,0.00,2.00,'1',11),(49,5,774,0.00,4.00,'1',12),(50,5,471,0.00,4.00,'1',13),(51,5,472,0.00,5.00,'1',14),(52,5,473,0.00,4.00,'1',15),(53,5,510,0.00,6.00,'1',16),(54,5,509,0.00,1.00,'1',17),(55,5,758,0.00,0.00,'1',18),(56,5,765,0.00,1.00,'1',19),(57,5,766,0.00,1.00,'1',20),(58,5,767,0.00,1.00,'1',21),(59,5,505,0.00,50.00,'1',22),(60,5,488,0.00,0.00,'1',23),(61,5,402,0.00,0.00,'1',24),(62,5,211,0.00,2.00,'1',25),(63,5,803,0.00,2.00,'1',26),(64,5,206,0.00,1.00,'1',27),(65,5,207,0.00,2.00,'1',28),(66,5,362,0.00,1.00,'1',29),(67,5,375,0.00,1.00,'1',30),(68,5,355,0.00,1.00,'1',31),(69,5,366,0.00,4.00,'1',32),(70,5,365,0.00,2.00,'1',33),(71,5,475,0.00,1.00,'1',34),(72,5,195,0.00,2.00,'1',35),(73,5,77,0.00,1.00,'1',36),(74,5,48,0.00,1.00,'1',37),(75,5,34,0.00,6.00,'1',38),(76,5,69,0.00,2.00,'1',39),(77,5,56,0.00,32.00,'1',40),(78,5,42,0.00,5.00,'1',41),(79,5,40,0.00,12.00,'1',42),(80,5,33,0.00,2.00,'1',43),(81,5,38,0.00,1.00,'1',44),(82,5,64,0.00,9.00,'1',45),(83,5,78,0.00,1.00,'1',46),(84,5,79,0.00,2.00,'1',47),(85,5,61,0.00,2.00,'1',48),(86,5,63,0.00,7.00,'1',49),(87,5,60,0.00,6.00,'1',50),(88,5,62,0.00,6.00,'1',51),(89,5,10,0.00,0.00,'1',52),(90,5,20,0.00,0.00,'1',53),(91,5,28,0.00,0.00,'1',54),(92,5,9,0.00,0.00,'1',55),(93,5,13,0.00,0.00,'1',56),(94,5,27,0.00,0.00,'1',57),(95,5,8,0.00,0.00,'1',58),(96,5,21,0.00,0.00,'1',59),(97,5,7,0.00,0.00,'1',60),(98,5,45,0.00,1.00,'1',61),(99,5,67,0.00,1.00,'1',62),(100,5,71,0.00,1.00,'1',63),(101,5,1,0.00,1.00,'1',64),(102,5,3,0.00,4.00,'1',65),(103,5,36,0.00,0.00,'1',66),(104,5,37,0.00,0.00,'1',67),(105,5,54,0.00,2.00,'1',68),(106,5,55,0.00,2.00,'1',69),(107,5,168,0.00,1.00,'1',70),(108,5,215,0.00,1.00,'1',71),(109,5,381,0.00,1.00,'1',72),(110,5,524,0.00,5.00,'1',73),(111,5,539,0.00,4.00,'1',74),(112,5,435,0.00,2.00,'1',75),(113,5,39,0.00,1.00,'1',76),(114,5,57,0.00,3.00,'1',77),(115,5,85,0.00,1.00,'1',78),(116,5,455,0.00,1.00,'1',79),(117,5,482,0.00,2.00,'1',80),(118,5,368,0.00,2.00,'1',81),(119,5,544,0.00,2.00,'1',82),(120,5,374,0.00,2.00,'1',83),(121,5,754,0.00,0.00,'1',84),(122,5,773,0.00,0.00,'1',85),(123,5,431,0.00,0.00,'1',86),(124,5,761,0.00,0.00,'1',87),(125,5,364,0.00,0.00,'1',88),(126,5,764,0.00,1.00,'1',89),(127,5,772,0.00,1.00,'1',90),(128,6,2,2.70,3.00,'1',0),(129,7,199,0.00,2.00,'1',0),(130,7,198,0.00,2.00,'1',1),(131,7,153,0.00,5.00,'1',2),(132,7,208,0.00,17.00,'1',3),(133,7,209,0.00,6.00,'1',4),(134,7,205,0.00,4.00,'1',5),(135,7,197,0.00,4.00,'1',6),(136,7,526,0.00,60.00,'1',7),(137,7,529,0.00,30.00,'1',8),(138,7,433,0.00,5.00,'1',9),(139,7,533,0.00,60.00,'1',10),(140,7,432,0.00,2.00,'1',11),(141,7,774,0.00,4.00,'1',12),(142,7,471,0.00,4.00,'1',13),(143,7,472,0.00,5.00,'1',14),(144,7,473,0.00,4.00,'1',15),(145,7,510,0.00,6.00,'1',16),(146,7,509,0.00,1.00,'1',17),(147,7,758,0.00,0.00,'1',18),(148,7,765,0.00,1.00,'1',19),(149,7,766,0.00,1.00,'1',20),(150,7,767,0.00,1.00,'1',21),(151,7,505,0.00,50.00,'1',22),(152,7,488,0.00,0.00,'1',23),(153,7,402,0.00,0.00,'1',24),(154,7,211,0.00,2.00,'1',25),(155,7,803,0.00,2.00,'1',26),(156,7,206,0.00,1.00,'1',27),(157,7,207,0.00,2.00,'1',28),(158,7,362,0.00,1.00,'1',29),(159,7,375,0.00,1.00,'1',30),(160,7,355,0.00,1.00,'1',31),(161,7,366,0.00,4.00,'1',32),(162,7,365,0.00,2.00,'1',33),(163,7,475,0.00,1.00,'1',34),(164,7,195,0.00,2.00,'1',35),(165,7,77,0.00,1.00,'1',36),(166,7,48,0.00,1.00,'1',37),(167,7,34,0.00,6.00,'1',38),(168,7,69,0.00,2.00,'1',39),(169,7,56,0.00,32.00,'1',40),(170,7,42,0.00,5.00,'1',41),(171,7,40,0.00,12.00,'1',42),(172,7,33,0.00,2.00,'1',43),(173,7,38,0.00,1.00,'1',44),(174,7,64,0.00,9.00,'1',45),(175,7,78,0.00,1.00,'1',46),(176,7,79,0.00,2.00,'1',47),(177,7,61,0.00,2.00,'1',48),(178,7,63,0.00,7.00,'1',49),(179,7,60,0.00,6.00,'1',50),(180,7,62,0.00,6.00,'1',51),(181,7,10,0.00,6.70,'1',52),(182,7,20,0.00,0.00,'1',53),(183,7,28,0.00,0.00,'1',54),(184,7,9,0.00,0.00,'1',55),(185,7,13,0.00,0.00,'1',56),(186,7,27,0.00,0.00,'1',57),(187,7,8,0.00,0.00,'1',58),(188,7,21,0.00,0.00,'1',59),(189,7,7,0.00,0.00,'1',60),(190,7,45,0.00,1.00,'1',61),(191,7,67,0.00,1.00,'1',62),(192,7,71,0.00,1.00,'1',63),(193,7,1,0.00,1.00,'1',64),(194,7,3,0.00,4.00,'1',65),(195,7,36,0.00,0.00,'1',66),(196,7,37,0.00,0.00,'1',67),(197,7,54,0.00,2.00,'1',68),(198,7,55,0.00,2.00,'1',69),(199,7,168,0.00,1.00,'1',70),(200,7,215,0.00,1.00,'1',71),(201,7,381,0.00,1.00,'1',72),(202,7,524,0.00,5.00,'1',73),(203,7,539,0.00,4.00,'1',74),(204,7,435,0.00,2.00,'1',75),(205,7,39,0.00,1.00,'1',76),(206,7,57,0.00,3.00,'1',77),(207,7,85,0.00,1.00,'1',78),(208,7,455,0.00,1.00,'1',79),(209,7,482,0.00,2.00,'1',80),(210,7,368,0.00,2.00,'1',81),(211,7,544,0.00,2.00,'1',82),(212,7,374,0.00,2.00,'1',83),(213,7,754,0.00,0.00,'1',84),(214,7,773,0.00,0.00,'1',85),(215,7,431,0.00,0.00,'1',86),(216,7,761,0.00,0.00,'1',87),(217,7,364,0.00,0.00,'1',88),(218,7,764,0.00,1.00,'1',89),(219,7,772,0.00,1.00,'1',90),(220,8,1,0.00,8.00,'1',0),(221,9,4,0.00,5.00,'1',0),(222,10,1,0.00,4.00,'1',0),(223,11,1,0.00,3.50,'1',0),(224,12,1,0.00,3.00,'1',0),(225,13,1,0.00,4.00,'1',0),(226,17,1,0.00,3.55,'1',0),(227,18,467,0.00,10.00,'1',0),(228,18,796,0.00,5.00,'1',1),(229,18,1,0.00,2.00,'1',2),(230,18,58,0.00,1.00,'1',3),(231,18,226,0.00,1.00,'1',4),(232,18,514,0.00,4.00,'1',5),(233,18,2,0.00,1.00,'1',6),(234,18,73,0.00,1.00,'1',7),(235,18,7,0.00,10.00,'1',8),(236,19,467,0.00,10.00,'1',0),(237,19,796,0.00,5.00,'1',1),(238,19,1,0.00,2.00,'1',2),(239,19,58,0.00,1.00,'1',3),(240,19,226,0.00,1.00,'1',4),(241,19,514,0.00,4.00,'1',5),(242,19,2,0.00,1.00,'1',6),(243,19,73,0.00,1.00,'1',7),(244,19,7,5.00,10.00,'1',8),(245,23,1,0.00,5.00,'1',0),(246,23,3,0.00,6.00,'1',1),(247,23,9,0.00,4.50,'1',2),(248,23,7,4.00,4.80,'1',3),(249,25,2,0.00,3.50,'1',0),(250,30,2,0.00,12.00,'1',0),(251,34,488,0.00,0.00,'1',0),(252,34,433,0.00,0.00,'1',1),(253,34,149,0.00,0.00,'1',2),(254,34,199,0.00,0.00,'1',3),(255,34,153,0.00,0.00,'1',4),(256,34,473,0.00,0.00,'1',5),(257,34,432,0.00,0.00,'1',6),(258,34,533,0.00,0.00,'1',7),(259,34,765,0.00,0.00,'1',8),(260,34,761,0.00,0.00,'1',9),(261,34,431,0.00,0.00,'1',10),(262,34,208,0.00,0.00,'1',11),(263,34,766,0.00,0.00,'1',12),(264,34,772,0.00,0.00,'1',13),(265,34,764,0.00,0.00,'1',14),(266,34,754,0.00,0.00,'1',15),(267,34,773,0.00,0.00,'1',16),(268,36,488,0.00,0.00,'1',0),(269,36,433,0.00,0.00,'1',1),(270,36,149,0.00,0.00,'1',2),(271,36,199,0.00,0.00,'1',3),(272,36,153,0.00,0.00,'1',4),(273,36,473,0.00,0.00,'1',5),(274,36,432,0.00,0.00,'1',6),(275,36,533,0.00,0.00,'1',7),(276,36,765,0.00,0.00,'1',8),(277,36,761,0.00,0.00,'1',9),(278,36,431,0.00,0.00,'1',10),(279,36,208,0.00,0.00,'1',11),(280,36,766,0.00,0.00,'1',12),(281,36,772,0.00,0.00,'1',13),(282,36,764,0.00,0.00,'1',14),(283,36,754,0.00,0.00,'1',15),(284,36,773,0.00,0.00,'1',16),(285,36,3,0.00,0.00,'1',17),(286,37,488,0.00,0.00,'1',0),(287,37,433,0.00,0.00,'1',1),(288,37,149,0.00,0.00,'1',2),(289,37,199,0.00,0.00,'1',3),(290,37,153,0.00,0.00,'1',4),(291,37,473,0.00,0.00,'1',5),(292,37,432,0.00,0.00,'1',6),(293,37,533,0.00,0.00,'1',7),(294,37,765,0.00,0.00,'1',8),(295,37,761,0.00,0.00,'1',9),(296,37,431,0.00,0.00,'1',10),(297,37,208,0.00,0.00,'1',11),(298,37,766,0.00,0.00,'1',12),(299,37,772,0.00,0.00,'1',13),(300,37,764,0.00,0.00,'1',14),(301,37,754,0.00,0.00,'1',15),(302,37,773,0.00,0.00,'1',16),(303,37,3,0.00,0.00,'1',17),(304,38,488,0.00,0.00,'1',0),(305,38,433,0.00,0.00,'1',1),(306,38,149,0.00,0.00,'1',2),(307,38,199,0.00,0.00,'1',3),(308,38,153,0.00,0.00,'1',4),(309,38,473,0.00,0.00,'1',5),(310,38,432,0.00,0.00,'1',6),(311,38,533,0.00,0.00,'1',7),(312,38,765,0.00,0.00,'1',8),(313,38,761,0.00,0.00,'1',9),(314,38,431,0.00,0.00,'1',10),(315,38,208,0.00,0.00,'1',11),(316,38,766,0.00,0.00,'1',12),(317,38,772,0.00,0.00,'1',13),(318,38,764,0.00,0.00,'1',14),(319,38,754,0.00,0.00,'1',15),(320,38,773,0.00,0.00,'1',16),(321,39,488,0.00,0.00,'1',0),(322,39,433,0.00,0.00,'1',1),(323,39,149,0.00,0.00,'1',2),(324,39,199,0.00,0.00,'1',3),(325,39,153,0.00,0.00,'1',4),(326,39,473,0.00,0.00,'1',5),(327,39,432,0.00,0.00,'1',6),(328,39,533,0.00,0.00,'1',7),(329,39,765,0.00,0.00,'1',8),(330,39,761,0.00,0.00,'1',9),(331,39,431,0.00,0.00,'1',10),(332,39,208,0.00,0.00,'1',11),(333,39,766,0.00,0.00,'1',12),(334,39,772,0.00,0.00,'1',13),(335,39,764,0.00,0.00,'1',14),(336,39,754,0.00,0.00,'1',15),(337,39,773,0.00,0.00,'1',16),(338,39,2,0.00,12.50,'1',17),(339,40,1,0.00,0.00,'1',0),(340,39,5,0.00,23.00,'1',18),(341,41,488,0.00,0.06,'1',0),(342,41,433,0.00,1.00,'1',1),(343,41,149,0.00,2.00,'1',2),(344,41,199,0.00,1.00,'1',3),(345,41,153,0.00,1.00,'1',4),(346,41,473,0.00,1.00,'1',5),(347,41,432,0.00,0.50,'1',6),(348,41,533,0.00,10.00,'1',7),(349,41,765,0.00,0.15,'1',8),(350,41,761,0.00,0.15,'1',9),(351,41,431,0.00,0.05,'1',10),(352,41,208,0.00,9.00,'1',11),(353,41,766,0.00,0.15,'1',12),(354,41,772,0.00,1.00,'1',13),(355,41,764,0.00,1.00,'1',14),(356,41,754,0.00,0.05,'1',15),(357,41,773,0.00,0.05,'1',16),(358,42,488,0.00,0.06,'1',0),(359,42,433,0.00,1.00,'1',1),(360,42,149,0.00,2.00,'1',2),(361,42,199,0.00,1.00,'1',3),(362,42,153,0.00,1.00,'1',4),(363,42,473,0.00,1.00,'1',5),(364,42,432,0.00,0.50,'1',6),(365,42,533,0.00,10.00,'1',7),(366,42,765,0.00,0.15,'1',8),(367,42,761,0.00,0.15,'1',9),(368,42,431,0.00,0.05,'1',10),(369,42,208,0.00,9.00,'1',11),(370,42,766,0.00,0.15,'1',12),(371,42,772,0.00,1.00,'1',13),(372,42,764,0.00,1.00,'1',14),(373,42,754,0.00,0.05,'1',15),(374,42,773,0.00,0.05,'1',16),(375,42,1,0.00,34.00,'1',17),(376,43,199,0.00,2.00,'1',7),(377,43,198,0.00,2.00,'1',8),(378,43,153,0.00,5.00,'1',9),(379,43,208,0.00,17.00,'1',10),(380,43,209,0.00,6.00,'1',11),(381,43,205,0.00,4.00,'1',12),(382,43,197,0.00,4.00,'1',13),(383,43,526,0.00,60.00,'1',14),(384,43,529,0.00,30.00,'1',15),(385,43,433,0.00,5.00,'1',16),(386,43,533,0.00,60.00,'1',17),(387,43,432,0.00,2.00,'1',18),(388,43,774,0.00,4.00,'1',19),(389,43,471,0.00,4.00,'1',20),(390,43,472,0.00,5.00,'1',21),(391,43,473,0.00,4.00,'1',22),(392,43,510,0.00,6.00,'1',23),(393,43,509,0.00,1.00,'1',24),(394,43,758,0.00,0.25,'1',25),(395,43,765,0.00,0.25,'1',26),(396,43,766,0.00,0.25,'1',27),(397,43,767,0.00,0.25,'1',28),(398,43,505,0.00,50.00,'1',29),(399,43,488,0.00,0.27,'1',30),(400,43,402,0.00,0.15,'1',31),(401,43,211,0.00,1.66,'1',32),(402,43,803,1.10,2.00,'1',33),(403,43,206,0.00,1.00,'1',34),(404,43,207,0.00,2.00,'1',35),(405,43,362,0.00,1.00,'1',36),(406,43,375,0.00,1.00,'1',37),(407,43,355,0.00,1.00,'1',38),(408,43,366,0.00,4.00,'1',39),(409,43,365,0.00,2.00,'1',40),(410,43,475,0.00,1.00,'1',41),(411,43,195,0.00,1.26,'1',42),(412,43,77,0.00,1.00,'1',43),(413,43,48,0.00,1.00,'1',44),(414,43,34,0.00,6.00,'1',45),(415,43,69,0.00,2.00,'1',46),(416,43,56,0.00,32.00,'1',47),(417,43,42,0.00,5.00,'1',48),(418,43,40,0.00,12.00,'1',49),(419,43,33,0.00,2.00,'1',50),(420,43,38,0.00,1.00,'1',51),(421,43,64,0.00,9.00,'1',52),(422,43,78,0.00,1.00,'1',53),(423,43,79,0.00,2.00,'1',54),(424,43,61,0.00,2.00,'1',55),(425,43,63,0.00,7.00,'1',56),(426,43,60,0.00,6.00,'1',57),(427,43,62,0.00,6.00,'1',58),(428,43,10,0.00,0.02,'1',59),(429,43,20,0.00,0.02,'1',60),(430,43,28,0.00,0.02,'1',61),(431,43,9,0.00,0.20,'1',62),(432,43,13,0.00,0.20,'1',63),(433,43,27,0.00,0.01,'1',64),(434,43,8,0.00,0.16,'1',65),(435,43,21,0.00,0.18,'1',66),(436,43,7,0.00,0.02,'1',67),(437,43,45,0.00,1.00,'1',68),(438,43,67,0.00,1.00,'1',69),(439,43,71,0.00,1.00,'1',70),(440,43,1,0.36,1.00,'1',71),(441,43,3,0.00,4.00,'1',72),(442,43,36,0.00,0.20,'1',73),(443,43,37,0.00,0.20,'1',74),(444,43,54,0.00,2.00,'1',75),(445,43,55,0.00,2.00,'1',76),(446,43,168,0.00,1.00,'1',77),(447,43,215,0.00,1.00,'1',78),(448,43,381,0.00,1.00,'1',79),(449,43,524,0.00,5.00,'1',80),(450,43,539,0.00,4.00,'1',81),(451,43,435,0.00,2.00,'1',82),(452,43,39,0.00,1.00,'1',83),(453,43,57,0.00,3.00,'1',84),(454,43,85,0.00,1.00,'1',85),(455,43,455,0.00,1.00,'1',86),(456,43,482,0.00,2.00,'1',87),(457,43,368,0.00,2.00,'1',88),(458,43,544,0.00,2.00,'1',89),(459,43,374,0.00,2.00,'1',90),(460,43,754,0.00,0.27,'1',91),(461,43,773,0.00,0.27,'1',92),(462,43,431,0.00,0.28,'1',93),(463,43,761,0.00,0.25,'1',94),(464,43,364,0.00,0.25,'1',95),(465,43,764,0.00,1.00,'1',96),(466,43,772,0.00,1.00,'1',97),(467,43,1036,0.00,0.00,'0',NULL),(468,43,1037,0.00,0.00,'0',NULL),(469,43,1035,0.00,0.00,'0',NULL),(470,43,1038,0.00,0.00,'0',NULL),(471,43,1040,0.00,0.00,'0',NULL),(472,43,1043,0.00,0.00,'0',NULL),(473,43,1044,0.00,0.00,'0',NULL),(474,44,1,0.00,8.00,'1',0),(475,44,2,0.00,3.59,'1',1),(476,45,1053,9.83,60.50,'1',0),(477,46,199,0.00,2.00,'1',0),(478,46,198,0.00,2.00,'1',1),(479,46,153,0.00,5.00,'1',2),(480,46,208,0.00,17.00,'1',3),(481,46,209,0.00,6.00,'1',4),(482,46,205,0.00,4.00,'1',5),(483,46,197,0.00,4.00,'1',6),(484,46,526,0.00,60.00,'1',7),(485,46,529,0.00,30.00,'1',8),(486,46,433,0.00,5.00,'1',9),(487,46,533,0.00,60.00,'1',10),(488,46,432,0.00,2.00,'1',11),(489,46,774,0.00,4.00,'1',12),(490,46,471,0.00,4.00,'1',13),(491,46,472,0.00,5.00,'1',14),(492,46,473,0.00,4.00,'1',15),(493,46,510,0.00,6.00,'1',16),(494,46,509,0.00,1.00,'1',17),(495,46,758,0.00,0.25,'1',18),(496,46,765,0.00,0.25,'1',19),(497,46,766,0.00,0.25,'1',20),(498,46,767,0.00,0.25,'1',21),(499,46,505,0.00,50.00,'1',22),(500,46,488,0.00,0.27,'1',23),(501,46,402,0.00,0.15,'1',24),(502,46,211,0.00,1.66,'1',25),(503,46,803,2.00,2.00,'1',26),(504,46,206,0.00,1.00,'1',27),(505,46,207,0.00,2.00,'1',28),(506,46,362,0.00,1.00,'1',29),(507,46,375,0.00,1.00,'1',30),(508,46,355,0.00,1.00,'1',31),(509,46,366,0.00,4.00,'1',32),(510,46,365,0.00,2.00,'1',33),(511,46,475,0.00,1.00,'1',34),(512,46,195,0.00,1.26,'1',35),(513,46,77,0.00,1.00,'1',36),(514,46,48,0.00,1.00,'1',37),(515,46,34,0.00,6.00,'1',38),(516,46,69,0.00,2.00,'1',39),(517,46,56,0.00,32.00,'1',40),(518,46,42,0.00,5.00,'1',41),(519,46,40,0.00,12.00,'1',42),(520,46,33,0.00,2.00,'1',43),(521,46,38,0.00,1.00,'1',44),(522,46,64,0.00,9.00,'1',45),(523,46,78,0.00,1.00,'1',46),(524,46,79,0.00,2.00,'1',47),(525,46,61,0.00,2.00,'1',48),(526,46,63,0.00,7.00,'1',49),(527,46,60,0.00,6.00,'1',50),(528,46,62,0.00,6.00,'1',51),(529,46,10,0.00,0.02,'1',52),(530,46,20,0.00,0.02,'1',53),(531,46,28,0.00,0.02,'1',54),(532,46,9,0.00,0.20,'1',55),(533,46,13,0.00,0.20,'1',56),(534,46,27,0.00,0.01,'1',57),(535,46,8,0.00,0.16,'1',58),(536,46,21,0.00,0.18,'1',59),(537,46,7,0.00,0.02,'1',60),(538,46,45,0.00,1.00,'1',61),(539,46,67,0.00,1.00,'1',62),(540,46,71,0.00,1.00,'1',63),(541,46,3,0.00,4.00,'1',64),(542,46,36,0.00,0.20,'1',65),(543,46,37,0.00,0.20,'1',66),(544,46,54,0.00,2.00,'1',67),(545,46,55,0.00,2.00,'1',68),(546,46,168,0.00,1.00,'1',69),(547,46,215,0.00,1.00,'1',70),(548,46,381,0.00,1.00,'1',71),(549,46,524,0.00,5.00,'1',72),(550,46,539,0.00,4.00,'1',73),(551,46,435,0.00,2.00,'1',74),(552,46,39,0.00,1.00,'1',75),(553,46,57,0.00,3.00,'1',76),(554,46,85,0.00,1.00,'1',77),(555,46,455,0.00,1.00,'1',78),(556,46,482,0.00,2.00,'1',79),(557,46,368,0.00,2.00,'1',80),(558,46,544,0.00,2.00,'1',81),(559,46,374,0.00,2.00,'1',82),(560,46,754,0.00,0.27,'1',83),(561,46,773,0.00,0.27,'1',84),(562,46,431,0.00,0.28,'1',85),(563,46,761,0.00,0.25,'1',86),(564,46,364,0.00,0.25,'1',87),(565,46,764,0.00,1.00,'1',88),(566,46,772,0.00,1.00,'1',89),(567,46,1,0.00,2.00,'1',90),(568,46,2,0.00,2.00,'1',91),(569,46,5,0.00,6.00,'1',92),(570,47,1036,0.00,27.00,'1',0),(571,47,1037,0.00,27.00,'1',1),(572,47,1035,0.00,108.00,'1',2),(573,47,1038,0.00,13.50,'1',3),(574,47,1040,0.00,0.50,'1',4),(575,47,1043,0.00,27.00,'1',5),(576,47,1044,0.00,13.50,'1',6),(577,48,199,0.00,2.00,'1',0),(578,48,198,0.00,2.00,'1',1),(579,48,153,0.00,5.00,'1',2),(580,48,208,0.00,17.00,'1',3),(581,48,209,0.00,6.00,'1',4),(582,48,205,0.00,4.00,'1',5),(583,48,197,0.00,4.00,'1',6),(584,48,526,0.00,60.00,'1',7),(585,48,529,0.00,30.00,'1',8),(586,48,433,0.00,5.00,'1',9),(587,48,533,0.00,60.00,'1',10),(588,48,432,0.00,2.00,'1',11),(589,48,774,0.00,4.00,'1',12),(590,48,471,0.00,4.00,'1',13),(591,48,472,0.00,5.00,'1',14),(592,48,473,0.00,4.00,'1',15),(593,48,510,0.00,6.00,'1',16),(594,48,509,0.00,1.00,'1',17),(595,48,758,0.00,0.25,'1',18),(596,48,765,0.00,0.25,'1',19),(597,48,766,0.00,0.25,'1',20),(598,48,767,0.00,0.25,'1',21),(599,48,505,0.00,50.00,'1',22),(600,48,488,0.00,0.27,'1',23),(601,48,402,0.00,0.15,'1',24),(602,48,211,0.00,1.66,'1',25),(603,48,803,2.00,2.00,'1',26),(604,48,206,0.00,1.00,'1',27),(605,48,207,0.00,2.00,'1',28),(606,48,362,0.00,1.00,'1',29),(607,48,375,0.00,1.00,'1',30),(608,48,355,0.00,1.00,'1',31),(609,48,366,0.00,4.00,'1',32),(610,48,365,0.00,2.00,'1',33),(611,48,475,0.00,1.00,'1',34),(612,48,195,0.00,1.26,'1',35),(613,48,77,0.00,1.00,'1',36),(614,48,48,0.00,1.00,'1',37),(615,48,34,0.00,6.00,'1',38),(616,48,69,0.00,2.00,'1',39),(617,48,56,0.00,32.00,'1',40),(618,48,42,0.00,5.00,'1',41),(619,48,40,0.00,12.00,'1',42),(620,48,33,0.00,2.00,'1',43),(621,48,38,0.00,1.00,'1',44),(622,48,64,0.00,9.00,'1',45),(623,48,78,0.00,1.00,'1',46),(624,48,79,0.00,2.00,'1',47),(625,48,61,0.00,2.00,'1',48),(626,48,63,0.00,7.00,'1',49),(627,48,60,0.00,6.00,'1',50),(628,48,62,0.00,6.00,'1',51),(629,48,10,0.00,0.02,'1',52),(630,48,20,0.00,0.02,'1',53),(631,48,28,0.00,0.02,'1',54),(632,48,9,0.00,0.20,'1',55),(633,48,13,0.00,0.20,'1',56),(634,48,27,0.00,0.01,'1',57),(635,48,8,0.00,0.16,'1',58),(636,48,21,0.00,0.18,'1',59),(637,48,7,0.02,0.02,'1',60),(638,48,45,0.00,1.00,'1',61),(639,48,67,0.00,1.00,'1',62),(640,48,71,0.00,1.00,'1',63),(641,48,1,13.00,15.00,'1',64),(642,48,3,4.00,4.00,'1',65),(643,48,36,0.00,0.20,'1',66),(644,48,37,0.00,0.20,'1',67),(645,48,54,0.00,2.00,'1',68),(646,48,55,0.00,2.00,'1',69),(647,48,168,0.00,1.00,'1',70),(648,48,215,0.00,1.00,'1',71),(649,48,381,0.00,1.00,'1',72),(650,48,524,0.00,5.00,'1',73),(651,48,539,0.00,4.00,'1',74),(652,48,435,0.00,2.00,'1',75),(653,48,39,0.00,1.00,'1',76),(654,48,57,0.00,3.00,'1',77),(655,48,85,0.00,1.00,'1',78),(656,48,455,0.00,1.00,'1',79),(657,48,482,0.00,2.00,'1',80),(658,48,368,0.00,2.00,'1',81),(659,48,544,0.00,2.00,'1',82),(660,48,374,0.00,2.00,'1',83),(661,48,754,0.00,0.27,'1',84),(662,48,773,0.00,0.27,'1',85),(663,48,431,0.00,0.28,'1',86),(664,48,761,0.00,0.25,'1',87),(665,48,364,0.00,0.25,'1',88),(666,48,764,0.00,1.00,'1',89),(667,48,772,0.00,1.00,'1',90),(668,49,1,0.00,4.00,'1',0),(669,50,467,0.00,10.00,'1',0),(670,50,796,0.00,5.00,'1',1),(671,50,1,0.00,2.00,'1',2),(672,50,58,0.00,1.00,'1',3),(673,50,226,0.00,1.00,'1',4),(674,50,514,0.00,4.00,'1',5),(675,50,2,0.00,1.00,'1',6),(676,50,73,0.00,1.00,'1',7),(677,50,7,0.00,10.00,'1',8),(678,51,2,0.00,2.00,'1',0),(679,52,559,0.00,3.00,'1',0),(680,52,668,0.00,3.00,'1',1),(681,52,567,0.00,5.00,'1',2),(682,52,103,0.00,15.00,'1',3),(683,52,81,0.00,3.00,'1',4),(684,52,1059,0.00,1.00,'1',5),(685,52,29,0.00,0.15,'1',6),(686,52,560,0.00,4.00,'1',7),(687,52,674,0.00,4.00,'1',8),(688,52,667,0.00,1.00,'1',9),(689,52,622,0.00,1.00,'1',10),(690,52,675,0.00,3.00,'1',11),(691,52,686,0.00,1.00,'1',12),(692,53,1,0.00,4.00,'1',0),(693,56,1,0.00,12.00,'1',0),(694,56,2,0.00,13.00,'1',1),(695,56,5,0.00,34.00,'1',2),(696,57,8,0.00,45.00,'1',0),(697,57,13,0.00,0.00,'0',NULL),(698,57,1,0.00,55.00,'1',2),(699,57,24,0.00,23.00,'1',3),(700,58,467,0.00,10.00,'1',0),(701,58,796,0.00,5.00,'1',1),(702,58,1,0.00,2.00,'1',2),(703,58,58,0.00,1.00,'1',3),(704,58,226,0.00,1.00,'1',4),(705,58,514,0.00,4.00,'1',5),(706,58,2,0.00,1.00,'1',6),(707,58,73,0.00,1.00,'1',7),(708,58,7,0.00,10.00,'1',8),(709,59,3,12.00,12.00,'1',0),(710,59,4,23.00,23.00,'1',1),(711,60,3,0.00,4.00,'1',0),(712,61,199,0.00,2.00,'1',0),(713,61,198,0.00,2.00,'1',1),(714,61,153,0.00,5.00,'1',2),(715,61,208,0.00,17.00,'1',3),(716,61,209,0.00,6.00,'1',4),(717,61,205,0.00,4.00,'1',5),(718,61,197,0.00,4.00,'1',6),(719,61,526,0.00,60.00,'1',7),(720,61,529,0.00,30.00,'1',8),(721,61,433,0.00,5.00,'1',9),(722,61,533,0.00,60.00,'1',10),(723,61,432,0.00,2.00,'1',11),(724,61,774,0.00,4.00,'1',12),(725,61,471,0.00,4.00,'1',13),(726,61,472,0.00,5.00,'1',14),(727,61,473,0.00,4.00,'1',15),(728,61,510,0.00,6.00,'1',16),(729,61,509,0.00,1.00,'1',17),(730,61,758,0.00,0.25,'1',18),(731,61,765,0.00,0.25,'1',19),(732,61,766,0.00,0.25,'1',20),(733,61,767,0.00,0.25,'1',21),(734,61,505,0.00,50.00,'1',22),(735,61,488,0.00,0.27,'1',23),(736,61,402,0.00,0.15,'1',24),(737,61,211,0.00,1.66,'1',25),(738,61,803,0.00,2.00,'1',26),(739,61,206,0.00,2.00,'1',27),(740,61,207,0.00,4.00,'1',28),(741,61,362,0.00,2.00,'1',29),(742,61,375,0.00,2.00,'1',30),(743,61,355,0.00,2.00,'1',31),(744,61,366,0.00,4.00,'1',32),(745,61,365,0.00,4.00,'1',33),(746,61,475,0.00,1.00,'1',34),(747,61,195,0.00,2.52,'1',35),(748,61,77,0.00,1.00,'1',36),(749,61,48,0.00,1.00,'1',37),(750,61,34,0.00,6.00,'1',38),(751,61,69,0.00,2.00,'1',39),(752,61,56,0.00,32.00,'1',40),(753,61,42,0.00,5.00,'1',41),(754,61,40,0.00,12.00,'1',42),(755,61,33,0.00,2.00,'1',43),(756,61,38,0.00,1.00,'1',44),(757,61,64,0.00,9.00,'1',45),(758,61,78,0.00,1.00,'1',46),(759,61,79,0.00,2.00,'1',47),(760,61,61,0.00,2.00,'1',48),(761,61,63,0.00,7.00,'1',49),(762,61,60,0.00,6.00,'1',50),(763,61,62,0.00,6.00,'1',51),(764,61,10,0.00,0.02,'1',52),(765,61,20,0.00,0.02,'1',53),(766,61,28,0.00,0.02,'1',54),(767,61,9,0.00,0.20,'1',55),(768,61,13,0.00,0.20,'1',56),(769,61,27,0.00,0.01,'1',57),(770,61,8,0.00,0.16,'1',58),(771,61,21,0.00,0.18,'1',59),(772,61,7,0.00,0.02,'1',60),(773,61,45,0.00,1.00,'1',61),(774,61,67,0.00,1.00,'1',62),(775,61,71,0.00,1.00,'1',63),(776,61,1,0.00,1.00,'1',64),(777,61,3,0.00,4.00,'1',65),(778,61,36,0.00,0.20,'1',66),(779,61,37,0.00,0.20,'1',67),(780,61,54,0.00,2.00,'1',68),(781,61,55,0.00,2.00,'1',69),(782,61,168,0.00,1.00,'1',70),(783,61,215,0.00,1.00,'1',71),(784,61,381,0.00,1.00,'1',72),(785,61,524,0.00,5.00,'1',73),(786,61,539,0.00,4.00,'1',74),(787,61,435,0.00,2.00,'1',75),(788,61,39,0.00,1.00,'1',76),(789,61,57,0.00,3.00,'1',77),(790,61,85,0.00,1.00,'1',78),(791,61,455,0.00,1.00,'1',79),(792,61,482,0.00,2.00,'1',80),(793,61,368,0.00,2.00,'1',81),(794,61,544,0.00,2.00,'1',82),(795,61,374,0.00,2.00,'1',83),(796,61,754,0.00,0.27,'1',84),(797,61,773,0.00,0.27,'1',85),(798,61,431,0.00,0.28,'1',86),(799,61,761,0.00,0.25,'1',87),(800,61,364,0.00,0.25,'1',88),(801,61,764,0.00,1.00,'1',89),(802,61,772,0.00,1.00,'1',90),(803,61,167,0.00,4.00,'1',91),(804,62,199,0.00,2.00,'1',0),(805,62,198,0.00,2.00,'1',1),(806,62,153,0.00,5.00,'1',2),(807,62,208,0.00,17.00,'1',3),(808,62,209,0.00,6.00,'1',4),(809,62,205,0.00,4.00,'1',5),(810,62,197,0.00,4.00,'1',6),(811,62,526,0.00,60.00,'1',7),(812,62,529,0.00,30.00,'1',8),(813,62,433,0.00,5.00,'1',9),(814,62,533,0.00,60.00,'1',10),(815,62,432,0.00,2.00,'1',11),(816,62,774,0.00,4.00,'1',12),(817,62,471,0.00,4.00,'1',13),(818,62,472,0.00,5.00,'1',14),(819,62,473,0.00,4.00,'1',15),(820,62,510,0.00,6.00,'1',16),(821,62,509,0.00,1.00,'1',17),(822,62,758,0.00,0.25,'1',18),(823,62,765,0.00,0.25,'1',19),(824,62,766,0.00,0.25,'1',20),(825,62,767,0.00,0.25,'1',21),(826,62,505,0.00,50.00,'1',22),(827,62,488,0.00,0.27,'1',23),(828,62,402,0.00,0.15,'1',24),(829,62,211,0.00,1.66,'1',25),(830,62,803,0.00,2.00,'1',26),(831,62,206,0.00,1.00,'1',27),(832,62,207,0.00,2.00,'1',28),(833,62,362,0.00,1.00,'1',29),(834,62,375,0.00,1.00,'1',30),(835,62,355,0.00,1.00,'1',31),(836,62,366,0.00,4.00,'1',32),(837,62,365,0.00,2.00,'1',33),(838,62,475,0.00,1.00,'1',34),(839,62,195,0.00,1.26,'1',35),(840,62,77,0.00,1.00,'1',36),(841,62,48,0.00,1.00,'1',37),(842,62,34,0.00,6.00,'1',38),(843,62,69,0.00,2.00,'1',39),(844,62,56,0.00,32.00,'1',40),(845,62,42,0.00,5.00,'1',41),(846,62,40,0.00,12.00,'1',42),(847,62,33,0.00,2.00,'1',43),(848,62,38,0.00,1.00,'1',44),(849,62,64,0.00,9.00,'1',45),(850,62,78,0.00,1.00,'1',46),(851,62,79,0.00,2.00,'1',47),(852,62,61,0.00,2.00,'1',48),(853,62,63,0.00,7.00,'1',49),(854,62,60,0.00,6.00,'1',50),(855,62,62,0.00,6.00,'1',51),(856,62,10,0.00,0.02,'1',52),(857,62,20,0.00,0.02,'1',53),(858,62,28,0.00,0.02,'1',54),(859,62,9,0.00,0.20,'1',55),(860,62,13,0.00,0.20,'1',56),(861,62,27,0.00,0.01,'1',57),(862,62,8,0.00,0.16,'1',58),(863,62,21,0.00,0.18,'1',59),(864,62,7,0.00,0.02,'1',60),(865,62,45,0.00,1.00,'1',61),(866,62,67,0.00,1.00,'1',62),(867,62,71,0.00,1.00,'1',63),(868,62,1,0.00,1.00,'1',64),(869,62,3,0.00,4.00,'1',65),(870,62,36,0.00,0.20,'1',66),(871,62,37,0.00,0.20,'1',67),(872,62,54,0.00,2.00,'1',68),(873,62,55,0.00,2.00,'1',69),(874,62,168,0.00,1.00,'1',70),(875,62,215,0.00,1.00,'1',71),(876,62,381,0.00,1.00,'1',72),(877,62,524,0.00,5.00,'1',73),(878,62,539,0.00,4.00,'1',74),(879,62,435,0.00,2.00,'1',75),(880,62,39,0.00,1.00,'1',76),(881,62,57,0.00,3.00,'1',77),(882,62,85,0.00,1.00,'1',78),(883,62,455,0.00,1.00,'1',79),(884,62,482,0.00,2.00,'1',80),(885,62,368,0.00,2.00,'1',81),(886,62,544,0.00,2.00,'1',82),(887,62,374,0.00,2.00,'1',83),(888,62,754,0.00,0.27,'1',84),(889,62,773,0.00,0.27,'1',85),(890,62,431,0.00,0.28,'1',86),(891,62,761,0.00,0.25,'1',87),(892,62,364,0.00,0.25,'1',88),(893,62,764,0.00,1.00,'1',89),(894,62,772,0.00,1.00,'1',90),(895,63,362,0.00,1.00,'1',0),(896,63,355,0.00,1.00,'1',1),(897,63,375,0.00,1.00,'1',2),(898,63,366,0.00,3.00,'1',3),(899,63,365,0.00,2.00,'1',4),(900,63,475,0.00,1.00,'1',5),(901,63,208,0.00,1.00,'1',6),(902,64,362,0.00,1.00,'1',0),(903,64,355,0.00,1.00,'1',1),(904,64,375,0.00,1.00,'1',2),(905,64,366,0.00,3.00,'1',3),(906,64,365,0.00,2.00,'1',4),(907,64,475,0.00,1.00,'1',5),(908,64,208,0.00,1.00,'1',6),(909,65,362,0.00,1.00,'1',0),(910,65,355,0.00,1.00,'1',1),(911,65,375,0.00,1.00,'1',2),(912,65,366,0.00,3.00,'1',3),(913,65,365,0.00,2.00,'1',4),(914,65,475,0.00,1.00,'1',5),(915,65,208,0.00,1.00,'1',6),(916,66,362,0.00,1.00,'1',0),(917,66,355,0.00,1.00,'1',1),(918,66,375,0.00,1.00,'1',2),(919,66,366,0.00,3.00,'1',3),(920,66,365,0.00,2.00,'1',4),(921,66,475,0.00,1.00,'1',5),(922,66,208,0.00,1.00,'1',6),(923,67,362,0.00,4.00,'1',0),(924,67,355,0.00,4.00,'1',1),(925,67,375,0.00,4.00,'1',2),(926,67,366,0.00,12.00,'1',3),(927,67,365,0.00,8.00,'1',4),(928,67,475,0.00,4.00,'1',5),(929,67,208,0.00,4.00,'1',6),(930,68,362,0.00,1.00,'1',0),(931,68,355,0.00,1.00,'1',1),(932,68,375,0.00,1.00,'1',2),(933,68,366,0.00,3.00,'1',3),(934,68,365,0.00,2.00,'1',4),(935,68,475,0.00,1.00,'1',5),(936,68,208,0.00,1.00,'1',6),(937,69,362,0.00,1.00,'1',0),(938,69,355,0.00,1.00,'1',1),(939,69,375,0.00,1.00,'1',2),(940,69,366,0.00,3.00,'1',3),(941,69,365,0.00,20.00,'1',4),(942,69,475,0.00,1.00,'1',5),(943,69,208,0.00,0.00,'0',NULL),(944,69,1,5.00,12.00,'1',7);
/*!40000 ALTER TABLE `modulos_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_insumos_diseno`
--

DROP TABLE IF EXISTS `modulos_insumos_diseno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_insumos_diseno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad_asignada` decimal(20,2) DEFAULT '0.00' COMMENT 'la cantidad de insumos que de ese tipo que lleva el modulo',
  `cantidad` decimal(20,2) DEFAULT '0.00' COMMENT 'la cantidad actual que ya se le asigno al modulo para su construccion',
  `activo` tinyint(4) DEFAULT '1',
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=944 DEFAULT CHARSET=utf8 COMMENT='los insumos y cantidades que cada modulo lleva';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_insumos_diseno`
--

LOCK TABLES `modulos_insumos_diseno` WRITE;
/*!40000 ALTER TABLE `modulos_insumos_diseno` DISABLE KEYS */;
INSERT INTO `modulos_insumos_diseno` VALUES (6,2,307,13.00,13.00,1,0),(7,2,37,5.00,5.00,1,1),(8,2,36,0.00,3.00,1,2),(9,2,32,4.00,4.00,1,3),(13,1,7,0.00,20.00,1,1),(14,1,803,0.00,2.00,1,3),(15,2,5,0.00,8.00,1,0),(16,2,1,0.00,2.00,1,1),(17,3,810,0.00,1.00,1,0),(18,3,761,0.00,1.00,1,1),(19,3,606,0.00,1.00,1,2),(20,3,561,0.00,3.00,1,3),(21,3,572,0.00,3.00,1,4),(22,3,785,0.00,1.00,1,5),(23,3,766,0.00,1.00,1,6),(24,3,786,0.00,1.00,1,7),(25,3,34,0.00,1.00,1,8),(26,3,854,0.00,1.00,1,9),(27,3,1026,0.00,1.00,1,10),(28,3,143,0.00,1.00,1,11),(29,3,1027,0.00,1.00,1,12),(30,3,1025,0.00,1.00,1,13),(31,4,272,0.00,15.00,1,0),(32,4,1024,0.00,1.00,1,1),(33,4,1028,0.00,1.00,1,2),(34,4,1029,0.00,1.00,1,3),(35,4,1030,0.00,5.00,1,4),(36,4,528,0.00,50.00,1,5),(37,5,199,0.00,2.00,1,0),(38,5,198,0.00,2.00,1,1),(39,5,153,0.00,5.00,1,2),(40,5,208,0.00,17.00,1,3),(41,5,209,0.00,6.00,1,4),(42,5,205,0.00,4.00,1,5),(43,5,197,0.00,4.00,1,6),(44,5,526,0.00,60.00,1,7),(45,5,529,0.00,30.00,1,8),(46,5,433,0.00,5.00,1,9),(47,5,533,0.00,60.00,1,10),(48,5,432,0.00,2.00,1,11),(49,5,774,0.00,4.00,1,12),(50,5,471,0.00,4.00,1,13),(51,5,472,0.00,5.00,1,14),(52,5,473,0.00,4.00,1,15),(53,5,510,0.00,6.00,1,16),(54,5,509,0.00,1.00,1,17),(55,5,758,0.00,0.00,1,18),(56,5,765,0.00,1.00,1,19),(57,5,766,0.00,1.00,1,20),(58,5,767,0.00,1.00,1,21),(59,5,505,0.00,50.00,1,22),(60,5,488,0.00,0.00,1,23),(61,5,402,0.00,0.00,1,24),(62,5,211,0.00,2.00,1,25),(63,5,803,0.00,2.00,1,26),(64,5,206,0.00,1.00,1,27),(65,5,207,0.00,2.00,1,28),(66,5,362,0.00,1.00,1,29),(67,5,375,0.00,1.00,1,30),(68,5,355,0.00,1.00,1,31),(69,5,366,0.00,4.00,1,32),(70,5,365,0.00,2.00,1,33),(71,5,475,0.00,1.00,1,34),(72,5,195,0.00,2.00,1,35),(73,5,77,0.00,1.00,1,36),(74,5,48,0.00,1.00,1,37),(75,5,34,0.00,6.00,1,38),(76,5,69,0.00,2.00,1,39),(77,5,56,0.00,32.00,1,40),(78,5,42,0.00,5.00,1,41),(79,5,40,0.00,12.00,1,42),(80,5,33,0.00,2.00,1,43),(81,5,38,0.00,1.00,1,44),(82,5,64,0.00,9.00,1,45),(83,5,78,0.00,1.00,1,46),(84,5,79,0.00,2.00,1,47),(85,5,61,0.00,2.00,1,48),(86,5,63,0.00,7.00,1,49),(87,5,60,0.00,6.00,1,50),(88,5,62,0.00,6.00,1,51),(89,5,10,0.00,0.00,1,52),(90,5,20,0.00,0.00,1,53),(91,5,28,0.00,0.00,1,54),(92,5,9,0.00,0.00,1,55),(93,5,13,0.00,0.00,1,56),(94,5,27,0.00,0.00,1,57),(95,5,8,0.00,0.00,1,58),(96,5,21,0.00,0.00,1,59),(97,5,7,0.00,0.00,1,60),(98,5,45,0.00,1.00,1,61),(99,5,67,0.00,1.00,1,62),(100,5,71,0.00,1.00,1,63),(101,5,1,0.00,1.00,1,64),(102,5,3,0.00,4.00,1,65),(103,5,36,0.00,0.00,1,66),(104,5,37,0.00,0.00,1,67),(105,5,54,0.00,2.00,1,68),(106,5,55,0.00,2.00,1,69),(107,5,168,0.00,1.00,1,70),(108,5,215,0.00,1.00,1,71),(109,5,381,0.00,1.00,1,72),(110,5,524,0.00,5.00,1,73),(111,5,539,0.00,4.00,1,74),(112,5,435,0.00,2.00,1,75),(113,5,39,0.00,1.00,1,76),(114,5,57,0.00,3.00,1,77),(115,5,85,0.00,1.00,1,78),(116,5,455,0.00,1.00,1,79),(117,5,482,0.00,2.00,1,80),(118,5,368,0.00,2.00,1,81),(119,5,544,0.00,2.00,1,82),(120,5,374,0.00,2.00,1,83),(121,5,754,0.00,0.00,1,84),(122,5,773,0.00,0.00,1,85),(123,5,431,0.00,0.00,1,86),(124,5,761,0.00,0.00,1,87),(125,5,364,0.00,0.00,1,88),(126,5,764,0.00,1.00,1,89),(127,5,772,0.00,1.00,1,90),(128,6,2,0.00,3.00,1,0),(129,7,199,0.00,2.00,1,0),(130,7,198,0.00,2.00,1,1),(131,7,153,0.00,5.00,1,2),(132,7,208,0.00,17.00,1,3),(133,7,209,0.00,6.00,1,4),(134,7,205,0.00,4.00,1,5),(135,7,197,0.00,4.00,1,6),(136,7,526,0.00,60.00,1,7),(137,7,529,0.00,30.00,1,8),(138,7,433,0.00,5.00,1,9),(139,7,533,0.00,60.00,1,10),(140,7,432,0.00,2.00,1,11),(141,7,774,0.00,4.00,1,12),(142,7,471,0.00,4.00,1,13),(143,7,472,0.00,5.00,1,14),(144,7,473,0.00,4.00,1,15),(145,7,510,0.00,6.00,1,16),(146,7,509,0.00,1.00,1,17),(147,7,758,0.00,0.00,1,18),(148,7,765,0.00,1.00,1,19),(149,7,766,0.00,1.00,1,20),(150,7,767,0.00,1.00,1,21),(151,7,505,0.00,50.00,1,22),(152,7,488,0.00,0.00,1,23),(153,7,402,0.00,0.00,1,24),(154,7,211,0.00,2.00,1,25),(155,7,803,0.00,2.00,1,26),(156,7,206,0.00,1.00,1,27),(157,7,207,0.00,2.00,1,28),(158,7,362,0.00,1.00,1,29),(159,7,375,0.00,1.00,1,30),(160,7,355,0.00,1.00,1,31),(161,7,366,0.00,4.00,1,32),(162,7,365,0.00,2.00,1,33),(163,7,475,0.00,1.00,1,34),(164,7,195,0.00,2.00,1,35),(165,7,77,0.00,1.00,1,36),(166,7,48,0.00,1.00,1,37),(167,7,34,0.00,6.00,1,38),(168,7,69,0.00,2.00,1,39),(169,7,56,0.00,32.00,1,40),(170,7,42,0.00,5.00,1,41),(171,7,40,0.00,12.00,1,42),(172,7,33,0.00,2.00,1,43),(173,7,38,0.00,1.00,1,44),(174,7,64,0.00,9.00,1,45),(175,7,78,0.00,1.00,1,46),(176,7,79,0.00,2.00,1,47),(177,7,61,0.00,2.00,1,48),(178,7,63,0.00,7.00,1,49),(179,7,60,0.00,6.00,1,50),(180,7,62,0.00,6.00,1,51),(181,7,10,0.00,6.70,1,52),(182,7,20,0.00,0.00,1,53),(183,7,28,0.00,0.00,1,54),(184,7,9,0.00,0.00,1,55),(185,7,13,0.00,0.00,1,56),(186,7,27,0.00,0.00,1,57),(187,7,8,0.00,0.00,1,58),(188,7,21,0.00,0.00,1,59),(189,7,7,0.00,0.00,1,60),(190,7,45,0.00,1.00,1,61),(191,7,67,0.00,1.00,1,62),(192,7,71,0.00,1.00,1,63),(193,7,1,0.00,1.00,1,64),(194,7,3,0.00,4.00,1,65),(195,7,36,0.00,0.00,1,66),(196,7,37,0.00,0.00,1,67),(197,7,54,0.00,2.00,1,68),(198,7,55,0.00,2.00,1,69),(199,7,168,0.00,1.00,1,70),(200,7,215,0.00,1.00,1,71),(201,7,381,0.00,1.00,1,72),(202,7,524,0.00,5.00,1,73),(203,7,539,0.00,4.00,1,74),(204,7,435,0.00,2.00,1,75),(205,7,39,0.00,1.00,1,76),(206,7,57,0.00,3.00,1,77),(207,7,85,0.00,1.00,1,78),(208,7,455,0.00,1.00,1,79),(209,7,482,0.00,2.00,1,80),(210,7,368,0.00,2.00,1,81),(211,7,544,0.00,2.00,1,82),(212,7,374,0.00,2.00,1,83),(213,7,754,0.00,0.00,1,84),(214,7,773,0.00,0.00,1,85),(215,7,431,0.00,0.00,1,86),(216,7,761,0.00,0.00,1,87),(217,7,364,0.00,0.00,1,88),(218,7,764,0.00,1.00,1,89),(219,7,772,0.00,1.00,1,90),(221,9,4,0.00,5.00,1,0),(222,10,1,0.00,4.00,1,0),(223,11,1,0.00,3.50,1,0),(224,12,1,0.00,3.00,1,0),(225,13,1,0.00,4.00,1,0),(226,17,1,0.00,3.55,1,0),(227,18,467,0.00,10.00,1,0),(228,18,796,0.00,5.00,1,1),(229,18,1,0.00,2.00,1,2),(230,18,58,0.00,1.00,1,3),(231,18,226,0.00,1.00,1,4),(232,18,514,0.00,4.00,1,5),(233,18,2,0.00,1.00,1,6),(234,18,73,0.00,1.00,1,7),(235,18,7,0.00,10.00,1,8),(236,19,467,0.00,10.00,1,0),(237,19,796,0.00,5.00,1,1),(238,19,1,0.00,2.00,1,2),(239,19,58,0.00,1.00,1,3),(240,19,226,0.00,1.00,1,4),(241,19,514,0.00,4.00,1,5),(242,19,2,0.00,1.00,1,6),(243,19,73,0.00,1.00,1,7),(244,19,7,0.00,10.00,1,8),(245,23,1,0.00,5.00,1,0),(246,23,3,0.00,6.00,1,1),(247,23,9,0.00,4.00,1,2),(248,23,7,0.00,5.00,1,3),(249,25,2,0.00,3.50,1,0),(358,42,488,0.00,0.06,1,0),(359,42,433,0.00,1.00,1,1),(360,42,149,0.00,2.00,1,2),(361,42,199,0.00,1.00,1,3),(362,42,153,0.00,1.00,1,4),(363,42,473,0.00,1.00,1,5),(364,42,432,0.00,0.50,1,6),(365,42,533,0.00,10.00,1,7),(366,42,765,0.00,0.15,1,8),(367,42,761,0.00,0.15,1,9),(368,42,431,0.00,0.05,1,10),(369,42,208,0.00,9.00,1,11),(370,42,766,0.00,0.15,1,12),(371,42,772,0.00,1.00,1,13),(372,42,764,0.00,1.00,1,14),(373,42,754,0.00,0.05,1,15),(374,42,773,0.00,0.05,1,16),(375,42,1,0.00,34.00,1,17),(376,43,199,0.00,2.00,1,7),(377,43,198,0.00,2.00,1,8),(378,43,153,0.00,5.00,1,9),(379,43,208,0.00,17.00,1,10),(380,43,209,0.00,6.00,1,11),(381,43,205,0.00,4.00,1,12),(382,43,197,0.00,4.00,1,13),(383,43,526,0.00,60.00,1,14),(384,43,529,0.00,30.00,1,15),(385,43,433,0.00,5.00,1,16),(386,43,533,0.00,60.00,1,17),(387,43,432,0.00,2.00,1,18),(388,43,774,0.00,4.00,1,19),(389,43,471,0.00,4.00,1,20),(390,43,472,0.00,5.00,1,21),(391,43,473,0.00,4.00,1,22),(392,43,510,0.00,6.00,1,23),(393,43,509,0.00,1.00,1,24),(394,43,758,0.00,0.00,1,25),(395,43,765,0.00,0.00,1,26),(396,43,766,0.00,0.00,1,27),(397,43,767,0.00,0.00,1,28),(398,43,505,0.00,50.00,1,29),(399,43,488,0.00,0.00,1,30),(400,43,402,0.00,0.00,1,31),(401,43,211,0.00,2.00,1,32),(402,43,803,0.00,2.00,1,33),(403,43,206,0.00,1.00,1,34),(404,43,207,0.00,2.00,1,35),(405,43,362,0.00,1.00,1,36),(406,43,375,0.00,1.00,1,37),(407,43,355,0.00,1.00,1,38),(408,43,366,0.00,4.00,1,39),(409,43,365,0.00,2.00,1,40),(410,43,475,0.00,1.00,1,41),(411,43,195,0.00,1.00,1,42),(412,43,77,0.00,1.00,1,43),(413,43,48,0.00,1.00,1,44),(414,43,34,0.00,6.00,1,45),(415,43,69,0.00,2.00,1,46),(416,43,56,0.00,32.00,1,47),(417,43,42,0.00,5.00,1,48),(418,43,40,0.00,12.00,1,49),(419,43,33,0.00,2.00,1,50),(420,43,38,0.00,1.00,1,51),(421,43,64,0.00,9.00,1,52),(422,43,78,0.00,1.00,1,53),(423,43,79,0.00,2.00,1,54),(424,43,61,0.00,2.00,1,55),(425,43,63,0.00,7.00,1,56),(426,43,60,0.00,6.00,1,57),(427,43,62,0.00,6.00,1,58),(428,43,10,0.00,0.00,1,59),(429,43,20,0.00,0.00,1,60),(430,43,28,0.00,0.00,1,61),(431,43,9,0.00,0.00,1,62),(432,43,13,0.00,0.00,1,63),(433,43,27,0.00,0.00,1,64),(434,43,8,0.00,0.00,1,65),(435,43,21,0.00,0.00,1,66),(436,43,7,0.00,0.00,1,67),(437,43,45,0.00,1.00,1,68),(438,43,67,0.00,1.00,1,69),(439,43,71,0.00,1.00,1,70),(440,43,1,0.00,1.00,1,71),(441,43,3,0.00,4.00,1,72),(442,43,36,0.00,0.00,1,73),(443,43,37,0.00,0.00,1,74),(444,43,54,0.00,2.00,1,75),(445,43,55,0.00,2.00,1,76),(446,43,168,0.00,1.00,1,77),(447,43,215,0.00,1.00,1,78),(448,43,381,0.00,1.00,1,79),(449,43,524,0.00,5.00,1,80),(450,43,539,0.00,4.00,1,81),(451,43,435,0.00,2.00,1,82),(452,43,39,0.00,1.00,1,83),(453,43,57,0.00,3.00,1,84),(454,43,85,0.00,1.00,1,85),(455,43,455,0.00,1.00,1,86),(456,43,482,0.00,2.00,1,87),(457,43,368,0.00,2.00,1,88),(458,43,544,0.00,2.00,1,89),(459,43,374,0.00,2.00,1,90),(460,43,754,0.00,0.00,1,91),(461,43,773,0.00,0.00,1,92),(462,43,431,0.00,0.00,1,93),(463,43,761,0.00,0.00,1,94),(464,43,364,0.00,0.00,1,95),(465,43,764,0.00,1.00,1,96),(466,43,772,0.00,1.00,1,97),(467,43,1036,0.00,27.00,1,0),(468,43,1037,0.00,27.00,1,1),(469,43,1035,0.00,108.00,1,2),(470,43,1038,0.00,14.00,1,3),(471,43,1040,0.00,0.00,1,4),(472,43,1043,0.00,27.00,1,5),(473,43,1044,0.00,14.00,1,6),(474,44,1,0.00,8.00,1,0),(475,44,2,0.00,3.59,1,1),(476,45,1053,0.00,60.50,1,0),(477,46,199,0.00,2.00,1,0),(478,46,198,0.00,2.00,1,1),(479,46,153,0.00,5.00,1,2),(480,46,208,0.00,17.00,1,3),(481,46,209,0.00,6.00,1,4),(482,46,205,0.00,4.00,1,5),(483,46,197,0.00,4.00,1,6),(484,46,526,0.00,60.00,1,7),(485,46,529,0.00,30.00,1,8),(486,46,433,0.00,5.00,1,9),(487,46,533,0.00,60.00,1,10),(488,46,432,0.00,2.00,1,11),(489,46,774,0.00,4.00,1,12),(490,46,471,0.00,4.00,1,13),(491,46,472,0.00,5.00,1,14),(492,46,473,0.00,4.00,1,15),(493,46,510,0.00,6.00,1,16),(494,46,509,0.00,1.00,1,17),(495,46,758,0.00,0.25,1,18),(496,46,765,0.00,0.25,1,19),(497,46,766,0.00,0.25,1,20),(498,46,767,0.00,0.25,1,21),(499,46,505,0.00,50.00,1,22),(500,46,488,0.00,0.27,1,23),(501,46,402,0.00,0.15,1,24),(502,46,211,0.00,1.66,1,25),(503,46,803,0.00,2.00,1,26),(504,46,206,0.00,1.00,1,27),(505,46,207,0.00,2.00,1,28),(506,46,362,0.00,1.00,1,29),(507,46,375,0.00,1.00,1,30),(508,46,355,0.00,1.00,1,31),(509,46,366,0.00,4.00,1,32),(510,46,365,0.00,2.00,1,33),(511,46,475,0.00,1.00,1,34),(512,46,195,0.00,1.26,1,35),(513,46,77,0.00,1.00,1,36),(514,46,48,0.00,1.00,1,37),(515,46,34,0.00,6.00,1,38),(516,46,69,0.00,2.00,1,39),(517,46,56,0.00,32.00,1,40),(518,46,42,0.00,5.00,1,41),(519,46,40,0.00,12.00,1,42),(520,46,33,0.00,2.00,1,43),(521,46,38,0.00,1.00,1,44),(522,46,64,0.00,9.00,1,45),(523,46,78,0.00,1.00,1,46),(524,46,79,0.00,2.00,1,47),(525,46,61,0.00,2.00,1,48),(526,46,63,0.00,7.00,1,49),(527,46,60,0.00,6.00,1,50),(528,46,62,0.00,6.00,1,51),(529,46,10,0.00,0.02,1,52),(530,46,20,0.00,0.02,1,53),(531,46,28,0.00,0.02,1,54),(532,46,9,0.00,0.20,1,55),(533,46,13,0.00,0.20,1,56),(534,46,27,0.00,0.01,1,57),(535,46,8,0.00,0.16,1,58),(536,46,21,0.00,0.18,1,59),(537,46,7,0.00,0.02,1,60),(538,46,45,0.00,1.00,1,61),(539,46,67,0.00,1.00,1,62),(540,46,71,0.00,1.00,1,63),(541,46,3,0.00,4.00,1,64),(542,46,36,0.00,0.20,1,65),(543,46,37,0.00,0.20,1,66),(544,46,54,0.00,2.00,1,67),(545,46,55,0.00,2.00,1,68),(546,46,168,0.00,1.00,1,69),(547,46,215,0.00,1.00,1,70),(548,46,381,0.00,1.00,1,71),(549,46,524,0.00,5.00,1,72),(550,46,539,0.00,4.00,1,73),(551,46,435,0.00,2.00,1,74),(552,46,39,0.00,1.00,1,75),(553,46,57,0.00,3.00,1,76),(554,46,85,0.00,1.00,1,77),(555,46,455,0.00,1.00,1,78),(556,46,482,0.00,2.00,1,79),(557,46,368,0.00,2.00,1,80),(558,46,544,0.00,2.00,1,81),(559,46,374,0.00,2.00,1,82),(560,46,754,0.00,0.27,1,83),(561,46,773,0.00,0.27,1,84),(562,46,431,0.00,0.28,1,85),(563,46,761,0.00,0.25,1,86),(564,46,364,0.00,0.25,1,87),(565,46,764,0.00,1.00,1,88),(566,46,772,0.00,1.00,1,89),(567,46,1,0.00,2.00,1,90),(568,46,2,0.00,2.00,1,91),(569,46,5,0.00,6.00,1,92),(577,48,199,0.00,2.00,1,0),(578,48,198,0.00,2.00,1,1),(579,48,153,0.00,5.00,1,2),(580,48,208,0.00,17.00,1,3),(581,48,209,0.00,6.00,1,4),(582,48,205,0.00,4.00,1,5),(583,48,197,0.00,4.00,1,6),(584,48,526,0.00,60.00,1,7),(585,48,529,0.00,30.00,1,8),(586,48,433,0.00,5.00,1,9),(587,48,533,0.00,60.00,1,10),(588,48,432,0.00,2.00,1,11),(589,48,774,0.00,4.00,1,12),(590,48,471,0.00,4.00,1,13),(591,48,472,0.00,5.00,1,14),(592,48,473,0.00,4.00,1,15),(593,48,510,0.00,6.00,1,16),(594,48,509,0.00,1.00,1,17),(595,48,758,0.00,0.25,1,18),(596,48,765,0.00,0.25,1,19),(597,48,766,0.00,0.25,1,20),(598,48,767,0.00,0.25,1,21),(599,48,505,0.00,50.00,1,22),(600,48,488,0.00,0.27,1,23),(601,48,402,0.00,0.15,1,24),(602,48,211,0.00,1.66,1,25),(603,48,803,0.00,2.00,1,26),(604,48,206,0.00,1.00,1,27),(605,48,207,0.00,2.00,1,28),(606,48,362,0.00,1.00,1,29),(607,48,375,0.00,1.00,1,30),(608,48,355,0.00,1.00,1,31),(609,48,366,0.00,4.00,1,32),(610,48,365,0.00,2.00,1,33),(611,48,475,0.00,1.00,1,34),(612,48,195,0.00,1.26,1,35),(613,48,77,0.00,1.00,1,36),(614,48,48,0.00,1.00,1,37),(615,48,34,0.00,6.00,1,38),(616,48,69,0.00,2.00,1,39),(617,48,56,0.00,32.00,1,40),(618,48,42,0.00,5.00,1,41),(619,48,40,0.00,12.00,1,42),(620,48,33,0.00,2.00,1,43),(621,48,38,0.00,1.00,1,44),(622,48,64,0.00,9.00,1,45),(623,48,78,0.00,1.00,1,46),(624,48,79,0.00,2.00,1,47),(625,48,61,0.00,2.00,1,48),(626,48,63,0.00,7.00,1,49),(627,48,60,0.00,6.00,1,50),(628,48,62,0.00,6.00,1,51),(629,48,10,0.00,0.02,1,52),(630,48,20,0.00,0.02,1,53),(631,48,28,0.00,0.02,1,54),(632,48,9,0.00,0.20,1,55),(633,48,13,0.00,0.20,1,56),(634,48,27,0.00,0.01,1,57),(635,48,8,0.00,0.16,1,58),(636,48,21,0.00,0.18,1,59),(637,48,7,0.00,0.02,1,60),(638,48,45,0.00,1.00,1,61),(639,48,67,0.00,1.00,1,62),(640,48,71,0.00,1.00,1,63),(641,48,1,0.00,15.00,1,64),(642,48,3,0.00,4.00,1,65),(643,48,36,0.00,0.20,1,66),(644,48,37,0.00,0.20,1,67),(645,48,54,0.00,2.00,1,68),(646,48,55,0.00,2.00,1,69),(647,48,168,0.00,1.00,1,70),(648,48,215,0.00,1.00,1,71),(649,48,381,0.00,1.00,1,72),(650,48,524,0.00,5.00,1,73),(651,48,539,0.00,4.00,1,74),(652,48,435,0.00,2.00,1,75),(653,48,39,0.00,1.00,1,76),(654,48,57,0.00,3.00,1,77),(655,48,85,0.00,1.00,1,78),(656,48,455,0.00,1.00,1,79),(657,48,482,0.00,2.00,1,80),(658,48,368,0.00,2.00,1,81),(659,48,544,0.00,2.00,1,82),(660,48,374,0.00,2.00,1,83),(661,48,754,0.00,0.27,1,84),(662,48,773,0.00,0.27,1,85),(663,48,431,0.00,0.28,1,86),(664,48,761,0.00,0.25,1,87),(665,48,364,0.00,0.25,1,88),(666,48,764,0.00,1.00,1,89),(667,48,772,0.00,1.00,1,90),(668,49,1,0.00,4.00,1,0),(678,51,2,0.00,2.00,1,0),(692,53,1,0.00,4.00,1,0),(693,56,1,0.00,12.00,1,0),(694,56,2,0.00,13.00,1,1),(695,56,5,0.00,34.00,1,2),(700,58,467,0.00,10.00,1,0),(701,58,796,0.00,5.00,1,1),(702,58,1,0.00,2.00,1,2),(703,58,58,0.00,1.00,1,3),(704,58,226,0.00,1.00,1,4),(705,58,514,0.00,4.00,1,5),(706,58,2,0.00,1.00,1,6),(707,58,73,0.00,1.00,1,7),(708,58,7,0.00,10.00,1,8),(711,60,3,0.00,4.00,1,0),(804,62,199,0.00,2.00,1,0),(805,62,198,0.00,2.00,1,1),(806,62,153,0.00,5.00,1,2),(807,62,208,0.00,17.00,1,3),(808,62,209,0.00,6.00,1,4),(809,62,205,0.00,4.00,1,5),(810,62,197,0.00,4.00,1,6),(811,62,526,0.00,60.00,1,7),(812,62,529,0.00,30.00,1,8),(813,62,433,0.00,5.00,1,9),(814,62,533,0.00,60.00,1,10),(815,62,432,0.00,2.00,1,11),(816,62,774,0.00,4.00,1,12),(817,62,471,0.00,4.00,1,13),(818,62,472,0.00,5.00,1,14),(819,62,473,0.00,4.00,1,15),(820,62,510,0.00,6.00,1,16),(821,62,509,0.00,1.00,1,17),(822,62,758,0.00,0.25,1,18),(823,62,765,0.00,0.25,1,19),(824,62,766,0.00,0.25,1,20),(825,62,767,0.00,0.25,1,21),(826,62,505,0.00,50.00,1,22),(827,62,488,0.00,0.27,1,23),(828,62,402,0.00,0.15,1,24),(829,62,211,0.00,1.66,1,25),(830,62,803,0.00,2.00,1,26),(831,62,206,0.00,1.00,1,27),(832,62,207,0.00,2.00,1,28),(833,62,362,0.00,1.00,1,29),(834,62,375,0.00,1.00,1,30),(835,62,355,0.00,1.00,1,31),(836,62,366,0.00,4.00,1,32),(837,62,365,0.00,2.00,1,33),(838,62,475,0.00,1.00,1,34),(839,62,195,0.00,1.26,1,35),(840,62,77,0.00,1.00,1,36),(841,62,48,0.00,1.00,1,37),(842,62,34,0.00,6.00,1,38),(843,62,69,0.00,2.00,1,39),(844,62,56,0.00,32.00,1,40),(845,62,42,0.00,5.00,1,41),(846,62,40,0.00,12.00,1,42),(847,62,33,0.00,2.00,1,43),(848,62,38,0.00,1.00,1,44),(849,62,64,0.00,9.00,1,45),(850,62,78,0.00,1.00,1,46),(851,62,79,0.00,2.00,1,47),(852,62,61,0.00,2.00,1,48),(853,62,63,0.00,7.00,1,49),(854,62,60,0.00,6.00,1,50),(855,62,62,0.00,6.00,1,51),(856,62,10,0.00,0.02,1,52),(857,62,20,0.00,0.02,1,53),(858,62,28,0.00,0.02,1,54),(859,62,9,0.00,0.20,1,55),(860,62,13,0.00,0.20,1,56),(861,62,27,0.00,0.01,1,57),(862,62,8,0.00,0.16,1,58),(863,62,21,0.00,0.18,1,59),(864,62,7,0.00,0.02,1,60),(865,62,45,0.00,1.00,1,61),(866,62,67,0.00,1.00,1,62),(867,62,71,0.00,1.00,1,63),(868,62,1,0.00,1.00,1,64),(869,62,3,0.00,4.00,1,65),(870,62,36,0.00,0.20,1,66),(871,62,37,0.00,0.20,1,67),(872,62,54,0.00,2.00,1,68),(873,62,55,0.00,2.00,1,69),(874,62,168,0.00,1.00,1,70),(875,62,215,0.00,1.00,1,71),(876,62,381,0.00,1.00,1,72),(877,62,524,0.00,5.00,1,73),(878,62,539,0.00,4.00,1,74),(879,62,435,0.00,2.00,1,75),(880,62,39,0.00,1.00,1,76),(881,62,57,0.00,3.00,1,77),(882,62,85,0.00,1.00,1,78),(883,62,455,0.00,1.00,1,79),(884,62,482,0.00,2.00,1,80),(885,62,368,0.00,2.00,1,81),(886,62,544,0.00,2.00,1,82),(887,62,374,0.00,2.00,1,83),(888,62,754,0.00,0.27,1,84),(889,62,773,0.00,0.27,1,85),(890,62,431,0.00,0.28,1,86),(891,62,761,0.00,0.25,1,87),(892,62,364,0.00,0.25,1,88),(893,62,764,0.00,1.00,1,89),(894,62,772,0.00,1.00,1,90),(895,63,362,0.00,1.00,1,0),(896,63,355,0.00,1.00,1,1),(897,63,375,0.00,1.00,1,2),(898,63,366,0.00,3.00,1,3),(899,63,365,0.00,2.00,1,4),(900,63,475,0.00,1.00,1,5),(901,63,208,0.00,1.00,1,6),(902,64,362,0.00,1.00,1,0),(903,64,355,0.00,1.00,1,1),(904,64,375,0.00,1.00,1,2),(905,64,366,0.00,3.00,1,3),(906,64,365,0.00,2.00,1,4),(907,64,475,0.00,1.00,1,5),(908,64,208,0.00,1.00,1,6),(909,65,362,0.00,1.00,1,0),(910,65,355,0.00,1.00,1,1),(911,65,375,0.00,1.00,1,2),(912,65,366,0.00,3.00,1,3),(913,65,365,0.00,2.00,1,4),(914,65,475,0.00,1.00,1,5),(915,65,208,0.00,1.00,1,6),(916,66,362,0.00,1.00,1,0),(917,66,355,0.00,1.00,1,1),(918,66,375,0.00,1.00,1,2),(919,66,366,0.00,3.00,1,3),(920,66,365,0.00,2.00,1,4),(921,66,475,0.00,1.00,1,5),(922,66,208,0.00,1.00,1,6),(923,67,362,0.00,4.00,1,0),(924,67,355,0.00,4.00,1,1),(925,67,375,0.00,4.00,1,2),(926,67,366,0.00,12.00,1,3),(927,67,365,0.00,8.00,1,4),(928,67,475,0.00,4.00,1,5),(929,67,208,0.00,4.00,1,6),(930,68,362,0.00,1.00,1,0),(931,68,355,0.00,1.00,1,1),(932,68,375,0.00,1.00,1,2),(933,68,366,0.00,3.00,1,3),(934,68,365,0.00,2.00,1,4),(935,68,475,0.00,1.00,1,5),(936,68,208,0.00,1.00,1,6),(937,69,362,0.00,1.00,1,0),(938,69,355,0.00,1.00,1,1),(939,69,375,0.00,1.00,1,2),(940,69,366,0.00,3.00,1,3),(941,69,365,0.00,2.00,1,4),(942,69,475,0.00,1.00,1,5),(943,69,208,0.00,1.00,1,6);
/*!40000 ALTER TABLE `modulos_insumos_diseno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_movimientos`
--

DROP TABLE IF EXISTS `modulos_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo_tipo_movimiento` int(11) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `id_modulo_estado` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `cotizacion` varchar(200) DEFAULT NULL,
  `chasis` varchar(200) DEFAULT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_entrega` int(11) DEFAULT NULL,
  `id_devolucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_movimientos`
--

LOCK TABLES `modulos_movimientos` WRITE;
/*!40000 ALTER TABLE `modulos_movimientos` DISABLE KEYS */;
INSERT INTO `modulos_movimientos` VALUES (1,1,1,NULL,72,NULL,'DEMO SISTEMA',NULL,'COTIZACION 19012020DEMO','Cliente','2020-01-19 06:00:17',NULL,NULL),(2,2,1,NULL,72,'Motivo1','DEMO SISTEMA',NULL,'COTIZACION 19012020DEMO','Cliente','2020-01-19 06:01:56',NULL,NULL),(3,2,1,NULL,72,'Motivo1','DEMO SISTEMA',NULL,'1','Cliente','2020-01-19 06:03:13',NULL,NULL),(4,11,1,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-19 06:07:39',1,NULL),(5,1,2,NULL,72,NULL,'garita 5x2.50',NULL,'1020','Cliente','2020-01-20 10:11:17',NULL,NULL),(6,1,3,NULL,72,NULL,'ACTC 2020',NULL,'PRESUPUESTO ACTC','Cliente','2020-01-20 15:07:54',NULL,NULL),(7,2,3,NULL,72,'Motivo1','ACTC 2020',NULL,'PRESUPUESTO ACTC','Cliente','2020-01-20 15:11:07',NULL,NULL),(8,2,3,NULL,72,'Motivo1','ACTC 2020',NULL,'PRESUPUESTO ACTC','Cliente','2020-01-20 15:17:20',NULL,NULL),(9,2,3,NULL,72,'Motivo1','ACTC 2020',NULL,'PRESUPUESTO ACTC','Cliente','2020-01-20 15:23:36',NULL,NULL),(10,2,3,NULL,72,'Motivo1','ACTC 2020',NULL,'PRESUPUESTO ACTC','Cliente','2020-01-20 15:27:32',NULL,NULL),(11,1,4,NULL,72,NULL,'reparaciones varias fco. alvarez',NULL,'Presupuesto Laura','Cliente','2020-01-20 15:44:10',NULL,NULL),(12,2,4,NULL,72,'Motivo1','reparaciones varias fco. alvarez',NULL,'Presupuesto Laura','Cliente','2020-01-20 15:47:29',NULL,NULL),(13,2,4,NULL,72,'Motivo1','reparaciones varias fco. alvarez',NULL,'Presupuesto Laura','Cliente','2020-01-20 15:50:28',NULL,NULL),(14,2,4,NULL,72,'Motivo1','reparaciones varias fco. alvarez',NULL,'Presupuesto Laura','Cliente','2020-01-20 15:54:14',NULL,NULL),(15,1,5,NULL,72,NULL,'demo 2',NULL,'1','Cliente','2020-01-20 17:45:49',NULL,NULL),(16,1,6,NULL,72,NULL,'d1',NULL,'a1','Cliente','2020-01-22 14:40:11',NULL,NULL),(17,1,7,NULL,72,NULL,'d2',NULL,'a2','Cliente','2020-01-22 14:40:33',NULL,NULL),(18,1,8,NULL,72,NULL,'d3',NULL,'a3','Cliente','2020-01-22 14:41:11',NULL,NULL),(19,1,9,NULL,72,NULL,'d4',NULL,'a4','Cliente','2020-01-22 14:41:35',NULL,NULL),(20,1,10,NULL,72,NULL,'daniel 1',NULL,'d1','Cliente','2020-01-22 15:33:52',NULL,NULL),(21,1,11,NULL,72,NULL,'dan2',NULL,'d2','Cliente','2020-01-22 15:35:37',NULL,NULL),(22,1,12,NULL,72,NULL,'d3',NULL,'d3','Cliente','2020-01-22 15:36:44',NULL,NULL),(23,1,13,NULL,72,NULL,'d4',NULL,'d4','Cliente','2020-01-22 15:40:47',NULL,NULL),(27,1,17,NULL,72,NULL,'d5',NULL,'d5','Cliente','2020-01-22 15:49:09',NULL,NULL),(28,12,2,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-22 16:26:50',NULL,1),(29,12,2,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-22 16:29:00',NULL,2),(30,1,18,NULL,72,NULL,'ypf',NULL,'4040','Cliente','2020-01-22 16:40:40',NULL,NULL),(31,1,19,NULL,72,NULL,'company ypf',NULL,'4040','Cliente','2020-01-22 16:43:06',NULL,NULL),(32,2,19,NULL,72,'Motivo1','company ypf',NULL,'4040','Cliente','2020-01-22 16:44:44',NULL,NULL),(33,3,18,NULL,72,NULL,'ypf',NULL,'4040','Cliente','2020-01-22 16:44:53',NULL,NULL),(34,11,19,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-22 16:49:19',2,NULL),(35,2,19,NULL,NULL,'Motivo1','company ypf',NULL,'4040','Cliente','2020-01-23 10:20:28',NULL,NULL),(39,1,23,NULL,72,NULL,'99999999',NULL,'9999999','Cliente','2020-01-24 06:09:45',NULL,NULL),(40,11,23,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-24 06:10:56',3,NULL),(41,11,23,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-01-24 06:11:41',4,NULL),(45,2,7,NULL,72,'Motivo1','d2',NULL,'a2','Cliente','2020-01-25 14:44:15',NULL,NULL),(46,2,7,NULL,72,'Motivo1','d2',NULL,'a2','Cliente','2020-01-25 14:44:30',NULL,NULL),(47,2,7,NULL,72,'Motivo1','d2',NULL,'a2','Cliente','2020-01-25 14:45:20',NULL,NULL),(49,2,7,NULL,NULL,'Motivo1','d2',NULL,'a2','Cliente','2020-01-25 14:51:52',NULL,NULL),(50,2,7,NULL,NULL,'Motivo1','d2',NULL,'a2','Cliente','2020-01-25 14:59:05',NULL,NULL),(51,2,11,NULL,NULL,'Motivo1','dan2',NULL,'d2','Cliente','2020-01-25 15:00:36',NULL,NULL),(52,1,25,NULL,72,NULL,'cc4',NULL,'cc4','Cliente','2020-01-25 17:07:54',NULL,NULL),(53,2,25,NULL,72,'Motivo1','cc4',NULL,'cc4','Cliente','2020-01-27 12:15:12',NULL,NULL),(54,2,25,NULL,72,'Motivo1','cc4',NULL,'cc4','Cliente','2020-01-27 12:15:29',NULL,NULL),(55,2,25,NULL,72,'Motivo1','cc4',NULL,'cc4','Cliente','2020-01-27 12:15:44',NULL,NULL),(56,2,25,NULL,72,'Motivo1','cc4',NULL,'cc4','Cliente','2020-01-27 12:17:32',NULL,NULL),(61,1,30,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 13:37:45',NULL,NULL),(62,2,30,NULL,72,'Motivo1','DESC',NULL,'PRUEBA','Cliente','2020-01-29 13:38:17',NULL,NULL),(66,1,34,NULL,NULL,NULL,'DESC',NULL,'PRUEBA2','Cliente','2020-01-29 13:57:56',NULL,NULL),(67,3,34,NULL,72,NULL,'DESC',NULL,'PRUEBA2','Cliente','2020-01-29 13:58:43',NULL,NULL),(68,3,30,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 13:58:53',NULL,NULL),(69,2,25,NULL,72,'Motivo1','cc4',NULL,'cc4','Cliente','2020-01-29 14:04:20',NULL,NULL),(71,1,36,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 14:05:50',NULL,NULL),(72,3,36,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:40:49',NULL,NULL),(73,1,37,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:41:14',NULL,NULL),(74,1,38,NULL,72,NULL,'DESC2',NULL,'PRUEBA2','Cliente','2020-01-29 16:43:19',NULL,NULL),(75,3,38,NULL,72,NULL,'DESC2',NULL,'PRUEBA2','Cliente','2020-01-29 16:53:12',NULL,NULL),(76,1,39,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:53:32',NULL,NULL),(77,2,39,NULL,72,'Motivo1','DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:53:56',NULL,NULL),(78,2,39,NULL,72,'Motivo1','DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:54:20',NULL,NULL),(79,2,39,NULL,72,'Motivo1','DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:54:59',NULL,NULL),(80,1,40,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:55:48',NULL,NULL),(81,2,39,NULL,72,'Motivo1','DESC',NULL,'PRUEBA','Cliente','2020-01-29 16:58:33',NULL,NULL),(82,3,40,NULL,NULL,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 17:01:37',NULL,NULL),(83,3,39,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 17:02:03',NULL,NULL),(84,3,37,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 17:02:09',NULL,NULL),(85,1,41,NULL,72,NULL,'PRUEBA',NULL,'PRUEBA','Cliente','2020-01-29 17:02:26',NULL,NULL),(86,3,41,NULL,72,NULL,'PRUEBA',NULL,'PRUEBA','Cliente','2020-01-29 17:06:08',NULL,NULL),(87,1,42,NULL,72,NULL,'DESC',NULL,'PRUEBA','Cliente','2020-01-29 17:06:32',NULL,NULL),(88,1,43,NULL,72,NULL,'1234',NULL,'1234','Cliente','2020-01-30 04:10:26',NULL,NULL),(89,2,43,NULL,72,'Motivo1','1234',NULL,'1234','Cliente','2020-01-30 06:14:15',NULL,NULL),(93,1,44,NULL,72,NULL,'d2',NULL,'c2','Cliente','2020-02-04 18:44:41',NULL,NULL),(94,11,6,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 19:35:24',10,NULL),(95,11,6,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 19:42:18',11,NULL),(96,11,6,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 19:54:05',12,NULL),(97,11,43,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 20:06:50',13,NULL),(98,11,43,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 20:16:16',14,NULL),(99,11,43,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 20:18:31',15,NULL),(100,1,45,NULL,72,NULL,'d3',NULL,'mod333','Cliente','2020-02-09 20:35:48',NULL,NULL),(101,11,45,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 20:38:04',16,NULL),(102,12,45,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-09 20:39:07',NULL,3),(103,1,46,NULL,72,NULL,'Sanitario YPF',NULL,'202005','Cliente','2020-02-19 10:34:54',NULL,NULL),(104,2,46,NULL,72,'Motivo1','Sanitario YPF',NULL,'202008','Cliente','2020-02-19 10:36:51',NULL,NULL),(105,2,3,NULL,72,'Motivo1','ACTC 2020',NULL,'2016','Cliente','2020-02-19 11:11:08',NULL,NULL),(106,11,46,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-19 11:16:54',17,NULL),(107,12,46,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-19 11:17:49',NULL,4),(108,11,46,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-02-19 11:20:00',18,NULL),(109,1,47,NULL,72,NULL,'testtttt',NULL,'ch test 1','Cliente','2020-02-21 14:18:15',NULL,NULL),(110,3,47,NULL,72,NULL,'testtttt',NULL,'ch test 1','Cliente','2020-02-21 14:31:38',NULL,NULL),(111,3,47,NULL,72,NULL,'testtttt',NULL,'ch test 1','Cliente','2020-02-21 14:34:52',NULL,NULL),(112,1,48,NULL,72,NULL,'oficina 6 mts',NULL,'cotizacion 26022020','Cliente','2020-02-26 06:46:33',NULL,NULL),(113,2,43,NULL,88,'Motivo1','1234',NULL,'1234','Cliente','2020-02-26 07:13:14',NULL,NULL),(114,2,48,NULL,72,'Motivo1','oficina 6 mts',NULL,'cotizacion 26022020','Cliente','2020-03-02 10:57:46',NULL,NULL),(115,1,49,NULL,72,NULL,'casa grande',NULL,'Coti 3','Cliente','2020-03-03 06:57:45',NULL,NULL),(116,2,49,NULL,72,'Motivo1','casa grande',NULL,'2000987655','Cliente','2020-03-03 06:58:50',NULL,NULL),(117,1,50,NULL,72,NULL,'fdasfas',NULL,'coti 4','Cliente','2020-03-03 06:59:27',NULL,NULL),(118,1,51,NULL,72,NULL,'de',NULL,'','Cliente','2020-03-03 09:14:43',NULL,NULL),(119,1,52,NULL,88,NULL,'mat de montaje',NULL,'cotizacion 02032020V22','Cliente','2020-03-03 09:23:11',NULL,NULL),(120,1,53,NULL,72,NULL,'d1',NULL,'','Cliente','2020-03-03 09:24:08',NULL,NULL),(121,2,53,NULL,72,'Motivo1','d1',NULL,'','Cliente','2020-03-03 09:24:52',NULL,NULL),(122,2,53,NULL,72,'Motivo1','d1',NULL,'','Cliente','2020-03-03 09:27:19',NULL,NULL),(125,1,56,NULL,72,NULL,'modulo x',NULL,'','Cliente','2020-03-06 20:20:29',NULL,NULL),(126,1,57,NULL,72,NULL,'DESC','','COT 789465','Cliente','2020-03-06 21:04:14',NULL,NULL),(131,2,57,NULL,NULL,'Motivo1','DESC',NULL,'','Cliente','2020-03-06 22:02:34',NULL,NULL),(132,2,57,NULL,72,'Motivo1','DESC',NULL,'','Cliente','2020-03-06 22:03:49',NULL,NULL),(133,2,57,NULL,72,'Motivo1','DESC',NULL,'','Cliente','2020-03-06 22:09:26',NULL,NULL),(134,2,57,NULL,NULL,'Motivo1','DESC',NULL,'','Cliente','2020-03-07 06:02:41',NULL,NULL),(135,2,57,NULL,72,'Motivo1','DESC',NULL,'','Cliente','2020-03-07 06:05:03',NULL,NULL),(136,2,53,NULL,72,'Motivo1','d1',NULL,'20200308444','Cliente','2020-03-08 17:00:22',NULL,NULL),(137,1,58,NULL,72,NULL,'fdd','coti444','','Cliente','2020-03-08 17:33:17',NULL,NULL),(138,1,59,NULL,72,NULL,'DESC HOLA','COT DAN','','Cliente','2020-03-08 20:40:55',NULL,NULL),(139,11,48,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-03-09 09:58:04',19,NULL),(140,1,60,NULL,72,NULL,'desc','test d','','Cliente','2020-03-09 11:42:54',NULL,NULL),(141,2,52,NULL,88,'Motivo1','mat de montaje',NULL,'2222','Cliente','2020-03-12 10:01:51',NULL,NULL),(142,11,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-12 10:27:28',20,NULL),(143,1,61,NULL,88,NULL,'Modulo Comedor 6.00 x 2.50','12032020V33 - Coster','','Cliente','2020-03-12 13:01:24',NULL,NULL),(144,2,61,NULL,88,'Motivo1','Modulo Comedor 6.00 x 2.50',NULL,'','Cliente','2020-03-12 13:03:18',NULL,NULL),(145,11,59,NULL,92,NULL,NULL,NULL,NULL,NULL,'2020-03-18 07:11:48',21,NULL),(146,2,61,NULL,72,'Motivo1','Modulo Comedor 6.00 x 2.50',NULL,'','Cliente','2020-03-28 00:39:24',NULL,NULL),(147,2,61,NULL,72,'Motivo1','Modulo Comedor 6.00 x 2.50',NULL,'','Cliente','2020-03-28 00:40:04',NULL,NULL),(148,2,61,NULL,72,'Motivo1','Modulo Comedor 6.00 x 2.50',NULL,'chhaa','Cliente','2020-03-28 18:51:10',NULL,NULL),(149,2,56,NULL,72,'Motivo1','modulo x',NULL,'chhaa','Cliente','2020-03-28 22:42:09',NULL,NULL),(150,2,61,NULL,72,'Motivo1','Modulo Comedor 6.00 x 2.50',NULL,'chass','Cliente','2020-03-29 06:08:05',NULL,NULL),(151,1,62,NULL,72,NULL,'descr','COT MAT','chass67','Cliente','2020-03-29 18:08:36',NULL,NULL),(152,1,63,NULL,72,NULL,'DESC','COT MM','','Cliente','2020-03-29 18:37:57',NULL,NULL),(153,1,64,NULL,72,NULL,'HOLA','COT MAT65','','Cliente','2020-03-29 18:39:11',NULL,NULL),(154,1,65,NULL,72,NULL,'desc','COT mm','chass567','Cliente','2020-03-29 18:53:12',NULL,NULL),(155,1,66,NULL,72,NULL,'DESC','COTMJK','chass','Cliente','2020-03-29 19:08:15',NULL,NULL),(156,1,67,NULL,72,NULL,'Hola','COT MAT678','','Cliente','2020-03-29 19:15:16',NULL,NULL),(157,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:17:47',NULL,NULL),(158,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:19:49',NULL,NULL),(159,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:19:52',NULL,NULL),(160,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:20:08',NULL,NULL),(161,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:41:21',NULL,NULL),(162,2,67,NULL,72,'Motivo1','Hola',NULL,'','Cliente','2020-03-29 19:42:16',NULL,NULL),(163,2,67,NULL,72,'Motivo1','Hola',NULL,'HOLA','Cliente','2020-03-29 19:58:03',NULL,NULL),(164,1,68,NULL,72,NULL,'hola','COT689','MAT','Cliente','2020-03-29 20:21:16',NULL,NULL),(165,1,69,NULL,72,NULL,'hola','COT prueba','chassssss','Cliente','2020-03-29 21:11:59',NULL,NULL),(166,2,69,NULL,72,'Motivo1','hola',NULL,'chassssss','Cliente','2020-03-30 01:21:12',NULL,NULL),(167,11,69,NULL,72,NULL,NULL,NULL,NULL,NULL,'2020-03-30 01:33:56',22,NULL);
/*!40000 ALTER TABLE `modulos_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_movimientos_insumos`
--

DROP TABLE IF EXISTS `modulos_movimientos_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_movimientos_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) DEFAULT NULL,
  `id_modulo_insumo` int(11) DEFAULT NULL,
  `id_modulo_movimiento` int(11) DEFAULT NULL,
  `id_modulo_tipo_movimiento_insumo` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `cantidad_insumo` decimal(20,2) DEFAULT NULL,
  `cantidad_asignada` decimal(20,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_movimientos_insumos`
--

LOCK TABLES `modulos_movimientos_insumos` WRITE;
/*!40000 ALTER TABLE `modulos_movimientos_insumos` DISABLE KEYS */;
INSERT INTO `modulos_movimientos_insumos` VALUES (1,1,13,NULL,1,72,7,20.00,20.00,NULL,'2020-01-19 06:00:17'),(2,1,14,NULL,1,72,803,2.00,2.00,NULL,'2020-01-19 06:00:17'),(3,1,1,NULL,3,72,306,0.00,0.00,10.00,'2020-01-19 06:01:56'),(4,1,2,NULL,3,72,37,0.00,0.00,1.00,'2020-01-19 06:01:56'),(5,1,3,NULL,3,72,121,0.00,0.00,0.00,'2020-01-19 06:01:56'),(6,1,4,NULL,3,72,40,0.00,0.00,0.00,'2020-01-19 06:01:56'),(7,1,5,NULL,3,72,50,0.00,0.00,0.00,'2020-01-19 06:01:56'),(8,1,14,4,11,72,803,2.00,2.00,2.00,'2020-01-19 06:07:39'),(9,1,13,4,11,72,7,10.00,20.00,10.00,'2020-01-19 06:07:39'),(10,2,15,NULL,1,72,5,8.00,8.00,NULL,'2020-01-20 10:11:17'),(11,2,16,NULL,1,72,1,2.00,2.00,NULL,'2020-01-20 10:11:17'),(12,3,17,NULL,1,72,810,1.00,1.00,NULL,'2020-01-20 15:07:54'),(13,3,18,NULL,1,72,761,1.00,1.00,NULL,'2020-01-20 15:07:54'),(14,3,19,NULL,1,72,606,1.00,1.00,NULL,'2020-01-20 15:07:54'),(15,3,20,NULL,1,72,561,3.00,3.00,NULL,'2020-01-20 15:07:54'),(16,3,21,NULL,1,72,572,3.00,3.00,NULL,'2020-01-20 15:07:54'),(17,3,22,NULL,1,72,785,1.00,1.00,NULL,'2020-01-20 15:07:54'),(18,3,23,NULL,1,72,766,1.00,1.00,NULL,'2020-01-20 15:07:54'),(19,3,24,NULL,1,72,786,1.00,1.00,NULL,'2020-01-20 15:07:54'),(20,3,25,NULL,1,72,34,1.00,1.00,NULL,'2020-01-20 15:07:54'),(21,3,26,NULL,1,72,854,1.00,1.00,NULL,'2020-01-20 15:07:54'),(22,3,10,NULL,3,72,307,0.00,0.00,0.00,'2020-01-20 15:11:07'),(23,3,11,NULL,3,72,37,0.00,0.00,0.00,'2020-01-20 15:11:07'),(24,3,12,NULL,3,72,36,0.00,0.00,0.00,'2020-01-20 15:11:07'),(25,3,27,NULL,1,72,1026,1.00,1.00,NULL,'2020-01-20 15:17:20'),(26,3,28,NULL,1,72,143,1.00,1.00,NULL,'2020-01-20 15:17:20'),(27,3,29,NULL,1,72,1027,1.00,1.00,NULL,'2020-01-20 15:23:36'),(28,3,30,NULL,1,72,1025,1.00,1.00,NULL,'2020-01-20 15:27:32'),(29,4,31,NULL,1,72,272,15.00,15.00,NULL,'2020-01-20 15:44:10'),(30,4,32,NULL,1,72,1024,1.00,1.00,NULL,'2020-01-20 15:44:10'),(31,4,33,NULL,1,72,1028,1.00,1.00,NULL,'2020-01-20 15:47:29'),(32,4,34,NULL,1,72,1029,1.00,1.00,NULL,'2020-01-20 15:47:29'),(33,4,35,NULL,1,72,1030,5.00,5.00,NULL,'2020-01-20 15:50:28'),(34,4,36,NULL,1,72,528,50.00,50.00,NULL,'2020-01-20 15:54:14'),(35,5,37,NULL,1,72,199,2.00,2.00,NULL,'2020-01-20 17:45:49'),(36,5,38,NULL,1,72,198,2.00,2.00,NULL,'2020-01-20 17:45:49'),(37,5,39,NULL,1,72,153,5.00,5.00,NULL,'2020-01-20 17:45:49'),(38,5,40,NULL,1,72,208,17.00,17.00,NULL,'2020-01-20 17:45:49'),(39,5,41,NULL,1,72,209,6.00,6.00,NULL,'2020-01-20 17:45:49'),(40,5,42,NULL,1,72,205,4.00,4.00,NULL,'2020-01-20 17:45:49'),(41,5,43,NULL,1,72,197,4.00,4.00,NULL,'2020-01-20 17:45:49'),(42,5,44,NULL,1,72,526,60.00,60.00,NULL,'2020-01-20 17:45:49'),(43,5,45,NULL,1,72,529,30.00,30.00,NULL,'2020-01-20 17:45:49'),(44,5,46,NULL,1,72,433,5.00,5.00,NULL,'2020-01-20 17:45:49'),(45,5,47,NULL,1,72,533,60.00,60.00,NULL,'2020-01-20 17:45:49'),(46,5,48,NULL,1,72,432,2.00,2.00,NULL,'2020-01-20 17:45:49'),(47,5,49,NULL,1,72,774,4.00,4.00,NULL,'2020-01-20 17:45:49'),(48,5,50,NULL,1,72,471,4.00,4.00,NULL,'2020-01-20 17:45:49'),(49,5,51,NULL,1,72,472,5.00,5.00,NULL,'2020-01-20 17:45:49'),(50,5,52,NULL,1,72,473,4.00,4.00,NULL,'2020-01-20 17:45:49'),(51,5,53,NULL,1,72,510,6.00,6.00,NULL,'2020-01-20 17:45:49'),(52,5,54,NULL,1,72,509,1.00,1.00,NULL,'2020-01-20 17:45:49'),(53,5,55,NULL,1,72,758,0.00,0.00,NULL,'2020-01-20 17:45:49'),(54,5,56,NULL,1,72,765,1.00,1.00,NULL,'2020-01-20 17:45:49'),(55,5,57,NULL,1,72,766,1.00,1.00,NULL,'2020-01-20 17:45:49'),(56,5,58,NULL,1,72,767,1.00,1.00,NULL,'2020-01-20 17:45:49'),(57,5,59,NULL,1,72,505,50.00,50.00,NULL,'2020-01-20 17:45:49'),(58,5,60,NULL,1,72,488,0.00,0.00,NULL,'2020-01-20 17:45:49'),(59,5,61,NULL,1,72,402,0.00,0.00,NULL,'2020-01-20 17:45:49'),(60,5,62,NULL,1,72,211,2.00,2.00,NULL,'2020-01-20 17:45:49'),(61,5,63,NULL,1,72,803,2.00,2.00,NULL,'2020-01-20 17:45:49'),(62,5,64,NULL,1,72,206,1.00,1.00,NULL,'2020-01-20 17:45:49'),(63,5,65,NULL,1,72,207,2.00,2.00,NULL,'2020-01-20 17:45:49'),(64,5,66,NULL,1,72,362,1.00,1.00,NULL,'2020-01-20 17:45:49'),(65,5,67,NULL,1,72,375,1.00,1.00,NULL,'2020-01-20 17:45:49'),(66,5,68,NULL,1,72,355,1.00,1.00,NULL,'2020-01-20 17:45:49'),(67,5,69,NULL,1,72,366,4.00,4.00,NULL,'2020-01-20 17:45:49'),(68,5,70,NULL,1,72,365,2.00,2.00,NULL,'2020-01-20 17:45:49'),(69,5,71,NULL,1,72,475,1.00,1.00,NULL,'2020-01-20 17:45:49'),(70,5,72,NULL,1,72,195,2.00,2.00,NULL,'2020-01-20 17:45:49'),(71,5,73,NULL,1,72,77,1.00,1.00,NULL,'2020-01-20 17:45:49'),(72,5,74,NULL,1,72,48,1.00,1.00,NULL,'2020-01-20 17:45:49'),(73,5,75,NULL,1,72,34,6.00,6.00,NULL,'2020-01-20 17:45:49'),(74,5,76,NULL,1,72,69,2.00,2.00,NULL,'2020-01-20 17:45:49'),(75,5,77,NULL,1,72,56,32.00,32.00,NULL,'2020-01-20 17:45:49'),(76,5,78,NULL,1,72,42,5.00,5.00,NULL,'2020-01-20 17:45:49'),(77,5,79,NULL,1,72,40,12.00,12.00,NULL,'2020-01-20 17:45:49'),(78,5,80,NULL,1,72,33,2.00,2.00,NULL,'2020-01-20 17:45:49'),(79,5,81,NULL,1,72,38,1.00,1.00,NULL,'2020-01-20 17:45:49'),(80,5,82,NULL,1,72,64,9.00,9.00,NULL,'2020-01-20 17:45:49'),(81,5,83,NULL,1,72,78,1.00,1.00,NULL,'2020-01-20 17:45:49'),(82,5,84,NULL,1,72,79,2.00,2.00,NULL,'2020-01-20 17:45:49'),(83,5,85,NULL,1,72,61,2.00,2.00,NULL,'2020-01-20 17:45:49'),(84,5,86,NULL,1,72,63,7.00,7.00,NULL,'2020-01-20 17:45:49'),(85,5,87,NULL,1,72,60,6.00,6.00,NULL,'2020-01-20 17:45:49'),(86,5,88,NULL,1,72,62,6.00,6.00,NULL,'2020-01-20 17:45:49'),(87,5,89,NULL,1,72,10,0.00,0.00,NULL,'2020-01-20 17:45:49'),(88,5,90,NULL,1,72,20,0.00,0.00,NULL,'2020-01-20 17:45:49'),(89,5,91,NULL,1,72,28,0.00,0.00,NULL,'2020-01-20 17:45:49'),(90,5,92,NULL,1,72,9,0.00,0.00,NULL,'2020-01-20 17:45:49'),(91,5,93,NULL,1,72,13,0.00,0.00,NULL,'2020-01-20 17:45:49'),(92,5,94,NULL,1,72,27,0.00,0.00,NULL,'2020-01-20 17:45:49'),(93,5,95,NULL,1,72,8,0.00,0.00,NULL,'2020-01-20 17:45:49'),(94,5,96,NULL,1,72,21,0.00,0.00,NULL,'2020-01-20 17:45:49'),(95,5,97,NULL,1,72,7,0.00,0.00,NULL,'2020-01-20 17:45:49'),(96,5,98,NULL,1,72,45,1.00,1.00,NULL,'2020-01-20 17:45:49'),(97,5,99,NULL,1,72,67,1.00,1.00,NULL,'2020-01-20 17:45:49'),(98,5,100,NULL,1,72,71,1.00,1.00,NULL,'2020-01-20 17:45:49'),(99,5,101,NULL,1,72,1,1.00,1.00,NULL,'2020-01-20 17:45:49'),(100,5,102,NULL,1,72,3,4.00,4.00,NULL,'2020-01-20 17:45:49'),(101,5,103,NULL,1,72,36,0.00,0.00,NULL,'2020-01-20 17:45:49'),(102,5,104,NULL,1,72,37,0.00,0.00,NULL,'2020-01-20 17:45:49'),(103,5,105,NULL,1,72,54,2.00,2.00,NULL,'2020-01-20 17:45:49'),(104,5,106,NULL,1,72,55,2.00,2.00,NULL,'2020-01-20 17:45:49'),(105,5,107,NULL,1,72,168,1.00,1.00,NULL,'2020-01-20 17:45:49'),(106,5,108,NULL,1,72,215,1.00,1.00,NULL,'2020-01-20 17:45:49'),(107,5,109,NULL,1,72,381,1.00,1.00,NULL,'2020-01-20 17:45:49'),(108,5,110,NULL,1,72,524,5.00,5.00,NULL,'2020-01-20 17:45:49'),(109,5,111,NULL,1,72,539,4.00,4.00,NULL,'2020-01-20 17:45:49'),(110,5,112,NULL,1,72,435,2.00,2.00,NULL,'2020-01-20 17:45:49'),(111,5,113,NULL,1,72,39,1.00,1.00,NULL,'2020-01-20 17:45:49'),(112,5,114,NULL,1,72,57,3.00,3.00,NULL,'2020-01-20 17:45:49'),(113,5,115,NULL,1,72,85,1.00,1.00,NULL,'2020-01-20 17:45:49'),(114,5,116,NULL,1,72,455,1.00,1.00,NULL,'2020-01-20 17:45:49'),(115,5,117,NULL,1,72,482,2.00,2.00,NULL,'2020-01-20 17:45:49'),(116,5,118,NULL,1,72,368,2.00,2.00,NULL,'2020-01-20 17:45:49'),(117,5,119,NULL,1,72,544,2.00,2.00,NULL,'2020-01-20 17:45:49'),(118,5,120,NULL,1,72,374,2.00,2.00,NULL,'2020-01-20 17:45:49'),(119,5,121,NULL,1,72,754,0.00,0.00,NULL,'2020-01-20 17:45:49'),(120,5,122,NULL,1,72,773,0.00,0.00,NULL,'2020-01-20 17:45:49'),(121,5,123,NULL,1,72,431,0.00,0.00,NULL,'2020-01-20 17:45:49'),(122,5,124,NULL,1,72,761,0.00,0.00,NULL,'2020-01-20 17:45:49'),(123,5,125,NULL,1,72,364,0.00,0.00,NULL,'2020-01-20 17:45:49'),(124,5,126,NULL,1,72,764,1.00,1.00,NULL,'2020-01-20 17:45:49'),(125,5,127,NULL,1,72,772,1.00,1.00,NULL,'2020-01-20 17:45:49'),(126,6,128,NULL,1,72,2,3.00,3.00,NULL,'2020-01-22 14:40:12'),(127,7,129,NULL,1,72,199,2.00,2.00,NULL,'2020-01-22 14:40:34'),(128,7,130,NULL,1,72,198,2.00,2.00,NULL,'2020-01-22 14:40:34'),(129,7,131,NULL,1,72,153,5.00,5.00,NULL,'2020-01-22 14:40:34'),(130,7,132,NULL,1,72,208,17.00,17.00,NULL,'2020-01-22 14:40:34'),(131,7,133,NULL,1,72,209,6.00,6.00,NULL,'2020-01-22 14:40:34'),(132,7,134,NULL,1,72,205,4.00,4.00,NULL,'2020-01-22 14:40:35'),(133,7,135,NULL,1,72,197,4.00,4.00,NULL,'2020-01-22 14:40:35'),(134,7,136,NULL,1,72,526,60.00,60.00,NULL,'2020-01-22 14:40:35'),(135,7,137,NULL,1,72,529,30.00,30.00,NULL,'2020-01-22 14:40:35'),(136,7,138,NULL,1,72,433,5.00,5.00,NULL,'2020-01-22 14:40:35'),(137,7,139,NULL,1,72,533,60.00,60.00,NULL,'2020-01-22 14:40:36'),(138,7,140,NULL,1,72,432,2.00,2.00,NULL,'2020-01-22 14:40:36'),(139,7,141,NULL,1,72,774,4.00,4.00,NULL,'2020-01-22 14:40:36'),(140,7,142,NULL,1,72,471,4.00,4.00,NULL,'2020-01-22 14:40:36'),(141,7,143,NULL,1,72,472,5.00,5.00,NULL,'2020-01-22 14:40:36'),(142,7,144,NULL,1,72,473,4.00,4.00,NULL,'2020-01-22 14:40:37'),(143,7,145,NULL,1,72,510,6.00,6.00,NULL,'2020-01-22 14:40:37'),(144,7,146,NULL,1,72,509,1.00,1.00,NULL,'2020-01-22 14:40:37'),(145,7,147,NULL,1,72,758,0.00,0.00,NULL,'2020-01-22 14:40:37'),(146,7,148,NULL,1,72,765,1.00,1.00,NULL,'2020-01-22 14:40:38'),(147,7,149,NULL,1,72,766,1.00,1.00,NULL,'2020-01-22 14:40:38'),(148,7,150,NULL,1,72,767,1.00,1.00,NULL,'2020-01-22 14:40:38'),(149,7,151,NULL,1,72,505,50.00,50.00,NULL,'2020-01-22 14:40:38'),(150,7,152,NULL,1,72,488,0.00,0.00,NULL,'2020-01-22 14:40:38'),(151,7,153,NULL,1,72,402,0.00,0.00,NULL,'2020-01-22 14:40:39'),(152,7,154,NULL,1,72,211,2.00,2.00,NULL,'2020-01-22 14:40:39'),(153,7,155,NULL,1,72,803,2.00,2.00,NULL,'2020-01-22 14:40:39'),(154,7,156,NULL,1,72,206,1.00,1.00,NULL,'2020-01-22 14:40:39'),(155,7,157,NULL,1,72,207,2.00,2.00,NULL,'2020-01-22 14:40:39'),(156,7,158,NULL,1,72,362,1.00,1.00,NULL,'2020-01-22 14:40:40'),(157,7,159,NULL,1,72,375,1.00,1.00,NULL,'2020-01-22 14:40:40'),(158,7,160,NULL,1,72,355,1.00,1.00,NULL,'2020-01-22 14:40:40'),(159,7,161,NULL,1,72,366,4.00,4.00,NULL,'2020-01-22 14:40:40'),(160,7,162,NULL,1,72,365,2.00,2.00,NULL,'2020-01-22 14:40:40'),(161,7,163,NULL,1,72,475,1.00,1.00,NULL,'2020-01-22 14:40:41'),(162,7,164,NULL,1,72,195,2.00,2.00,NULL,'2020-01-22 14:40:41'),(163,7,165,NULL,1,72,77,1.00,1.00,NULL,'2020-01-22 14:40:41'),(164,7,166,NULL,1,72,48,1.00,1.00,NULL,'2020-01-22 14:40:41'),(165,7,167,NULL,1,72,34,6.00,6.00,NULL,'2020-01-22 14:40:42'),(166,7,168,NULL,1,72,69,2.00,2.00,NULL,'2020-01-22 14:40:42'),(167,7,169,NULL,1,72,56,32.00,32.00,NULL,'2020-01-22 14:40:42'),(168,7,170,NULL,1,72,42,5.00,5.00,NULL,'2020-01-22 14:40:42'),(169,7,171,NULL,1,72,40,12.00,12.00,NULL,'2020-01-22 14:40:42'),(170,7,172,NULL,1,72,33,2.00,2.00,NULL,'2020-01-22 14:40:43'),(171,7,173,NULL,1,72,38,1.00,1.00,NULL,'2020-01-22 14:40:43'),(172,7,174,NULL,1,72,64,9.00,9.00,NULL,'2020-01-22 14:40:43'),(173,7,175,NULL,1,72,78,1.00,1.00,NULL,'2020-01-22 14:40:43'),(174,7,176,NULL,1,72,79,2.00,2.00,NULL,'2020-01-22 14:40:43'),(175,7,177,NULL,1,72,61,2.00,2.00,NULL,'2020-01-22 14:40:44'),(176,7,178,NULL,1,72,63,7.00,7.00,NULL,'2020-01-22 14:40:44'),(177,7,179,NULL,1,72,60,6.00,6.00,NULL,'2020-01-22 14:40:44'),(178,7,180,NULL,1,72,62,6.00,6.00,NULL,'2020-01-22 14:40:44'),(179,7,181,NULL,1,72,10,0.00,0.00,NULL,'2020-01-22 14:40:44'),(180,7,182,NULL,1,72,20,0.00,0.00,NULL,'2020-01-22 14:40:45'),(181,7,183,NULL,1,72,28,0.00,0.00,NULL,'2020-01-22 14:40:45'),(182,7,184,NULL,1,72,9,0.00,0.00,NULL,'2020-01-22 14:40:45'),(183,7,185,NULL,1,72,13,0.00,0.00,NULL,'2020-01-22 14:40:45'),(184,7,186,NULL,1,72,27,0.00,0.00,NULL,'2020-01-22 14:40:45'),(185,7,187,NULL,1,72,8,0.00,0.00,NULL,'2020-01-22 14:40:46'),(186,7,188,NULL,1,72,21,0.00,0.00,NULL,'2020-01-22 14:40:46'),(187,7,189,NULL,1,72,7,0.00,0.00,NULL,'2020-01-22 14:40:46'),(188,7,190,NULL,1,72,45,1.00,1.00,NULL,'2020-01-22 14:40:46'),(189,7,191,NULL,1,72,67,1.00,1.00,NULL,'2020-01-22 14:40:46'),(190,7,192,NULL,1,72,71,1.00,1.00,NULL,'2020-01-22 14:40:47'),(191,7,193,NULL,1,72,1,1.00,1.00,NULL,'2020-01-22 14:40:47'),(192,7,194,NULL,1,72,3,4.00,4.00,NULL,'2020-01-22 14:40:47'),(193,7,195,NULL,1,72,36,0.00,0.00,NULL,'2020-01-22 14:40:47'),(194,7,196,NULL,1,72,37,0.00,0.00,NULL,'2020-01-22 14:40:47'),(195,7,197,NULL,1,72,54,2.00,2.00,NULL,'2020-01-22 14:40:48'),(196,7,198,NULL,1,72,55,2.00,2.00,NULL,'2020-01-22 14:40:48'),(197,7,199,NULL,1,72,168,1.00,1.00,NULL,'2020-01-22 14:40:48'),(198,7,200,NULL,1,72,215,1.00,1.00,NULL,'2020-01-22 14:40:48'),(199,7,201,NULL,1,72,381,1.00,1.00,NULL,'2020-01-22 14:40:48'),(200,7,202,NULL,1,72,524,5.00,5.00,NULL,'2020-01-22 14:40:49'),(201,7,203,NULL,1,72,539,4.00,4.00,NULL,'2020-01-22 14:40:49'),(202,7,204,NULL,1,72,435,2.00,2.00,NULL,'2020-01-22 14:40:49'),(203,7,205,NULL,1,72,39,1.00,1.00,NULL,'2020-01-22 14:40:49'),(204,7,206,NULL,1,72,57,3.00,3.00,NULL,'2020-01-22 14:40:49'),(205,7,207,NULL,1,72,85,1.00,1.00,NULL,'2020-01-22 14:40:50'),(206,7,208,NULL,1,72,455,1.00,1.00,NULL,'2020-01-22 14:40:50'),(207,7,209,NULL,1,72,482,2.00,2.00,NULL,'2020-01-22 14:40:50'),(208,7,210,NULL,1,72,368,2.00,2.00,NULL,'2020-01-22 14:40:50'),(209,7,211,NULL,1,72,544,2.00,2.00,NULL,'2020-01-22 14:40:51'),(210,7,212,NULL,1,72,374,2.00,2.00,NULL,'2020-01-22 14:40:51'),(211,7,213,NULL,1,72,754,0.00,0.00,NULL,'2020-01-22 14:40:51'),(212,7,214,NULL,1,72,773,0.00,0.00,NULL,'2020-01-22 14:40:51'),(213,7,215,NULL,1,72,431,0.00,0.00,NULL,'2020-01-22 14:40:51'),(214,7,216,NULL,1,72,761,0.00,0.00,NULL,'2020-01-22 14:40:52'),(215,7,217,NULL,1,72,364,0.00,0.00,NULL,'2020-01-22 14:40:52'),(216,7,218,NULL,1,72,764,1.00,1.00,NULL,'2020-01-22 14:40:52'),(217,7,219,NULL,1,72,772,1.00,1.00,NULL,'2020-01-22 14:40:53'),(218,8,220,NULL,1,72,1,8.00,8.00,NULL,'2020-01-22 14:41:12'),(219,9,221,NULL,1,72,4,5.00,5.00,NULL,'2020-01-22 14:41:35'),(220,10,222,NULL,1,72,1,4.00,4.00,NULL,'2020-01-22 15:33:53'),(221,11,223,NULL,1,72,1,3.00,3.00,NULL,'2020-01-22 15:35:38'),(222,12,224,NULL,1,72,1,3.00,3.00,NULL,'2020-01-22 15:36:44'),(223,13,225,NULL,1,72,1,4.00,4.00,NULL,'2020-01-22 15:40:47'),(224,17,226,NULL,1,72,1,4.00,4.00,NULL,'2020-01-22 15:49:09'),(225,2,6,28,12,72,307,1.00,13.00,12.00,'2020-01-22 16:26:50'),(226,2,6,29,12,72,307,1.00,13.00,11.00,'2020-01-22 16:29:00'),(227,18,227,NULL,1,72,467,10.00,10.00,NULL,'2020-01-22 16:40:40'),(228,18,228,NULL,1,72,796,5.00,5.00,NULL,'2020-01-22 16:40:40'),(229,18,229,NULL,1,72,1,2.00,2.00,NULL,'2020-01-22 16:40:40'),(230,18,230,NULL,1,72,58,1.00,1.00,NULL,'2020-01-22 16:40:40'),(231,18,231,NULL,1,72,226,1.00,1.00,NULL,'2020-01-22 16:40:40'),(232,18,232,NULL,1,72,514,4.00,4.00,NULL,'2020-01-22 16:40:40'),(233,18,233,NULL,1,72,2,1.00,1.00,NULL,'2020-01-22 16:40:40'),(234,18,234,NULL,1,72,73,1.00,1.00,NULL,'2020-01-22 16:40:40'),(235,18,235,NULL,1,72,7,10.00,10.00,NULL,'2020-01-22 16:40:40'),(236,19,236,NULL,1,72,467,10.00,10.00,NULL,'2020-01-22 16:43:06'),(237,19,237,NULL,1,72,796,5.00,5.00,NULL,'2020-01-22 16:43:06'),(238,19,238,NULL,1,72,1,2.00,2.00,NULL,'2020-01-22 16:43:06'),(239,19,239,NULL,1,72,58,1.00,1.00,NULL,'2020-01-22 16:43:06'),(240,19,240,NULL,1,72,226,1.00,1.00,NULL,'2020-01-22 16:43:06'),(241,19,241,NULL,1,72,514,4.00,4.00,NULL,'2020-01-22 16:43:06'),(242,19,242,NULL,1,72,2,1.00,1.00,NULL,'2020-01-22 16:43:06'),(243,19,243,NULL,1,72,73,1.00,1.00,NULL,'2020-01-22 16:43:06'),(244,19,244,NULL,1,72,7,10.00,10.00,NULL,'2020-01-22 16:43:06'),(245,19,244,34,11,72,7,5.00,10.00,5.00,'2020-01-22 16:49:19'),(246,23,245,NULL,1,72,1,5.00,5.00,NULL,'2020-01-24 06:09:45'),(247,23,246,NULL,1,72,3,6.00,6.00,NULL,'2020-01-24 06:09:45'),(248,23,247,NULL,1,72,9,4.00,4.00,NULL,'2020-01-24 06:09:45'),(249,23,248,NULL,1,72,7,5.00,5.00,NULL,'2020-01-24 06:09:45'),(250,23,248,40,11,72,7,3.00,5.00,3.00,'2020-01-24 06:10:56'),(251,23,248,41,11,72,7,1.00,5.00,4.00,'2020-01-24 06:11:41'),(252,7,181,NULL,2,72,10,0.00,0.00,0.00,'2020-01-25 14:44:15'),(253,7,181,NULL,2,72,10,2.00,2.00,0.00,'2020-01-25 14:44:30'),(254,7,181,NULL,2,72,10,2.00,2.00,0.00,'2020-01-25 14:45:21'),(255,7,181,NULL,2,NULL,10,2.00,2.00,0.00,'2020-01-25 14:52:04'),(256,7,181,NULL,2,72,10,3.00,3.00,0.00,'2020-01-25 14:57:20'),(257,7,181,NULL,2,72,10,3.00,3.00,0.00,'2020-01-25 14:57:41'),(258,7,181,NULL,2,NULL,10,7.00,7.00,0.00,'2020-01-25 14:59:16'),(259,11,223,NULL,2,NULL,1,4.00,4.00,0.00,'2020-01-25 15:00:36'),(260,25,249,NULL,1,72,2,3.00,3.00,NULL,'2020-01-25 17:07:54'),(261,30,250,NULL,1,72,2,12.00,12.00,NULL,'2020-01-29 13:37:45'),(262,34,251,NULL,1,NULL,488,0.00,0.00,NULL,'2020-01-29 13:57:56'),(263,34,252,NULL,1,NULL,433,0.00,0.00,NULL,'2020-01-29 13:57:56'),(264,34,253,NULL,1,NULL,149,0.00,0.00,NULL,'2020-01-29 13:57:57'),(265,34,254,NULL,1,NULL,199,0.00,0.00,NULL,'2020-01-29 13:57:57'),(266,34,255,NULL,1,NULL,153,0.00,0.00,NULL,'2020-01-29 13:57:57'),(267,34,256,NULL,1,NULL,473,0.00,0.00,NULL,'2020-01-29 13:57:57'),(268,34,257,NULL,1,NULL,432,0.00,0.00,NULL,'2020-01-29 13:57:57'),(269,34,258,NULL,1,NULL,533,0.00,0.00,NULL,'2020-01-29 13:57:58'),(270,34,259,NULL,1,NULL,765,0.00,0.00,NULL,'2020-01-29 13:57:58'),(271,34,260,NULL,1,NULL,761,0.00,0.00,NULL,'2020-01-29 13:57:58'),(272,34,261,NULL,1,NULL,431,0.00,0.00,NULL,'2020-01-29 13:57:58'),(273,34,262,NULL,1,NULL,208,0.00,0.00,NULL,'2020-01-29 13:57:58'),(274,34,263,NULL,1,NULL,766,0.00,0.00,NULL,'2020-01-29 13:57:58'),(275,34,264,NULL,1,NULL,772,0.00,0.00,NULL,'2020-01-29 13:57:59'),(276,34,265,NULL,1,NULL,764,0.00,0.00,NULL,'2020-01-29 13:57:59'),(277,34,266,NULL,1,NULL,754,0.00,0.00,NULL,'2020-01-29 13:57:59'),(278,34,267,NULL,1,NULL,773,0.00,0.00,NULL,'2020-01-29 13:57:59'),(279,25,249,NULL,2,72,2,4.00,4.00,0.00,'2020-01-29 14:04:20'),(280,36,268,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 14:05:50'),(281,36,269,NULL,1,72,433,0.00,0.00,NULL,'2020-01-29 14:05:51'),(282,36,270,NULL,1,72,149,0.00,0.00,NULL,'2020-01-29 14:05:51'),(283,36,271,NULL,1,72,199,0.00,0.00,NULL,'2020-01-29 14:05:51'),(284,36,272,NULL,1,72,153,0.00,0.00,NULL,'2020-01-29 14:05:51'),(285,36,273,NULL,1,72,473,0.00,0.00,NULL,'2020-01-29 14:05:51'),(286,36,274,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 14:05:51'),(287,36,275,NULL,1,72,533,0.00,0.00,NULL,'2020-01-29 14:05:52'),(288,36,276,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 14:05:52'),(289,36,277,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 14:05:52'),(290,36,278,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 14:05:52'),(291,36,279,NULL,1,72,208,0.00,0.00,NULL,'2020-01-29 14:05:52'),(292,36,280,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 14:05:52'),(293,36,281,NULL,1,72,772,0.00,0.00,NULL,'2020-01-29 14:05:53'),(294,36,282,NULL,1,72,764,0.00,0.00,NULL,'2020-01-29 14:05:53'),(295,36,283,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 14:05:53'),(296,36,284,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 14:05:53'),(297,36,285,NULL,1,72,3,0.00,0.00,NULL,'2020-01-29 14:05:53'),(298,37,286,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 16:41:14'),(299,37,287,NULL,1,72,433,0.00,0.00,NULL,'2020-01-29 16:41:14'),(300,37,288,NULL,1,72,149,0.00,0.00,NULL,'2020-01-29 16:41:14'),(301,37,289,NULL,1,72,199,0.00,0.00,NULL,'2020-01-29 16:41:14'),(302,37,290,NULL,1,72,153,0.00,0.00,NULL,'2020-01-29 16:41:14'),(303,37,291,NULL,1,72,473,0.00,0.00,NULL,'2020-01-29 16:41:14'),(304,37,292,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 16:41:14'),(305,37,293,NULL,1,72,533,0.00,0.00,NULL,'2020-01-29 16:41:14'),(306,37,294,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 16:41:14'),(307,37,295,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 16:41:14'),(308,37,296,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 16:41:14'),(309,37,297,NULL,1,72,208,0.00,0.00,NULL,'2020-01-29 16:41:14'),(310,37,298,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 16:41:14'),(311,37,299,NULL,1,72,772,0.00,0.00,NULL,'2020-01-29 16:41:14'),(312,37,300,NULL,1,72,764,0.00,0.00,NULL,'2020-01-29 16:41:14'),(313,37,301,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 16:41:14'),(314,37,302,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 16:41:14'),(315,37,303,NULL,1,72,3,0.00,0.00,NULL,'2020-01-29 16:41:14'),(316,38,304,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 16:43:19'),(317,38,305,NULL,1,72,433,0.00,0.00,NULL,'2020-01-29 16:43:19'),(318,38,306,NULL,1,72,149,0.00,0.00,NULL,'2020-01-29 16:43:19'),(319,38,307,NULL,1,72,199,0.00,0.00,NULL,'2020-01-29 16:43:19'),(320,38,308,NULL,1,72,153,0.00,0.00,NULL,'2020-01-29 16:43:19'),(321,38,309,NULL,1,72,473,0.00,0.00,NULL,'2020-01-29 16:43:19'),(322,38,310,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 16:43:19'),(323,38,311,NULL,1,72,533,0.00,0.00,NULL,'2020-01-29 16:43:19'),(324,38,312,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 16:43:19'),(325,38,313,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 16:43:19'),(326,38,314,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 16:43:19'),(327,38,315,NULL,1,72,208,0.00,0.00,NULL,'2020-01-29 16:43:19'),(328,38,316,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 16:43:19'),(329,38,317,NULL,1,72,772,0.00,0.00,NULL,'2020-01-29 16:43:19'),(330,38,318,NULL,1,72,764,0.00,0.00,NULL,'2020-01-29 16:43:19'),(331,38,319,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 16:43:19'),(332,38,320,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 16:43:19'),(333,39,321,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 16:53:32'),(334,39,322,NULL,1,72,433,0.00,0.00,NULL,'2020-01-29 16:53:33'),(335,39,323,NULL,1,72,149,0.00,0.00,NULL,'2020-01-29 16:53:33'),(336,39,324,NULL,1,72,199,0.00,0.00,NULL,'2020-01-29 16:53:33'),(337,39,325,NULL,1,72,153,0.00,0.00,NULL,'2020-01-29 16:53:33'),(338,39,326,NULL,1,72,473,0.00,0.00,NULL,'2020-01-29 16:53:33'),(339,39,327,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 16:53:33'),(340,39,328,NULL,1,72,533,0.00,0.00,NULL,'2020-01-29 16:53:34'),(341,39,329,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 16:53:34'),(342,39,330,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 16:53:34'),(343,39,331,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 16:53:34'),(344,39,332,NULL,1,72,208,0.00,0.00,NULL,'2020-01-29 16:53:34'),(345,39,333,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 16:53:34'),(346,39,334,NULL,1,72,772,0.00,0.00,NULL,'2020-01-29 16:53:35'),(347,39,335,NULL,1,72,764,0.00,0.00,NULL,'2020-01-29 16:53:35'),(348,39,336,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 16:53:35'),(349,39,337,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 16:53:35'),(350,39,338,NULL,1,72,2,12.00,12.00,NULL,'2020-01-29 16:54:00'),(351,39,338,NULL,2,72,2,12.00,12.00,0.00,'2020-01-29 16:55:02'),(352,40,339,NULL,1,72,1,0.00,0.00,NULL,'2020-01-29 16:55:48'),(353,39,340,NULL,1,72,5,23.00,23.00,NULL,'2020-01-29 16:58:37'),(354,41,341,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 17:02:26'),(355,41,342,NULL,1,72,433,1.00,1.00,NULL,'2020-01-29 17:02:26'),(356,41,343,NULL,1,72,149,2.00,2.00,NULL,'2020-01-29 17:02:27'),(357,41,344,NULL,1,72,199,1.00,1.00,NULL,'2020-01-29 17:02:27'),(358,41,345,NULL,1,72,153,1.00,1.00,NULL,'2020-01-29 17:02:27'),(359,41,346,NULL,1,72,473,1.00,1.00,NULL,'2020-01-29 17:02:27'),(360,41,347,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 17:02:27'),(361,41,348,NULL,1,72,533,10.00,10.00,NULL,'2020-01-29 17:02:27'),(362,41,349,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 17:02:28'),(363,41,350,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 17:02:28'),(364,41,351,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 17:02:28'),(365,41,352,NULL,1,72,208,9.00,9.00,NULL,'2020-01-29 17:02:28'),(366,41,353,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 17:02:28'),(367,41,354,NULL,1,72,772,1.00,1.00,NULL,'2020-01-29 17:02:28'),(368,41,355,NULL,1,72,764,1.00,1.00,NULL,'2020-01-29 17:02:29'),(369,41,356,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 17:02:29'),(370,41,357,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 17:02:29'),(371,42,358,NULL,1,72,488,0.00,0.00,NULL,'2020-01-29 17:06:32'),(372,42,359,NULL,1,72,433,1.00,1.00,NULL,'2020-01-29 17:06:32'),(373,42,360,NULL,1,72,149,2.00,2.00,NULL,'2020-01-29 17:06:32'),(374,42,361,NULL,1,72,199,1.00,1.00,NULL,'2020-01-29 17:06:32'),(375,42,362,NULL,1,72,153,1.00,1.00,NULL,'2020-01-29 17:06:32'),(376,42,363,NULL,1,72,473,1.00,1.00,NULL,'2020-01-29 17:06:32'),(377,42,364,NULL,1,72,432,0.00,0.00,NULL,'2020-01-29 17:06:32'),(378,42,365,NULL,1,72,533,10.00,10.00,NULL,'2020-01-29 17:06:32'),(379,42,366,NULL,1,72,765,0.00,0.00,NULL,'2020-01-29 17:06:32'),(380,42,367,NULL,1,72,761,0.00,0.00,NULL,'2020-01-29 17:06:32'),(381,42,368,NULL,1,72,431,0.00,0.00,NULL,'2020-01-29 17:06:32'),(382,42,369,NULL,1,72,208,9.00,9.00,NULL,'2020-01-29 17:06:32'),(383,42,370,NULL,1,72,766,0.00,0.00,NULL,'2020-01-29 17:06:32'),(384,42,371,NULL,1,72,772,1.00,1.00,NULL,'2020-01-29 17:06:32'),(385,42,372,NULL,1,72,764,1.00,1.00,NULL,'2020-01-29 17:06:32'),(386,42,373,NULL,1,72,754,0.00,0.00,NULL,'2020-01-29 17:06:32'),(387,42,374,NULL,1,72,773,0.00,0.00,NULL,'2020-01-29 17:06:32'),(388,42,375,NULL,1,72,1,34.00,34.00,NULL,'2020-01-29 17:06:32'),(389,43,376,NULL,1,72,199,2.00,2.00,NULL,'2020-01-30 04:10:26'),(390,43,377,NULL,1,72,198,2.00,2.00,NULL,'2020-01-30 04:10:26'),(391,43,378,NULL,1,72,153,5.00,5.00,NULL,'2020-01-30 04:10:26'),(392,43,379,NULL,1,72,208,17.00,17.00,NULL,'2020-01-30 04:10:26'),(393,43,380,NULL,1,72,209,6.00,6.00,NULL,'2020-01-30 04:10:26'),(394,43,381,NULL,1,72,205,4.00,4.00,NULL,'2020-01-30 04:10:26'),(395,43,382,NULL,1,72,197,4.00,4.00,NULL,'2020-01-30 04:10:26'),(396,43,383,NULL,1,72,526,60.00,60.00,NULL,'2020-01-30 04:10:26'),(397,43,384,NULL,1,72,529,30.00,30.00,NULL,'2020-01-30 04:10:26'),(398,43,385,NULL,1,72,433,5.00,5.00,NULL,'2020-01-30 04:10:26'),(399,43,386,NULL,1,72,533,60.00,60.00,NULL,'2020-01-30 04:10:26'),(400,43,387,NULL,1,72,432,2.00,2.00,NULL,'2020-01-30 04:10:26'),(401,43,388,NULL,1,72,774,4.00,4.00,NULL,'2020-01-30 04:10:26'),(402,43,389,NULL,1,72,471,4.00,4.00,NULL,'2020-01-30 04:10:26'),(403,43,390,NULL,1,72,472,5.00,5.00,NULL,'2020-01-30 04:10:26'),(404,43,391,NULL,1,72,473,4.00,4.00,NULL,'2020-01-30 04:10:26'),(405,43,392,NULL,1,72,510,6.00,6.00,NULL,'2020-01-30 04:10:26'),(406,43,393,NULL,1,72,509,1.00,1.00,NULL,'2020-01-30 04:10:26'),(407,43,394,NULL,1,72,758,0.00,0.00,NULL,'2020-01-30 04:10:26'),(408,43,395,NULL,1,72,765,0.00,0.00,NULL,'2020-01-30 04:10:26'),(409,43,396,NULL,1,72,766,0.00,0.00,NULL,'2020-01-30 04:10:26'),(410,43,397,NULL,1,72,767,0.00,0.00,NULL,'2020-01-30 04:10:26'),(411,43,398,NULL,1,72,505,50.00,50.00,NULL,'2020-01-30 04:10:26'),(412,43,399,NULL,1,72,488,0.00,0.00,NULL,'2020-01-30 04:10:26'),(413,43,400,NULL,1,72,402,0.00,0.00,NULL,'2020-01-30 04:10:26'),(414,43,401,NULL,1,72,211,2.00,2.00,NULL,'2020-01-30 04:10:26'),(415,43,402,NULL,1,72,803,2.00,2.00,NULL,'2020-01-30 04:10:26'),(416,43,403,NULL,1,72,206,1.00,1.00,NULL,'2020-01-30 04:10:26'),(417,43,404,NULL,1,72,207,2.00,2.00,NULL,'2020-01-30 04:10:26'),(418,43,405,NULL,1,72,362,1.00,1.00,NULL,'2020-01-30 04:10:26'),(419,43,406,NULL,1,72,375,1.00,1.00,NULL,'2020-01-30 04:10:26'),(420,43,407,NULL,1,72,355,1.00,1.00,NULL,'2020-01-30 04:10:26'),(421,43,408,NULL,1,72,366,4.00,4.00,NULL,'2020-01-30 04:10:26'),(422,43,409,NULL,1,72,365,2.00,2.00,NULL,'2020-01-30 04:10:26'),(423,43,410,NULL,1,72,475,1.00,1.00,NULL,'2020-01-30 04:10:26'),(424,43,411,NULL,1,72,195,1.00,1.00,NULL,'2020-01-30 04:10:26'),(425,43,412,NULL,1,72,77,1.00,1.00,NULL,'2020-01-30 04:10:26'),(426,43,413,NULL,1,72,48,1.00,1.00,NULL,'2020-01-30 04:10:26'),(427,43,414,NULL,1,72,34,6.00,6.00,NULL,'2020-01-30 04:10:26'),(428,43,415,NULL,1,72,69,2.00,2.00,NULL,'2020-01-30 04:10:26'),(429,43,416,NULL,1,72,56,32.00,32.00,NULL,'2020-01-30 04:10:26'),(430,43,417,NULL,1,72,42,5.00,5.00,NULL,'2020-01-30 04:10:26'),(431,43,418,NULL,1,72,40,12.00,12.00,NULL,'2020-01-30 04:10:26'),(432,43,419,NULL,1,72,33,2.00,2.00,NULL,'2020-01-30 04:10:26'),(433,43,420,NULL,1,72,38,1.00,1.00,NULL,'2020-01-30 04:10:26'),(434,43,421,NULL,1,72,64,9.00,9.00,NULL,'2020-01-30 04:10:26'),(435,43,422,NULL,1,72,78,1.00,1.00,NULL,'2020-01-30 04:10:26'),(436,43,423,NULL,1,72,79,2.00,2.00,NULL,'2020-01-30 04:10:26'),(437,43,424,NULL,1,72,61,2.00,2.00,NULL,'2020-01-30 04:10:26'),(438,43,425,NULL,1,72,63,7.00,7.00,NULL,'2020-01-30 04:10:26'),(439,43,426,NULL,1,72,60,6.00,6.00,NULL,'2020-01-30 04:10:26'),(440,43,427,NULL,1,72,62,6.00,6.00,NULL,'2020-01-30 04:10:26'),(441,43,428,NULL,1,72,10,0.00,0.00,NULL,'2020-01-30 04:10:26'),(442,43,429,NULL,1,72,20,0.00,0.00,NULL,'2020-01-30 04:10:26'),(443,43,430,NULL,1,72,28,0.00,0.00,NULL,'2020-01-30 04:10:26'),(444,43,431,NULL,1,72,9,0.00,0.00,NULL,'2020-01-30 04:10:26'),(445,43,432,NULL,1,72,13,0.00,0.00,NULL,'2020-01-30 04:10:26'),(446,43,433,NULL,1,72,27,0.00,0.00,NULL,'2020-01-30 04:10:26'),(447,43,434,NULL,1,72,8,0.00,0.00,NULL,'2020-01-30 04:10:26'),(448,43,435,NULL,1,72,21,0.00,0.00,NULL,'2020-01-30 04:10:26'),(449,43,436,NULL,1,72,7,0.00,0.00,NULL,'2020-01-30 04:10:26'),(450,43,437,NULL,1,72,45,1.00,1.00,NULL,'2020-01-30 04:10:26'),(451,43,438,NULL,1,72,67,1.00,1.00,NULL,'2020-01-30 04:10:26'),(452,43,439,NULL,1,72,71,1.00,1.00,NULL,'2020-01-30 04:10:26'),(453,43,440,NULL,1,72,1,1.00,1.00,NULL,'2020-01-30 04:10:26'),(454,43,441,NULL,1,72,3,4.00,4.00,NULL,'2020-01-30 04:10:26'),(455,43,442,NULL,1,72,36,0.00,0.00,NULL,'2020-01-30 04:10:26'),(456,43,443,NULL,1,72,37,0.00,0.00,NULL,'2020-01-30 04:10:26'),(457,43,444,NULL,1,72,54,2.00,2.00,NULL,'2020-01-30 04:10:26'),(458,43,445,NULL,1,72,55,2.00,2.00,NULL,'2020-01-30 04:10:26'),(459,43,446,NULL,1,72,168,1.00,1.00,NULL,'2020-01-30 04:10:26'),(460,43,447,NULL,1,72,215,1.00,1.00,NULL,'2020-01-30 04:10:26'),(461,43,448,NULL,1,72,381,1.00,1.00,NULL,'2020-01-30 04:10:26'),(462,43,449,NULL,1,72,524,5.00,5.00,NULL,'2020-01-30 04:10:26'),(463,43,450,NULL,1,72,539,4.00,4.00,NULL,'2020-01-30 04:10:26'),(464,43,451,NULL,1,72,435,2.00,2.00,NULL,'2020-01-30 04:10:26'),(465,43,452,NULL,1,72,39,1.00,1.00,NULL,'2020-01-30 04:10:26'),(466,43,453,NULL,1,72,57,3.00,3.00,NULL,'2020-01-30 04:10:26'),(467,43,454,NULL,1,72,85,1.00,1.00,NULL,'2020-01-30 04:10:26'),(468,43,455,NULL,1,72,455,1.00,1.00,NULL,'2020-01-30 04:10:26'),(469,43,456,NULL,1,72,482,2.00,2.00,NULL,'2020-01-30 04:10:26'),(470,43,457,NULL,1,72,368,2.00,2.00,NULL,'2020-01-30 04:10:26'),(471,43,458,NULL,1,72,544,2.00,2.00,NULL,'2020-01-30 04:10:26'),(472,43,459,NULL,1,72,374,2.00,2.00,NULL,'2020-01-30 04:10:26'),(473,43,460,NULL,1,72,754,0.00,0.00,NULL,'2020-01-30 04:10:26'),(474,43,461,NULL,1,72,773,0.00,0.00,NULL,'2020-01-30 04:10:26'),(475,43,462,NULL,1,72,431,0.00,0.00,NULL,'2020-01-30 04:10:26'),(476,43,463,NULL,1,72,761,0.00,0.00,NULL,'2020-01-30 04:10:26'),(477,43,464,NULL,1,72,364,0.00,0.00,NULL,'2020-01-30 04:10:26'),(478,43,465,NULL,1,72,764,1.00,1.00,NULL,'2020-01-30 04:10:26'),(479,43,466,NULL,1,72,772,1.00,1.00,NULL,'2020-01-30 04:10:26'),(480,43,467,NULL,1,72,1036,27.00,27.00,NULL,'2020-01-30 06:14:15'),(481,43,468,NULL,1,72,1037,27.00,27.00,NULL,'2020-01-30 06:14:15'),(482,43,469,NULL,1,72,1035,108.00,108.00,NULL,'2020-01-30 06:14:15'),(483,43,470,NULL,1,72,1038,14.00,14.00,NULL,'2020-01-30 06:14:15'),(484,43,471,NULL,1,72,1040,0.00,0.00,NULL,'2020-01-30 06:14:15'),(485,43,472,NULL,1,72,1043,27.00,27.00,NULL,'2020-01-30 06:14:15'),(486,43,473,NULL,1,72,1044,14.00,14.00,NULL,'2020-01-30 06:14:15'),(496,44,474,NULL,1,72,1,8.00,8.00,NULL,'2020-02-04 18:44:41'),(497,44,475,NULL,1,72,2,4.00,4.00,NULL,'2020-02-04 18:44:41'),(498,6,128,94,11,72,2,2.00,3.00,2.00,'2020-02-09 19:35:24'),(499,6,128,95,11,72,2,0.00,3.00,2.00,'2020-02-09 19:42:18'),(500,6,128,96,11,72,2,0.00,3.00,3.00,'2020-02-09 19:54:05'),(501,43,402,97,11,72,803,1.00,2.00,1.00,'2020-02-09 20:06:50'),(502,43,440,98,11,72,1,0.20,1.00,0.20,'2020-02-09 20:16:16'),(503,43,440,99,11,72,1,0.16,1.00,0.36,'2020-02-09 20:18:31'),(504,45,476,NULL,1,72,1053,60.50,60.50,NULL,'2020-02-09 20:35:49'),(505,45,476,101,11,72,1053,10.33,60.50,10.33,'2020-02-09 20:38:04'),(506,45,476,102,12,72,1053,0.50,60.50,9.83,'2020-02-09 20:39:07'),(507,46,477,NULL,1,72,199,2.00,2.00,NULL,'2020-02-19 10:34:54'),(508,46,478,NULL,1,72,198,2.00,2.00,NULL,'2020-02-19 10:34:54'),(509,46,479,NULL,1,72,153,5.00,5.00,NULL,'2020-02-19 10:34:54'),(510,46,480,NULL,1,72,208,17.00,17.00,NULL,'2020-02-19 10:34:54'),(511,46,481,NULL,1,72,209,6.00,6.00,NULL,'2020-02-19 10:34:54'),(512,46,482,NULL,1,72,205,4.00,4.00,NULL,'2020-02-19 10:34:54'),(513,46,483,NULL,1,72,197,4.00,4.00,NULL,'2020-02-19 10:34:54'),(514,46,484,NULL,1,72,526,60.00,60.00,NULL,'2020-02-19 10:34:54'),(515,46,485,NULL,1,72,529,30.00,30.00,NULL,'2020-02-19 10:34:54'),(516,46,486,NULL,1,72,433,5.00,5.00,NULL,'2020-02-19 10:34:54'),(517,46,487,NULL,1,72,533,60.00,60.00,NULL,'2020-02-19 10:34:54'),(518,46,488,NULL,1,72,432,2.00,2.00,NULL,'2020-02-19 10:34:54'),(519,46,489,NULL,1,72,774,4.00,4.00,NULL,'2020-02-19 10:34:54'),(520,46,490,NULL,1,72,471,4.00,4.00,NULL,'2020-02-19 10:34:54'),(521,46,491,NULL,1,72,472,5.00,5.00,NULL,'2020-02-19 10:34:54'),(522,46,492,NULL,1,72,473,4.00,4.00,NULL,'2020-02-19 10:34:54'),(523,46,493,NULL,1,72,510,6.00,6.00,NULL,'2020-02-19 10:34:54'),(524,46,494,NULL,1,72,509,1.00,1.00,NULL,'2020-02-19 10:34:54'),(525,46,495,NULL,1,72,758,0.25,0.25,NULL,'2020-02-19 10:34:54'),(526,46,496,NULL,1,72,765,0.25,0.25,NULL,'2020-02-19 10:34:54'),(527,46,497,NULL,1,72,766,0.25,0.25,NULL,'2020-02-19 10:34:54'),(528,46,498,NULL,1,72,767,0.25,0.25,NULL,'2020-02-19 10:34:54'),(529,46,499,NULL,1,72,505,50.00,50.00,NULL,'2020-02-19 10:34:54'),(530,46,500,NULL,1,72,488,0.27,0.27,NULL,'2020-02-19 10:34:54'),(531,46,501,NULL,1,72,402,0.15,0.15,NULL,'2020-02-19 10:34:54'),(532,46,502,NULL,1,72,211,1.66,1.66,NULL,'2020-02-19 10:34:54'),(533,46,503,NULL,1,72,803,2.00,2.00,NULL,'2020-02-19 10:34:54'),(534,46,504,NULL,1,72,206,1.00,1.00,NULL,'2020-02-19 10:34:54'),(535,46,505,NULL,1,72,207,2.00,2.00,NULL,'2020-02-19 10:34:54'),(536,46,506,NULL,1,72,362,1.00,1.00,NULL,'2020-02-19 10:34:54'),(537,46,507,NULL,1,72,375,1.00,1.00,NULL,'2020-02-19 10:34:54'),(538,46,508,NULL,1,72,355,1.00,1.00,NULL,'2020-02-19 10:34:54'),(539,46,509,NULL,1,72,366,4.00,4.00,NULL,'2020-02-19 10:34:54'),(540,46,510,NULL,1,72,365,2.00,2.00,NULL,'2020-02-19 10:34:54'),(541,46,511,NULL,1,72,475,1.00,1.00,NULL,'2020-02-19 10:34:54'),(542,46,512,NULL,1,72,195,1.26,1.26,NULL,'2020-02-19 10:34:54'),(543,46,513,NULL,1,72,77,1.00,1.00,NULL,'2020-02-19 10:34:54'),(544,46,514,NULL,1,72,48,1.00,1.00,NULL,'2020-02-19 10:34:54'),(545,46,515,NULL,1,72,34,6.00,6.00,NULL,'2020-02-19 10:34:54'),(546,46,516,NULL,1,72,69,2.00,2.00,NULL,'2020-02-19 10:34:54'),(547,46,517,NULL,1,72,56,32.00,32.00,NULL,'2020-02-19 10:34:54'),(548,46,518,NULL,1,72,42,5.00,5.00,NULL,'2020-02-19 10:34:54'),(549,46,519,NULL,1,72,40,12.00,12.00,NULL,'2020-02-19 10:34:54'),(550,46,520,NULL,1,72,33,2.00,2.00,NULL,'2020-02-19 10:34:54'),(551,46,521,NULL,1,72,38,1.00,1.00,NULL,'2020-02-19 10:34:54'),(552,46,522,NULL,1,72,64,9.00,9.00,NULL,'2020-02-19 10:34:54'),(553,46,523,NULL,1,72,78,1.00,1.00,NULL,'2020-02-19 10:34:54'),(554,46,524,NULL,1,72,79,2.00,2.00,NULL,'2020-02-19 10:34:54'),(555,46,525,NULL,1,72,61,2.00,2.00,NULL,'2020-02-19 10:34:54'),(556,46,526,NULL,1,72,63,7.00,7.00,NULL,'2020-02-19 10:34:54'),(557,46,527,NULL,1,72,60,6.00,6.00,NULL,'2020-02-19 10:34:54'),(558,46,528,NULL,1,72,62,6.00,6.00,NULL,'2020-02-19 10:34:54'),(559,46,529,NULL,1,72,10,0.02,0.02,NULL,'2020-02-19 10:34:54'),(560,46,530,NULL,1,72,20,0.02,0.02,NULL,'2020-02-19 10:34:54'),(561,46,531,NULL,1,72,28,0.02,0.02,NULL,'2020-02-19 10:34:54'),(562,46,532,NULL,1,72,9,0.20,0.20,NULL,'2020-02-19 10:34:54'),(563,46,533,NULL,1,72,13,0.20,0.20,NULL,'2020-02-19 10:34:54'),(564,46,534,NULL,1,72,27,0.01,0.01,NULL,'2020-02-19 10:34:54'),(565,46,535,NULL,1,72,8,0.16,0.16,NULL,'2020-02-19 10:34:54'),(566,46,536,NULL,1,72,21,0.18,0.18,NULL,'2020-02-19 10:34:54'),(567,46,537,NULL,1,72,7,0.02,0.02,NULL,'2020-02-19 10:34:54'),(568,46,538,NULL,1,72,45,1.00,1.00,NULL,'2020-02-19 10:34:54'),(569,46,539,NULL,1,72,67,1.00,1.00,NULL,'2020-02-19 10:34:54'),(570,46,540,NULL,1,72,71,1.00,1.00,NULL,'2020-02-19 10:34:54'),(571,46,541,NULL,1,72,3,4.00,4.00,NULL,'2020-02-19 10:34:54'),(572,46,542,NULL,1,72,36,0.20,0.20,NULL,'2020-02-19 10:34:54'),(573,46,543,NULL,1,72,37,0.20,0.20,NULL,'2020-02-19 10:34:54'),(574,46,544,NULL,1,72,54,2.00,2.00,NULL,'2020-02-19 10:34:54'),(575,46,545,NULL,1,72,55,2.00,2.00,NULL,'2020-02-19 10:34:54'),(576,46,546,NULL,1,72,168,1.00,1.00,NULL,'2020-02-19 10:34:54'),(577,46,547,NULL,1,72,215,1.00,1.00,NULL,'2020-02-19 10:34:54'),(578,46,548,NULL,1,72,381,1.00,1.00,NULL,'2020-02-19 10:34:54'),(579,46,549,NULL,1,72,524,5.00,5.00,NULL,'2020-02-19 10:34:54'),(580,46,550,NULL,1,72,539,4.00,4.00,NULL,'2020-02-19 10:34:54'),(581,46,551,NULL,1,72,435,2.00,2.00,NULL,'2020-02-19 10:34:54'),(582,46,552,NULL,1,72,39,1.00,1.00,NULL,'2020-02-19 10:34:54'),(583,46,553,NULL,1,72,57,3.00,3.00,NULL,'2020-02-19 10:34:54'),(584,46,554,NULL,1,72,85,1.00,1.00,NULL,'2020-02-19 10:34:54'),(585,46,555,NULL,1,72,455,1.00,1.00,NULL,'2020-02-19 10:34:54'),(586,46,556,NULL,1,72,482,2.00,2.00,NULL,'2020-02-19 10:34:54'),(587,46,557,NULL,1,72,368,2.00,2.00,NULL,'2020-02-19 10:34:54'),(588,46,558,NULL,1,72,544,2.00,2.00,NULL,'2020-02-19 10:34:54'),(589,46,559,NULL,1,72,374,2.00,2.00,NULL,'2020-02-19 10:34:54'),(590,46,560,NULL,1,72,754,0.27,0.27,NULL,'2020-02-19 10:34:54'),(591,46,561,NULL,1,72,773,0.27,0.27,NULL,'2020-02-19 10:34:54'),(592,46,562,NULL,1,72,431,0.28,0.28,NULL,'2020-02-19 10:34:54'),(593,46,563,NULL,1,72,761,0.25,0.25,NULL,'2020-02-19 10:34:54'),(594,46,564,NULL,1,72,364,0.25,0.25,NULL,'2020-02-19 10:34:54'),(595,46,565,NULL,1,72,764,1.00,1.00,NULL,'2020-02-19 10:34:54'),(596,46,566,NULL,1,72,772,1.00,1.00,NULL,'2020-02-19 10:34:54'),(597,46,567,NULL,1,72,1,2.00,2.00,NULL,'2020-02-19 10:34:54'),(598,46,568,NULL,1,72,2,2.00,2.00,NULL,'2020-02-19 10:34:54'),(599,46,569,NULL,1,72,5,6.00,6.00,NULL,'2020-02-19 10:34:54'),(600,46,503,106,11,72,803,1.00,2.00,1.00,'2020-02-19 11:16:54'),(601,46,503,107,12,72,803,1.00,2.00,0.00,'2020-02-19 11:17:49'),(602,46,503,108,11,72,803,2.00,2.00,2.00,'2020-02-19 11:20:00'),(603,47,570,NULL,1,72,1036,27.00,27.00,NULL,'2020-02-21 14:18:16'),(604,47,571,NULL,1,72,1037,27.00,27.00,NULL,'2020-02-21 14:18:16'),(605,47,572,NULL,1,72,1035,108.00,108.00,NULL,'2020-02-21 14:18:16'),(606,47,573,NULL,1,72,1038,13.50,13.50,NULL,'2020-02-21 14:18:16'),(607,47,574,NULL,1,72,1040,0.50,0.50,NULL,'2020-02-21 14:18:16'),(608,47,575,NULL,1,72,1043,27.00,27.00,NULL,'2020-02-21 14:18:17'),(609,47,576,NULL,1,72,1044,13.50,13.50,NULL,'2020-02-21 14:18:17'),(610,48,577,NULL,1,72,199,2.00,2.00,NULL,'2020-02-26 06:46:33'),(611,48,578,NULL,1,72,198,2.00,2.00,NULL,'2020-02-26 06:46:33'),(612,48,579,NULL,1,72,153,5.00,5.00,NULL,'2020-02-26 06:46:33'),(613,48,580,NULL,1,72,208,17.00,17.00,NULL,'2020-02-26 06:46:33'),(614,48,581,NULL,1,72,209,6.00,6.00,NULL,'2020-02-26 06:46:33'),(615,48,582,NULL,1,72,205,4.00,4.00,NULL,'2020-02-26 06:46:33'),(616,48,583,NULL,1,72,197,4.00,4.00,NULL,'2020-02-26 06:46:33'),(617,48,584,NULL,1,72,526,60.00,60.00,NULL,'2020-02-26 06:46:33'),(618,48,585,NULL,1,72,529,30.00,30.00,NULL,'2020-02-26 06:46:33'),(619,48,586,NULL,1,72,433,5.00,5.00,NULL,'2020-02-26 06:46:33'),(620,48,587,NULL,1,72,533,60.00,60.00,NULL,'2020-02-26 06:46:33'),(621,48,588,NULL,1,72,432,2.00,2.00,NULL,'2020-02-26 06:46:33'),(622,48,589,NULL,1,72,774,4.00,4.00,NULL,'2020-02-26 06:46:33'),(623,48,590,NULL,1,72,471,4.00,4.00,NULL,'2020-02-26 06:46:33'),(624,48,591,NULL,1,72,472,5.00,5.00,NULL,'2020-02-26 06:46:33'),(625,48,592,NULL,1,72,473,4.00,4.00,NULL,'2020-02-26 06:46:33'),(626,48,593,NULL,1,72,510,6.00,6.00,NULL,'2020-02-26 06:46:33'),(627,48,594,NULL,1,72,509,1.00,1.00,NULL,'2020-02-26 06:46:33'),(628,48,595,NULL,1,72,758,0.25,0.25,NULL,'2020-02-26 06:46:33'),(629,48,596,NULL,1,72,765,0.25,0.25,NULL,'2020-02-26 06:46:33'),(630,48,597,NULL,1,72,766,0.25,0.25,NULL,'2020-02-26 06:46:33'),(631,48,598,NULL,1,72,767,0.25,0.25,NULL,'2020-02-26 06:46:33'),(632,48,599,NULL,1,72,505,50.00,50.00,NULL,'2020-02-26 06:46:33'),(633,48,600,NULL,1,72,488,0.27,0.27,NULL,'2020-02-26 06:46:33'),(634,48,601,NULL,1,72,402,0.15,0.15,NULL,'2020-02-26 06:46:33'),(635,48,602,NULL,1,72,211,1.66,1.66,NULL,'2020-02-26 06:46:33'),(636,48,603,NULL,1,72,803,2.00,2.00,NULL,'2020-02-26 06:46:33'),(637,48,604,NULL,1,72,206,1.00,1.00,NULL,'2020-02-26 06:46:33'),(638,48,605,NULL,1,72,207,2.00,2.00,NULL,'2020-02-26 06:46:33'),(639,48,606,NULL,1,72,362,1.00,1.00,NULL,'2020-02-26 06:46:33'),(640,48,607,NULL,1,72,375,1.00,1.00,NULL,'2020-02-26 06:46:33'),(641,48,608,NULL,1,72,355,1.00,1.00,NULL,'2020-02-26 06:46:33'),(642,48,609,NULL,1,72,366,4.00,4.00,NULL,'2020-02-26 06:46:33'),(643,48,610,NULL,1,72,365,2.00,2.00,NULL,'2020-02-26 06:46:33'),(644,48,611,NULL,1,72,475,1.00,1.00,NULL,'2020-02-26 06:46:33'),(645,48,612,NULL,1,72,195,1.26,1.26,NULL,'2020-02-26 06:46:33'),(646,48,613,NULL,1,72,77,1.00,1.00,NULL,'2020-02-26 06:46:33'),(647,48,614,NULL,1,72,48,1.00,1.00,NULL,'2020-02-26 06:46:33'),(648,48,615,NULL,1,72,34,6.00,6.00,NULL,'2020-02-26 06:46:33'),(649,48,616,NULL,1,72,69,2.00,2.00,NULL,'2020-02-26 06:46:33'),(650,48,617,NULL,1,72,56,32.00,32.00,NULL,'2020-02-26 06:46:33'),(651,48,618,NULL,1,72,42,5.00,5.00,NULL,'2020-02-26 06:46:33'),(652,48,619,NULL,1,72,40,12.00,12.00,NULL,'2020-02-26 06:46:33'),(653,48,620,NULL,1,72,33,2.00,2.00,NULL,'2020-02-26 06:46:33'),(654,48,621,NULL,1,72,38,1.00,1.00,NULL,'2020-02-26 06:46:33'),(655,48,622,NULL,1,72,64,9.00,9.00,NULL,'2020-02-26 06:46:33'),(656,48,623,NULL,1,72,78,1.00,1.00,NULL,'2020-02-26 06:46:33'),(657,48,624,NULL,1,72,79,2.00,2.00,NULL,'2020-02-26 06:46:33'),(658,48,625,NULL,1,72,61,2.00,2.00,NULL,'2020-02-26 06:46:33'),(659,48,626,NULL,1,72,63,7.00,7.00,NULL,'2020-02-26 06:46:33'),(660,48,627,NULL,1,72,60,6.00,6.00,NULL,'2020-02-26 06:46:33'),(661,48,628,NULL,1,72,62,6.00,6.00,NULL,'2020-02-26 06:46:33'),(662,48,629,NULL,1,72,10,0.02,0.02,NULL,'2020-02-26 06:46:33'),(663,48,630,NULL,1,72,20,0.02,0.02,NULL,'2020-02-26 06:46:33'),(664,48,631,NULL,1,72,28,0.02,0.02,NULL,'2020-02-26 06:46:33'),(665,48,632,NULL,1,72,9,0.20,0.20,NULL,'2020-02-26 06:46:33'),(666,48,633,NULL,1,72,13,0.20,0.20,NULL,'2020-02-26 06:46:33'),(667,48,634,NULL,1,72,27,0.01,0.01,NULL,'2020-02-26 06:46:33'),(668,48,635,NULL,1,72,8,0.16,0.16,NULL,'2020-02-26 06:46:33'),(669,48,636,NULL,1,72,21,0.18,0.18,NULL,'2020-02-26 06:46:33'),(670,48,637,NULL,1,72,7,0.02,0.02,NULL,'2020-02-26 06:46:33'),(671,48,638,NULL,1,72,45,1.00,1.00,NULL,'2020-02-26 06:46:33'),(672,48,639,NULL,1,72,67,1.00,1.00,NULL,'2020-02-26 06:46:33'),(673,48,640,NULL,1,72,71,1.00,1.00,NULL,'2020-02-26 06:46:33'),(674,48,641,NULL,1,72,1,1.00,1.00,NULL,'2020-02-26 06:46:33'),(675,48,642,NULL,1,72,3,4.00,4.00,NULL,'2020-02-26 06:46:33'),(676,48,643,NULL,1,72,36,0.20,0.20,NULL,'2020-02-26 06:46:33'),(677,48,644,NULL,1,72,37,0.20,0.20,NULL,'2020-02-26 06:46:33'),(678,48,645,NULL,1,72,54,2.00,2.00,NULL,'2020-02-26 06:46:33'),(679,48,646,NULL,1,72,55,2.00,2.00,NULL,'2020-02-26 06:46:33'),(680,48,647,NULL,1,72,168,1.00,1.00,NULL,'2020-02-26 06:46:33'),(681,48,648,NULL,1,72,215,1.00,1.00,NULL,'2020-02-26 06:46:33'),(682,48,649,NULL,1,72,381,1.00,1.00,NULL,'2020-02-26 06:46:33'),(683,48,650,NULL,1,72,524,5.00,5.00,NULL,'2020-02-26 06:46:33'),(684,48,651,NULL,1,72,539,4.00,4.00,NULL,'2020-02-26 06:46:33'),(685,48,652,NULL,1,72,435,2.00,2.00,NULL,'2020-02-26 06:46:33'),(686,48,653,NULL,1,72,39,1.00,1.00,NULL,'2020-02-26 06:46:33'),(687,48,654,NULL,1,72,57,3.00,3.00,NULL,'2020-02-26 06:46:33'),(688,48,655,NULL,1,72,85,1.00,1.00,NULL,'2020-02-26 06:46:33'),(689,48,656,NULL,1,72,455,1.00,1.00,NULL,'2020-02-26 06:46:33'),(690,48,657,NULL,1,72,482,2.00,2.00,NULL,'2020-02-26 06:46:33'),(691,48,658,NULL,1,72,368,2.00,2.00,NULL,'2020-02-26 06:46:33'),(692,48,659,NULL,1,72,544,2.00,2.00,NULL,'2020-02-26 06:46:33'),(693,48,660,NULL,1,72,374,2.00,2.00,NULL,'2020-02-26 06:46:33'),(694,48,661,NULL,1,72,754,0.27,0.27,NULL,'2020-02-26 06:46:33'),(695,48,662,NULL,1,72,773,0.27,0.27,NULL,'2020-02-26 06:46:33'),(696,48,663,NULL,1,72,431,0.28,0.28,NULL,'2020-02-26 06:46:33'),(697,48,664,NULL,1,72,761,0.25,0.25,NULL,'2020-02-26 06:46:33'),(698,48,665,NULL,1,72,364,0.25,0.25,NULL,'2020-02-26 06:46:33'),(699,48,666,NULL,1,72,764,1.00,1.00,NULL,'2020-02-26 06:46:33'),(700,48,667,NULL,1,72,772,1.00,1.00,NULL,'2020-02-26 06:46:33'),(701,43,467,NULL,3,88,1036,0.00,0.00,0.00,'2020-02-26 07:13:14'),(702,43,468,NULL,3,88,1037,0.00,0.00,0.00,'2020-02-26 07:13:14'),(703,43,469,NULL,3,88,1035,0.00,0.00,0.00,'2020-02-26 07:13:14'),(704,43,470,NULL,3,88,1038,0.00,0.00,0.00,'2020-02-26 07:13:14'),(705,43,471,NULL,3,88,1040,0.00,0.00,0.00,'2020-02-26 07:13:14'),(706,43,472,NULL,3,88,1043,0.00,0.00,0.00,'2020-02-26 07:13:14'),(707,43,473,NULL,3,88,1044,0.00,0.00,0.00,'2020-02-26 07:13:14'),(708,48,641,NULL,2,72,1,15.00,15.00,0.00,'2020-03-02 10:57:46'),(709,49,668,NULL,1,72,1,4.00,4.00,NULL,'2020-03-03 06:57:45'),(710,50,669,NULL,1,72,467,10.00,10.00,NULL,'2020-03-03 06:59:27'),(711,50,670,NULL,1,72,796,5.00,5.00,NULL,'2020-03-03 06:59:27'),(712,50,671,NULL,1,72,1,2.00,2.00,NULL,'2020-03-03 06:59:27'),(713,50,672,NULL,1,72,58,1.00,1.00,NULL,'2020-03-03 06:59:27'),(714,50,673,NULL,1,72,226,1.00,1.00,NULL,'2020-03-03 06:59:27'),(715,50,674,NULL,1,72,514,4.00,4.00,NULL,'2020-03-03 06:59:27'),(716,50,675,NULL,1,72,2,1.00,1.00,NULL,'2020-03-03 06:59:27'),(717,50,676,NULL,1,72,73,1.00,1.00,NULL,'2020-03-03 06:59:27'),(718,50,677,NULL,1,72,7,10.00,10.00,NULL,'2020-03-03 06:59:27'),(719,51,678,NULL,1,72,2,2.00,2.00,NULL,'2020-03-03 09:14:43'),(720,52,679,NULL,1,88,559,3.00,3.00,NULL,'2020-03-03 09:23:11'),(721,52,680,NULL,1,88,668,3.00,3.00,NULL,'2020-03-03 09:23:11'),(722,52,681,NULL,1,88,567,5.00,5.00,NULL,'2020-03-03 09:23:11'),(723,52,682,NULL,1,88,103,15.00,15.00,NULL,'2020-03-03 09:23:11'),(724,52,683,NULL,1,88,81,3.00,3.00,NULL,'2020-03-03 09:23:11'),(725,52,684,NULL,1,88,1059,1.00,1.00,NULL,'2020-03-03 09:23:11'),(726,52,685,NULL,1,88,29,0.15,0.15,NULL,'2020-03-03 09:23:11'),(727,52,686,NULL,1,88,560,4.00,4.00,NULL,'2020-03-03 09:23:11'),(728,52,687,NULL,1,88,674,4.00,4.00,NULL,'2020-03-03 09:23:11'),(729,52,688,NULL,1,88,667,1.00,1.00,NULL,'2020-03-03 09:23:11'),(730,52,689,NULL,1,88,622,1.00,1.00,NULL,'2020-03-03 09:23:11'),(731,52,690,NULL,1,88,675,3.00,3.00,NULL,'2020-03-03 09:23:11'),(732,52,691,NULL,1,88,686,1.00,1.00,NULL,'2020-03-03 09:23:11'),(733,53,692,NULL,1,72,1,4.00,4.00,NULL,'2020-03-03 09:24:09'),(734,56,693,125,1,72,1,12.00,12.00,NULL,'2020-03-06 20:20:29'),(735,56,694,125,1,72,2,13.00,13.00,NULL,'2020-03-06 20:20:29'),(736,56,695,125,1,72,5,34.00,34.00,NULL,'2020-03-06 20:20:30'),(737,57,696,126,1,72,8,45.00,45.00,NULL,'2020-03-06 21:04:14'),(738,57,697,126,1,72,13,45.00,45.00,NULL,'2020-03-06 21:04:15'),(739,57,697,NULL,2,72,13,4.00,4.00,0.00,'2020-03-06 22:03:50'),(740,57,698,132,1,72,1,56.00,56.00,NULL,'2020-03-06 22:03:50'),(741,57,698,NULL,2,72,1,5.00,5.00,0.00,'2020-03-06 22:09:27'),(742,57,697,135,3,72,13,0.00,0.00,0.00,'2020-03-07 06:05:03'),(743,57,698,135,2,72,1,55.00,55.00,0.00,'2020-03-07 06:05:04'),(744,57,699,135,1,72,24,23.00,23.00,NULL,'2020-03-07 06:05:04'),(745,58,700,137,1,72,467,10.00,10.00,NULL,'2020-03-08 17:33:18'),(746,58,701,137,1,72,796,5.00,5.00,NULL,'2020-03-08 17:33:18'),(747,58,702,137,1,72,1,2.00,2.00,NULL,'2020-03-08 17:33:18'),(748,58,703,137,1,72,58,1.00,1.00,NULL,'2020-03-08 17:33:18'),(749,58,704,137,1,72,226,1.00,1.00,NULL,'2020-03-08 17:33:18'),(750,58,705,137,1,72,514,4.00,4.00,NULL,'2020-03-08 17:33:19'),(751,58,706,137,1,72,2,1.00,1.00,NULL,'2020-03-08 17:33:19'),(752,58,707,137,1,72,73,1.00,1.00,NULL,'2020-03-08 17:33:19'),(753,58,708,137,1,72,7,10.00,10.00,NULL,'2020-03-08 17:33:19'),(754,59,709,138,1,72,3,12.00,12.00,NULL,'2020-03-08 20:40:55'),(755,59,710,138,1,72,4,23.00,23.00,NULL,'2020-03-08 20:40:55'),(756,48,641,139,11,72,1,13.00,15.00,13.00,'2020-03-09 09:58:04'),(757,60,711,140,1,72,3,4.00,4.00,NULL,'2020-03-09 11:42:54'),(758,48,603,142,11,NULL,803,2.00,2.00,2.00,'2020-03-12 10:27:28'),(759,48,637,142,11,NULL,7,0.02,0.02,0.02,'2020-03-12 10:27:28'),(760,48,642,142,11,NULL,3,4.00,4.00,4.00,'2020-03-12 10:27:29'),(761,61,712,143,1,88,199,2.00,2.00,NULL,'2020-03-12 13:01:25'),(762,61,713,143,1,88,198,2.00,2.00,NULL,'2020-03-12 13:01:25'),(763,61,714,143,1,88,153,5.00,5.00,NULL,'2020-03-12 13:01:25'),(764,61,715,143,1,88,208,17.00,17.00,NULL,'2020-03-12 13:01:25'),(765,61,716,143,1,88,209,6.00,6.00,NULL,'2020-03-12 13:01:25'),(766,61,717,143,1,88,205,4.00,4.00,NULL,'2020-03-12 13:01:26'),(767,61,718,143,1,88,197,4.00,4.00,NULL,'2020-03-12 13:01:26'),(768,61,719,143,1,88,526,60.00,60.00,NULL,'2020-03-12 13:01:26'),(769,61,720,143,1,88,529,30.00,30.00,NULL,'2020-03-12 13:01:26'),(770,61,721,143,1,88,433,5.00,5.00,NULL,'2020-03-12 13:01:26'),(771,61,722,143,1,88,533,60.00,60.00,NULL,'2020-03-12 13:01:27'),(772,61,723,143,1,88,432,2.00,2.00,NULL,'2020-03-12 13:01:27'),(773,61,724,143,1,88,774,4.00,4.00,NULL,'2020-03-12 13:01:27'),(774,61,725,143,1,88,471,4.00,4.00,NULL,'2020-03-12 13:01:27'),(775,61,726,143,1,88,472,5.00,5.00,NULL,'2020-03-12 13:01:27'),(776,61,727,143,1,88,473,4.00,4.00,NULL,'2020-03-12 13:01:28'),(777,61,728,143,1,88,510,6.00,6.00,NULL,'2020-03-12 13:01:28'),(778,61,729,143,1,88,509,1.00,1.00,NULL,'2020-03-12 13:01:28'),(779,61,730,143,1,88,758,0.25,0.25,NULL,'2020-03-12 13:01:28'),(780,61,731,143,1,88,765,0.25,0.25,NULL,'2020-03-12 13:01:28'),(781,61,732,143,1,88,766,0.25,0.25,NULL,'2020-03-12 13:01:29'),(782,61,733,143,1,88,767,0.25,0.25,NULL,'2020-03-12 13:01:29'),(783,61,734,143,1,88,505,50.00,50.00,NULL,'2020-03-12 13:01:29'),(784,61,735,143,1,88,488,0.27,0.27,NULL,'2020-03-12 13:01:29'),(785,61,736,143,1,88,402,0.15,0.15,NULL,'2020-03-12 13:01:29'),(786,61,737,143,1,88,211,1.66,1.66,NULL,'2020-03-12 13:01:30'),(787,61,738,143,1,88,803,2.00,2.00,NULL,'2020-03-12 13:01:30'),(788,61,739,143,1,88,206,2.00,2.00,NULL,'2020-03-12 13:01:30'),(789,61,740,143,1,88,207,4.00,4.00,NULL,'2020-03-12 13:01:30'),(790,61,741,143,1,88,362,2.00,2.00,NULL,'2020-03-12 13:01:30'),(791,61,742,143,1,88,375,2.00,2.00,NULL,'2020-03-12 13:01:31'),(792,61,743,143,1,88,355,2.00,2.00,NULL,'2020-03-12 13:01:31'),(793,61,744,143,1,88,366,4.00,4.00,NULL,'2020-03-12 13:01:31'),(794,61,745,143,1,88,365,4.00,4.00,NULL,'2020-03-12 13:01:31'),(795,61,746,143,1,88,475,1.00,1.00,NULL,'2020-03-12 13:01:31'),(796,61,747,143,1,88,195,2.52,2.52,NULL,'2020-03-12 13:01:32'),(797,61,748,143,1,88,77,1.00,1.00,NULL,'2020-03-12 13:01:32'),(798,61,749,143,1,88,48,1.00,1.00,NULL,'2020-03-12 13:01:32'),(799,61,750,143,1,88,34,6.00,6.00,NULL,'2020-03-12 13:01:32'),(800,61,751,143,1,88,69,2.00,2.00,NULL,'2020-03-12 13:01:32'),(801,61,752,143,1,88,56,32.00,32.00,NULL,'2020-03-12 13:01:33'),(802,61,753,143,1,88,42,5.00,5.00,NULL,'2020-03-12 13:01:33'),(803,61,754,143,1,88,40,12.00,12.00,NULL,'2020-03-12 13:01:33'),(804,61,755,143,1,88,33,2.00,2.00,NULL,'2020-03-12 13:01:33'),(805,61,756,143,1,88,38,1.00,1.00,NULL,'2020-03-12 13:01:33'),(806,61,757,143,1,88,64,9.00,9.00,NULL,'2020-03-12 13:01:33'),(807,61,758,143,1,88,78,1.00,1.00,NULL,'2020-03-12 13:01:34'),(808,61,759,143,1,88,79,2.00,2.00,NULL,'2020-03-12 13:01:34'),(809,61,760,143,1,88,61,2.00,2.00,NULL,'2020-03-12 13:01:34'),(810,61,761,143,1,88,63,7.00,7.00,NULL,'2020-03-12 13:01:34'),(811,61,762,143,1,88,60,6.00,6.00,NULL,'2020-03-12 13:01:34'),(812,61,763,143,1,88,62,6.00,6.00,NULL,'2020-03-12 13:01:35'),(813,61,764,143,1,88,10,0.02,0.02,NULL,'2020-03-12 13:01:35'),(814,61,765,143,1,88,20,0.02,0.02,NULL,'2020-03-12 13:01:35'),(815,61,766,143,1,88,28,0.02,0.02,NULL,'2020-03-12 13:01:35'),(816,61,767,143,1,88,9,0.20,0.20,NULL,'2020-03-12 13:01:35'),(817,61,768,143,1,88,13,0.20,0.20,NULL,'2020-03-12 13:01:36'),(818,61,769,143,1,88,27,0.01,0.01,NULL,'2020-03-12 13:01:36'),(819,61,770,143,1,88,8,0.16,0.16,NULL,'2020-03-12 13:01:36'),(820,61,771,143,1,88,21,0.18,0.18,NULL,'2020-03-12 13:01:36'),(821,61,772,143,1,88,7,0.02,0.02,NULL,'2020-03-12 13:01:36'),(822,61,773,143,1,88,45,1.00,1.00,NULL,'2020-03-12 13:01:37'),(823,61,774,143,1,88,67,1.00,1.00,NULL,'2020-03-12 13:01:37'),(824,61,775,143,1,88,71,1.00,1.00,NULL,'2020-03-12 13:01:37'),(825,61,776,143,1,88,1,1.00,1.00,NULL,'2020-03-12 13:01:37'),(826,61,777,143,1,88,3,4.00,4.00,NULL,'2020-03-12 13:01:37'),(827,61,778,143,1,88,36,0.20,0.20,NULL,'2020-03-12 13:01:38'),(828,61,779,143,1,88,37,0.20,0.20,NULL,'2020-03-12 13:01:38'),(829,61,780,143,1,88,54,2.00,2.00,NULL,'2020-03-12 13:01:38'),(830,61,781,143,1,88,55,2.00,2.00,NULL,'2020-03-12 13:01:38'),(831,61,782,143,1,88,168,1.00,1.00,NULL,'2020-03-12 13:01:38'),(832,61,783,143,1,88,215,1.00,1.00,NULL,'2020-03-12 13:01:39'),(833,61,784,143,1,88,381,1.00,1.00,NULL,'2020-03-12 13:01:39'),(834,61,785,143,1,88,524,5.00,5.00,NULL,'2020-03-12 13:01:39'),(835,61,786,143,1,88,539,4.00,4.00,NULL,'2020-03-12 13:01:39'),(836,61,787,143,1,88,435,2.00,2.00,NULL,'2020-03-12 13:01:39'),(837,61,788,143,1,88,39,1.00,1.00,NULL,'2020-03-12 13:01:40'),(838,61,789,143,1,88,57,3.00,3.00,NULL,'2020-03-12 13:01:40'),(839,61,790,143,1,88,85,1.00,1.00,NULL,'2020-03-12 13:01:40'),(840,61,791,143,1,88,455,1.00,1.00,NULL,'2020-03-12 13:01:40'),(841,61,792,143,1,88,482,2.00,2.00,NULL,'2020-03-12 13:01:40'),(842,61,793,143,1,88,368,2.00,2.00,NULL,'2020-03-12 13:01:40'),(843,61,794,143,1,88,544,2.00,2.00,NULL,'2020-03-12 13:01:41'),(844,61,795,143,1,88,374,2.00,2.00,NULL,'2020-03-12 13:01:41'),(845,61,796,143,1,88,754,0.27,0.27,NULL,'2020-03-12 13:01:41'),(846,61,797,143,1,88,773,0.27,0.27,NULL,'2020-03-12 13:01:41'),(847,61,798,143,1,88,431,0.28,0.28,NULL,'2020-03-12 13:01:41'),(848,61,799,143,1,88,761,0.25,0.25,NULL,'2020-03-12 13:01:42'),(849,61,800,143,1,88,364,0.25,0.25,NULL,'2020-03-12 13:01:42'),(850,61,801,143,1,88,764,1.00,1.00,NULL,'2020-03-12 13:01:42'),(851,61,802,143,1,88,772,1.00,1.00,NULL,'2020-03-12 13:01:42'),(852,61,803,144,1,88,167,4.00,4.00,NULL,'2020-03-12 13:03:37'),(853,59,709,145,11,92,3,12.00,12.00,12.00,'2020-03-18 07:11:48'),(854,59,710,145,11,92,4,23.00,23.00,23.00,'2020-03-18 07:11:49'),(855,62,804,151,1,72,199,2.00,2.00,NULL,'2020-03-29 18:08:36'),(856,62,805,151,1,72,198,2.00,2.00,NULL,'2020-03-29 18:08:36'),(857,62,806,151,1,72,153,5.00,5.00,NULL,'2020-03-29 18:08:36'),(858,62,807,151,1,72,208,17.00,17.00,NULL,'2020-03-29 18:08:36'),(859,62,808,151,1,72,209,6.00,6.00,NULL,'2020-03-29 18:08:36'),(860,62,809,151,1,72,205,4.00,4.00,NULL,'2020-03-29 18:08:36'),(861,62,810,151,1,72,197,4.00,4.00,NULL,'2020-03-29 18:08:36'),(862,62,811,151,1,72,526,60.00,60.00,NULL,'2020-03-29 18:08:36'),(863,62,812,151,1,72,529,30.00,30.00,NULL,'2020-03-29 18:08:36'),(864,62,813,151,1,72,433,5.00,5.00,NULL,'2020-03-29 18:08:36'),(865,62,814,151,1,72,533,60.00,60.00,NULL,'2020-03-29 18:08:36'),(866,62,815,151,1,72,432,2.00,2.00,NULL,'2020-03-29 18:08:36'),(867,62,816,151,1,72,774,4.00,4.00,NULL,'2020-03-29 18:08:36'),(868,62,817,151,1,72,471,4.00,4.00,NULL,'2020-03-29 18:08:36'),(869,62,818,151,1,72,472,5.00,5.00,NULL,'2020-03-29 18:08:36'),(870,62,819,151,1,72,473,4.00,4.00,NULL,'2020-03-29 18:08:36'),(871,62,820,151,1,72,510,6.00,6.00,NULL,'2020-03-29 18:08:36'),(872,62,821,151,1,72,509,1.00,1.00,NULL,'2020-03-29 18:08:36'),(873,62,822,151,1,72,758,0.25,0.25,NULL,'2020-03-29 18:08:36'),(874,62,823,151,1,72,765,0.25,0.25,NULL,'2020-03-29 18:08:36'),(875,62,824,151,1,72,766,0.25,0.25,NULL,'2020-03-29 18:08:36'),(876,62,825,151,1,72,767,0.25,0.25,NULL,'2020-03-29 18:08:36'),(877,62,826,151,1,72,505,50.00,50.00,NULL,'2020-03-29 18:08:36'),(878,62,827,151,1,72,488,0.27,0.27,NULL,'2020-03-29 18:08:36'),(879,62,828,151,1,72,402,0.15,0.15,NULL,'2020-03-29 18:08:36'),(880,62,829,151,1,72,211,1.66,1.66,NULL,'2020-03-29 18:08:36'),(881,62,830,151,1,72,803,2.00,2.00,NULL,'2020-03-29 18:08:36'),(882,62,831,151,1,72,206,1.00,1.00,NULL,'2020-03-29 18:08:36'),(883,62,832,151,1,72,207,2.00,2.00,NULL,'2020-03-29 18:08:36'),(884,62,833,151,1,72,362,1.00,1.00,NULL,'2020-03-29 18:08:36'),(885,62,834,151,1,72,375,1.00,1.00,NULL,'2020-03-29 18:08:36'),(886,62,835,151,1,72,355,1.00,1.00,NULL,'2020-03-29 18:08:36'),(887,62,836,151,1,72,366,4.00,4.00,NULL,'2020-03-29 18:08:36'),(888,62,837,151,1,72,365,2.00,2.00,NULL,'2020-03-29 18:08:36'),(889,62,838,151,1,72,475,1.00,1.00,NULL,'2020-03-29 18:08:36'),(890,62,839,151,1,72,195,1.26,1.26,NULL,'2020-03-29 18:08:36'),(891,62,840,151,1,72,77,1.00,1.00,NULL,'2020-03-29 18:08:36'),(892,62,841,151,1,72,48,1.00,1.00,NULL,'2020-03-29 18:08:36'),(893,62,842,151,1,72,34,6.00,6.00,NULL,'2020-03-29 18:08:36'),(894,62,843,151,1,72,69,2.00,2.00,NULL,'2020-03-29 18:08:36'),(895,62,844,151,1,72,56,32.00,32.00,NULL,'2020-03-29 18:08:36'),(896,62,845,151,1,72,42,5.00,5.00,NULL,'2020-03-29 18:08:36'),(897,62,846,151,1,72,40,12.00,12.00,NULL,'2020-03-29 18:08:36'),(898,62,847,151,1,72,33,2.00,2.00,NULL,'2020-03-29 18:08:36'),(899,62,848,151,1,72,38,1.00,1.00,NULL,'2020-03-29 18:08:36'),(900,62,849,151,1,72,64,9.00,9.00,NULL,'2020-03-29 18:08:36'),(901,62,850,151,1,72,78,1.00,1.00,NULL,'2020-03-29 18:08:36'),(902,62,851,151,1,72,79,2.00,2.00,NULL,'2020-03-29 18:08:36'),(903,62,852,151,1,72,61,2.00,2.00,NULL,'2020-03-29 18:08:36'),(904,62,853,151,1,72,63,7.00,7.00,NULL,'2020-03-29 18:08:36'),(905,62,854,151,1,72,60,6.00,6.00,NULL,'2020-03-29 18:08:36'),(906,62,855,151,1,72,62,6.00,6.00,NULL,'2020-03-29 18:08:36'),(907,62,856,151,1,72,10,0.02,0.02,NULL,'2020-03-29 18:08:36'),(908,62,857,151,1,72,20,0.02,0.02,NULL,'2020-03-29 18:08:36'),(909,62,858,151,1,72,28,0.02,0.02,NULL,'2020-03-29 18:08:36'),(910,62,859,151,1,72,9,0.20,0.20,NULL,'2020-03-29 18:08:36'),(911,62,860,151,1,72,13,0.20,0.20,NULL,'2020-03-29 18:08:36'),(912,62,861,151,1,72,27,0.01,0.01,NULL,'2020-03-29 18:08:36'),(913,62,862,151,1,72,8,0.16,0.16,NULL,'2020-03-29 18:08:36'),(914,62,863,151,1,72,21,0.18,0.18,NULL,'2020-03-29 18:08:36'),(915,62,864,151,1,72,7,0.02,0.02,NULL,'2020-03-29 18:08:36'),(916,62,865,151,1,72,45,1.00,1.00,NULL,'2020-03-29 18:08:36'),(917,62,866,151,1,72,67,1.00,1.00,NULL,'2020-03-29 18:08:36'),(918,62,867,151,1,72,71,1.00,1.00,NULL,'2020-03-29 18:08:36'),(919,62,868,151,1,72,1,1.00,1.00,NULL,'2020-03-29 18:08:36'),(920,62,869,151,1,72,3,4.00,4.00,NULL,'2020-03-29 18:08:36'),(921,62,870,151,1,72,36,0.20,0.20,NULL,'2020-03-29 18:08:36'),(922,62,871,151,1,72,37,0.20,0.20,NULL,'2020-03-29 18:08:36'),(923,62,872,151,1,72,54,2.00,2.00,NULL,'2020-03-29 18:08:36'),(924,62,873,151,1,72,55,2.00,2.00,NULL,'2020-03-29 18:08:36'),(925,62,874,151,1,72,168,1.00,1.00,NULL,'2020-03-29 18:08:36'),(926,62,875,151,1,72,215,1.00,1.00,NULL,'2020-03-29 18:08:36'),(927,62,876,151,1,72,381,1.00,1.00,NULL,'2020-03-29 18:08:36'),(928,62,877,151,1,72,524,5.00,5.00,NULL,'2020-03-29 18:08:36'),(929,62,878,151,1,72,539,4.00,4.00,NULL,'2020-03-29 18:08:36'),(930,62,879,151,1,72,435,2.00,2.00,NULL,'2020-03-29 18:08:36'),(931,62,880,151,1,72,39,1.00,1.00,NULL,'2020-03-29 18:08:36'),(932,62,881,151,1,72,57,3.00,3.00,NULL,'2020-03-29 18:08:36'),(933,62,882,151,1,72,85,1.00,1.00,NULL,'2020-03-29 18:08:36'),(934,62,883,151,1,72,455,1.00,1.00,NULL,'2020-03-29 18:08:36'),(935,62,884,151,1,72,482,2.00,2.00,NULL,'2020-03-29 18:08:36'),(936,62,885,151,1,72,368,2.00,2.00,NULL,'2020-03-29 18:08:36'),(937,62,886,151,1,72,544,2.00,2.00,NULL,'2020-03-29 18:08:36'),(938,62,887,151,1,72,374,2.00,2.00,NULL,'2020-03-29 18:08:36'),(939,62,888,151,1,72,754,0.27,0.27,NULL,'2020-03-29 18:08:36'),(940,62,889,151,1,72,773,0.27,0.27,NULL,'2020-03-29 18:08:36'),(941,62,890,151,1,72,431,0.28,0.28,NULL,'2020-03-29 18:08:36'),(942,62,891,151,1,72,761,0.25,0.25,NULL,'2020-03-29 18:08:36'),(943,62,892,151,1,72,364,0.25,0.25,NULL,'2020-03-29 18:08:36'),(944,62,893,151,1,72,764,1.00,1.00,NULL,'2020-03-29 18:08:36'),(945,62,894,151,1,72,772,1.00,1.00,NULL,'2020-03-29 18:08:36'),(946,63,895,152,1,72,362,1.00,1.00,NULL,'2020-03-29 18:37:57'),(947,63,896,152,1,72,355,1.00,1.00,NULL,'2020-03-29 18:37:57'),(948,63,897,152,1,72,375,1.00,1.00,NULL,'2020-03-29 18:37:57'),(949,63,898,152,1,72,366,3.00,3.00,NULL,'2020-03-29 18:37:57'),(950,63,899,152,1,72,365,2.00,2.00,NULL,'2020-03-29 18:37:57'),(951,63,900,152,1,72,475,1.00,1.00,NULL,'2020-03-29 18:37:57'),(952,63,901,152,1,72,208,1.00,1.00,NULL,'2020-03-29 18:37:57'),(953,64,902,153,1,72,362,1.00,1.00,NULL,'2020-03-29 18:39:11'),(954,64,903,153,1,72,355,1.00,1.00,NULL,'2020-03-29 18:39:11'),(955,64,904,153,1,72,375,1.00,1.00,NULL,'2020-03-29 18:39:11'),(956,64,905,153,1,72,366,3.00,3.00,NULL,'2020-03-29 18:39:11'),(957,64,906,153,1,72,365,2.00,2.00,NULL,'2020-03-29 18:39:11'),(958,64,907,153,1,72,475,1.00,1.00,NULL,'2020-03-29 18:39:11'),(959,64,908,153,1,72,208,1.00,1.00,NULL,'2020-03-29 18:39:11'),(960,65,909,154,1,72,362,1.00,1.00,NULL,'2020-03-29 18:53:12'),(961,65,910,154,1,72,355,1.00,1.00,NULL,'2020-03-29 18:53:12'),(962,65,911,154,1,72,375,1.00,1.00,NULL,'2020-03-29 18:53:12'),(963,65,912,154,1,72,366,3.00,3.00,NULL,'2020-03-29 18:53:12'),(964,65,913,154,1,72,365,2.00,2.00,NULL,'2020-03-29 18:53:12'),(965,65,914,154,1,72,475,1.00,1.00,NULL,'2020-03-29 18:53:12'),(966,65,915,154,1,72,208,1.00,1.00,NULL,'2020-03-29 18:53:12'),(967,66,916,155,1,72,362,1.00,1.00,NULL,'2020-03-29 19:08:15'),(968,66,917,155,1,72,355,1.00,1.00,NULL,'2020-03-29 19:08:15'),(969,66,918,155,1,72,375,1.00,1.00,NULL,'2020-03-29 19:08:15'),(970,66,919,155,1,72,366,3.00,3.00,NULL,'2020-03-29 19:08:15'),(971,66,920,155,1,72,365,2.00,2.00,NULL,'2020-03-29 19:08:15'),(972,66,921,155,1,72,475,1.00,1.00,NULL,'2020-03-29 19:08:15'),(973,66,922,155,1,72,208,1.00,1.00,NULL,'2020-03-29 19:08:15'),(974,67,923,156,1,72,362,2.00,2.00,NULL,'2020-03-29 19:15:16'),(975,67,924,156,1,72,355,2.00,2.00,NULL,'2020-03-29 19:15:16'),(976,67,925,156,1,72,375,2.00,2.00,NULL,'2020-03-29 19:15:16'),(977,67,926,156,1,72,366,6.00,6.00,NULL,'2020-03-29 19:15:16'),(978,67,927,156,1,72,365,4.00,4.00,NULL,'2020-03-29 19:15:16'),(979,67,928,156,1,72,475,2.00,2.00,NULL,'2020-03-29 19:15:16'),(980,67,929,156,1,72,208,2.00,2.00,NULL,'2020-03-29 19:15:16'),(981,67,923,157,2,72,362,3.00,3.00,0.00,'2020-03-29 19:17:47'),(982,67,924,157,2,72,355,3.00,3.00,0.00,'2020-03-29 19:17:47'),(983,67,925,157,2,72,375,3.00,3.00,0.00,'2020-03-29 19:17:47'),(984,67,926,157,2,72,366,9.00,9.00,0.00,'2020-03-29 19:17:47'),(985,67,927,157,2,72,365,6.00,6.00,0.00,'2020-03-29 19:17:47'),(986,67,928,157,2,72,475,3.00,3.00,0.00,'2020-03-29 19:17:47'),(987,67,929,157,2,72,208,3.00,3.00,0.00,'2020-03-29 19:17:47'),(988,67,923,160,2,72,362,4.00,4.00,0.00,'2020-03-29 19:20:08'),(989,67,924,160,2,72,355,4.00,4.00,0.00,'2020-03-29 19:20:08'),(990,67,925,160,2,72,375,4.00,4.00,0.00,'2020-03-29 19:20:08'),(991,67,926,160,2,72,366,12.00,12.00,0.00,'2020-03-29 19:20:08'),(992,67,927,160,2,72,365,8.00,8.00,0.00,'2020-03-29 19:20:08'),(993,67,928,160,2,72,475,4.00,4.00,0.00,'2020-03-29 19:20:08'),(994,67,929,160,2,72,208,4.00,4.00,0.00,'2020-03-29 19:20:08'),(995,68,930,164,1,72,362,1.00,1.00,NULL,'2020-03-29 20:21:16'),(996,68,931,164,1,72,355,1.00,1.00,NULL,'2020-03-29 20:21:16'),(997,68,932,164,1,72,375,1.00,1.00,NULL,'2020-03-29 20:21:16'),(998,68,933,164,1,72,366,3.00,3.00,NULL,'2020-03-29 20:21:16'),(999,68,934,164,1,72,365,2.00,2.00,NULL,'2020-03-29 20:21:16'),(1000,68,935,164,1,72,475,1.00,1.00,NULL,'2020-03-29 20:21:16'),(1001,68,936,164,1,72,208,1.00,1.00,NULL,'2020-03-29 20:21:16'),(1002,69,937,165,1,72,362,1.00,1.00,NULL,'2020-03-29 21:11:59'),(1003,69,938,165,1,72,355,1.00,1.00,NULL,'2020-03-29 21:11:59'),(1004,69,939,165,1,72,375,1.00,1.00,NULL,'2020-03-29 21:11:59'),(1005,69,940,165,1,72,366,3.00,3.00,NULL,'2020-03-29 21:11:59'),(1006,69,941,165,1,72,365,2.00,2.00,NULL,'2020-03-29 21:11:59'),(1007,69,942,165,1,72,475,1.00,1.00,NULL,'2020-03-29 21:11:59'),(1008,69,943,165,1,72,208,1.00,1.00,NULL,'2020-03-29 21:11:59'),(1009,69,941,166,2,72,365,20.00,20.00,0.00,'2020-03-30 01:21:12'),(1010,69,943,166,3,72,208,0.00,0.00,0.00,'2020-03-30 01:21:12'),(1011,69,944,166,1,72,1,12.00,12.00,NULL,'2020-03-30 01:21:12'),(1012,69,944,167,11,72,1,5.00,12.00,5.00,'2020-03-30 01:33:56');
/*!40000 ALTER TABLE `modulos_movimientos_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_tipos_movimientos`
--

DROP TABLE IF EXISTS `modulos_tipos_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_tipos_movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_tipos_movimientos`
--

LOCK TABLES `modulos_tipos_movimientos` WRITE;
/*!40000 ALTER TABLE `modulos_tipos_movimientos` DISABLE KEYS */;
INSERT INTO `modulos_tipos_movimientos` VALUES (1,'Crear Módulo'),(2,'Modificar Módulo'),(3,'Cambio de Estado'),(11,'Asignar Insumos'),(12,'Devolver Insumos');
/*!40000 ALTER TABLE `modulos_tipos_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_tipos_movimientos_insumos`
--

DROP TABLE IF EXISTS `modulos_tipos_movimientos_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_tipos_movimientos_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_tipos_movimientos_insumos`
--

LOCK TABLES `modulos_tipos_movimientos_insumos` WRITE;
/*!40000 ALTER TABLE `modulos_tipos_movimientos_insumos` DISABLE KEYS */;
INSERT INTO `modulos_tipos_movimientos_insumos` VALUES (1,'Agregar Insumo'),(2,'Modificar Insumo'),(3,'Quitar Insumo'),(11,'Asignar Cantidad'),(12,'Devolver Cantidad');
/*!40000 ALTER TABLE `modulos_tipos_movimientos_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  `descripcion_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,'ingreso',1,'IN'),(2,'entrega',1,'EN'),(3,'ajuste',1,'AJ'),(4,'devolucion',1,'DEV'),(5,'modificacion',1,'MOD'),(6,'creacion',1,'CRE'),(7,'eliminacion',1,'ELI');
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(45) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_pedidos_estados` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'N14 17-02-20',1,NULL,2),(2,'p1',1,NULL,2),(3,'e1',1,NULL,2),(4,'e2',1,NULL,2),(5,'www',0,NULL,1),(6,'www',1,NULL,5),(7,'prueba',0,NULL,1),(8,'REF1',1,NULL,4),(9,'pedido grande',1,NULL,4),(10,'ttt',1,NULL,2),(11,'r1',1,NULL,2),(12,'e',1,NULL,2),(13,'r',1,NULL,2),(14,'e',1,NULL,5),(15,'ofc',1,NULL,2),(16,'202001',1,NULL,2),(17,'202003',1,NULL,2),(18,'MST366 - KBA620',1,NULL,2),(19,'Axor NQN',1,NULL,2),(20,'orden 035',1,NULL,5),(21,'ref4',1,NULL,2),(22,'rr5',1,NULL,2),(23,'pedido de prueba',1,NULL,2),(24,'ref5',1,NULL,2),(25,'ref 6',1,NULL,2),(26,'NQN 10032020',1,NULL,1),(27,'OSV210',1,NULL,2),(28,'r1',1,NULL,2),(29,'r2',1,NULL,2),(30,'r4',1,NULL,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_estados`
--

DROP TABLE IF EXISTS `pedidos_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_estados` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_estados`
--

LOCK TABLES `pedidos_estados` WRITE;
/*!40000 ALTER TABLE `pedidos_estados` DISABLE KEYS */;
INSERT INTO `pedidos_estados` VALUES (1,'Inicial'),(2,'Solicitado'),(3,'En Pausa'),(4,'Cancelado'),(5,'Finalizado');
/*!40000 ALTER TABLE `pedidos_estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_insumos`
--

DROP TABLE IF EXISTS `pedidos_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_insumo` int(11) NOT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_insumos`
--

LOCK TABLES `pedidos_insumos` WRITE;
/*!40000 ALTER TABLE `pedidos_insumos` DISABLE KEYS */;
INSERT INTO `pedidos_insumos` VALUES (3,2,3,3.00,1),(29,3,3,3.00,1),(30,3,4,3.00,1),(31,3,5,1.00,1),(32,3,8,2.00,1),(38,4,2,3.00,1),(39,5,1,2.00,1),(40,5,5,5.00,1),(46,6,1,3.60,1),(49,7,2,12.00,1),(50,8,2,0.30,1),(51,8,4,12.00,1),(70,9,1035,3.00,1),(71,9,1037,12.00,1),(72,9,1038,NULL,1),(73,9,1040,NULL,1),(74,9,1043,NULL,1),(75,9,1044,NULL,1),(76,10,1053,500.89,1),(77,11,7,3.89,1),(78,12,153,100.00,1),(79,13,198,10.00,1),(80,14,198,10.00,1),(81,15,1055,100.00,1),(84,17,1,10.00,1),(85,16,1,10.00,1),(86,16,2,5.00,1),(87,1,45,10.00,1),(91,18,733,1.00,1),(92,18,1056,1.00,1),(93,19,1060,1.00,1),(94,20,1,5.00,1),(95,20,5,7.00,1),(96,20,3,9.00,1),(97,21,33,15.00,1),(98,22,33,6.00,1),(99,23,1,6.00,1),(101,24,3,520.00,1),(102,24,1,1.00,1),(104,25,1,4.00,1),(105,26,297,20.00,1),(106,27,1080,1.00,1),(107,27,1079,1.00,1),(108,28,2,2.00,1),(109,29,2,5.00,1),(110,30,1,3.00,1),(111,30,2,2.00,1);
/*!40000 ALTER TABLE `pedidos_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantillas`
--

DROP TABLE IF EXISTS `plantillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantillas`
--

LOCK TABLES `plantillas` WRITE;
/*!40000 ALTER TABLE `plantillas` DISABLE KEYS */;
INSERT INTO `plantillas` VALUES (1,'OFC6-PLEG-C/AA','MODULO OFICINA SIMPLE DE 6.00 X 2.50 MTS',1),(2,'C1','Test Daniel',0),(3,'COMPANY MAN  ','COMPANY MAN 12.00 X  2.50 MTS rev. 1/2020',0),(4,'protento - pasillo','pasillo integrador',0),(5,'TALLER 4 X 3 D','OPERARIO 4 X 3 DIAS',0),(6,'P800 Ext','Puerta de Panel 800 x 2000 (antipanico y cierreaereo)',1);
/*!40000 ALTER TABLE `plantillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantillas_insumos`
--

DROP TABLE IF EXISTS `plantillas_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantillas_insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_plantilla` int(11) DEFAULT NULL,
  `id_insumo` int(11) DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=794 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantillas_insumos`
--

LOCK TABLES `plantillas_insumos` WRITE;
/*!40000 ALTER TABLE `plantillas_insumos` DISABLE KEYS */;
INSERT INTO `plantillas_insumos` VALUES (277,2,1,4.35,1),(278,2,2,3.59,1),(288,3,467,10.00,1),(289,3,796,5.00,1),(290,3,1,2.00,1),(291,3,58,1.00,1),(292,3,226,1.00,1),(293,3,514,4.00,1),(294,3,2,1.00,1),(295,3,73,1.00,1),(296,3,7,10.00,1),(473,5,1036,27.00,1),(474,5,1037,27.00,1),(475,5,1035,108.00,1),(476,5,1038,13.50,1),(477,5,1040,0.50,1),(478,5,1043,27.00,1),(479,5,1044,13.50,1),(679,1,199,2.00,1),(680,1,198,2.00,1),(681,1,153,5.00,1),(682,1,208,17.00,1),(683,1,209,6.00,1),(684,1,205,4.00,1),(685,1,197,4.00,1),(686,1,526,60.00,1),(687,1,529,30.00,1),(688,1,433,5.00,1),(689,1,533,60.00,1),(690,1,432,2.00,1),(691,1,774,4.00,1),(692,1,471,4.00,1),(693,1,472,5.00,1),(694,1,473,4.00,1),(695,1,510,6.00,1),(696,1,509,1.00,1),(697,1,758,0.25,1),(698,1,765,0.25,1),(699,1,766,0.25,1),(700,1,767,0.25,1),(701,1,505,50.00,1),(702,1,488,0.27,1),(703,1,402,0.15,1),(704,1,211,1.66,1),(705,1,803,2.00,1),(706,1,206,1.00,1),(707,1,207,2.00,1),(708,1,362,1.00,1),(709,1,375,1.00,1),(710,1,355,1.00,1),(711,1,366,4.00,1),(712,1,365,2.00,1),(713,1,475,1.00,1),(714,1,195,1.26,1),(715,1,77,1.00,1),(716,1,48,1.00,1),(717,1,34,6.00,1),(718,1,69,2.00,1),(719,1,56,32.00,1),(720,1,42,5.00,1),(721,1,40,12.00,1),(722,1,33,2.00,1),(723,1,38,1.00,1),(724,1,64,9.00,1),(725,1,78,1.00,1),(726,1,79,2.00,1),(727,1,61,2.00,1),(728,1,63,7.00,1),(729,1,60,6.00,1),(730,1,62,6.00,1),(731,1,10,0.02,1),(732,1,20,0.02,1),(733,1,28,0.02,1),(734,1,9,0.20,1),(735,1,13,0.20,1),(736,1,27,0.01,1),(737,1,8,0.16,1),(738,1,21,0.18,1),(739,1,7,0.02,1),(740,1,45,1.00,1),(741,1,67,1.00,1),(742,1,71,1.00,1),(743,1,1,1.00,1),(744,1,3,4.00,1),(745,1,36,0.20,1),(746,1,37,0.20,1),(747,1,54,2.00,1),(748,1,55,2.00,1),(749,1,168,1.00,1),(750,1,215,1.00,1),(751,1,381,1.00,1),(752,1,524,5.00,1),(753,1,539,4.00,1),(754,1,435,2.00,1),(755,1,39,1.00,1),(756,1,57,3.00,1),(757,1,85,1.00,1),(758,1,455,1.00,1),(759,1,482,2.00,1),(760,1,368,2.00,1),(761,1,544,2.00,1),(762,1,374,2.00,1),(763,1,754,0.27,1),(764,1,773,0.27,1),(765,1,431,0.28,1),(766,1,761,0.25,1),(767,1,364,0.25,1),(768,1,764,1.00,1),(769,1,772,1.00,1),(770,4,488,0.60,1),(771,4,433,1.00,1),(772,4,149,2.00,1),(773,4,199,1.00,1),(774,4,153,1.00,1),(775,4,473,10.00,1),(776,4,432,0.50,1),(777,4,533,10.00,1),(778,4,765,0.15,1),(779,4,761,0.15,1),(780,4,431,0.05,1),(781,4,208,9.00,1),(782,4,766,0.15,1),(783,4,772,1.00,1),(784,4,764,1.00,1),(785,4,754,0.05,1),(786,4,773,0.05,1),(787,6,362,1.00,1),(788,6,355,1.00,1),(789,6,375,1.00,1),(790,6,366,3.00,1),(791,6,365,2.00,1),(792,6,475,1.00,1),(793,6,208,1.00,1);
/*!40000 ALTER TABLE `plantillas_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `id_users_type` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL DEFAULT '0',
  `activo` int(11) NOT NULL DEFAULT '1',
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='																																																																																																															';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'box','$2a$10$BJd.0.bo9VqpVHk1cb.Vy.RxBALb8W2dtvINqE8sAQ6nBlaWVXjWC',NULL,NULL,1,1,NULL),(72,'boxrental','$2a$10$bu4xGbOITHK/5A96aXg5jOAYt.NVz40ERBtaxeUPGksZtgSyWVc72','Box super admin',1,0,1,NULL),(73,'mati01','$2a$10$gpmLwj86TqfohJUK1i787.pQvWyZyg0xHsaZWRkoTMz9xzpUWOgmm','matias',3,0,0,NULL),(74,'Achavez','$2a$10$soU7JqMDzYjc9YbJSCixo.PfH8VbX3JkaoWONggHNtHCi9EjkevZG','Antonio Chavez',21,0,0,NULL),(75,'mat','$2a$10$qrzAlCEHLya9hGZWs/dDZ.YqWDzOg3hxE5ZOCzZNHad45sRgiNavS','Matias',3,0,0,NULL),(76,'mat','$2a$10$WblyIqgqM1XdlnjfMzGtl.qn8qW05MsFqC.vkpj7Kdf5C1TQEnl9a','Matias',1,0,0,NULL),(77,'mat','$2a$10$koL1qJGKPTpTy8dlz5DqnOs5eyED1sxLlmJWa9MR0d1riA7ma4oze','Matias',3,0,0,NULL),(78,'prub','$2a$10$G95WlrHb.2.CGJGPVHBXfOp5.IrXjbtoRQxoP1qbu1dWcIWR/tlNq','prueba',4,0,0,NULL),(79,'ventas','$2a$10$fa2GUN/3w5lucV2sh.pQCOMOBEk2E5kO2LJ/g6xcN1goUTvOXi3G.','nicolas',4,0,0,NULL),(80,'nicolas','$2a$10$WfqnGMhdKNe6iSv8TeBC5OghFO5WrnyAlX1JcuiEVL1TY/FbqNbWa','nicolas',NULL,0,0,NULL),(81,'jime','$2a$10$ajHEDLJ0.UrZ4P/BUTd5u.DaRgCuQAHZA9/sgGOOcdQpMdX32GKHu','jime',21,0,0,NULL),(82,'saltarellig','$2a$10$nJP7L5SY1GbcABhWQVQdWe7wi3d.AWbTv7d3b.zblUNyY/vwwuSqe','Gilda Saltarelli',3,0,1,NULL),(83,'bianchie','$2a$10$uBAErNGvvL/iwRruFMunFuKSXxfZgiKJfPSe3UN4RnoWS3oNz3c/K','Esteban Bianchi',20,0,1,NULL),(84,'alin','$2a$10$aYBOey/7bzsUHn3G5I5z4.e3Ltw0NWs9PfkanG9RBaye39yd0qL5u','Noeli Ali',23,0,1,NULL),(85,'Coradeginif','$2a$10$OG7WSuixw.GcBT85CX9W4uPV.hfqNIHGiSrWCP7THL0jwT/oisL1q','Fiorella Coradeghini',22,0,0,NULL),(86,'daniel','$2a$10$MIFdYfjpfahNAuspESAc2es4JE6fMgytsW.5CVYEYjfWlcH7A6ZYq','Daniel',1,0,1,NULL),(87,'Invisible','$2a$10$EVg617DTNCfyskiGXX6NKukHgYm.txsrs.NtvutxvIIFrskUuioni','Daiana',24,0,0,NULL),(88,'sanchezo','$2a$10$j4.6h3aIteUPK.Dk05dv8.a8zk5h3vxwE7IFET0nJ/22HarDnU0wK','Oscar Sanchez',1,0,1,NULL),(89,'Valbuenay','$2a$10$.dwk8gxxYzZKd1iO/sCmledROniqvvU4G236pH/mhMm0vAg9AKp1a','Yelitza Valbuena',25,0,1,NULL),(90,'Aguileram','$2a$10$n3hUu2ppjAzwZEstqoB1aeSI/VeJeCMAvm8Q5CddXpmYyk8/CsJNG','Micaela Aguilera',25,0,1,NULL),(91,'coradeghinif','$2a$10$y2/sfYVMdwG9PGwG9ZBIGuj54NqBsk5bNP12h20/plLqWTBthtGS.','Fiorella Coradeghini',1,0,1,NULL),(92,'chaveza','$2a$10$GHF010f8P3qzqEVN4NV4TuEeDSA4cHgpFcvX7LBOQVA4mSHP4ul0e','Antonio Chavez',26,0,1,NULL),(93,'lafiera','$2a$10$SRRp.EwvjcClkz7Vh8mBKuDtLeueVNa7Zn1Pw9Rx3aQ7K/eyBCuN2','maxi rodriguez',22,0,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_type`
--

DROP TABLE IF EXISTS `users_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_type`
--

LOCK TABLES `users_type` WRITE;
/*!40000 ALTER TABLE `users_type` DISABLE KEYS */;
INSERT INTO `users_type` VALUES (1,'Administrator',1),(2,'Pañol',0),(3,'Compras',1),(4,'Ventas',0),(5,'Gerencia',0),(20,'Producción A',1),(21,'Pañol',1),(22,'Gerencia',1),(23,'Producción B',1),(24,'auditora externa',1),(25,'Administracion Int',1),(26,'Pañol/Deposito',1);
/*!40000 ALTER TABLE `users_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_type_accesos`
--

DROP TABLE IF EXISTS `users_type_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_type_accesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_type` int(11) NOT NULL,
  `id_acceso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_type_accesos`
--

LOCK TABLES `users_type_accesos` WRITE;
/*!40000 ALTER TABLE `users_type_accesos` DISABLE KEYS */;
INSERT INTO `users_type_accesos` VALUES (104,0,24),(109,0,44),(111,0,52),(112,0,53),(113,0,54),(114,0,55),(116,0,62),(117,0,63),(125,0,24),(130,0,44),(132,0,52),(133,0,53),(134,0,54),(135,0,55),(137,0,62),(138,0,63),(146,0,24),(151,0,44),(153,0,52),(154,0,53),(155,0,54),(156,0,55),(158,0,62),(159,0,63),(167,0,24),(172,0,44),(174,0,52),(175,0,53),(176,0,54),(177,0,55),(179,0,62),(180,0,63),(201,0,24),(206,0,44),(208,0,52),(209,0,53),(210,0,54),(211,0,55),(213,0,62),(214,0,63),(258,4,51),(259,4,52),(260,4,53),(261,4,54),(262,4,55),(668,0,22),(689,0,22),(787,16,1),(788,16,11),(789,16,12),(790,17,1),(791,17,22),(792,17,42),(793,18,1),(794,18,23),(795,18,43),(796,19,1),(797,19,11),(798,19,12),(950,2,11),(951,2,12),(1209,21,61),(1210,21,62),(1211,21,63),(1212,22,1),(1213,22,11),(1214,22,12),(1242,23,22),(1243,23,51),(1244,23,52),(1245,23,53),(1246,23,71),(1247,20,21),(1248,20,22),(1249,20,51),(1250,20,52),(1251,20,53),(1252,20,71),(1253,1,1),(1254,1,11),(1255,1,12),(1256,1,21),(1257,1,22),(1258,1,23),(1259,1,24),(1260,1,31),(1261,1,41),(1262,1,42),(1263,1,43),(1264,1,44),(1265,1,51),(1266,1,52),(1267,1,53),(1268,1,54),(1269,1,55),(1270,1,61),(1271,1,62),(1272,1,63),(1273,1,71),(1274,1,72),(1275,1,32),(1276,24,32),(1277,24,41),(1278,24,53),(1279,24,54),(1280,24,63),(1281,24,71),(1282,3,23),(1283,3,31),(1284,3,32),(1285,3,71),(1286,3,72),(1287,25,71),(1296,26,43),(1297,26,61),(1298,26,62),(1299,26,63);
/*!40000 ALTER TABLE `users_type_accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'boxrental'
--
/*!50003 DROP PROCEDURE IF EXISTS `cursorinsumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursorinsumos`(
)
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE idinsumo INTEGER DEFAULT 0;
DECLARE vrequeridos DECIMAL(20,2) DEFAULT 0;
DECLARE vpedidos DECIMAL(20,2) DEFAULT 0;

 -- declare cursor for employee email
    DECLARE curInsumos 
        CURSOR FOR 
            SELECT id FROM insumos;
 
    -- declare NOT FOUND handler
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
        
DROP TABLE IF EXISTS tempRequeridos;

CREATE TEMPORARY TABLE tempRequeridos(
       id_insumo INT NOT NULL,
       requerido DECIMAL(20,2) DEFAULT 0
    );
    
DROP TABLE IF EXISTS tempPedidos;

CREATE TEMPORARY TABLE tempPedidos(
       id_insumo INT NOT NULL,
       pedido DECIMAL(20,2) DEFAULT 0
    );

    OPEN curInsumos;
 
    getInsumos: LOOP
        FETCH curInsumos INTO idinsumo;
        IF finished = 1 THEN 
            LEAVE getInsumos;
        END IF;
        -- build email list
        
        SELECT SUM(mi.cantidad)
        INTO vrequeridos
        FROM modulos_insumos mi
        WHERE mi.id_insumo = idinsumo;
        
        SELECT SUM(pi.cantidad)
        INTO vpedidos
        FROM pedidos_insumos pi
        WHERE pi.id_insumo = idinsumo;
        
        IF (vrequeridos IS NOT NULL) THEN
			INSERT INTO tempRequeridos(id_insumo, requerido) VALUES (idinsumo, vrequeridos);
		ELSE 
			INSERT INTO tempRequeridos(id_insumo, requerido) VALUES (idinsumo, 0);
        END IF;
        
        IF (vpedidos IS NOT NULL) THEN
			INSERT INTO tempPedidos(id_insumo, pedido) VALUES (idinsumo, vpedidos);
		ELSE 
			INSERT INTO tempPedidos(id_insumo, pedido) VALUES (idinsumo, 0);
        END IF;
        
    END LOOP getInsumos;
    
    CLOSE curInsumos;
    
	SELECT i.id, i.id_insumos_categorias, i.numero, i.descripcion, i.activo, 
	   i.unidad, i.minimo, i.cantidad, ic.codigo, t.requerido, p.pedido
	FROM insumos i 
	INNER JOIN insumos_categorias ic ON ic.id = i.id_insumos_categorias
    LEFT JOIN tempRequeridos t ON t.id_insumo = i.id
    LEFT JOIN tempPedidos p ON p.id_insumo = i.id
	WHERE i.activo=1 and i.alertar = 1 
	and (i.cantidad - t.requerido) < i.minimo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `devoluciones_agregar_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `devoluciones_agregar_insumo`(
IN i_id_devolucion INT,
IN I_id_modulo INT,
IN i_id_modulo_insumo INT,
IN i_id_modulo_movimiento INT,
IN i_cantidad DOUBLE,
IN i_id_user INT
)
BEGIN
SET @id_modulo = -1;
SET @id_insumo = -1;
SET @cantidad_asignada = -1;

SELECT id_insumo,cantidad,cantidad_asignada INTO @id_insumo,@cantidad_insumo,@cantidad_asignada FROM modulos_insumos WHERE id = i_id_modulo_insumo;

SELECT cantidad,minimo
INTO @cantidad,@minimo FROM insumos WHERE id = @id_insumo;

SELECT id_modulo INTO @id_modulo FROM devoluciones WHERE id = i_id_devolucion;




IF i_cantidad < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad debe ser mayor a 0';

END IF;

IF @id_insumo < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El insumo del modulo no se encuentra';

END IF;

IF @id_modulo <> i_id_modulo
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El modulo ingresado no coincide con la devolucion';

END IF;

IF @cantidad_asignada < i_cantidad
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad no debe superar a la asignada';

END IF;





INSERT INTO devoluciones_detalles (id_devolucion,id_insumo,cantidad) VALUES (i_id_devolucion,@id_insumo,i_cantidad);



SET @parcial = @cantidad + i_cantidad;

UPDATE insumos SET cantidad = cantidad + i_cantidad WHERE id = @id_insumo;

INSERT INTO insumos_movimientos (id_movimiento,cantidad,id_devolucion,id_insumo,parcial,minimo,id_user,fecha)
VALUES(4,i_cantidad,i_id_devolucion,@id_insumo,@parcial,@minimo,i_id_user,NOW());


INSERT INTO modulos_movimientos_insumos (id_modulo,id_modulo_insumo,id_modulo_movimiento,id_modulo_tipo_movimiento_insumo,id_insumo,cantidad,cantidad_insumo,cantidad_asignada,id_user,fecha)
VALUES (@id_modulo,i_id_modulo_insumo,i_id_modulo_movimiento,12,@id_insumo,i_cantidad,@cantidad_insumo,@cantidad_asignada - i_cantidad,i_id_user,NOW());

UPDATE modulos_insumos SET cantidad_asignada = cantidad_asignada - i_cantidad WHERE id = i_id_modulo_insumo;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `devoluciones_crear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `devoluciones_crear`(
IN i_id_modulo INT,
IN i_motivo VARCHAR(250),
IN i_referencia VARCHAR(250),
IN i_id_user INT
)
BEGIN
SET @id_validacion = -1;
SELECT id  INTO @id_validacion FROM modulos WHERE id = i_id_modulo AND activo = 1;

IF @id_validacion < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El modulo no se encuestra activo';

END IF;


INSERT INTO devoluciones (id_modulo,id_movimiento,motivo,referencia,id_user,fecha) VALUES (i_id_modulo,4,i_motivo,i_referencia,i_id_user,NOW());

SET @inserted_id_devolucion = LAST_INSERT_ID();

INSERT INTO modulos_movimientos (id_devolucion,id_modulo_tipo_movimiento,id_modulo,id_user,fecha) VALUES
 (@inserted_id_devolucion,12,i_id_modulo,i_id_user,NOW());

SET @inserted_id_modulo_movimiento = LAST_INSERT_ID();

SELECT @inserted_id_devolucion AS id_devolucion,@inserted_id_modulo_movimiento as id_modulo_movimiento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `devoluciones_listar_insumos_modulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `devoluciones_listar_insumos_modulo`(
IN i_id_modulo INT
)
BEGIN

SELECT mi.id as id_modulo_insumo,mi.cantidad as cantidad_modulo_insumo,mi.cantidad_asignada,mi.id_modulo,ic.codigo,i.* FROM modulos_insumos as mi  
LEFT JOIN insumos as i ON i.id = mi.id_insumo 
LEFT JOIN insumos_categorias as ic ON i.id_insumos_categorias = ic.id
WHERE mi.id_modulo =  i_id_modulo AND mi.activo > 0 AND mi.cantidad_asignada > 0; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `entregas_agregar_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `entregas_agregar_insumo`(
IN i_id_entrega INT,
IN i_id_modulo INT,
IN i_id_modulo_insumo INT,
IN i_id_modulo_movimiento INT,
IN i_cantidad DOUBLE,
IN i_id_user INT
)
BEGIN
SET @id_modulo = -1;
SET @id_insumo = -1;
SET @cantidad = -1;
SET @cantidad_asignada = -1;
SET @cantidad_insumo = -1;


SELECT id_insumo,cantidad,cantidad_asignada INTO @id_insumo,@cantidad_insumo,@cantidad_asignada FROM modulos_insumos WHERE id = i_id_modulo_insumo;

SELECT cantidad,minimo
INTO @cantidad,@minimo FROM insumos WHERE id = @id_insumo;

SELECT id_modulo INTO @id_modulo FROM entregas WHERE id = i_id_entrega;



IF i_cantidad < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad debe ser mayor a 0';

END IF;

IF i_cantidad > @cantidad OR i_cantidad > @cantidad_insumo - @cantidad_asignada
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad no puede ser mayor a la disponible de entrega';

END IF;

IF @id_insumo < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El insumo del modulo no se encuentra';

END IF;

IF @id_modulo <> i_id_modulo
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El modulo ingresado no coincide con la devolucion';

END IF;


INSERT INTO entregas_detalles (id_entrega,id_insumo,cantidad) VALUES (i_id_entrega,@id_insumo,i_cantidad);

SET @parcial = @cantidad - i_cantidad;

UPDATE insumos SET cantidad = cantidad - i_cantidad WHERE id = @id_insumo;

INSERT INTO insumos_movimientos (id_movimiento,cantidad,id_entrega,id_insumo,parcial,minimo,id_user,fecha)
VALUES(2,i_cantidad,i_id_entrega,@id_insumo,@parcial,@minimo,i_id_user,NOW());



INSERT INTO modulos_movimientos_insumos (id_modulo,id_modulo_insumo,id_modulo_movimiento,id_modulo_tipo_movimiento_insumo,id_insumo,cantidad,cantidad_insumo,cantidad_asignada,id_user,fecha)
VALUES (@id_modulo,i_id_modulo_insumo,i_id_modulo_movimiento,11,@id_insumo,i_cantidad,@cantidad_insumo,@cantidad_asignada + i_cantidad,i_id_user,NOW());

UPDATE modulos_insumos SET cantidad_asignada = cantidad_asignada + i_cantidad WHERE id = i_id_modulo_insumo;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `entregas_crear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `entregas_crear`(
IN i_id_modulo INT,
IN i_comentario VARCHAR(250),
IN i_referencia VARCHAR(250),
IN i_id_user INT
)
BEGIN
SET @id_validacion = -1;
SELECT id  INTO @id_validacion FROM modulos WHERE id = i_id_modulo AND activo =1;

IF @id_validacion < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El modulo no se encuestra activo';

END IF;

INSERT INTO entregas (id_modulo,id_movimiento,comentario,referencia,id_user,fecha) VALUES (i_id_modulo,2,i_comentario,i_referencia,i_id_user,NOW());

SET @inserted_id_entrega = LAST_INSERT_ID();

INSERT INTO modulos_movimientos (id_entrega,id_modulo_tipo_movimiento,id_modulo,id_user,fecha) VALUES
 (@inserted_id_entrega,11,i_id_modulo,i_id_user,NOW());

SET @inserted_id_modulo_movimiento = LAST_INSERT_ID();

SELECT @inserted_id_entrega as id_entrega,@inserted_id_modulo_movimiento as id_modulo_movimiento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `entregas_listar_insumos_modulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `entregas_listar_insumos_modulo`(
IN i_id_modulo INT
)
BEGIN

SELECT mi.id as id_modulo_insumo,mi.cantidad as cantidad_modulo_insumo,mi.cantidad_asignada,mi.id_modulo,ic.codigo,i.* FROM modulos_insumos as mi  
LEFT JOIN insumos as i ON i.id = mi.id_insumo 
LEFT JOIN insumos_categorias as ic ON i.id_insumos_categorias = ic.id
WHERE mi.id_modulo =  i_id_modulo AND mi.activo = 1 AND mi.cantidad - mi.cantidad_asignada > 0 AND i.cantidad > 0; 


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getusers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getusers`()
BEGIN
	select * from users;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user`(
IN i_id_user INT
)
BEGIN

SELECT * FROM users u WHERE u.id = i_id_user;

SELECT uta.id_acceso FROM users u INNER JOIN users_type ut ON ut.id = u.id_users_type INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id WHERE u.id = i_id_user AND ut.activo =1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_ajustar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_ajustar`(
IN i_id_insumo INT,
IN i_cantidad DOUBLE,
IN i_id_user INT
)
BEGIN

IF i_cantidad >= 0
THEN
SELECT minimo
INTO @minimo FROM insumos WHERE id = i_id_insumo;

UPDATE insumos SET cantidad = i_cantidad WHERE id = i_id_insumo;

INSERT INTO insumos_movimientos (id_movimiento,cantidad,id_insumo,parcial,minimo,id_user,fecha)
VALUES(3,i_cantidad,i_id_insumo,i_cantidad,@minimo,i_id_user,NOW());
ELSE
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad no puede ser menor a 0';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_crear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_crear`(
IN i_id_insumos_categorias INT,
IN i_numero INT,
IN i_descripcion VARCHAR(300),
IN i_unidad VARCHAR (200),
IN i_minimo INT,
IN i_alertar TINYINT(4),
IN i_autorizar TINYINT(4),
IN i_id_user INT

)
BEGIN

IF i_minimo < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El minimo debe ser mayor a 0';

END IF;

INSERT INTO insumos (id_insumos_categorias,numero,descripcion,unidad,minimo,alertar,autorizar) VALUES (i_id_insumos_categorias,i_numero,i_descripcion,i_unidad,i_minimo,i_alertar,i_autorizar);

SET @inserted_id_insumo = LAST_INSERT_ID();

INSERT INTO insumos_movimientos(id_movimiento,id_insumos_categorias,id_insumo,numero,descripcion,minimo,alertar,autorizar,id_user,fecha) VALUES (6,i_id_insumos_categorias,@inserted_id_insumo,i_numero,i_descripcion,i_minimo,i_alertar,i_autorizar,i_id_user,NOW());


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_ingresar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_ingresar`(
IN i_id_ingreso INT,
IN i_id_insumo INT,
IN i_cantidad DOUBLE,
IN i_id_user INT
)
BEGIN

SELECT cantidad INTO @cantidad_anterior FROM insumos WHERE id = i_id_insumo;

SELECT minimo
INTO @minimo FROM insumos WHERE id = i_id_insumo;




IF i_cantidad < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad ingresada debe ser mayor a 0';
END IF;

SET @parcial = @cantidad_anterior + i_cantidad;

UPDATE insumos SET cantidad = cantidad + i_cantidad WHERE id = i_id_insumo;

INSERT INTO ingresos_detalles (id_ingreso,id_insumo,cantidad) VALUES (i_id_ingreso,i_id_insumo,i_cantidad);

INSERT INTO insumos_movimientos (id_movimiento,cantidad,id_ingreso,id_insumo,parcial,minimo,id_user,fecha)
VALUES(1,i_cantidad,i_id_ingreso,i_id_insumo,@parcial,@minimo,i_id_user,NOW());




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_listar_alertados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_listar_alertados`()
BEGIN

SELECT valor
INTO @dias FROM configuraciones WHERE id = 1; 

SELECT i.id, i.id_insumos_categorias, i.numero, i.descripcion, i.activo, i.unidad, i.minimo, i.cantidad, i.costo, i.fecha_actualizacion_costo, i.alertar, i.autorizar, ic.codigo 
FROM insumos i 
LEFT JOIN insumos_categorias ic ON ic.id = i.id_insumos_categorias 
WHERE i.activo=1 and i.alertar = 1 and (i.fecha_actualizacion_costo <= DATE_SUB(NOW(), INTERVAL @dias DAY) OR (i.fecha_actualizacion_costo is null));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_listar_movimientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_listar_movimientos`()
BEGIN

SELECT im.id,im.fecha,im.id_insumo,im.minimo,im.alertar,im.autorizar
,u.username,u.nombre,m.descripcion as descripcion_movimientos,m.descripcion_id as descripcion_id_movimientos
,ic.codigo ,im.descripcion,im.numero  ,im.unidad
FROM insumos_movimientos im
LEFT JOIN users u ON u.id = im.id_user
LEFT JOIN insumos insu ON insu.id = im.id_insumo
LEFT JOIN movimientos m ON m.id = im.id_movimiento
LEFT JOIN insumos_categorias ic ON im.id_insumos_categorias = ic.id
WHERE im.id_movimiento > 4 ORDER BY im.id DESC;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_listar_movimientos_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_listar_movimientos_stock`()
BEGIN

SELECT im.id,im.cantidad,im.fecha,im.id_ingreso,im.id_entrega,im.id_devolucion,im.id_insumo,im.parcial,im.minimo
,u.username,u.nombre,m.descripcion as descripcion_movimientos,m.descripcion_id as descripcion_id_movimientos
,ic.codigo ,insu.descripcion,insu.numero  ,insu.unidad
FROM insumos_movimientos im
LEFT JOIN users u ON u.id = im.id_user
LEFT JOIN insumos insu ON insu.id = im.id_insumo
LEFT JOIN movimientos m ON m.id = im.id_movimiento
LEFT JOIN insumos_categorias ic ON insu.id_insumos_categorias = ic.id
WHERE im.id_movimiento <= 4 ORDER BY im.id DESC;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_listar_stock_insuficiente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_listar_stock_insuficiente`(
)
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE idinsumo INTEGER DEFAULT 0;
DECLARE vrequeridos DECIMAL(20,2) DEFAULT 0;
DECLARE vpedidos DECIMAL(20,2) DEFAULT 0;

 -- declare cursor for employee email
    DECLARE curInsumos 
        CURSOR FOR 
            SELECT id FROM insumos;
 
    -- declare NOT FOUND handler
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
        
DROP TABLE IF EXISTS tempRequeridos;

CREATE TEMPORARY TABLE tempRequeridos(
       id_insumo INT NOT NULL,
       requerido DECIMAL(20,2) DEFAULT 0
    );
    
DROP TABLE IF EXISTS tempPedidos;

CREATE TEMPORARY TABLE tempPedidos(
       id_insumo INT NOT NULL,
       pedido DECIMAL(20,2) DEFAULT 0
    );

    OPEN curInsumos;
 
    getInsumos: LOOP
        FETCH curInsumos INTO idinsumo;
        IF finished = 1 THEN 
            LEAVE getInsumos;
        END IF;
        -- build email list
        
        SELECT SUM(mi.cantidad)
        INTO vrequeridos
        FROM modulos_insumos mi
        INNER JOIN modulos m on m.id = mi.id_modulo
        WHERE mi.id_insumo = idinsumo AND m.id_modulo_estado = 2;
        
        SELECT SUM(pi.cantidad)
        INTO vpedidos
        FROM pedidos_insumos pi
        INNER JOIN pedidos p ON p.id = pi.id_pedido
        WHERE pi.id_insumo = idinsumo AND p.id_pedidos_estados = 2;
        
        IF (vrequeridos IS NOT NULL) THEN
			INSERT INTO tempRequeridos(id_insumo, requerido) VALUES (idinsumo, vrequeridos);
		ELSE 
			INSERT INTO tempRequeridos(id_insumo, requerido) VALUES (idinsumo, 0);
        END IF;
        
        IF (vpedidos IS NOT NULL) THEN
			INSERT INTO tempPedidos(id_insumo, pedido) VALUES (idinsumo, vpedidos);
		ELSE 
			INSERT INTO tempPedidos(id_insumo, pedido) VALUES (idinsumo, 0);
        END IF;
        
    END LOOP getInsumos;
    
    CLOSE curInsumos;
    
	SELECT i.id, i.id_insumos_categorias, i.numero, i.descripcion, i.activo, 
	   i.unidad, i.minimo, i.cantidad, ic.codigo, t.requerido, p.pedido
	FROM insumos i 
	INNER JOIN insumos_categorias ic ON ic.id = i.id_insumos_categorias
    LEFT JOIN tempRequeridos t ON t.id_insumo = i.id
    LEFT JOIN tempPedidos p ON p.id_insumo = i.id
	WHERE i.activo=1 and i.alertar = 1 
	and (i.cantidad - t.requerido) < i.minimo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insumos_modificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insumos_modificar`(
IN i_id_insumos_categorias INT,
IN i_numero INT,
IN i_id_insumo INT,
IN i_minimo INT,
IN i_descripcion VARCHAR(200),
IN i_unidad VARCHAR(200),
IN i_alertar TINYINT(4),
IN i_autorizar TINYINT(4),
IN i_id_user INT
)
BEGIN
SET @id_duplicado = -1;

SELECT i.id INTO @id_duplicado FROM insumos i WHERE i_numero = i.numero AND  i.id_insumos_categorias = i_id_insumos_categorias AND i.id <> i_id_insumo AND i.activo =1;

IF @id_duplicado > -1
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El codigo del insumo ya se encuentra asignado';

END IF;

SELECT cantidad,costo INTO @cantidad,@costo FROM insumos WHERE id = i_id_insumo; 


UPDATE insumos SET id_insumos_categorias = i_id_insumos_categorias, numero = i_numero,  descripcion = i_descripcion, minimo = i_minimo, unidad = i_unidad, alertar = i_alertar, autorizar = i_autorizar WHERE id = i_id_insumo;

INSERT INTO insumos_movimientos (id_insumos_categorias,numero,id_movimiento,id_insumo,descripcion,cantidad,parcial,costo,minimo,unidad,alertar,autorizar,id_user,fecha) VALUES (i_id_insumos_categorias,i_numero,5,i_id_insumo,i_descripcion,@cantidad,@cantidad,@costo,i_minimo,i_unidad,i_alertar,i_autorizar,i_id_user,NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_agregar_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_agregar_insumo`(
IN i_cantidad DOUBLE,
IN i_id_modulo INT,
IN i_id_modulo_movimiento INT,
IN i_id_insumo INT,
IN i_orden INT,
IN i_id_user INT
)
BEGIN

IF i_cantidad < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad debe ser mayor a 0';

END IF;

INSERT INTO modulos_insumos (cantidad,id_modulo,id_insumo,orden) VALUES(i_cantidad,i_id_modulo,i_id_insumo,i_orden); 
SET @id_inserted_modulo_insumo = LAST_INSERT_ID();

INSERT INTO modulos_movimientos_insumos (cantidad,cantidad_insumo,id_modulo,id_insumo,id_modulo_insumo,id_modulo_movimiento,id_modulo_tipo_movimiento_insumo,id_user,fecha) VALUES
(i_cantidad,i_cantidad,i_id_modulo,i_id_insumo,@id_inserted_modulo_insumo,i_id_modulo_movimiento,1,i_id_user,NOW());


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_analizar_insumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_analizar_insumos`(
IN i_id INT)
BEGIN

SET @estado = -1;

SELECT * FROM modulos WHERE id = i_id;

SELECT id_modulo_estado into @estado FROM modulos WHERE id = i_id;

IF (@estado = 1) #si el modulo esta en diseño => no existe en al tabla modulos_insumos_diseno, ya que la entrada en esta tabla se crea una vez que el modulo pasa de diseño a produccion
THEN

SELECT mi.id, mi.id_modulo, mi.id_insumo, i.descripcion as insumo,i.unidad, mi.cantidad_asignada, mi.cantidad as cantidad_diseno, mi.activo, 0 as cantidad_produccion, mi.activo, i.costo, (mi.cantidad * i.costo) as costo_actual_diseno
FROM modulos_insumos mi 
INNER JOIN insumos i ON i.id = mi.id_insumo
where mi.id_modulo = i_id and (mi.activo = 1);

ELSE

SELECT mi.id, mi.id_modulo, mi.id_insumo, i.descripcion as insumo,i.unidad, mi.cantidad_asignada, mi.cantidad as cantidad_produccion, mi.activo, mid.cantidad as cantidad_diseno, mid.activo, i.costo, (mid.cantidad * i.costo) as costo_actual_diseno
FROM modulos_insumos mi 
LEFT JOIN modulos_insumos_diseno mid ON mi.id = mid.id
INNER JOIN insumos i ON i.id = mi.id_insumo
where mi.id_modulo = i_id and (mi.activo = 1 OR mid.id is not null);

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_crear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_crear`(
IN i_chasis varchar(200),
IN i_cotizacion varchar(200),
IN i_descripcion varchar(200),
IN i_cliente varchar(200),
IN i_id_user INT

 )
BEGIN
INSERT INTO modulos (chasis,descripcion,cliente, cotizacion) VALUES (i_chasis,i_descripcion,i_cliente, i_cotizacion);
SET @id_inserted_modulo = LAST_INSERT_ID();

INSERT INTO modulos_movimientos (id_modulo,cotizacion,chasis,descripcion,cliente,id_modulo_tipo_movimiento,id_user,fecha) VALUES
(@id_inserted_modulo,i_cotizacion,i_chasis,i_descripcion,i_cliente,1,i_id_user,NOW());

SET @id_inserted_movimiento = LAST_INSERT_ID();
SELECT @id_inserted_modulo as id,@id_inserted_movimiento as id_modulo_movimiento;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_eliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_eliminar`(
IN i_id_modulo INT,
IN i_id_user INT,
IN i_motivo VARCHAR(200)

 )
BEGIN
UPDATE modulos SET activo = 0 WHERE id = i_id_modulo;

SELECT chasis,descripcion,cliente INTO @chasis,@descripcion,@cliente FROM modulos WHERE id = i_id_modulo;

INSERT INTO modulos_movimientos (chasis,descripcion,cliente,motivo,id_modulo,id_modulo_tipo_movimiento,id_user,fecha) VALUES
(@chasis,@descripcion,@cliente,i_motivo,i_id_modulo,3,i_id_user,NOW());

SELECT * FROM modulos where id = i_id_modulo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_eliminar_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_eliminar_insumo`(
IN i_id_modulo_insumo INT,
IN i_id_modulo_movimiento INT,
IN i_id_user INT
)
BEGIN

UPDATE modulos_insumos SET activo = 0, cantidad=0,orden = NULL WHERE id = i_id_modulo_insumo;

SELECT id_modulo,id_insumo,cantidad,cantidad_asignada INTO @id_modulo,@id_insumo,@cantidad,@cantidad_asignada FROM modulos_insumos  WHERE id = i_id_modulo_insumo; 

INSERT INTO modulos_movimientos_insumos (cantidad,cantidad_insumo,cantidad_asignada,id_modulo,id_insumo,id_modulo_insumo,id_modulo_movimiento,id_modulo_tipo_movimiento_insumo,id_user,fecha) VALUES
(@cantidad,@cantidad,@cantidad_asignada,@id_modulo,@id_insumo,i_id_modulo_insumo,i_id_modulo_movimiento,3,i_id_user,NOW());


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_listar_insumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_listar_insumos`(
IN i_id_modulo INT
)
BEGIN

SELECT * FROM modulos   WHERE activo = 1 AND id = i_id_modulo;   

SELECT mi.cantidad as cantidad_requerida,mi.cantidad_asignada,mi.id as id_modulo_insumo,ic.codigo,i.cantidad as cantidad_stock,i.id,i.id_insumos_categorias,i.numero,i.descripcion,i.unidad,i.minimo,i.alertar,i.autorizar FROM modulos_insumos mi LEFT JOIN insumos i ON i.id = mi.id_insumo LEFT JOIN insumos_categorias ic ON i.id_insumos_categorias = ic.id  WHERE mi.activo = 1 AND mi.id_modulo = i_id_modulo ORDER BY mi.orden;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_listar_movimientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_listar_movimientos`()
BEGIN

SELECT mm.fecha,mm.descripcion as descripcion,mm.chasis,mm.id,mm.id_modulo,mm.id_modulo_tipo_movimiento
,mtm.descripcion as descripcion_tipos_movimientos
,me.descripcion as descripcion_estados
,m.chasis as chasis_modulos,m.descripcion as descripcion_modulos
,u.nombre
FROM modulos_movimientos mm LEFT JOIN modulos_tipos_movimientos mtm ON mm.id_modulo_tipo_movimiento = mtm.id
LEFT JOIN modulos m ON m.id = mm.id_modulo
LEFT JOIN modulos_estados me ON me.id = mm.id_modulo_estado
LEFT JOIN users u ON u.id = mm.id_user ORDER BY mm.id DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_listar_movimientos_insumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_listar_movimientos_insumos`(
IN i_id_modulo_movimiento INT
)
BEGIN

SELECT mmi.*,i.id,i.descripcion,i.numero,ic.codigo,mtmi.descripcion as descripcion_tipo FROM modulos_movimientos_insumos as mmi 
LEFT JOIN modulos_tipos_movimientos_insumos as mtmi ON mtmi.id = mmi.id_modulo_tipo_movimiento_insumo
LEFT JOIN insumos as i ON i.id=mmi.id_insumo 
LEFT JOIN insumos_categorias as ic ON ic.id = i.id_insumos_categorias  
WHERE mmi.id_modulo_movimiento = i_id_modulo_movimiento;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_listar_paniol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_listar_paniol`(
)
BEGIN

SELECT m.*, e.descripcion as descripcion_estado 
FROM modulos m 
inner join modulos_estados e on m.id_modulo_estado = e.id 
WHERE m.activo = 1 AND m.id_modulo_estado=2
ORDER BY m.id DESC;

SELECT mi.id_modulo,COUNT(*) as insumos_disponibles 
FROM modulos_insumos as mi  
LEFT JOIN insumos as i ON i.id = mi.id_insumo 
LEFT JOIN modulos as m ON m.id = mi.id_modulo
WHERE m.activo = 1 AND m.id_modulo_estado=2 AND  mi.activo=1 AND  mi.cantidad - mi.cantidad_asignada > 0 AND i.cantidad > 0 
GROUP BY mi.id_modulo ORDER BY mi.id_modulo DESC;

SELECT mi.cantidad as cantidad_requerida,mi.cantidad_asignada,mi.id_modulo,i.*,ic.codigo 
FROM modulos_insumos as mi  
LEFT JOIN insumos as i ON i.id = mi.id_insumo 
LEFT JOIN modulos as m ON m.id = mi.id_modulo
 LEFT JOIN insumos_categorias as ic ON ic.id = i.id_insumos_categorias 
 WHERE m.activo = 1 AND m.id_modulo_estado=2 AND  mi.activo=1 AND  mi.cantidad - mi.cantidad_asignada > 0 AND i.cantidad > 0  
 ORDER BY mi.id_modulo DESC; 


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_modificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_modificar`(
IN i_chasis varchar(200),
IN i_cotizacion varchar(200),
IN i_descripcion varchar(200),
IN i_cliente varchar(200),
IN i_motivo varchar(200),
IN i_id_modulo INT,
IN i_id_user INT
 )
BEGIN
UPDATE modulos SET chasis = i_chasis, cotizacion = i_cotizacion, descripcion = i_descripcion,cliente = i_cliente WHERE id = i_id_modulo;

INSERT INTO modulos_movimientos (chasis,descripcion,cliente,motivo,id_modulo,id_modulo_tipo_movimiento,id_user,fecha) VALUES
(i_chasis,i_descripcion,i_cliente,i_motivo,i_id_modulo,2,i_id_user,NOW());

SET @id_inserted_movimiento = LAST_INSERT_ID();

SELECT @id_inserted_movimiento as id_modulo_movimiento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_modificar_cantidad_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_modificar_cantidad_insumo`(
IN i_cantidad DOUBLE,
IN i_id_modulo_movimiento INT,
IN i_id_modulo_insumo INT,
IN i_orden INT,
IN i_id_user INT
)
BEGIN


SELECT id_modulo,id_insumo,cantidad_asignada INTO @id_modulo,@id_insumo,@cantidad_asignada FROM modulos_insumos  WHERE id = i_id_modulo_insumo;

IF i_cantidad < 0
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad debe ser mayor a 0';

END IF;


IF i_cantidad < @cantidad_asignada
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'La cantidad debe superar a la asignada';

END IF;

IF i_orden IS NOT NULL
THEN
UPDATE modulos_insumos SET cantidad = i_cantidad,orden = i_orden  WHERE id = i_id_modulo_insumo; 
ELSE
UPDATE modulos_insumos SET cantidad = i_cantidad  WHERE id = i_id_modulo_insumo; 
END IF;

INSERT INTO modulos_movimientos_insumos (cantidad,cantidad_insumo,cantidad_asignada,id_modulo,id_insumo,id_modulo_insumo,id_modulo_movimiento,id_modulo_tipo_movimiento_insumo,id_user,fecha) VALUES
(i_cantidad,i_cantidad,@cantidad_asignada,@id_modulo,@id_insumo,i_id_modulo_insumo,i_id_modulo_movimiento,2,i_id_user,NOW());






END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_montos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_montos`(
IN i_id INT
)
BEGIN

SET @montodiseno = -1;
SET @montoproduccion = -1;
SET @estado = -1;

SELECT id_modulo_estado into @estado FROM modulos WHERE id = i_id;

IF (@estado = 1) #si el modulo esta en diseño => no existe en al tabla modulos_insumos_diseno, ya que la entrada en esta tabla se crea una vez que el modulo pasa de diseño a produccion
THEN

 SELECT SUM(mi.cantidad * i.costo) INTO @montodiseno from modulos_insumos mi
INNER JOIN insumos i ON mi.id_insumo = i.id
 where id_modulo = i_id
 GROUP BY id_modulo;
 
ELSE

 SELECT SUM(mid.cantidad * i.costo) INTO @montodiseno from modulos_insumos_diseno mid
INNER JOIN insumos i ON mid.id_insumo = i.id
 where id_modulo = i_id
 GROUP BY id_modulo;

END IF;

 SELECT SUM(mid.cantidad_asignada * i.costo) INTO @montoproduccion from modulos_insumos mid
INNER JOIN insumos i ON mid.id_insumo = i.id
 where id_modulo = i_id AND mid.activo = 1
 GROUP BY id_modulo;

SELECT @montodiseno as montodiseno, @montoproduccion as montoproduccion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulos_ordenar_insumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulos_ordenar_insumo`(
IN i_id_modulo_insumo INT,
IN i_orden INT
)
BEGIN

UPDATE modulos_insumos SET orden = i_orden WHERE id = i_id_modulo_insumo;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modulo_diseno_a_produccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modulo_diseno_a_produccion`(
IN i_id INT,
IN i_chasis varchar(200)

 )
BEGIN
SET @id_modulo = -1;

SELECT id INTO @id_modulo FROM modulos as m WHERE m.chasis = i_chasis AND m.id <> i_id; 
IF @id_modulo > -1
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El numero de chasis se encuentra duplicado';

END IF;

UPDATE modulos SET id_modulo_estado = 2, chasis = i_chasis WHERE id = i_id;

INSERT into modulos_insumos_diseno
SELECT m.* FROM modulos_insumos m
WHERE m.id_modulo = i_id and m.activo = 1;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(IN idmod int)
BEGIN
	select * from modulos where id = idmod;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pedidos_crear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pedidos_crear`(
IN i_id_insumo INT,
IN i_cantidad DOUBLE,
IN i_id_usuario INT
)
BEGIN


INSERT INTO `boxrental`.`pedidos`
(
`id_insumo`,
`cantidad`,
`fecha`,
`id_usuario`)
VALUES
(
i_id_insumo,
i_cantidad,
NOW(),
i_id_usuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pedidos_detalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pedidos_detalle`(
IN i_id_insumo INT
)
BEGIN
SELECT 'modulo' as 'tipo', m.chasis as 'descripcion', mi.cantidad, mi.cantidad_asignada
FROM modulos_insumos mi
LEFT JOIN modulos m ON mi.id_modulo = m.id
INNER JOIN insumos i ON i.id = mi.id_insumo
WHERE mi.id_insumo = i_id_insumo and m.id_modulo_estado = 2


UNION

SELECT 'pedido' as 'tipo', p.referencia as 'descripcion', pi.cantidad, 'N/A' as 'cantidad_asignada'
FROM pedidos_insumos pi 
INNER JOIN insumos i ON i.id = pi.id_insumo
INNER JOIN pedidos p ON p.id = pi.id_pedido
WHERE pi.id_insumo = i_id_insumo and p.activo = 1 and p.id_pedidos_estados = 2
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pedidos_modificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pedidos_modificar`(
IN i_id INT,
IN i_id_insumo INT,
IN i_cantidad DOUBLE
)
BEGIN


UPDATE `boxrental`.`pedidos`
SET id_insumo = i_id_insumo,
cantidad = i_cantidad

WHERE id = i_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pedido_diseno_a_solicitado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pedido_diseno_a_solicitado`(IN i_id INT)
BEGIN
UPDATE pedidos SET id_pedidos_estados = 2 WHERE id = i_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_insumos_costo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_insumos_costo`(IN pCosto double, IN pFecha datetime, IN pId int, IN pIdUsuario int)
BEGIN

START TRANSACTION;

UPDATE insumos SET costo = pCosto, fecha_actualizacion_costo = pFecha where id = pId;

INSERT INTO costos_historico (id_insumo, fecha, costo, id_usuario) VALUES (pId, pFecha, pCosto, pIdUsuario);

COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_detalle_tipo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_detalle_tipo_usuario`(
IN i_id_user_type INT
)
BEGIN

SELECT * FROM users_type ut WHERE ut.id = i_id_user_type;

SELECT uta.id_acceso,uta.id_user_type,ut.id,ut.descripcion as descripcion_user_type,a.descripcion as descripcion_acceso 
FROM users_type ut 
INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id 
INNER JOIN accesos a ON a.id = uta.id_acceso AND a.activo = 1
WHERE ut.id = i_id_user_type AND ut.activo=1; 

SELECT * FROM accesos where activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_insertar_tipos_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_insertar_tipos_usuarios`(
IN i_descripcion VARCHAR(200)
)
BEGIN

INSERT INTO users_type (descripcion) VALUES (i_descripcion);

SET @inserted_id = LAST_INSERT_ID();

SELECT @inserted_id as inserted_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_listar_accesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_listar_accesos`(
IN i_id_user INT
)
BEGIN

SELECT u.id,uta.id_acceso FROM users u INNER JOIN users_type ut ON ut.id = u.id_users_type INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id WHERE u.id = i_id_user AND ut.activo =1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_listar_tipos_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_listar_tipos_usuarios`()
BEGIN

SELECT * FROM users_type ut WHERE ut.activo =1;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26  6:43:51
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gestor
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='las pantallas del menu existentes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (1,'configuración',1),(11,'usuarios gestión',1),(12,'usuarios tipos',1),(21,'insumos categorias',1),(22,'insumos gestión',1),(23,'insumos costos',1),(24,'insumos auditoria',1),(31,'alertas costos',1),(32,'alertas pedidos',1),(41,'stock gestión',1),(42,'stock ajuste',1),(43,'stock ingresos',1),(44,'stock auditoria',1),(51,'modulos gestión',1),(52,'modulos estados',1),(53,'modulos plantillas',1),(54,'modulos analisis',1),(55,'modulos auditoria',1),(61,'pañol modulos',1),(62,'pañol entregas',1),(63,'pañol devoluciones',1),(71,'pedidos',1),(72,'pedidos estados',1);
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `id_type_file` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'seguridad.jpg',1,0),(2,'zoom_alt.png',1,0),(3,'zoom_recomendaciones.png',1,0),(4,'17943 (1).pdf',2,0),(5,'zoom_alt.png',1,0),(6,'seguridad.jpg',1,0),(7,'zoom_recomendaciones.png',1,0),(8,'zoom_alt.png',1,0),(9,'zoom_alt.png',1,0),(10,'side_bar.jpg',1,0),(11,'login-1.jpg',1,0),(12,'login-3.jpg',1,0),(13,'side_bar.jpg',1,0),(14,'seguridad.jpg',1,0),(15,'zoom_recomendaciones.png',1,0),(16,'side_bar.jpg',1,0),(17,'zoom_alt.png',1,0),(18,'login-2.jpg',1,0),(19,'login-3.jpg',1,0),(20,'side_bar.jpg',1,0),(21,'login-3.jpg',1,1),(22,'zoom_alt.png',1,1),(23,'zoom_recomendaciones.png',1,1),(24,'side_bar.jpg',1,1),(25,'login-1.jpg',1,1),(26,'imagen_slider.jpg',1,1),(27,'img1.jpg',1,1),(28,'img2.jpg',1,1),(29,'img3.jpg',1,1),(30,'img_turnos.jpg',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_menu`
--

DROP TABLE IF EXISTS `items_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(200) DEFAULT NULL,
  `enlace` varchar(200) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_menu`
--

LOCK TABLES `items_menu` WRITE;
/*!40000 ALTER TABLE `items_menu` DISABLE KEYS */;
INSERT INTO `items_menu` VALUES (1,'itemm1','google',NULL,1,3),(2,'item2','prueba',3,1,2),(3,'item4','prueba',NULL,0,0),(4,'Matias','enlace matias',NULL,1,1),(5,'','',NULL,0,NULL),(6,'','',NULL,0,NULL),(7,'','',NULL,0,NULL),(8,'','',NULL,0,NULL),(9,'Item Domingo','',3,1,0),(10,'item4','enlance',3,1,4);
/*!40000 ALTER TABLE `items_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `id_type_module` int(11) DEFAULT NULL,
  `contenido` longtext,
  `orden` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'modulo1',2,1,NULL,NULL,0),(2,'matias',3,1,NULL,0,3),(3,'jime',3,1,NULL,1,3),(4,'puro',3,2,NULL,2,3),(5,'primer ',4,2,'{\"htmlText\":\"\"}',NULL,1),(6,'modulo1',5,2,NULL,1,0),(7,'modulo2',5,1,NULL,0,0),(8,'hola',5,2,NULL,NULL,0),(9,'matias4',5,1,NULL,NULL,0),(10,'matias85',5,2,NULL,NULL,0),(11,'matias',5,1,'{\"htmlText\":\"<h1>hola mat</h1>\"}',0,1),(12,'modulo 2',5,2,'{\"htmlText\":\"<p>hola matias</p>\"}',1,1),(13,'nuevo2222',5,2,'{\"htmlText\":\"<p>xssxsxsxsxsxs</p>\"}',99,1),(14,'modulo3',5,3,'{\"items\":[{\"titulo\":\"imagen2\",\"descripcion\":\"hola2222\",\"archivo\":\"/uploads/login-3.jpg\"},{\"titulo\":\"matias\",\"descripcion\":\"matias2\",\"archivo\":\"/uploads/login-2.jpg\"},{\"titulo\":\"imagen3\",\"descripcion\":\"hola\",\"archivo\":\"/uploads/zoom_alt.png\"}]}',99,1),(15,'Slider Principal',6,3,NULL,99,0),(16,'Texto',6,2,NULL,99,0),(17,'slider principallll',6,4,'{\"items\":[{\"archivo\":\"\",\"titulo\":\"holaaa\",\"descripcion\":\"matiasss\"},{\"archivo\":\"\",\"titulo\":\"matiassss\",\"descripcion\":\"jimeee\"},{\"archivo\":\"\",\"titulo\":\"hola\",\"descripcion\":\"matiasss\"},{\"archivo\":\"zoom_alt.png\",\"titulo\":\"matiasss\",\"descripcion\":\"holaaa\",\"htmlText\":\"hola matiasss\"}],\"titulo\":\"matiasss\",\"textoBoton\":\"hola\",\"archivo\":\"login-2.jpg\"}',99,0),(18,'modulo 5',6,5,'{\"htmlText\":\"xsaxsa\",\"titulo\":\"sxsxa\"}',99,0),(19,'matias',6,5,'{\"htmlText\":\"\",\"titulo\":\"\"}',99,0),(20,'listo texto imagen',6,6,NULL,99,0),(21,'Slider Principal',6,4,'{\"titulo\":\"Conoce mas\",\"descripcion\":\"escripcion 1\",\"textoBoton\":\"conoce mas\",\"archivo\":\"login-2.jpg\"}',0,0),(22,'About',6,5,'{\"items\":[{\"archivo\":\"login-2.jpg\",\"htmlText\":\"Textoooo1111\"},{\"archivo\":\"login-3.jpg\",\"htmlText\":\"Textoooo2222\"}]}',2,0),(23,'Quienes Somos',6,6,'{\"htmlText\":\"holaa matias!!!\",\"titulo\":\"holaaa\"}',3,0),(24,'Turnosss',6,8,'{\"archivo\":\"login-3.jpg\",\"items\":[{\"titulo\":\"weewqeqw\",\"htmlText\":\"\"},{\"titulo\":\"xsaxaxs\",\"htmlText\":\"xaasx\"},{\"titulo\":\"titulo2\",\"archivo\":\"zoom_recomendaciones.png\"},{\"titulo\":\"holaa\",\"archivo\":\"login-3.jpg\"},{\"titulo\":\"hola\",\"archivo\":\"side_bar.jpg\"},{\"titulo\":\"aloowww\",\"archivo\":\"zoom_recomendaciones.png\",\"htmlText\":\"<p>hola matias</p>\"}]}',4,0),(25,'dewdedw',6,6,NULL,1,0),(26,'Nuevooo',6,3,NULL,99,0),(27,'Slider Principal',6,1,'{\"archivo\":\"imagen_slider.jpg\",\"titulo\":\"PSICOTERAPIA\\n EN EL MUNDO\",\"htmlText\":\"DED&Iacute;CATE A SENTIRTE BIEN CONTIGO MISMO,<br />ES CON QUIEN PASAR&Aacute;S EL RESTO DE TU VIDA.\"}',0,1),(28,'About',6,2,'{\"items\":[{\"archivo\":\"img1.jpg\",\"titulo\":\"ATENCIÓN PSICOLÓGICA A DISTANCIA\",\"htmlText\":\"erapia online desde cualquier parte del mundo: Por videollamada, Skype o Zoom desde tu tablet, celular o computadora. Desde tu casa u oficina. Si no cont&aacute;s con el tiempo necesario para trasladarte, buscas optimizar los tiempos, viajas frecuentemente por trabajo o ten&eacute;s reducida tu movilidad.\"},{\"archivo\":\"img2.jpg\",\"titulo\":\"DESDE DONDE ESTÉS\",\"htmlText\":\"Si viv&iacute;s en el exterior. Psic&oacute;logos online que hablan tu mismo idioma y entienden tu cultura a menores costos y de manera sencilla.<br />Si viv&iacute;s en el interior del pa&iacute;s. Te garantiza confidencialidad absoluta y total privacidad, ya que muchas veces se dificulta encontrar un profesional que no forme parte de tu entorno.\"},{\"archivo\":\"img3.jpg\",\"titulo\":\"DE MANERA PRESENCIAL\",\"htmlText\":\"Si eleg&iacute;s esta modalidad, tenemos un espacio para recibirte en nuestros consultorios ubicados en el barrio de Villa Devoto de la Ciudad Aut&oacute;noma de Buenos Aires.\"}]}',1,1),(29,'Quienes Somos',6,3,'{\"titulo\":\"QUIÉNES SOMOS\",\"htmlText\":\"<strong>Psicoterapia en el Mundo</strong> est&aacute; conformado por un grupo de profesionales Licenciados en Psicolog&iacute;a en constante formaci&oacute;n, con amplia experiencia en el &aacute;rea cl&iacute;nica, tanto en &aacute;mbitos privados como p&uacute;blicos, en el &aacute;rea forense y laboral.<br />Brindamos atenci&oacute;n psicol&oacute;gica para personas desde los 18 a&ntilde;os de edad en adelante. Todos los profesionales trabajan desde la perspectiva del Psicoan&aacute;lisis, se encuentran debidamente matriculados y garantizan total confidencialidad. Poseemos un gran compromiso con la Salud Mental y creemos en el acercamiento y el cuidado al ser humano, desde una perspectiva bio-psico-social. Nuestro objetivo es que podamos facilitarte el acceso a la terapia psicol&oacute;gica y por ende al cuidado de tu Salud Mental, brindando sost&eacute;n, apoyo y contenci&oacute;n emocional.\"}',2,1),(30,'Turnos',6,5,'{\"archivo\":\"img_turnos.jpg\",\"titulo\":\"¿CÓMO SOLICITAR UN TURNO?\",\"items\":[{\"titulo\":\"CONTACTANOS\",\"texto\":\"Escribinos por Whatsapp al +541166301988 o rellená el formulario en Contactanos y te responderemos a la brevedad. De esta manera, podrás aclarar dudas sobre el tratamiento y podremos empezar a conocernos. También podremos coordinar un día y horario para tener tu primera sesión. Necesitaremos saber tu disponibilidad horaria y país o región de residencia para calcular la diferencia horaria.\"},{\"titulo\":\"ACORDEMOS EL HORARIO\",\"texto\":\"Te brindaremos las opciones de horarios disponibles.\"}]}',3,1),(31,'CONTACTANOS',6,4,'{\"titulo\":\"CONTACTANOS\",\"ubicacion\":\"Argentina\",\"telefono\":\"+5411 6630 1988\",\"email\":\"contacto@psicoterapiaenelmundo.com\",\"htmlText\":\"SI TE ENCONTR&Aacute;S EN UNA SITUACI&Oacute;N DE EMERGENCIA, RIESGO O PELIGRO NO TE CONTACTES CON NOSOTROS, POR FAVOR, CONTACTATE INMEDIATAMENTE CON EL SERVICIO DE ATENCI&Oacute;N A EMERGENCIAS CORRESPONDIENTE A LA REGI&Oacute;N DONDE VIVAS. EN EL CASO DE ARGENTINA LA L&Iacute;NEA TELEF&Oacute;NICA DE EMERGENCIAS ES 911.\"}',4,1);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'pagina1','pagina de inico',0),(2,'Pagina2','holaaaasss',0),(3,'pagina 3','pagina de inicio nueva',1),(4,'pagina 5','pagina secundaria',1),(5,'pagina8','descrrr',1),(6,'Psicologia','Pagina de prueba Psicologia',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_modules`
--

DROP TABLE IF EXISTS `types_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_modules`
--

LOCK TABLES `types_modules` WRITE;
/*!40000 ALTER TABLE `types_modules` DISABLE KEYS */;
INSERT INTO `types_modules` VALUES (1,'Psi Slider Principal'),(2,'Psi About'),(3,'Psi Titulo,Texto'),(4,'Psi Titulo, Texto Alternativo'),(5,'Psi Titulo,imagen Listo de Items');
/*!40000 ALTER TABLE `types_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `id_users_type` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL DEFAULT '0',
  `activo` int(11) NOT NULL DEFAULT '1',
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='																																																																																																															';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'box','$2a$10$BJd.0.bo9VqpVHk1cb.Vy.RxBALb8W2dtvINqE8sAQ6nBlaWVXjWC',NULL,NULL,1,1,NULL),(72,'boxrental','$2a$10$bu4xGbOITHK/5A96aXg5jOAYt.NVz40ERBtaxeUPGksZtgSyWVc72','Box super admin',1,0,1,NULL),(73,'mati01','$2a$10$gpmLwj86TqfohJUK1i787.pQvWyZyg0xHsaZWRkoTMz9xzpUWOgmm','matias',3,0,0,NULL),(74,'Achavez','$2a$10$soU7JqMDzYjc9YbJSCixo.PfH8VbX3JkaoWONggHNtHCi9EjkevZG','Antonio Chavez',21,0,0,NULL),(75,'mat','$2a$10$qrzAlCEHLya9hGZWs/dDZ.YqWDzOg3hxE5ZOCzZNHad45sRgiNavS','Matias',3,0,0,NULL),(76,'mat','$2a$10$WblyIqgqM1XdlnjfMzGtl.qn8qW05MsFqC.vkpj7Kdf5C1TQEnl9a','Matias',1,0,0,NULL),(77,'mat','$2a$10$koL1qJGKPTpTy8dlz5DqnOs5eyED1sxLlmJWa9MR0d1riA7ma4oze','Matias',3,0,0,NULL),(78,'prub','$2a$10$G95WlrHb.2.CGJGPVHBXfOp5.IrXjbtoRQxoP1qbu1dWcIWR/tlNq','prueba',4,0,0,NULL),(79,'ventas','$2a$10$fa2GUN/3w5lucV2sh.pQCOMOBEk2E5kO2LJ/g6xcN1goUTvOXi3G.','nicolas',4,0,0,NULL),(80,'nicolas','$2a$10$WfqnGMhdKNe6iSv8TeBC5OghFO5WrnyAlX1JcuiEVL1TY/FbqNbWa','nicolas',NULL,0,0,NULL),(81,'jime','$2a$10$ajHEDLJ0.UrZ4P/BUTd5u.DaRgCuQAHZA9/sgGOOcdQpMdX32GKHu','jime',21,0,0,NULL),(82,'saltarellig','$2a$10$nJP7L5SY1GbcABhWQVQdWe7wi3d.AWbTv7d3b.zblUNyY/vwwuSqe','Gilda Saltarelli',3,0,1,NULL),(83,'bianchie','$2a$10$uBAErNGvvL/iwRruFMunFuKSXxfZgiKJfPSe3UN4RnoWS3oNz3c/K','Esteban Bianchi',20,0,1,NULL),(84,'alin','$2a$10$aYBOey/7bzsUHn3G5I5z4.e3Ltw0NWs9PfkanG9RBaye39yd0qL5u','Noeli Ali',23,0,1,NULL),(85,'Coradeginif','$2a$10$OG7WSuixw.GcBT85CX9W4uPV.hfqNIHGiSrWCP7THL0jwT/oisL1q','Fiorella Coradeghini',22,0,0,NULL),(86,'daniel','$2a$10$MIFdYfjpfahNAuspESAc2es4JE6fMgytsW.5CVYEYjfWlcH7A6ZYq','Daniel',1,0,1,NULL),(87,'Invisible','$2a$10$EVg617DTNCfyskiGXX6NKukHgYm.txsrs.NtvutxvIIFrskUuioni','Daiana',24,0,0,NULL),(88,'sanchezo','$2a$10$j4.6h3aIteUPK.Dk05dv8.a8zk5h3vxwE7IFET0nJ/22HarDnU0wK','Oscar Sanchez',1,0,1,NULL),(89,'Valbuenay','$2a$10$.dwk8gxxYzZKd1iO/sCmledROniqvvU4G236pH/mhMm0vAg9AKp1a','Yelitza Valbuena',25,0,1,NULL),(90,'Aguileram','$2a$10$n3hUu2ppjAzwZEstqoB1aeSI/VeJeCMAvm8Q5CddXpmYyk8/CsJNG','Micaela Aguilera',25,0,1,NULL),(91,'coradeghinif','$2a$10$y2/sfYVMdwG9PGwG9ZBIGuj54NqBsk5bNP12h20/plLqWTBthtGS.','Fiorella Coradeghini',1,0,1,NULL),(92,'chaveza','$2a$10$GHF010f8P3qzqEVN4NV4TuEeDSA4cHgpFcvX7LBOQVA4mSHP4ul0e','Antonio Chavez',26,0,1,NULL),(93,'lafiera','$2a$10$SRRp.EwvjcClkz7Vh8mBKuDtLeueVNa7Zn1Pw9Rx3aQ7K/eyBCuN2','maxi rodriguez',22,0,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_type`
--

DROP TABLE IF EXISTS `users_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_type`
--

LOCK TABLES `users_type` WRITE;
/*!40000 ALTER TABLE `users_type` DISABLE KEYS */;
INSERT INTO `users_type` VALUES (1,'Administrator',1),(2,'Pañol',0),(3,'Compras',1),(4,'Ventas',0),(5,'Gerencia',0),(20,'Producción A',1),(21,'Pañol',1),(22,'Gerencia',1),(23,'Producción B',1),(24,'auditora externa',1),(25,'Administracion Int',1),(26,'Pañol/Deposito',1);
/*!40000 ALTER TABLE `users_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_type_accesos`
--

DROP TABLE IF EXISTS `users_type_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_type_accesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_type` int(11) NOT NULL,
  `id_acceso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_type_accesos`
--

LOCK TABLES `users_type_accesos` WRITE;
/*!40000 ALTER TABLE `users_type_accesos` DISABLE KEYS */;
INSERT INTO `users_type_accesos` VALUES (104,0,24),(109,0,44),(111,0,52),(112,0,53),(113,0,54),(114,0,55),(116,0,62),(117,0,63),(125,0,24),(130,0,44),(132,0,52),(133,0,53),(134,0,54),(135,0,55),(137,0,62),(138,0,63),(146,0,24),(151,0,44),(153,0,52),(154,0,53),(155,0,54),(156,0,55),(158,0,62),(159,0,63),(167,0,24),(172,0,44),(174,0,52),(175,0,53),(176,0,54),(177,0,55),(179,0,62),(180,0,63),(201,0,24),(206,0,44),(208,0,52),(209,0,53),(210,0,54),(211,0,55),(213,0,62),(214,0,63),(258,4,51),(259,4,52),(260,4,53),(261,4,54),(262,4,55),(668,0,22),(689,0,22),(787,16,1),(788,16,11),(789,16,12),(790,17,1),(791,17,22),(792,17,42),(793,18,1),(794,18,23),(795,18,43),(796,19,1),(797,19,11),(798,19,12),(950,2,11),(951,2,12),(1209,21,61),(1210,21,62),(1211,21,63),(1212,22,1),(1213,22,11),(1214,22,12),(1242,23,22),(1243,23,51),(1244,23,52),(1245,23,53),(1246,23,71),(1247,20,21),(1248,20,22),(1249,20,51),(1250,20,52),(1251,20,53),(1252,20,71),(1253,1,1),(1254,1,11),(1255,1,12),(1256,1,21),(1257,1,22),(1258,1,23),(1259,1,24),(1260,1,31),(1261,1,41),(1262,1,42),(1263,1,43),(1264,1,44),(1265,1,51),(1266,1,52),(1267,1,53),(1268,1,54),(1269,1,55),(1270,1,61),(1271,1,62),(1272,1,63),(1273,1,71),(1274,1,72),(1275,1,32),(1276,24,32),(1277,24,41),(1278,24,53),(1279,24,54),(1280,24,63),(1281,24,71),(1282,3,23),(1283,3,31),(1284,3,32),(1285,3,71),(1286,3,72),(1287,25,71),(1296,26,43),(1297,26,61),(1298,26,62),(1299,26,63);
/*!40000 ALTER TABLE `users_type_accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gestor'
--
/*!50003 DROP PROCEDURE IF EXISTS `files_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `files_delete`(
IN i_id_file INT
)
BEGIN

UPDATE files SET estado = 0 WHERE id = i_id_file;

SELECT * FROM files WHERE id = i_id_file;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `files_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `files_insert`(
	IN i_nombre varchar(200),
    IN i_id_type_file INT
)
BEGIN

INSERT INTO files (nombre,id_type_file) VALUES (i_nombre,i_id_type_file);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `files_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `files_list`()
BEGIN

SELECT * FROM files WHERE estado = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getusers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getusers`()
BEGIN
	select * from users;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user`(
IN i_id_user INT
)
BEGIN

SELECT * FROM users u WHERE u.id = i_id_user;

SELECT uta.id_acceso FROM users u INNER JOIN users_type ut ON ut.id = u.id_users_type INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id WHERE u.id = i_id_user AND ut.activo =1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_delete`(
IN i_id_item INT
)
BEGIN

UPDATE items_menu SET estado = 0 WHERE id = i_id_item;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_detail`(
IN i_id_item INT
)
BEGIN

SELECT * FROM items_menu WHERE id = i_id_item;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_insert`(
IN i_texto varchar(200),
IN i_enlace varchar(200),
IN i_id_page INT
)
BEGIN

INSERT INTO items_menu (texto,enlace,id_page,orden) VALUES (i_texto,i_enlace,i_id_page,99);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_list`()
BEGIN

SELECT im.* , p.nombre as nombre_pagina FROM items_menu im LEFT JOIN pages p ON p.id = im.id_page WHERE im.estado > 0 ORDER BY im.orden;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_order`(
IN i_id_item INT,
IN i_orden INT
)
BEGIN

UPDATE items_menu SET orden = i_orden WHERE id = i_id_item;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `items_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `items_update`(
IN i_id_item INT,
IN i_texto varchar(200),
IN i_enlace varchar(200),
IN i_id_page INT,
IN i_estado INT
)
BEGIN

UPDATE items_menu SET texto = i_texto, enlace = i_enlace,id_page = i_id_page,estado = i_estado WHERE id = i_id_item;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_delete`(
IN i_id_module INT
)
BEGIN

UPDATE modules SET estado = 0 WHERE id = i_id_module;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_detail`(
IN i_id_module INT
)
BEGIN

SELECT * FROM modules WHERE id = i_id_module;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_detail_bypage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_detail_bypage`(
IN i_id_page INT
)
BEGIN

SELECT m.*,p.nombre as nombre_page,tm.descripcion as descripcion_type FROM modules m LEFT JOIN types_modules tm ON tm.id = m.id_type_module LEFT JOIN pages p on p.id = m.id_page 
WHERE m.id_page = i_id_page AND m.estado > 0
ORDER BY m.orden;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_insert`(
IN i_nombre varchar(200),
IN i_id_page INT,
IN i_id_type_module INT
)
BEGIN

INSERT INTO modules (nombre,id_page,id_type_module,orden) VALUES (i_nombre,i_id_page,i_id_type_module,99);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_list`()
BEGIN

SELECT * FROM modules WHERE estado > 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_order`(
IN i_id_module INT,
IN i_orden INT
)
BEGIN

UPDATE modules SET orden = i_orden WHERE id = i_id_module;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modules_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modules_update`(
IN i_id_module INT,
IN i_nombre varchar(200),
IN i_id_page INT,
IN i_id_type_module INT,
IN i_contenido longtext,
IN i_estado INT
)
BEGIN

UPDATE modules SET nombre = i_nombre,id_page = i_id_page, id_type_module = i_id_type_module,contenido = i_contenido, estado = i_estado
WHERE id = i_id_module;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_delete`(
IN i_id_page INT
)
BEGIN

UPDATE pages SET estado = 0 WHERE id = i_id_page;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_detail`(
IN i_id_page INT
)
BEGIN

SELECT * FROM pages WHERE id = i_id_page;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_front` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_front`(
IN i_id_page INT
)
BEGIN

SELECT * FROM pages WHERE id = i_id_page;

SELECT * FROM modules WHERE id_page = i_id_page && estado = 1 ORDER BY orden;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_insert`(
IN i_nombre varchar(200),
IN i_descripcion varchar(200)
)
BEGIN

INSERT INTO pages (nombre,descripcion) VALUES (i_nombre,i_descripcion);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_list`()
BEGIN

SELECT * FROM pages WHERE estado = 1 ORDER BY id DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pages_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pages_update`(
IN i_id_page int,
IN i_nombre varchar(200),
IN i_descripcion varchar(200)
)
BEGIN


UPDATE pages SET nombre = i_nombre, descripcion = i_descripcion WHERE ID = i_id_page;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `types_modules_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `types_modules_list`()
BEGIN

SELECT * FROM types_modules;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_detalle_tipo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_detalle_tipo_usuario`(
IN i_id_user_type INT
)
BEGIN

SELECT * FROM users_type ut WHERE ut.id = i_id_user_type;

SELECT uta.id_acceso,uta.id_user_type,ut.id,ut.descripcion as descripcion_user_type,a.descripcion as descripcion_acceso 
FROM users_type ut 
INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id 
INNER JOIN accesos a ON a.id = uta.id_acceso AND a.activo = 1
WHERE ut.id = i_id_user_type AND ut.activo=1; 

SELECT * FROM accesos where activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_insertar_tipos_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_insertar_tipos_usuarios`(
IN i_descripcion VARCHAR(200)
)
BEGIN

INSERT INTO users_type (descripcion) VALUES (i_descripcion);

SET @inserted_id = LAST_INSERT_ID();

SELECT @inserted_id as inserted_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_listar_accesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_listar_accesos`(
IN i_id_user INT
)
BEGIN

SELECT u.id,uta.id_acceso FROM users u INNER JOIN users_type ut ON ut.id = u.id_users_type INNER JOIN users_type_accesos uta ON uta.id_user_type = ut.id WHERE u.id = i_id_user AND ut.activo =1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_listar_tipos_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_listar_tipos_usuarios`()
BEGIN

SELECT * FROM users_type ut WHERE ut.activo =1;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26  6:43:51
