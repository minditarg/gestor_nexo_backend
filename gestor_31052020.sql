-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: gestor
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `gestor`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gestor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gestor`;

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `id_tipo_noticia` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'seguridad.jpg',1,0),(2,'zoom_alt.png',1,0),(3,'zoom_recomendaciones.png',1,0),(4,'17943 (1).pdf',2,0),(5,'zoom_alt.png',1,0),(6,'seguridad.jpg',1,0),(7,'zoom_recomendaciones.png',1,0),(8,'zoom_alt.png',1,0),(9,'zoom_alt.png',1,0),(10,'side_bar.jpg',1,0),(11,'login-1.jpg',1,0),(12,'login-3.jpg',1,0),(13,'side_bar.jpg',1,0),(14,'seguridad.jpg',1,0),(15,'zoom_recomendaciones.png',1,0),(16,'side_bar.jpg',1,0),(17,'zoom_alt.png',1,0),(18,'login-2.jpg',1,0),(19,'login-3.jpg',1,0),(20,'side_bar.jpg',1,0),(21,'login-3.jpg',1,0),(22,'zoom_alt.png',1,0),(23,'zoom_recomendaciones.png',1,0),(24,'side_bar.jpg',1,0),(25,'login-1.jpg',1,0),(26,'imagen_slider.jpg',1,0),(27,'img1.jpg',1,0),(28,'img2.jpg',1,0),(29,'img3.jpg',1,0),(30,'img_turnos.jpg',1,0),(31,'hello.png',1,1),(32,'hello.png',1,1),(33,'noticia_img_33.png',1,1),(34,'noticia_img_34.png',1,1),(35,'noticia_img_35.png',1,1),(36,'noticia_img_36.png',1,1),(37,'noticia_img_37.png',1,1),(38,'noticia_img_38.png',1,1),(39,'noticia_img_39.png',1,1),(40,'noticia_img_40.png',1,1),(41,'noticia_img_41.png',1,1),(42,'noticia_img_42.png',1,1),(43,'noticia_img_43.png',1,1),(44,'noticia_img_44.png',1,1),(45,'noticia_img_45.png',1,1),(46,'noticia_img_46.png',1,1),(47,'noticia_img_47.png',1,1),(48,'noticia_img_48.png',1,1),(49,'noticia_img_49.png',1,1),(50,'noticia_img_50.png',1,1),(51,'noticia_img_51.png',1,1),(52,'noticia_img_52.png',1,1),(53,'noticia_img_53.png',1,1),(54,'noticia_img_54.png',1,1),(55,'noticia_img_55.png',1,1),(56,'noticia_img_56.png',1,1),(57,'noticia_img_57.png',1,1),(58,'noticia_img_58.png',1,1),(59,'noticia_img_59.png',1,1),(60,'noticia_img_60.png',1,1),(61,'noticia_img_61.png',1,1),(62,'noticia_img_62.png',1,1),(63,'noticia_img_63.png',1,1),(64,'noticia_img_64.png',1,1),(65,'noticia_img_65.png',1,1),(66,'noticia_img_66.png',1,1),(67,'noticia_img_67.png',1,1),(68,'noticia_img_68.png',1,1),(69,'noticia_img_69.png',1,1),(70,'noticia_img_70.png',1,1),(71,'noticia_img_71.png',1,1),(72,'noticia_img_72.png',1,1),(73,'noticia_img_73.png',1,1),(74,'noticia_img_74.png',1,1),(75,'noticia_img_75.png',1,1),(76,'noticia_img_76.png',1,1),(77,'noticia_img_77.png',1,1),(78,'noticia_img_78.png',1,1),(79,'noticia_img_79.png',1,1),(80,'noticia_img_80.png',1,1),(81,'noticia_img_81.png',1,1),(82,'noticia_img_82.png',1,1),(83,'noticia_img_83.png',1,1),(84,'noticia_img_84.png',1,1),(85,'noticia_img_85.png',1,1),(86,'noticia_img_86.png',1,1),(87,'noticia_img_87.png',1,1),(88,'noticia_img_88.png',1,1),(89,'noticia_img_89.png',1,1),(90,'noticia_img_90.png',1,1),(91,'noticia_img_91.png',1,1),(92,'noticia_img_92.png',1,1),(93,'noticia_img_93.png',1,1),(94,'noticia_img_94.png',1,1),(95,'noticia_img_95.png',1,1),(96,'noticia_img_96.png',1,1),(97,'noticia_img_97.png',1,1),(98,'noticia_img_98.png',1,1),(99,'noticia_img_99.png',1,1),(100,'noticia_img_100.png',1,1),(101,'noticia_img_101.png',1,1),(102,'noticia_img_102.png',1,1),(103,'noticia_img_103.png',1,1),(104,'noticia_img_104.png',1,1),(105,'noticia_img_105.png',1,1),(106,'noticia_img_106.png',1,1),(107,'noticia_img_107.png',1,1),(108,'noticia_img_108.png',1,1),(109,'noticia_img_109.png',1,1),(110,'noticia_img_110.png',1,1),(111,'noticia_img_111.png',1,1),(112,'noticia_img_112.png',1,1),(113,'noticia_img_113.png',1,1),(114,'noticia_img_114.png',1,1),(115,'noticia_img_115.png',1,1),(116,'noticia_img_116.png',1,1),(117,'noticia_img_117.png',1,1),(118,'noticia_img_118.png',1,1),(119,'noticia_img_119.png',1,1),(120,'noticia_img_120.jpg',1,1),(121,'noticia_img_121.jpg',1,1),(122,'noticia_img_122.jpg',1,1),(123,'noticia_img_123.jpg',1,1),(124,'noticia_img_124.jpg',1,1),(125,'noticia_img_125.jpg',1,1),(126,'noticia_img_126.jpg',1,1),(127,'noticia_img_127.jpg',1,1),(128,'noticia_img_128.jpg',1,1),(129,'noticia_img_129.jpg',1,1),(130,'noticia_img_130.jpg',1,1),(131,'noticia_img_131.jpg',1,1),(132,'noticia_img_132.jpg',1,1),(133,'noticia_img_133.jpg',1,1),(134,'noticia_img_134.jpg',1,1),(135,'noticia_img_135.jpg',1,1),(136,'noticia_img_136.jpg',1,1),(137,'noticia_img_137.jpg',1,1),(138,'noticia_img_138.jpg',1,1),(139,'noticia_img_139.jpg',1,1),(140,'noticia_img_140.jpg',1,1),(141,'noticia_img_141.jpg',1,1),(142,'noticia_img_142.jpg',1,1),(143,'noticia_img_143.jpg',1,1),(144,'noticia_img_144.jpg',1,1),(145,'noticia_img_145.jpg',1,1),(146,'noticia_img_146.jpg',1,1),(147,'noticia_img_147.jpg',1,1),(148,'noticia_img_148.jpg',1,1),(149,'noticia_img_149.jpg',1,1),(150,'noticia_img_150.jpg',1,1),(151,'noticia_img_151.jpg',1,1),(152,'noticia_img_152.jpg',1,1),(153,'noticia_img_153.jpg',1,1),(154,'noticia_img_154.jpg',1,1),(155,'noticia_img_155.jpg',1,1),(156,'noticia_img_156.jpg',1,1),(157,'noticia_img_157.jpg',1,1),(158,'noticia_img_158.jpg',1,1),(159,'noticia_img_159.jpg',1,1),(160,'noticia_img_160.jpg',1,1),(161,'noticia_img_161.jpg',1,1),(162,'noticia_img_162.jpg',1,1),(163,'noticia_img_163.jpg',1,1),(164,'noticia_img_164.jpg',1,1),(165,'noticia_img_165.jpg',1,1),(166,'noticia_img_166.jpg',1,1),(167,'noticia_img_167.jpg',1,1),(168,'noticia_img_168.jpg',1,1),(169,'noticia_img_169.jpg',1,1),(170,'noticia_img_170.jpg',1,1),(171,'noticia_img_171.jpg',1,1),(172,'noticia_img_172.jpg',1,1),(173,'noticia_img_173.jpg',1,1),(174,'noticia_img_174.jpg',1,1),(175,'noticia_img_175.jpg',1,1),(176,'noticia_img_176.jpg',1,1),(177,'noticia_img_177.jpg',1,1),(178,'noticia_img_178.jpg',1,1),(179,'noticia_img_179.jpg',1,1),(180,'noticia_img_180.jpg',1,1),(181,'noticia_img_181.jpg',1,1),(182,'noticia_img_182.jpg',1,1),(183,'noticia_img_183.jpg',1,1),(184,'noticia_img_184.jpg',1,1),(185,'noticia_img_185.jpg',1,1),(186,'noticia_img_186.jpg',1,1),(187,'noticia_img_187.jpg',1,1),(188,'noticia_img_188.jpg',1,1),(189,'noticia_img_189.jpg',1,1),(190,'noticia_img_190.jpg',1,1),(191,'noticia_img_191.jpg',1,1),(192,'noticia_img_192.jpg',1,1),(193,'noticia_img_193.jpg',1,1),(194,'noticia_img_194.jpg',1,1),(195,'noticia_img_195.jpg',1,1),(196,'noticia_img_196.jpg',1,1),(197,'noticia_img_197.jpg',1,1),(198,'noticia_img_198.jpg',1,1),(199,'noticia_img_199.jpg',1,1),(200,'noticia_img_200.jpg',1,1),(201,'noticia_img_201.jpg',1,1),(202,'noticia_img_202.jpg',1,1),(203,'noticia_img_203.jpg',1,1),(204,'noticia_img_204.jpg',1,1),(205,'noticia_img_205.jpg',1,1),(206,'noticia_img_206.jpg',1,1),(207,'noticia_img_207.jpg',1,1),(208,'noticia_img_208.jpg',1,1),(209,'noticia_img_209.jpg',1,1),(210,'noticia_img_210.jpg',1,1),(211,'noticia_img_211.jpg',1,1),(212,'noticia_img_212.jpg',1,1),(213,'noticia_img_213.jpg',1,1),(214,'noticia_img_214.jpg',1,1),(215,'noticia_img_215.jpg',1,1),(216,'noticia_img_216.jpg',1,1),(217,'noticia_img_217.jpg',1,1),(218,'noticia_img_218.jpg',1,1),(219,'noticia_img_219.jpg',1,1),(220,'noticia_img_220.jpg',1,1),(221,'noticia_img_221.jpg',1,1),(222,'noticia_img_222.jpg',1,1),(223,'noticia_img_223.jpg',1,1),(224,'noticia_img_224.jpg',1,1),(225,'noticia_img_225.jpg',1,1),(226,'noticia_img_226.jpg',1,1),(227,'noticia_img_227.jpg',1,1),(228,'noticia_img_228.jpg',1,1),(229,'noticia_img_229.jpg',1,1),(230,'noticia_img_230.jpg',1,1),(231,'noticia_img_231.jpg',1,1),(232,'noticia_img_232.jpg',1,1),(233,'noticia_img_233.jpg',1,1),(234,'noticia_img_234.jpg',1,1),(235,'noticia_img_235.jpg',1,1),(236,'noticia_img_236.jpg',1,1),(237,'noticia_img_237.jpg',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_menu`
--

