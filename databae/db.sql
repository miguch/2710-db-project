-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adds`
--

DROP TABLE IF EXISTS `adds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `add_id` varchar(255) DEFAULT NULL,
  `street` longtext,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` bigint DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adds_add_id_unique` (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adds`
--

LOCK TABLES `adds` WRITE;
/*!40000 ALTER TABLE `adds` DISABLE KEYS */;
/*!40000 ALTER TABLE `adds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Front','front',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(2,'Back','back',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(3,'SSG','ssg',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(4,'Database','database',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(5,'Container','container',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(6,'Other','other',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_products__products_categories`
--

DROP TABLE IF EXISTS `categories_products__products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_products__products_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_products__products_categories`
--

LOCK TABLES `categories_products__products_categories` WRITE;
/*!40000 ALTER TABLE `categories_products__products_categories` DISABLE KEYS */;
INSERT INTO `categories_products__products_categories` VALUES (1,2,4),(2,5,1),(3,3,8),(4,6,3),(5,2,5),(6,4,9),(7,3,10),(8,3,7),(9,4,2),(10,1,6),(11,1,4),(12,2,10),(13,2,7),(14,6,17),(15,2,15),(16,5,11),(17,1,14),(18,2,16),(19,5,13),(20,2,12),(21,1,18),(22,6,19),(23,1,16),(24,1,20),(25,1,12),(26,2,20),(27,1,21),(28,1,22),(29,1,23),(30,6,24),(31,1,25),(32,2,26),(33,1,27);
/*!40000 ALTER TABLE `categories_products__products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_custom_custom_fields`
--

DROP TABLE IF EXISTS `components_custom_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_custom_custom_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_custom_custom_fields`
--

LOCK TABLES `components_custom_custom_fields` WRITE;
/*!40000 ALTER TABLE `components_custom_custom_fields` DISABLE KEYS */;
INSERT INTO `components_custom_custom_fields` VALUES (1,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(2,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(3,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(4,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(5,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(6,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(7,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(8,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(9,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(10,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(11,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(12,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(13,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(14,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(15,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(16,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(17,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(18,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(19,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(20,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(21,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(22,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(23,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(24,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(25,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(26,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]'),(27,'Select the size of your sticker',1,'Small[+0.00]|Medium[+0.40]|Large[+0.80]');
/*!40000 ALTER TABLE `components_custom_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_custom.custom-field','{\"uid\":\"custom.custom-field\",\"collectionName\":\"components_custom_custom_fields\",\"info\":{\"name\":\"Custom_field\",\"icon\":\"archway\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"required\":{\"type\":\"boolean\"},\"options\":{\"type\":\"string\"}}}','object',NULL,NULL),(3,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"products\":{\"via\":\"categories\",\"collection\":\"product\",\"dominant\":true,\"attribute\":\"product\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(4,'model_def_application::product.product','{\"uid\":\"application::product.product\",\"collectionName\":\"products\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"string\",\"required\":true},\"price\":{\"type\":\"float\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\",\"images\",\"videos\"],\"plugin\":\"upload\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"categories\":{\"collection\":\"category\",\"via\":\"products\",\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"Custom_field\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"custom.custom-field\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"draft\",\"published\"],\"default\":\"published\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(5,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(6,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(7,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(8,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(9,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(12,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(13,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(14,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(15,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(16,'plugin_content_manager_configuration_components::custom.custom-field','{\"uid\":\"custom.custom-field\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"required\":{\"edit\":{\"label\":\"Required\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Required\",\"searchable\":true,\"sortable\":true}},\"options\":{\"edit\":{\"label\":\"Options\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Options\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"required\",\"options\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"required\",\"size\":4}],[{\"name\":\"options\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(17,'plugin_i18n_default_locale','\"en\"','string','',''),(18,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(19,'plugin_content_manager_configuration_content_types::application::product.product','{\"uid\":\"application::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"Categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Categories\",\"searchable\":false,\"sortable\":false}},\"Custom_field\":{\"edit\":{\"label\":\"Custom_field\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Custom_field\",\"searchable\":false,\"sortable\":false}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"price\"],\"editRelations\":[\"categories\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"image\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"Custom_field\",\"size\":12}],[{\"name\":\"status\",\"size\":6}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(21,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"products\"],\"editRelations\":[\"products\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]]}}','object','',''),(22,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(23,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(24,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(25,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(26,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(27,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(28,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(29,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(30,'type_setup_initHasRun','true','boolean','development',''),(31,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(32,'model_def_application::customers.customers','{\"uid\":\"application::customers.customers\",\"collectionName\":\"customers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"customers\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"customer_id\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"name\":{\"type\":\"string\",\"required\":true},\"marriage\":{\"type\":\"enumeration\",\"enum\":[\"married\",\"unmarried\"]},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"Man\",\"Woman\"]},\"Age\":{\"type\":\"integer\"},\"income\":{\"type\":\"float\"},\"cus_tran\":{\"collection\":\"transaction\",\"attribute\":\"transaction\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::customers.customers','{\"uid\":\"application::customers.customers\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"customer_id\",\"defaultSortBy\":\"customer_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"customer_id\":{\"edit\":{\"label\":\"Customer_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Customer_id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"marriage\":{\"edit\":{\"label\":\"Marriage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Marriage\",\"searchable\":true,\"sortable\":true}},\"gender\":{\"edit\":{\"label\":\"Gender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Gender\",\"searchable\":true,\"sortable\":true}},\"Age\":{\"edit\":{\"label\":\"Age\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Age\",\"searchable\":true,\"sortable\":true}},\"income\":{\"edit\":{\"label\":\"Income\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Income\",\"searchable\":true,\"sortable\":true}},\"cus_tran\":{\"edit\":{\"label\":\"Cus_tran\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_number\"},\"list\":{\"label\":\"Cus_tran\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"customer_id\",\"name\",\"marriage\"],\"edit\":[[{\"name\":\"customer_id\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"marriage\",\"size\":6},{\"name\":\"gender\",\"size\":6}],[{\"name\":\"Age\",\"size\":4},{\"name\":\"income\",\"size\":4}]],\"editRelations\":[\"cus_tran\"]}}','object','',''),(34,'model_def_application::sales-person.sales-person','{\"uid\":\"application::sales-person.sales-person\",\"collectionName\":\"sales_people\",\"kind\":\"collectionType\",\"info\":{\"name\":\"SalesPerson\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"sp_id\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"name\":{\"type\":\"string\",\"required\":true},\"job_title\":{\"type\":\"string\"},\"store_assigned\":{\"type\":\"string\",\"required\":true},\"salary\":{\"type\":\"float\"},\"region\":{\"model\":\"region\",\"via\":\"sales_people\"},\"store\":{\"via\":\"store_saleperson\",\"model\":\"store\"},\"transactions\":{\"via\":\"trans_sale\",\"collection\":\"transaction\",\"dominant\":true,\"attribute\":\"transaction\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::sales-person.sales-person','{\"uid\":\"application::sales-person.sales-person\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"sp_id\",\"defaultSortBy\":\"sp_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"sp_id\":{\"edit\":{\"label\":\"Sp_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sp_id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"job_title\":{\"edit\":{\"label\":\"Job_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Job_title\",\"searchable\":true,\"sortable\":true}},\"store_assigned\":{\"edit\":{\"label\":\"Store_assigned\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Store_assigned\",\"searchable\":true,\"sortable\":true}},\"salary\":{\"edit\":{\"label\":\"Salary\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Salary\",\"searchable\":true,\"sortable\":true}},\"transactions\":{\"edit\":{\"label\":\"Transactions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_number\"},\"list\":{\"label\":\"Transactions\",\"searchable\":false,\"sortable\":false}},\"store\":{\"edit\":{\"label\":\"Store\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Store_id\"},\"list\":{\"label\":\"Store\",\"searchable\":true,\"sortable\":true}},\"region\":{\"edit\":{\"label\":\"Region\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"region_id\"},\"list\":{\"label\":\"Region\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"sp_id\",\"name\",\"job_title\"],\"edit\":[[{\"name\":\"sp_id\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"job_title\",\"size\":6}],[{\"name\":\"salary\",\"size\":4},{\"name\":\"store_assigned\",\"size\":6}]],\"editRelations\":[\"transactions\",\"store\",\"region\"]}}','object','',''),(36,'model_def_application::pd.pd','{\"uid\":\"application::pd.pd\",\"collectionName\":\"pds\",\"kind\":\"collectionType\",\"info\":{\"name\":\"PD\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"pd_id\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"name\":{\"type\":\"string\",\"required\":true},\"amount\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"price\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"description\":{\"type\":\"richtext\"},\"PR_tran\":{\"via\":\"tran_pd\",\"collection\":\"transaction\",\"dominant\":true,\"attribute\":\"transaction\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(37,'plugin_content_manager_configuration_content_types::application::pd.pd','{\"uid\":\"application::pd.pd\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"pd_id\",\"defaultSortBy\":\"pd_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"pd_id\":{\"edit\":{\"label\":\"Pd_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pd_id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"Amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Amount\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"PR_tran\":{\"edit\":{\"label\":\"PR_tran\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"order_number\"},\"list\":{\"label\":\"PR_tran\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"pd_id\",\"name\",\"amount\"],\"edit\":[[{\"name\":\"pd_id\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"amount\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"description\",\"size\":12}]],\"editRelations\":[\"PR_tran\"]}}','object','',''),(38,'model_def_application::store.store','{\"uid\":\"application::store.store\",\"collectionName\":\"stores\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Store\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Store_id\":{\"type\":\"string\"},\"manager\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"num_salesperson\":{\"type\":\"integer\"},\"region\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"store_saleperson\":{\"collection\":\"sales-person\",\"via\":\"store\",\"isVirtual\":true},\"region_store\":{\"model\":\"region\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(39,'plugin_content_manager_configuration_content_types::application::store.store','{\"uid\":\"application::store.store\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Store_id\",\"defaultSortBy\":\"Store_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Store_id\":{\"edit\":{\"label\":\"Store_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Store_id\",\"searchable\":true,\"sortable\":true}},\"manager\":{\"edit\":{\"label\":\"Manager\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Manager\",\"searchable\":true,\"sortable\":true}},\"num_salesperson\":{\"edit\":{\"label\":\"Num_salesperson\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Num_salesperson\",\"searchable\":true,\"sortable\":true}},\"region\":{\"edit\":{\"label\":\"Region\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Region\",\"searchable\":true,\"sortable\":true}},\"store_saleperson\":{\"edit\":{\"label\":\"Store_saleperson\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"sp_id\"},\"list\":{\"label\":\"Store_saleperson\",\"searchable\":false,\"sortable\":false}},\"region_store\":{\"edit\":{\"label\":\"Region_store\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"region_id\"},\"list\":{\"label\":\"Region_store\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Store_id\",\"manager\",\"num_salesperson\"],\"edit\":[[{\"name\":\"Store_id\",\"size\":6},{\"name\":\"manager\",\"size\":6}],[{\"name\":\"num_salesperson\",\"size\":4},{\"name\":\"region\",\"size\":6}]],\"editRelations\":[\"store_saleperson\",\"region_store\"]}}','object','',''),(40,'model_def_application::region.region','{\"uid\":\"application::region.region\",\"collectionName\":\"regions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"region\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"region_id\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"region_name\":{\"type\":\"string\"},\"region_manager\":{\"type\":\"string\"},\"sales_people\":{\"via\":\"region\",\"collection\":\"sales-person\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::application::region.region','{\"uid\":\"application::region.region\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"region_id\",\"defaultSortBy\":\"region_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"region_id\":{\"edit\":{\"label\":\"Region_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Region_id\",\"searchable\":true,\"sortable\":true}},\"region_name\":{\"edit\":{\"label\":\"Region_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Region_name\",\"searchable\":true,\"sortable\":true}},\"region_manager\":{\"edit\":{\"label\":\"Region_manager\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Region_manager\",\"searchable\":true,\"sortable\":true}},\"sales_people\":{\"edit\":{\"label\":\"Sales_people\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"sp_id\"},\"list\":{\"label\":\"Sales_people\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"region_id\",\"region_name\",\"region_manager\"],\"edit\":[[{\"name\":\"region_id\",\"size\":6},{\"name\":\"region_name\",\"size\":6}],[{\"name\":\"region_manager\",\"size\":6}]],\"editRelations\":[\"sales_people\"]}}','object','',''),(42,'model_def_application::transaction.transaction','{\"uid\":\"application::transaction.transaction\",\"collectionName\":\"transactions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"transaction\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order_number\":{\"type\":\"string\"},\"sale_date\":{\"type\":\"date\"},\"saleperson\":{\"type\":\"string\"},\"product_id\":{\"type\":\"string\"},\"cust_id\":{\"type\":\"string\"},\"trans_sale\":{\"collection\":\"sales-person\",\"via\":\"transactions\",\"attribute\":\"sales-person\",\"column\":\"id\",\"isVirtual\":true},\"tran_pd\":{\"collection\":\"pd\",\"via\":\"PR_tran\",\"attribute\":\"pd\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(43,'plugin_content_manager_configuration_content_types::application::transaction.transaction','{\"uid\":\"application::transaction.transaction\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"order_number\",\"defaultSortBy\":\"order_number\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"order_number\":{\"edit\":{\"label\":\"Order_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Order_number\",\"searchable\":true,\"sortable\":true}},\"sale_date\":{\"edit\":{\"label\":\"Sale_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sale_date\",\"searchable\":true,\"sortable\":true}},\"saleperson\":{\"edit\":{\"label\":\"Saleperson\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Saleperson\",\"searchable\":true,\"sortable\":true}},\"product_id\":{\"edit\":{\"label\":\"Product_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Product_id\",\"searchable\":true,\"sortable\":true}},\"cust_id\":{\"edit\":{\"label\":\"Cust_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cust_id\",\"searchable\":true,\"sortable\":true}},\"trans_sale\":{\"edit\":{\"label\":\"Trans_sale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"sp_id\"},\"list\":{\"label\":\"Trans_sale\",\"searchable\":false,\"sortable\":false}},\"tran_pd\":{\"edit\":{\"label\":\"Tran_pd\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pd_id\"},\"list\":{\"label\":\"Tran_pd\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"order_number\",\"sale_date\",\"saleperson\"],\"edit\":[[{\"name\":\"order_number\",\"size\":6},{\"name\":\"sale_date\",\"size\":4}],[{\"name\":\"saleperson\",\"size\":6},{\"name\":\"product_id\",\"size\":6}],[{\"name\":\"cust_id\",\"size\":6}]],\"editRelations\":[\"trans_sale\",\"tran_pd\"]}}','object','',''),(44,'model_def_application::add.add','{\"uid\":\"application::add.add\",\"collectionName\":\"adds\",\"kind\":\"collectionType\",\"info\":{\"name\":\"add\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"add_id\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"street\":{\"type\":\"text\"},\"city\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"zipcode\":{\"type\":\"biginteger\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(45,'plugin_content_manager_configuration_content_types::application::add.add','{\"uid\":\"application::add.add\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"add_id\",\"defaultSortBy\":\"add_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"add_id\":{\"edit\":{\"label\":\"Add_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Add_id\",\"searchable\":true,\"sortable\":true}},\"street\":{\"edit\":{\"label\":\"Street\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Street\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"state\":{\"edit\":{\"label\":\"State\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"State\",\"searchable\":true,\"sortable\":true}},\"zipcode\":{\"edit\":{\"label\":\"Zipcode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zipcode\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"add_id\",\"street\",\"city\"],\"editRelations\":[],\"edit\":[[{\"name\":\"add_id\",\"size\":6},{\"name\":\"street\",\"size\":6}],[{\"name\":\"city\",\"size\":6},{\"name\":\"state\",\"size\":6}],[{\"name\":\"zipcode\",\"size\":4}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `income` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_customer_id_unique` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers__cus_tran`
--

DROP TABLE IF EXISTS `customers__cus_tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers__cus_tran` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers__cus_tran`
--

LOCK TABLES `customers__cus_tran` WRITE;
/*!40000 ALTER TABLE `customers__cus_tran` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers__cus_tran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers__transactions`
--

DROP TABLE IF EXISTS `customers__transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers__transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers__transactions`
--

LOCK TABLES `customers__transactions` WRITE;
/*!40000 ALTER TABLE `customers__transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers__transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-11-21 02:46:02','2021-11-21 02:46:02');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pds`
--

DROP TABLE IF EXISTS `pds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pd_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pds_pd_id_unique` (`pd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pds`
--

LOCK TABLES `pds` WRITE;
/*!40000 ALTER TABLE `pds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pds_pr_trans__transactions_pds`
--

DROP TABLE IF EXISTS `pds_pr_trans__transactions_pds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pds_pr_trans__transactions_pds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pd_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pds_pr_trans__transactions_pds`
--

LOCK TABLES `pds_pr_trans__transactions_pds` WRITE;
/*!40000 ALTER TABLE `pds_pr_trans__transactions_pds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pds_pr_trans__transactions_pds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pds_pr_trans__transactions_tran_pds`
--

DROP TABLE IF EXISTS `pds_pr_trans__transactions_tran_pds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pds_pr_trans__transactions_tran_pds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pd_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pds_pr_trans__transactions_tran_pds`
--

LOCK TABLES `pds_pr_trans__transactions_tran_pds` WRITE;
/*!40000 ALTER TABLE `pds_pr_trans__transactions_tran_pds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pds_pr_trans__transactions_tran_pds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'SQLite','Small. Fast. Reliable. Choose any three',1.84,'sq-lite','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(2,'Docker','Empowering App Development for Developers',1.84,'docker','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(3,'npm','Build amazing things',1.84,'npm','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(4,'Swift','Apple Developer',1.84,'swift','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(5,'Vue.js','The Progressive JavaScript Framework.',1.84,'vue-js','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(6,'Rust','A language empowering everyone to build reliable and efficient software.',1.84,'rust','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(7,'Nuxt.js','The Intuitive Vue Framework',1.84,'nuxt-js','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(8,'Gatsby','Blazing fast modern site generator for React. Go beyond static sites: build blogs, e-commerce sites, full-blown apps, and more with Gatsby.',1.84,'gatsby','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(9,'Kubernetes','Production-Grade Container Orchestration',1.84,'kubernetes','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(10,'Next.js','The React Framework',1.84,'next-js','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(11,'PostgreSQL','The world\'s most advanced open source database',1.84,'postgre-sql','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(12,'Ruby on Rails','A web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller ',1.84,'ruby-on-rails','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(13,'MongoDB','The most popular database for modern apps',1.84,'mongo-db','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(14,'C++','C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\"',1.84,'c-plus-plus','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(15,'React','A JavaScript library for building user interfaces',1.84,'react','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(16,'Laravel','The PHP Framework For Web Artisans',1.84,'laravel','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(17,'GraphQL','A query language for your API',1.84,'graph-ql','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(18,'Golang','Go is an open source programming language that makes it easy to build simple, reliable, and efficient software.',1.84,'golang','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(19,'Google cloud','Cloud Computing Services',1.84,'google-cloud','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(20,'Kotlin','A modern programming language that makes developers happier. Open source forever',1.84,'kotlin','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(21,'Python','Python is a programming language that lets you work quickly and integrate systems more effectively.',1.84,'python','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(22,'Ruby','A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.',1.84,'ruby-1','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(23,'PHP','Hypertext Preprocessor',1.84,'php','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(24,'Linux','Linux is a family of open source Unix-like operating systems based on the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds.',1.84,'linux','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(25,'Java','Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.',1.84,'java','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(26,'Angular','One framework. Mobile & desktop.',1.84,'angular','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04'),(27,'Strapi','Design APIs fast, manage content easily.',1.84,'strapi','published',NULL,NULL,'2021-11-21 02:46:04','2021-11-21 02:46:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_components`
--

DROP TABLE IF EXISTS `products_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_fk` (`product_id`),
  CONSTRAINT `product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_components`
--

LOCK TABLES `products_components` WRITE;
/*!40000 ALTER TABLE `products_components` DISABLE KEYS */;
INSERT INTO `products_components` VALUES (1,'Custom_field',1,'components_custom_custom_fields',5,4),(2,'Custom_field',1,'components_custom_custom_fields',1,1),(3,'Custom_field',1,'components_custom_custom_fields',4,8),(4,'Custom_field',1,'components_custom_custom_fields',6,2),(5,'Custom_field',1,'components_custom_custom_fields',7,5),(6,'Custom_field',1,'components_custom_custom_fields',2,3),(7,'Custom_field',1,'components_custom_custom_fields',3,7),(8,'Custom_field',1,'components_custom_custom_fields',8,10),(9,'Custom_field',1,'components_custom_custom_fields',9,9),(10,'Custom_field',1,'components_custom_custom_fields',10,6),(11,'Custom_field',1,'components_custom_custom_fields',11,13),(12,'Custom_field',1,'components_custom_custom_fields',13,12),(13,'Custom_field',1,'components_custom_custom_fields',12,11),(14,'Custom_field',1,'components_custom_custom_fields',14,14),(15,'Custom_field',1,'components_custom_custom_fields',15,15),(16,'Custom_field',1,'components_custom_custom_fields',16,16),(17,'Custom_field',1,'components_custom_custom_fields',17,17),(18,'Custom_field',1,'components_custom_custom_fields',18,18),(19,'Custom_field',1,'components_custom_custom_fields',19,19),(20,'Custom_field',1,'components_custom_custom_fields',20,20),(21,'Custom_field',1,'components_custom_custom_fields',21,21),(22,'Custom_field',1,'components_custom_custom_fields',22,22),(23,'Custom_field',1,'components_custom_custom_fields',23,23),(24,'Custom_field',1,'components_custom_custom_fields',24,24),(25,'Custom_field',1,'components_custom_custom_fields',25,25),(26,'Custom_field',1,'components_custom_custom_fields',26,26),(27,'Custom_field',1,'components_custom_custom_fields',27,27);
/*!40000 ALTER TABLE `products_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `region_id` varchar(255) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `region_manager` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regions_region_id_unique` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_people`
--

DROP TABLE IF EXISTS `sales_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_people` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `store_assigend` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `store_assigned` varchar(255) DEFAULT NULL,
  `store` int DEFAULT NULL,
  `region` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_people_sp_id_unique` (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_people`
--

LOCK TABLES `sales_people` WRITE;
/*!40000 ALTER TABLE `sales_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_people_transactions__transactions_sales_people`
--

DROP TABLE IF EXISTS `sales_people_transactions__transactions_sales_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_people_transactions__transactions_sales_people` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sales-person_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_people_transactions__transactions_sales_people`
--

LOCK TABLES `sales_people_transactions__transactions_sales_people` WRITE;
/*!40000 ALTER TABLE `sales_people_transactions__transactions_sales_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_people_transactions__transactions_sales_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_people_transactions__transactions_trans_sales`
--

DROP TABLE IF EXISTS `sales_people_transactions__transactions_trans_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_people_transactions__transactions_trans_sales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sales-person_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_people_transactions__transactions_trans_sales`
--

LOCK TABLES `sales_people_transactions__transactions_trans_sales` WRITE;
/*!40000 ALTER TABLE `sales_people_transactions__transactions_trans_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_people_transactions__transactions_trans_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Store_id` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `num_salesperson` int DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `region_store` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stores_manager_unique` (`manager`),
  UNIQUE KEY `stores_region_unique` (`region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Yanze','Li',NULL,'yal151@pitt.edu','$2a$10$idwizbdB7SjnzNOBuzAXOe/oCfNzGsY8w23sM0iv9aQMCtMybP.xS',NULL,NULL,1,NULL,'en');
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::content-manager.explorer.create','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(2,'plugins::content-manager.explorer.create','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(3,'plugins::content-manager.explorer.read','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(4,'plugins::content-manager.explorer.read','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(5,'plugins::content-manager.explorer.update','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(6,'plugins::content-manager.explorer.update','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(7,'plugins::content-manager.explorer.delete','application::category.category','{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(8,'plugins::content-manager.explorer.delete','application::product.product','{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(9,'plugins::upload.read',NULL,'{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(10,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(11,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(12,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(13,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(14,'plugins::content-manager.explorer.create','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(15,'plugins::content-manager.explorer.create','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(16,'plugins::content-manager.explorer.read','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(17,'plugins::content-manager.explorer.read','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(18,'plugins::content-manager.explorer.update','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(19,'plugins::content-manager.explorer.update','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(20,'plugins::content-manager.explorer.delete','application::category.category','{}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(21,'plugins::content-manager.explorer.delete','application::product.product','{}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(22,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(23,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(24,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(25,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(26,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(27,'plugins::content-manager.explorer.create','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(28,'plugins::content-manager.explorer.create','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(29,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(30,'plugins::content-manager.explorer.read','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(31,'plugins::content-manager.explorer.read','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(32,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(33,'plugins::content-manager.explorer.update','application::category.category','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(34,'plugins::content-manager.explorer.update','application::product.product','{\"fields\":[\"title\",\"description\",\"price\",\"image\",\"slug\",\"categories\",\"Custom_field.title\",\"Custom_field.required\",\"Custom_field.options\",\"status\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(35,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-11-21 02:46:05','2021-11-21 02:46:06'),(39,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(40,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(41,'plugins::upload.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(42,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(43,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(44,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(45,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(46,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(47,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(48,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(49,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(50,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(51,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(52,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(53,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(54,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(55,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(56,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(57,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(58,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(59,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(60,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(61,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(62,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(63,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(64,'admin::marketplace.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(65,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(66,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(67,'admin::webhooks.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(68,'admin::webhooks.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(69,'admin::webhooks.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(70,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(71,'admin::users.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(72,'admin::users.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(73,'admin::users.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(74,'admin::users.delete',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(75,'admin::roles.create',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(76,'admin::roles.read',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(77,'admin::roles.update',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(78,'admin::roles.delete',NULL,'{}','[]',1,'2021-11-21 02:46:06','2021-11-21 02:46:06'),(157,'plugins::content-manager.explorer.create','application::add.add','{\"fields\":[\"add_id\",\"street\",\"city\",\"state\",\"zipcode\"]}','[]',1,'2021-11-21 03:12:27','2021-11-21 03:12:27'),(158,'plugins::content-manager.explorer.read','application::add.add','{\"fields\":[\"add_id\",\"street\",\"city\",\"state\",\"zipcode\"]}','[]',1,'2021-11-21 03:12:27','2021-11-21 03:12:27'),(159,'plugins::content-manager.explorer.update','application::add.add','{\"fields\":[\"add_id\",\"street\",\"city\",\"state\",\"zipcode\"]}','[]',1,'2021-11-21 03:12:27','2021-11-21 03:12:27'),(257,'plugins::content-manager.explorer.create','application::sales-person.sales-person','{\"fields\":[\"sp_id\",\"name\",\"job_title\",\"store_assigned\",\"salary\",\"transactions\",\"store\",\"region\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(258,'plugins::content-manager.explorer.create','application::region.region','{\"fields\":[\"region_id\",\"region_name\",\"region_manager\",\"sales_people\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(260,'plugins::content-manager.explorer.read','application::region.region','{\"fields\":[\"region_id\",\"region_name\",\"region_manager\",\"sales_people\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(261,'plugins::content-manager.explorer.read','application::sales-person.sales-person','{\"fields\":[\"sp_id\",\"name\",\"job_title\",\"store_assigned\",\"salary\",\"transactions\",\"store\",\"region\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(263,'plugins::content-manager.explorer.update','application::region.region','{\"fields\":[\"region_id\",\"region_name\",\"region_manager\",\"sales_people\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(264,'plugins::content-manager.explorer.update','application::sales-person.sales-person','{\"fields\":[\"sp_id\",\"name\",\"job_title\",\"store_assigned\",\"salary\",\"transactions\",\"store\",\"region\"]}','[]',1,'2021-11-21 05:08:37','2021-11-21 05:08:37'),(283,'plugins::content-manager.explorer.create','application::store.store','{\"fields\":[\"Store_id\",\"manager\",\"num_salesperson\",\"region\",\"store_saleperson\",\"region_store\"]}','[]',1,'2021-11-21 05:11:45','2021-11-21 05:11:45'),(284,'plugins::content-manager.explorer.read','application::store.store','{\"fields\":[\"Store_id\",\"manager\",\"num_salesperson\",\"region\",\"store_saleperson\",\"region_store\"]}','[]',1,'2021-11-21 05:11:45','2021-11-21 05:11:45'),(285,'plugins::content-manager.explorer.update','application::store.store','{\"fields\":[\"Store_id\",\"manager\",\"num_salesperson\",\"region\",\"store_saleperson\",\"region_store\"]}','[]',1,'2021-11-21 05:11:45','2021-11-21 05:11:45'),(303,'plugins::content-manager.explorer.create','application::customers.customers','{\"fields\":[\"customer_id\",\"name\",\"marriage\",\"gender\",\"Age\",\"income\",\"cus_tran\"]}','[]',1,'2021-11-21 05:12:36','2021-11-21 05:12:36'),(304,'plugins::content-manager.explorer.read','application::customers.customers','{\"fields\":[\"customer_id\",\"name\",\"marriage\",\"gender\",\"Age\",\"income\",\"cus_tran\"]}','[]',1,'2021-11-21 05:12:36','2021-11-21 05:12:36'),(305,'plugins::content-manager.explorer.update','application::customers.customers','{\"fields\":[\"customer_id\",\"name\",\"marriage\",\"gender\",\"Age\",\"income\",\"cus_tran\"]}','[]',1,'2021-11-21 05:12:36','2021-11-21 05:12:36'),(323,'plugins::content-manager.explorer.create','application::pd.pd','{\"fields\":[\"pd_id\",\"name\",\"amount\",\"price\",\"description\",\"PR_tran\"]}','[]',1,'2021-11-21 05:13:35','2021-11-21 05:13:35'),(325,'plugins::content-manager.explorer.read','application::pd.pd','{\"fields\":[\"pd_id\",\"name\",\"amount\",\"price\",\"description\",\"PR_tran\"]}','[]',1,'2021-11-21 05:13:35','2021-11-21 05:13:35'),(326,'plugins::content-manager.explorer.update','application::pd.pd','{\"fields\":[\"pd_id\",\"name\",\"amount\",\"price\",\"description\",\"PR_tran\"]}','[]',1,'2021-11-21 05:13:35','2021-11-21 05:13:35'),(346,'plugins::content-manager.explorer.create','application::transaction.transaction','{\"fields\":[\"order_number\",\"sale_date\",\"saleperson\",\"product_id\",\"cust_id\",\"trans_sale\",\"tran_pd\"]}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(347,'plugins::content-manager.explorer.read','application::transaction.transaction','{\"fields\":[\"order_number\",\"sale_date\",\"saleperson\",\"product_id\",\"cust_id\",\"trans_sale\",\"tran_pd\"]}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(348,'plugins::content-manager.explorer.update','application::transaction.transaction','{\"fields\":[\"order_number\",\"sale_date\",\"saleperson\",\"product_id\",\"cust_id\",\"trans_sale\",\"tran_pd\"]}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(349,'plugins::content-manager.explorer.delete','application::add.add','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(350,'plugins::content-manager.explorer.delete','application::category.category','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(351,'plugins::content-manager.explorer.delete','application::customers.customers','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(352,'plugins::content-manager.explorer.delete','application::pd.pd','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(353,'plugins::content-manager.explorer.delete','application::product.product','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(354,'plugins::content-manager.explorer.delete','application::region.region','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(355,'plugins::content-manager.explorer.delete','application::sales-person.sales-person','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(356,'plugins::content-manager.explorer.delete','application::transaction.transaction','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(357,'plugins::content-manager.explorer.delete','application::store.store','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(358,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(359,'plugins::content-manager.explorer.publish','application::add.add','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(360,'plugins::content-manager.explorer.publish','application::customers.customers','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(361,'plugins::content-manager.explorer.publish','application::sales-person.sales-person','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(362,'plugins::content-manager.explorer.publish','application::pd.pd','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(363,'plugins::content-manager.explorer.publish','application::region.region','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(364,'plugins::content-manager.explorer.publish','application::store.store','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08'),(365,'plugins::content-manager.explorer.publish','application::transaction.transaction','{}','[]',1,'2021-11-21 05:15:08','2021-11-21 05:15:08');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-11-21 02:46:05','2021-11-21 02:46:05'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-11-21 02:46:05','2021-11-21 02:46:05'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-11-21 02:46:05','2021-11-21 02:46:05');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `saleperson` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `cust_id` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'sq-lite.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_sq-lite.png\",\"hash\":\"thumbnail_sq_lite_a02fc0d5ae\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":12.58,\"path\":null,\"url\":\"/uploads/thumbnail_sq_lite_a02fc0d5ae.png\"}}','sq_lite_a02fc0d5ae','.png','image/.png',7.10,'/uploads/sq_lite_a02fc0d5ae.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(11,'google-cloud.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_google-cloud.png\",\"hash\":\"thumbnail_google_cloud_b9b6da3e7c\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":12.52,\"path\":null,\"url\":\"/uploads/thumbnail_google_cloud_b9b6da3e7c.png\"}}','google_cloud_b9b6da3e7c','.png','image/.png',9.11,'/uploads/google_cloud_b9b6da3e7c.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(12,'kotlin.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_kotlin.png\",\"hash\":\"thumbnail_kotlin_1b27e8e495\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":12.64,\"path\":null,\"url\":\"/uploads/thumbnail_kotlin_1b27e8e495.png\"}}','kotlin_1b27e8e495','.png','image/.png',7.98,'/uploads/kotlin_1b27e8e495.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(13,'ruby-on-rails.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_ruby-on-rails.png\",\"hash\":\"thumbnail_ruby_on_rails_f58a503695\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":8.82,\"path\":null,\"url\":\"/uploads/thumbnail_ruby_on_rails_f58a503695.png\"}}','ruby_on_rails_f58a503695','.png','image/.png',6.67,'/uploads/ruby_on_rails_f58a503695.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(14,'python.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_python.png\",\"hash\":\"thumbnail_python_c4a58e8ae0\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":14.59,\"path\":null,\"url\":\"/uploads/thumbnail_python_c4a58e8ae0.png\"}}','python_c4a58e8ae0','.png','image/.png',7.17,'/uploads/python_c4a58e8ae0.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(15,'laravel.png',NULL,NULL,400,400,'{\"thumbnail\":{\"name\":\"thumbnail_laravel.png\",\"hash\":\"thumbnail_laravel_7c86802a8a\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":13.93,\"path\":null,\"url\":\"/uploads/thumbnail_laravel_7c86802a8a.png\"}}','laravel_7c86802a8a','.png','image/.png',7.85,'/uploads/laravel_7c86802a8a.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(16,'ruby-1.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_ruby-1.png\",\"hash\":\"thumbnail_ruby_1_ad6bc59fcd\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":31,\"path\":null,\"url\":\"/uploads/thumbnail_ruby_1_ad6bc59fcd.png\"}}','ruby_1_ad6bc59fcd','.png','image/.png',17.56,'/uploads/ruby_1_ad6bc59fcd.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(17,'php.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_php.png\",\"hash\":\"thumbnail_php_46b9ad4fc3\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.32,\"path\":null,\"url\":\"/uploads/thumbnail_php_46b9ad4fc3.png\"}}','php_46b9ad4fc3','.png','image/.png',17.49,'/uploads/php_46b9ad4fc3.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(18,'java.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_java.png\",\"hash\":\"thumbnail_java_414e16d101\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":16.5,\"path\":null,\"url\":\"/uploads/thumbnail_java_414e16d101.png\"}}','java_414e16d101','.png','image/.png',8.19,'/uploads/java_414e16d101.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(19,'linux.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_linux.png\",\"hash\":\"thumbnail_linux_5d1cf66695\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":19.94,\"path\":null,\"url\":\"/uploads/thumbnail_linux_5d1cf66695.png\"}}','linux_5d1cf66695','.png','image/.png',16.28,'/uploads/linux_5d1cf66695.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(20,'angular.png',NULL,NULL,375,375,'{\"thumbnail\":{\"name\":\"thumbnail_angular.png\",\"hash\":\"thumbnail_angular_f36767dc2d\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":15.84,\"path\":null,\"url\":\"/uploads/thumbnail_angular_f36767dc2d.png\"}}','angular_f36767dc2d','.png','image/.png',9.75,'/uploads/angular_f36767dc2d.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(21,'npm.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_npm.png\",\"hash\":\"thumbnail_npm_3022193950\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":5.58,\"path\":null,\"url\":\"/uploads/thumbnail_npm_3022193950.png\"},\"small\":{\"name\":\"small_npm.png\",\"hash\":\"small_npm_3022193950\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":32.14,\"path\":null,\"url\":\"/uploads/small_npm_3022193950.png\"}}','npm_3022193950','.png','image/.png',30.66,'/uploads/npm_3022193950.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(22,'nuxt-js.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_nuxt-js.png\",\"hash\":\"thumbnail_nuxt_js_0b43bbf5f1\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":16.68,\"path\":null,\"url\":\"/uploads/thumbnail_nuxt_js_0b43bbf5f1.png\"},\"small\":{\"name\":\"small_nuxt-js.png\",\"hash\":\"small_nuxt_js_0b43bbf5f1\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":117.55,\"path\":null,\"url\":\"/uploads/small_nuxt_js_0b43bbf5f1.png\"}}','nuxt_js_0b43bbf5f1','.png','image/.png',118.61,'/uploads/nuxt_js_0b43bbf5f1.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(23,'docker.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_docker.png\",\"hash\":\"thumbnail_docker_0c90bd5ef1\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":27.2,\"path\":null,\"url\":\"/uploads/thumbnail_docker_0c90bd5ef1.png\"},\"small\":{\"name\":\"small_docker.png\",\"hash\":\"small_docker_0c90bd5ef1\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":182.48,\"path\":null,\"url\":\"/uploads/small_docker_0c90bd5ef1.png\"}}','docker_0c90bd5ef1','.png','image/.png',185.87,'/uploads/docker_0c90bd5ef1.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(24,'kubernetes.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_kubernetes.png\",\"hash\":\"thumbnail_kubernetes_3757741299\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.13,\"path\":null,\"url\":\"/uploads/thumbnail_kubernetes_3757741299.png\"},\"small\":{\"name\":\"small_kubernetes.png\",\"hash\":\"small_kubernetes_3757741299\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":163.04,\"path\":null,\"url\":\"/uploads/small_kubernetes_3757741299.png\"}}','kubernetes_3757741299','.png','image/.png',163.30,'/uploads/kubernetes_3757741299.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(25,'gatsby.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_gatsby.png\",\"hash\":\"thumbnail_gatsby_3b2dda00bf\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":23.07,\"path\":null,\"url\":\"/uploads/thumbnail_gatsby_3b2dda00bf.png\"},\"small\":{\"name\":\"small_gatsby.png\",\"hash\":\"small_gatsby_3b2dda00bf\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":161.12,\"path\":null,\"url\":\"/uploads/small_gatsby_3b2dda00bf.png\"}}','gatsby_3b2dda00bf','.png','image/.png',152.91,'/uploads/gatsby_3b2dda00bf.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(26,'next-js.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_next-js.png\",\"hash\":\"thumbnail_next_js_254c5f4532\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":9.26,\"path\":null,\"url\":\"/uploads/thumbnail_next_js_254c5f4532.png\"},\"small\":{\"name\":\"small_next-js.png\",\"hash\":\"small_next_js_254c5f4532\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":46.1,\"path\":null,\"url\":\"/uploads/small_next_js_254c5f4532.png\"}}','next_js_254c5f4532','.png','image/.png',38.64,'/uploads/next_js_254c5f4532.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05'),(27,'strapi.png',NULL,NULL,600,600,'{\"thumbnail\":{\"name\":\"thumbnail_strapi.png\",\"hash\":\"thumbnail_strapi_96484651e7\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":156,\"height\":156,\"size\":8.4,\"path\":null,\"url\":\"/uploads/thumbnail_strapi_96484651e7.png\"},\"small\":{\"name\":\"small_strapi.png\",\"hash\":\"small_strapi_96484651e7\",\"ext\":\".png\",\"mime\":\"image/.png\",\"width\":500,\"height\":500,\"size\":31.49,\"path\":null,\"url\":\"/uploads/small_strapi_96484651e7.png\"}}','strapi_96484651e7','.png','image/.png',19.11,'/uploads/strapi_96484651e7.png',NULL,'local',NULL,NULL,NULL,'2021-11-21 02:46:05','2021-11-21 02:46:05');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (1,1,1,'products','image',1),(11,11,19,'products','image',1),(12,12,20,'products','image',1),(13,13,12,'products','image',1),(14,14,21,'products','image',1),(15,15,16,'products','image',1),(16,16,22,'products','image',1),(17,17,23,'products','image',1),(18,18,25,'products','image',1),(19,19,24,'products','image',1),(20,20,26,'products','image',1),(21,21,3,'products','image',1),(22,22,7,'products','image',1),(23,23,2,'products','image',1),(24,24,9,'products','image',1),(25,25,8,'products','image',1),(26,26,10,'products','image',1),(27,27,27,'products','image',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'application','category','count',0,'',1,NULL,NULL),(2,'application','category','count',1,'',2,NULL,NULL),(3,'application','category','create',0,'',1,NULL,NULL),(4,'application','category','create',1,'',2,NULL,NULL),(5,'application','category','delete',0,'',1,NULL,NULL),(6,'application','category','delete',1,'',2,NULL,NULL),(7,'application','category','find',0,'',1,NULL,NULL),(8,'application','category','find',1,'',2,NULL,NULL),(9,'application','category','findone',0,'',1,NULL,NULL),(10,'application','category','findone',1,'',2,NULL,NULL),(11,'application','category','update',0,'',1,NULL,NULL),(12,'application','product','delete',0,'',1,NULL,NULL),(13,'application','category','update',1,'',2,NULL,NULL),(14,'application','product','count',0,'',1,NULL,NULL),(15,'application','product','count',1,'',2,NULL,NULL),(16,'application','product','create',0,'',1,NULL,NULL),(17,'application','product','create',1,'',2,NULL,NULL),(18,'application','product','delete',1,'',2,NULL,NULL),(19,'application','product','find',1,'',2,NULL,NULL),(20,'application','product','find',0,'',1,NULL,NULL),(21,'application','product','findone',0,'',1,NULL,NULL),(22,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(23,'application','product','findone',1,'',2,NULL,NULL),(24,'application','product','update',0,'',1,NULL,NULL),(25,'application','product','update',1,'',2,NULL,NULL),(26,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(27,'content-manager','collection-types','create',0,'',1,NULL,NULL),(28,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(29,'content-manager','collection-types','create',0,'',2,NULL,NULL),(30,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(31,'content-manager','collection-types','find',0,'',1,NULL,NULL),(32,'content-manager','collection-types','find',0,'',2,NULL,NULL),(33,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(34,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(35,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(36,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(37,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(38,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(39,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(40,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(41,'content-manager','collection-types','update',0,'',1,NULL,NULL),(42,'content-manager','collection-types','update',0,'',2,NULL,NULL),(43,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(44,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(45,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(46,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(47,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(48,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(49,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(50,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(51,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(52,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(53,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(54,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(55,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(56,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(57,'content-manager','relations','find',0,'',1,NULL,NULL),(58,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(59,'content-manager','relations','find',0,'',2,NULL,NULL),(60,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(61,'content-manager','single-types','delete',0,'',1,NULL,NULL),(62,'content-manager','single-types','delete',0,'',2,NULL,NULL),(63,'content-manager','single-types','find',0,'',1,NULL,NULL),(64,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(65,'content-manager','single-types','find',0,'',2,NULL,NULL),(66,'content-manager','single-types','publish',0,'',1,NULL,NULL),(67,'content-manager','single-types','publish',0,'',2,NULL,NULL),(68,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(69,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(70,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(71,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(72,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(73,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(74,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(75,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(76,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(77,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(78,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(79,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(80,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(81,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(82,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(83,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(84,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(85,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(86,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(87,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(88,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(89,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(90,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(91,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(92,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(93,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(94,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(95,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(96,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(97,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(98,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(99,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(100,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(101,'email','email','getsettings',0,'',1,NULL,NULL),(102,'email','email','getsettings',0,'',2,NULL,NULL),(103,'email','email','send',0,'',1,NULL,NULL),(104,'email','email','send',0,'',2,NULL,NULL),(105,'email','email','test',0,'',1,NULL,NULL),(106,'email','email','test',0,'',2,NULL,NULL),(107,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(108,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(109,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(110,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(111,'i18n','locales','createlocale',0,'',1,NULL,NULL),(112,'i18n','locales','createlocale',0,'',2,NULL,NULL),(113,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(114,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(115,'i18n','locales','listlocales',0,'',1,NULL,NULL),(116,'i18n','locales','listlocales',0,'',2,NULL,NULL),(117,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(118,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(119,'upload','upload','count',0,'',1,NULL,NULL),(120,'upload','upload','count',0,'',2,NULL,NULL),(121,'upload','upload','destroy',0,'',1,NULL,NULL),(122,'upload','upload','destroy',0,'',2,NULL,NULL),(123,'upload','upload','find',0,'',1,NULL,NULL),(124,'upload','upload','find',0,'',2,NULL,NULL),(125,'upload','upload','findone',0,'',1,NULL,NULL),(126,'upload','upload','findone',0,'',2,NULL,NULL),(127,'upload','upload','getsettings',0,'',1,NULL,NULL),(128,'upload','upload','getsettings',0,'',2,NULL,NULL),(129,'upload','upload','search',0,'',1,NULL,NULL),(130,'upload','upload','search',0,'',2,NULL,NULL),(131,'upload','upload','updatesettings',0,'',1,NULL,NULL),(132,'upload','upload','updatesettings',0,'',2,NULL,NULL),(133,'upload','upload','upload',0,'',1,NULL,NULL),(134,'upload','upload','upload',0,'',2,NULL,NULL),(135,'users-permissions','auth','callback',0,'',1,NULL,NULL),(136,'users-permissions','auth','callback',1,'',2,NULL,NULL),(137,'users-permissions','auth','connect',1,'',1,NULL,NULL),(138,'users-permissions','auth','connect',1,'',2,NULL,NULL),(139,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(140,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(141,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(142,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(143,'users-permissions','auth','register',0,'',1,NULL,NULL),(144,'users-permissions','auth','register',1,'',2,NULL,NULL),(145,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(146,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(147,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(148,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(149,'users-permissions','user','count',0,'',1,NULL,NULL),(150,'users-permissions','user','count',0,'',2,NULL,NULL),(151,'users-permissions','user','create',0,'',1,NULL,NULL),(152,'users-permissions','user','create',0,'',2,NULL,NULL),(153,'users-permissions','user','destroy',0,'',1,NULL,NULL),(154,'users-permissions','user','destroy',0,'',2,NULL,NULL),(155,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(156,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(157,'users-permissions','user','find',0,'',1,NULL,NULL),(158,'users-permissions','user','find',0,'',2,NULL,NULL),(159,'users-permissions','user','findone',0,'',1,NULL,NULL),(160,'users-permissions','user','findone',0,'',2,NULL,NULL),(161,'users-permissions','user','me',1,'',1,NULL,NULL),(162,'users-permissions','user','me',1,'',2,NULL,NULL),(163,'users-permissions','user','update',0,'',1,NULL,NULL),(164,'users-permissions','user','update',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(167,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(168,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(169,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(170,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(171,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(172,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(173,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(174,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(175,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(176,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(177,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(178,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(179,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(180,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(181,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(182,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(183,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(184,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(185,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(186,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(187,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(188,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(189,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(190,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(191,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(192,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(193,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(194,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(195,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(196,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(197,'application','customers','findone',0,'',2,NULL,NULL),(198,'application','customers','count',0,'',1,NULL,NULL),(199,'application','customers','count',0,'',2,NULL,NULL),(200,'application','customers','create',0,'',1,NULL,NULL),(201,'application','customers','create',0,'',2,NULL,NULL),(202,'application','customers','delete',0,'',1,NULL,NULL),(203,'application','customers','delete',0,'',2,NULL,NULL),(204,'application','customers','find',0,'',1,NULL,NULL),(205,'application','customers','find',0,'',2,NULL,NULL),(206,'application','customers','findone',0,'',1,NULL,NULL),(207,'application','customers','update',0,'',1,NULL,NULL),(208,'application','customers','update',0,'',2,NULL,NULL),(209,'application','sales-person','count',0,'',1,NULL,NULL),(210,'application','sales-person','count',0,'',2,NULL,NULL),(211,'application','sales-person','create',0,'',1,NULL,NULL),(212,'application','sales-person','create',0,'',2,NULL,NULL),(213,'application','sales-person','delete',0,'',1,NULL,NULL),(214,'application','sales-person','delete',0,'',2,NULL,NULL),(215,'application','sales-person','find',0,'',1,NULL,NULL),(216,'application','sales-person','find',0,'',2,NULL,NULL),(217,'application','sales-person','findone',0,'',1,NULL,NULL),(218,'application','sales-person','findone',0,'',2,NULL,NULL),(219,'application','sales-person','update',0,'',2,NULL,NULL),(220,'application','sales-person','update',0,'',1,NULL,NULL),(221,'application','pd','count',0,'',1,NULL,NULL),(222,'application','pd','count',0,'',2,NULL,NULL),(223,'application','pd','create',0,'',1,NULL,NULL),(224,'application','pd','create',0,'',2,NULL,NULL),(225,'application','pd','delete',0,'',1,NULL,NULL),(226,'application','pd','delete',0,'',2,NULL,NULL),(227,'application','pd','find',0,'',1,NULL,NULL),(228,'application','pd','find',0,'',2,NULL,NULL),(229,'application','pd','findone',0,'',1,NULL,NULL),(230,'application','pd','findone',0,'',2,NULL,NULL),(231,'application','pd','update',0,'',1,NULL,NULL),(232,'application','pd','update',0,'',2,NULL,NULL),(233,'application','store','count',0,'',1,NULL,NULL),(234,'application','store','count',0,'',2,NULL,NULL),(235,'application','store','create',0,'',1,NULL,NULL),(236,'application','store','create',0,'',2,NULL,NULL),(237,'application','store','delete',0,'',1,NULL,NULL),(238,'application','store','delete',0,'',2,NULL,NULL),(239,'application','store','find',0,'',1,NULL,NULL),(240,'application','store','find',0,'',2,NULL,NULL),(241,'application','store','findone',0,'',1,NULL,NULL),(242,'application','store','findone',0,'',2,NULL,NULL),(243,'application','store','update',0,'',1,NULL,NULL),(244,'application','store','update',0,'',2,NULL,NULL),(245,'application','region','count',0,'',1,NULL,NULL),(246,'application','region','count',0,'',2,NULL,NULL),(247,'application','region','create',0,'',1,NULL,NULL),(248,'application','region','create',0,'',2,NULL,NULL),(249,'application','region','delete',0,'',1,NULL,NULL),(250,'application','region','delete',0,'',2,NULL,NULL),(251,'application','region','find',0,'',1,NULL,NULL),(252,'application','region','find',0,'',2,NULL,NULL),(253,'application','region','findone',0,'',1,NULL,NULL),(254,'application','region','findone',0,'',2,NULL,NULL),(255,'application','region','update',0,'',1,NULL,NULL),(256,'application','region','update',0,'',2,NULL,NULL),(257,'application','transaction','count',0,'',1,NULL,NULL),(258,'application','transaction','count',0,'',2,NULL,NULL),(259,'application','transaction','create',0,'',1,NULL,NULL),(260,'application','transaction','create',0,'',2,NULL,NULL),(261,'application','transaction','delete',0,'',1,NULL,NULL),(262,'application','transaction','delete',0,'',2,NULL,NULL),(263,'application','transaction','find',0,'',1,NULL,NULL),(264,'application','transaction','find',0,'',2,NULL,NULL),(265,'application','transaction','findone',0,'',1,NULL,NULL),(266,'application','transaction','findone',0,'',2,NULL,NULL),(267,'application','transaction','update',0,'',1,NULL,NULL),(268,'application','transaction','update',0,'',2,NULL,NULL),(269,'application','add','count',0,'',1,NULL,NULL),(270,'application','add','count',0,'',2,NULL,NULL),(271,'application','add','create',0,'',1,NULL,NULL),(272,'application','add','create',0,'',2,NULL,NULL),(273,'application','add','delete',0,'',1,NULL,NULL),(274,'application','add','delete',0,'',2,NULL,NULL),(275,'application','add','find',0,'',1,NULL,NULL),(276,'application','add','find',0,'',2,NULL,NULL),(277,'application','add','findone',0,'',1,NULL,NULL),(278,'application','add','findone',0,'',2,NULL,NULL),(279,'application','add','update',0,'',1,NULL,NULL),(280,'application','add','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 19:30:52
