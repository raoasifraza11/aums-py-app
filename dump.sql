-- MySQL dump 10.13  Distrib 5.7.23, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: db3
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Current Database: `db3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db3`;

--
-- Table structure for table `alumni_alumni`
--

DROP TABLE IF EXISTS `alumni_alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumni_alumni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `full_Name` varchar(200) NOT NULL,
  `registration_number` int(11) NOT NULL,
  `courses` varchar(6) NOT NULL,
  `year_semester` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni_alumni`
--

LOCK TABLES `alumni_alumni` WRITE;
/*!40000 ALTER TABLE `alumni_alumni` DISABLE KEYS */;
INSERT INTO `alumni_alumni` VALUES (1,'surhanzahid@gmail.com','Surhan Zahid',1187,'bscs','2019','student','none'),(2,'yasir@gmail.com','Yasir Rafique',1214,'bscs','2016','student','none');
/*!40000 ALTER TABLE `alumni_alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ansec_applynow`
--

DROP TABLE IF EXISTS `ansec_applynow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ansec_applynow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ansec_applynow`
--

LOCK TABLES `ansec_applynow` WRITE;
/*!40000 ALTER TABLE `ansec_applynow` DISABLE KEYS */;
INSERT INTO `ansec_applynow` VALUES (1,'#');
/*!40000 ALTER TABLE `ansec_applynow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ansec_background`
--

DROP TABLE IF EXISTS `ansec_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ansec_background` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ansec_background`
--

LOCK TABLES `ansec_background` WRITE;
/*!40000 ALTER TABLE `ansec_background` DISABLE KEYS */;
INSERT INTO `ansec_background` VALUES (1,'images/AUIC-Logo_5NpxYmL.png','logotest','logotest','2018-11-01 11:41:37.000000','#'),(2,'images/38442242_983271961852761_1305581912370184192_n_1.jpg','Digital Design','Coming SoonLorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting','2018-11-01 11:43:13.000000','#');
/*!40000 ALTER TABLE `ansec_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ansec_events`
--

DROP TABLE IF EXISTS `ansec_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ansec_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ansec_events`
--

LOCK TABLES `ansec_events` WRITE;
/*!40000 ALTER TABLE `ansec_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ansec_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ansec_orgnizers`
--

DROP TABLE IF EXISTS `ansec_orgnizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ansec_orgnizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ansec_orgnizers`
--

LOCK TABLES `ansec_orgnizers` WRITE;
/*!40000 ALTER TABLE `ansec_orgnizers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ansec_orgnizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Employees');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,32),(2,1,44);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add slider',7,'add_slider'),(20,'Can change slider',7,'change_slider'),(21,'Can delete slider',7,'delete_slider'),(22,'Can add staff',8,'add_staff'),(23,'Can change staff',8,'change_staff'),(24,'Can delete staff',8,'delete_staff'),(25,'Can add event',9,'add_event'),(26,'Can change event',9,'change_event'),(27,'Can delete event',9,'delete_event'),(28,'Can add Fee',10,'add_fees'),(29,'Can change Fee',10,'change_fees'),(30,'Can delete Fee',10,'delete_fees'),(31,'Can add Acdamic Calander',11,'add_acdamic_calander'),(32,'Can change Acdamic Calander',11,'change_acdamic_calander'),(33,'Can delete Acdamic Calander',11,'delete_acdamic_calander'),(34,'Can add News',12,'add_new'),(35,'Can change News',12,'change_new'),(36,'Can delete News',12,'delete_new'),(37,'Can add timetable',13,'add_timetable'),(38,'Can change timetable',13,'change_timetable'),(39,'Can delete timetable',13,'delete_timetable'),(40,'Can add Online Admission',14,'add_online_admission'),(41,'Can change Online Admission',14,'change_online_admission'),(42,'Can delete Online Admission',14,'delete_online_admission'),(43,'Can add CLO',15,'add_clo'),(44,'Can change CLO',15,'change_clo'),(45,'Can delete CLO',15,'delete_clo'),(46,'Can add Message',16,'add_message'),(47,'Can change Message',16,'change_message'),(48,'Can delete Message',16,'delete_message'),(49,'Can add Timetable Graduate',17,'add_timetablegraduate'),(50,'Can change Timetable Graduate',17,'change_timetablegraduate'),(51,'Can delete Timetable Graduate',17,'delete_timetablegraduate'),(52,'Can add Download',18,'add_download'),(53,'Can change Download',18,'change_download'),(54,'Can delete Download',18,'delete_download'),(55,'Can add Permission Letter',19,'add_permission'),(56,'Can change Permission Letter',19,'change_permission'),(57,'Can delete Permission Letter',19,'delete_permission'),(58,'Can add Acdamic Calander Graduate',20,'add_acdamic_calander_graduate'),(59,'Can change Acdamic Calander Graduate',20,'change_acdamic_calander_graduate'),(60,'Can delete Acdamic Calander Graduate',20,'delete_acdamic_calander_graduate'),(61,'Can add DateSheet',21,'add_datesheet'),(62,'Can change DateSheet',21,'change_datesheet'),(63,'Can delete DateSheet',21,'delete_datesheet'),(64,'Can add banner',22,'add_banner'),(65,'Can change banner',22,'change_banner'),(66,'Can delete banner',22,'delete_banner'),(67,'Can add alumni',23,'add_alumni'),(68,'Can change alumni',23,'change_alumni'),(69,'Can delete alumni',23,'delete_alumni'),(70,'Can add Event',24,'add_events'),(71,'Can change Event',24,'change_events'),(72,'Can delete Event',24,'delete_events'),(73,'Can add Apply Now',25,'add_applynow'),(74,'Can change Apply Now',25,'change_applynow'),(75,'Can delete Apply Now',25,'delete_applynow'),(76,'Can add Background',26,'add_background'),(77,'Can change Background',26,'change_background'),(78,'Can delete Background',26,'delete_background'),(79,'Can add Orgnizer',27,'add_orgnizers'),(80,'Can change Orgnizer',27,'change_orgnizers'),(81,'Can delete Orgnizer',27,'delete_orgnizers');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$HFqRjU3huNFW$mxGKUuK867z6g4MhuXmN76i2LN1OaGkhW44JZPg+xdQ=','2019-06-25 08:20:57.042090',1,'admin','','','admin@gmail.com',1,1,'2017-12-11 11:09:06.028968'),(2,'pbkdf2_sha256$36000$49VmNkuyWejE$ZAnD0U2NSFVh0CxrepTazsMKM5HlJ39qzwl4bGdAXis=','2018-02-13 10:34:59.283802',0,'Aftab','','','',1,1,'2018-02-13 10:33:00.000000'),(3,'pbkdf2_sha256$36000$QbnPpK3IXKpj$TW4Py2sGdSYLWXuR5pFEnT7ewHGntq4CYLgA1k62xFc=',NULL,1,'surhan','','','surhan@gmail.com',1,1,'2018-07-20 12:24:02.795124');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,29);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=560 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-11 11:16:22.058501','1','Slider object',1,'[{\"added\": {}}]',7,1),(2,'2017-12-11 19:37:07.527617','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(3,'2017-12-11 19:37:38.786327','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider2\"]}}]',7,1),(4,'2017-12-11 19:38:29.882967','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider3\"]}}]',7,1),(5,'2017-12-12 07:38:12.931948','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(6,'2018-02-01 18:44:17.334054','1','Student object',1,'[{\"added\": {}}]',8,1),(7,'2018-02-01 18:44:32.751483','1','Student object',2,'[{\"changed\": {\"fields\": [\"name\", \"rollno\"]}}]',8,1),(8,'2018-02-01 18:44:42.139491','1','Student object',2,'[]',8,1),(9,'2018-02-01 18:44:53.824763','2','Student object',1,'[{\"added\": {}}]',8,1),(10,'2018-02-11 08:10:50.668493','1','Staff object',1,'[{\"added\": {}}]',9,1),(11,'2018-02-11 16:43:01.364910','2','Staff object',1,'[{\"added\": {}}]',9,1),(12,'2018-02-12 06:44:07.432835','3','Staff object',1,'[{\"added\": {}}]',9,1),(13,'2018-02-12 06:44:41.084338','4','Staff object',1,'[{\"added\": {}}]',9,1),(14,'2018-02-12 06:46:27.826214','5','Staff object',1,'[{\"added\": {}}]',9,1),(15,'2018-02-12 06:47:00.958051','6','Staff object',1,'[{\"added\": {}}]',9,1),(16,'2018-02-12 06:50:41.224248','3','Staff object',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',9,1),(17,'2018-02-12 06:52:02.601989','7','Staff object',1,'[{\"added\": {}}]',9,1),(18,'2018-02-12 06:52:46.801593','8','Staff object',1,'[{\"added\": {}}]',9,1),(19,'2018-02-12 07:27:57.165386','8','Staff object',2,'[{\"changed\": {\"fields\": [\"linkedin\"]}}]',9,1),(20,'2018-02-12 15:31:59.492370','1','Event object',1,'[{\"added\": {}}]',10,1),(21,'2018-02-12 15:33:51.931809','2','Event object',1,'[{\"added\": {}}]',10,1),(22,'2018-02-12 15:34:19.545786','3','Event object',1,'[{\"added\": {}}]',10,1),(23,'2018-02-13 07:08:13.348798','1','Facebook object',1,'[{\"added\": {}}]',11,1),(24,'2018-02-13 09:56:36.147534','2','Staff object',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',9,1),(25,'2018-02-13 09:56:56.826233','3','Staff object',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',9,1),(26,'2018-02-13 09:57:49.790809','4','Staff object',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',9,1),(27,'2018-02-13 10:33:00.845426','2','Aftab',1,'[{\"added\": {}}]',4,1),(28,'2018-02-13 10:33:30.496272','2','Aftab',2,'[]',4,1),(29,'2018-02-13 10:34:38.525370','2','Aftab',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(30,'2018-02-14 19:57:29.997621','1','Facebook object',2,'[{\"changed\": {\"fields\": [\"embededcode\"]}}]',11,1),(31,'2018-02-14 20:11:19.647761','1','Facebook object',2,'[{\"changed\": {\"fields\": [\"embededcode\"]}}]',11,1),(32,'2018-03-06 20:45:03.867788','1','Courses object',1,'[{\"added\": {}}]',12,1),(33,'2018-03-06 20:46:18.355779','1','Courses object',2,'[]',12,1),(34,'2018-03-06 20:46:25.191510','1','Courses object',2,'[]',12,1),(35,'2018-03-06 20:49:15.633213','1','Courses object',2,'[]',12,1),(36,'2018-03-06 20:55:57.027519','1','Courses object',2,'[{\"changed\": {\"fields\": [\"semester\"]}}]',12,1),(37,'2018-04-19 18:00:00.374449','1','Event Coming Soon-Be ready for something new',2,'[{\"changed\": {\"fields\": [\"timestamp\"]}}]',10,1),(38,'2018-04-19 18:34:23.867888','4','Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh',1,'[{\"added\": {}}]',10,1),(39,'2018-04-28 19:51:37.281570','1','Alumni object',1,'[{\"added\": {}}]',13,1),(40,'2018-04-28 19:53:06.899335','1','Alumni object',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',13,1),(41,'2018-04-28 19:53:14.983552','1','Alumni object',2,'[{\"changed\": {\"fields\": [\"occupation\"]}}]',13,1),(42,'2018-04-28 19:58:05.581489','1','Alumni object',2,'[{\"changed\": {\"fields\": [\"courses\", \"occupation\"]}}]',13,1),(43,'2018-05-30 17:01:15.020522','1','Alumni object',2,'[{\"changed\": {\"fields\": [\"full_Name\"]}}]',13,1),(44,'2018-06-04 07:59:48.692174','4','Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh',3,'',10,1),(45,'2018-06-04 16:06:04.184149','2','Staff object',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',9,1),(46,'2018-06-04 16:50:20.385708','9','Staff object',1,'[{\"added\": {}}]',9,1),(47,'2018-06-04 16:52:29.860844','10','Staff object',1,'[{\"added\": {}}]',9,1),(48,'2018-06-05 12:22:05.711444','1','Staff object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(49,'2018-06-05 12:23:40.609689','11','Staff object',1,'[{\"added\": {}}]',9,1),(50,'2018-06-05 12:25:05.130058','12','Staff object',1,'[{\"added\": {}}]',9,1),(51,'2018-06-05 12:26:08.861609','13','Staff object',1,'[{\"added\": {}}]',9,1),(52,'2018-06-05 12:27:07.671850','14','Staff object',1,'[{\"added\": {}}]',9,1),(53,'2018-06-05 12:28:28.920249','15','Staff object',1,'[{\"added\": {}}]',9,1),(54,'2018-06-21 13:28:29.790843','16','Staff object',1,'[{\"added\": {}}]',9,1),(55,'2018-06-21 13:32:01.977203','16','Staff object',3,'',9,1),(56,'2018-06-21 13:38:57.409625','2','Staff object',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',9,1),(57,'2018-06-25 13:07:21.889024','1','BE- Civil Engineering',1,'[{\"added\": {}}]',14,1),(58,'2018-06-25 13:07:54.255628','2','BE- Electrical Engineering',1,'[{\"added\": {}}]',14,1),(59,'2018-06-25 13:08:08.527262','3','Pharm-D',1,'[{\"added\": {}}]',14,1),(60,'2018-06-25 13:08:20.171192','4','BS- Software Engineering',1,'[{\"added\": {}}]',14,1),(61,'2018-06-25 13:08:33.768392','5','BS- Computer Science',1,'[{\"added\": {}}]',14,1),(62,'2018-06-25 13:08:47.870489','6','BS- Microbiology',1,'[{\"added\": {}}]',14,1),(63,'2018-06-25 13:08:58.855535','7','BS- Biotechnology',1,'[{\"added\": {}}]',14,1),(64,'2018-06-25 13:09:10.401513','8','BS- Telecommunication & Networks',1,'[{\"added\": {}}]',14,1),(65,'2018-06-25 13:09:23.853091','9','Bachelor in Business Administration',1,'[{\"added\": {}}]',14,1),(66,'2018-06-25 13:09:38.977885','10','Bachelor of Commerce',1,'[{\"added\": {}}]',14,1),(67,'2018-06-25 13:09:52.359406','11','BS- Development Studies',1,'[{\"added\": {}}]',14,1),(68,'2018-06-25 13:10:04.430829','12','B.Tech (Civil/Electrical)',1,'[{\"added\": {}}]',14,1),(69,'2018-06-25 13:10:15.907155','13','MS- Computer Science',1,'[{\"added\": {}}]',14,1),(70,'2018-06-25 13:10:29.900299','14','MS- Software Engineering',1,'[{\"added\": {}}]',14,1),(71,'2018-06-25 13:10:50.991509','15','MS- Telecommunication & Networks',1,'[{\"added\": {}}]',14,1),(72,'2018-06-25 16:47:51.234081','16','MS- Electrical Engineering',1,'[{\"added\": {}}]',14,1),(73,'2018-06-25 16:48:05.707882','17','MS- Management Science',1,'[{\"added\": {}}]',14,1),(74,'2018-06-25 16:48:30.354794','18','MS- Engineering Management',1,'[{\"added\": {}}]',14,1),(75,'2018-06-25 16:48:43.048411','19','MS- Industrial Management',1,'[{\"added\": {}}]',14,1),(76,'2018-06-25 16:49:29.866815','20','MS- Logistic and Supply Chain Management',1,'[{\"added\": {}}]',14,1),(77,'2018-06-25 16:49:55.292033','21','MS- Project Management',1,'[{\"added\": {}}]',14,1),(78,'2018-06-25 16:50:10.954604','22','MSc- Microbiology',1,'[{\"added\": {}}]',14,1),(79,'2018-06-25 16:50:28.033873','23','Master in Business Administration (1.5 - 2 year)',1,'[{\"added\": {}}]',14,1),(80,'2018-06-25 16:50:53.683327','24','Master in Business Administration (2 - 2.5 year)',1,'[{\"added\": {}}]',14,1),(81,'2018-06-25 16:51:16.444613','25','Master in Business Administration (3.5 year)',1,'[{\"added\": {}}]',14,1),(82,'2018-06-25 16:51:41.920145','26','Master of Commerce',1,'[{\"added\": {}}]',14,1),(83,'2018-06-25 16:51:54.516680','27','MS- Development Studies',1,'[{\"added\": {}}]',14,1),(84,'2018-06-26 18:54:12.472113','15','Mr. Abbas Haider-Lecturer',3,'',9,1),(85,'2018-06-27 11:43:24.845066','1','http://abasynisb.edu.pk/pdf/academiccalendar.pdf',1,'[{\"added\": {}}]',15,1),(86,'2018-06-27 13:06:17.341461','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\", \"slider2\", \"slider3\"]}}]',7,1),(87,'2018-06-27 13:12:44.021359','1','Coming Soon',1,'[{\"added\": {}}]',16,1),(88,'2018-06-27 13:19:31.452797','1','Coming Soon',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',16,1),(89,'2018-07-20 12:12:35.124344','28','MBA',1,'[{\"added\": {}}]',14,1),(90,'2018-09-03 13:51:13.670001','1','Sir Asad-Researcher',2,'[{\"changed\": {\"fields\": [\"department\"]}}]',9,1),(91,'2018-09-03 13:56:03.754484','1','Sir Asad-Researcher',2,'[{\"changed\": {\"fields\": [\"department\"]}}]',9,1),(92,'2018-09-03 13:57:35.616028','1','Sir Asad-Researcher',3,'',9,1),(93,'2018-09-03 18:19:00.035000','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(94,'2018-09-03 18:24:14.510599','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider3\"]}}]',7,1),(95,'2018-09-03 18:26:42.778426','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(96,'2018-09-03 18:28:31.840180','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider2\"]}}]',7,1),(97,'2018-09-03 18:32:11.128943','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider3\"]}}]',7,1),(98,'2018-09-03 19:17:13.603549','1','http://abasynisb.edu.pk/pdf/academiccalendar.pdf',3,'',15,1),(99,'2018-09-03 19:19:06.400296','2','https://drive.google.com/file/d/1YDZubokmzvKW2ijWaKZIVbPh19VVyz_w/view?usp=sharing',1,'[{\"added\": {}}]',15,1),(100,'2018-09-03 19:34:44.181215','3','Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]',10,1),(101,'2018-09-03 19:37:22.282110','2','Orientation Session Fall 18-Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]',10,1),(102,'2018-09-03 19:38:29.131274','1','ANSEC 18 Coming Soon-ANSEC 18 Coming Soon',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]',10,1),(103,'2018-09-03 19:43:02.881341','1','Coming Soon',2,'[{\"changed\": {\"fields\": [\"picture\", \"description\", \"timestamp\"]}}]',16,1),(104,'2018-09-03 20:33:17.459590','1','Result Summer 18',2,'[{\"changed\": {\"fields\": [\"title\", \"description\"]}}]',16,1),(105,'2018-09-03 20:34:23.795394','3','Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide',2,'[]',10,1),(106,'2018-09-04 12:29:54.037911','1','https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit',1,'[{\"added\": {}}]',17,1),(107,'2018-09-04 12:50:39.738701','1','Result Summer 18',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',16,1),(108,'2018-09-04 12:52:22.779964','1','Result Summer 18',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',16,1),(109,'2018-09-04 13:02:14.958468','1','Result Summer 18',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',16,1),(110,'2018-09-04 13:05:32.001889','3','Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',10,1),(111,'2018-09-04 13:05:52.708453','2','Orientation Session Fall 18-Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',10,1),(112,'2018-09-04 13:06:07.054745','1','ANSEC 18 Coming Soon-ANSEC 18 Coming Soon',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',10,1),(113,'2018-09-04 13:31:46.858582','28','MBA',3,'',14,1),(114,'2018-09-13 20:17:28.188968','1','#',1,'[{\"added\": {}}]',18,1),(115,'2018-09-13 20:28:51.236445','8','Mr. Rashid Kamal-Lab Engineer',3,'',9,1),(116,'2018-09-14 16:50:24.017807','1','Employees',1,'[{\"added\": {}}]',3,1),(117,'2018-09-14 16:53:02.175417','1','Employees',2,'[]',3,1),(118,'2018-09-17 17:36:34.056005','2','Dr Sidra Sultana-HoD Department of Computing',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',9,1),(119,'2018-09-17 17:50:07.303934','1','https://www.w3schools.com/bootstrap/bootstrap_buttons.asp',1,'[{\"added\": {}}]',23,1),(120,'2018-09-17 17:51:15.246291','1','https://www.w3schools.com/bootstrap/bootstrap_buttons.aspElectrical',3,'',23,1),(121,'2018-09-17 17:51:20.312672','2','https://www.w3schools.com/bootstrap/bootstrap_buttons.aspComing Soon',1,'[{\"added\": {}}]',23,1),(122,'2018-09-17 18:06:31.079795','2','https://www.w3schools.com/bootstrap/bootstrap_buttons.aspElectrical',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',23,1),(123,'2018-09-17 18:09:12.903865','3','Civil',1,'[{\"added\": {}}]',23,1),(124,'2018-09-17 18:34:21.663051','4','Computing',1,'[{\"added\": {}}]',23,1),(125,'2018-09-17 18:38:38.951825','4','Computing',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',23,1),(126,'2018-09-17 18:48:39.401700','1','https://www.w3schools.com/bootstrap/bootstrap_buttons.asp',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',18,1),(127,'2018-09-21 16:11:03.269143','1','Admissions are open',1,'[{\"added\": {}}]',24,1),(128,'2018-09-21 16:14:30.472589','1','Result has been announced',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',24,1),(129,'2018-09-21 16:21:15.036430','1','https://www.w3schools.com/bootstrap/bootstrap_buttons.asp',1,'[{\"added\": {}}]',25,1),(130,'2018-09-22 11:49:35.599506','1','Application Form',1,'[{\"added\": {}}]',26,1),(131,'2018-09-22 11:50:50.409541','2','Prospectus',1,'[{\"added\": {}}]',26,1),(132,'2018-09-22 11:51:06.249478','3','Handbook',1,'[{\"added\": {}}]',26,1),(133,'2018-09-22 12:09:24.662971','3','Student Handbook',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',26,1),(134,'2018-09-22 12:12:42.594335','1','http://35.172.219.204/admissionsystem/AA/bootstrap/index.php',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',18,1),(135,'2018-09-22 17:20:24.696625','1','HEC',1,'[{\"added\": {}}]',27,1),(136,'2018-09-22 17:20:55.678606','2','Civil',1,'[{\"added\": {}}]',27,1),(137,'2018-09-22 17:24:06.971951','3','Electrical',1,'[{\"added\": {}}]',27,1),(138,'2018-09-22 17:24:22.014159','4','Computing',1,'[{\"added\": {}}]',27,1),(139,'2018-09-22 18:09:45.121187','1','Admissions are open',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',24,1),(140,'2018-09-26 04:19:43.239495','1','Official Page of AUIC',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',16,1),(141,'2018-09-26 04:22:45.022682','2','Youm e Ashora',1,'[{\"added\": {}}]',16,1),(142,'2018-09-26 04:25:09.037495','3','Ambassador\'s Call',1,'[{\"added\": {}}]',16,1),(143,'2018-09-26 04:26:16.095824','3','Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',10,1),(144,'2018-09-26 04:29:21.910035','1','https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',25,1),(145,'2018-09-26 04:38:43.976172','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',23,1),(146,'2018-09-26 05:00:24.733566','2','Electrical',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',23,1),(147,'2018-09-27 18:19:43.702561','1','MS Date Sheet',1,'[{\"added\": {}}]',28,1),(148,'2018-09-27 18:33:01.225771','1','MS DateSheet',1,'[{\"added\": {}}]',29,1),(149,'2018-09-27 18:47:19.142590','1','MS DateSheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',29,1),(150,'2018-09-27 18:47:44.203498','1','MS DateSheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',29,1),(151,'2018-09-27 18:48:00.099810','2','ANSEC',1,'[{\"added\": {}}]',29,1),(152,'2018-09-27 18:48:16.756621','2','ANSEC',3,'',29,1),(153,'2018-09-27 18:48:21.540062','1','MS DateSheet',3,'',29,1),(154,'2018-09-28 09:46:43.016584','3','MS DateSheet',1,'[{\"added\": {}}]',29,1),(155,'2018-09-28 12:25:04.593999','3','B-Tech Timetable',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',29,1),(156,'2018-09-28 12:25:32.953603','4','MS Dateseet',1,'[{\"added\": {}}]',29,1),(157,'2018-09-28 12:26:00.398405','5','BS DateSheet',1,'[{\"added\": {}}]',29,1),(158,'2018-09-28 12:28:21.191233','5','BS DateSheet',3,'',29,1),(159,'2018-09-28 14:47:48.105561','3','Dr. Amjad Mahmood-Professor/ Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',9,1),(160,'2018-09-28 14:57:33.629972','3','Dr. Amjad Mahmood-Professor/ Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',9,1),(161,'2018-09-28 15:02:49.996666','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',23,1),(162,'2018-09-28 16:16:48.588023','1','Banner object',1,'[{\"added\": {}}]',30,1),(163,'2018-09-28 18:38:23.286441','14','Ms. Laila Khalid-Assistant Professor',3,'',9,1),(164,'2018-09-28 18:38:23.442480','13','Ms. Naheed Akhtar-Assistant Professor',3,'',9,1),(165,'2018-09-28 18:38:23.638464','12','Mr. Zeeshan Ullah-Assistant Professor',3,'',9,1),(166,'2018-09-28 18:38:23.914484','11','Dr. M. Salik Javaid-Professor/ HoD Dept. of Civil Engineering',3,'',9,1),(167,'2018-09-28 18:38:24.062492','10','Dr. I.S. Awan-none',3,'',9,1),(168,'2018-09-28 18:38:24.182502','9','Dr. M. Noman Jafri-Professor/ Dean of Engineering and Computing',3,'',9,1),(169,'2018-09-28 18:38:24.294508','7','Ms. Madiha Naveed-Lab Engineer',3,'',9,1),(170,'2018-09-28 18:38:24.438516','6','Ms. Naveen Ahmed-Lecturer',3,'',9,1),(171,'2018-09-28 18:38:24.574529','5','Ms. Sameen Javed-Lecturer',3,'',9,1),(172,'2018-09-28 18:38:24.714596','4','Dr. M. Yousaf Khan-Associate Professor',3,'',9,1),(173,'2018-09-28 18:38:24.870552','3','Dr. Amjad Mahmood-Professor/ Executive Director',3,'',9,1),(174,'2018-09-28 18:38:25.042561','2','Dr Sidra Sultana-HoD Department of Computing',3,'',9,1),(175,'2018-09-28 18:41:37.323468','15','Dr. Amjad Mahmood-Executive Director',1,'[{\"added\": {}}]',9,1),(176,'2018-09-28 18:45:25.298769','16','Dr. Muhammad Yousaf Khan-Associate Professor',1,'[{\"added\": {}}]',9,1),(177,'2018-09-28 18:46:51.381987','17','Dr. Sidra Sultana-HOD',1,'[{\"added\": {}}]',9,1),(178,'2018-09-28 18:48:09.555463','18','Mr. Abdul Basit-Assistant Professor',1,'[{\"added\": {}}]',9,1),(179,'2018-09-28 18:49:56.412209','19','Mr. Abdul Hannan-Assistant Professor',1,'[{\"added\": {}}]',9,1),(180,'2018-09-28 18:51:38.335838','20','Mr.Muhammad Idrees-Assistant Professor',1,'[{\"added\": {}}]',9,1),(181,'2018-09-28 18:54:56.604648','21','Ms. Sameen Javed-Lecturer',1,'[{\"added\": {}}]',9,1),(182,'2018-09-28 19:02:02.924748','22','Ms. Naveen Ahmed-Lecturer',1,'[{\"added\": {}}]',9,1),(183,'2018-09-28 19:03:02.166911','23','Mr. Asad Hanif-Lecturer',1,'[{\"added\": {}}]',9,1),(184,'2018-09-28 19:05:01.425699','24','Ms. Madiha Naveed-Lab Engineer/Coordinator',1,'[{\"added\": {}}]',9,1),(185,'2018-09-28 19:06:40.896119','25','Mr. Muhammad Murtaza-Lab Engineer',1,'[{\"added\": {}}]',9,1),(186,'2018-09-28 19:08:17.309794','25','Mr. Muhammad Murtaza-Lab Engineer',3,'',9,1),(187,'2018-09-28 19:08:17.474911','24','Ms. Madiha Naveed-Lab Engineer/Coordinator',3,'',9,1),(188,'2018-09-28 19:08:17.608007','23','Mr. Asad Hanif-Lecturer',3,'',9,1),(189,'2018-09-28 19:09:12.494245','26','Ms. Madiha Hena-Lecturer',1,'[{\"added\": {}}]',9,1),(190,'2018-09-28 19:10:08.884066','27','Mr. Asad Hanif-Lecturer',1,'[{\"added\": {}}]',9,1),(191,'2018-09-28 19:10:47.335748','27','Mr. Asad Hanif-Lecturer',2,'[{\"changed\": {\"fields\": [\"qualification\", \"profile\"]}}]',9,1),(192,'2018-09-28 19:11:48.647513','28','Ms. Madiha Naveed-Lab Engineer/Coordinator',1,'[{\"added\": {}}]',9,1),(193,'2018-09-28 19:12:37.513556','29','Mr. Muhammad Murtaza-Lab Engineer',1,'[{\"added\": {}}]',9,1),(194,'2018-09-28 19:16:08.908615','30','Mr. Muhammad Uzair-Lab Engineer',1,'[{\"added\": {}}]',9,1),(195,'2018-09-28 19:25:03.336692','30','Mr. Muhammad Uzair-Lab Engineer',3,'',9,1),(196,'2018-09-28 19:27:31.071941','31','Dr.M.Noman Jafri-Professor & Dean',1,'[{\"added\": {}}]',9,1),(197,'2018-09-28 19:31:20.534635','32','Dr. Imran Shafi-Associate Professor',1,'[{\"added\": {}}]',9,1),(198,'2018-09-28 19:32:09.073494','33','Dr. Waqar Ahmed Malik-Associate Professor/HOD',1,'[{\"added\": {}}]',9,1),(199,'2018-09-28 19:32:15.248770','32','Dr. Imran Shafi-Associate Professor',2,'[{\"changed\": {\"fields\": [\"department\"]}}]',9,1),(200,'2018-09-28 19:33:52.692664','34','Mr. Yasir Javed-Assistant Professor',1,'[{\"added\": {}}]',9,1),(201,'2018-09-28 19:35:06.354506','35','Mr. Wasif Latif-Assistant Professor',1,'[{\"added\": {}}]',9,1),(202,'2018-09-28 19:36:37.560953','36','Mr Kamran Qureshi-Lecturer',1,'[{\"added\": {}}]',9,1),(203,'2018-09-28 19:37:47.785886','37','Mr. Shahzaib Iqbal-Lecturer',1,'[{\"added\": {}}]',9,1),(204,'2018-09-28 19:38:52.620535','38','Ms.Rashida Khalid-Lecturer',1,'[{\"added\": {}}]',9,1),(205,'2018-09-28 19:40:01.227520','39','Ms. Laiba Jawad-Lab Engineer/Coordinator',1,'[{\"added\": {}}]',9,1),(206,'2018-09-28 19:41:21.599593','40','Mr. Rafi-u-Zman-Lab Engineer',1,'[{\"added\": {}}]',9,1),(207,'2018-09-28 19:43:05.022471','41','Mr. Asim-ul-Haq-Lab Engineer',1,'[{\"added\": {}}]',9,1),(208,'2018-09-28 19:45:33.549226','42','Dr. Muhammad Salik Javaid-HoD/Professor',1,'[{\"added\": {}}]',9,1),(209,'2018-09-28 19:47:59.627384','43','Ms. Laila Khalid-Assistant Professor',1,'[{\"added\": {}}]',9,1),(210,'2018-09-28 19:49:00.087306','44','Mr. Khan Shahid Kamal Khan-Assistant Professor',1,'[{\"added\": {}}]',9,1),(211,'2018-09-28 19:49:48.702513','45','Ms. Naheed Akhtar-Assistant Professor',1,'[{\"added\": {}}]',9,1),(212,'2018-09-28 19:52:14.129323','46','Mr. Muhammad Farjad Sami.-Lecturer',1,'[{\"added\": {}}]',9,1),(213,'2018-09-28 19:53:35.216198','47','Mr. Muhammad Waqas Malik-Lecturer',1,'[{\"added\": {}}]',9,1),(214,'2018-09-28 19:55:20.002734','48','Mr. Muhammad Sarfraz-Junior Lecture',1,'[{\"added\": {}}]',9,1),(215,'2018-09-28 19:58:43.505832','49','Mr.Zeeshan Khalil-Lab Engineer',1,'[{\"added\": {}}]',9,1),(216,'2018-09-28 19:59:44.383671','50','Mr. Muhammad Shahrukh Pasha-Lab Engineer',1,'[{\"added\": {}}]',9,1),(217,'2018-09-28 20:04:23.978848','51','Ms. Khola Ilyas-Assistant Professor/HoD',1,'[{\"added\": {}}]',9,1),(218,'2018-09-28 20:06:12.206837','52','Mr. Khursheed Ali-Assistant Professor',1,'[{\"added\": {}}]',9,1),(219,'2018-09-28 20:07:25.108192','53','Mr. Furqan Saeed-Lecturer/ Program Coordinator',1,'[{\"added\": {}}]',9,1),(220,'2018-09-28 20:10:19.978756','54','Ms. Aisha Razzaq-Lecturer',1,'[{\"added\": {}}]',9,1),(221,'2018-09-28 20:11:34.113774','55','Mr. Roman Khan-Lecturer',1,'[{\"added\": {}}]',9,1),(222,'2018-09-28 20:12:50.141122','56','Dr. Muhammad Akhlaq Mughal-HoD/ Associate Professor',1,'[{\"added\": {}}]',9,1),(223,'2018-09-28 20:17:35.061388','57','Mr. Muhammad Rashid-Assistant Professor',1,'[{\"added\": {}}]',9,1),(224,'2018-09-28 20:18:56.493964','58','Dr. Sajjad Ahmad-Assistant Professor/Coordinator',1,'[{\"added\": {}}]',9,1),(225,'2018-09-28 20:19:12.242119','57','Mr. Muhammad Rashid-Assistant Professor',3,'',9,1),(226,'2018-09-28 20:21:40.561007','59','Dr. Fariha Masood-Assistant Professor',1,'[{\"added\": {}}]',9,1),(227,'2018-09-28 20:22:42.512713','60','Mr. Muhammad Rashid-Assistant Professor',1,'[{\"added\": {}}]',9,1),(228,'2018-09-28 20:23:50.131882','61','Mr. Allah Nawaz Khan-Lecturer/HOD Life Science',1,'[{\"added\": {}}]',9,1),(229,'2018-09-28 20:25:01.816990','62','Ms. Tabinda Azim-Lecturer',1,'[{\"added\": {}}]',9,1),(230,'2018-09-28 20:26:05.156266','63','Mr Muhammad Wasim-Lecturer',1,'[{\"added\": {}}]',9,1),(231,'2018-09-28 20:27:51.602426','64','Ms. Rabaila Riaz-Lecturer',1,'[{\"added\": {}}]',9,1),(232,'2018-09-28 20:28:51.706876','65','Ms. Wajiha Khalid-Lecturer',1,'[{\"added\": {}}]',9,1),(233,'2018-09-28 20:29:45.975676','66','Mr. Iqra Hamid-Lab Demonstrator',1,'[{\"added\": {}}]',9,1),(234,'2018-09-28 20:30:42.271222','67','Mr. Amrullah Khan-Lab Assistant',1,'[{\"added\": {}}]',9,1),(235,'2018-09-28 20:39:33.823542','4','MS Dateseet',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',29,1),(236,'2018-09-28 20:40:33.978542','1','https://drive.google.com/file/d/1z2_Ec7xF96Hh4ineeZaS-u9NMILVK4EW/view?usp=sharing',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',25,1),(237,'2018-09-28 20:41:28.642892','1','MS Calender',2,'[{\"changed\": {\"fields\": [\"link\", \"title\"]}}]',28,1),(238,'2018-09-28 20:43:34.887245','3','B-Tech Timetable',3,'',29,1),(239,'2018-09-29 19:06:50.650634','16','Dr. Muhammad Yousaf Khan-Associate Professor',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',9,1),(240,'2018-10-05 06:12:34.732675','4','MS Datesheet',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',29,1),(241,'2018-10-08 08:06:21.045509','1','Slider object',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(242,'2018-10-12 18:03:52.547552','1','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(243,'2018-10-12 18:04:07.280921','1','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(244,'2018-10-12 18:04:31.159839','1','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(245,'2018-10-12 18:05:47.939978','1','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',7,1),(246,'2018-10-12 18:06:37.997758','2','Slider object',1,'[{\"added\": {}}]',7,1),(247,'2018-11-01 07:19:58.729796','1','#',1,'[{\"added\": {}}]',25,1),(248,'2018-11-01 07:20:23.258138','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(249,'2018-11-01 07:20:30.391785','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(250,'2018-11-01 11:41:41.114715','1','logotest',1,'[{\"added\": {}}]',26,1),(251,'2018-11-01 11:43:09.643457','2','Digital Design',1,'[{\"added\": {}}]',26,1),(252,'2018-11-01 11:49:36.716999','1','http://18.205.240.98/admissionsystem/AA/bootstrap/index.php',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',14,1),(253,'2018-11-01 11:52:57.017421','4','raoasifraza',1,'[{\"added\": {}}]',4,1),(254,'2018-11-01 11:54:05.603630','4','raoasifraza',2,'[{\"changed\": {\"fields\": [\"groups\", \"user_permissions\"]}}]',4,1),(255,'2018-11-01 11:54:27.077192','4','raoasifraza',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',4,1),(256,'2018-11-01 11:55:55.532513','4','raoasifraza',3,'',4,1),(257,'2018-11-01 12:31:47.897686','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(258,'2018-11-01 12:32:16.486896','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(259,'2018-11-01 12:35:02.818529','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(260,'2018-11-01 12:35:48.274896','15','Dr. Amjad Mahmood-Executive Director',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(261,'2018-11-01 13:06:03.466572','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(262,'2018-11-01 13:07:58.927765','4','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of November 2018.  It is',1,'[{\"added\": {}}]',9,1),(263,'2018-11-01 13:08:25.392907','1','ANSEC 18 Coming Soon-ANSEC 18 Coming Soon',3,'',9,1),(264,'2018-11-01 13:10:52.690146','3','Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.',3,'',9,1),(265,'2018-11-01 13:10:52.691022','2','Orientation Session Fall 18-Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.',3,'',9,1),(266,'2018-11-01 13:12:04.095186','5','Teacher\'s Day-A teacher is like a light house, who lightens up the lives of the students. Teachers not only groom up their personaliti',1,'[{\"added\": {}}]',9,1),(267,'2018-11-01 13:15:40.699405','6','Plantation Day-Let’s take our future in our hand and plant for the future. Be a part of Abasyn plantation campaign to save ourself.',1,'[{\"added\": {}}]',9,1),(268,'2018-11-01 13:16:10.106870','4','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of November 2018.  It is',3,'',9,1),(269,'2018-11-01 13:16:50.598002','7','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of November 2018.',1,'[{\"added\": {}}]',9,1),(270,'2018-11-01 13:18:11.206597','6','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of November 2018.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(271,'2018-11-01 13:19:10.251414','6','Plantation Day-Let’s take our future in our hand and plant for the future. Be a part of Abasyn plantation campaign to save ourself.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(272,'2018-11-01 13:20:38.035759','6','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of November 2018.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(273,'2018-11-01 13:26:04.319908','7','Annual Fiesta\'18-Registrations OPEN for Annual Fiesta\'18! Tickets are now available at the Finance Office.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(274,'2018-11-01 13:27:11.279794','5','Annual Fiesta\'18-Registrations OPEN for Annual Fiesta\'18! Tickets are now available at the Finance Office.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(275,'2018-11-01 13:29:57.925025','7','Abasyn Sports Festival-Abasyn Sports Gala presents a week of comfort with the following games after mids.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(276,'2018-11-01 13:32:18.845247','3','Ambassador\'s Call',3,'',12,1),(277,'2018-11-01 13:32:18.846153','2','Youm e Ashora',3,'',12,1),(278,'2018-11-01 13:32:18.846957','1','Official Page of AUIC',3,'',12,1),(279,'2018-11-01 13:34:43.662715','4','Official pages of AUIC',1,'[{\"added\": {}}]',12,1),(280,'2018-11-01 13:37:22.203968','5','Mid Term Date Sheet',1,'[{\"added\": {}}]',12,1),(281,'2018-11-01 13:41:15.909862','6','Registrations Open for Convocation',1,'[{\"added\": {}}]',12,1),(282,'2018-11-01 13:42:28.903711','4','Convocation 2018',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(283,'2018-11-01 13:43:31.033208','6','Official pages of AUIC',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(284,'2018-11-01 13:44:08.608799','4','Registrations Open for Convocation',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',12,1),(285,'2018-11-01 13:46:00.974405','4','Registrations Open for Convocation',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(286,'2018-11-01 13:47:45.735720','1','Registrations Open for Convocation 2018',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(287,'2018-11-01 13:49:17.049373','4','MS Datesheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',21,1),(288,'2018-11-01 13:52:46.554534','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(289,'2018-11-01 13:54:01.283538','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(290,'2018-11-01 13:57:24.012900','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(291,'2018-11-01 13:58:15.075125','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(292,'2018-11-01 14:06:44.993279','28','BS- English',1,'[{\"added\": {}}]',10,1),(293,'2018-11-01 14:08:57.704955','29','BS- Psychology',1,'[{\"added\": {}}]',10,1),(294,'2018-11-01 14:09:22.398714','30','DPT',1,'[{\"added\": {}}]',10,1),(295,'2018-11-01 14:09:41.091249','31','MLT',1,'[{\"added\": {}}]',10,1),(296,'2018-11-01 14:11:12.756014','12','B.Tech (Civil/Electrical/Mechanical)',2,'[{\"changed\": {\"fields\": [\"program_name\"]}}]',10,1),(297,'2018-11-01 14:12:31.462210','6','BS- Microbiology',2,'[{\"changed\": {\"fields\": [\"fees\"]}}]',10,1),(298,'2018-11-01 14:21:01.863568','66','Ms. Iqra Hamid-Lab Demonstrator',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(299,'2018-11-01 14:23:58.894722','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(300,'2018-11-02 06:50:16.447292','5','Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"description\", \"link\"]}}]',12,1),(301,'2018-11-02 07:07:15.965516','5','Updated Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',12,1),(302,'2018-11-02 07:07:46.600276','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(303,'2018-11-05 08:29:14.655482','19','Mr. Abdul Hannan-Assistant Professor',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(304,'2018-11-07 12:51:43.950213','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider3\"]}}]',7,1),(305,'2018-11-07 12:53:38.743059','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(306,'2018-11-07 12:55:14.159002','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider3\"]}}]',7,1),(307,'2018-11-07 12:56:30.304465','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(308,'2018-11-07 12:59:45.843347','1','Registrations Open for Convocation 2018  & Admissions Open Spring 18',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(309,'2018-11-07 13:00:19.186434','1','Registrations for Convocation 2018  & Admissions Open Spring 18',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(310,'2018-11-07 13:01:05.101075','1','Registrations open for Convocation 2018',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(311,'2018-11-07 13:01:46.118755','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(312,'2018-11-07 13:43:31.826479','6','ANSEC 18',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(313,'2018-11-07 13:44:04.838336','6','ANSEC 18',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(314,'2018-11-07 14:00:15.524022','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(315,'2018-11-07 16:10:49.151294','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(316,'2018-11-07 16:21:53.415644','6','ANSEC 18',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(317,'2018-11-14 13:40:45.925613','29','Mr. Muhammad Murtaza-Lab Engineer',3,'',8,1),(318,'2018-11-14 13:40:45.928185','28','Ms. Madiha Naveed-Lab Engineer/Coordinator',3,'',8,1),(319,'2018-11-14 13:46:02.253191','68','MS. Sundus Khursheed-Lecturer',1,'[{\"added\": {}}]',8,1),(320,'2018-11-14 13:48:19.221174','69','Mr. Badar Sultan Minhas-Lecturer',1,'[{\"added\": {}}]',8,1),(321,'2018-11-14 13:50:21.991243','70','Ms. Aqsa Jillani-Lecturer',1,'[{\"added\": {}}]',8,1),(322,'2018-11-14 13:58:15.865410','71','Ms. Madiha Naveed-Junior Lecturer / Coordinator',1,'[{\"added\": {}}]',8,1),(323,'2018-11-14 14:01:46.602790','72','Mr. Muhammad Murtaza-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(324,'2018-11-14 14:05:26.492879','73','Mr. Rashid Kamala-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(325,'2018-11-14 14:09:17.535782','74','Mr. Muhammad Uzair-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(326,'2018-11-14 14:10:37.372708','75','Mr. Warqr Ali-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(327,'2018-11-14 14:11:30.821377','17','Dr. Sidra Sultana-HOD / Assistant Professor',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',8,1),(328,'2018-11-14 14:11:55.735376','15','Dr. Amjad Mahmood-Professor',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',8,1),(329,'2018-11-14 16:49:51.451712','71','Ms. Madiha Naveed-Junior Lecturer / Coordinator',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(330,'2018-11-15 04:56:13.674422','1','https://docs.google.com/document/d/1MPpROIGtxDNwRPOTOPren0y14Ooww6Wvmvpv25rHViM/edit?usp=sharing',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(331,'2018-11-15 10:25:18.984383','76','Mr. Ahmed Ali Khan-Junior Lecture',1,'[{\"added\": {}}]',8,1),(332,'2018-11-17 15:40:54.394040','12','B.Tech (Civil/Electrical/Mechanical)',2,'[{\"changed\": {\"fields\": [\"fees\"]}}]',10,1),(333,'2018-11-17 15:41:42.177739','32','BS- Human Nutrition & Dietetics',1,'[{\"added\": {}}]',10,1),(334,'2018-11-17 15:42:51.044392','33','BS- Fashion & Design',1,'[{\"added\": {}}]',10,1),(335,'2018-11-17 15:43:53.798805','34','M.Phill - Microbiology',1,'[{\"added\": {}}]',10,1),(336,'2018-11-19 04:54:33.780212','1','https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit?usp=sharing',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(337,'2018-11-19 04:58:44.842425','73','Mr. Rashid Kamala-Junior Lecturer',3,'',8,1),(338,'2018-11-19 04:58:44.843888','70','Ms. Aqsa Jillani-Lecturer',3,'',8,1),(339,'2018-11-19 04:58:44.844635','69','Mr. Badar Sultan Minhas-Lecturer',3,'',8,1),(340,'2018-11-19 04:58:44.845357','68','MS. Sundus Khursheed-Lecturer',3,'',8,1),(341,'2018-11-19 05:00:45.063123','74','Mr. Muhammad Uzair-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(342,'2018-11-19 05:02:51.894414','72','Mr. Muhammad Murtaza-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(343,'2018-11-19 05:07:08.679972','72','Mr. Muhammad Murtaza-Junior Lecturer',2,'[]',8,1),(344,'2018-11-19 05:08:05.110524','72','Mr. Muhammad Murtaza-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(345,'2018-11-24 15:55:16.882479','1','No classes of MS on 24th Nov',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(346,'2018-11-25 19:37:48.755233','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(347,'2018-11-25 19:38:10.748857','1','ANSEC 18 Register Now',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(348,'2018-11-25 19:38:30.295063','1','ANSEC\'18 Register Now',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(349,'2018-11-28 08:10:14.643792','1','Slider object (1)',2,'[]',7,1),(350,'2018-11-28 08:11:31.504088','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(351,'2018-11-28 08:15:30.340399','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(352,'2018-11-28 08:17:04.542677','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(353,'2018-11-28 08:18:04.644921','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(354,'2018-11-28 08:20:29.747990','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(355,'2018-11-28 08:21:47.670092','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(356,'2018-12-02 18:12:32.882916','6','ANSEC 18',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(357,'2018-12-02 18:15:52.410644','6','Convocation 2018-Convocation Ceremony of Abasyn University Islamabad Campus is schedule to be held in last Week of December 2018.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(358,'2018-12-04 15:02:47.172483','4','MS  Datesheet',2,'[{\"changed\": {\"fields\": [\"link\", \"title\", \"visibility\"]}}]',21,1),(359,'2018-12-05 16:30:24.810778','1','Convocation Register Now',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(360,'2018-12-05 16:31:29.966033','6','ANSEC 18',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',12,1),(361,'2018-12-05 16:32:14.655374','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(362,'2018-12-05 16:34:37.465014','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(363,'2018-12-10 07:44:35.934542','6','Convocation 2018-Final date of Convocation Ceremony of Abasyn University Islamabad will be announced after the confirmation of Governor',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(364,'2018-12-10 16:52:15.867273','4','MS  Datesheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',21,1),(365,'2018-12-10 17:08:53.993646','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(366,'2018-12-10 17:10:10.568397','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(367,'2018-12-11 16:10:45.180193','4','MS  Datesheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',21,1),(368,'2018-12-12 10:17:15.420582','58','Dr. Sajjad Ahmad-Assistant Professor/Coordinator',3,'',8,1),(369,'2018-12-12 16:44:02.558705','6','Convocation 2018-Final date of Convocation Ceremony of AUIC will be announced after the confirmation of honorable Governor KPK.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(370,'2018-12-12 16:45:08.121413','4','Registrations Open for Convocation',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(371,'2018-12-13 08:07:20.094771','5','https://drive.google.com/file/d/1r7XHVSBYHgd1eCRPsWdNlCc5IeUUro9a/view?usp=sharing',1,'[{\"added\": {}}]',21,1),(372,'2018-12-13 08:09:39.617305','5','https://drive.google.com/file/d/1r7XHVSBYHgd1eCRPsWdNlCc5IeUUro9a/view?usp=sharing',2,'[]',21,1),(373,'2018-12-13 08:09:50.183791','5','BS Datesheet',2,'[{\"changed\": {\"fields\": [\"link\", \"title\"]}}]',21,1),(374,'2018-12-13 08:11:17.613754','5','Final Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"title\", \"description\", \"link\"]}}]',12,1),(375,'2018-12-14 18:31:58.409583','6','Convocation 2018-Final date of Convocation Ceremony of AUIC will be announced after the confirmation of honorable Governor KPK.',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',9,1),(376,'2018-12-14 18:34:15.323136','4','Registrations Open for Convocation',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',12,1),(377,'2018-12-20 17:20:59.253388','5','BS Datesheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',21,1),(378,'2018-12-20 17:22:09.345551','1','Banner object (1)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(379,'2018-12-23 05:37:37.541040','7','Entry Test Spring\'19-Entry test will be held on 22 December , 2018 at 09:30am.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(380,'2018-12-24 18:50:08.988530','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(381,'2018-12-27 05:24:50.555796','1','Banner object (1)',3,'',22,1),(382,'2018-12-27 05:29:11.200795','2','Banner object (2)',1,'[{\"added\": {}}]',22,1),(383,'2019-01-01 15:07:39.873803','54','Ms. Aisha Razzaq-Lecturer',3,'',8,1),(384,'2019-01-04 09:56:57.673962','4','MS  Datesheet',2,'[{\"changed\": {\"fields\": [\"visibility\"]}}]',21,1),(385,'2019-01-04 10:58:25.115414','1','Result announced Fall\'18.',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(386,'2019-01-04 10:59:14.842204','2','Banner object (2)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(387,'2019-01-04 11:01:07.972859','6','Result Fall\'18',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(388,'2019-01-09 11:55:31.850986','5','Orientation Spring\'19-Orientation session for Spring\'19 will be held on 14th January , 2019 at 09:30am.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(389,'2019-01-09 12:02:24.268759','5','Orientation Spring\'19-Orientation session for Spring\'19 will be held on 14th January , 2019 at 09:30 am in Main Auditorium , AUIC.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(390,'2019-01-09 12:03:20.077992','2','Banner object (2)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(391,'2019-01-09 12:14:33.180603','2','Banner object (2)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(392,'2019-01-11 05:20:58.809636','1','https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit?usp=sharing',3,'',13,1),(393,'2019-01-11 05:21:17.998587','2','https://docs.google.com/document/d/1xOQq9SwwyK5O0UrbHhs1CIEvXDw1Fjntw3oaAkCx2pk/edit?ts=5c38273f',1,'[{\"added\": {}}]',13,1),(394,'2019-01-11 05:22:45.561232','1','https://docs.google.com/document/d/1xOQq9SwwyK5O0UrbHhs1CIEvXDw1Fjntw3oaAkCx2pk/edit?ts=5c38273f',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',17,1),(395,'2019-01-21 17:38:50.221028','17','Dr.-HOD',2,'[{\"changed\": {\"fields\": [\"name\", \"designation\", \"qualification\"]}}]',8,1),(396,'2019-01-21 19:06:00.682484','17','Dr.-HOD',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(397,'2019-01-22 04:55:09.469687','6','Convocation 2019-Final date of Convocation Ceremony of AUIC will be announced after the confirmation of honorable Governor KPK.',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',9,1),(398,'2019-01-23 17:15:20.302720','75','Mr. Warqr Ali-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(399,'2019-01-23 17:15:52.870938','1','MS Calender',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',20,1),(400,'2019-01-23 17:16:19.519039','1','https://drive.google.com/file/d/1YimFURnNeEy5ab_TIBrNe7EFxpxE_3hG/view?fbclid=IwAR37JpzHJkgzeeyDG9NlmyxhZ_wIEaUG5vzrh8GM',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',17,1),(401,'2019-01-23 17:20:21.547391','5','Graduate Programs Offered Courses',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(402,'2019-01-23 17:24:20.939372','2','https://drive.google.com/file/d/1gM5Z3M-NkLqvFUGf-HRpa9xetycLf4TU/view?usp=sharing',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',11,1),(403,'2019-01-23 18:06:07.702623','7','Book Fair-AUIC is organizing a Book Fair for Abasynians on 23rd January , 2019 from 09:30 am to 05:30 pm.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(404,'2019-01-24 11:10:30.694530','48','Mr. Muhammad Sarfraz-Lecture',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',8,1),(405,'2019-01-24 11:11:52.449128','48','Mr. Muhammad Sarfraz-Lecture',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(406,'2019-01-25 04:31:41.504736','48','Mr. Muhammad Sarfraz Faiz-Lecture',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(407,'2019-01-30 08:43:42.679304','2','Banner object (2)',3,'',22,1),(408,'2019-01-30 08:44:09.970028','3','Banner object (3)',1,'[{\"added\": {}}]',22,1),(409,'2019-01-30 08:44:16.978528','4','Banner object (4)',1,'[{\"added\": {}}]',22,1),(410,'2019-01-30 08:44:36.556006','3','Banner object (3)',3,'',22,1),(411,'2019-01-30 08:46:12.812716','4','Banner object (4)',3,'',22,1),(412,'2019-01-30 08:46:27.111861','5','Banner object (5)',1,'[{\"added\": {}}]',22,1),(413,'2019-02-09 10:17:46.644415','5','Cultural Carnival 2019-Abasyn University Islamabad Campus is going to conduct \"Cultural Carnival 2019\" on March 05, 2019.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]',9,1),(414,'2019-02-15 07:33:54.111487','1','Slider object (1)',2,'[]',7,1),(415,'2019-02-15 07:34:19.985344','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider1\"]}}]',7,1),(416,'2019-02-16 16:11:09.723604','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(417,'2019-02-16 16:12:29.795446','1','Registrations are open for Convocation.',2,'[{\"changed\": {\"fields\": [\"message\"]}}]',16,1),(418,'2019-02-17 10:57:59.755024','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(419,'2019-02-25 16:30:33.339274','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(420,'2019-03-01 20:41:11.435431','8','FLOWCYTOMETRY: Principles and applications-FLOWCYTOMETRY Seminar will be held 2nd March 2019 2:30 PM.',1,'[{\"added\": {}}]',9,1),(421,'2019-03-01 20:42:10.513799','8','FLOWCYTOMETRY: Principles and applications-FLOWCYTOMETRY Seminar will be held on 2nd March 2019 2:30 PM.',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(422,'2019-03-04 16:23:59.663106','5','Undergratuade Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"link\"]}}]',12,1),(423,'2019-03-20 05:07:32.831773','74','Mr. Muhammad Uzair-Junior Lecturer',3,'',8,1),(424,'2019-03-20 05:07:32.832717','39','Ms. Laiba Jawad-Lab Engineer/Coordinator',3,'',8,1),(425,'2019-03-20 05:07:32.833461','21','Ms. Sameen Javed-Lecturer',3,'',8,1),(426,'2019-03-20 05:16:46.978076','17','Dr. Faraz Ahsan-HOD',2,'[{\"changed\": {\"fields\": [\"name\", \"qualification\", \"profile\"]}}]',8,1),(427,'2019-03-20 06:29:09.952950','67','Mr. Amrullah Khan-Lab Assistant',3,'',8,1),(428,'2019-03-20 06:29:09.953816','66','Ms. Iqra Hamid-Lab Demonstrator',3,'',8,1),(429,'2019-03-20 06:29:09.954543','65','Ms. Wajiha Khalid-Lecturer',3,'',8,1),(430,'2019-03-20 06:29:09.955294','63','Mr Muhammad Wasim-Lecturer',3,'',8,1),(431,'2019-03-20 07:51:57.037638','52','Mr. Khursheed Ali-Assistant Professor',3,'',8,1),(432,'2019-03-21 09:37:00.357211','17','Dr. Faraz Ahsan-HOD',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(433,'2019-03-21 09:39:16.282180','26','Ms. Madiha Hena-Lecturer',2,'[]',8,1),(434,'2019-03-21 09:39:35.574585','27','Mr. Asad Hanif-Lecturer',2,'[]',8,1),(435,'2019-03-21 09:40:01.827276','72','Mr. Muhammad Murtaza-Junior Lecturer',2,'[]',8,1),(436,'2019-03-21 09:40:38.295673','71','Ms. Madiha Naveed-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',8,1),(437,'2019-03-21 09:41:08.777585','31','Dr.M.Noman Jafri-Professor & Dean',2,'[]',8,1),(438,'2019-03-21 09:41:27.400558','32','Dr. Imran Shafi-Associate Professor',2,'[]',8,1),(439,'2019-03-21 09:43:20.973013','33','Dr. Waqar Ahmed Malik-Associate Professor/HOD',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(440,'2019-03-21 09:43:57.248604','34','Mr. Yasir Javed-Assistant Professor',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(441,'2019-03-21 09:44:18.295391','35','Mr. Wasif Latif-Assistant Professor',2,'[]',8,1),(442,'2019-03-21 09:47:24.050117','77','Engr. Aisha Qamar-Lecture',1,'[{\"added\": {}}]',8,1),(443,'2019-03-21 09:47:55.818185','36','Mr Kamran Qureshi-Lecturer',2,'[]',8,1),(444,'2019-03-21 09:48:23.554375','38','Ms.Rashida Khalid-Lecturer',2,'[]',8,1),(445,'2019-03-21 09:48:57.173960','40','Mr. Rafi-u-Zman-Lab Engineer',2,'[]',8,1),(446,'2019-03-21 09:49:38.760613','42','Dr. Muhammad Salik Javaid-HoD/Professor',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(447,'2019-03-21 09:51:30.159852','37','Mr. Shahzaib Iqbal-Lecturer',2,'[]',8,1),(448,'2019-03-21 09:53:33.005656','78','Mr. Muhammad Azeem-Lab Engineer',1,'[{\"added\": {}}]',8,1),(449,'2019-03-21 09:54:27.934282','41','Mr. Asim-ul-Haq-Lab Engineer',2,'[]',8,1),(450,'2019-03-21 09:55:45.886545','79','Mr. Muhammad Bilal Arif-Lab Engineer',1,'[{\"added\": {}}]',8,1),(451,'2019-03-21 09:56:27.935234','44','Mr. Khan Shahid Kamal Khan-Assistant Professor',2,'[]',8,1),(452,'2019-03-21 09:56:44.183512','45','Ms. Naheed Akhtar-Assistant Professor',2,'[]',8,1),(453,'2019-03-21 10:02:58.572847','80','Mr. Sher Afghan-Lecturer',1,'[{\"added\": {}}]',8,1),(454,'2019-03-21 10:03:48.907554','46','Mr. Muhammad Farjad Sami.-Lecturer',2,'[]',8,1),(455,'2019-03-21 10:04:18.520672','47','Mr. Muhammad Waqas Malik-Lecturer',2,'[]',8,1),(456,'2019-03-21 10:06:06.643076','81','Mr. Abdullah Khan-Lab Engineer',1,'[{\"added\": {}}]',8,1),(457,'2019-03-21 10:06:45.069030','80','Mr. Sher Afghan-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(458,'2019-03-21 10:09:05.044479','49','Mr.Zeeshan Khalil-Lab Engineer',2,'[]',8,1),(459,'2019-03-21 10:09:23.400471','50','Mr. Muhammad Shahrukh Pasha-Lab Engineer',2,'[]',8,1),(460,'2019-03-21 10:10:47.613654','82','Mr. Haris Atta Sail-Lab Engineer',1,'[{\"added\": {}}]',8,1),(461,'2019-03-21 10:12:08.300681','83','Mr. Jawad Ahad-Lab Technician',1,'[{\"added\": {}}]',8,1),(462,'2019-03-21 10:13:12.756382','84','Mr.  Muhammad Muzammil-Lab Technician',1,'[{\"added\": {}}]',8,1),(463,'2019-03-21 10:15:30.358816','85','Mr. Muhammad Zaheer Akhtar-Professor',1,'[{\"added\": {}}]',8,1),(464,'2019-03-21 10:15:52.804082','51','Ms. Khola Ilyas-Assistant Professor/HoD',2,'[]',8,1),(465,'2019-03-21 10:16:16.876413','51','Ms. Khola Ilyas-Assistant Professor/HoD',2,'[]',8,1),(466,'2019-03-21 10:16:33.717488','53','Mr. Furqan Saeed-Lecturer/ Program Coordinator',2,'[]',8,1),(467,'2019-03-21 10:18:30.386264','86','Ms. Anum Umair-Lecture',1,'[{\"added\": {}}]',8,1),(468,'2019-03-21 10:19:09.481525','55','Mr. Roman Khan-Lecturer',2,'[]',8,1),(469,'2019-03-21 10:21:00.432341','87','Ms. Ammara Sarfaraz-Lecturer',1,'[{\"added\": {}}]',8,1),(470,'2019-03-21 10:21:29.582700','87','Ms. Ammara Sarfaraz-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(471,'2019-03-21 10:23:07.906050','88','Ms. Sara Ghazal-Lecturer',1,'[{\"added\": {}}]',8,1),(472,'2019-03-21 10:24:35.412215','89','Ms. Urooj waheed-Lecturer',1,'[{\"added\": {}}]',8,1),(473,'2019-03-21 10:25:31.100630','56','Dr. Muhammad Akhlaq Mughal-HoD/ Associate Professor',2,'[]',8,1),(474,'2019-03-21 10:27:02.740431','90','Ms. Ulfat Batool-Lecturer',1,'[{\"added\": {}}]',8,1),(475,'2019-03-21 10:29:20.644519','91','Ms. Sobia Raja-Lecturer',1,'[{\"added\": {}}]',8,1),(476,'2019-03-21 10:31:17.582947','92','Ms. Bazla Siddique-Lecturer',1,'[{\"added\": {}}]',8,1),(477,'2019-03-21 10:32:49.731298','93','Ms. Nazma Namroz-Lecturer',1,'[{\"added\": {}}]',8,1),(478,'2019-03-21 10:37:59.713639','94','Engr. Muhammad Haroon Amin-Lab Engineer',1,'[{\"added\": {}}]',8,1),(479,'2019-03-21 10:41:02.017429','95','Ms. Fareha Nadeem-Lab Demonstrator',1,'[{\"added\": {}}]',8,1),(480,'2019-03-21 10:42:49.572736','96','Ms. Aroosa Mehwish-Lab Demonstrator',1,'[{\"added\": {}}]',8,1),(481,'2019-03-21 10:46:39.756980','92','Ms. Bazla Siddique-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(482,'2019-03-21 10:47:28.897876','89','Ms. Urooj waheed-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(483,'2019-03-21 10:47:50.486530','88','Ms. Sara Ghazal-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(484,'2019-03-21 10:48:15.836181','87','Ms. Ammara Sarfaraz-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(485,'2019-03-21 10:49:15.557862','91','Ms. Sobia Raja-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(486,'2019-03-21 10:52:50.665257','97','Ms. Laila Jafri-Assistant Professor',1,'[{\"added\": {}}]',8,1),(487,'2019-03-21 10:53:48.768055','90','Ms. Ulfat Batool-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(488,'2019-03-21 10:54:45.520233','83','Mr. Jawad Ahad-Lab Technician',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(489,'2019-03-21 10:56:18.285348','98','Mr. Khawar Ali-Lab Engineer',1,'[{\"added\": {}}]',8,1),(490,'2019-03-21 10:57:34.707994','95','Ms. Fareha Nadeem-Lab Demonstrator',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(491,'2019-03-21 10:57:53.330800','93','Ms. Nazma Namroz-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(492,'2019-03-21 10:58:33.885007','60','Mr. Muhammad Rashid-Assistant Professor',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(493,'2019-03-21 10:59:08.934913','17','Dr. Faraz Ahsan-HOD',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(494,'2019-03-21 11:05:36.561792','76','Mr. Ahmed Ali Khan-Junior Lecture',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(495,'2019-03-25 11:09:52.972336','86','Ms. Anum Umair-Lecture',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(496,'2019-03-25 11:13:02.943753','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"slider2\"]}}]',7,1),(497,'2019-03-26 11:23:26.767473','1','Registrations are open for Convocation.',3,'',16,1),(498,'2019-03-28 10:10:39.798803','75','Mr. Waqar Ali-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(499,'2019-03-29 06:20:06.993537','80','Mr. Sher Afgan-Lecturer',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(500,'2019-03-29 06:22:17.200019','99','Abdullah Khan-Lab Engineer',1,'[{\"added\": {}}]',8,1),(501,'2019-03-29 06:37:17.406044','82','Mr. Haris Atta Sial-Lab Engineer',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(502,'2019-04-02 05:26:45.536857','9','Molecular Biology Techniques-One Hands-On workshop on Molecular Biology Techniques',1,'[{\"added\": {}}]',9,1),(503,'2019-04-02 05:28:43.765172','8','FLOWCYTOMETRY-One Day Hands-on Workshop on FLOWCYTOMETRY',2,'[{\"changed\": {\"fields\": [\"title\", \"description\", \"timestamp\"]}}]',9,1),(504,'2019-04-02 05:28:54.135425','8','FLOWCYTOMETRY-One Day Hands-on Workshop on FLOWCYTOMETRY',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',9,1),(505,'2019-04-02 05:29:31.536990','7','Book Fair-AUIC is organizing a Book Fair for Abasynians on 23rd January , 2019 from 09:30 am to 05:30 pm.',3,'',9,1),(506,'2019-04-02 05:29:31.537833','5','Cultural Carnival 2019-Abasyn University Islamabad Campus is going to conduct \"Cultural Carnival 2019\" on March 05, 2019.',3,'',9,1),(507,'2019-04-02 10:46:12.340565','99','Abdullah Khan-Lab Engineer',2,'[]',8,1),(508,'2019-04-02 10:46:32.775801','99','Mr. Abdullah Khan-Lab Engineer',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(509,'2019-04-02 10:47:02.996025','81','Mr. Abdullah Khan-Lab Engineer',3,'',8,1),(510,'2019-04-03 09:18:01.709498','17','Dr. Faraz Ahsan-HOD(Associate professor)',2,'[{\"changed\": {\"fields\": [\"designation\"]}}]',8,1),(511,'2019-04-03 09:22:59.211706','17','Dr. Faraz Ahsan-HOD(Associate professor)',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(512,'2019-04-04 06:44:13.507536','98','Mr. Khawar Ali-Lab Engineer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(513,'2019-04-04 06:53:05.817090','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(514,'2019-04-04 06:53:53.424113','3','Civil',2,'[]',15,1),(515,'2019-04-04 06:54:51.954042','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(516,'2019-04-04 06:56:21.176305','2','Electrical',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(517,'2019-04-04 06:58:42.783428','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(518,'2019-04-04 06:59:16.954948','3','Civil',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(519,'2019-05-07 06:06:16.411494','97','Ms. Laila Jafri-Assistant Professor',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(520,'2019-05-17 10:04:33.724822','2','https://docs.google.com/document/d/1DM--LvDiWCfoJOpjTpHw601XiOz9SoB-k1VyrsN6tWY/edit',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(521,'2019-05-17 10:07:08.477606','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(522,'2019-05-17 10:07:26.027753','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(523,'2019-05-19 13:17:15.128518','6','Result Spring\'19',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',12,1),(524,'2019-05-23 10:01:23.791008','27','Mr. Asad Hanif-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"designation\", \"qualification\"]}}]',8,1),(525,'2019-05-23 10:48:30.151669','71','Ms. Madiha Naveed-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"qualification\"]}}]',8,1),(526,'2019-06-02 09:37:09.612656','5','Banner object (5)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(527,'2019-06-09 09:49:01.173277','2','Electrical',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(528,'2019-06-09 09:51:27.086993','2','Electrical',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',15,1),(529,'2019-06-12 06:29:16.450005','32','Dr. Imran Shafi-Associate Professor',3,'',8,1),(530,'2019-06-13 05:27:02.372862','8','FLOWCYTOMETRY-One Day Hands-on Workshop on FLOWCYTOMETRY',2,'[{\"changed\": {\"fields\": [\"timestamp\"]}}]',9,1),(531,'2019-06-14 06:41:36.718025','8','Public PhD defense-A Frequent Graph Pattern Mining Approach for Evaluation of Trends in Social Media',2,'[{\"changed\": {\"fields\": [\"title\", \"description\", \"timestamp\"]}}]',9,1),(532,'2019-06-14 06:42:23.642721','8','Public PhD defense-A Frequent Graph Pattern Mining Approach for Evaluation of Trends in Social Media',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',9,1),(533,'2019-06-14 06:44:48.046945','8','Public PhD defense-A Frequent Graph Pattern Mining Approach for Evaluation of Trends in Social Media. 4th July, 2019 02:00 PM at board room',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',9,1),(534,'2019-06-14 06:47:11.829178','6','Public PhD defense-Hierarchical Multi-Label document Classification using Swarm intelligence.26th June, 2019 (02:00 PM) at board room AUIC.',2,'[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]',9,1),(535,'2019-06-14 09:12:45.913932','100','Ms. Aamna Iqtidar-Lecturer',1,'[{\"added\": {}}]',8,1),(536,'2019-06-14 09:14:01.181305','101','Mr. M Amir Malik-Lecturer',1,'[{\"added\": {}}]',8,1),(537,'2019-06-14 09:15:28.554945','102','Mr. Mahmood Bashir-Lecturer',1,'[{\"added\": {}}]',8,1),(538,'2019-06-14 09:15:58.364534','103','Ms. Aleena Sunbalin-Lecturer',1,'[{\"added\": {}}]',8,1),(539,'2019-06-14 09:16:24.738033','104','Mr. M Junaid Nazar-Lecturer',1,'[{\"added\": {}}]',8,1),(540,'2019-06-14 09:17:00.647027','105','Ms. Ayesha Azhar-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(541,'2019-06-14 09:18:05.843457','106','Mr. Farhan Ghori-Junior Lecturer',1,'[{\"added\": {}}]',8,1),(542,'2019-06-14 09:18:39.990678','102','Mr. Mahmood Bashir-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(543,'2019-06-14 09:18:56.319389','104','Mr. M Junaid Nazar-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(544,'2019-06-14 09:28:11.079210','106','Mr. Farhan Ghori-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(545,'2019-06-14 09:28:28.032027','100','Ms. Aamna Iqtidar-Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(546,'2019-06-14 09:28:37.704216','105','Ms. Ayesha Azhar-Junior Lecturer',2,'[{\"changed\": {\"fields\": [\"profile\"]}}]',8,1),(547,'2019-06-19 11:11:42.493307','2','http://www.abasynisb.edu.pk/',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(548,'2019-06-20 04:27:30.820956','2','https://drive.google.com/open?id=1ZVh_c3utPI0iX7vaWMDw8zLs-rSdfCQE',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(549,'2019-06-24 06:56:57.528514','2','https://docs.google.com/document/d/1DM--LvDiWCfoJOpjTpHw601XiOz9SoB-k1VyrsN6tWY',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',13,1),(550,'2019-06-25 08:21:58.011486','5','Undergratuade Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',12,1),(551,'2019-06-25 08:22:59.993003','5','Undergratuade Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(552,'2019-06-25 08:23:09.860123','5','Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',12,1),(553,'2019-06-25 08:24:01.646678','5','Mid Term Date Sheet',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',12,1),(554,'2019-06-26 06:10:55.373963','106','Mr. Farhan Ghori-Junior Lecturer',3,'',8,1),(555,'2019-06-26 06:11:06.952174','105','Ms. Ayesha Azhar-Junior Lecturer',3,'',8,1),(556,'2019-06-26 06:11:21.811014','104','Mr. M Junaid Nazar-Lecturer',3,'',8,1),(557,'2019-06-26 06:11:33.950928','103','Ms. Aleena Sunbalin-Lecturer',3,'',8,1),(558,'2019-06-26 06:11:48.715652','102','Mr. Mahmood Bashir-Lecturer',3,'',8,1),(559,'2019-06-26 06:12:03.912597','101','Mr. M Amir Malik-Lecturer',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'slider','slider'),(8,'slider','staff'),(9,'slider','event'),(10,'slider','fees'),(11,'slider','acdamic_calander'),(12,'slider','new'),(13,'slider','timetable'),(14,'slider','online_admission'),(15,'slider','clo'),(16,'slider','message'),(17,'slider','timetablegraduate'),(18,'slider','download'),(19,'slider','permission'),(20,'slider','acdamic_calander_graduate'),(21,'slider','datesheet'),(22,'slider','banner'),(23,'alumni','alumni'),(24,'Ansec','events'),(25,'Ansec','applynow'),(26,'Ansec','background'),(27,'Ansec','orgnizers');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Ansec','0001_initial','2018-11-01 06:43:39.011907'),(2,'Ansec','0002_applynow_background_orgnizers','2018-11-01 06:43:39.067942'),(3,'Ansec','0003_auto_20180917_0003','2018-11-01 06:43:39.073947'),(4,'contenttypes','0001_initial','2018-11-01 06:43:39.113973'),(5,'auth','0001_initial','2018-11-01 06:43:39.524244'),(6,'admin','0001_initial','2018-11-01 06:43:39.623310'),(7,'admin','0002_logentry_remove_auto_add','2018-11-01 06:43:39.642324'),(8,'alumni','0001_initial','2018-11-01 06:43:39.677346'),(9,'alumni','0002_auto_20180429_0056','2018-11-01 06:43:39.710369'),(10,'contenttypes','0002_remove_content_type_name','2018-11-01 06:43:39.795425'),(11,'auth','0002_alter_permission_name_max_length','2018-11-01 06:43:39.813680'),(12,'auth','0003_alter_user_email_max_length','2018-11-01 06:43:39.860077'),(13,'auth','0004_alter_user_username_opts','2018-11-01 06:43:39.877090'),(14,'auth','0005_alter_user_last_login_null','2018-11-01 06:43:39.918119'),(15,'auth','0006_require_contenttypes_0002','2018-11-01 06:43:39.925121'),(16,'auth','0007_alter_validators_add_error_messages','2018-11-01 06:43:39.945137'),(17,'auth','0008_alter_user_username_max_length','2018-11-01 06:43:39.979157'),(18,'sessions','0001_initial','2018-11-01 06:43:40.011180'),(19,'slider','0001_initial','2018-11-01 06:43:40.038198'),(20,'slider','0002_student','2018-11-01 06:43:40.068217'),(21,'slider','0003_staff','2018-11-01 06:43:40.096236'),(22,'slider','0004_auto_20180212_1224','2018-11-01 06:43:40.166282'),(23,'slider','0005_event','2018-11-01 06:43:40.200305'),(24,'slider','0006_facebook','2018-11-01 06:43:40.229326'),(25,'slider','0007_auto_20180213_1207','2018-11-01 06:43:40.259346'),(26,'slider','0008_courses','2018-11-01 06:43:40.296369'),(27,'slider','0009_auto_20180307_0145','2018-11-01 06:43:40.307377'),(28,'slider','0010_auto_20180307_0155','2018-11-01 06:43:40.318385'),(29,'slider','0011_event_timestamp','2018-11-01 06:43:40.359413'),(30,'slider','0012_auto_20180604_2122','2018-11-01 06:43:40.408446'),(31,'slider','0013_auto_20180625_1806','2018-11-01 06:43:40.445469'),(32,'slider','0014_acdamic_calander','2018-11-01 06:43:40.463483'),(33,'slider','0015_new','2018-11-01 06:43:40.487498'),(34,'slider','0016_auto_20180903_1847','2018-11-01 06:43:40.498506'),(35,'slider','0017_auto_20180903_1849','2018-11-01 06:43:40.510514'),(36,'slider','0018_auto_20180903_1854','2018-11-01 06:43:40.519518'),(37,'slider','0019_timetable','2018-11-01 06:43:40.539534'),(38,'slider','0020_new_link','2018-11-01 06:43:40.575556'),(39,'slider','0021_online_admission','2018-11-01 06:43:40.599572'),(40,'slider','0022_auto_20180914_0114','2018-11-01 06:43:40.610580'),(41,'slider','0023_auto_20180914_0116','2018-11-01 06:43:40.625591'),(42,'slider','0024_auto_20180914_0116','2018-11-01 06:43:40.634596'),(43,'slider','0025_clo','2018-11-01 06:43:40.657612'),(44,'slider','0026_message','2018-11-01 06:43:40.679627'),(45,'slider','0027_timetablegraduate','2018-11-01 06:43:40.699639'),(46,'slider','0028_auto_20180922_1648','2018-11-01 06:43:40.726658'),(47,'slider','0029_permission','2018-11-01 06:43:40.757679'),(48,'slider','0030_auto_20180922_2223','2018-11-01 06:43:40.790701'),(49,'slider','0031_auto_20180922_2248','2018-11-01 06:43:40.805712'),(50,'slider','0032_acdamic_calander_graduate','2018-11-01 06:43:40.831727'),(51,'slider','0033_auto_20180927_2318','2018-11-01 06:43:40.881761'),(52,'slider','0034_auto_20180927_2330','2018-11-01 06:43:40.917786'),(53,'slider','0035_datesheet_visibility','2018-11-01 06:43:40.964818'),(54,'slider','0036_banner','2018-11-01 06:43:40.985831'),(55,'slider','0037_remove_staff_twiter','2018-11-01 06:43:41.010849'),(56,'slider','0038_auto_20181012_2302','2018-11-01 06:43:41.089348'),(57,'slider','0039_message_link','2018-11-01 06:43:41.143286');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0iwsasx6hrgmgprxen58wktsk6vea31u','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 14:47:27.453651'),('0z83zxf23tmf2n0um9vtwhet3jk8xyh1','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 14:57:18.829267'),('1fbsrvlqerfuwejfbhu7lnn6q5vb6vn3','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-17 13:38:25.477331'),('2npi89sgo5tidom30q10prh5g49ky07a','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-27 20:13:19.906796'),('2w5zeo55g7nuczfxqm7qyqa84gum7w5s','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-27 20:45:40.878134'),('5lu905bli6zlc4x5srjgjsbrxch9q19s','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-11 18:09:27.752026'),('69qzkhyzmnxrofbmjxh327fnyk8t2iws','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-08-03 12:09:20.702517'),('69v6g0l5kbfy8iccd05qvxzvmvqwbo2l','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-06-19 12:21:52.908539'),('6qmuxlsfdi59cgd6zqkphqjh5hh8elub','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-01 17:49:40.451009'),('6xvhsb9b4qdbqram4aahm7tw49doiv2t','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-06-18 16:04:32.598927'),('7z5p3hlblfgrvw7qlrm7kymoztexelle','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 18:32:31.066892'),('813yr9uw3blqmd261agngrkbbvedvr0g','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-17 18:15:41.045819'),('9u35n3d4rl6n1uj4df13kbf2vunruacy','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-03-20 09:00:39.423936'),('arrfhwegcfm3jsf7e2k4vw99yzobvjdf','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-04-05 07:49:02.263173'),('c58d42uax6ixe4e58szxme1zgdificz7','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-28 17:03:42.487912'),('ft17fhmdmxls5hyysdm5g941av5e6ns5','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-07-05 13:27:47.429994'),('gq5rouxawpee0shhb7aja5w555u2gzvk','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-08-17 13:17:09.899692'),('i5x61qzrc7quy0wzgkbe44i89cbavvx3','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-13 18:54:04.322052'),('i6waukf391ien98xm6ejtb6g27xea4uj','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 09:45:59.924558'),('jiggohyudr7xvhsfurrerua6im2eay6o','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 14:29:52.393284'),('kbvlj0vajka5lrrwlwhe4whoqfwiex3q','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-06-18 07:59:36.046392'),('lqg02xuuesgsxjj1mng8s6jhnh71z95j','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-01 17:36:00.296469'),('m80a4akblio3mv0k12cycltau066j3l5','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-06-13 17:00:29.762712'),('miuktc9tph7k31cjojci7eqgs6zcyjpb','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-17 13:11:12.197728'),('mnrvw3nw5pjrv87te4dqj43o32cxzwed','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-09-18 11:21:59.189032'),('mxkk227rhj21iakn5hx1ropklourdxtp','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-06 11:48:11.412916'),('mzar8xbkdbjm9ic67sit65eo5j4pgnnk','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-07-08 18:58:49.205520'),('o377d77zd7v7fzgtjmrylyw5nje1hz7d','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-02-28 04:35:32.732837'),('ojl0hjympv568r5ih8ndc5my4rjurqn8','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-12 19:24:28.572012'),('ra0gy5kyo2h21k9czxg7euphs0stub2g','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-05-03 17:35:27.643309'),('s6pdj8gc1s2jq6n069wlzvqkes6smpxf','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-10-10 04:16:15.529263'),('vi0ku4d9phhcbllcuz7ak8bxwo7e3bsp','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2017-12-25 11:15:11.456514'),('xdguu8n37a5w187yt36fa4d6wc0nzt28','N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=','2018-07-10 18:53:57.431166'),('d5pippovxp1xi9m4qacshambd7dhr7my','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-19 08:28:21.602736'),('2h805y94i9mitebuz8gfeuyhixlolt60','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-15 07:19:01.354603'),('lnx6w3i8hgb73dpnth561og4s70xnb66','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-21 12:48:25.478480'),('klk13x3n8mfmhgo26b2wqas1slwqr1lt','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-28 13:36:34.581755'),('src3f80mzuv5ngf1lceccjl57up6ok90','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-29 04:55:23.418961'),('v1jmhslv0k4hzvejmvcre8gdn9qbd467','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-11-29 10:21:44.772845'),('jjw4mab00360lmvtba1wrt7dtg20sc4t','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-08 15:53:54.820041'),('uv61mtigq6o1jzd14wj1j3rzdteiv2as','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-16 17:57:26.224530'),('4d0ckod4d1ol6p5jrlntzys950uznhqm','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-17 15:29:44.358757'),('q6ukvvzypz3mgzqm1zfae1clhmw4y5g4','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-24 07:40:30.663788'),('z7cdi9zwmdououol46bfk718f8yqgyhn','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-24 16:51:44.363656'),('r1lex0kknq9lbzqggu1461af8tjpeabv','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2018-12-27 08:05:33.336434'),('ofds73hmrofk99vmp5nkuftbpricen7w','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-01-03 17:20:07.158753'),('u5vrup4er1lvbzjjw3fbnnunng1qjnon','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-01-05 15:19:27.279249'),('t087jqc79bwiy43wp3efphv47lktdfrl','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-01-10 05:23:30.915326'),('nqn71ops04cepqhyk08nl962b16z1ihi','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-01-18 09:47:09.943747'),('sapz4typzozbrllizkfsi8eytehiac0u','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-02-04 17:35:57.106059'),('7trlt2cgaaiueubak6tbyx5m9objd3zc','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-02-11 09:00:11.053851'),('pym7l30czkxrghy4t42yqkc1o3a1exzq','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-02-20 05:11:00.651007'),('w8hoz79aeb028vrdzbmzvqhgzxmh1h6b','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-02-23 10:16:00.035554'),('60cc1s0vifwycicdalsw24uvrw26xi55','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-02-28 13:20:13.613798'),('oucd5goyy3fv93c6oi5n4owbzqoppbfe','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-03-11 16:24:05.790236'),('s54ghqjs7c007fys8f9g7c77d9j4pemb','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-03-15 20:33:12.643358'),('60wjbggonnqf4bsotkktfymdraj94682','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-04-03 05:05:15.616615'),('saud39mq4t7xlnyhmbs6wehwkem94l7f','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-04-18 14:16:36.272514'),('gihl92z9wp3yy2i6k8us2j5es4xakmxk','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-05-15 10:16:45.625586'),('krk4mbrivmo14dcsh7kkh44un899kuut','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-05-21 06:05:26.010993'),('mvrm5hn8y1zkiq66k2k7d8rjgwiw5czs','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-05-31 10:01:39.106424'),('btt2fqtvhf7uq4140zwo0untvwr0iygi','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-06-02 13:25:47.175092'),('bgdvqtmmqngn18r5szr1fqorr9cy2f2m','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-06-06 09:59:19.882554'),('4osmxxw28ab5j9r1lxfbsm9qslmotdkc','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-06-16 09:36:36.590507'),('9qjl3dhl7mho48k9tb4l47xoc2xquv2c','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-06-23 09:48:33.805496'),('g52c3ub324ee0xeld9uoae1yswabeve4','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-06-24 19:18:01.967682'),('t2z49bwmzsb3radhutgnhceftgaanozn','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-07-03 11:10:34.626047'),('ekpxwk2e5hjdpcfrlovbdmwm5svdoe2q','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-07-08 06:55:32.316536'),('x2spnm93092g9lqsaplhhergggaju07w','ZjM2MTFmODQ0ZjJlODdiMTlhYzRkNGE3Nzk2YWE5OGRhNWE3ZjFhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmI0ZDQ0MGI0NzU0YjI3ZmNlZjgxZWNlZmQ3ZTFlOGI3NzFlYjY4In0=','2019-07-09 08:20:57.043514');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_acdamic_calander`
--

DROP TABLE IF EXISTS `slider_acdamic_calander`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_acdamic_calander` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_acdamic_calander`
--

LOCK TABLES `slider_acdamic_calander` WRITE;
/*!40000 ALTER TABLE `slider_acdamic_calander` DISABLE KEYS */;
INSERT INTO `slider_acdamic_calander` VALUES (2,'https://drive.google.com/file/d/1gM5Z3M-NkLqvFUGf-HRpa9xetycLf4TU/view?usp=sharing');
/*!40000 ALTER TABLE `slider_acdamic_calander` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_acdamic_calander_graduate`
--

DROP TABLE IF EXISTS `slider_acdamic_calander_graduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_acdamic_calander_graduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_acdamic_calander_graduate`
--

LOCK TABLES `slider_acdamic_calander_graduate` WRITE;
/*!40000 ALTER TABLE `slider_acdamic_calander_graduate` DISABLE KEYS */;
INSERT INTO `slider_acdamic_calander_graduate` VALUES (1,'https://drive.google.com/file/d/11ysfAxc-CdvjBKu0wlmlQDUhg563PbEC/view?fbclid=IwAR14OB9elEjmKb1v78u9vbs_1pSaqhQALoXrbQ5S','MS Calender');
/*!40000 ALTER TABLE `slider_acdamic_calander_graduate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_banner`
--

DROP TABLE IF EXISTS `slider_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_banner`
--

LOCK TABLES `slider_banner` WRITE;
/*!40000 ALTER TABLE `slider_banner` DISABLE KEYS */;
INSERT INTO `slider_banner` VALUES (5,'images/summer_1.png');
/*!40000 ALTER TABLE `slider_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_clo`
--

DROP TABLE IF EXISTS `slider_clo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_clo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_clo`
--

LOCK TABLES `slider_clo` WRITE;
/*!40000 ALTER TABLE `slider_clo` DISABLE KEYS */;
INSERT INTO `slider_clo` VALUES (2,'https://drive.google.com/file/d/1OuJHB7YpcHEAM0kmKQJBLrS5N-hUFUAj/view','Electrical'),(3,'https://drive.google.com/file/d/1zIRR0Z8udPMffFBUb0oSdAZWM7hFc4Fl/view','Civil'),(4,'https://docs.google.com/spreadsheets/d/1TlYCy7JSoflUXMp_62lvRmzAIxQX0se5CUIfo_x_3iw/edit?ts=5acc58e9#gid=896371080','Computing');
/*!40000 ALTER TABLE `slider_clo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_datesheet`
--

DROP TABLE IF EXISTS `slider_datesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_datesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_datesheet`
--

LOCK TABLES `slider_datesheet` WRITE;
/*!40000 ALTER TABLE `slider_datesheet` DISABLE KEYS */;
INSERT INTO `slider_datesheet` VALUES (4,'https://drive.google.com/file/d/1gleOXRh-AMSEG446Qr62lrEmMPImZBpb/view?usp=sharing','MS  Datesheet',0),(5,'https://drive.google.com/file/d/1r7XHVSBYHgd1eCRPsWdNlCc5IeUUro9a/view?usp=sharing','BS Datesheet',0);
/*!40000 ALTER TABLE `slider_datesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_download`
--

DROP TABLE IF EXISTS `slider_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_download`
--

LOCK TABLES `slider_download` WRITE;
/*!40000 ALTER TABLE `slider_download` DISABLE KEYS */;
INSERT INTO `slider_download` VALUES (1,'Application Form','downloads/Application.pdf'),(2,'Prospectus','downloads/pros.pdf'),(3,'Student Handbook','downloads/Handbook.pdf');
/*!40000 ALTER TABLE `slider_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_event`
--

DROP TABLE IF EXISTS `slider_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_event`
--

LOCK TABLES `slider_event` WRITE;
/*!40000 ALTER TABLE `slider_event` DISABLE KEYS */;
INSERT INTO `slider_event` VALUES (8,'images/defense.png','Public PhD defense','A Frequent Graph Pattern Mining Approach for Evaluation of Trends in Social Media. 4th July, 2019 02:00 PM at board room','2019-07-04 02:00:00.000000'),(6,'images/defense2.png','Public PhD defense','Hierarchical Multi-Label document Classification using Swarm intelligence.26th June, 2019 (02:00 PM) at board room AUIC.','2019-06-26 14:00:00.000000'),(9,'images/IMG-20190401-WA0002.jpg','Molecular Biology Techniques','One Hands-On workshop on Molecular Biology Techniques','2019-04-06 09:00:00.000000');
/*!40000 ALTER TABLE `slider_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_fees`
--

DROP TABLE IF EXISTS `slider_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(120) NOT NULL,
  `fees` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_fees`
--

LOCK TABLES `slider_fees` WRITE;
/*!40000 ALTER TABLE `slider_fees` DISABLE KEYS */;
INSERT INTO `slider_fees` VALUES (1,'BE- Civil Engineering',8150),(2,'BE- Electrical Engineering',4250),(3,'Pharm-D',3800),(4,'BS- Software Engineering',3500),(5,'BS- Computer Science',2250),(6,'BS- Microbiology',2250),(7,'BS- Biotechnology',2100),(8,'BS- Telecommunication & Networks',2100),(9,'Bachelor in Business Administration',2100),(10,'Bachelor of Commerce',2000),(11,'BS- Development Studies',2000),(12,'B.Tech (Civil/Electrical/Mechanical)',1600),(13,'MS- Computer Science',4500),(14,'MS- Software Engineering',4500),(15,'MS- Telecommunication & Networks',4500),(16,'MS- Electrical Engineering',4500),(17,'MS- Management Science',4500),(18,'MS- Engineering Management',4500),(19,'MS- Industrial Management',4500),(20,'MS- Logistic and Supply Chain Management',4500),(21,'MS- Project Management',4500),(22,'MSc- Microbiology',2500),(23,'Master in Business Administration (1.5 - 2 year)',2500),(24,'Master in Business Administration (2 - 2.5 year)',2500),(25,'Master in Business Administration (3.5 year)',2500),(26,'Master of Commerce',2000),(27,'MS- Development Studies',2200),(28,'BS- English',2250),(29,'BS- Psychology',2250),(30,'DPT',2250),(31,'MLT',2250),(32,'BS- Human Nutrition & Dietetics',2250),(33,'BS- Fashion & Design',2250),(34,'M.Phill - Microbiology',3500);
/*!40000 ALTER TABLE `slider_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_message`
--

DROP TABLE IF EXISTS `slider_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(120) NOT NULL,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_message`
--

LOCK TABLES `slider_message` WRITE;
/*!40000 ALTER TABLE `slider_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_new`
--

DROP TABLE IF EXISTS `slider_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_new`
--

LOCK TABLES `slider_new` WRITE;
/*!40000 ALTER TABLE `slider_new` DISABLE KEYS */;
INSERT INTO `slider_new` VALUES (4,'images/Convocation-iner_Y8G3XLd.png','Registrations Open for Convocation','Fill form and submit with demand draft of 3,000 in favor of Abasyn University Fee Collection Account before 9th Jan .','2018-11-01 13:34:26.000000','https://drive.google.com/file/d/1B9-Qk2EFlIIwVVOWmYwToHyafcfeix4O/view?fbclid=IwAR1Cddeciw8BW2CsIM5-OhPM6JonHWpILpQrKt0VrPP0bSbBfhNTkuwU3pk'),(5,'images/PMS-Exams-Date-Sheet.jpg','Mid Term Date Sheet','Date sheet of Graduate & Undergraduate degree programs for semester Summer ~ 19.','2018-11-01 13:37:14.000000','https://drive.google.com/file/d/1FMKBFy-EgjCsL8UwUeKyCR3652ZoJrQo/view?usp=sharing'),(6,'images/red.jpg','Result Spring\'19','Login to student portal and check your result','2018-11-01 13:39:56.000000','http://202.142.169.100/qecisb');
/*!40000 ALTER TABLE `slider_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_online_admission`
--

DROP TABLE IF EXISTS `slider_online_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_online_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_online_admission`
--

LOCK TABLES `slider_online_admission` WRITE;
/*!40000 ALTER TABLE `slider_online_admission` DISABLE KEYS */;
INSERT INTO `slider_online_admission` VALUES (1,'http://18.205.240.98/admissionsystem/AA/bootstrap/index.php');
/*!40000 ALTER TABLE `slider_online_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_permission`
--

DROP TABLE IF EXISTS `slider_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_permission`
--

LOCK TABLES `slider_permission` WRITE;
/*!40000 ALTER TABLE `slider_permission` DISABLE KEYS */;
INSERT INTO `slider_permission` VALUES (1,'HEC','permissions/HEC_Permission_for_Start_of_Operation.jpg'),(2,'Civil','permissions/BECE_1st_Accreditation_.jpg'),(3,'Electrical','permissions/BEEE_2013__2014_Re-Accr..pdf'),(4,'Computing','permissions/Accreditation_of_BSSE_Program.pdf');
/*!40000 ALTER TABLE `slider_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_slider`
--

DROP TABLE IF EXISTS `slider_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider1` varchar(100) NOT NULL,
  `slider2` varchar(100) NOT NULL,
  `slider3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_slider`
--

LOCK TABLES `slider_slider` WRITE;
/*!40000 ALTER TABLE `slider_slider` DISABLE KEYS */;
INSERT INTO `slider_slider` VALUES (1,'images/25398107_2008323612714535_6504903865486525119_o_GDclHQH.jpg','images/Backdrop2_1.jpg','images/priscilla-du-preez-293218-unsplash_Tvbf5we.jpg');
/*!40000 ALTER TABLE `slider_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_staff`
--

DROP TABLE IF EXISTS `slider_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `designation` varchar(120) NOT NULL,
  `qualification` varchar(120) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_staff`
--

LOCK TABLES `slider_staff` WRITE;
/*!40000 ALTER TABLE `slider_staff` DISABLE KEYS */;
INSERT INTO `slider_staff` VALUES (15,'Dr. Amjad Mahmood','Professor','Ph.D, Computer Science University of London','images/Dr._Amjad_Mahmood.jpg','computing'),(16,'Dr. Muhammad Yousaf Khan','Associate Professor','PhD (Software Engineering) , Abertay University Dundee , Scotland,Uk','images/Dr._Muhammad_Yousaf_Khan_oNsjFC3.jpg','computing'),(17,'Dr. Faraz Ahsan','HOD(Associate professor)','PhD (Computer Science) COMSATS Institute of Information Technology, Islamabad.','images/fa.jpg','computing'),(18,'Mr. Abdul Basit','Assistant Professor','MS (Telecomunication) , IQRA University, Islamabad','images/Abdul_Basit.jpg','computing'),(19,'Mr. Abdul Hannan','Assistant Professor','MSCS , Iqra University Islamabad Campus','images/Hannan.jpg','computing'),(20,'Mr.Muhammad Idrees','Assistant Professor','MS (Aplied Mathematics) , NED University of Engineering and Technology, Karachi','images/IDREES.jpg','computing'),(22,'Ms. Naveen Ahmed','Lecturer','MS (Software Engineering ) , NUST','images/NAVEEN_AHMED_.jpg','computing'),(26,'Ms. Madiha Hena','Lecturer','MS (Telecommunication and Networks) , Abasyn University, Islamabad','images/MADIHA_HENA.jpg','computing'),(27,'Mr. Asad Hanif','Junior Lecturer','BS (Telecommunication ) , IQRA University, Islamabad','images/Asad_Hanif_Q1EdIEY.jpg','computing'),(86,'Ms. Anum Umair','Lecture','MSPM (Project Management) SZABIST Islamabad, Pakistan','images/ANUM_UMAIR.jpg','management-sciences'),(87,'Ms. Ammara Sarfaraz','Lecturer','M.Phil.English(Linguistics and Literature), COMSATS Islamabad','images/Ammara_Sarfraz.JPG','management-sciences'),(31,'Dr.M.Noman Jafri','Professor & Dean','PhD (Electrical Engineering) , University of Ottawa, Canada','images/Dr._M.Noman_Jafri_IeoWkTK.jpg','electrical'),(100,'Ms. Aamna Iqtidar','Lecturer','MSSE, National University of Sciences and Technology, Islamabad','images/MS_AAMNA_IQTIDAR_LECTURER.jpg','computing'),(33,'Dr. Waqar Ahmed Malik','Associate Professor/HOD','PhD. ELECTRICAL ENGINEERING (RF & MICROWAVE) King University, KSA','images/1.jpg','electrical'),(34,'Mr. Yasir Javed','Assistant Professor','MS (Computer System Engineering) ,CASE, UET, Taxila','images/Yasir_Javed.jpg','electrical'),(35,'Mr. Wasif Latif','Assistant Professor','MS (Telecom and Networks) ,  IQRA University, Islamabad','images/Wasif_Latif.jpg','electrical'),(36,'Mr Kamran Qureshi','Lecturer','MS (Electronics Design) , Mid-Sweden University , Sweden','images/Kamran_Qureshi.jpg','electrical'),(37,'Mr. Shahzaib Iqbal','Lecturer','MS (Electrical Engineering) , Abasyn University','images/Shahzeb.jpg','electrical'),(38,'Ms.Rashida Khalid','Lecturer','MS (Electrical Engineering) , COMSATS, Islamabad','images/Rashida_Khalid.jpg','electrical'),(40,'Mr. Rafi-u-Zman','Lab Engineer','BS (Electronic Engineering) , International  Islamic University','images/RAFI-U-ZAMAN.jpg','electrical'),(41,'Mr. Asim-ul-Haq','Lab Engineer','BS (Electrical Engineering) , COMSATS, Islamabad','images/Asim_Ul_Haq-Picture.jpg','electrical'),(42,'Dr. Muhammad Salik Javaid','HoD/Professor','PhD (Civil Engineering) , Georgia Institute of Technology, Atlanta , USA','images/Salik_Javaid.jpg','civil'),(43,'Ms. Laila Khalid','Assistant Professor','MS (Civil Engineering) , NUST','images/Laila_Khalid_.jpg','civil'),(44,'Mr. Khan Shahid Kamal Khan','Assistant Professor','MS (Construction Engineering and Management) , NUST','images/KHAN_SHAHID_KAMAL_KHAN.jpg','civil'),(45,'Ms. Naheed Akhtar','Assistant Professor','MS (Civil Engineering) , UET, Taxila','images/Naheed_Akhtar_.jpg','civil'),(46,'Mr. Muhammad Farjad Sami.','Lecturer','MS (Geotechnical Engineering) , NUST','images/Farjad_sami.jpg','civil'),(47,'Mr. Muhammad Waqas Malik','Lecturer','MS (Structural Engineering) , NUST','images/Muhammad_Waqas_Malik.jpg','civil'),(48,'Mr. Muhammad Sarfraz Faiz','Lecture','MS (Geotechnical Engineering) , NUST','images/3620210555775.JPG','civil'),(49,'Mr.Zeeshan Khalil','Lab Engineer','BS (Civil Engineering) , UET Taxila','images/Muhammad_Zeeshan_Khalil.jpg','civil'),(50,'Mr. Muhammad Shahrukh Pasha','Lab Engineer','BS (Civil Engineering) , UET Taxila','images/M._SHAHRUKH_PASHA.jpg','civil'),(51,'Ms. Khola Ilyas','Assistant Professor/HoD','MS (Management Science ) , IQRA University, Islamabad','images/khola_Ilyas.jpg','management-sciences'),(53,'Mr. Furqan Saeed','Lecturer/ Program Coordinator','MBA (Management Science ) , Bahria University, Islamabad','images/Furqan_Saeed.jpg','management-sciences'),(55,'Mr. Roman Khan','Lecturer','MBA (Management Science ) , Quaid-e-Azam University Islamabad','images/Roman_Khan.jpg','management-sciences'),(56,'Dr. Muhammad Akhlaq Mughal','HoD/ Associate Professor','Ph.D (Pharmacy) , University Of Peshawar','images/Dr_Akhlaq.jpg','life-scienecs'),(83,'Mr. Jawad Ahad','Lab Technician','DAE','images/Mr._Jawad_Ahad.jpg','civil'),(59,'Dr. Fariha Masood','Assistant Professor','Ph.D (Biotechnology) , Quaid-e-Azam University Islamabad','images/DR._FARIHA_MASOOD.jpg','life-scienecs'),(60,'Mr. Muhammad Rashid','Assistant Professor','M.Phill (Pharmacology) , University of Mlakand','images/Muhammad_Rashid.jpg','life-scienecs'),(61,'Mr. Allah Nawaz Khan','Lecturer/HOD Life Science','MS (Microbiology) , COMSATS, Islamabad','images/Allah_Nawaz_Khan.jpg','life-scienecs'),(62,'Ms. Tabinda Azim','Lecturer','M.Phil (Pharmacology) , University of Sargogha','images/tabinda.jpg','life-scienecs'),(79,'Mr. Muhammad Bilal Arif','Lab Engineer','BS (Electrical Engineering) COMSATS University Taxila, Pakistan','images/Muhammad_Bilal_Arif.jpg','electrical'),(64,'Ms. Rabaila Riaz','Lecturer','M.Phil (Biotechnology and Information) , BUITEMS , Quetta','images/Rabaila_Riaz.jpg','life-scienecs'),(78,'Mr. Muhammad Azeem','Lab Engineer','BS (Electrical Engineering) HITECH University Taxila, Pakistan','images/Muhammad_Azeem.jpg','electrical'),(77,'Engr. Aisha Qamar','Lecture','MS (Electrical Engineering) NUST Collage of Electrical and Mechanical','images/AISHA_QAMAR.jpg','electrical'),(85,'Mr. Muhammad Zaheer Akhtar','Professor','PhD (Education) University of ARID Agriculture','images/dummy-profile-pic-male1-300x300_agjjf6w.jpg','management-sciences'),(71,'Ms. Madiha Naveed','Junior Lecturer','BS(IT) , Abasyn University Peshawar','images/MADIHA_NAVEED_LAB_ENGINEER_OqmK6Vr.jpg','computing'),(72,'Mr. Muhammad Murtaza','Junior Lecturer','BS Computer Engineering , UET Taxila','images/Untitled-for_web.jpg','computing'),(84,'Mr.  Muhammad Muzammil','Lab Technician','DAE','images/Muhammad_Muzammil_lab_Technician.jpg','civil'),(80,'Mr. Sher Afgan','Lecturer','MS (Structural Engineer) NUST Islamabad, Pakistan','images/Photo_NUST.jpg','civil'),(75,'Mr. Waqar Ali','Junior Lecturer','MSCS, COMSATS University Islamabad','images/WhatsApp_Image_2018-11-14_at_6.41.36_PM.jpeg','computing'),(82,'Mr. Haris Atta Sial','Lab Engineer','BSc (Civil Engineering) UET Taxila, Pakistan','images/Haris_Attal_Sial.jpg','civil'),(76,'Mr. Ahmed Ali Khan','Junior Lecture','BS (Software Engineering) , Abasyn University Islamabad','images/SquareQuick_201929113859606.jpg','computing'),(88,'Ms. Sara Ghazal','Lecturer','M.Phil. Clinical Psychology, Foundation university','images/Sara_Ghazal.JPG','management-sciences'),(89,'Ms. Urooj waheed','Lecturer','MS English Literature, Air University','images/Urooj_Waheed.JPG','management-sciences'),(90,'Ms. Ulfat Batool','Lecturer','MSOMPT, Riphah International  University, Pakistan','images/Ms_LAILA_JAFRI_LECTURER_1.jpg','life-scienecs'),(91,'Ms. Sobia Raja','Lecturer','PhD (Management) Comsats University, Wah Pakistan(In Progress)','images/Ms._SOBIA_RAJA_LECTURER.jpg','management-sciences'),(92,'Ms. Bazla Siddique','Lecturer','M.Phil (Pharmacy) Quaid-e-Azam University Islamabad','images/565.jpg','life-scienecs'),(93,'Ms. Nazma Namroz','Lecturer','MS (OMPT)., Riphah International University','images/Nazma_Namroz.jpg','life-scienecs'),(94,'Engr. Muhammad Haroon Amin','Lab Engineer','BE (Electronics Engineering), Iqra University Islamabad','images/dummy-profile-pic-male1-300x300_5KkqeQ8.jpg','electrical'),(95,'Ms. Fareha Nadeem','Lab Demonstrator','Doctor of Pharmacy, Riphah International University Islamabad','images/1_ogx4XXi.jpg','life-scienecs'),(96,'Ms. Aroosa Mehwish','Lab Demonstrator','Doctor of Pharmacy, Quaid e Azam University Islamabad','images/aroosa.jpg','life-scienecs'),(97,'Ms. Laila Jafri','Assistant Professor','PhD (Bio-Chemistry) Quaid-e-Azam Islamabad','images/download.jpg','life-scienecs'),(98,'Mr. Khawar Ali','Lab Engineer','BSc civil UET Taxila MS Structural Engg UET Taxila','images/Khawar_Ali.jpeg','civil'),(99,'Mr. Abdullah Khan','Lab Engineer','BE (Civil Engineering)NUST','images/Abdullah_Khan_October_03_2018_WBK1NSI.jpg','civil');
/*!40000 ALTER TABLE `slider_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_timetable`
--

DROP TABLE IF EXISTS `slider_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_timetable`
--

LOCK TABLES `slider_timetable` WRITE;
/*!40000 ALTER TABLE `slider_timetable` DISABLE KEYS */;
INSERT INTO `slider_timetable` VALUES (2,'https://docs.google.com/document/d/1DM--LvDiWCfoJOpjTpHw601XiOz9SoB-k1VyrsN6tWY');
/*!40000 ALTER TABLE `slider_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_timetablegraduate`
--

DROP TABLE IF EXISTS `slider_timetablegraduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider_timetablegraduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_timetablegraduate`
--

LOCK TABLES `slider_timetablegraduate` WRITE;
/*!40000 ALTER TABLE `slider_timetablegraduate` DISABLE KEYS */;
INSERT INTO `slider_timetablegraduate` VALUES (1,'https://drive.google.com/file/d/1YimFURnNeEy5ab_TIBrNe7EFxpxE_3hG/view?fbclid=IwAR37JpzHJkgzeeyDG9NlmyxhZ_wIEaUG5vzrh8GM');
/*!40000 ALTER TABLE `slider_timetablegraduate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-27  8:11:05
