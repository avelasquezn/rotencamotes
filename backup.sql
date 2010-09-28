-- MySQL dump 10.13  Distrib 5.1.42, for mandriva-linux-gnu (i586)
--
-- Host: localhost    Database: rotencamotes_development
-- ------------------------------------------------------
-- Server version	5.1.42

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'angel@xendacentral.com','4363f67f127c4144fcd9167678112540f7d3459f','4NFXNfW-GbOEF4Lou1hV',NULL,NULL,NULL,NULL,'MbfI8k62NVcj2-w9gEoB','2010-09-17 15:39:07',11,'2010-09-27 18:55:43','2010-09-25 13:32:33','127.0.0.1','127.0.0.1','2010-09-16 19:58:33','2010-09-27 18:55:43');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Test Ad','New','This is the content','2010-09-15 05:00:00',NULL,'arriba del título','2010-09-03 03:14:05','2010-09-03 03:14:05');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `attachable_id` int(11) DEFAULT NULL,
  `attachable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,1,0,'Photo','2010-09-08 01:34:38','2010-09-08 01:34:38'),(2,1,0,'Video','2010-09-08 01:44:54','2010-09-08 01:44:54');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_categories`
--

DROP TABLE IF EXISTS `award_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_categories`
--

LOCK TABLES `award_categories` WRITE;
/*!40000 ALTER TABLE `award_categories` DISABLE KEYS */;
INSERT INTO `award_categories` VALUES (1,'Best Actor','2010-09-03 03:54:36','2010-09-03 03:54:36'),(2,'Mejor mezcla de sonido','2010-09-18 08:00:20','2010-09-18 08:00:20'),(3,'Mejor Director','2010-09-18 08:13:01','2010-09-18 08:13:01');
/*!40000 ALTER TABLE `award_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_institutions`
--

DROP TABLE IF EXISTS `award_institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `bio` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_institutions`
--

LOCK TABLES `award_institutions` WRITE;
/*!40000 ALTER TABLE `award_institutions` DISABLE KEYS */;
INSERT INTO `award_institutions` VALUES (1,'The Academy of Motion Picture Arts and Sciences','he Academy of Motion Picture Arts and Sciences is the world’s preeminent movie-related organization, with a membership of more than 6,000 of the most accomplished men and women working in cinema.\r\n\r\nAlthough best known for its annual Oscar telecast, the Academy is involved in a wide array of education, outreach, preservation and research activities.','Founded in 1927 by 36 of the most influential men and women in the motion picture industry at the time, the Academy is an honorary membership organization whose ranks now include more than 6,000 artists and professionals.\r\n\r\nDedicated to the advancement of the arts and sciences of motion pictures, the Academy’s corporate management and general policies are overseen by a Board of Governors, which includes representatives from each of the craft branches.\r\n','http://www.oscars.org/','academy_logo.jpg','image/jpeg',106134,'2010-09-18 07:45:12','2010-09-03 04:36:20','2010-09-18 07:45:13'),(2,'London Film Critics Association','The Critics’ Circle, which makes an annual award for Services to the Arts (see the banner above), is comprised of five sections: Dance, Art and Architecture, Drama, Film and Music. The aims are to promote the art of criticism, to uphold its integrity in practice, to foster and safeguard members’ professional interests, to provide opportunities to meet, and to support the advancement of the arts. Admission to membership is by invitation of the Circle. Currently there are some 430 members, mostly from the UK, the majority of whom write regularly for national and regional newspapers and magazines.','The Critics’ Circle is the oldest critics organisation  in the world and to date has over 400 members who work in the media through the United Kingdom. It is not a trade union but a professional association of critics of drama, art and architecture, music, the cinema and dance. As such it has no power but plenty of prestige and not a little influence. Its objects are to promote the arts of criticism and to upholds its integrity in practice, to foster and safeguard the interests of its members, to provide opportunities for social intercourse among them, and to support the advancement of the arts, Admission to membership is by invitation of the Council, who in assessing the qualifications of a candidate are influenced though not bound by the recommendations of the Circle’s competent Sections.','http://criticscircle.org.uk/','london_film_critics_circle_logo.jpg','image/jpeg',17327,'2010-09-18 08:09:57','2010-09-18 08:09:57','2010-09-18 08:09:57');
/*!40000 ALTER TABLE `award_institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `year_received` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,1,2,2008,'Nominado(a)',NULL,1,'2010-09-18 08:03:14','2010-09-18 08:03:14'),(2,2,3,2008,'Nominado(a)',6,1,'2010-09-18 08:16:56','2010-09-18 08:16:56');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_images`
--

DROP TABLE IF EXISTS `blog_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_images`
--

LOCK TABLES `blog_images` WRITE;
/*!40000 ALTER TABLE `blog_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_file_size` int(11) DEFAULT NULL,
  `banner_updated_at` datetime DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `posts_count` int(11) DEFAULT NULL,
  `visits_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Your Movies.com Man at the Multiplex','movie_update','j0428574.jpg','image/jpeg',120999,'2010-09-22 23:10:40',NULL,1,1,1,NULL,'2010-09-03 15:14:31','2010-09-22 23:10:41',1,'Dave White\'s first movie review was of the animated feature Snoopy Come Home. He was seven years old and declared it a masterpiece. Sadly for film history, that review was never published. Since then he has written about movies for IFILM.com, E! Online and MSNBC.com and The Advocate. He\'s also the author of the book Exile in Guyville and believes that if you\'re not hiding from real life in dark movie theaters then you\'re not really living.\r\n\r\nDave\'s favorite films: Vertigo, The Godfather, I Drink Your Blood, Au hasard Balthazar, Destroy All Monsters and a few hundred others. Find him on Facebook at: http://www.facebook.com/dlelandwhite Follow him on Twitter at: http://twitter.com/dlelandwhite'),(2,'blog of Lueilwitz','blog-of-lueilwitz',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:09','2010-09-19 13:45:05',2,NULL),(3,'blog of Gleichner','blog-of-gleichner',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:09','2010-09-19 13:45:05',3,NULL),(4,'blog of Kunze','blog-of-kunze',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:09','2010-09-19 13:45:05',4,NULL),(5,'blog of Rempel','blog-of-rempel',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',5,NULL),(6,'blog of Koelpin','blog-of-koelpin',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',6,NULL),(7,'blog of Ratke','blog-of-ratke',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',7,NULL),(8,'blog of Bartell','blog-of-bartell',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',8,NULL),(9,'blog of Runolfsdottir','blog-of-runolfsdottir',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',9,NULL),(10,'blog of Hegmann','blog-of-hegmann',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:10','2010-09-19 13:45:05',10,NULL),(11,'blog of Kozey','blog-of-kozey',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:11','2010-09-19 13:45:05',11,NULL),(12,'blog of Legros','blog-of-legros',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:11','2010-09-19 13:45:05',12,NULL),(13,'blog of Davis','blog-of-davis',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:50:11','2010-09-19 13:45:05',13,NULL),(14,'blog of Satterfield','blog-of-satterfield',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:09','2010-09-19 13:45:06',14,NULL),(15,'blog of Boyer','blog-of-boyer',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:09','2010-09-19 13:45:06',15,NULL),(16,'blog of McLaughlin','blog-of-mclaughlin',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:09','2010-09-19 13:45:06',16,NULL),(17,'blog of Herzog','blog-of-herzog',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:10','2010-09-19 13:45:06',17,NULL),(18,'blog of Dach','blog-of-dach',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:10','2010-09-19 13:45:06',18,NULL),(19,'blog of Nicolas','blog-of-nicolas',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:10','2010-09-19 13:45:06',19,NULL),(20,'blog of Hoppe','blog-of-hoppe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:35','2010-09-19 13:45:06',12,NULL),(21,'blog of Little','blog-of-little',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2010-09-09 18:52:35','2010-09-19 13:45:06',18,NULL),(22,'blog of White','blog-of-white',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2010-09-09 18:52:36','2010-09-19 13:45:06',25,NULL),(23,'blog of Hackett','blog-of-hackett',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2010-09-09 18:52:36','2010-09-19 13:45:06',26,NULL),(24,'Your Movies.com Man at the Multiplex','blog-of-balistreri','thecritic.jpg','image/jpeg',13164,'2010-09-19 13:15:27',NULL,1,1,2,NULL,'2010-09-09 18:52:37','2010-09-19 13:45:06',30,'Dave White\'s first movie review was of the animated feature Snoopy Come Home. He was seven years old and declared it a masterpiece. Sadly for film history, that review was never published. Since then he has written about movies for IFILM.com, E! Online and MSNBC.com and The Advocate. He\'s also the author of the book Exile in Guyville and believes that if you\'re not hiding from real life in dark movie theaters then you\'re not really living.\r\n\r\nDave\'s favorite films: Vertigo, The Godfather, I Drink Your Blood, Au hasard Balthazar, Destroy All Monsters and a few hundred others. Find him on Facebook at: http://www.facebook.com/dlelandwhite Follow him on Twitter at: http://twitter.com/dlelandwhite'),(25,'blog of Kuhlman','blog-of-kuhlman',NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2010-09-09 18:52:39','2010-09-19 13:45:06',53,NULL),(26,'blog of Skiles','blog-of-skiles',NULL,NULL,NULL,NULL,NULL,NULL,1,2,NULL,'2010-09-09 18:52:40','2010-09-19 13:45:06',73,NULL),(27,'blog of Rolfson','blog-of-rolfson',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2010-09-09 18:52:42','2010-09-19 13:45:06',97,NULL),(28,'blog of Aufderhar','blog-of-aufderhar',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'2010-09-09 18:52:42','2010-09-19 13:45:06',99,NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brain_busters`
--

DROP TABLE IF EXISTS `brain_busters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brain_busters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brain_busters`
--

LOCK TABLES `brain_busters` WRITE;
/*!40000 ALTER TABLE `brain_busters` DISABLE KEYS */;
INSERT INTO `brain_busters` VALUES (1,'What is two plus two?','4'),(2,'What is the number before twelve?','11'),(3,'Five times two is what?','10'),(4,'Insert the next number in this sequence: 10, 11, 12, 13, 14, ??','15'),(5,'What is five times five?','25'),(6,'Ten divided by two is what?','5'),(7,'What day comes after Monday?','tuesday'),(8,'What is the last month of the year?','december'),(9,'How many minutes are in an hour?','60'),(10,'What is the opposite of down?','up'),(11,'What is the opposite of north?','south'),(12,'What is the opposite of bad?','good'),(13,'Complete the following: \'Jack and Jill went up the ???','hill'),(14,'What is 4 times four?','16'),(15,'What number comes after 20?','21'),(16,'What month comes before July?','june'),(17,'What is fifteen divided by three?','5'),(18,'What is 14 minus 4?','10'),(19,'What comes next? \'Monday Tuesday Wednesday ?????\'','thursday');
/*!40000 ALTER TABLE `brain_busters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Opiniones y críticas','General','2010-09-03 02:59:46','2010-09-19 13:03:27',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,'angel@xendacentral.com','Angel Velasquez','http:/idontknow.com',1,NULL,'Hey testing the comments!','active',NULL,'2010-09-10 21:23:36','2010-09-10 21:23:36',NULL),(2,1,'angel@xendacentral.com','Angel Velasquez','http://whereiam.com',1,NULL,'Hey, great post','active',NULL,'2010-09-10 21:38:11','2010-09-10 21:38:11',NULL),(3,1,'angel@xendacentral.com','Angel Velasquez','http://nowwhat.com',1,NULL,'Surprise!','active',NULL,'2010-09-10 22:19:52','2010-09-10 22:19:52',NULL),(4,3,'angel@xendacentral.com','Angel Velasquez','',1,NULL,'heheheheh','active',NULL,'2010-09-19 23:32:09','2010-09-19 23:32:09',NULL),(5,3,'demo@hotmail.com','Mi Nombre','http://i.com',NULL,NULL,'Comentario','active',NULL,'2010-09-21 16:45:30','2010-09-21 16:45:30',NULL),(6,13,'me@mydomain.com','Me',NULL,NULL,NULL,'Test comment',NULL,NULL,'2010-09-27 15:14:49','2010-09-27 15:14:49',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_links`
--

DROP TABLE IF EXISTS `external_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_links`
--

LOCK TABLES `external_links` WRITE;
/*!40000 ALTER TABLE `external_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Acción','2010-09-16 20:02:12','2010-09-17 21:19:29'),(2,'Aventura','2010-09-16 20:02:19','2010-09-17 21:19:38'),(3,'Ciencia ficción','2010-09-16 20:02:28','2010-09-17 21:19:53'),(4,'Comedia','2010-09-17 21:21:36','2010-09-17 21:21:36'),(5,'Animación','2010-09-17 21:22:06','2010-09-17 21:22:06'),(6,'Biografía','2010-09-17 21:22:27','2010-09-17 21:22:27'),(7,'Crimen','2010-09-17 21:22:47','2010-09-17 21:22:47'),(8,'Documental','2010-09-17 21:23:05','2010-09-17 21:23:05'),(9,'Drama','2010-09-17 21:23:15','2010-09-17 21:23:15'),(10,'Familiar','2010-09-17 21:23:30','2010-09-17 21:23:30'),(11,'Fantasía','2010-09-17 21:24:09','2010-09-17 21:24:09'),(12,'Historia','2010-09-17 21:24:45','2010-09-17 21:24:45'),(13,'Horror','2010-09-17 21:24:55','2010-09-17 21:24:55'),(14,'Musical','2010-09-17 21:25:14','2010-09-17 21:25:14'),(15,'Misterio','2010-09-17 21:25:32','2010-09-17 21:25:32'),(16,'Romántica','2010-09-17 21:25:57','2010-09-17 21:25:57'),(17,'Thriller','2010-09-17 21:26:18','2010-09-17 21:26:18'),(18,'Guerra','2010-09-17 21:26:47','2010-09-17 21:26:47'),(19,'Western','2010-09-17 21:27:01','2010-09-17 21:27:01');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_chains`
--

DROP TABLE IF EXISTS `movie_chains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_chains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_chains`
--

LOCK TABLES `movie_chains` WRITE;
/*!40000 ALTER TABLE `movie_chains` DISABLE KEYS */;
INSERT INTO `movie_chains` VALUES (1,'Cinemark Perú','s/n','Cinemark es una cadena global de multicines que opera en Estados Unidos, Canadá, México, El Salvador, Nicaragua, Guatemala, Panamá, Costa Rica, Honduras, Colombia, Ecuador, Brasil, Argentina, Chile, Taiwán y Perú, expandiéndose año tras año en los Estados Unidos y el extranjero, en estos mercados donde ocupamos posiciones de liderazgo, ocupando la primera o segunda posición en la mayoría de ellos.','2010-09-07 17:02:29','2010-09-17 16:10:19','cinemark_logo.jpg','image/jpeg',123994,'2010-09-17 16:10:17'),(2,'UVK Multicines','s/n','UVK Multicines es una empresa peruana dedicada a brindar el mejor entretenimiento cinematografico.\r\n','2010-09-07 17:08:39','2010-09-17 16:24:52','uvk_logo.jpg','image/jpeg',9021,'2010-09-17 16:24:52'),(4,'Cineplanet','','CinePlanet es una empresa peruana dedicada a la operación de complejos cinematográficos y exhibición de películas que inicio operaciones en Julio del 2000. Actualmente, es la cadena de multicines líder en número de salas, espectadores y recaudación. Con siete años de operación, cuenta con 16 complejos en Lima, cinco en provincias (1 en Arequipa, 1 en Piura, 1 en Chiclayo y 2 en Trujillo), lo cual suman 127 pantallas.\r\n\r\nLa historia de CinePlanet empieza, a mediados de 1998, con una idea originada por tres jóvenes peruanos, quienes, luego de terminar su postgrado en Wharton University, decidieron regresar al Perú para identificar oportunidades de inversión y desarrollar nuevos proyectos.\r\n\r\nNexus Group, empresa peruana formada por estos jóvenes, identificó una fuerte necesidad en el rubro entretenimiento, en Lima y las principales ciudades del Perú. La industria del cine fue seleccionada como una industria con elevado potencial de crecimiento, considerando que el número de espectadores había caído de 16 millones en 1981 a 3 millones en 1995.\r\n\r\nEn el año 1999 Nexus Group (empresa del Grupo Interbank) adquiere la cadena de cines Cineplex, empresa que operaba hasta la fecha tres complejos de cine ubicados en los distritos de San Miguel, Centro de Lima (Cine Adán y Eva) y Miraflores (Cine Alcázar). A partir de esta adquisición, el grupo decide reclutar un staff gerencial, experto en el rubro de servicios, con el objetivo de crear una empresa orientada al cliente y sus colaboradores, desarrollando una cultura basada en valores.\r\n\r\nEn Mayo de 2005, como parte de su estrategia de expansión regional, CinePlanet ingresa al mercado chileno bajo la marca Movieland. En la primera etapa, la puesta en marcha de Movieland ha sido en la ciudad de Santiago, Valdivia y Temuco, inaugurando a la fecha 04 complejos. CinePlanet tiene planeado seguir llevando la experiencia del cine a mucho más zonas de Lima y Provincias que no cuenten con esta alternativa de entretenimiento.','2010-09-17 16:33:23','2010-09-17 16:33:23','cineplanet_logo.gif','image/gif',9892,'2010-09-17 16:33:22'),(5,'Multicines Cinestar','s/n','La cadena de CINES STAR es pionera en el nuevo formato de multicines en el Perú, la idea surgió hace 30 años con un inversionista proveniente de La India, quien optó por apostar por el Perú y revolucionar el mercado a fuerza de constancia y trabajo, con nuevas tendencias, tanto en construcción como en atención al cliente. Así fue como en 1990, logró comprar su primera sala de cine, el Cine Excelsior, ubicado en el corazón del Centro de Lima (el Jirón de la Unión).  Más tarde, adquiriría los cines Aviación (San Borja), Benavides (Surco), Las Américas (Jesús María), Porteño (El Callao) y La Victoria, conformando así la Cadena de CINES STAR.\r\n\r\nA finales del año 1995, se realizó una remodelación total de las viejas instalaciones del Cine Excelsior, hecho que abrió la posibilidad de tener en la ciudad un nuevo complejo cinematográfico con multipantallas.\r\nLa preocupación por atender nuevos mercados motivó a CINE STAR a expandir su visión hacia nuevos distritos en pujante desarrollo. Entre los años 2003 y 2004, La cadena de CINES STAR incrementó su capacidad de salas cinematográficas con dos importantes proyectos: Cine Star Sur (en San Juan de Miraflores) y Cine Star Metro San Juan (en San Juan de Lurigancho, la zona este de Lima), de 6 y 7 salas respectivamente. Por último, el 28 de junio del 2005 tiene lugar la apertura de Cine Star Metro UNI, en el Rímac y finalmente, en mayo del 2007 se inauguró Cine Star Metro Breña, que es el más moderno de la cadena.\r\nLa construcción de estos multicines representa una nueva fase para los Cines Star, los cuales hoy en día se han convertido en complejos multipantallas de moderno y atractivo diseño, con tecnología de punta y máxima comodidad, ya que sus salas cuentan con cómodas butacas tipo estadio, que permiten una perfecta visión desde cualquier ángulo de la sala y una capacidad mayor a las 1200 personas, quienes disfrutan de los estrenos cinematográficos en tiempo real con los estrenos mundiales y con el mejor sonido Digital Dolby System y DTS (Digital Theatre System). El soporte técnico se complementa con un ambiente climatizado y un sistema de iluminación especialmente diseñado para estas salas, para ofrecer al espectador un ambiente de calidez y confort.\r\n\r\nActualmente Cine Star da trabajo a cientos de peruanos y se compromete en seguir apostando por el Perú.','2010-09-17 16:47:13','2010-09-17 16:47:13','cinestar_logo.jpg','image/jpeg',5820,'2010-09-17 16:47:13');
/*!40000 ALTER TABLE `movie_chains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_characters`
--

DROP TABLE IF EXISTS `movie_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `character_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_characters`
--

LOCK TABLES `movie_characters` WRITE;
/*!40000 ALTER TABLE `movie_characters` DISABLE KEYS */;
INSERT INTO `movie_characters` VALUES (1,5,2,'Tony Stark','2010-09-17 20:01:50','2010-09-17 20:01:50'),(2,5,3,'Ivan Vanko','2010-09-17 22:23:17','2010-09-17 22:23:17'),(3,5,4,'Happy Hogan','2010-09-18 06:22:54','2010-09-18 06:22:54'),(4,1,5,'Bruce Wayne','2010-09-18 07:33:57','2010-09-18 07:33:57');
/*!40000 ALTER TABLE `movie_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
INSERT INTO `movie_directors` VALUES (1,5,4,'2010-09-18 06:38:02','2010-09-18 06:38:02'),(2,1,6,'2010-09-18 08:17:51','2010-09-18 08:17:51');
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1,1,'2010-09-16 20:03:29','2010-09-16 20:03:29'),(2,1,2,'2010-09-16 20:03:29','2010-09-16 20:03:29'),(3,1,3,'2010-09-16 20:03:29','2010-09-16 20:03:29'),(4,5,1,'2010-09-17 22:12:41','2010-09-17 22:12:41'),(5,5,2,'2010-09-17 22:12:41','2010-09-17 22:12:41'),(6,5,3,'2010-09-17 22:12:41','2010-09-17 22:12:41'),(7,3,1,'2010-09-27 22:01:32','2010-09-27 22:01:32'),(8,3,2,'2010-09-27 22:01:32','2010-09-27 22:01:32'),(9,3,3,'2010-09-27 22:01:32','2010-09-27 22:01:32'),(10,3,5,'2010-09-27 22:01:32','2010-09-27 22:01:32'),(11,4,1,'2010-09-27 22:04:58','2010-09-27 22:04:58'),(12,4,2,'2010-09-27 22:04:58','2010-09-27 22:04:58'),(13,4,3,'2010-09-27 22:04:58','2010-09-27 22:04:58'),(14,4,5,'2010-09-27 22:04:58','2010-09-27 22:04:58');
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_writers`
--

DROP TABLE IF EXISTS `movie_writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_writers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_writers`
--

LOCK TABLES `movie_writers` WRITE;
/*!40000 ALTER TABLE `movie_writers` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_writers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `synopsis` text COLLATE utf8_unicode_ci,
  `released_at` datetime DEFAULT NULL,
  `lenght` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpaa_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `studio_id` int(11) DEFAULT NULL,
  `community_score` decimal(5,2) DEFAULT '0.00',
  `experts_score` decimal(5,2) DEFAULT '0.00',
  `final_score` decimal(5,2) DEFAULT '0.00',
  `banner_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_file_size` int(11) DEFAULT NULL,
  `banner_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Batman: The Dark Knight','The Dark Knight (titulada Batman: el caballero de la noche en Hispanoamérica y El caballero oscuro en España) es una película estadounidense dirigida y co-escrita por Christopher Nolan y basada en uno de los personajes de DC Comics, Batman. \r\nSe trata de una secuela de la película de 2005 Batman Begins, dirigida también por Nolan, que reinaugura los derechos de Warner sobre Batman, tratando de lograr una versión más realista y que difiere de la primera por tener una mayor apego a situaciones cotidianas que envuelven al público en la trama. El director Nolan vuelve a asumir las labores en la dirección, y Christian Bale retoma el papel protagónico. \r\nEn esta segunda entrega fílmica puede apreciarse la aparición de su principal némesis: El Joker (el Guasón, en la traducción mexicana para América), interpretado por el actor australiano Heath Ledger. Este filme es la tercera película más taquillera de la historia del cine en Estados Unidos, recaudando más de 1000 millones de dólares.','La película comienza con el violento robo de uno de los bancos de la mafia por una banda de payasos, pero los asaltantes desconocen que entre ellos se encuentra el Joker (el Guasón en Hispanoamérica), quien les había ordenado traicionarse y asesinarse unos a otros con la finalidad de repartir entre menos el botín. Finalmente el Joker asesina al último de sus cómplices y escapa en un autobús escolar. Mientras tanto, un trío de imitadores de Batman intenta interrumpir una reunión de traficantes con El Espantapájaros (Dr. Jonathan Crane), cuando de pronto Batman aparece y aprehende a todos los delincuentes junto con los impostores, pero sufre lesiones que le conducen a diseñar un traje nuevo que le permita mayor movilidad.\r\n\r\nMás tarde, Batman y el teniente James Gordon contemplan la posibilidad de incluir al nuevo fiscal de distrito, Harvey Dent en su plan para combatir a la mafia, como el héroe público que Batman no puede ser, al tiempo que Bruce descubre que Dent es el nuevo novio de Rachel Dawes.\r\n\r\nMientras en las Empresas Wayne, Lucius Fox hace negocios con Lau, un prestigioso empresario chino pero el enorme éxito de su empresa hace sospechar hasta al mismo Bruce quien le pide a Fox cancelar el trato de asociación con él no sin antes revisar los libros de su empresa.\r\n\r\nMientras tanto, los jefes de la mafia se reúnen para discutir sobre qué harán con Batman, Gordon y el nuevo fiscal, Dent. En ese momento Lau les informa que la policía pretendía confiscar todo el dinero que guardaban en los bancos de la ciudad, pero que él se había anticipando al plan de Gordon, escondiéndolo. De pronto, la reunión es interrumpida por el Joker quien se ofrece para matar a Batman a cambio de la mitad de su dinero, los maleantes rechazan la oferta.\r\n\r\nLau que ha huido a Hong Kong es secuestrado por Batman y entregado a la policía de Gotham y mantenido en la Comisaría Central por el temor de lo que pudiera ocurrirle en la prisión. Lau negocia su testimonio en tanto pueda conservar el dinero de la mafia para si mismo. En este punto y con sus fondos en peligro, la mafia acepta contratar al Joker.\r\n\r\nLuego de tomar los recursos y el apoyo de la mafia, el primer movimiento del Joker es asesinar a uno de los imitadores de Batman y comunicar a Gotham que si Batman no se entrega a la policía, irá asesinando gente cada día siendo algunas de las víctimas el Comisionado Loeb y la Juez Sorello quién anteriormente había condenado varios centenares de mafiosos gracias al testimonio de Lau. El Comisionado y la juez son asesinados por policías al servicio del Joker y Dent quien se encontraba en una fiesta ofrecida por Wayne sale ileso al ser salvado por su anfitrión. Ante la escalada de violencia y el intento de asesinato del Alcalde durante el cual el Teniente Gordon es dado por muerto, Bruce Wayne decide entregarse y, como Batman, se lo comunica a Dent, pidiéndole que convoque una rueda de prensa.\r\n\r\nWayne acude a la rueda de prensa solo y ve cómo Dent anuncia que él es en realidad Batman para que el verdadero no caiga preso. El Joker, aparentemente muerde el anzuelo e intenta emboscar el convoy de la policía que transporta a Dent, pero Batman y Gordon intervienen y logran detener al Joker. Gordon es ascendido a Comisionado.\r\n\r\nYa una vez en la estación de policía, Batman interroga al Joker, que revela (no sin antes sacar a Batman de sus casillas) que Dawes y Dent han sido secuestrados y llevados a lugares opuestos de la ciudad y encerrados en almacenes repletos de explosivos. El objetivo del Joker es que Batman no pueda salvar a ambos y tenga que elegir. Batman decide tratar de salvar a Dawes, mientras que Gordon, recientemente ascendido a Comisionado va a rescatar a Dent. Sin embargo, el Joker les ha mentido intercambiando los lugares donde están cautivos de modo que Batman llega donde tiene encerrado a Dent, mientras que Gordon y la policía llegan donde se encuentra Dawes. Mientras tanto, con la ayuda de una bomba que él mismo ha encerrado en el cuerpo de otro preso, el Joker escapa con Lau. En esos momentos Batman llega a la ubicación donde se encuentra Dent a tiempo para salvarlo, pero Dent, quien tratando de escapar ha quedado empapado de gasolina sufre graves quemaduras en el lado izquierdo de su cara tras la explosión. Por otro lado, Gordon no llega a tiempo para salvar a Dawes, quien muere en la explosión tras haberle dicho a Dent vía telefónica que aceptaba casarse con él. En el hospital, Dent es visitado por Gordon y se revela que cuando Harvey estaba en Asuntos Internos era conocido como Dos Caras.\r\n\r\nMientras tanto un empleado de Empresas Wayne ha descubierto la identidad de Batman y aparece en televisión para revelar el secreto, hecho que es interrumpido por un mensaje del Joker en el que anuncia que si este empleado no es asesinado en menos de 60 minutos él volará alguno de los hospitales de la ciudad, lo que desata el caos. Los atentados sobre este empleado se suceden siendo el mismísimo Bruce Wayne el que acaba salvándole la vida mientras el Joker hace explotar el Hospital General de Gotham no sin antes empujar a Harvey Dent a la locura completa y convenciéndole para que empiece una implacable misión de venganza y \"justicia\" para castigar a los corruptos policías y mafiosos que los colocaron a Dawes y a él en los almacenes, así como de Batman y Gordon que al contrario que él no han perdido nada.\r\n\r\nHarvey, ahora llamado Dos Caras empieza su particular vendetta, matando a 5 personas entre ellas un policía corrupto, al jefe de la Mafia Salvatore Maroni (aparentemente) y a su chófer. Eso sí, antes de matarles siempre deja que su moneda de la suerte de antaño decida el destino de sus víctimas.\r\n\r\nPor su parte, el Joker sigue con su agenda e incendia a Lau junto con su mitad del dinero y anuncia al público que cualquier persona que quede en Gotham al anochecer estará sujeta a su ley. Con los puentes y túneles de la ciudad cerrados debido a amenazas de bomba, las autoridades comienzan la evacuación de personas en barco. Sin embargo esto forma parte también del plan maestro del Joker que ha colocado explosivos en dos de los transbordadores, uno lleno de convictos y otro de civiles, y que pretende que se maten entre ellos en un retorcido experimento social mediante el cual pretende demostrar que todo el mundo puede ser empujado al mal. La amenaza del Joker incluye además del hecho de que los pasajeros de un barco destruyan al otro, o él hará volar los dos a medianoche.\r\n\r\nMientras en ambas embarcaciones se discute sobre si hacer explotar al otro ferry o no, Batman localiza al Joker y le impide la destrucción de los transbordadores después de que éstos decidan no destruirse mutuamente. Es entonces cuando el Joker reconoce a Batman como una persona verdaderamente incorruptible, cosa que no puede decirse de Dent, y que su locura se ha desatado sobre la ciudad. El equipo SWAT se hace cargo del Joker después de que éste reconozca que nunca matará a Batman porque le parece divertido, y que estarán haciendo \"esto\" por el resto de sus vidas. Lucius teclea su nombre en la pantalla del invento de Wayne de localización para buscar al Joker violando la intimidad de la gente de la ciudad haciendo que se autodestruya y así evitando que éste renuncia debido a diferencias éticas.\r\n\r\nEn el clímax final, Batman va en busca de Harvey Dent que se encuentra en los restos del edificio donde murió Dawes y donde tiene a la familia de Gordon como rehenes. Este interrumpe la conversación entre Dos Caras y Gordon y empieza una discusión en la que Dent se lamenta de que sólo él ha perdido alguna cosa en esta guerra y Batman le dice que ha sido la víctima elegida por el Joker porque de los tres él era el mejor, el \"Caballero Blanco\" de Gotham que realmente podía ser el héroe que la ciudad necesita. Después de escuchar los argumentos, lo único que consigue Batman es que Dos Caras deje al azar si cada uno tiene que ser o no castigado. El primer lanzamiento decide la suerte de Batman y le dispara en el abdomen, luego se declara a sí mismo inocente y, antes de que pueda determinar el destino del hijo de Gordon, Batman se lanza contra él cayendo ambos desde el edificio al suelo; Dos Caras muere por la caida.\r\n\r\nEntonces, Gordon y Batman hablan del mal que puede hacer en la población y en la guerra contra el crimen que la gente sepa que el \"héroe\" Harvey Dent ha asesinado a 5 personas con lo que Batman decide cargar con las culpas de esas muertes y que el nombre de Harvey quede limpio.\r\n\r\nLa película termina con Gordon destruyendo la Batseñal, y con la policía de Gotham empezando una cacería humana contra Batman.','2008-07-14 05:00:00','152','http://thedarkknight.warnerbros.com/','2010-09-03 00:18:57','2010-09-18 17:51:56','United States','English','PG-13- Parents Strongly Cautioned',NULL,'0.00','0.00','0.00','dark-knight-poster-rules.jpg','image/jpeg',60880,'2010-09-09 17:43:30'),(2,'Inception','Test','Test','2010-01-15 05:00:00','150','http://demomovie.com','2010-09-03 19:30:15','2010-09-09 18:00:33','United States','English','PG-13- Parents Strongly Cautioned',NULL,'0.00','0.00','0.00','inception_poster2.jpg','image/jpeg',136918,'2010-09-09 18:00:32'),(3,'Avatar','','','2010-07-04 05:00:00','','','2010-09-09 17:04:29','2010-09-27 22:01:32','United States','English','PG- Parental Guidance Suggested',NULL,'0.00','0.00','0.00','avatar_poster.jpg','image/jpeg',99221,'2010-09-09 18:01:02'),(4,'Tron Legacy','','','2010-09-09 05:00:00','','','2010-09-09 17:08:08','2010-09-09 18:01:25','United States','English','PG- Parental Guidance Suggested',NULL,'0.00','0.00','0.00','tron-legacy-poster-by-james-white.jpg','image/jpeg',85817,'2010-09-09 18:01:24'),(5,'Ironman 2','Iron Man 2 es una película de superhéroes estrenada el 29 de abril de 2010 en Latinoamérica y el 30 de abril en España. Está basada en el personaje Iron Man . Dirigida por Jon Favreau, escrita por Justin Theroux y protagonizada por Robert Downey Jr.. Esta es la segunda película de una trilogía sobre Iron Man, que también esta comprendida dentro del megaproyecto coral de The Avengers.','En Rusia, Ivan Vanko (Mickey Rourke) mantiene su última conversación con su padre, mientras ven como el multimillonario Tony Stark (Robert Downey Jr) confiesa públicamente su identidad secreta como Iron Man. Ivan completamente perturbado por este suceso, se las arregla para crear una especie de reactor Ark similar al de Iron Man con el cual planea vengarse de Stark, ya que usa uno de los bocetos de trabajo de Stark Industries.\r\n\r\nSeis meses después de haber revelado su identidad como el famoso Iron Man, Tony Stark, ahora con su nueva armadura (Mark IV), se las arregla para restaurar la paz mundial y reinaugurar la Stark Expo en Flushing, New York, siguiendo el legado de su fallecido padre. En dicha Expo, Tony es citado a un comité del senado de los Estados Unidos dirigidos por el senador Stern. El Senado demanda a Stark por la posesión de un arma sofisticada, alegando que es una amenaza para el país, así como también estar aterrados por la posible existencia de replicas de la armadura creadas por terroristas. Justin Hammer (Sam Rockwell), el mayor provedor de armas de Estados Unidos después de la cancelación de la sección bélica de Stark Industries, y James Rhodes (Don Cheadle), este último bajo presion de sus superiores, son llamados a testificar contra Tony. Stark, utilizando su avanzada tecnología, se las arregla para probarle al senado que los supuestos trajes eran en realidad los intentos fallidos de Hammer por replicar el traje, quedando este en verguenza, y que el gobierno está más que a salvo, exclamando que al menos 20 años nadie tendría acceso a su tecnología.\r\n\r\nStark vuelve a su casa de reposo, preocupado porque el Paladio que mantiene funcionando su reactor, y por ende lo mantiene vivo, ahora lo está envenenando lentamente. Jarvis (Voz de Paul Bettany) le recomienda decírselo a Pepper (Gwyneth Paltrow) pero Tony, en lugar de decírselo, asciende a Pepper a directora general de la compañía, ya que Tony ve en ella una digna susesora. Su puesto como secretaria es ocupada por Natalie Rushman (Scarlett Johansson), notaria delegal de Stark Industries.\r\n\r\nDurante una carrera de Fórmula 1 en el Gran Premio de Mónaco del 2009, en la que Stark participa ante la sorpresa de todos, éste recibe un ataque del violento y salvaje Ivan quien se las arregló para crear unos poderosos látigos de energía con los cuales casi asesina al millonario, de no ser por la intervención de Pepper y Happy, quienes le proporcionan su armadura plegable (Mark V) y con ella derrota a Ivan. Más tarde Stark intenta obtener respuestas de parte del recluido Ivan. Tony, de manera sarcástica e inconciente, le recalca los problemas de diseño de su armadura, Vanko se limita a declararle que su padre, Anton Vanko (Yevgeni Lazarev), la razón de su venganza, es la persona por la cual Tony aún está con vida, haciendo referencia al reactor Ark. Tony desmiente las declaraciones del terrorista y abandona la celda para regresar a su casa de reposo.\r\n\r\nJustin Hammer, tras presenciar a Vanko en Monaco, se las arregla para liberarlo y que trabaje para Hammer Industries mejorando las armaduras creadas por Hammer, las cuales, Vanko convierte en androides conocidos como Iron Soldiers (llamados drones por el acento ruso de Ivan), con el fin de convertir a Iron Man en una \"antigüedad\" y de paso proporcionarle a Vanko su oportunidad de vengarse de Stark.\r\n\r\nStark completamente convencido de su inminente muerte por el paladio, siguiendo el consejo de su nueva asistente, inicia una muy imprudente y alborotadora fiesta en la que se embriaga usando el traje de Iron Man. El coronel James Rhodes completamente furioso por la imprudencia de su amigo, aun en su muy delicada situación con el gobierno de los Estados Unidos, decide tomar prestada la armadura Mark II de Iron Man y entablar un combate contra su colega, destruyendo gran parte de la lujosa residencia Stark, convirtiendo a Tony en un peligro para sus amigos y probablemente para sí mismo. James dispuesto a no quedar mal con los superiores del ejército, opta por llevarse la armadura y entregarla a su superior, el mayor Allen (Tim Guinee).\r\n\r\nYa al dia siguiente, Tony se detiene a comer Donas en un local, siendo interrumpido por Nick Fury (Samuel L. Jackson) que le dice que ha estado vigilandolo mediante la agente Rushman (que resulta ser Natasha Rommanoff). Rhodey llega al hangar de la fuerza aerea donde, junto con Allen, presentan la Mark II a Hammer, el cual les ofrece actualizarle el software y añadirle armamento de ultima tecnologia diseñado por Hammer Industries, como ametralladoras y escopetas automáticas (Orígen de War Machine).\r\n\r\nEn casa de Tony, Fury le revela que la clave para curar su envenenamiento esta en usar otro elemento, Tony afirma que ha hecho simulaciones con todos los elementos conocidos, Fury le entrega unos archivos de su padre diciendole que ahí está la clave: entre otras cosas también le revela que su padre fue fundador de S.H.I.E.L.D., cosa que sorprende a Tony, y la razon de porque Vanko quiere matarlo, Tony queda aislado en su casa hasta encontrar la cura, siendo vigilados por la agente Romanoff y el agente Coulson (Clark Gregg).\r\n\r\nRevisando los archivos en su taller, Tony descubre un video de su padre, que le indica que la \"llave del futuro\" esta en una vieja maqueta de la Star Expo de 1974, logra de alguna forma huir de su casa e ir a Stark Industries a buscar la maqueta. Esa Maqueta es la de una \"ciudad ideal del futuro\", Tony la recupera y luego de analizarla descubre la posibilidad de materializar un nuevo elemento, lo hace exitosamente a pesar de tener todo en su contra. Vanko, quien engaño a Hammer para que lo encerrara en el laboratorio, llama a Tony por telefono, a pesar de que Natasha bloqueo su número, y le informa que le hara lo mismo que su padre le hizo al suyo, esta vez atacando la Stark Expo, Tony, junto con Jarvis, tratan de rastrear a Vanko pero este cuelga antes de que se completara el rastreo. Tony inmediatamente se cambia el reactor Ark con Paladio por el nuevo y parte hacia la Expo.\r\n\r\nMientras en la Stark Expo, Hammer presenta sus nuevos Iron Soldiers (los cuales el llama Hammer-Droides), en sus versiones Ejercito, Armada, Fuerza aerea y Marine, así como la nueva superarmada y modificada Mark II (War Machine), piloteado por James Rhodes, quien fue obligado a asistir por orden del mayor Allen. Justo en ese momento llega Tony con su nueva armadura (Mark VI) advirtiendole a Rhodes que Hammer ha estado trabajando con Vanko, de repente los Iron Soldiers y War Machine, cuyos softwares fueron hakeados por Vanko, empiezan a atacar a Tony, empezando una espectacular persecucion entre Iron Man, War Machine y varios Iron Soldiers mientras los demas Iron Soldiers causan destrozos en la Stark Expo.\r\n\r\nNatasha interroga a Hammer para que le indique el paradero de Vanko, ella y Happy van a su laboratorio para detener a Vanko, el cual los descubre y huye. Luego de una increible demostracion de Natasha, ambos logran llegar a donde se encontraba Vanko y devolverle el control de la armadura a Rhodes que junto a Tony, se enfrentan a varios Iron Soldiers, los cuales derrotan con facilidad. Tras la pelea, inmediatamente llega Vanko con una nueva y avanzada armadura (Whiplash) con la que vence facilmente a Tony y a Rhodes, ambos quedan atrapados por los latigos de Vanko y en una maniobra arriesgada, disparan simultaneamente sus rayos repulsores contra Vanko, destruyendo su armadura.\r\n\r\nTony y Rhodes ven a Vanko tirado en el suelo, derrotado, este como último recurso, activa el sistema de auto-destrucción de su armadura y los Iron Soldiers, Tony y Rhodes escapan. Tony logra salvar milagrosamente a Pepper, después de eso admite sus sentimientos por ella y ambos se besan en una asotea ante la mirada de Rhodes, quien se retira con la armadura a pesar de las quejas de Tony. Dias después en un almacen abandonado Fury y Tony revisan el archivo preliminar de la iniciativa \"Vengador\" y Tony es informado por Fury que, hasta nuevo aviso, sera el consultor de la iniciativa y no un miembro oficial, Tony acepta con la condicion de que Fury se encargue de encontrar a alguien que lo condecore a él y a Rhodes en Washington, esa persona resulta ser el senador Stern, quien anuncia la ceremonia y condecora a los dos heroes a regañadientes.\r\n\r\nDespués de los creditos, en Nuevo Mexico, el agente Coulson llega al desierto, donde se encuentra un gigantesco crater. Le informa a Fury por telefono que \"Lo encontraron\". Luego se muestra que dentro del crater se encuentra el Mjolnir, el martillo de Thor.','2010-04-29 05:00:00','124','http://ironmanmovie.marvel.com/','2010-09-09 17:08:43','2010-09-17 22:14:10','United States','English','PG-13- Parents Strongly Cautioned',NULL,'0.00','0.00','0.00','Noticia_IronMan2Poster01ALTA.jpg','image/jpeg',655055,'2010-09-09 17:57:42');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `born_at` datetime DEFAULT NULL,
  `born_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (2,'Robert','','Downey Jr.','2005-04-15 05:00:00','United States','Robert John Ford - Elias Jr. (4 de abril de 1965; Nueva York, Estados Unidos), más conocido como Robert Downey Jr., es un actor de cine estadounidense nominado dos veces a los Premios Óscar y ganador de dos Globos de Oro, además de cantante y compositor.','2010-09-17 19:41:02','2010-09-17 19:42:36',NULL,'robert-downey-jr.jpg','image/jpeg',34378,'2010-09-17 19:42:35'),(3,'Mickey','','Rourke','1952-09-16 05:00:00','United States','Philip Andre Rourke Jr., más conocido como Mickey Rourke (n. Schenectady, Nueva York; 16 de septiembre de 1952), es un actor de cine estadounidense que además fue boxeador. Candidato al Óscar como mejor actor y ganador de un Globo de Oro y un BAFTA por su trabajo en The Wrestler (2008).','2010-09-17 22:22:21','2010-09-17 22:22:21',NULL,'mickey_rourke.jpg','image/jpeg',24971,'2010-09-17 22:22:20'),(4,'Jon','Kolia','Favreau','1966-10-19 05:00:00','United States','Jon Favreau (19 de octubre de 1966) es un director, actor, escritor y productor de cine estadounidense. Nació en Queens, New York\r\n\r\nDespués de establecerse como un actor y escritor de considerable. Favreau debutó como director de cine con la película \"Made\", cuyo guión escribió y además coprotagonizó junto con Vince Vaughn, \"Puffy\" para Artisan Entertainment. Su éxito más reciente lo obtuvo como director y productor ejecutivo de la taquillera \"Iron Man\", que recaudó más de 570 millones de dólares en todo el mundo, ha continuado retándose a si mismo con varios eclécticos proyectos. La película más reciente de Favreau, Iron Man 2 (2010) de Paramount Pictures, una aventura de ciencia ficción protagonizada por Robert Downey Jr, Don Cheadle, Gwyneth Paltrow, Scarlett Johansson, Sam Rockwell, Mickey Rourke y Samuel L. Jackson.','2010-09-18 06:21:50','2010-09-18 06:21:50',NULL,'jon_favreau.jpg','image/jpeg',46323,'2010-09-18 06:21:50'),(5,'Christian','Charles Philip','Bale','1974-01-30 05:00:00','United Kingdom','Christian Bale (nacido Christian Charles Philip Bale el 30 de enero de 1974 en Gales) es un actor britanico.[1] [2] Entre sus papeles más importantes se encuentran El imperio del sol, American Psycho, El maquinista, Batman Begins y su secuela The Dark Knight, The Prestige, 3:10 to Yuma, Enemigos públicos y Terminator Salvation.\r\nNació en Pembrokeshire, Gales. Su padre era piloto y su madre trabajó en el circo como bailarina. Tuvo tres hermanas mayores.\r\n\r\nEmpezó en el teatro siendo un niño y siguiendo la vena artística de su madre, una de sus obras más conocidas la hizo junto a Rowan Atkinson, quien unos años después también se haría famoso gracias a Mr. Bean.\r\n\r\nA la edad de 8 años (1983), apareció brevemente en un anuncio de los cereales \"Pac Man\".\r\n\r\nMuy joven, con 13 años, debuta en el cine de la mano de Steven Spielberg en el filme El imperio del sol, al pasar un casting de más de 4000 niños, pronto se vería lo acertado de la elección cuando la actuación de Bale como el chico James es elogiada por los críticos. En 1989 trabajó en la película Enrique V y al año siguiente en La Isla del Tesoro.\r\n\r\nTodo paso de niño o joven a adulto en el cine puede significar el olvido, pero Bale siguió ahí, haciendo, ya con 20 años, Mujercitas o unos años más tarde Retrato de una dama, causando también una grata impresión.\r\n\r\nEn el año 2000, rueda las películas Shaft: The Return y American Psycho. En esta segunda película, Bale luce un cuidado físico que parece elevarle a la categoría de sex symbol; sin embargo, es un actor muy versátil. Cuatro años después, su papel en El maquinista le puso a prueba física y mentalmente a la hora de enfrentarse a uno de los roles más difíciles de su carrera hasta el momento. Debió bajar de peso hasta el punto de verse famélico; una transformación que recordaba a la de Robert De Niro en Toro salvaje, pero adelgazando en lugar de engordando. Superó el desafío con gran satisfacción tanto para la crítica como para el público.\r\n\r\nDe todas formas, su gran oportunidad para erigirse en un actor de máxima cotización llegó con el papel protagonista en Batman Begins (2005) para la cual tuvo que recuperar el peso perdido y además lograr una gran condición física y dominio en artes marciales.\r\n\r\nEn 2006 participó la película The Prestige junto a Hugh Jackman y Michael Caine, dirigida por Christopher Nolan. En el año 2007 participa en Rescue Dawn, I\'m Not There y 3:10 to Yuma y en 2008 vuelve al papel de Batman en The Dark Knight, de la cual se han tenido muy buenas impresiones y ha roto récord de taquilla en Estados Unidos, al lograr más de 500 millones de dolares. Sus más recientes trabajos han sido en las cintas Terminator Salvation, donde interpretó a John Connor y Enemigos públicos, como Melvin Purvis, el Agente del FBI, al que J. Edgar Hoover encargó la cacería del famoso asaltante John Dillinger, interpretado por Johnny Depp.\r\n','2010-09-18 07:32:43','2010-09-18 07:32:43',NULL,'christian-bale.jpg','image/jpeg',20109,'2010-09-18 07:32:43'),(6,'Christopher','','Nolan','1970-07-30 05:00:00','United Kingdom','Christopher Nolan (n. 30 de julio de 1970) es un guionista de cine y director británico.\r\n\r\nSaltó a la fama con su segundo largometraje Memento, basado en un relato corto escrito por su propio hermano, Jonathan Nolan, que luego adaptarían juntos a un guión convencional para rodar la película y por el cual fueron candidatos Oscar en la categoría de mejor guión original.','2010-09-18 08:16:03','2010-09-18 08:16:03',NULL,'christopher_nolan.jpg','image/jpeg',25597,'2010-09-18 08:16:03');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `photo_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,14,1,'2010-09-23 17:29:58','2010-09-23 17:29:58');
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `drafted_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `cached_tag_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  `visits_count` int(11) DEFAULT NULL,
  `rating` decimal(4,2) DEFAULT '0.00',
  `delta` tinyint(1) DEFAULT '1',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'drafted',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The first post!','Hello Movie fans',1,'the-first-post',1,'2010-09-07 05:00:00','2010-09-09 19:01:00',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-07 14:34:31','2010-09-19 05:32:42',5),(2,'Ut ea aut omnis eos recusandae id et facere.','--- \n- Labore ut qui nesciunt corporis accusamus. Ut debitis mollitia et ab quo et. Illo autem et eos.\n- Voluptas vel quasi aut aut quam. Consequatur quia recusandae nihil natus provident voluptatem. Quidem perspiciatis in cumque alias.\n- Quia excepturi nisi debitis similique temporibus quis. Nihil et nulla aut et exercitationem. Placeat totam provident consequatur blanditiis quia voluptatem qui.\n',18,'ut-ea-aut-omnis-eos-recusandae-id-et-facere',21,NULL,'2010-09-09 19:01:05',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:36','2010-09-09 19:01:05',NULL),(3,'Consequatur eum sed doloremque asperiores.','--- \n- Ut nihil atque nisi facilis aut nihil assumenda. Et possimus iusto aperiam aut eveniet placeat quo qui. Nulla nostrum sit aperiam sit quidem aspernatur beatae.\n- Voluptatum mollitia non autem. Quia asperiores et soluta ipsum harum sint amet cum. Quibusdam quidem perferendis rerum illo dolor sed dolor. Voluptas iste cumque hic quis qui. Eos ab esse qui omnis quia id.\n',25,'consequatur-eum-sed-doloremque-asperiores',22,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:36','2010-09-09 19:01:06',NULL),(4,'Omnis illo et voluptas aut nesciunt tenetur est.','--- \n- Quibusdam laboriosam ipsa est expedita sunt. Assumenda facilis tempora ullam in est illo. Exercitationem non aperiam perferendis.\n- Possimus soluta odit omnis enim est. Minima est tempore natus. Quod nam numquam amet est et quia qui.\n- Consectetur sed quia autem quae dolorem quisquam quaerat eaque. Consectetur aut culpa necessitatibus minima non sapiente dolor maxime. In consequatur ut rerum quibusdam asperiores impedit. Natus nisi optio sit quos. Adipisci dolorem modi rerum.\n',26,'omnis-illo-et-voluptas-aut-nesciunt-tenetur-est',23,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:36','2010-09-09 19:01:06',NULL),(5,'Qui tempora exercitationem nisi quo.','--- \n- Soluta aperiam qui vitae aspernatur commodi est. Ut quae sed accusamus temporibus harum quis labore. Dolorum ea quae corporis itaque enim libero ut. Ut omnis ipsa quia voluptatem et consectetur in. Ea totam ab nisi et reprehenderit quis debitis.\n- Maxime ducimus expedita architecto quas animi. Doloremque voluptatem vel nam cupiditate saepe rem. Earum corporis voluptas nihil delectus et aliquid repudiandae non.\n- Corporis nostrum omnis quia aut ut consequatur. Accusamus nisi sit esse et ut voluptatum nemo corporis. Deleniti corrupti et saepe minus aspernatur cum.\n- Nobis voluptatem omnis sed eveniet sed et sint eos. Iusto alias qui tempore cum animi. Eligendi voluptates nihil ipsa. Amet est dolores et.\n',30,'qui-tempora-exercitationem-nisi-quo',24,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:37','2010-09-09 19:01:06',NULL),(6,'At et odio ea quaerat quos est maiores.','--- \n- Omnis quas vitae quod. Ipsam porro est quas. Deleniti minima expedita et numquam et dolores sunt rem.\n- Consequatur quam ut fugit beatae ducimus. Asperiores maiores est quisquam quas enim fugiat molestiae. Atque eum ut ea quibusdam. Harum quas consequatur sed. Sit eos quia vel assumenda rerum itaque.\n- Dolorem ut aspernatur nihil ab. Doloremque explicabo repellendus eius non dolor ipsam. Placeat et expedita vero cum nulla voluptatem. Rem vel deleniti ab.\n',30,'at-et-odio-ea-quaerat-quos-est-maiores',24,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:37','2010-09-09 19:01:06',NULL),(7,'Omnis ut eum perferendis eos veniam.','--- \n- Nostrum voluptates corporis ducimus perspiciatis sunt harum facere. Ut ipsam aliquid ut sit amet. Sunt natus magnam qui quos quidem sequi asperiores doloremque. Impedit molestiae praesentium quae voluptatem ab eligendi aut.\n- Autem minima magni atque voluptatem. Quidem nisi necessitatibus rerum totam et enim eum. Commodi iure et molestias suscipit laborum enim. Sit autem ea sed nulla.\n- Illum voluptate molestias dicta. Est praesentium aut quia magni. Pariatur nemo rerum velit aliquid dolor assumenda repellendus.\n',73,'omnis-ut-eum-perferendis-eos-veniam',26,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:40','2010-09-09 19:01:06',NULL),(8,'Voluptatem soluta qui sunt sapiente.','--- \n- Pariatur placeat totam repudiandae autem at voluptatum. Eos molestiae maiores molestiae ipsam deserunt occaecati. Architecto expedita esse nisi velit incidunt fugiat blanditiis rerum. Quo adipisci ex cupiditate reprehenderit occaecati a.\n- Veniam quas nostrum expedita facere delectus laboriosam. Est assumenda et voluptas rerum eos. Similique sint ratione incidunt sunt. Consequatur voluptatem nam doloremque voluptatibus architecto hic. Et id non et natus voluptas sunt.\n- Ad quaerat sed aperiam incidunt. Expedita ea natus sed. Rem libero sit corrupti. Error et sunt optio quo quae.\n',73,'voluptatem-soluta-qui-sunt-sapiente',26,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:40','2010-09-09 19:01:06',NULL),(9,'Autem et aut sed a.','--- \n- Nihil optio atque explicabo saepe. Tempora blanditiis repudiandae dolor. Quis reiciendis hic ratione provident fugiat deleniti quia. Doloribus sunt est non. Culpa explicabo a aliquid.\n- Ab quasi at harum pariatur saepe. Non in totam nisi aut et quae delectus quo. Quam beatae veritatis numquam minima mollitia voluptates atque. Quia quasi labore qui.\n',97,'autem-et-aut-sed-a',27,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:42','2010-09-09 19:01:06',NULL),(10,'Et quis suscipit aperiam.','--- \n- Et enim illo exercitationem tempora quibusdam. Qui rem sapiente fuga quae. Nisi et iure asperiores numquam ut quo unde. Nihil voluptatem repudiandae iure.\n- Vero iste consequatur omnis voluptates nisi iure aspernatur unde. Qui nostrum sed et veritatis ut doloribus voluptatem sit. Omnis architecto cupiditate accusamus velit ut at animi. Fugit odio aut voluptatem at.\n- Culpa nemo excepturi qui consequatur numquam natus odit consectetur. Aut natus quia et hic commodi. Tempora illo cum minus. Quia doloremque et eligendi ad ea.\n',99,'et-quis-suscipit-aperiam',28,NULL,'2010-09-09 19:01:06',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-09 18:52:42','2010-09-09 19:01:06',NULL),(13,'Test','In this chapter of Ruby Essentials we will look at implementing flow control logic in Ruby scripts through the use of the Ruby case statement.\r\nContents\r\n[hide]\r\n\r\n    * 1 Ruby Flow Control\r\n    * 2 Number Ranges and the case statement\r\n    * 3 Summary\r\n\r\n	\r\n\r\n\r\n[edit] Ruby Flow Control\r\n\r\nIn the previous chapter we looked at some basic conditional structures using the if ... else and if .. elsif ... mechanisms. These approaches to building conditional logic work well if you need to check a value against only a few different criteria (for example checking the value of a string against a couple of possible candidates):\r\n\r\nif customerName == \"Fred\"\r\n      print \"Hello Fred!\"\r\nelsif customerName == \"John\"\r\n      print \"Hello John!\" \r\nelsif customername == \"Robert\"\r\n      print \"Hello Bob!\"\r\nend\r\n\r\nThis can quickly become cumbersome, however, when a need arises to evaluate a large number of conditions. A much easier way to handle such situations is to use the Ruby case statement, the syntax for which is defined as follows:\r\n\r\nresult = case value\r\n   when match1 then result1\r\n   when match2 then result2\r\n   when match3 then result3\r\n   when match4 then result4\r\n   when match5 then result5\r\n   when match6 then result6\r\n   else result7\r\nend\r\n\r\n\r\nThere can be any number of when statements - basically as many as you need to fully compare the value in the case statement against the possible options (represented by match1 through to match7 in the above example) specified by the when statements. When a match is found the result is assigned to the optional result variable.\r\n\r\nFinally, the else statement specifies the default result to be returned if no match is found.\r\n\r\nThis concept is, perhaps, best explained using an example. The following Ruby case statement is designed to match a particular car model with a manufacturer. Once a match is found, the car and associated manufacturer are included in an output string:\r\n\r\ncar = \"Patriot\"\r\n\r\nmanufacturer = case car\r\n   when \"Focus\" then \"Ford\"\r\n   when \"Navigator\" then \"Lincoln\"\r\n   when \"Camry\" then \"Toyota\"\r\n   when \"Civic\" then \"Honda\"\r\n   when \"Patriot\" then \"Jeep\"\r\n   when \"Jetta\" then \"VW\"\r\n   when \"Ceyene\" then \"Porsche\"\r\n   when \"Outback\" then \"Subaru\"\r\n   when \"520i\" then \"BMW\"\r\n   when \"Tundra\" then \"Nissan\"\r\n   else \"Unknown\"\r\nend\r\n\r\nputs \"The \" + car  + \" is made by \"  + manufacturer\r\n\r\nWhen executed, the resulting output will read:\r\n\r\nThe Patriot is made by Jeep\r\n\r\nIf no match was found in the case statement, then the default result, defined by the else statement would cause the following output to be generated:\r\n\r\nThe Prius is made by Unknown\r\n\r\n[edit] Number Ranges and the case statement\r\n\r\nThe case statement is also particularly useful when used in conjunction with number ranges (for details of ranges read the Ruby Ranges chapter of this book).\r\n\r\nThe following case example detects where a number falls amongst a group of different ranges:\r\n\r\nscore = 70\r\n\r\nresult = case score\r\n   when 0..40 then \"Fail\"\r\n   when 41..60 then \"Pass\"\r\n   when 61..70 then \"Pass with Merit\"\r\n   when 71..100 then \"Pass with Distinction\"\r\n   else \"Invalid Score\"\r\nend\r\n\r\nputs result\r\n\r\nThe above code, when executed will result in a \"Pass with Merit\" message.\r\n[edit] Summary\r\n\r\nThe if .. else ... approach to building conditional logic into an application works fine for evaluating a limited number of possible criteria. For much larger evaluations, the Ruby case statement is a less cumbersome alternative. In the chapter we have looked at the case statement and reviewed some examples using strings and number ranges. ',1,'test',1,NULL,'2010-09-23 05:00:00',NULL,'',NULL,NULL,'0.00',1,'published','2010-09-23 17:11:21','2010-09-23 18:05:44',1),(14,'Otra prueba','Otro contenido',1,'otra-prueba',1,'2010-09-24 13:24:19',NULL,NULL,'etiqueta',NULL,NULL,'10.00',1,'drafted','2010-09-23 17:24:19','2010-09-23 17:29:58',3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorite_movie_character` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorite_movie_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `favorite_movie_id` int(11) DEFAULT NULL,
  `favorite_actor_id` int(11) DEFAULT NULL,
  `favorite_genre_id` int(11) DEFAULT NULL,
  `favorite_director_id` int(11) DEFAULT NULL,
  `favorite_writer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',2,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',3,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',4,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',5,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',6,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',7,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34',8,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',9,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',10,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',11,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',12,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',13,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',14,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',15,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',16,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',17,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35',18,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',19,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',20,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',21,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',22,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',23,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',24,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',25,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',26,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',27,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36',28,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',29,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',30,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',31,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',32,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',33,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',34,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',35,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',36,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',37,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',38,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37',39,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',40,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',41,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',42,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',43,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',44,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',45,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',46,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',47,NULL,NULL,NULL,NULL,NULL),(47,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',48,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',49,NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',50,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',51,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38',52,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',53,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',54,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',55,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',56,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',57,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',58,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',59,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',60,NULL,NULL,NULL,NULL,NULL),(60,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',61,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',62,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',63,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',64,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',65,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',66,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39',67,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',68,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',69,NULL,NULL,NULL,NULL,NULL),(69,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',70,NULL,NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',71,NULL,NULL,NULL,NULL,NULL),(71,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',72,NULL,NULL,NULL,NULL,NULL),(72,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',73,NULL,NULL,NULL,NULL,NULL),(73,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',74,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',75,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',76,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',77,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',78,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40',79,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',80,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',81,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',82,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',83,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',84,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',85,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',86,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',87,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',88,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',89,NULL,NULL,NULL,NULL,NULL),(89,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',90,NULL,NULL,NULL,NULL,NULL),(90,NULL,NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41',91,NULL,NULL,NULL,NULL,NULL),(91,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',92,NULL,NULL,NULL,NULL,NULL),(92,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',93,NULL,NULL,NULL,NULL,NULL),(93,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',94,NULL,NULL,NULL,NULL,NULL),(94,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',95,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',96,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',97,NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',98,NULL,NULL,NULL,NULL,NULL),(98,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',99,NULL,NULL,NULL,NULL,NULL),(99,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',100,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42',101,NULL,NULL,NULL,NULL,NULL),(101,'United States','','','2010-09-27 19:02:08','2010-09-27 19:02:08',1,NULL,NULL,NULL,6,NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theatre_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `in_theatre_from` datetime DEFAULT NULL,
  `in_theatre_to` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,1,'2010-09-03 00:19:00','2010-09-03 00:19:00','demo','active','2010-09-03 00:19:38','2010-09-03 00:19:38'),(2,1,2,'2010-09-01 05:00:00','2010-09-14 05:00:00','','active','2010-09-09 17:14:52','2010-09-09 17:20:22'),(3,1,3,'2010-09-01 05:00:00','2010-09-17 05:00:00','','active','2010-09-09 17:21:11','2010-09-09 17:21:11'),(5,2,5,'2010-09-01 05:00:00','2010-09-16 05:00:00','','active','2010-09-09 17:22:27','2010-09-09 17:22:27'),(6,4,5,'2010-09-11 05:00:00','2010-10-01 05:00:00','Subtitulada','active','2010-09-18 00:39:33','2010-09-18 00:39:33');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100714154039'),('20100719215622'),('20100719220115'),('20100719220742'),('20100723194051'),('20100723194546'),('20100723200152'),('20100723200219'),('20100723200558'),('20100723203708'),('20100723214535'),('20100724002928'),('20100724151654'),('20100724161954'),('20100724163243'),('20100724165806'),('20100724170136'),('20100806182007'),('20100806183618'),('20100806214151'),('20100812161431'),('20100812162602'),('20100817150847'),('20100817151807'),('20100817162345'),('20100817163715'),('20100817164002'),('20100817171352'),('20100817184734'),('20100818033102'),('20100818040355'),('20100818042536'),('20100818160901'),('20100818161836'),('20100818165836'),('20100818175517'),('20100818175945'),('20100818193809'),('20100818201548'),('20100819165453'),('20100819170514'),('20100826180429'),('20100826184936'),('20100827000747'),('20100827003629'),('20100828170953'),('20100828172439'),('20100828225734'),('20100830173040'),('20100831155649'),('20100902190341'),('20100902223505'),('20100902233901'),('20100903235602'),('20100909172854'),('20100909191359'),('20100909192321'),('20100917192130'),('20100919051011'),('20100919053838'),('20100919132217'),('20100921163155'),('20100928045733');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `scored_at` datetime DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showtimes`
--

DROP TABLE IF EXISTS `showtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showtimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) DEFAULT NULL,
  `shown_at` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtimes`
--

LOCK TABLES `showtimes` WRITE;
/*!40000 ALTER TABLE `showtimes` DISABLE KEYS */;
INSERT INTO `showtimes` VALUES (1,1,'2001-01-01 06:03:00','Subtitulada','active','2010-09-10 18:54:44','2010-09-17 17:54:03'),(2,1,'2001-01-01 10:10:00','Subtitulada','active','2010-09-17 17:55:12','2010-09-17 17:55:12'),(3,5,'2001-01-01 23:10:00','Subtitulada','active','2010-09-17 22:37:54','2010-09-17 22:37:54'),(4,5,'2001-01-02 01:05:00','Subtitulada','active','2010-09-17 22:39:10','2010-09-17 22:39:10'),(5,6,'2001-01-02 00:30:00','Subtitulada','active','2010-09-18 00:40:13','2010-09-18 00:40:13');
/*!40000 ALTER TABLE `showtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios`
--

DROP TABLE IF EXISTS `studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios`
--

LOCK TABLES `studios` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;
/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type` (`taggable_id`,`taggable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,14,'Post','2010-09-23 17:29:58');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'etiqueta');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatres`
--

DROP TABLE IF EXISTS `theatres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theatres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `movie_chain_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatres`
--

LOCK TABLES `theatres` WRITE;
/*!40000 ALTER TABLE `theatres` DISABLE KEYS */;
INSERT INTO `theatres` VALUES (1,'Cinemark San Miguel','Av. La Marina cuadra 25 con esquina Av. Parque de las Leyendas','2010-09-09 17:19:20','2010-09-17 16:35:27',1),(2,'Cinemark Jockey Plaza','Av. Javier Prado Este 4200 Monterrico Surco (Centro Comercial Jockey Plaza)','2010-09-09 17:19:50','2010-09-17 16:35:04',1),(3,'Cinemark Plaza Lima Sur','Av. Prolongación Paseo de La República s/n Urb. Matellini - Chorrillos','2010-09-10 16:31:03','2010-09-17 16:36:06',1),(4,'UVK Caminos del Inca','Centro Comercial Boulevard Caminos del Inca. Calle Monterrey 258. cuarto nivel. Chacarilla - Surco','2010-09-10 16:33:24','2010-09-17 16:42:00',2),(6,'UVK Larcomar','Centro turístico y de Entretenimiento Larcomar.  Parque Salazar - Miraflores','2010-09-10 16:36:21','2010-09-17 16:41:18',2),(7,'Cinemark Mega Plaza','Calle Alfredo Mendiola 3698 Km 8.5 de la Av. Panamericana Norte Independencia','2010-09-17 16:36:47','2010-09-17 16:36:47',1),(8,'Cinemark Mall Aventura Plaza Trujillo','Av. America Oeste 750 Urb. El Ingenio Trujillo','2010-09-17 16:37:25','2010-09-17 16:37:25',1),(9,'Cinemark Mall Aventura Plaza Bellavista','Av. Oscar R. Benavides (Ex Colonial) 3866, Centro Comercial Mall Aventura Plaza Bellavista','2010-09-17 16:38:04','2010-09-17 16:38:04',1),(10,'Cinemark Open Plaza Angamos','Av. Angamos Nº 1803 y/o Av. Tomas Marsano Nº 961- Surquillo','2010-09-17 16:38:33','2010-09-17 16:38:33',1),(11,'UVK Platino Basadre','Calle Las Palmeras 359 - San Isidro','2010-09-17 16:40:41','2010-09-17 16:40:41',2),(12,'UVK Marina Park','Centro de Entretenimiento Marinapark. Alt. Cuadra 26 de la Av. La Marina - San Miguel','2010-09-17 16:42:47','2010-09-17 16:42:47',2),(13,'UVK San Martín Centro','Frente a la Plaza San Martín - Cercado de Lima.  Jr. Ocoña 110','2010-09-17 16:43:35','2010-09-17 16:43:35',2),(14,'UVK Ica','Al costado del Museo del INC - Urb. San José. Av. Ayabaca S/N','2010-09-17 16:44:13','2010-09-17 16:44:13',2),(15,'UVK Asia','Centro Comercial Sur Plaza Boulevard  Panamericana Sur Km. 97.5 - Asia','2010-09-17 16:44:52','2010-09-17 16:44:52',2),(16,'Cinestar Excelsior','Jirón de la Unión 780 - Lima','2010-09-17 16:48:27','2010-09-17 16:48:27',5),(17,'Cinestar Sur','Av. Los Héroes 240 – San Juan de Miraflores','2010-09-17 16:48:50','2010-09-17 16:48:50',5),(18,' Cinestar Metro San Juan','Av. Los Próceres de la Independencia 1632 - S. J. L.','2010-09-17 16:49:26','2010-09-17 16:49:53',5),(19,'Cinestar Metro Breña','Jr. Iquique Nº 315 - Breña Av. Alfonso Ugarte y Venezuela.','2010-09-17 16:50:23','2010-09-17 16:50:23',5),(20,'Cinestar Metro UNI','Av. Gerardo Unger s/n cuadra 16 – Rímac','2010-09-17 16:50:53','2010-09-17 16:50:53',5),(21,'Cinestar Las Américas','Av. Hermilio Valdizán 121 - Jesús María.','2010-09-17 16:51:23','2010-09-17 16:51:23',5),(22,'Cinestar Porteño','Av. Saenz Peña 342 – Callao','2010-09-17 16:51:54','2010-09-17 16:51:54',5),(23,'Cinestar Aviación','Calle Tiziano 100 Alt. Cuadra 24 de la Av. Aviación.','2010-09-17 16:52:23','2010-09-17 16:52:23',5),(24,'Cinestar Benavides','Av. Benavides 4981 – Surco','2010-09-17 16:52:53','2010-09-17 16:52:53',5),(25,'Cinestar Victoria','Av. Manco Cápac 643 - La Victoria','2010-09-17 16:53:20','2010-09-17 16:53:20',5);
/*!40000 ALTER TABLE `theatres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `born_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `member_of` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'community',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Angel','Velasquez','angel@xendacentral.com',NULL,'2010-09-11','2010-09-07 14:14:37','2010-09-28 14:24:30','experts','3079a6827f1f7fe0a3337f76becf25bfeb349054','ZuY3wbJFahx-xFQF1o3p','HTolv13Zclq3lCGes6yu',NULL,'2010-09-07 14:14:37',NULL,NULL,NULL,15,'2010-09-28 14:24:30','2010-09-27 19:17:36','127.0.0.1','127.0.0.1','AngelFace.jpg','image/jpeg',75800,'2010-09-10 21:49:37',NULL),(2,'Jerald','Turner','prudence@hotmail.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','cdfba0c06c6bbd9248ce1f681b84c844fd633798','22_IhNUrvqpSUt_g5Ay0',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mercedes','Bailey','evert@yahoo.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','65515b2cd6e10ab35347b38d017b7ccdbac7f134','nlJ6mzs5AFaOgEAx2Av1',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Mathilde','Pacocha','hillary@gmail.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','4b7e8268826b8e01ea65efa895c17a726270bfe7','SV3oEVjO_eCZRcHfDy1o',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Eleanore','Cole','amanda@yahoo.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','486420b4c202529056739068a5a478299e953092','s4zerIG1h-OvpWMw2Lta',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Novella','Becker','simeon.wyman@yahoo.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','88fcb87458883838676d7160789d7d9469bdc1a2','a7MnbtnxiXbvKhdKUPXb',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Abigayle','Becker','lavern@yahoo.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','8e62ba3a6fd1934870dc68cdb48f697e07e14c42','lOxQiz0pJKX91QAG_r_s',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Jasen','Hermann','jackie.batz@gmail.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','6d61deac7e43c56df6e39e5888374783770838c8','q52Jg1I2o4KistAaJzZJ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Bartholome','Mante','amira_kulas@yahoo.com',NULL,NULL,'2010-09-09 18:52:34','2010-09-09 18:52:34','community','789a93f9179c8f9e7a3d6bdc95461ba7d7ccd44c','ajNSrb-29aasJv-tNylT',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Retha','Quigley','alia@hotmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','f7ccdd5fea9a38e3c64c658b65309bf60176de94','QmVlw5WtVeQ_BYZv0Tgi',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Lucius','Torphy','jerod@hotmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','e8b2413d23df68edfd5efe9f3f470b20ecd6b0bb','mO2Qs6NXKeiWLnlfXIDU',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Fredrick','Hoppe','eileen_williamson@yahoo.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','experts','f4d90d5b6e391de61a2cda14c009c9e114d26a3f','GOd0HR1obG1AypIfFmoC',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Florence','Mills','bernadette_haag@hotmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','3dc3d2566e2802c14b32e6a616c1f7097c5dd29c','3t1mtr7S8YHIDX7VYnWQ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Joaquin','Ondricka','judd@gmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','3e56bdc61b47a341127ae64d06714b7585b7377b','l9joVnpDHSp0AdrjzYIK',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Ronaldo','Weber','gussie@hotmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','c695322f883c1408baa8e8e829ee9e8e22c62e98','VfDj0JnPjY6_w3oHDqe-',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Armand','Connelly','lindsay@yahoo.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','48b0b2af107ea820f9636acd4c7738fefe3bcb23','ZPIg2TuOYCqTRWB3sXzf',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Casimir','Morissette','aurelie_stanton@hotmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','community','b00b1444303aa2368f42fda809777df2e17acc81','cpOqwyMOC9cFckWbtvR9',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Ulices','Little','gretchen@gmail.com',NULL,NULL,'2010-09-09 18:52:35','2010-09-09 18:52:35','experts','016bf9c60f5cdbb3520151b9f06758bf44c027a2','G3ezjzhXoViDrUbkeqU5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Vena','Turcotte','leanne.bosco@yahoo.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','4b9e6fa80d4bd1b4ddea46dcf10fe73bffc62247','wRfbH8K1HfK1neSeAvoB',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Freddy','Collier','hailie_terry@hotmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','e23731863a1907d2879a288f5fd3edd80730eaa6','5_pa1GdVVtcVaKf0MBAz',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Rhianna','Dibbert','santos_brown@yahoo.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','f18c23001069c74f9472c9238d3a5fb196b44772','4iFSbomD4zFgdQQKcHNa',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Erick','Kuhn','isac@yahoo.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','c48e69cc3dbbba0b398848f6638022ac5302b676','ixaDDSDxtXVQ3qx2EFhK',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Alfred','Kshlerin','willy.klocko@hotmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','557681872c9963b840ff11ffea337ed37a29dfe8','4bz2M0YCrQ8u71riE7It',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Emmanuelle','Turcotte','jettie_thiel@hotmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','0127d9d3ff9bd36cb472eeb1aa71d5cba021e1af','8w4tq985ci-5tN8wVoGA',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Delaney','White','kaia@hotmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','experts','d70c8a92f9025fd99c98c89481b48c2d1273491d','sL9ivGcM3FNIfXA-KQ_T',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Ethan','Hackett','orpha_grimes@yahoo.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','experts','447628bc941d6699de6a3bbbffc068f62be93dc9','4fOVv3VePa5hmH35R9Wd',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Vivian','Koelpin','irwin@gmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','aeeb7a8cddb10a2a1de9a6d43e7aa1ee428392b6','83LtEKaKKBDtAI7wv3U_',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Isadore','Kuhic','bartholome@hotmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','6013e9a8832f3d41124ce5a871d8132bc55891f6','A21NaVJB-GXDMV3YueoM',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Aiden','Schumm','aletha_lind@gmail.com',NULL,NULL,'2010-09-09 18:52:36','2010-09-09 18:52:36','community','27d8454ac96aaf817c72c819113fc8fb217f28b0','Ep04j13e5N1OYfKp69dH',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Lelah','Balistreri','erick@gmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','experts','16b3437affd7c30e136ff8f53d5ad33789974078','eV14JKnrpX3ngNWeetfH',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Crystel','Dibbert','magdalen@yahoo.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','2ba5c54af700a1ca145670423972f7ec028fe1d0','doZtVIq1XNjNUjtfybg0',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Quinten','Parker','nakia@yahoo.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','64b2defd13320d17decb728492170b5b4d7c680e','npQHBr8-2_ufpjJ2Ecbv',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Ellsworth','Runolfsson','eudora@gmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','e0d0ad3e7b9171d0afb4ee39185877b4c2bb2c1d','-2reZmMXMCM3K2xk1EEP',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Shirley','Jakubowski','ismael@yahoo.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','2af3e4b668add94b5e70adac8048a07da9dba10e','cBXOS9fiY0SpJgU0lVRP',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Kattie','Osinski','desiree@hotmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','2bb0ffebf75c17a18be8ec38311653511903090d','iXhNbeirfW8M94cV2H75',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Jaeden','Halvorson','darron@hotmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','072301991ff78a757a239b556736d4fd754eac0e','n1ypRuuzakDff1fufxGy',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Gino','Quitzon','yessenia@gmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','030877d3099c4e0bbbc57ae18fb8ef7ac18f7996','ZsiEpTRDTYHz9lfOaCXZ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Sheldon','Breitenberg','luz@yahoo.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','3da4239210b0755c18f1ceba2205d718bb50ca27','FoRj5T45gw4o-fNmd5El',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Armand','Ward','devonte.gleason@hotmail.com',NULL,NULL,'2010-09-09 18:52:37','2010-09-09 18:52:37','community','c3e8b52ee59a68dca0d48df8c9781f301e47ea80','CDtMGdbtf6a_rjkoixSp',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Aida','Schamberger','alford.wolff@yahoo.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','986474fd54aaf5b84d9709e1a21f2086025d49e3','G2GFNdzvi0LF1mWd4rK2',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Alexane','Johnson','augustine@gmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','c6bd7dfa259eb00d6c972a5b00fb9600c5a571ac','egMtnZJwEYL4f9fSJYBJ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'Scotty','Kreiger','nickolas@hotmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','dd02dac02682581ef8ae960c91533aaaba2f58a4','MS8bPIprzbMJv3pDhP3E',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Earlene','Lesch','johnathan_zieme@hotmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','5723910189f9742f2a83304c3480db4720b47c32','2iHKBLU4nSw61dUjLNtu',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Katheryn','Wilkinson','kenyon.kling@hotmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','a5b72799ca430d8d19e5dca2937324e197043a74','knaVsDji4DVkIEeLf5qa',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Simone','Raynor','marlene@yahoo.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','37c2f8fa5152472f11f1ecaa099c7747073c74cb','qxhnBh_b4DfZsz-wgw58',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'Jacinto','White','dahlia@hotmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','88b609a1a4cbd380a11376332333f68bbb34e050','XDp5wk7mWsY_0aajXTb0',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Leonardo','Gibson','reese@gmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','4724f88c1b59334bc9524300f8fa97160fbeee96','1r4YqHrxuiE9LLRlXRud',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'Karlie','Hodkiewicz','oleta@yahoo.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','8edbc7226506d1d427c839b1eb9cb88cc3b2e54c','zGAy91f0NfkYNySyLSM5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Roman','Welch','moses@hotmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','6b2d1f4144b6d0ed5f5551ed41980f42c1787425','P2et7geVvAVM_5U7QAR2',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Kristofer','Kemmer','albertha@gmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','7d59157a22ba70c5b4c9ebeca6e31379a6db91d5','rVt0sUUtCZmIgNdBux2X',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Kavon','Bergstrom','hortense_legros@yahoo.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','c716a4a2517f9089287b56466993ceacb2b89182','FJpJlksh7S3vgVpYJUKE',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Bertram','Bailey','angus.stehr@gmail.com',NULL,NULL,'2010-09-09 18:52:38','2010-09-09 18:52:38','community','eb121ba78f5a59f700398b7ea9a6b6e22e1b574b','USjWst-SNcgy8iSTnw6j',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Elsie','Kuhlman','stevie_graham@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','experts','84ba70163d1eec4fd85934a96edd6947a36bb9b2','--wEKGZHPdSw_Ez7rmlP',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'Claudie','Greenholt','lavon@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','15855eb6949f7e30eb24d3aa4075232195714112','MGN_gJwUJSBQJWhqGJuU',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Tara','Dach','demetris_altenwerth@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','0d0a1ac7816c8a30c61171c1e6cfcf7b8fcd560a','jJ26FfgSGfImNO6WSfJ5',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Olga','Will','celia_ferry@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','4b67b4ffad3c71aba00cb4a14bdd47dc1acebc2f','dst2-HVd1FkaEq0433rI',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Greta','Harber','ophelia@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','fc10878afc64fb721d1591f713687811bbbd5705','NOalPmOTLwzJZyImJ9Wa',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Darius','Wiegand','marcellus.huels@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','cb8dfcf16417b42ceab8acc7a3affe63e3946abb','F_B-0JYuCCGzh7quNmGF',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Cleo','Crooks','elmore@gmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','e5da0d047b5c5049d13bf69f268190da833d97d5','QJb-hVrHr7ncv1Fgw0mb',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'Evie','Weimann','deanna@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','06bd70c7549ad969187244f38c9059db6669a193','f_KjfrudJmnDihDL4OpD',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Joanny','Daniel','jada.adams@gmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','45434679ab3e658caec46570ba1de29a1b2e725c','jk2azjkM9AbJz7em9grh',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Greyson','Schmidt','joan_franecki@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','b6c6faee0851e06c2247ccfcca5a624bf751d3d8','c4ZWTkxYLPA6kZii2Tyh',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Maye','Quigley','elisa_lueilwitz@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','065f73a71d2007b3660554dfeed63ba944c06bfe','t2NcMSayhf756vUa5rRh',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Javon','Deckow','sherman_klocko@gmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','ff677a00eb5062aeac59559d4816fdea52c9e4f0','tHEJqseWeV-_wE_U2lZC',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Orlo','Roob','zackary@gmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','c3c2309108e94fec9799ac9648ba2b5e2710c58d','YIOJ9NUy_epf1JCnbXFD',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'Bennett','Price','catalina.lehner@hotmail.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','842431febc7dbfd472932b8eeed7fa03ad493fe8','CyG8APeWeM4onPvwL5j0',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Ardella','Hintz','carolyne@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','34217aef4694374dd3f18711394bc00137fa86f5','NyNRMVsmYQXMn13paCQw',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Kacie','Bergnaum','johnnie_jakubowski@yahoo.com',NULL,NULL,'2010-09-09 18:52:39','2010-09-09 18:52:39','community','0e50eceb2e883c14ec7e7fabf192317598b350f7','Qx71265oKE49kWp0pzGF',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Adele','Parker','murl@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','4b4d6852aae8092f2eb12babd514b0d2a4c3157a','378_jdMRaoqvDnlXAFs8',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'Dell','Walker','carmen.emard@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','14d84836293f48f6b8bf6d582e17a60840a01446','G5fFgqMQp5gZRusbrGi4',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Ardella','Block','janis@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','a59a1af6e8d516c60ac6dfb572e3636f921920f9','_z9PEFBnSNPoZvzTme8g',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Lily','Schimmel','deangelo@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','e6614c4d260929ebb2d5cafaada4d41dc4e7abcc','XXPAtZJi_MZVLUT0sZOV',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'Alexzander','Skiles','ocie.balistreri@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','experts','8400ba6585a9b0542a919ae184e942aec525e0ec','_eBBnFqaCjIU-Dlvb-Cf',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'Shawna','Botsford','joanie_rosenbaum@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','d586a453978a022df57ee60b75fe1c02e22ac744','LEXjJDPh-cSW8efZGlrE',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Joelle','Bashirian','leta.crooks@yahoo.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','ee290cd823e18008d56c2deea4489716b99b988c','mm4r38EFG-hLKiLvgaEr',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Jaquan','O\'Conner','connor_hackett@hotmail.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','646727069c87a8f87fe68328332541380f6554c8','-k9vfNfbHqD6CYSNc99P',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Katelin','McDermott','aurelia_gleichner@hotmail.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','3c4cf462c04500e341409059965837691aa0cadf','T91chRSWrxbx6J_v9xiu',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'Mercedes','Nicolas','mateo@gmail.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','a1a82d31be887f7e4c6c0c616c2965306f71799c','hk4rbNvPAq63wA7GlE8H',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'Paul','Raynor','candida_weimann@hotmail.com',NULL,NULL,'2010-09-09 18:52:40','2010-09-09 18:52:40','community','2445c9912d748507ae88c9ca12b85e537d92418b','xDb7k9viJmYIE8Uuqa2v',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'Ephraim','Schuster','melisa@hotmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','e9fc500ef8ebbaeded71a7251c6d6beadc6652a9','5T_xsAZrCtmzBYBjkRgJ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'Hardy','Vandervort','felicity@hotmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','635a044e3b24ee313fca1b4d3b2d6e0e8e335cf1','yymgFNWMXox52zMQIWhW',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'Laverna','Donnelly','kira_morissette@gmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','a09bb6135dfa73dd6c226a6b4eb4b51a6894da8b','_Qg5hvRN68sY8bI7IMSx',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'Jessica','Runte','diamond@yahoo.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','855a4d4d3de4a05eb08f691082c5853ad444a40f','rBaRgFDJHX4HIF5DmGMk',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'Loma','Stanton','elva_pfeffer@hotmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','2dd969a02d34e4c71ddc5a76098159624ece274a','DHqcem5AGVHkWq3NlM7a',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'Roselyn','Heaney','darryl_pouros@yahoo.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','049894e804f3169d4a4489f2a48f0161265d3797','ySI7VxDVoJVAtOgopTEq',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'Federico','Stokes','oswald_johnston@gmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','4f14ab0598ca33fc03a299892fa0bbf6e7772160','_-kH-3iyeoRjFrW0p4tW',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'Eden','Feil','kacey@yahoo.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','0df37882c31293a75af9141471276700316be0fe','vofTxiBwD7oObiSbSopJ',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'Delphia','Larson','mallie.spinka@gmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','6cd918b1c0ef9dc22f62c03ad7d44a740b61dc43','Po9Pq70BtThATLyulmWB',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'Reina','Carter','joel.quigley@yahoo.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','87f496871c5c52f261eff9ba76b48ff9e638f801','C9YAqfwGQRDZA6lQfzgg',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'Brando','Luettgen','leon@yahoo.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','c4a966afea3e1b54a336c103161354b565bd9607','VWHUKYG8-MMP_2gdzLZv',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'Mittie','Kunze','ray_heidenreich@gmail.com',NULL,NULL,'2010-09-09 18:52:41','2010-09-09 18:52:41','community','6dc1f242618d3a64a9e6e0b14d157f07829bd260','1EpFCh7svtWVehhAwNYb',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Stuart','Smith','anastasia_breitenberg@gmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','b74f48181bc61dc81dfb59767ddafa53c92f7925','q452dPdArFTSivezM0y-',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'Lulu','Pouros','ava@hotmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','a59db050d1cbd2737edf13fa8bc6a4148178dc56','Pvl_Z8GM4CiGWKpEzN8z',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'Randy','Schmitt','ludie_wiza@yahoo.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','e5dd72bbe324e343aa7a2b8a0b5b59fa9f59f1fa','RG2HXPwKOghnBZi3X5-i',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'Elenor','Langosh','shakira@hotmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','439f964f5074d2c7e747defee1e5cf199c3da52b','WusezTg3CfU49L7RN6Aa',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'Susie','Muller','hollis@hotmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','b31fc989c13c46fcc2e594ce8431730c62df09e1','goyU1Ex52ip_KpgKccA_',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Marcos','Rolfson','stephan_towne@hotmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','experts','41953269c6e946bc110d791a37183a7a6b7a3fdf','5yGXnDHjoL2pUfXH0yZ4',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'Christine','Kassulke','bernita.hartmann@gmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','537ba8b9d349b3345affacea2eff0db9d010e54a','7BkJwbjMBktVDeqBX8k8',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Terrill','Aufderhar','helmer.heidenreich@yahoo.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','experts','f6b7e91796cef320361f274c2da47531a7daaa3b','mdfkLo-A8e26jgb52odl',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Kadin','Beier','talon@gmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','e19a5dc36fa55169b00d61379baa0a810426467e','Zdc2At_3f30JQCsIqho7',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Ulices','Pagac','maia_casper@hotmail.com',NULL,NULL,'2010-09-09 18:52:42','2010-09-09 18:52:42','community','c96822d8a34dbcf68a4e76466c04d9255e91440d','wcS5BKKCA8F2Edk6sasH',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-28 10:42:55
