-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_clients` int unsigned NOT NULL AUTO_INCREMENT,
  `name_of_org` varchar(50) NOT NULL,
  `inn` int unsigned NOT NULL,
  `organizational_form` enum('ООО','ЗАО','ПАО','ИП') NOT NULL,
  `adress` varchar(200) NOT NULL,
  `phone_number` bigint NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `users_id_users` int unsigned DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `fin_raiting` int NOT NULL,
  PRIMARY KEY (`id_clients`),
  KEY `fk_clients_users1_idx` (`users_id_users`),
  CONSTRAINT `fk_clients_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Ромашка',523655696,'ООО','111236, МО, г. Балашиха, ул. Свердлова д.56, оф.305',79859741639,'2021-03-01 22:27:44',2,NULL,20),(2,'Технологии',521256985,'ЗАО','145325, МО, г. Раменкое, ул. Победы, д.36, оф.2',79293651236,'2021-03-04 21:57:26',3,NULL,7),(3,'Звезда',523255478,'ООО','123441, МО, г. Раменское, ул. Энтузиастов, д.5, оф. 311',79263651447,'2021-03-04 21:57:26',1,NULL,25),(4,'ЮЛ-Стрит',523666545,'ООО','112325, МО, г. Жуковский, ул. Ленина, д.2, оф. 307',79631251456,'2021-03-04 21:57:26',1,NULL,12),(5,'Марс',598789636,'ООО','174777, МО, г. Балашиха, ул. Ленина, д.45, оф. 23',79638527414,'2021-03-04 21:57:26',2,NULL,16),(6,'Алюр',542365852,'ООО','1458888, МО, г. Раменское, площадь Славы, д.31, оф. 26',79669877888,'2021-03-04 21:57:26',9,NULL,15),(7,'Метал',521256984,'ПАО','123698, МО, ш.Энтузиастов, д.52, оф.57',79233211233,'2021-03-04 21:57:26',5,NULL,12),(8,'Витол',523658966,'ПАО','147858, МО, г. Балашиха, ул. Первомайский проезд, д.10, оф.194',78889633322,'2021-03-04 21:57:26',8,NULL,19),(9,'Инвест-технологии',521232558,'ООО','123456, МО, г. Балашиха, ул. Балашихинское шоссе, д.10, оф.194',78889996633,'2021-03-04 21:57:26',3,NULL,21),(10,'Светофор',566545698,'ЗАО','147741, МО, г. Балашиха, ул. Объединения д. 7/27, оф. 305 ',79635554455,'2021-03-04 21:57:26',4,NULL,14),(11,'Победа',525365456,'ООО','155232, МО, г. Раменское, ул.Жуково, д.3, оф.2',79996541133,'2021-03-04 21:57:26',2,NULL,16);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id_files_type` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `files_id_files` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id_users` int NOT NULL,
  PRIMARY KEY (`files_id_files`),
  KEY `fk_files_users1_idx` (`files_id_files`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'2021-03-05 18:45:26',NULL,1,2),(1,'2021-03-05 18:45:26',NULL,2,2),(2,'2021-03-05 18:45:26',NULL,3,2),(3,'2021-03-05 18:45:26',NULL,4,3),(4,'2021-03-05 18:45:26',NULL,5,1),(5,'2021-03-05 18:45:26',NULL,6,2),(4,'2021-03-05 18:45:26',NULL,7,10),(7,'2021-03-05 18:45:26',NULL,8,9),(7,'2021-03-05 18:45:26',NULL,9,8),(7,'2021-03-05 18:45:26',NULL,10,8);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_type`
--

DROP TABLE IF EXISTS `files_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_type` (
  `name` varchar(50) NOT NULL,
  `id_files_type` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_files_type`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_type`
--

LOCK TABLES `files_type` WRITE;
/*!40000 ALTER TABLE `files_type` DISABLE KEYS */;
INSERT INTO `files_type` VALUES ('видео',2),('заключеня профильных служб',7),('картинка',1),('паспортные данные',3),('прочие документы',6),('схема бизнеса',4),('фото бизнеса',5);
/*!40000 ALTER TABLE `files_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id_product_type` int NOT NULL AUTO_INCREMENT,
  `name_of_product` enum('credit','non_credit') NOT NULL,
  PRIMARY KEY (`id_product_type`),
  UNIQUE KEY `name_of_product_UNIQUE` (`name_of_product`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'credit'),(2,'non_credit');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_products` int NOT NULL AUTO_INCREMENT,
  `id_product_type` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_products`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'вексель',1050.00),(2,1,'кредит на Авто',3520.00),(3,1,'ипотека',15000.00),(4,1,'потреб кредит',5000.00),(5,2,'страхование',770.00),(6,2,'брокерское обслуживание',4000.00),(7,2,'коробочное страхование',1000.00),(8,2,'РКО',1200.00),(9,1,'лизинг',6500.00),(10,1,'лизинг_авто',5500.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id_users` int unsigned NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `birthday_date` date NOT NULL,
  `adress` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`users_id_users`),
  KEY `fk_profiles_users_idx` (`users_id_users`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Роман','Ширманов','m','1991-12-19','МО, г. Балашиха, ул. Балашихинское шоссе, д.10, кв 199','2021-03-04 23:21:48',NULL),(2,'Дмитрий','Ушаков','m','1986-08-26','МО, г. Реутов, ул. Шоссе Энтузиастов, д.5, кв. 100','2021-03-04 23:21:48',NULL),(3,'Дмитрий','Протасов','m','1988-04-01',' г. Москва, ул. Динамо, д. 5, кв. 36','2021-03-04 23:21:48',NULL),(4,'Алла','Клюева','f','1971-12-06','МО, г. Электросталь, ул. Ленина д.65, кв.203','2021-03-04 23:21:48',NULL),(5,'Екатерина','Черепанова','f','1985-04-16','МО, г. Ногинск, ул. Циалковского, д.54, кв. 13','2021-03-04 23:21:48',NULL),(6,'Марина','Маркова','f','1984-10-10','МО, г.Орехово-Зуево, ул. Славы, д.98, кв25','2021-03-04 23:21:48',NULL),(7,'Юля','Поленоа','f','1976-06-06','МО, г. Балашиха, ул Ленина, д.36, кв. 100','2021-03-04 23:21:48',NULL),(8,'Юля','Солнышкина','f','1981-08-19','МО, г. Химки, ул. Патоличева, д.9, кв. 81','2021-03-04 23:21:48',NULL),(9,'Наталья','Зайцева','f','1978-11-05','МО, г. Балашиха, ул. Победы, д.36, кв.8','2021-03-04 23:21:48',NULL),(10,'Дмитрий','Штырков','m','1970-12-05','г. Москва, ул. Тверская, д1, кв. 23','2021-03-04 23:21:48',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id_sales` int NOT NULL AUTO_INCREMENT,
  `users_id_users` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `number_of_point` int NOT NULL,
  `id_products` int DEFAULT NULL,
  PRIMARY KEY (`id_sales`),
  KEY `fk_sales_users1_idx` (`users_id_users`),
  CONSTRAINT `fk_sales_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,2,'2021-03-05 00:00:49',1023,2),(2,2,'2021-03-05 00:00:49',1023,2),(3,2,'2021-03-05 00:00:49',1044,10),(4,5,'2021-03-05 00:00:49',1023,5),(5,5,'2021-03-05 00:00:49',1025,7),(6,3,'2021-03-05 00:00:49',1023,3),(7,4,'2021-03-05 00:00:49',1026,3),(8,6,'2021-03-05 00:00:49',1027,5),(9,7,'2021-03-05 00:00:49',1028,7),(10,9,'2021-03-05 00:00:49',1028,7);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id_tasks` int NOT NULL AUTO_INCREMENT,
  `users_id_users` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `task` enum('done','not_done') NOT NULL,
  `text_of_tasks` varchar(150) NOT NULL,
  PRIMARY KEY (`id_tasks`),
  KEY `fk_tasks_users1_idx` (`users_id_users`),
  CONSTRAINT `fk_tasks_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,2,'2021-03-04 23:53:09',NULL,'not_done','Повзонить клиенту'),(2,1,'2021-03-04 23:53:09',NULL,'done','Выезд к клиенту'),(3,2,'2021-03-04 23:53:09',NULL,'done','Продажа продукта'),(4,5,'2021-03-04 23:53:09',NULL,'not_done','Выезд к клиенту'),(5,10,'2021-03-04 23:53:09',NULL,'done','Встреча с клиентом'),(6,6,'2021-03-04 23:53:09',NULL,'not_done','Продажа клиенту'),(7,4,'2021-03-04 23:53:09',NULL,'not_done','Позвонить по просрочке'),(8,3,'2021-03-04 23:53:09',NULL,'not_done','Переоценка залога'),(9,8,'2021-03-04 23:53:09',NULL,'done','Выяснить потребность в кредитовании'),(10,8,'2021-03-04 23:53:09',NULL,'done','Холодные звонки');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_users` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone_number` bigint NOT NULL,
  `password_hash` char(70) NOT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`),
  UNIQUE KEY `password_hash_UNIQUE` (`password_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ivanoe@mail.ru',79859741639,'2cf08806d522c43824fd7639525a0bce'),(2,'mrbigmoon@mail.ru',79855556336,'4b8c99041308b5155916e4a5112ee58d'),(3,'goodcatman@icloud.com',79844563211,'53a27d2f8264800f9bc78e1f1767bf76'),(4,'vana98@inbox.ru',78589699988,'d47eb2fedbd0a15d6c070c779ad06982'),(5,'olgabd_91@mail.ru',79889856633,'e89dd35ef51d844c01618625a4ab6405'),(6,'romansh_96@yandex.ru',79854563322,'795bc9ac6b3f960f9644f9313d6286a6'),(7,'svetlana_pel@inbox.ru',79888889669,'3e307ae7bc6a6915ffa1cb2dbb37f7cd'),(8,'ekaterina88@mail.ru',79993632233,'2b14eb8063f4afddb795625d41a92963'),(9,'igorVityshkin@mail.ru',79896541122,'d9a4e142358ff13400c8bfb57ad86554'),(10,'svet1996@mail.ru',79896563322,'603cbd355a5c9f5ffd4af06346491d6b');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 19:37:37