LOCK TABLES `items_menu` WRITE;
/*!40000 ALTER TABLE `items_menu` DISABLE KEYS */;
INSERT INTO `items_menu` VALUES (1,'itemm1','google',NULL,1,4),(2,'item2','prueba',3,1,1),(3,'item4','prueba',NULL,0,0),(4,'Matias','enlace matias',NULL,1,0),(5,'','',NULL,0,NULL),(6,'','',NULL,0,NULL),(7,'','',NULL,0,NULL),(8,'','',NULL,0,NULL),(9,'Item Domingo','',3,1,3),(10,'item4','enlance',4,1,5),(11,'item domingo','http://hola.com',6,1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'modulo1',2,1,NULL,NULL,0),(2,'matias',3,1,NULL,0,3),(3,'jime',3,1,NULL,1,3),(4,'puro',3,2,NULL,2,3),(5,'primer ',4,2,'{\"htmlText\":\"\"}',NULL,1),(6,'modulo1',5,2,NULL,1,0),(7,'modulo2',5,1,NULL,0,0),(8,'hola',5,2,NULL,NULL,0),(9,'matias4',5,1,NULL,NULL,0),(10,'matias85',5,2,NULL,NULL,0),(11,'matias',5,1,'{\"htmlText\":\"<h1>hola mat</h1>\"}',0,1),(12,'modulo 2',5,2,'{\"htmlText\":\"<p>hola matias</p>\"}',1,1),(13,'nuevo2222',5,2,'{\"htmlText\":\"<p>xssxsxsxsxsxs</p>\"}',99,1),(14,'modulo3',5,3,'{\"items\":[{\"titulo\":\"imagen2\",\"descripcion\":\"hola2222\",\"archivo\":\"/uploads/login-3.jpg\"},{\"titulo\":\"matias\",\"descripcion\":\"matias2\",\"archivo\":\"/uploads/login-2.jpg\"},{\"titulo\":\"imagen3\",\"descripcion\":\"hola\",\"archivo\":\"/uploads/zoom_alt.png\"}]}',99,1),(15,'Slider Principal',6,3,NULL,99,0),(16,'Texto',6,2,NULL,99,0),(17,'slider principallll',6,4,'{\"items\":[{\"archivo\":\"\",\"titulo\":\"holaaa\",\"descripcion\":\"matiasss\"},{\"archivo\":\"\",\"titulo\":\"matiassss\",\"descripcion\":\"jimeee\"},{\"archivo\":\"\",\"titulo\":\"hola\",\"descripcion\":\"matiasss\"},{\"archivo\":\"zoom_alt.png\",\"titulo\":\"matiasss\",\"descripcion\":\"holaaa\",\"htmlText\":\"hola matiasss\"}],\"titulo\":\"matiasss\",\"textoBoton\":\"hola\",\"archivo\":\"login-2.jpg\"}',99,0),(18,'modulo 5',6,5,'{\"htmlText\":\"xsaxsa\",\"titulo\":\"sxsxa\"}',99,0),(19,'matias',6,5,'{\"htmlText\":\"\",\"titulo\":\"\"}',99,0),(20,'listo texto imagen',6,6,NULL,99,0),(21,'Slider Principal',6,4,'{\"titulo\":\"Conoce mas\",\"descripcion\":\"escripcion 1\",\"textoBoton\":\"conoce mas\",\"archivo\":\"login-2.jpg\"}',0,0),(22,'About',6,5,'{\"items\":[{\"archivo\":\"login-2.jpg\",\"htmlText\":\"Textoooo1111\"},{\"archivo\":\"login-3.jpg\",\"htmlText\":\"Textoooo2222\"}]}',2,0),(23,'Quienes Somos',6,6,'{\"htmlText\":\"holaa matias!!!\",\"titulo\":\"holaaa\"}',3,0),(24,'Turnosss',6,8,'{\"archivo\":\"login-3.jpg\",\"items\":[{\"titulo\":\"weewqeqw\",\"htmlText\":\"\"},{\"titulo\":\"xsaxaxs\",\"htmlText\":\"xaasx\"},{\"titulo\":\"titulo2\",\"archivo\":\"zoom_recomendaciones.png\"},{\"titulo\":\"holaa\",\"archivo\":\"login-3.jpg\"},{\"titulo\":\"hola\",\"archivo\":\"side_bar.jpg\"},{\"titulo\":\"aloowww\",\"archivo\":\"zoom_recomendaciones.png\",\"htmlText\":\"<p>hola matias</p>\"}]}',4,0),(25,'dewdedw',6,6,NULL,1,0),(26,'Nuevooo',6,3,NULL,99,0),(27,'Slider Principal',6,1,'{\"archivo\":\"imagen_slider.jpg\",\"titulo\":\"PSICOTERAPIA\\n EN EL MUNDO\",\"htmlText\":\"DED&Iacute;CATE A SENTIRTE BIEN CONTIGO MISMO,<br />ES CON QUIEN PASAR&Aacute;S EL RESTO DE TU VIDA.\"}',0,1),(28,'About',6,2,'{\"items\":[{\"archivo\":\"img1.jpg\",\"titulo\":\"ATENCIÓN PSICOLÓGICA A DISTANCIA\",\"htmlText\":\"erapia online desde cualquier parte del mundo: Por videollamada, Skype o Zoom desde tu tablet, celular o computadora. Desde tu casa u oficina. Si no cont&aacute;s con el tiempo necesario para trasladarte, buscas optimizar los tiempos, viajas frecuentemente por trabajo o ten&eacute;s reducida tu movilidad.\"},{\"archivo\":\"img2.jpg\",\"titulo\":\"DESDE DONDE ESTÉS\",\"htmlText\":\"Si viv&iacute;s en el exterior. Psic&oacute;logos online que hablan tu mismo idioma y entienden tu cultura a menores costos y de manera sencilla.<br />Si viv&iacute;s en el interior del pa&iacute;s. Te garantiza confidencialidad absoluta y total privacidad, ya que muchas veces se dificulta encontrar un profesional que no forme parte de tu entorno.\"},{\"archivo\":\"img3.jpg\",\"titulo\":\"DE MANERA PRESENCIAL\",\"htmlText\":\"Si eleg&iacute;s esta modalidad, tenemos un espacio para recibirte en nuestros consultorios ubicados en el barrio de Villa Devoto de la Ciudad Aut&oacute;noma de Buenos Aires.\"}]}',1,1),(29,'Quienes Somos',6,3,'{\"titulo\":\"QUIÉNES SOMOS\",\"htmlText\":\"<strong>Psicoterapia en el Mundo</strong> est&aacute; conformado por un grupo de profesionales Licenciados en Psicolog&iacute;a en constante formaci&oacute;n, con amplia experiencia en el &aacute;rea cl&iacute;nica, tanto en &aacute;mbitos privados como p&uacute;blicos, en el &aacute;rea forense y laboral.<br />Brindamos atenci&oacute;n psicol&oacute;gica para personas desde los 18 a&ntilde;os de edad en adelante. Todos los profesionales trabajan desde la perspectiva del Psicoan&aacute;lisis, se encuentran debidamente matriculados y garantizan total confidencialidad. Poseemos un gran compromiso con la Salud Mental y creemos en el acercamiento y el cuidado al ser humano, desde una perspectiva bio-psico-social. Nuestro objetivo es que podamos facilitarte el acceso a la terapia psicol&oacute;gica y por ende al cuidado de tu Salud Mental, brindando sost&eacute;n, apoyo y contenci&oacute;n emocional.\"}',2,1),(30,'Turnos',6,5,'{\"archivo\":\"img_turnos.jpg\",\"titulo\":\"¿CÓMO SOLICITAR UN TURNO?\",\"items\":[{\"titulo\":\"CONTACTANOS\",\"texto\":\"Escribinos por Whatsapp al +541166301988 o rellená el formulario en Contactanos y te responderemos a la brevedad. De esta manera, podrás aclarar dudas sobre el tratamiento y podremos empezar a conocernos. También podremos coordinar un día y horario para tener tu primera sesión. Necesitaremos saber tu disponibilidad horaria y país o región de residencia para calcular la diferencia horaria.\"},{\"titulo\":\"ACORDEMOS EL HORARIO\",\"texto\":\"Te brindaremos las opciones de horarios disponibles.\"}]}',3,1),(31,'CONTACTANOS',6,4,'{\"titulo\":\"CONTACTANOS\",\"ubicacion\":\"Argentina\",\"telefono\":\"+5411 6630 1988\",\"email\":\"contacto@psicoterapiaenelmundo.com\",\"htmlText\":\"SI TE ENCONTR&Aacute;S EN UNA SITUACI&Oacute;N DE EMERGENCIA, RIESGO O PELIGRO NO TE CONTACTES CON NOSOTROS, POR FAVOR, CONTACTATE INMEDIATAMENTE CON EL SERVICIO DE ATENCI&Oacute;N A EMERGENCIAS CORRESPONDIENTE A LA REGI&Oacute;N DONDE VIVAS. EN EL CASO DE ARGENTINA LA L&Iacute;NEA TELEF&Oacute;NICA DE EMERGENCIAS ES 911.\"}',4,1),(32,'noticias',6,6,NULL,5,3);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_noticia` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  `fecha_finalizacion` datetime DEFAULT NULL,
  `contenido` longtext,
  `estado` int(11) DEFAULT '1',
  `fecha_inicio` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,1,72,NULL,'primera','desssscc','2020-05-18 05:56:56',NULL,NULL,NULL,2,NULL),(2,1,72,NULL,'segundas','descripcion2','2020-05-18 06:02:59','2020-05-18 06:53:25',NULL,NULL,1,NULL),(3,1,72,NULL,'terceraaaa','descripcion terceraaa','2020-05-18 07:35:59','2020-05-18 08:11:48',NULL,NULL,1,NULL),(4,1,72,NULL,'matias','cuarta','2020-05-18 08:20:33','2020-05-18 08:20:33',NULL,NULL,1,NULL),(5,1,72,NULL,'ahora','otra','2020-05-18 08:22:10','2020-05-18 08:22:10',NULL,NULL,1,NULL),(6,1,72,NULL,'quintas','quintas','2020-05-18 08:23:59','2020-05-18 08:52:25',NULL,NULL,1,NULL),(7,1,72,NULL,'noticiia 56','matuu','2020-05-18 08:52:54',NULL,NULL,NULL,0,NULL),(8,1,72,NULL,'pruebaaa','holaaa','2020-05-18 08:55:22','2020-05-18 08:55:35',NULL,NULL,1,NULL),(9,1,72,NULL,'otra noticiaaa','holaaa','2020-05-18 08:55:49','2020-05-18 08:55:56',NULL,NULL,0,NULL),(10,1,72,NULL,'nuevaa','holaaa','2020-05-20 10:14:39','2020-05-20 10:14:39',NULL,NULL,1,NULL),(11,1,NULL,NULL,'nuevaacc','holaaacc','2020-05-20 10:15:41','2020-05-20 10:15:41',NULL,NULL,1,NULL),(12,1,72,NULL,'holaa','matiasss','2020-05-20 10:17:31','2020-05-26 03:05:21',NULL,'{\"imgPortada\":\"noticia_img_146.jpg\",\"items\":[]}',1,NULL),(13,1,72,NULL,'matias','hola','2020-05-24 10:32:37',NULL,NULL,'{\"imgPortada\":\"noticia_img_152.jpg\",\"items\":[{\"descripcion\":\"descripcion85\",\"imageURL\":\"noticia_img_144.jpg\"},{\"descripcion\":\"imgam\",\"imageURL\":\"noticia_img_153.jpg\"},{\"descripcion\":\"play console\",\"imageURL\":\"noticia_img_145.jpg\"}]}',2,NULL),(14,1,72,NULL,'ssssss','ssss','2020-05-31 09:28:06','2020-05-31 09:29:16',NULL,'{\"imgPortada\":\"noticia_img_231.jpg\",\"items\":[{\"descripcion\":\"\",\"imageURL\":\"noticia_img_233.jpg\"},{\"descripcion\":\"\",\"imageURL\":\"noticia_img_232.jpg\"}]}',1,NULL),(15,1,72,NULL,'Actividad1','desc','2020-05-31 11:20:26','2020-05-31 11:20:26',NULL,'{\"imgPortada\":\"noticia_img_234.jpg\",\"items\":[{\"descripcion\":\"hola\",\"imageURL\":\"noticia_img_235.jpg\"}]}',1,NULL),(16,2,72,NULL,'actividad2','desc 2','2020-05-31 11:22:36',NULL,NULL,'{\"imgPortada\":\"noticia_img_236.jpg\",\"items\":[{\"descripcion\":\"\",\"imageURL\":\"noticia_img_237.jpg\"}]}',2,NULL);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias_categorias`
