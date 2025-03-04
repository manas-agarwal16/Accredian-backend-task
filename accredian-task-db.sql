-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: mysql-2fedea76-accredian-task-alien.g.aivencloud.com    Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3d799445-f3fb-11ef-b5a5-928dccbfefa3:1-80';

--
-- Table structure for table `Referral`
--

DROP TABLE IF EXISTS `Referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Referral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereePhone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseName` enum('Digital_Transformation','Product_Management','Strategic_Product_Management','Data_Analyst','Data_Structures_and_Algorithms','Cyber_Security','Blockchain_Development') COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerNote` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referralCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Referral`
--

LOCK TABLES `Referral` WRITE;
/*!40000 ALTER TABLE `Referral` DISABLE KEYS */;
INSERT INTO `Referral` VALUES (1,'manas','MANAS.AGARWAL1604@GMAIL.COM','manas','kcnjd@kj.com','','Product_Management','','ACC383'),(2,'sdbhjb','sdjhcb@kcds.com','jshcjh','jhsdc@ksjc.co','','Digital_Transformation','','ACC798'),(3,'dsjhb','shdcb@jnc.com','js','h2@sj.com','','Cyber_Security','','ACC4313'),(4,'sdkjn','ksjncskjn@jknc.o','sjkdc','kjsdc@c.com','','Data_Structures_and_Algorithms','','ACC3878'),(5,'manas','manas@ac.com','sdskcjnd','kjc@jnc.com','','Data_Structures_and_Algorithms','','ACC2687'),(6,'dcnj','jck@dc.com','kjcn','jnsdc@c.m','','Data_Structures_and_Algorithms','','ACC2351'),(7,'jknj','jkndc@c.c','jkncs','kjn@c.c','','Data_Structures_and_Algorithms','','ACC4723'),(8,'jkn','kjndc@kjnc.com','kjc','js@c.co','','Data_Analyst','','ACC3552'),(9,'manas','masn@cd.com','sldc','kjsn@sdsc.com','','Product_Management','','ACC6900'),(10,'kajnjk','jknckj@jkc.com','jksdncjk','kjc@jskdc.com','','Strategic_Product_Management','','ACC171'),(11,'ksdnc','kjnk@jksdc.com','kjdnc','jkncs@jndc.com','','Strategic_Product_Management','','ACC3028'),(12,'sdnj','jnc@jscs.com','jsknc','skjdc@jndc.com','','Strategic_Product_Management','','ACC8749');
/*!40000 ALTER TABLE `Referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('7e443931-7400-4596-b120-3c003d1b665c','4c7666df0ff909f5222d3e8233c368e2cdd7677cf56d75c9dc0403b2287eba54','2025-02-26 05:55:57.373','20250226055556_init',NULL,NULL,'2025-02-26 05:55:56.990',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-26 12:26:19
