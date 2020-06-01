-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fatcat
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
  `fname` varchar(156) NOT NULL,
  `lname` varchar(156) NOT NULL,
  `email` varchar(156) NOT NULL,
  `address` varchar(156) DEFAULT NULL,
  `mobile` varchar(156) DEFAULT NULL,
  `password` varchar(156) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Desislava','Pancheva','dessi_ii@abv.bg','Berkovitsa','888262932','password'),(2,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(3,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(4,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(5,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(6,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(7,'Todor','Ivanov','toni_ii@abv.bg','Sofia','888262933','password'),(8,'hhhhhh','hhhhhhhhhhhhh','hhhhhhhhhh','hhhhhhhhhhh','hhhhhhhhhh','password'),(9,'Dragan','Petkanov','dessi_ii@abv.bgii','Ул. Тракия 5','0888262938','password'),(10,'ssssssssssss','sssssssssssss','ssssssssssssssss','ssssssssssss','ssssssssssssssss','password'),(11,'ffffffffff','fffffffffffffffff','ffffffffffffffffff','fffffffffffffffffff','fffffffffffffff','password'),(12,'dddddddddddddd','ddddddddddddd','dddddddddddddddd','ddddddddddddddd','ddddddddddddd','password'),(13,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(14,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(15,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(16,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(17,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(18,'есислава','анчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(19,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932',''),(20,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password'),(21,'Десислава','Панчева','dessi_ii@abv.bg','Ул. Тракия 5','0888262932','password');
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

-- Dump completed on 2020-06-01 13:29:09
