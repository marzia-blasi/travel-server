-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `text` TEXT NOT NULL,
  `img` VARCHAR(255) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `text`, `img`) VALUES
(1, 'Colle del Leone', 'In partenza da Colle del leone per il sentiero che passa attraverso il cantiere della forestale, volevamo arrivare al punto di belvedere ma siamo stati costretti a fermarci prima, avendo incontrato dei cani pastori poco amichevoli con i loro greggi', 'post1.jpg'),
(2, 'Fontana di Don Giovanni', 'In partenza da Colle del Leone il percorso è su mulattiera con pendenza quasi subito dolce costante. Al Bivio di Prato del Leone si va a destra con alcuni tratti in leggera salita in destra orografica del vallone. Successivamente si scende nel vallone dove si trova la Fontana di Don Giovanni. Si sale verso la sella che si trova difronte alla fontana e si scende verso la fiumara su un sentiero a tornanti. La discesa è facile pur se con pendenza apprezzabile addolcita dai tornanti. Un salto d’acqua nei pressi di un recinto di salvaguardia ad opere di captazione, può essere il luogo per effettuare una sosta contemplativa. La vegetazione, scarsa nel tratto di Prato del Leone, e la fauna, è quella tipica dei Monti Picentini.', 'post2.jpg'),
(3, 'Fiumara di Tannera', 'abbiamo continuato il percorso chiudendo ad anello salendo per la Fiumara della Tannera', 'post2.jpg');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `posts_id` BIGINT NOT NULL,
  `title` VARCHAR(200) NOT NULL,
  `text` TEXT NOT NULL,
  `img` VARCHAR(255) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_post` (`posts_id`),
  CONSTRAINT `fk_post` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` (`id`, `posts_id`, `title`, `text`, `img`) VALUES
(1, 1, 'Fiore', 'Ho quasi rischiato di schiacciarlo ', 'detail1.jpg'),
(2, 1, 'Ciclamini', 'Fa sempre piacere trovarne sui sentieri, ma sarebbero stagionali a settembre, purtroppo il clima sta impazzendo anche in montagna', NULL),
(3, 2, 'Mucche', 'Inseparabili compagne di viaggio, a Laceno camminano libere, non hanno bisogno dei cani pastori a differenza delle pecore', 'detail2.jpg');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-19
