-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: monster
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Desi','dessi_ii@abv.bg','test',1),(2,'Ivan','ivan@abv.bg','password',1),(3,'Десислава Панчева11','dessi_ii@abv.bgj','password1',1),(4,'Десислава Панчева11','dessi_ii@abv.bg1','password11',1),(5,'Десислава Панчева11','dessi_ii@abv.bgff','password111',1),(6,'Десислава Панчева11','dessi_ii@abv.bgff','password111',1),(7,'jjjjjjjjjjj','jjjjjjj','jj',1),(8,'vv','vv','vv',1),(9,'vv','vv','vv',1),(10,'ii','ii','ii',1),(11,'w','w','w',1),(12,'3','3','3',1),(13,'5','5','5',2),(14,'п','п','п',1),(15,'п','п','п',1),(16,'n','n','n',1),(17,'3','3','3',2),(18,'admin','dessi_ii@abv.bg','test',0),(19,'user','dessi@abv.bg','test',1),(20,'admin','dessi_ii@abv.bg','test',0),(21,'admin','dessiii@abv.bg','test',0),(22,'Десислава Панчева','dessiii@abv.bg','test',1),(23,'Десислава Панчева','dessi@abv.bg','test',2),(24,'dessi_ii','dessi_ii@abv.bg','test',2),(25,'admin','dessiii@abv.bg','test',0),(26,'user','dessi@abv.bg','test',1),(27,'admin','dessiii@abv.bg','test',0),(28,'Десислава Панчева','dessi_ii@abv.bg','test',1),(29,'dessiii','dessiii@abv.bg','test',2),(30,'admin','des@abv.bg','1',0),(31,'user','desss@abv.bg','2',1),(32,'dessi_ii','dessi_ii@abv.bg','test',2),(33,'dessi_ii','dessi_ii@abv.bg','test',2),(34,'dessi_ii','desss@abv.bg','2',1),(35,'user','desss@abv.bg','2',1),(36,'admin','des@abv.bg','1',0),(37,'admin','des@abv.bg','1',0),(38,'user','desss@abv.bg','2',1),(39,'user','desss@abv.bg','2',1),(40,'admin','des@abv.bg','1',0),(41,'admin','d@abv.bg','1',0),(42,'user','de@abv.bg','2',1),(43,'dessi_ii','dessi_ii@abv.bg','test',2);
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

-- Dump completed on 2020-06-01 13:29:08