--

DROP TABLE IF EXISTS `noticias_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_noticia` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_categorias`
--

LOCK TABLES `noticias_categorias` WRITE;
/*!40000 ALTER TABLE `noticias_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticias_categorias` ENABLE KEYS */;
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
INSERT INTO `pages` VALUES (1,'pagina1','pagina de inico',0),(2,'Pagina2','holaaaasss',0),(3,'pagina 3','pagina de inicio nueva',1),(4,'pagina 5','pagina secundaria',1),(5,'pagina noticias','noticias',1),(6,'Psicologia','Pagina de prueba Psicologia',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_noticia` int(11) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,NULL,NULL),(13,3,'hola'),(14,3,'matias'),(15,3,'jime'),(16,NULL,'hola'),(17,NULL,'alooo'),(18,NULL,'hola'),(19,NULL,'matias'),(20,NULL,'nicolas'),(26,6,'nicolas'),(27,6,'matu'),(28,6,'hola'),(33,7,'hola'),(35,8,'matias'),(36,8,'Schindler\'s List'),(37,9,'matii'),(38,10,'matias'),(39,10,'imagen'),(40,11,'matias'),(41,11,'imagen'),(48,13,'tag1'),(49,13,'daniel'),(50,13,'The Godfather'),(51,13,'The Godfather: Part II'),(60,14,'hola'),(61,14,'matias'),(62,15,'The Godfather'),(63,16,'The Godfather');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_noticias`
--

DROP TABLE IF EXISTS `tipos_noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_noticias`
--

LOCK TABLES `tipos_noticias` WRITE;
/*!40000 ALTER TABLE `tipos_noticias` DISABLE KEYS */;
INSERT INTO `tipos_noticias` VALUES (1,'Noticia','1'),(2,'Actividad','1'),(3,'Campaña','1');
/*!40000 ALTER TABLE `tipos_noticias` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_modules`
--

