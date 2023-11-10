-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_yajra_app
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Miss Destiny Connelly','nokuneva@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','kMjeupOcI9','2023-11-10 04:08:55','2023-11-10 04:08:55'),(2,'Rubye Hackett','stanton.filomena@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','RXKwA7lJWH','2023-11-10 04:08:55','2023-11-10 04:08:55'),(3,'Vince Funk','ferry.cynthia@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','yxF759rnvR','2023-11-10 04:08:55','2023-11-10 04:08:55'),(4,'Margaretta Gislason','braxton.stamm@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','ZvzYNqGphl','2023-11-10 04:08:55','2023-11-10 04:08:55'),(5,'Araceli Nikolaus','dsipes@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','XqGrHlcy4C','2023-11-10 04:08:55','2023-11-10 04:08:55'),(6,'Mr. Fidel Pfannerstill','clarson@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','uBHdGUJapm','2023-11-10 04:08:55','2023-11-10 04:08:55'),(7,'Morgan Hirthe','earnest16@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','9dcXan2aVw','2023-11-10 04:08:55','2023-11-10 04:08:55'),(8,'Mac Nienow PhD','nolan.vance@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','0aIYVSQWRW','2023-11-10 04:08:55','2023-11-10 04:08:55'),(9,'Maximilian Jacobs','dameon.macejkovic@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','VHfkjVfWC9','2023-11-10 04:08:55','2023-11-10 04:08:55'),(10,'Mrs. Marilou Jerde','mann.jamie@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','oxnTrACFhh','2023-11-10 04:08:55','2023-11-10 04:08:55'),(11,'Mr. Monroe Renner','arnaldo23@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','aGv3jUixQ5','2023-11-10 04:08:55','2023-11-10 04:08:55'),(12,'Nickolas Bayer','flabadie@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','92uyT2eeuK','2023-11-10 04:08:55','2023-11-10 04:08:55'),(13,'Noemi Kshlerin','khickle@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','tz5Egi0AeU','2023-11-10 04:08:55','2023-11-10 04:08:55'),(14,'Dr. Nico Roob','delta.mohr@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','yYg9Kqv2oU','2023-11-10 04:08:55','2023-11-10 04:08:55'),(15,'Felix Heathcote Jr.','treutel.erin@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','uGJjs27uGI','2023-11-10 04:08:55','2023-11-10 04:08:55'),(16,'Prof. Landen Wolf MD','angeline.renner@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','d0mGuDQJ2Q','2023-11-10 04:08:55','2023-11-10 04:08:55'),(17,'Marilou Bode','wcollier@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','Jy2XXeQVaO','2023-11-10 04:08:55','2023-11-10 04:08:55'),(18,'Donna Ernser','jferry@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','XJU8LK7E1C','2023-11-10 04:08:55','2023-11-10 04:08:55'),(19,'Mrs. Earline Gaylord','raymundo.bauch@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','8dqJ0GPCF3','2023-11-10 04:08:55','2023-11-10 04:08:55'),(20,'June Cremin MD','sunny.kreiger@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','tfV3GTT8AF','2023-11-10 04:08:55','2023-11-10 04:08:55'),(21,'Geoffrey Denesik MD','liza.hirthe@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','0HU5YVobb2','2023-11-10 04:08:55','2023-11-10 04:08:55'),(22,'Mr. Nestor Brown MD','ebert.wilber@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','nhEXs0D0Xo','2023-11-10 04:08:55','2023-11-10 04:08:55'),(23,'Tavares Graham','apfeffer@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','qwGPcvIRC6','2023-11-10 04:08:55','2023-11-10 04:08:55'),(24,'Alysson West','kiehn.mittie@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','cATlg1Um0x','2023-11-10 04:08:55','2023-11-10 04:08:55'),(25,'Winona Hilpert','bennie.mraz@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','F8iQbUlFPX','2023-11-10 04:08:55','2023-11-10 04:08:55'),(26,'Dejon Kilback','bwill@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','6n1yLIL7Xl','2023-11-10 04:08:55','2023-11-10 04:08:55'),(27,'Olin Fadel','uwolf@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','wH8Ko1BaMS','2023-11-10 04:08:55','2023-11-10 04:08:55'),(28,'Rick O\'Hara','yhaley@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','qDtmx6kTkP','2023-11-10 04:08:55','2023-11-10 04:08:55'),(29,'Agustina Gusikowski','aniya.aufderhar@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','hBfQSjBVJg','2023-11-10 04:08:55','2023-11-10 04:08:55'),(30,'Webster Krajcik IV','ohills@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','zTHWAf3iXE','2023-11-10 04:08:55','2023-11-10 04:08:55'),(31,'Myron Lowe','kbraun@example.org','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','NBdN7n6MrG','2023-11-10 04:08:55','2023-11-10 04:08:55'),(32,'Seamus Konopelski','howe.sanford@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','8K67bjTdfN','2023-11-10 04:08:55','2023-11-10 04:08:55'),(33,'Michelle Streich','xstrosin@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','xc14I1WZwN','2023-11-10 04:08:55','2023-11-10 04:08:55'),(34,'Leopoldo Jacobs IV','camryn.schultz@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','4nPxoT33OC','2023-11-10 04:08:55','2023-11-10 04:08:55'),(35,'Ms. Telly Altenwerth Jr.','reilly55@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','0vMEgqwKhl','2023-11-10 04:08:55','2023-11-10 04:08:55'),(36,'Fidel Gerlach','wehner.aidan@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','ae1QRHJqmT','2023-11-10 04:08:55','2023-11-10 04:08:55'),(37,'Cierra Leffler','zkemmer@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','0I21RMsCay','2023-11-10 04:08:55','2023-11-10 04:08:55'),(38,'Yvonne Hauck','bernhard.jordane@example.com','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','eDAR65J59G','2023-11-10 04:08:55','2023-11-10 04:08:55'),(39,'Hester Kuvalis','albert28@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','A68pBtqHYY','2023-11-10 04:08:55','2023-11-10 04:08:55'),(40,'Mr. Dock Nienow DDS','asa.veum@example.net','2023-11-10 04:08:55','$2y$12$g5AYWk7JzUR8yLyxwcxAruPeEJLYYvZ5J7dE2fEU5MseG0etrU9rC','nPlfN8dpji','2023-11-10 04:08:55','2023-11-10 04:08:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 17:19:08
