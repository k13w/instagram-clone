-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	8.0.17

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hashtags` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (61,'Gilmar Silva','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:37:19','2019-08-18 11:37:19'),(62,'Gilmar Silva','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:39:17','2019-08-18 11:39:17'),(63,'Gilmar Silva','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:39:43','2019-08-18 11:39:43'),(64,'burro','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:40:10','2019-08-18 11:40:10'),(65,'burro','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:41:09','2019-08-18 11:41:09'),(66,'burro','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:42:41','2019-08-18 11:42:41'),(67,'burro','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:43:07','2019-08-18 11:43:07'),(68,'burro','Macaíba','Uma foto massa!','#bunda','4269bfc6f1c8004420c210457d8854b6-asssim.png',0,'2019-08-18 11:43:51','2019-08-18 11:43:51'),(69,'burro','Macaíba','Uma foto massa!','#bunda',NULL,0,'2019-08-18 11:51:41','2019-08-18 11:51:41'),(70,'burro','Macaíba','Uma foto massa!','eliot',NULL,0,'2019-08-18 11:52:04','2019-08-18 11:52:04'),(71,'burro','Macaíba','Uma foto massa!','eliot',NULL,0,'2019-08-18 11:53:07','2019-08-18 11:53:07'),(72,'burro','Macaíba','Uma foto massa!','eliot',NULL,0,'2019-08-18 11:53:43','2019-08-18 11:53:43'),(73,'burro','Macaíba','Uma foto massa!','eliot',NULL,0,'2019-08-18 11:54:21','2019-08-18 11:54:21'),(74,'burro','Macaíba','Uma foto massa!','eliot',NULL,0,'2019-08-18 12:00:36','2019-08-18 12:00:36'),(75,'burro','Macaíba','Uma foto massa!','eliot','https://instagram-upload-js.s3.amazonaws.com/610daec92634fe2411800d1923d6eec1-21150029_863152487165769_5449332290062449694_n.jpg',0,'2019-08-18 12:02:38','2019-08-18 12:02:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-18 20:21:36