LOCK TABLES `types_modules` WRITE;
/*!40000 ALTER TABLE `types_modules` DISABLE KEYS */;
INSERT INTO `types_modules` VALUES (1,'Psi Slider Principal'),(2,'Psi About'),(3,'Psi Titulo,Texto'),(4,'Psi Titulo, Texto Alternativo'),(5,'Psi Titulo,imagen Listo de Items'),(6,'Noticias');
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
/*!50003 DROP PROCEDURE IF EXISTS `noticias_categorias_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_categorias_list`()
BEGIN

SELECT * FROM categorias;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_delete`(
IN i_id_noticia INT
)
BEGIN

UPDATE noticias SET estado = 0 WHERE id = i_id_noticia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_detail`(
IN i_id_noticia INT
)
BEGIN

SELECT n.*, c.descripcion as decripcion_categoria,tn.descripcion as descripcion_tipo_noticia, u.nombre as nombre_user 
FROM noticias n 
LEFT JOIN categorias c ON c.id = n.id_categoria  
LEFT JOIN tipos_noticias tn ON tn.id = n.id_tipo_noticia
LEFT JOIN users u ON u.id = n.id_user
WHERE n.id= i_id_noticia;

SELECT * FROM tags WHERE id_noticia =  i_id_noticia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_insert`(
IN i_nombre varchar(200),
IN i_descripcion varchar(200),
IN i_id_tipo_noticia INT,
IN i_id_categoria INT,
IN i_id_user INT,
IN i_fecha_finalizacion datetime,
IN i_contenido longtext,
IN i_estado INT
)
BEGIN

		DECLARE var_fecha_publicacion datetime DEFAULT NULL;

IF i_estado = 1
THEN
SET var_fecha_publicacion = NOW();
END IF;

INSERT INTO noticias (nombre,descripcion,id_tipo_noticia,id_categoria,id_user,fecha_creacion,fecha_publicacion,fecha_finalizacion,contenido,estado)
VALUES(i_nombre,i_descripcion,i_id_tipo_noticia,i_id_categoria,i_id_user,NOW(),var_fecha_publicacion,i_fecha_finalizacion,i_contenido,i_estado);

SET @last_inserted = last_insert_id();

select @last_inserted as id_noticia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_insert_image` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_insert_image`(
IN i_extension varchar(10)
)
BEGIN
	
	INSERT INTO files (nombre,id_type_file) VALUES (NULL,1);

	SET @inserted_id = LAST_INSERT_ID();
	
	SET @nombre = CONCAT('noticia_img_', @inserted_id , '.',i_extension);

	UPDATE files SET nombre = @nombre WHERE id = @inserted_id;

	SELECT @nombre as file_name;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_list`()
BEGIN

SELECT n.*, c.descripcion as decripcion_categoria,tn.descripcion as descripcion_tipo_noticia, u.nombre as nombre_user 
FROM noticias n 
LEFT JOIN categorias c ON c.id = n.id_categoria  
LEFT JOIN tipos_noticias tn ON tn.id = n.id_tipo_noticia
LEFT JOIN users u ON u.id = n.id_user
WHERE n.estado > 0 ORDER BY n.id DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_list_bytipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_list_bytipo`(
IN i_id_tipo_noticia INT
)
BEGIN

SELECT n.*, c.descripcion as decripcion_categoria,tn.descripcion as descripcion_tipo_noticia, u.nombre as nombre_user 
FROM noticias n 
LEFT JOIN categorias c ON c.id = n.id_categoria  
LEFT JOIN tipos_noticias tn ON tn.id = n.id_tipo_noticia
LEFT JOIN users u ON u.id = n.id_user
WHERE n.estado > 0 AND n.id_tipo_noticia = i_id_tipo_noticia  ORDER BY n.id DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_tag_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_tag_insert`(
IN i_id_noticia INT,
IN i_descripcion varchar(200)
)
BEGIN

INSERT INTO tags (id_noticia,descripcion) VALUES (i_id_noticia,i_descripcion);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_tipos_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_tipos_list`()
BEGIN

SELECT * FROM tipos_noticias;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `noticias_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `noticias_update`(
IN i_id_noticia INT,
IN i_nombre varchar(200),
IN i_descripcion varchar(200),
IN i_id_tipo_noticia INT,
IN i_id_categoria INT,
IN i_id_user INT,
IN i_fecha_finalizacion datetime,
IN i_contenido longtext,
IN i_estado INT
)
BEGIN

DECLARE var_fecha_publicacion datetime DEFAULT NULL;

SET @fecha_publicacion_actual = NULL;
SELECT fecha_publicacion INTO @fecha_publicacion_actual FROM noticias WHERE id = i_id_noticia;

IF i_estado = 1 AND @fecha_publicacion is NULL 
THEN
UPDATE noticias SET fecha_publicacion = NOW() WHERE id = i_id_noticia;
END IF;

UPDATE noticias SET nombre = i_nombre,descripcion = i_descripcion,id_tipo_noticia = i_id_tipo_noticia, id_categoria = i_id_categoria, id_user = i_id_user,fecha_finalizacion = i_fecha_finalizacion,contenido = i_contenido, estado = i_estado
WHERE id = i_id_noticia;



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

-- Dump completed on 2020-05-31  8:38:48
