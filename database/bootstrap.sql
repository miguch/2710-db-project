-- MySQL dump 10.13  Distrib 8.0.27, for macos11.6 (arm64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.5-MariaDB-1:10.6.5+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
                                                `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                                `type` varchar(255) NOT NULL,
                                                `controller` varchar(255) NOT NULL,
                                                `action` varchar(255) NOT NULL,
                                                `enabled` tinyint(1) NOT NULL,
                                                `policy` varchar(255) DEFAULT NULL,
                                                `role` int(11) DEFAULT NULL,
                                                `created_by` int(11) DEFAULT NULL,
                                                `updated_by` int(11) DEFAULT NULL,
                                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (25,'application','customers','count',0,'',1,NULL,NULL),(26,'application','customers','create',0,'',1,NULL,NULL),(27,'application','customers','count',1,'',2,NULL,NULL),(28,'application','customers','delete',0,'',1,NULL,NULL),(29,'application','customers','create',1,'',2,NULL,NULL),(30,'application','customers','delete',1,'',2,NULL,NULL),(31,'application','customers','find',0,'',1,NULL,NULL),(32,'application','customers','find',1,'',2,NULL,NULL),(33,'application','customers','findone',0,'',1,NULL,NULL),(34,'application','customers','update',0,'',1,NULL,NULL),(35,'application','customers','findone',1,'',2,NULL,NULL),(37,'application','customers','update',1,'',2,NULL,NULL),(61,'application','region','create',1,'',2,NULL,NULL),(62,'application','region','count',1,'',2,NULL,NULL),(63,'application','region','count',0,'',1,NULL,NULL),(64,'application','region','create',0,'',1,NULL,NULL),(65,'application','region','delete',0,'',1,NULL,NULL),(66,'application','region','find',0,'',1,NULL,NULL),(67,'application','region','delete',1,'',2,NULL,NULL),(68,'application','region','find',1,'',2,NULL,NULL),(69,'application','region','findone',0,'',1,NULL,NULL),(70,'application','region','findone',1,'',2,NULL,NULL),(71,'application','region','update',0,'',1,NULL,NULL),(72,'application','region','update',1,'',2,NULL,NULL),(73,'application','sales-person','count',0,'',1,NULL,NULL),(74,'application','sales-person','count',1,'',2,NULL,NULL),(75,'application','sales-person','create',0,'',1,NULL,NULL),(76,'application','sales-person','create',1,'',2,NULL,NULL),(77,'application','sales-person','delete',0,'',1,NULL,NULL),(78,'application','sales-person','delete',1,'',2,NULL,NULL),(79,'application','sales-person','find',0,'',1,NULL,NULL),(80,'application','sales-person','find',1,'',2,NULL,NULL),(81,'application','sales-person','findone',0,'',1,NULL,NULL),(82,'application','sales-person','findone',1,'',2,NULL,NULL),(83,'application','store','count',0,'',1,NULL,NULL),(84,'application','sales-person','update',0,'',1,NULL,NULL),(85,'application','sales-person','update',1,'',2,NULL,NULL),(86,'application','store','count',1,'',2,NULL,NULL),(87,'application','store','create',0,'',1,NULL,NULL),(88,'application','store','create',1,'',2,NULL,NULL),(89,'application','store','delete',0,'',1,NULL,NULL),(90,'application','store','delete',1,'',2,NULL,NULL),(91,'application','store','find',0,'',1,NULL,NULL),(92,'application','store','find',1,'',2,NULL,NULL),(93,'application','store','findone',1,'',2,NULL,NULL),(94,'application','store','findone',0,'',1,NULL,NULL),(95,'application','store','update',0,'',1,NULL,NULL),(96,'application','store','update',1,'',2,NULL,NULL),(97,'application','transaction','count',1,'',2,NULL,NULL),(98,'application','transaction','count',0,'',1,NULL,NULL),(99,'application','transaction','create',0,'',1,NULL,NULL),(100,'application','transaction','create',1,'',2,NULL,NULL),(101,'application','transaction','delete',0,'',1,NULL,NULL),(102,'application','transaction','delete',1,'',2,NULL,NULL),(103,'application','transaction','findone',0,'',1,NULL,NULL),(104,'application','transaction','find',1,'',2,NULL,NULL),(105,'application','transaction','find',0,'',1,NULL,NULL),(106,'application','transaction','update',0,'',1,NULL,NULL),(107,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(108,'application','transaction','findone',1,'',2,NULL,NULL),(109,'application','transaction','update',1,'',2,NULL,NULL),(110,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(111,'content-manager','collection-types','create',0,'',1,NULL,NULL),(112,'content-manager','collection-types','create',0,'',2,NULL,NULL),(113,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(114,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(115,'content-manager','collection-types','find',0,'',1,NULL,NULL),(116,'content-manager','collection-types','find',0,'',2,NULL,NULL),(117,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(118,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(119,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(120,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(121,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(122,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(123,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(124,'content-manager','collection-types','update',0,'',1,NULL,NULL),(125,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(126,'content-manager','collection-types','update',0,'',2,NULL,NULL),(127,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(128,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(129,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(130,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(131,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(132,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(133,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(134,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(135,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(136,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(137,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(138,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(139,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(140,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(141,'content-manager','relations','find',0,'',2,NULL,NULL),(142,'content-manager','relations','find',0,'',1,NULL,NULL),(143,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(144,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(145,'content-manager','single-types','delete',0,'',1,NULL,NULL),(146,'content-manager','single-types','delete',0,'',2,NULL,NULL),(147,'content-manager','single-types','find',0,'',1,NULL,NULL),(148,'content-manager','single-types','find',0,'',2,NULL,NULL),(149,'content-manager','single-types','publish',0,'',1,NULL,NULL),(150,'content-manager','single-types','publish',0,'',2,NULL,NULL),(151,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(152,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(153,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(154,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(155,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(156,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(157,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(158,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(159,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(160,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(161,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(162,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(163,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(164,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(165,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(166,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(167,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(168,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(169,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(170,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(171,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(172,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(173,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(174,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(175,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(176,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(177,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(178,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(179,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(180,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(181,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(182,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(183,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(184,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(185,'email','email','getsettings',0,'',1,NULL,NULL),(186,'email','email','getsettings',0,'',2,NULL,NULL),(187,'email','email','send',0,'',1,NULL,NULL),(188,'email','email','send',0,'',2,NULL,NULL),(189,'email','email','test',0,'',1,NULL,NULL),(190,'email','email','test',0,'',2,NULL,NULL),(191,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(192,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(193,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(194,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(195,'i18n','locales','createlocale',0,'',1,NULL,NULL),(196,'i18n','locales','createlocale',0,'',2,NULL,NULL),(197,'i18n','locales','listlocales',0,'',1,NULL,NULL),(198,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(199,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(200,'i18n','locales','listlocales',0,'',2,NULL,NULL),(201,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(202,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(203,'upload','upload','count',0,'',1,NULL,NULL),(204,'upload','upload','count',0,'',2,NULL,NULL),(205,'upload','upload','destroy',0,'',1,NULL,NULL),(206,'upload','upload','find',0,'',2,NULL,NULL),(207,'upload','upload','find',0,'',1,NULL,NULL),(208,'upload','upload','destroy',0,'',2,NULL,NULL),(209,'upload','upload','findone',0,'',1,NULL,NULL),(210,'upload','upload','findone',0,'',2,NULL,NULL),(211,'upload','upload','getsettings',0,'',1,NULL,NULL),(212,'upload','upload','getsettings',0,'',2,NULL,NULL),(213,'upload','upload','search',0,'',1,NULL,NULL),(214,'upload','upload','search',0,'',2,NULL,NULL),(215,'upload','upload','updatesettings',0,'',1,NULL,NULL),(216,'upload','upload','upload',0,'',1,NULL,NULL),(217,'upload','upload','upload',0,'',2,NULL,NULL),(218,'upload','upload','updatesettings',0,'',2,NULL,NULL),(219,'users-permissions','auth','callback',0,'',1,NULL,NULL),(220,'users-permissions','auth','callback',1,'',2,NULL,NULL),(221,'users-permissions','auth','connect',1,'',1,NULL,NULL),(222,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(223,'users-permissions','auth','connect',1,'',2,NULL,NULL),(224,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(225,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(226,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(227,'users-permissions','auth','register',1,'',2,NULL,NULL),(228,'users-permissions','auth','register',0,'',1,NULL,NULL),(229,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(230,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(231,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(232,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(233,'users-permissions','user','count',0,'',1,NULL,NULL),(234,'users-permissions','user','count',0,'',2,NULL,NULL),(235,'users-permissions','user','create',0,'',1,NULL,NULL),(236,'users-permissions','user','create',0,'',2,NULL,NULL),(237,'users-permissions','user','destroy',0,'',1,NULL,NULL),(238,'users-permissions','user','destroy',0,'',2,NULL,NULL),(239,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(240,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(241,'users-permissions','user','find',0,'',1,NULL,NULL),(242,'users-permissions','user','findone',0,'',1,NULL,NULL),(243,'users-permissions','user','find',0,'',2,NULL,NULL),(244,'users-permissions','user','findone',0,'',2,NULL,NULL),(245,'users-permissions','user','me',1,'',1,NULL,NULL),(246,'users-permissions','user','me',1,'',2,NULL,NULL),(247,'users-permissions','user','update',0,'',1,NULL,NULL),(248,'users-permissions','user','update',0,'',2,NULL,NULL),(249,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(250,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(251,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(252,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(253,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(254,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(255,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(256,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(257,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(258,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(259,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(260,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(261,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(262,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(263,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(264,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(265,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(266,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(267,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(268,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(269,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(270,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(271,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(272,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(273,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(274,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(275,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(276,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(277,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(278,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(279,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(280,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(281,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(282,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(283,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(284,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(285,'documentation','documentation','index',0,'',1,NULL,NULL),(286,'documentation','documentation','index',0,'',2,NULL,NULL),(287,'documentation','documentation','login',0,'',1,NULL,NULL),(288,'documentation','documentation','login',0,'',2,NULL,NULL),(289,'documentation','documentation','loginview',0,'',1,NULL,NULL),(290,'documentation','documentation','loginview',0,'',2,NULL,NULL),(291,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(292,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(293,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(294,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(295,'application','product-kind','count',0,'',1,NULL,NULL),(296,'application','product-kind','count',1,'',2,NULL,NULL),(297,'application','product-kind','findone',0,'',1,NULL,NULL),(298,'application','product-kind','find',0,'',1,NULL,NULL),(299,'application','product-kind','find',1,'',2,NULL,NULL),(300,'application','product-kind','create',0,'',1,NULL,NULL),(301,'application','product-kind','delete',0,'',1,NULL,NULL),(302,'application','product-kind','delete',1,'',2,NULL,NULL),(303,'application','product-kind','create',1,'',2,NULL,NULL),(304,'application','product-kind','findone',1,'',2,NULL,NULL),(305,'application','product-kind','update',0,'',1,NULL,NULL),(306,'application','product-kind','update',1,'',2,NULL,NULL),(312,'application','customers','find',1,'',3,NULL,NULL),(314,'application','customers','findone',1,'',3,NULL,NULL),(315,'application','customers','count',1,'',3,NULL,NULL),(316,'application','customers','create',1,'',3,NULL,NULL),(317,'application','customers','update',1,'',3,NULL,NULL),(319,'application','customers','delete',1,'',3,NULL,NULL),(322,'application','product-kind','find',1,'',3,NULL,NULL),(325,'application','product-kind','findone',1,'',3,NULL,NULL),(327,'application','product-kind','count',1,'',3,NULL,NULL),(328,'application','product-kind','update',0,'',3,NULL,NULL),(329,'application','product-kind','create',0,'',3,NULL,NULL),(330,'application','product-kind','delete',0,'',3,NULL,NULL),(331,'application','region','find',1,'',3,NULL,NULL),(332,'application','region','findone',1,'',3,NULL,NULL),(333,'application','region','count',1,'',3,NULL,NULL),(334,'application','region','update',0,'',3,NULL,NULL),(335,'application','region','create',0,'',3,NULL,NULL),(336,'application','region','delete',0,'',3,NULL,NULL),(337,'application','sales-person','find',1,'',3,NULL,NULL),(338,'application','sales-person','findone',1,'',3,NULL,NULL),(339,'application','sales-person','create',0,'',3,NULL,NULL),(340,'application','sales-person','count',1,'',3,NULL,NULL),(341,'application','sales-person','update',0,'',3,NULL,NULL),(342,'application','sales-person','delete',0,'',3,NULL,NULL),(343,'application','store','find',1,'',3,NULL,NULL),(344,'application','store','findone',1,'',3,NULL,NULL),(345,'application','store','count',1,'',3,NULL,NULL),(346,'application','store','create',0,'',3,NULL,NULL),(347,'application','store','update',0,'',3,NULL,NULL),(348,'application','transaction','find',1,'',3,NULL,NULL),(349,'application','store','delete',0,'',3,NULL,NULL),(350,'application','transaction','findone',1,'',3,NULL,NULL),(351,'application','transaction','count',1,'',3,NULL,NULL),(352,'application','transaction','create',1,'',3,NULL,NULL),(353,'application','transaction','update',1,'',3,NULL,NULL),(354,'application','transaction','delete',1,'',3,NULL,NULL),(355,'content-manager','collection-types','find',0,'',3,NULL,NULL),(356,'content-manager','collection-types','findone',0,'',3,NULL,NULL),(357,'content-manager','collection-types','create',0,'',3,NULL,NULL),(358,'content-manager','collection-types','update',0,'',3,NULL,NULL),(359,'content-manager','collection-types','delete',0,'',3,NULL,NULL),(360,'content-manager','collection-types','publish',0,'',3,NULL,NULL),(361,'content-manager','collection-types','unpublish',0,'',3,NULL,NULL),(362,'content-manager','collection-types','bulkdelete',0,'',3,NULL,NULL),(363,'content-manager','collection-types','previewmanyrelations',0,'',3,NULL,NULL),(364,'content-manager','components','findcomponents',0,'',3,NULL,NULL),(365,'content-manager','components','findcomponentconfiguration',0,'',3,NULL,NULL),(366,'content-manager','components','updatecomponentconfiguration',0,'',3,NULL,NULL),(367,'content-manager','content-types','findcontenttypes',0,'',3,NULL,NULL),(368,'content-manager','content-types','findcontenttypessettings',0,'',3,NULL,NULL),(369,'content-manager','content-types','findcontenttypeconfiguration',0,'',3,NULL,NULL),(370,'content-manager','content-types','updatecontenttypeconfiguration',0,'',3,NULL,NULL),(371,'content-manager','relations','find',0,'',3,NULL,NULL),(372,'content-manager','single-types','find',0,'',3,NULL,NULL),(373,'content-manager','single-types','createorupdate',0,'',3,NULL,NULL),(374,'content-manager','single-types','publish',0,'',3,NULL,NULL),(375,'content-manager','single-types','delete',0,'',3,NULL,NULL),(376,'content-manager','single-types','unpublish',0,'',3,NULL,NULL),(377,'content-manager','uid','generateuid',0,'',3,NULL,NULL),(378,'content-manager','uid','checkuidavailability',0,'',3,NULL,NULL),(379,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),(380,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),(381,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),(382,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),(383,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),(384,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),(385,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),(386,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),(387,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),(388,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),(389,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),(390,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),(391,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(392,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),(393,'documentation','documentation','getinfos',0,'',3,NULL,NULL),(394,'documentation','documentation','index',0,'',3,NULL,NULL),(395,'documentation','documentation','loginview',0,'',3,NULL,NULL),(396,'documentation','documentation','login',0,'',3,NULL,NULL),(397,'documentation','documentation','regeneratedoc',0,'',3,NULL,NULL),(398,'documentation','documentation','deletedoc',0,'',3,NULL,NULL),(399,'email','email','send',0,'',3,NULL,NULL),(400,'documentation','documentation','updatesettings',0,'',3,NULL,NULL),(401,'email','email','test',0,'',3,NULL,NULL),(402,'email','email','getsettings',0,'',3,NULL,NULL),(403,'i18n','content-types','getnonlocalizedattributes',0,'',3,NULL,NULL),(404,'i18n','locales','listlocales',0,'',3,NULL,NULL),(405,'i18n','iso-locales','listisolocales',0,'',3,NULL,NULL),(406,'i18n','locales','createlocale',0,'',3,NULL,NULL),(407,'i18n','locales','updatelocale',0,'',3,NULL,NULL),(408,'upload','upload','find',0,'',3,NULL,NULL),(409,'i18n','locales','deletelocale',0,'',3,NULL,NULL),(410,'upload','upload','count',0,'',3,NULL,NULL),(411,'upload','upload','destroy',0,'',3,NULL,NULL),(412,'upload','upload','findone',0,'',3,NULL,NULL),(413,'upload','upload','getsettings',0,'',3,NULL,NULL),(414,'upload','upload','updatesettings',0,'',3,NULL,NULL),(415,'upload','upload','upload',0,'',3,NULL,NULL),(416,'upload','upload','search',0,'',3,NULL,NULL),(417,'users-permissions','auth','callback',0,'',3,NULL,NULL),(418,'users-permissions','auth','resetpassword',0,'',3,NULL,NULL),(419,'users-permissions','auth','connect',0,'',3,NULL,NULL),(420,'users-permissions','auth','forgotpassword',0,'',3,NULL,NULL),(421,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),(422,'users-permissions','auth','register',0,'',3,NULL,NULL),(423,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),(424,'users-permissions','user','create',0,'',3,NULL,NULL),(425,'users-permissions','user','update',0,'',3,NULL,NULL),(426,'users-permissions','user','find',1,'',3,NULL,NULL),(427,'users-permissions','user','findone',1,'',3,NULL,NULL),(428,'users-permissions','user','count',1,'',3,NULL,NULL),(429,'users-permissions','user','destroy',0,'',3,NULL,NULL),(430,'users-permissions','user','me',1,'',3,NULL,NULL),(431,'users-permissions','user','destroyall',0,'',3,NULL,NULL),(432,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),(433,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),(434,'users-permissions','userspermissions','getpermissions',1,'',3,NULL,NULL),(435,'users-permissions','userspermissions','getpolicies',1,'',3,NULL,NULL),(436,'users-permissions','userspermissions','getrole',1,'',3,NULL,NULL),(437,'users-permissions','userspermissions','getroles',1,'',3,NULL,NULL),(438,'users-permissions','userspermissions','getroutes',1,'',3,NULL,NULL),(439,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),(440,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),(441,'users-permissions','userspermissions','getemailtemplate',1,'',3,NULL,NULL),(442,'users-permissions','userspermissions','searchusers',1,'',3,NULL,NULL),(443,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),(444,'users-permissions','userspermissions','getadvancedsettings',1,'',3,NULL,NULL),(445,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),(446,'users-permissions','userspermissions','getproviders',1,'',3,NULL,NULL),(447,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL),(453,'application','customers','count',1,'',4,NULL,NULL),(454,'application','customers','findone',1,'',4,NULL,NULL),(456,'application','customers','create',1,'',4,NULL,NULL),(457,'application','customers','find',1,'',4,NULL,NULL),(458,'application','customers','update',1,'',4,NULL,NULL),(459,'application','customers','delete',1,'',4,NULL,NULL),(466,'application','product-kind','findone',1,'',4,NULL,NULL),(467,'application','product-kind','find',1,'',4,NULL,NULL),(468,'application','product-kind','count',1,'',4,NULL,NULL),(469,'application','product-kind','update',1,'',4,NULL,NULL),(470,'application','product-kind','delete',1,'',4,NULL,NULL),(471,'application','product-kind','create',1,'',4,NULL,NULL),(472,'application','region','findone',1,'',4,NULL,NULL),(473,'application','region','find',1,'',4,NULL,NULL),(474,'application','region','count',1,'',4,NULL,NULL),(475,'application','region','update',1,'',4,NULL,NULL),(476,'application','region','create',1,'',4,NULL,NULL),(477,'application','region','delete',1,'',4,NULL,NULL),(478,'application','sales-person','find',1,'',4,NULL,NULL),(479,'application','sales-person','findone',1,'',4,NULL,NULL),(480,'application','sales-person','count',1,'',4,NULL,NULL),(481,'application','sales-person','create',0,'',4,NULL,NULL),(482,'application','store','find',1,'',4,NULL,NULL),(483,'application','store','findone',1,'',4,NULL,NULL),(484,'application','sales-person','delete',0,'',4,NULL,NULL),(485,'application','sales-person','update',1,'',4,NULL,NULL),(486,'application','store','count',1,'',4,NULL,NULL),(487,'application','store','create',1,'',4,NULL,NULL),(488,'application','store','update',1,'',4,NULL,NULL),(489,'application','store','delete',1,'',4,NULL,NULL),(490,'application','transaction','find',1,'',4,NULL,NULL),(491,'application','transaction','findone',1,'',4,NULL,NULL),(492,'application','transaction','count',1,'',4,NULL,NULL),(493,'application','transaction','create',0,'',4,NULL,NULL),(494,'application','transaction','update',1,'',4,NULL,NULL),(495,'application','transaction','delete',0,'',4,NULL,NULL),(496,'content-manager','collection-types','find',0,'',4,NULL,NULL),(497,'content-manager','collection-types','findone',0,'',4,NULL,NULL),(498,'content-manager','collection-types','create',0,'',4,NULL,NULL),(499,'content-manager','collection-types','update',0,'',4,NULL,NULL),(500,'content-manager','collection-types','delete',0,'',4,NULL,NULL),(501,'content-manager','collection-types','bulkdelete',0,'',4,NULL,NULL),(502,'content-manager','collection-types','unpublish',0,'',4,NULL,NULL),(503,'content-manager','collection-types','publish',0,'',4,NULL,NULL),(504,'content-manager','collection-types','previewmanyrelations',0,'',4,NULL,NULL),(505,'content-manager','components','findcomponents',0,'',4,NULL,NULL),(506,'content-manager','components','findcomponentconfiguration',0,'',4,NULL,NULL),(507,'content-manager','components','updatecomponentconfiguration',0,'',4,NULL,NULL),(508,'content-manager','content-types','findcontenttypes',0,'',4,NULL,NULL),(509,'content-manager','content-types','findcontenttypessettings',0,'',4,NULL,NULL),(510,'content-manager','content-types','findcontenttypeconfiguration',0,'',4,NULL,NULL),(511,'content-manager','content-types','updatecontenttypeconfiguration',0,'',4,NULL,NULL),(512,'content-manager','relations','find',0,'',4,NULL,NULL),(513,'content-manager','single-types','find',0,'',4,NULL,NULL),(514,'content-manager','single-types','createorupdate',0,'',4,NULL,NULL),(515,'content-manager','single-types','delete',0,'',4,NULL,NULL),(516,'content-manager','single-types','publish',0,'',4,NULL,NULL),(517,'content-manager','single-types','unpublish',0,'',4,NULL,NULL),(518,'content-manager','uid','generateuid',0,'',4,NULL,NULL),(519,'content-manager','uid','checkuidavailability',0,'',4,NULL,NULL),(520,'content-type-builder','builder','getreservednames',0,'',4,NULL,NULL),(521,'content-type-builder','componentcategories','editcategory',0,'',4,NULL,NULL),(522,'content-type-builder','componentcategories','deletecategory',0,'',4,NULL,NULL),(523,'content-type-builder','components','getcomponents',0,'',4,NULL,NULL),(524,'content-type-builder','components','updatecomponent',0,'',4,NULL,NULL),(525,'content-type-builder','components','createcomponent',0,'',4,NULL,NULL),(526,'content-type-builder','components','getcomponent',0,'',4,NULL,NULL),(527,'content-type-builder','components','deletecomponent',0,'',4,NULL,NULL),(528,'content-type-builder','connections','getconnections',0,'',4,NULL,NULL),(529,'content-type-builder','contenttypes','getcontenttypes',0,'',4,NULL,NULL),(530,'content-type-builder','contenttypes','getcontenttype',0,'',4,NULL,NULL),(531,'content-type-builder','contenttypes','createcontenttype',0,'',4,NULL,NULL),(532,'content-type-builder','contenttypes','updatecontenttype',0,'',4,NULL,NULL),(533,'content-type-builder','contenttypes','deletecontenttype',0,'',4,NULL,NULL),(534,'documentation','documentation','getinfos',0,'',4,NULL,NULL),(535,'documentation','documentation','index',0,'',4,NULL,NULL),(536,'documentation','documentation','loginview',0,'',4,NULL,NULL),(537,'documentation','documentation','login',0,'',4,NULL,NULL),(538,'documentation','documentation','regeneratedoc',0,'',4,NULL,NULL),(539,'documentation','documentation','deletedoc',0,'',4,NULL,NULL),(540,'email','email','send',0,'',4,NULL,NULL),(541,'documentation','documentation','updatesettings',0,'',4,NULL,NULL),(542,'email','email','test',0,'',4,NULL,NULL),(543,'email','email','getsettings',0,'',4,NULL,NULL),(544,'i18n','content-types','getnonlocalizedattributes',0,'',4,NULL,NULL),(545,'i18n','locales','createlocale',0,'',4,NULL,NULL),(546,'i18n','iso-locales','listisolocales',0,'',4,NULL,NULL),(547,'i18n','locales','listlocales',0,'',4,NULL,NULL),(548,'i18n','locales','updatelocale',0,'',4,NULL,NULL),(549,'i18n','locales','deletelocale',0,'',4,NULL,NULL),(550,'upload','upload','find',0,'',4,NULL,NULL),(551,'upload','upload','count',0,'',4,NULL,NULL),(552,'upload','upload','findone',0,'',4,NULL,NULL),(553,'upload','upload','destroy',0,'',4,NULL,NULL),(554,'upload','upload','updatesettings',0,'',4,NULL,NULL),(555,'upload','upload','search',0,'',4,NULL,NULL),(556,'upload','upload','upload',0,'',4,NULL,NULL),(557,'upload','upload','getsettings',0,'',4,NULL,NULL),(558,'users-permissions','auth','callback',0,'',4,NULL,NULL),(559,'users-permissions','auth','connect',0,'',4,NULL,NULL),(560,'users-permissions','auth','resetpassword',0,'',4,NULL,NULL),(561,'users-permissions','auth','forgotpassword',0,'',4,NULL,NULL),(562,'users-permissions','auth','register',0,'',4,NULL,NULL),(563,'users-permissions','auth','emailconfirmation',0,'',4,NULL,NULL),(564,'users-permissions','auth','sendemailconfirmation',0,'',4,NULL,NULL),(565,'users-permissions','user','create',1,'',4,NULL,NULL),(566,'users-permissions','user','update',1,'',4,NULL,NULL),(567,'users-permissions','user','find',1,'',4,NULL,NULL),(568,'users-permissions','user','findone',1,'',4,NULL,NULL),(569,'users-permissions','user','count',1,'',4,NULL,NULL),(570,'users-permissions','user','destroy',0,'',4,NULL,NULL),(571,'users-permissions','user','destroyall',0,'',4,NULL,NULL),(572,'users-permissions','user','me',1,'',4,NULL,NULL),(573,'users-permissions','userspermissions','createrole',0,'',4,NULL,NULL),(574,'users-permissions','userspermissions','deleterole',0,'',4,NULL,NULL),(575,'users-permissions','userspermissions','getpermissions',0,'',4,NULL,NULL),(576,'users-permissions','userspermissions','getpolicies',0,'',4,NULL,NULL),(577,'users-permissions','userspermissions','getrole',0,'',4,NULL,NULL),(578,'users-permissions','userspermissions','getroles',0,'',4,NULL,NULL),(579,'users-permissions','userspermissions','index',0,'',4,NULL,NULL),(580,'users-permissions','userspermissions','getroutes',0,'',4,NULL,NULL),(581,'users-permissions','userspermissions','searchusers',0,'',4,NULL,NULL),(582,'users-permissions','userspermissions','updaterole',0,'',4,NULL,NULL),(583,'users-permissions','userspermissions','getemailtemplate',0,'',4,NULL,NULL),(584,'users-permissions','userspermissions','updateemailtemplate',0,'',4,NULL,NULL),(585,'users-permissions','userspermissions','getproviders',0,'',4,NULL,NULL),(586,'users-permissions','userspermissions','getadvancedsettings',0,'',4,NULL,NULL),(587,'users-permissions','userspermissions','updateadvancedsettings',0,'',4,NULL,NULL),(588,'users-permissions','userspermissions','updateproviders',0,'',4,NULL,NULL),(589,'application','home-customer','create',1,'',2,NULL,NULL),(590,'application','home-customer','count',1,'',4,NULL,NULL),(591,'application','home-customer','create',1,'',4,NULL,NULL),(592,'application','home-customer','count',1,'',3,NULL,NULL),(593,'application','home-customer','create',1,'',3,NULL,NULL),(594,'application','home-customer','count',1,'',2,NULL,NULL),(595,'application','home-customer','count',0,'',1,NULL,NULL),(596,'application','home-customer','create',0,'',1,NULL,NULL),(597,'application','home-customer','delete',0,'',1,NULL,NULL),(598,'application','home-customer','delete',1,'',2,NULL,NULL),(599,'application','home-customer','delete',1,'',3,NULL,NULL),(600,'application','home-customer','delete',1,'',4,NULL,NULL),(601,'application','home-customer','find',0,'',1,NULL,NULL),(602,'application','home-customer','find',1,'',3,NULL,NULL),(603,'application','home-customer','find',1,'',2,NULL,NULL),(604,'application','home-customer','find',1,'',4,NULL,NULL),(605,'application','home-customer','findone',1,'',2,NULL,NULL),(606,'application','home-customer','findone',1,'',3,NULL,NULL),(607,'application','home-customer','findone',0,'',1,NULL,NULL),(608,'application','home-customer','findone',1,'',4,NULL,NULL),(609,'application','home-customer','update',0,'',1,NULL,NULL),(610,'application','home-customer','update',1,'',2,NULL,NULL),(611,'application','home-customer','update',1,'',3,NULL,NULL),(612,'application','home-customer','update',1,'',4,NULL,NULL),(613,'application','business-customer','count',0,'',1,NULL,NULL),(614,'application','business-customer','create',1,'',4,NULL,NULL),(615,'application','business-customer','delete',0,'',1,NULL,NULL),(616,'application','business-customer','create',1,'',3,NULL,NULL),(617,'application','business-customer','create',0,'',1,NULL,NULL),(618,'application','business-customer','create',1,'',2,NULL,NULL),(619,'application','business-customer','count',1,'',2,NULL,NULL),(620,'application','business-customer','count',1,'',3,NULL,NULL),(621,'application','business-customer','count',1,'',4,NULL,NULL),(622,'application','business-customer','delete',1,'',2,NULL,NULL),(623,'application','business-customer','delete',1,'',3,NULL,NULL),(624,'application','business-customer','find',1,'',2,NULL,NULL),(625,'application','business-customer','delete',1,'',4,NULL,NULL),(626,'application','business-customer','find',0,'',1,NULL,NULL),(627,'application','business-customer','find',1,'',3,NULL,NULL),(628,'application','business-customer','find',1,'',4,NULL,NULL),(629,'application','business-customer','findone',0,'',1,NULL,NULL),(630,'application','business-customer','findone',1,'',3,NULL,NULL),(631,'application','business-customer','findone',1,'',2,NULL,NULL),(632,'application','business-customer','findone',1,'',4,NULL,NULL),(633,'application','business-customer','update',0,'',1,NULL,NULL),(634,'application','business-customer','update',1,'',2,NULL,NULL),(635,'application','business-customer','update',1,'',3,NULL,NULL),(636,'application','business-customer','update',1,'',4,NULL,NULL),(637,'entity-relationship-chart','entity-relationship-chart','index',0,'',4,NULL,NULL),(638,'entity-relationship-chart','entity-relationship-chart','index',0,'',3,NULL,NULL),(639,'entity-relationship-chart','entity-relationship-chart','index',0,'',2,NULL,NULL),(640,'entity-relationship-chart','entity-relationship-chart','geterdata',0,'',2,NULL,NULL),(641,'entity-relationship-chart','entity-relationship-chart','geterdata',0,'',3,NULL,NULL),(642,'entity-relationship-chart','entity-relationship-chart','geterdata',0,'',1,NULL,NULL),(643,'entity-relationship-chart','entity-relationship-chart','index',0,'',1,NULL,NULL),(644,'entity-relationship-chart','entity-relationship-chart','geterdata',0,'',4,NULL,NULL),(649,'application','aggregation','saleprofit',0,'',1,NULL,NULL),(650,'application','aggregation','saleprofit',1,'',4,NULL,NULL),(651,'application','aggregation','saleprofit',0,'',2,NULL,NULL),(652,'application','aggregation','saleprofit',1,'',3,NULL,NULL),(709,'application','product','create',1,'',4,NULL,NULL),(710,'application','product','count',1,'',4,NULL,NULL),(711,'application','product','create',0,'',2,NULL,NULL),(712,'application','product','count',1,'',2,NULL,NULL),(713,'application','product','create',0,'',1,NULL,NULL),(714,'application','product','create',0,'',3,NULL,NULL),(715,'application','product','count',0,'',1,NULL,NULL),(716,'application','product','delete',0,'',1,NULL,NULL),(717,'application','product','count',1,'',3,NULL,NULL),(718,'application','product','delete',0,'',2,NULL,NULL),(719,'application','product','delete',0,'',3,NULL,NULL),(720,'application','product','delete',1,'',4,NULL,NULL),(721,'application','product','find',0,'',1,NULL,NULL),(722,'application','product','find',1,'',3,NULL,NULL),(723,'application','product','find',1,'',2,NULL,NULL),(724,'application','product','findone',0,'',1,NULL,NULL),(725,'application','product','find',1,'',4,NULL,NULL),(726,'application','product','findone',1,'',2,NULL,NULL),(727,'application','product','findone',1,'',3,NULL,NULL),(728,'application','product','findone',1,'',4,NULL,NULL),(729,'application','product','update',0,'',2,NULL,NULL),(730,'application','product','update',0,'',3,NULL,NULL),(731,'application','product','update',0,'',1,NULL,NULL),(732,'application','product','update',1,'',4,NULL,NULL),(733,'application','aggregation','topsalecategory',1,'',4,NULL,NULL),(734,'application','aggregation','topsalecategory',0,'',1,NULL,NULL),(735,'application','aggregation','topsalecategory',1,'',3,NULL,NULL),(736,'application','aggregation','topsalecategory',0,'',2,NULL,NULL),(737,'application','product-transaction','count',0,'',4,NULL,NULL),(738,'application','product-transaction','create',0,'',2,NULL,NULL),(739,'application','product-transaction','delete',0,'',1,NULL,NULL),(740,'application','product-transaction','create',0,'',4,NULL,NULL),(741,'application','product-transaction','count',0,'',1,NULL,NULL),(742,'application','product-transaction','create',0,'',1,NULL,NULL),(743,'application','product-transaction','count',0,'',3,NULL,NULL),(744,'application','product-transaction','create',0,'',3,NULL,NULL),(745,'application','product-transaction','count',0,'',2,NULL,NULL),(746,'application','product-transaction','delete',0,'',2,NULL,NULL),(747,'application','product-transaction','find',0,'',1,NULL,NULL),(748,'application','product-transaction','delete',0,'',4,NULL,NULL),(749,'application','product-transaction','delete',0,'',3,NULL,NULL),(750,'application','product-transaction','find',0,'',2,NULL,NULL),(751,'application','product-transaction','find',0,'',3,NULL,NULL),(752,'application','product-transaction','find',0,'',4,NULL,NULL),(753,'application','product-transaction','findone',0,'',1,NULL,NULL),(754,'application','product-transaction','findone',0,'',2,NULL,NULL),(755,'application','product-transaction','findone',0,'',4,NULL,NULL),(756,'application','product-transaction','findone',0,'',3,NULL,NULL),(757,'application','product-transaction','update',0,'',1,NULL,NULL),(758,'application','product-transaction','update',0,'',3,NULL,NULL),(759,'application','product-transaction','update',0,'',2,NULL,NULL),(760,'application','product-transaction','update',0,'',4,NULL,NULL),(761,'application','transaction','purchase',1,'',3,NULL,NULL),(762,'application','transaction','purchase',1,'',4,NULL,NULL),(763,'application','transaction','purchase',0,'',2,NULL,NULL),(764,'application','transaction','purchase',0,'',1,NULL,NULL),(765,'application','aggregation','topregions',0,'',1,NULL,NULL),(766,'application','aggregation','topregions',0,'',2,NULL,NULL),(767,'application','aggregation','topregions',1,'',4,NULL,NULL),(768,'application','aggregation','topregions',1,'',3,NULL,NULL),(769,'application','aggregation','topbusinesses',1,'',3,NULL,NULL),(770,'application','aggregation','topbusinesses',0,'',1,NULL,NULL),(771,'application','aggregation','topbusinesses',1,'',4,NULL,NULL),(772,'application','aggregation','topbusinesses',0,'',2,NULL,NULL),(773,'application','product-store','count',0,'',3,NULL,NULL),(774,'application','product-store','create',0,'',4,NULL,NULL),(775,'application','product-store','count',0,'',2,NULL,NULL),(776,'application','product-store','create',0,'',1,NULL,NULL),(777,'application','product-store','delete',0,'',1,NULL,NULL),(778,'application','product-store','create',0,'',3,NULL,NULL),(779,'application','product-store','count',0,'',1,NULL,NULL),(780,'application','product-store','create',0,'',2,NULL,NULL),(781,'application','product-store','count',0,'',4,NULL,NULL),(782,'application','product-store','delete',0,'',2,NULL,NULL),(783,'application','product-store','delete',0,'',3,NULL,NULL),(784,'application','product-store','find',0,'',1,NULL,NULL),(785,'application','product-store','delete',0,'',4,NULL,NULL),(786,'application','product-store','find',0,'',3,NULL,NULL),(787,'application','product-store','find',0,'',2,NULL,NULL),(788,'application','product-store','findone',0,'',2,NULL,NULL),(789,'application','product-store','findone',0,'',1,NULL,NULL),(790,'application','product-store','find',0,'',4,NULL,NULL),(791,'application','product-store','findone',0,'',3,NULL,NULL),(792,'application','product-store','findone',0,'',4,NULL,NULL),(793,'application','product-store','update',0,'',2,NULL,NULL),(794,'application','product-store','update',0,'',1,NULL,NULL),(795,'application','product-store','update',0,'',4,NULL,NULL),(796,'application','product-store','update',0,'',3,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
                                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                          `name` varchar(255) NOT NULL,
                                          `description` varchar(255) DEFAULT NULL,
                                          `type` varchar(255) DEFAULT NULL,
                                          `created_by` int(11) DEFAULT NULL,
                                          `updated_by` int(11) DEFAULT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL),(3,'customer','customer','customer',NULL,NULL),(4,'salesperson','salesperson','salesperson',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
                                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                          `username` varchar(255) NOT NULL,
                                          `email` varchar(255) NOT NULL,
                                          `provider` varchar(255) DEFAULT NULL,
                                          `password` varchar(255) DEFAULT NULL,
                                          `resetPasswordToken` varchar(255) DEFAULT NULL,
                                          `confirmationToken` varchar(255) DEFAULT NULL,
                                          `confirmed` tinyint(1) DEFAULT NULL,
                                          `blocked` tinyint(1) DEFAULT NULL,
                                          `role` int(11) DEFAULT NULL,
                                          `created_by` int(11) DEFAULT NULL,
                                          `updated_by` int(11) DEFAULT NULL,
                                          `created_at` timestamp NULL DEFAULT current_timestamp(),
                                          `updated_at` timestamp NULL DEFAULT current_timestamp(),
                                          `phone` varchar(255) DEFAULT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (23,'123','123@123.com','local','$2a$10$OyLhHpiQmsTOU2sjDBosV.EeDfK4GrjWJPSYmCN4341g/OOLeQSKO',NULL,NULL,1,NULL,4,NULL,NULL,'2021-11-22 21:01:23','2021-11-22 21:01:23',NULL),(24,'321','321@321.com','local','$2a$10$t3Uk/0C9yp/XvWzcDSLgXOkGytOKt1tFRBGCcomyGF0or6/UTsTiK',NULL,NULL,1,NULL,3,NULL,NULL,'2021-11-24 20:11:25','2021-11-24 20:11:25',NULL),(28,'456','456@456.com','local','$2a$10$4APWIkdYMMvZtxe4Qb603edWlgnaPMuEhbvBiavvtqoITFGKlxrVy',NULL,NULL,1,NULL,4,NULL,NULL,'2021-11-26 20:08:11','2021-11-26 20:08:11',NULL),(35,'678','678@678.com','local','$2a$10$02VszDVg1SEnFRZfVo13jOjVASIqEocZp4D/gQuSC1e2PQDKkKVHW',NULL,NULL,1,NULL,4,NULL,NULL,'2021-11-26 20:24:11','2021-11-26 20:24:11',NULL),(37,'567','567@567.com','local','$2a$10$AkW6tEjmbH7uWPE6d0rueeJlEmr6KwGOCt2jqb40M2UQ1N65I42iS',NULL,NULL,1,NULL,4,NULL,NULL,'2021-11-26 20:27:28','2021-11-27 15:36:36','4125551235'),(38,'654','654@654.com','local','$2a$10$y/FUHWBQIOgngYbIuNJAseABBViwfntcvkJ7GdAXaq/N5xm3WEv26',NULL,NULL,1,NULL,3,NULL,NULL,'2021-11-27 02:40:47','2021-11-27 15:37:48','4125551230'),(40,'789','789@789.com','local','$2a$10$y0Llc/VQuO0.6HltOWbkletnLGlp8xGaBo.j3n62IA3ea4t0izdx.',NULL,NULL,1,NULL,3,NULL,NULL,'2021-11-27 02:46:43','2021-11-27 02:46:43',NULL),(45,'1111','1111@1111.com','local','$2a$10$1QlIRjsXMhN49GI73pykt.nkmNip77c7ywX9qIuo24PGanF16BYnO',NULL,NULL,1,NULL,4,NULL,NULL,'2021-11-27 15:34:57','2021-11-27 15:34:57','4125551234');
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
                             `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                             `user` int(10) unsigned DEFAULT NULL,
                             `street` varchar(255) DEFAULT NULL,
                             `city` varchar(255) DEFAULT NULL,
                             `state` varchar(255) DEFAULT NULL,
                             `zipcode` int(11) DEFAULT NULL,
                             `kind` varchar(255) NOT NULL,
                             `business_customer` int(11) DEFAULT NULL,
                             `home_customer` int(11) DEFAULT NULL,
                             `created_by` int(11) DEFAULT NULL,
                             `updated_by` int(11) DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp(),
                             `updated_at` timestamp NULL DEFAULT current_timestamp(),
                             PRIMARY KEY (`id`),
                             UNIQUE KEY (user),
                             FOREIGN KEY (user) REFERENCES `users-permissions_user`(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (7,24,'123 Centre Ave APT 101','Apt 101','PA',15213,'home',NULL,2,NULL,NULL,'2021-11-24 20:11:26','2021-11-27 02:31:02'),(11,38,'1-2039 lads ST','NY',NULL,15151,'business',3,NULL,NULL,NULL,'2021-11-27 02:40:47','2021-11-27 02:40:47'),(13,40,'1230 Ast Ave','LA',NULL,15151,'home',NULL,4,NULL,NULL,'2021-11-27 02:46:43','2021-11-27 02:46:44');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_customers`
--

DROP TABLE IF EXISTS `home_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_customers` (
                                  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                  `marriage` varchar(255) DEFAULT NULL,
                                  `gender` varchar(255) DEFAULT NULL,
                                  `age` int(11) DEFAULT NULL,
                                  `income` int(11) DEFAULT NULL,
                                  `customer` int(10) unsigned DEFAULT NULL,
                                  `created_by` int(11) DEFAULT NULL,
                                  `updated_by` int(11) DEFAULT NULL,
                                  `created_at` timestamp NULL DEFAULT current_timestamp(),
                                  `updated_at` timestamp NULL DEFAULT current_timestamp(),
                                  PRIMARY KEY (`id`),
                                  FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_customers`
--

LOCK TABLES `home_customers` WRITE;
/*!40000 ALTER TABLE `home_customers` DISABLE KEYS */;
INSERT INTO `home_customers` VALUES (2,'Unmarried','Female',24,50000,7,NULL,NULL,'2021-11-24 20:11:26','2021-11-24 20:11:26'),(4,'Prefer_not_to_say','Prefer_not_to_say',NULL,1233,13,NULL,NULL,'2021-11-27 02:46:43','2021-11-27 02:46:44');
/*!40000 ALTER TABLE `home_customers` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `business_customers`
--

DROP TABLE IF EXISTS `business_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `customer` int(10) unsigned DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_customers`
--

LOCK TABLES `business_customers` WRITE;
/*!40000 ALTER TABLE `business_customers` DISABLE KEYS */;
INSERT INTO `business_customers` VALUES (1,'adsf',12344,NULL,NULL,NULL,'2021-11-22 20:50:30','2021-11-22 21:05:03'),(3,'Retails',123123,11,NULL,NULL,'2021-11-27 02:40:47','2021-11-27 02:40:47');
/*!40000 ALTER TABLE `business_customers` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `sales_people`
--

DROP TABLE IF EXISTS `sales_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_people` (
                                `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                `job_title` varchar(255) DEFAULT NULL,
                                `salary` double DEFAULT NULL,
                                `store` int(10) unsigned DEFAULT NULL,
                                `created_by` int(11) DEFAULT NULL,
                                `updated_by` int(11) DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT current_timestamp(),
                                `updated_at` timestamp NULL DEFAULT current_timestamp(),
                                `user` int(10) unsigned DEFAULT NULL,
                                `street` varchar(255) DEFAULT NULL,
                                `city` varchar(255) DEFAULT NULL,
                                `state` varchar(255) DEFAULT NULL,
                                `zipcode` int(11) DEFAULT NULL,
                                PRIMARY KEY (`id`),
                                UNIQUE KEY (user),
                                FOREIGN KEY (user) REFERENCES `users-permissions_user`(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_people`
--

LOCK TABLES `sales_people` WRITE;
/*!40000 ALTER TABLE `sales_people` DISABLE KEYS */;
INSERT INTO `sales_people` VALUES (2,'Sale Lead',123312,16,NULL,NULL,'2021-11-22 21:01:23','2021-11-26 20:34:06',23,'124312','123','PA',1234),(3,'Junior',30000,16,NULL,NULL,'2021-11-26 20:08:11','2021-11-26 20:33:35',28,'1-2039 lads ST','NY',NULL,15151),(4,'Junior',12332,17,NULL,NULL,'2021-11-26 20:24:11','2021-11-26 20:24:11',35,'1234 sadf aa',NULL,NULL,12332),(5,'Senior',321123,16,NULL,NULL,'2021-11-26 20:27:28','2021-11-27 15:36:36',37,'1234 sadf aa','asdf',NULL,1233),(6,NULL,NULL,16,NULL,NULL,'2021-11-27 15:34:57','2021-11-27 15:34:57',45,NULL,NULL,NULL,13512);
/*!40000 ALTER TABLE `sales_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
                           `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                           `region_name` varchar(255) DEFAULT NULL,
                           `region_manager` int(11) DEFAULT NULL,
                           `created_by` int(11) DEFAULT NULL,
                           `updated_by` int(11) DEFAULT NULL,
                           `created_at` timestamp NULL DEFAULT current_timestamp(),
                           `updated_at` timestamp NULL DEFAULT current_timestamp(),
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Region1',2,NULL,NULL,'2021-11-24 15:15:46','2021-11-24 15:15:47'),(2,'Region2',4,NULL,NULL,'2021-11-24 15:33:37','2021-11-27 19:06:55');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                          `manager` int(10) unsigned DEFAULT NULL,
                          `region` int(10) unsigned DEFAULT NULL,
                          `created_by` int(11) DEFAULT NULL,
                          `updated_by` int(11) DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT current_timestamp(),
                          `updated_at` timestamp NULL DEFAULT current_timestamp(),
                          `name` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          FOREIGN KEY (region) REFERENCES regions(id) ON DELETE RESTRICT,
                          FOREIGN KEY (manager) REFERENCES sales_people(id) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
ALTER TABLE `sales_people`
    ADD FOREIGN KEY (`store`) REFERENCES `stores`(id) ON DELETE RESTRICT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (16,2,1,NULL,NULL,'2021-11-21 22:52:29','2021-11-26 19:35:36','Store1'),(17,4,2,NULL,NULL,'2021-11-21 22:52:29','2021-11-27 19:07:03','Store2');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `product_kinds`
--

DROP TABLE IF EXISTS `product_kinds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_kinds` (
                                 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) NOT NULL,
                                 `created_by` int(11) DEFAULT NULL,
                                 `updated_by` int(11) DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT current_timestamp(),
                                 `updated_at` timestamp NULL DEFAULT current_timestamp(),
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_kinds`
--

LOCK TABLES `product_kinds` WRITE;
/*!40000 ALTER TABLE `product_kinds` DISABLE KEYS */;
INSERT INTO `product_kinds` VALUES (1,'Book',1,1,'2021-11-22 03:18:43','2021-11-22 03:38:14'),(2,'Cars',1,1,'2021-11-22 03:18:55','2021-11-22 16:37:36'),(3,'Phones',1,1,'2021-11-22 03:19:00','2021-11-22 03:38:21'),(4,'Toys',1,1,'2021-11-22 03:19:06','2021-11-22 03:38:27'),(5,'Furnitures',1,1,'2021-11-22 03:19:12','2021-11-22 03:38:18'),(6,'Bags',NULL,NULL,'2021-11-22 04:21:16','2021-11-22 04:21:16'),(8,'Shoes',NULL,NULL,'2021-11-22 04:21:33','2021-11-22 04:21:33'),(9,'Clothings',NULL,NULL,'2021-11-22 04:21:39','2021-11-22 04:21:39'),(10,'Cups',NULL,NULL,'2021-11-22 04:21:47','2021-11-22 04:21:47'),(11,'Watches',NULL,NULL,'2021-11-22 04:21:52','2021-11-22 04:21:52'),(12,'Earpods',NULL,NULL,'2021-11-22 16:38:49','2021-11-22 16:38:49');
/*!40000 ALTER TABLE `product_kinds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
                            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) NOT NULL,
                            `price` decimal(10,2) NOT NULL,
                            `published_at` datetime DEFAULT NULL,
                            `created_by` int(11) DEFAULT NULL,
                            `updated_by` int(11) DEFAULT NULL,
                            `created_at` timestamp NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NULL DEFAULT current_timestamp(),
                            `description` longtext DEFAULT NULL,
                            `product_type` int(10) unsigned DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE (name),
                            FOREIGN KEY (product_type) REFERENCES product_kinds(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_name_index ON products(name);
CREATE INDEX prod_price_index ON products(price);
CREATE INDEX prod_type_index ON products(product_type);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'iPhone',999.00,'2021-11-25 19:56:41',NULL,NULL,'2021-11-25 19:56:41','2021-11-27 19:04:05','An iPhone',3),(2,'Dress',30.00,'2021-11-25 19:57:03',NULL,NULL,'2021-11-25 19:57:03','2021-11-27 19:04:26','A dress',9),(3,'Sofa',321.00,'2021-11-27 04:15:10',NULL,NULL,'2021-11-27 04:15:10','2021-11-27 04:15:10','A Sofa',5),(4,'Mug',5.00,'2021-11-27 04:21:26',NULL,NULL,'2021-11-27 04:21:26','2021-11-27 04:29:37','A mug',10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stores`
--

DROP TABLE IF EXISTS `product_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(10) unsigned DEFAULT NULL,
  `store` int(10) unsigned DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE (product, store),
  FOREIGN KEY (product) REFERENCES products(id) ON DELETE CASCADE ,
  FOREIGN KEY (store) REFERENCES stores(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_store ON product_stores(product, store);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stores`
--

LOCK TABLES `product_stores` WRITE;
/*!40000 ALTER TABLE `product_stores` DISABLE KEYS */;
INSERT INTO `product_stores` VALUES (4,4,16,1012,'2021-11-27 04:29:37',NULL,NULL,'2021-11-27 04:29:37','2021-11-27 04:29:37'),(5,1,16,123,'2021-11-27 19:04:05',NULL,NULL,'2021-11-27 19:04:05','2021-11-27 19:04:05'),(6,2,17,334,'2021-11-27 19:04:26',NULL,NULL,'2021-11-27 19:04:26','2021-11-27 19:04:27');
/*!40000 ALTER TABLE `product_stores` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
                                `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                `sale_date` date DEFAULT NULL,
                                `salesperson` int(10) unsigned DEFAULT NULL,
                                `customer` int(10) unsigned DEFAULT NULL,
                                `created_by` int(11) DEFAULT NULL,
                                `updated_by` int(11) DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT current_timestamp(),
                                `updated_at` timestamp NULL DEFAULT current_timestamp(),
                                PRIMARY KEY (`id`),
                                FOREIGN KEY (salesperson) REFERENCES sales_people(id) ON DELETE SET NULL,
                                FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;
CREATE INDEX customer_trans ON transactions(customer);
CREATE INDEX sales_trans ON transactions(salesperson);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (60,'2021-11-26',2,7,NULL,NULL,'2021-11-26 15:37:00','2021-11-26 15:37:00'),(64,'2021-11-26',2,7,NULL,NULL,'2021-11-26 16:21:56','2021-11-26 16:21:56'),(66,'2021-11-27',4,NULL,NULL,NULL,'2021-11-27 01:36:49','2021-11-27 02:34:37'),(76,'2021-11-27',3,11,NULL,NULL,'2021-11-27 19:03:10','2021-11-27 19:03:10'),(77,'2021-11-27',3,11,NULL,NULL,'2021-11-27 19:03:16','2021-11-27 19:03:16');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_transactions`
--

DROP TABLE IF EXISTS `product_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction` int(10) unsigned DEFAULT NULL,
  `product` int(10) unsigned DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  FOREIGN KEY (product) REFERENCES products(id) ON DELETE SET NULL,
  FOREIGN KEY (transaction) REFERENCES transactions(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_trans ON product_transactions(`transaction`, product);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_transactions`
--

LOCK TABLES `product_transactions` WRITE;
/*!40000 ALTER TABLE `product_transactions` DISABLE KEYS */;
INSERT INTO `product_transactions` VALUES (28,60,1,999.00,3,NULL,NULL,'2021-11-26 15:37:00','2021-11-26 15:37:00'),(29,60,2,30.00,2,NULL,NULL,'2021-11-26 15:37:00','2021-11-26 15:37:00'),(34,64,1,999.00,3,NULL,NULL,'2021-11-26 16:21:56','2021-11-26 16:21:56'),(35,64,2,30.00,3,NULL,NULL,'2021-11-26 16:21:56','2021-11-26 16:21:56'),(36,66,1,999.00,4,NULL,NULL,'2021-11-27 01:36:49','2021-11-27 01:36:49'),(37,66,2,30.00,4,NULL,NULL,'2021-11-27 01:36:49','2021-11-27 01:36:49'),(38,76,4,5.00,6,NULL,NULL,'2021-11-27 19:03:10','2021-11-27 19:03:10'),(39,77,4,5.00,6,NULL,NULL,'2021-11-27 19:03:16','2021-11-27 19:03:16');
/*!40000 ALTER TABLE `product_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'123','123',NULL,'123@123.com','$2a$10$nEYcK3j/37w2jEp88MZxQunLdNuakJWQXK7CtkQgYNdXV68cOzigS',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7950 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (2,'plugins::content-manager.explorer.create','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(5,'plugins::content-manager.explorer.create','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(6,'plugins::content-manager.explorer.create','application::customers.customers','{\"fields\":[]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(7,'plugins::content-manager.explorer.create','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(8,'plugins::content-manager.explorer.create','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[]',2,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(11,'plugins::content-manager.explorer.read','application::customers.customers','{\"fields\":[]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(14,'plugins::content-manager.explorer.read','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(16,'plugins::content-manager.explorer.read','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(19,'plugins::content-manager.explorer.read','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(20,'plugins::content-manager.explorer.read','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[]',2,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(21,'plugins::content-manager.explorer.update','application::customers.customers','{\"fields\":[]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(24,'plugins::content-manager.explorer.update','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(25,'plugins::content-manager.explorer.update','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[]',2,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(26,'plugins::content-manager.explorer.update','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[]',2,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(27,'plugins::content-manager.explorer.update','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[]',2,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(29,'plugins::content-manager.explorer.delete','application::customers.customers','{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(33,'plugins::content-manager.explorer.delete','application::region.region','{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(34,'plugins::content-manager.explorer.delete','application::sales-person.sales-person','{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(36,'plugins::content-manager.explorer.delete','application::store.store','{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(37,'plugins::content-manager.explorer.delete','application::transaction.transaction','{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(44,'plugins::upload.read',NULL,'{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(45,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(46,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(47,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(48,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(50,'plugins::content-manager.explorer.create','application::customers.customers','{\"fields\":[]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(55,'plugins::content-manager.explorer.create','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(56,'plugins::content-manager.explorer.create','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(57,'plugins::content-manager.explorer.create','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(58,'plugins::content-manager.explorer.create','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(60,'plugins::content-manager.explorer.read','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(62,'plugins::content-manager.explorer.read','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(64,'plugins::content-manager.explorer.read','application::customers.customers','{\"fields\":[]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(66,'plugins::content-manager.explorer.read','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(68,'plugins::content-manager.explorer.read','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(69,'plugins::content-manager.explorer.update','application::customers.customers','{\"fields\":[]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:18:02'),(70,'plugins::content-manager.explorer.update','application::region.region','{\"fields\":[\"region_name\",\"region_manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-24 15:00:56'),(71,'plugins::content-manager.explorer.update','application::store.store','{\"fields\":[\"store_saleperson\",\"manager\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-26 19:34:24'),(74,'plugins::content-manager.explorer.update','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"transactions\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-25 20:35:07'),(77,'plugins::content-manager.explorer.delete','application::customers.customers','{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(78,'plugins::content-manager.explorer.update','application::transaction.transaction','{\"fields\":[\"sale_date\"]}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-22 22:11:39'),(80,'plugins::content-manager.explorer.delete','application::region.region','{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(81,'plugins::content-manager.explorer.delete','application::store.store','{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(83,'plugins::content-manager.explorer.delete','application::transaction.transaction','{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(84,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(85,'plugins::content-manager.explorer.delete','application::sales-person.sales-person','{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(86,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(87,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(88,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(89,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(137,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(138,'plugins::upload.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(139,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(140,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(141,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(142,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(143,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(144,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(145,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(146,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(147,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(148,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(149,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(150,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(151,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(152,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(153,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(154,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(155,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(156,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(157,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(158,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(159,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(160,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(161,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(162,'admin::marketplace.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(163,'admin::webhooks.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(164,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(165,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(166,'admin::webhooks.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(167,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(168,'admin::webhooks.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(169,'admin::users.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(170,'admin::users.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(171,'admin::users.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(172,'admin::users.delete',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(173,'admin::roles.read',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(174,'admin::roles.update',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(175,'admin::roles.create',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(176,'admin::roles.delete',NULL,'{}','[]',1,'2021-11-21 03:42:32','2021-11-21 03:42:32'),(292,'plugins::documentation.read',NULL,'{}','[]',1,'2021-11-21 20:52:48','2021-11-21 20:52:48'),(295,'plugins::documentation.settings.regenerate',NULL,'{}','[]',1,'2021-11-21 20:52:48','2021-11-21 20:52:48'),(296,'plugins::documentation.settings.update',NULL,'{}','[]',1,'2021-11-21 20:52:48','2021-11-21 20:52:48'),(1395,'plugins::content-manager.explorer.create','application::home-customer.home-customer','{\"fields\":[\"marriage\",\"gender\",\"age\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:10','2021-11-22 19:32:10'),(1396,'plugins::content-manager.explorer.read','application::home-customer.home-customer','{\"fields\":[\"marriage\",\"gender\",\"age\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:10','2021-11-22 19:32:10'),(1403,'plugins::content-manager.explorer.update','application::home-customer.home-customer','{\"fields\":[\"marriage\",\"gender\",\"age\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:10','2021-11-22 19:32:10'),(1411,'plugins::content-manager.explorer.read','application::business-customer.business-customer','{\"fields\":[\"category\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:42','2021-11-22 19:32:42'),(1413,'plugins::content-manager.explorer.update','application::business-customer.business-customer','{\"fields\":[\"category\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:42','2021-11-22 19:32:42'),(1416,'plugins::content-manager.explorer.create','application::business-customer.business-customer','{\"fields\":[\"category\",\"income\",\"customer\"]}','[]',1,'2021-11-22 19:32:42','2021-11-22 19:32:42'),(2114,'plugins::content-manager.explorer.update','application::region.region','{\"fields\":[\"region_name\",\"region_manager\",\"stores\"]}','[]',1,'2021-11-24 15:41:02','2021-11-24 15:41:02'),(2116,'plugins::content-manager.explorer.read','application::region.region','{\"fields\":[\"region_name\",\"region_manager\",\"stores\"]}','[]',1,'2021-11-24 15:41:02','2021-11-24 15:41:02'),(2119,'plugins::content-manager.explorer.create','application::region.region','{\"fields\":[\"region_name\",\"region_manager\",\"stores\"]}','[]',1,'2021-11-24 15:41:02','2021-11-24 15:41:02'),(2720,'plugins::content-manager.explorer.read','application::product-kind.product-kind','{\"fields\":[\"name\",\"products\"]}','[]',1,'2021-11-25 19:55:10','2021-11-25 19:55:10'),(2721,'plugins::content-manager.explorer.create','application::product-kind.product-kind','{\"fields\":[\"name\",\"products\"]}','[]',1,'2021-11-25 19:55:10','2021-11-25 19:55:10'),(2728,'plugins::content-manager.explorer.update','application::product-kind.product-kind','{\"fields\":[\"name\",\"products\"]}','[]',1,'2021-11-25 19:55:10','2021-11-25 19:55:10'),(2919,'plugins::content-manager.explorer.create','application::product-transaction.product-transaction','{\"fields\":[\"transaction\",\"product\",\"price\",\"amount\"]}','[]',1,'2021-11-25 20:16:19','2021-11-25 20:16:19'),(2920,'plugins::content-manager.explorer.read','application::product-transaction.product-transaction','{\"fields\":[\"transaction\",\"product\",\"price\",\"amount\"]}','[]',1,'2021-11-25 20:16:19','2021-11-25 20:16:19'),(2921,'plugins::content-manager.explorer.update','application::product-transaction.product-transaction','{\"fields\":[\"transaction\",\"product\",\"price\",\"amount\"]}','[]',1,'2021-11-25 20:16:19','2021-11-25 20:16:19'),(2973,'plugins::content-manager.explorer.read','application::customers.customers','{\"fields\":[\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"kind\",\"business_customer\",\"home_customer\",\"transactions\"]}','[]',1,'2021-11-25 20:18:02','2021-11-25 20:18:02'),(2974,'plugins::content-manager.explorer.update','application::customers.customers','{\"fields\":[\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"kind\",\"business_customer\",\"home_customer\",\"transactions\"]}','[]',1,'2021-11-25 20:18:02','2021-11-25 20:18:02'),(2975,'plugins::content-manager.explorer.create','application::customers.customers','{\"fields\":[\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"kind\",\"business_customer\",\"home_customer\",\"transactions\"]}','[]',1,'2021-11-25 20:18:02','2021-11-25 20:18:02'),(3009,'plugins::content-manager.explorer.read','application::transaction.transaction','{\"fields\":[\"sale_date\",\"salesperson\",\"customer\",\"product_transactions\"]}','[]',1,'2021-11-25 20:21:03','2021-11-25 20:21:03'),(3010,'plugins::content-manager.explorer.update','application::transaction.transaction','{\"fields\":[\"sale_date\",\"salesperson\",\"customer\",\"product_transactions\"]}','[]',1,'2021-11-25 20:21:03','2021-11-25 20:21:03'),(3011,'plugins::content-manager.explorer.create','application::transaction.transaction','{\"fields\":[\"sale_date\",\"salesperson\",\"customer\",\"product_transactions\"]}','[]',1,'2021-11-25 20:21:03','2021-11-25 20:21:03'),(3076,'plugins::content-manager.explorer.create','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"transactions\"]}','[]',1,'2021-11-25 20:35:06','2021-11-25 20:35:06'),(3077,'plugins::content-manager.explorer.read','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"transactions\"]}','[]',1,'2021-11-25 20:35:06','2021-11-25 20:35:06'),(3079,'plugins::content-manager.explorer.update','application::sales-person.sales-person','{\"fields\":[\"job_title\",\"salary\",\"store\",\"user\",\"street\",\"city\",\"state\",\"zipcode\",\"transactions\"]}','[]',1,'2021-11-25 20:35:06','2021-11-25 20:35:06'),(4998,'plugins::content-manager.explorer.delete','application::home-customer.home-customer','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(4999,'plugins::content-manager.explorer.delete','application::sales-person.sales-person','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5000,'plugins::content-manager.explorer.delete','application::product.product','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5001,'plugins::content-manager.explorer.delete','application::product-kind.product-kind','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5002,'plugins::content-manager.explorer.delete','application::transaction.transaction','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5003,'plugins::content-manager.explorer.delete','application::store.store','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5004,'plugins::content-manager.explorer.delete','application::customers.customers','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5005,'plugins::content-manager.explorer.delete','application::product-transaction.product-transaction','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5006,'plugins::content-manager.explorer.delete','application::region.region','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5007,'plugins::content-manager.explorer.delete','application::business-customer.business-customer','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5008,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(5010,'plugins::content-manager.explorer.publish','application::product.product','{}','[]',NULL,'2021-11-26 01:21:21','2021-11-26 01:21:45'),(6916,'plugins::content-manager.explorer.update','application::product-store.product-store','{\"fields\":[\"product\",\"store\",\"amount\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6917,'plugins::content-manager.explorer.create','application::product-store.product-store','{\"fields\":[\"product\",\"store\",\"amount\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6918,'plugins::content-manager.explorer.create','application::product.product','{\"fields\":[\"name\",\"price\",\"description\",\"product_type\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6920,'plugins::content-manager.explorer.create','application::store.store','{\"fields\":[\"store_saleperson\",\"region\",\"manager\",\"name\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6921,'plugins::content-manager.explorer.read','application::product.product','{\"fields\":[\"name\",\"price\",\"description\",\"product_type\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6922,'plugins::content-manager.explorer.read','application::product-store.product-store','{\"fields\":[\"product\",\"store\",\"amount\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6923,'plugins::content-manager.explorer.read','application::store.store','{\"fields\":[\"store_saleperson\",\"region\",\"manager\",\"name\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6924,'plugins::content-manager.explorer.update','application::product.product','{\"fields\":[\"name\",\"price\",\"description\",\"product_type\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(6925,'plugins::content-manager.explorer.update','application::store.store','{\"fields\":[\"store_saleperson\",\"region\",\"manager\",\"name\",\"product_stores\"]}','[]',1,'2021-11-27 03:47:02','2021-11-27 03:47:02'),(7261,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\"]}','[]',1,'2021-11-27 15:10:55','2021-11-27 15:10:55'),(7262,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\"]}','[]',1,'2021-11-27 15:10:55','2021-11-27 15:10:55'),(7269,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\"]}','[]',1,'2021-11-27 15:10:55','2021-11-27 15:10:55'),(7936,'plugins::content-manager.explorer.delete','application::product-store.product-store','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7937,'plugins::content-manager.explorer.delete','application::sales-person.sales-person','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7938,'plugins::content-manager.explorer.delete','application::region.region','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7939,'plugins::content-manager.explorer.delete','application::customers.customers','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7940,'plugins::content-manager.explorer.delete','application::product-kind.product-kind','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7941,'plugins::content-manager.explorer.delete','application::home-customer.home-customer','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7942,'plugins::content-manager.explorer.delete','application::product.product','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7943,'plugins::content-manager.explorer.delete','application::business-customer.business-customer','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7944,'plugins::content-manager.explorer.delete','application::store.store','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7945,'plugins::content-manager.explorer.delete','application::product-transaction.product-transaction','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7946,'plugins::content-manager.explorer.publish','application::product-store.product-store','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7947,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7948,'plugins::content-manager.explorer.delete','application::transaction.transaction','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52'),(7949,'plugins::content-manager.explorer.publish','application::product.product','{}','[]',1,'2021-11-27 19:02:52','2021-11-27 19:02:52');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-11-21 03:42:31','2021-11-21 03:42:31'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-11-21 03:42:31','2021-11-21 03:42:31'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-11-21 03:42:31','2021-11-21 03:42:31');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'swift.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_swift.png\",\"hash\":\"thumbnail_swift_143933a3ed\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":20.6,\"path\":null,\"url\":\"/uploads/thumbnail_swift_143933a3ed.png\"}}','swift_143933a3ed','.png','image/.png',10.96,'/uploads/swift_143933a3ed.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:30','2021-11-21 03:42:30'),(6,'laravel.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_laravel.png\",\"hash\":\"thumbnail_laravel_2f605a302d\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":13.93,\"path\":null,\"url\":\"/uploads/thumbnail_laravel_2f605a302d.png\"}}','laravel_2f605a302d','.png','image/.png',7.85,'/uploads/laravel_2f605a302d.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(7,'google-cloud.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_google-cloud.png\",\"hash\":\"thumbnail_google_cloud_1102a85a5b\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":12.52,\"path\":null,\"url\":\"/uploads/thumbnail_google_cloud_1102a85a5b.png\"}}','google_cloud_1102a85a5b','.png','image/.png',9.11,'/uploads/google_cloud_1102a85a5b.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(8,'c-plus-plus.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_c-plus-plus.png\",\"hash\":\"thumbnail_c_plus_plus_df19541a34\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":14.7,\"path\":null,\"url\":\"/uploads/thumbnail_c_plus_plus_df19541a34.png\"}}','c_plus_plus_df19541a34','.png','image/.png',5.63,'/uploads/c_plus_plus_df19541a34.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(9,'kotlin.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_kotlin.png\",\"hash\":\"thumbnail_kotlin_ec2620844c\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":12.64,\"path\":null,\"url\":\"/uploads/thumbnail_kotlin_ec2620844c.png\"}}','kotlin_ec2620844c','.png','image/.png',7.98,'/uploads/kotlin_ec2620844c.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(10,'graph-ql.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_graph-ql.png\",\"hash\":\"thumbnail_graph_ql_3d1ac347c5\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":14.84,\"path\":null,\"url\":\"/uploads/thumbnail_graph_ql_3d1ac347c5.png\"}}','graph_ql_3d1ac347c5','.png','image/.png',8.96,'/uploads/graph_ql_3d1ac347c5.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(11,'react.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_react.png\",\"hash\":\"thumbnail_react_e981f3e31e\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":17.65,\"path\":null,\"url\":\"/uploads/thumbnail_react_e981f3e31e.png\"}}','react_e981f3e31e','.png','image/.png',13.06,'/uploads/react_e981f3e31e.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(12,'php.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_php.png\",\"hash\":\"thumbnail_php_9115dfad38\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.32,\"path\":null,\"url\":\"/uploads/thumbnail_php_9115dfad38.png\"}}','php_9115dfad38','.png','image/.png',17.49,'/uploads/php_9115dfad38.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(13,'postgre-sql.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_postgre-sql.png\",\"hash\":\"thumbnail_postgre_sql_74f03b6b4e\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":21.05,\"path\":null,\"url\":\"/uploads/thumbnail_postgre_sql_74f03b6b4e.png\"}}','postgre_sql_74f03b6b4e','.png','image/.png',12.93,'/uploads/postgre_sql_74f03b6b4e.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(14,'golang.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_golang.png\",\"hash\":\"thumbnail_golang_8509a3093b\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":17.49,\"path\":null,\"url\":\"/uploads/thumbnail_golang_8509a3093b.png\"}}','golang_8509a3093b','.png','image/.png',14.20,'/uploads/golang_8509a3093b.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(15,'ruby-on-rails.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_ruby-on-rails.png\",\"hash\":\"thumbnail_ruby_on_rails_30a9d09061\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":8.82,\"path\":null,\"url\":\"/uploads/thumbnail_ruby_on_rails_30a9d09061.png\"}}','ruby_on_rails_30a9d09061','.png','image/.png',6.67,'/uploads/ruby_on_rails_30a9d09061.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(16,'ruby-1.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_ruby-1.png\",\"hash\":\"thumbnail_ruby_1_3cac867caf\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":31,\"path\":null,\"url\":\"/uploads/thumbnail_ruby_1_3cac867caf.png\"}}','ruby_1_3cac867caf','.png','image/.png',17.56,'/uploads/ruby_1_3cac867caf.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(17,'python.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_python.png\",\"hash\":\"thumbnail_python_7e0116fc79\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":14.59,\"path\":null,\"url\":\"/uploads/thumbnail_python_7e0116fc79.png\"}}','python_7e0116fc79','.png','image/.png',7.17,'/uploads/python_7e0116fc79.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(18,'java.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_java.png\",\"hash\":\"thumbnail_java_fcde607b17\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":16.5,\"path\":null,\"url\":\"/uploads/thumbnail_java_fcde607b17.png\"}}','java_fcde607b17','.png','image/.png',8.19,'/uploads/java_fcde607b17.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(19,'npm.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_npm.png\",\"hash\":\"thumbnail_npm_bc20989a8b\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":5.58,\"path\":null,\"url\":\"/uploads/thumbnail_npm_bc20989a8b.png\"},\"small\":{\"name\":\"small_npm.png\",\"hash\":\"small_npm_bc20989a8b\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":32.14,\"path\":null,\"url\":\"/uploads/small_npm_bc20989a8b.png\"}}','npm_bc20989a8b','.png','image/.png',30.66,'/uploads/npm_bc20989a8b.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(20,'next-js.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_next-js.png\",\"hash\":\"thumbnail_next_js_d43c3d2dfe\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":9.26,\"path\":null,\"url\":\"/uploads/thumbnail_next_js_d43c3d2dfe.png\"},\"small\":{\"name\":\"small_next-js.png\",\"hash\":\"small_next_js_d43c3d2dfe\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":46.1,\"path\":null,\"url\":\"/uploads/small_next_js_d43c3d2dfe.png\"}}','next_js_d43c3d2dfe','.png','image/.png',38.64,'/uploads/next_js_d43c3d2dfe.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(21,'docker.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_docker.png\",\"hash\":\"thumbnail_docker_a62d3edb07\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":27.2,\"path\":null,\"url\":\"/uploads/thumbnail_docker_a62d3edb07.png\"},\"small\":{\"name\":\"small_docker.png\",\"hash\":\"small_docker_a62d3edb07\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":182.48,\"path\":null,\"url\":\"/uploads/small_docker_a62d3edb07.png\"}}','docker_a62d3edb07','.png','image/.png',185.87,'/uploads/docker_a62d3edb07.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(22,'gatsby.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_gatsby.png\",\"hash\":\"thumbnail_gatsby_cd313b34e2\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.07,\"path\":null,\"url\":\"/uploads/thumbnail_gatsby_cd313b34e2.png\"},\"small\":{\"name\":\"small_gatsby.png\",\"hash\":\"small_gatsby_cd313b34e2\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":161.12,\"path\":null,\"url\":\"/uploads/small_gatsby_cd313b34e2.png\"}}','gatsby_cd313b34e2','.png','image/.png',152.91,'/uploads/gatsby_cd313b34e2.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(23,'nuxt-js.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_nuxt-js.png\",\"hash\":\"thumbnail_nuxt_js_ce1895bbe7\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":16.68,\"path\":null,\"url\":\"/uploads/thumbnail_nuxt_js_ce1895bbe7.png\"},\"small\":{\"name\":\"small_nuxt-js.png\",\"hash\":\"small_nuxt_js_ce1895bbe7\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":117.55,\"path\":null,\"url\":\"/uploads/small_nuxt_js_ce1895bbe7.png\"}}','nuxt_js_ce1895bbe7','.png','image/.png',118.61,'/uploads/nuxt_js_ce1895bbe7.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(24,'kubernetes.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_kubernetes.png\",\"hash\":\"thumbnail_kubernetes_7072c296ff\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.13,\"path\":null,\"url\":\"/uploads/thumbnail_kubernetes_7072c296ff.png\"},\"small\":{\"name\":\"small_kubernetes.png\",\"hash\":\"small_kubernetes_7072c296ff\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":163.04,\"path\":null,\"url\":\"/uploads/small_kubernetes_7072c296ff.png\"}}','kubernetes_7072c296ff','.png','image/.png',163.30,'/uploads/kubernetes_7072c296ff.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(25,'linux.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_linux.png\",\"hash\":\"thumbnail_linux_bd80cf0d2e\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":19.94,\"path\":null,\"url\":\"/uploads/thumbnail_linux_bd80cf0d2e.png\"}}','linux_bd80cf0d2e','.png','image/.png',16.28,'/uploads/linux_bd80cf0d2e.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(26,'angular.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_angular.png\",\"hash\":\"thumbnail_angular_d17ccd9fc2\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":15.84,\"path\":null,\"url\":\"/uploads/thumbnail_angular_d17ccd9fc2.png\"}}','angular_d17ccd9fc2','.png','image/.png',9.75,'/uploads/angular_d17ccd9fc2.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31'),(27,'strapi.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_strapi.png\",\"hash\":\"thumbnail_strapi_1a68549751\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":8.4,\"path\":null,\"url\":\"/uploads/thumbnail_strapi_1a68549751.png\"},\"small\":{\"name\":\"small_strapi.png\",\"hash\":\"small_strapi_1a68549751\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":31.49,\"path\":null,\"url\":\"/uploads/small_strapi_1a68549751.png\"}}','strapi_1a68549751','.png','image/.png',19.11,'/uploads/strapi_1a68549751.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 03:42:31','2021-11-21 03:42:31');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (1,1,8,'products','image',1),(6,6,15,'products','image',1),(7,8,18,'products','image',1),(8,7,17,'products','image',1),(9,9,19,'products','image',1),(10,10,16,'products','image',1),(11,13,11,'products','image',1),(12,14,14,'products','image',1),(13,12,23,'products','image',1),(14,11,20,'products','image',1),(15,15,12,'products','image',1),(16,16,21,'products','image',1),(17,17,22,'products','image',1),(18,18,25,'products','image',1),(19,19,9,'products','image',1),(20,20,10,'products','image',1),(21,21,1,'products','image',1),(22,22,2,'products','image',1),(23,23,4,'products','image',1),(24,24,3,'products','image',1),(25,25,24,'products','image',1),(26,26,26,'products','image',1),(27,27,27,'products','image',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 14:09:47
