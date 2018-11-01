-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2018 at 06:48 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university2`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_alumni`
--

DROP TABLE IF EXISTS `alumni_alumni`;
CREATE TABLE IF NOT EXISTS `alumni_alumni` (
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

--
-- Dumping data for table `alumni_alumni`
--

INSERT INTO `alumni_alumni` (`id`, `email`, `full_Name`, `registration_number`, `courses`, `year_semester`, `occupation`, `job_title`) VALUES
(1, 'surhanzahid@gmail.com', 'Surhan Zahid', 1187, 'bscs', '2019', 'student', 'none'),
(2, 'yasir@gmail.com', 'Yasir Rafique', 1214, 'bscs', '2016', 'student', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `ansec_applynow`
--

DROP TABLE IF EXISTS `ansec_applynow`;
CREATE TABLE IF NOT EXISTS `ansec_applynow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_background`
--

DROP TABLE IF EXISTS `ansec_background`;
CREATE TABLE IF NOT EXISTS `ansec_background` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_events`
--

DROP TABLE IF EXISTS `ansec_events`;
CREATE TABLE IF NOT EXISTS `ansec_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_orgnizers`
--

DROP TABLE IF EXISTS `ansec_orgnizers`;
CREATE TABLE IF NOT EXISTS `ansec_orgnizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Employees');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 32),
(2, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add slider', 7, 'add_slider'),
(20, 'Can change slider', 7, 'change_slider'),
(21, 'Can delete slider', 7, 'delete_slider'),
(22, 'Can add staff', 8, 'add_staff'),
(23, 'Can change staff', 8, 'change_staff'),
(24, 'Can delete staff', 8, 'delete_staff'),
(25, 'Can add event', 9, 'add_event'),
(26, 'Can change event', 9, 'change_event'),
(27, 'Can delete event', 9, 'delete_event'),
(28, 'Can add Fee', 10, 'add_fees'),
(29, 'Can change Fee', 10, 'change_fees'),
(30, 'Can delete Fee', 10, 'delete_fees'),
(31, 'Can add Acdamic Calander', 11, 'add_acdamic_calander'),
(32, 'Can change Acdamic Calander', 11, 'change_acdamic_calander'),
(33, 'Can delete Acdamic Calander', 11, 'delete_acdamic_calander'),
(34, 'Can add News', 12, 'add_new'),
(35, 'Can change News', 12, 'change_new'),
(36, 'Can delete News', 12, 'delete_new'),
(37, 'Can add timetable', 13, 'add_timetable'),
(38, 'Can change timetable', 13, 'change_timetable'),
(39, 'Can delete timetable', 13, 'delete_timetable'),
(40, 'Can add Online Admission', 14, 'add_online_admission'),
(41, 'Can change Online Admission', 14, 'change_online_admission'),
(42, 'Can delete Online Admission', 14, 'delete_online_admission'),
(43, 'Can add CLO', 15, 'add_clo'),
(44, 'Can change CLO', 15, 'change_clo'),
(45, 'Can delete CLO', 15, 'delete_clo'),
(46, 'Can add Message', 16, 'add_message'),
(47, 'Can change Message', 16, 'change_message'),
(48, 'Can delete Message', 16, 'delete_message'),
(49, 'Can add Timetable Graduate', 17, 'add_timetablegraduate'),
(50, 'Can change Timetable Graduate', 17, 'change_timetablegraduate'),
(51, 'Can delete Timetable Graduate', 17, 'delete_timetablegraduate'),
(52, 'Can add Download', 18, 'add_download'),
(53, 'Can change Download', 18, 'change_download'),
(54, 'Can delete Download', 18, 'delete_download'),
(55, 'Can add Permission Letter', 19, 'add_permission'),
(56, 'Can change Permission Letter', 19, 'change_permission'),
(57, 'Can delete Permission Letter', 19, 'delete_permission'),
(58, 'Can add Acdamic Calander Graduate', 20, 'add_acdamic_calander_graduate'),
(59, 'Can change Acdamic Calander Graduate', 20, 'change_acdamic_calander_graduate'),
(60, 'Can delete Acdamic Calander Graduate', 20, 'delete_acdamic_calander_graduate'),
(61, 'Can add DateSheet', 21, 'add_datesheet'),
(62, 'Can change DateSheet', 21, 'change_datesheet'),
(63, 'Can delete DateSheet', 21, 'delete_datesheet'),
(64, 'Can add banner', 22, 'add_banner'),
(65, 'Can change banner', 22, 'change_banner'),
(66, 'Can delete banner', 22, 'delete_banner'),
(67, 'Can add alumni', 23, 'add_alumni'),
(68, 'Can change alumni', 23, 'change_alumni'),
(69, 'Can delete alumni', 23, 'delete_alumni'),
(70, 'Can add Event', 24, 'add_events'),
(71, 'Can change Event', 24, 'change_events'),
(72, 'Can delete Event', 24, 'delete_events'),
(73, 'Can add Apply Now', 25, 'add_applynow'),
(74, 'Can change Apply Now', 25, 'change_applynow'),
(75, 'Can delete Apply Now', 25, 'delete_applynow'),
(76, 'Can add Background', 26, 'add_background'),
(77, 'Can change Background', 26, 'change_background'),
(78, 'Can delete Background', 26, 'delete_background'),
(79, 'Can add Orgnizer', 27, 'add_orgnizers'),
(80, 'Can change Orgnizer', 27, 'change_orgnizers'),
(81, 'Can delete Orgnizer', 27, 'delete_orgnizers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$TUtfiG7SmPyJ$G5CP7VexAURmjBHpx1BdXODKBS7AevqkySG0bLnD4aY=', '2018-09-29 18:54:04.298035', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2017-12-11 11:09:06.028968'),
(2, 'pbkdf2_sha256$36000$49VmNkuyWejE$ZAnD0U2NSFVh0CxrepTazsMKM5HlJ39qzwl4bGdAXis=', '2018-02-13 10:34:59.283802', 0, 'Aftab', '', '', '', 1, 1, '2018-02-13 10:33:00.000000'),
(3, 'pbkdf2_sha256$36000$QbnPpK3IXKpj$TW4Py2sGdSYLWXuR5pFEnT7ewHGntq4CYLgA1k62xFc=', NULL, 1, 'surhan', '', '', 'surhan@gmail.com', 1, 1, '2018-07-20 12:24:02.795124');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 29);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-12-11 11:16:22.058501', '1', 'Slider object', 1, '[{\"added\": {}}]', 7, 1),
(2, '2017-12-11 19:37:07.527617', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\"]}}]', 7, 1),
(3, '2017-12-11 19:37:38.786327', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider2\"]}}]', 7, 1),
(4, '2017-12-11 19:38:29.882967', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider3\"]}}]', 7, 1),
(5, '2017-12-12 07:38:12.931948', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\"]}}]', 7, 1),
(6, '2018-02-01 18:44:17.334054', '1', 'Student object', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-02-01 18:44:32.751483', '1', 'Student object', 2, '[{\"changed\": {\"fields\": [\"name\", \"rollno\"]}}]', 8, 1),
(8, '2018-02-01 18:44:42.139491', '1', 'Student object', 2, '[]', 8, 1),
(9, '2018-02-01 18:44:53.824763', '2', 'Student object', 1, '[{\"added\": {}}]', 8, 1),
(10, '2018-02-11 08:10:50.668493', '1', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(11, '2018-02-11 16:43:01.364910', '2', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(12, '2018-02-12 06:44:07.432835', '3', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(13, '2018-02-12 06:44:41.084338', '4', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(14, '2018-02-12 06:46:27.826214', '5', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(15, '2018-02-12 06:47:00.958051', '6', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(16, '2018-02-12 06:50:41.224248', '3', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"qualification\"]}}]', 9, 1),
(17, '2018-02-12 06:52:02.601989', '7', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(18, '2018-02-12 06:52:46.801593', '8', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(19, '2018-02-12 07:27:57.165386', '8', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"linkedin\"]}}]', 9, 1),
(20, '2018-02-12 15:31:59.492370', '1', 'Event object', 1, '[{\"added\": {}}]', 10, 1),
(21, '2018-02-12 15:33:51.931809', '2', 'Event object', 1, '[{\"added\": {}}]', 10, 1),
(22, '2018-02-12 15:34:19.545786', '3', 'Event object', 1, '[{\"added\": {}}]', 10, 1),
(23, '2018-02-13 07:08:13.348798', '1', 'Facebook object', 1, '[{\"added\": {}}]', 11, 1),
(24, '2018-02-13 09:56:36.147534', '2', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"profile\"]}}]', 9, 1),
(25, '2018-02-13 09:56:56.826233', '3', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"profile\"]}}]', 9, 1),
(26, '2018-02-13 09:57:49.790809', '4', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"profile\"]}}]', 9, 1),
(27, '2018-02-13 10:33:00.845426', '2', 'Aftab', 1, '[{\"added\": {}}]', 4, 1),
(28, '2018-02-13 10:33:30.496272', '2', 'Aftab', 2, '[]', 4, 1),
(29, '2018-02-13 10:34:38.525370', '2', 'Aftab', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(30, '2018-02-14 19:57:29.997621', '1', 'Facebook object', 2, '[{\"changed\": {\"fields\": [\"embededcode\"]}}]', 11, 1),
(31, '2018-02-14 20:11:19.647761', '1', 'Facebook object', 2, '[{\"changed\": {\"fields\": [\"embededcode\"]}}]', 11, 1),
(32, '2018-03-06 20:45:03.867788', '1', 'Courses object', 1, '[{\"added\": {}}]', 12, 1),
(33, '2018-03-06 20:46:18.355779', '1', 'Courses object', 2, '[]', 12, 1),
(34, '2018-03-06 20:46:25.191510', '1', 'Courses object', 2, '[]', 12, 1),
(35, '2018-03-06 20:49:15.633213', '1', 'Courses object', 2, '[]', 12, 1),
(36, '2018-03-06 20:55:57.027519', '1', 'Courses object', 2, '[{\"changed\": {\"fields\": [\"semester\"]}}]', 12, 1),
(37, '2018-04-19 18:00:00.374449', '1', 'Event Coming Soon-Be ready for something new', 2, '[{\"changed\": {\"fields\": [\"timestamp\"]}}]', 10, 1),
(38, '2018-04-19 18:34:23.867888', '4', 'Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh', 1, '[{\"added\": {}}]', 10, 1),
(39, '2018-04-28 19:51:37.281570', '1', 'Alumni object', 1, '[{\"added\": {}}]', 13, 1),
(40, '2018-04-28 19:53:06.899335', '1', 'Alumni object', 2, '[{\"changed\": {\"fields\": [\"color\"]}}]', 13, 1),
(41, '2018-04-28 19:53:14.983552', '1', 'Alumni object', 2, '[{\"changed\": {\"fields\": [\"occupation\"]}}]', 13, 1),
(42, '2018-04-28 19:58:05.581489', '1', 'Alumni object', 2, '[{\"changed\": {\"fields\": [\"courses\", \"occupation\"]}}]', 13, 1),
(43, '2018-05-30 17:01:15.020522', '1', 'Alumni object', 2, '[{\"changed\": {\"fields\": [\"full_Name\"]}}]', 13, 1),
(44, '2018-06-04 07:59:48.692174', '4', 'Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh', 3, '', 10, 1),
(45, '2018-06-04 16:06:04.184149', '2', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"designation\"]}}]', 9, 1),
(46, '2018-06-04 16:50:20.385708', '9', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(47, '2018-06-04 16:52:29.860844', '10', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(48, '2018-06-05 12:22:05.711444', '1', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(49, '2018-06-05 12:23:40.609689', '11', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(50, '2018-06-05 12:25:05.130058', '12', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(51, '2018-06-05 12:26:08.861609', '13', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(52, '2018-06-05 12:27:07.671850', '14', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(53, '2018-06-05 12:28:28.920249', '15', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(54, '2018-06-21 13:28:29.790843', '16', 'Staff object', 1, '[{\"added\": {}}]', 9, 1),
(55, '2018-06-21 13:32:01.977203', '16', 'Staff object', 3, '', 9, 1),
(56, '2018-06-21 13:38:57.409625', '2', 'Staff object', 2, '[{\"changed\": {\"fields\": [\"designation\"]}}]', 9, 1),
(57, '2018-06-25 13:07:21.889024', '1', 'BE- Civil Engineering', 1, '[{\"added\": {}}]', 14, 1),
(58, '2018-06-25 13:07:54.255628', '2', 'BE- Electrical Engineering', 1, '[{\"added\": {}}]', 14, 1),
(59, '2018-06-25 13:08:08.527262', '3', 'Pharm-D', 1, '[{\"added\": {}}]', 14, 1),
(60, '2018-06-25 13:08:20.171192', '4', 'BS- Software Engineering', 1, '[{\"added\": {}}]', 14, 1),
(61, '2018-06-25 13:08:33.768392', '5', 'BS- Computer Science', 1, '[{\"added\": {}}]', 14, 1),
(62, '2018-06-25 13:08:47.870489', '6', 'BS- Microbiology', 1, '[{\"added\": {}}]', 14, 1),
(63, '2018-06-25 13:08:58.855535', '7', 'BS- Biotechnology', 1, '[{\"added\": {}}]', 14, 1),
(64, '2018-06-25 13:09:10.401513', '8', 'BS- Telecommunication & Networks', 1, '[{\"added\": {}}]', 14, 1),
(65, '2018-06-25 13:09:23.853091', '9', 'Bachelor in Business Administration', 1, '[{\"added\": {}}]', 14, 1),
(66, '2018-06-25 13:09:38.977885', '10', 'Bachelor of Commerce', 1, '[{\"added\": {}}]', 14, 1),
(67, '2018-06-25 13:09:52.359406', '11', 'BS- Development Studies', 1, '[{\"added\": {}}]', 14, 1),
(68, '2018-06-25 13:10:04.430829', '12', 'B.Tech (Civil/Electrical)', 1, '[{\"added\": {}}]', 14, 1),
(69, '2018-06-25 13:10:15.907155', '13', 'MS- Computer Science', 1, '[{\"added\": {}}]', 14, 1),
(70, '2018-06-25 13:10:29.900299', '14', 'MS- Software Engineering', 1, '[{\"added\": {}}]', 14, 1),
(71, '2018-06-25 13:10:50.991509', '15', 'MS- Telecommunication & Networks', 1, '[{\"added\": {}}]', 14, 1),
(72, '2018-06-25 16:47:51.234081', '16', 'MS- Electrical Engineering', 1, '[{\"added\": {}}]', 14, 1),
(73, '2018-06-25 16:48:05.707882', '17', 'MS- Management Science', 1, '[{\"added\": {}}]', 14, 1),
(74, '2018-06-25 16:48:30.354794', '18', 'MS- Engineering Management', 1, '[{\"added\": {}}]', 14, 1),
(75, '2018-06-25 16:48:43.048411', '19', 'MS- Industrial Management', 1, '[{\"added\": {}}]', 14, 1),
(76, '2018-06-25 16:49:29.866815', '20', 'MS- Logistic and Supply Chain Management', 1, '[{\"added\": {}}]', 14, 1),
(77, '2018-06-25 16:49:55.292033', '21', 'MS- Project Management', 1, '[{\"added\": {}}]', 14, 1),
(78, '2018-06-25 16:50:10.954604', '22', 'MSc- Microbiology', 1, '[{\"added\": {}}]', 14, 1),
(79, '2018-06-25 16:50:28.033873', '23', 'Master in Business Administration (1.5 - 2 year)', 1, '[{\"added\": {}}]', 14, 1),
(80, '2018-06-25 16:50:53.683327', '24', 'Master in Business Administration (2 - 2.5 year)', 1, '[{\"added\": {}}]', 14, 1),
(81, '2018-06-25 16:51:16.444613', '25', 'Master in Business Administration (3.5 year)', 1, '[{\"added\": {}}]', 14, 1),
(82, '2018-06-25 16:51:41.920145', '26', 'Master of Commerce', 1, '[{\"added\": {}}]', 14, 1),
(83, '2018-06-25 16:51:54.516680', '27', 'MS- Development Studies', 1, '[{\"added\": {}}]', 14, 1),
(84, '2018-06-26 18:54:12.472113', '15', 'Mr. Abbas Haider-Lecturer', 3, '', 9, 1),
(85, '2018-06-27 11:43:24.845066', '1', 'http://abasynisb.edu.pk/pdf/academiccalendar.pdf', 1, '[{\"added\": {}}]', 15, 1),
(86, '2018-06-27 13:06:17.341461', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\", \"slider2\", \"slider3\"]}}]', 7, 1),
(87, '2018-06-27 13:12:44.021359', '1', 'Coming Soon', 1, '[{\"added\": {}}]', 16, 1),
(88, '2018-06-27 13:19:31.452797', '1', 'Coming Soon', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 16, 1),
(89, '2018-07-20 12:12:35.124344', '28', 'MBA', 1, '[{\"added\": {}}]', 14, 1),
(90, '2018-09-03 13:51:13.670001', '1', 'Sir Asad-Researcher', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 9, 1),
(91, '2018-09-03 13:56:03.754484', '1', 'Sir Asad-Researcher', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 9, 1),
(92, '2018-09-03 13:57:35.616028', '1', 'Sir Asad-Researcher', 3, '', 9, 1),
(93, '2018-09-03 18:19:00.035000', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\"]}}]', 7, 1),
(94, '2018-09-03 18:24:14.510599', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider3\"]}}]', 7, 1),
(95, '2018-09-03 18:26:42.778426', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\"]}}]', 7, 1),
(96, '2018-09-03 18:28:31.840180', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider2\"]}}]', 7, 1),
(97, '2018-09-03 18:32:11.128943', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider3\"]}}]', 7, 1),
(98, '2018-09-03 19:17:13.603549', '1', 'http://abasynisb.edu.pk/pdf/academiccalendar.pdf', 3, '', 15, 1),
(99, '2018-09-03 19:19:06.400296', '2', 'https://drive.google.com/file/d/1YDZubokmzvKW2ijWaKZIVbPh19VVyz_w/view?usp=sharing', 1, '[{\"added\": {}}]', 15, 1),
(100, '2018-09-03 19:34:44.181215', '3', 'Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide', 2, '[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]', 10, 1),
(101, '2018-09-03 19:37:22.282110', '2', 'Orientation Session Fall 18-Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', 2, '[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]', 10, 1),
(102, '2018-09-03 19:38:29.131274', '1', 'ANSEC 18 Coming Soon-ANSEC 18 Coming Soon', 2, '[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\", \"timestamp\"]}}]', 10, 1),
(103, '2018-09-03 19:43:02.881341', '1', 'Coming Soon', 2, '[{\"changed\": {\"fields\": [\"picture\", \"description\", \"timestamp\"]}}]', 16, 1),
(104, '2018-09-03 20:33:17.459590', '1', 'Result Summer 18', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\"]}}]', 16, 1),
(105, '2018-09-03 20:34:23.795394', '3', 'Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide', 2, '[]', 10, 1),
(106, '2018-09-04 12:29:54.037911', '1', 'https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit', 1, '[{\"added\": {}}]', 17, 1),
(107, '2018-09-04 12:50:39.738701', '1', 'Result Summer 18', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 16, 1),
(108, '2018-09-04 12:52:22.779964', '1', 'Result Summer 18', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 16, 1),
(109, '2018-09-04 13:02:14.958468', '1', 'Result Summer 18', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 16, 1),
(110, '2018-09-04 13:05:32.001889', '3', 'Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.AUIC is going to provide', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 10, 1),
(111, '2018-09-04 13:05:52.708453', '2', 'Orientation Session Fall 18-Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 10, 1),
(112, '2018-09-04 13:06:07.054745', '1', 'ANSEC 18 Coming Soon-ANSEC 18 Coming Soon', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 10, 1),
(113, '2018-09-04 13:31:46.858582', '28', 'MBA', 3, '', 14, 1),
(114, '2018-09-13 20:17:28.188968', '1', '#', 1, '[{\"added\": {}}]', 18, 1),
(115, '2018-09-13 20:28:51.236445', '8', 'Mr. Rashid Kamal-Lab Engineer', 3, '', 9, 1),
(116, '2018-09-14 16:50:24.017807', '1', 'Employees', 1, '[{\"added\": {}}]', 3, 1),
(117, '2018-09-14 16:53:02.175417', '1', 'Employees', 2, '[]', 3, 1),
(118, '2018-09-17 17:36:34.056005', '2', 'Dr Sidra Sultana-HoD Department of Computing', 2, '[{\"changed\": {\"fields\": [\"qualification\"]}}]', 9, 1),
(119, '2018-09-17 17:50:07.303934', '1', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.asp', 1, '[{\"added\": {}}]', 23, 1),
(120, '2018-09-17 17:51:15.246291', '1', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.aspElectrical', 3, '', 23, 1),
(121, '2018-09-17 17:51:20.312672', '2', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.aspComing Soon', 1, '[{\"added\": {}}]', 23, 1),
(122, '2018-09-17 18:06:31.079795', '2', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.aspElectrical', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 23, 1),
(123, '2018-09-17 18:09:12.903865', '3', 'Civil', 1, '[{\"added\": {}}]', 23, 1),
(124, '2018-09-17 18:34:21.663051', '4', 'Computing', 1, '[{\"added\": {}}]', 23, 1),
(125, '2018-09-17 18:38:38.951825', '4', 'Computing', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 23, 1),
(126, '2018-09-17 18:48:39.401700', '1', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.asp', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 18, 1),
(127, '2018-09-21 16:11:03.269143', '1', 'Admissions are open', 1, '[{\"added\": {}}]', 24, 1),
(128, '2018-09-21 16:14:30.472589', '1', 'Result has been announced', 2, '[{\"changed\": {\"fields\": [\"message\"]}}]', 24, 1),
(129, '2018-09-21 16:21:15.036430', '1', 'https://www.w3schools.com/bootstrap/bootstrap_buttons.asp', 1, '[{\"added\": {}}]', 25, 1),
(130, '2018-09-22 11:49:35.599506', '1', 'Application Form', 1, '[{\"added\": {}}]', 26, 1),
(131, '2018-09-22 11:50:50.409541', '2', 'Prospectus', 1, '[{\"added\": {}}]', 26, 1),
(132, '2018-09-22 11:51:06.249478', '3', 'Handbook', 1, '[{\"added\": {}}]', 26, 1),
(133, '2018-09-22 12:09:24.662971', '3', 'Student Handbook', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 26, 1),
(134, '2018-09-22 12:12:42.594335', '1', 'http://35.172.219.204/admissionsystem/AA/bootstrap/index.php', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 18, 1),
(135, '2018-09-22 17:20:24.696625', '1', 'HEC', 1, '[{\"added\": {}}]', 27, 1),
(136, '2018-09-22 17:20:55.678606', '2', 'Civil', 1, '[{\"added\": {}}]', 27, 1),
(137, '2018-09-22 17:24:06.971951', '3', 'Electrical', 1, '[{\"added\": {}}]', 27, 1),
(138, '2018-09-22 17:24:22.014159', '4', 'Computing', 1, '[{\"added\": {}}]', 27, 1),
(139, '2018-09-22 18:09:45.121187', '1', 'Admissions are open', 2, '[{\"changed\": {\"fields\": [\"message\"]}}]', 24, 1),
(140, '2018-09-26 04:19:43.239495', '1', 'Official Page of AUIC', 2, '[{\"changed\": {\"fields\": [\"picture\", \"title\", \"description\"]}}]', 16, 1),
(141, '2018-09-26 04:22:45.022682', '2', 'Youm e Ashora', 1, '[{\"added\": {}}]', 16, 1),
(142, '2018-09-26 04:25:09.037495', '3', 'Ambassador\'s Call', 1, '[{\"added\": {}}]', 16, 1),
(143, '2018-09-26 04:26:16.095824', '3', 'Entry Test Fall - 18-Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 10, 1),
(144, '2018-09-26 04:29:21.910035', '1', 'https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 25, 1),
(145, '2018-09-26 04:38:43.976172', '3', 'Civil', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 23, 1),
(146, '2018-09-26 05:00:24.733566', '2', 'Electrical', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 23, 1),
(147, '2018-09-27 18:19:43.702561', '1', 'MS Date Sheet', 1, '[{\"added\": {}}]', 28, 1),
(148, '2018-09-27 18:33:01.225771', '1', 'MS DateSheet', 1, '[{\"added\": {}}]', 29, 1),
(149, '2018-09-27 18:47:19.142590', '1', 'MS DateSheet', 2, '[{\"changed\": {\"fields\": [\"visibility\"]}}]', 29, 1),
(150, '2018-09-27 18:47:44.203498', '1', 'MS DateSheet', 2, '[{\"changed\": {\"fields\": [\"visibility\"]}}]', 29, 1),
(151, '2018-09-27 18:48:00.099810', '2', 'ANSEC', 1, '[{\"added\": {}}]', 29, 1),
(152, '2018-09-27 18:48:16.756621', '2', 'ANSEC', 3, '', 29, 1),
(153, '2018-09-27 18:48:21.540062', '1', 'MS DateSheet', 3, '', 29, 1),
(154, '2018-09-28 09:46:43.016584', '3', 'MS DateSheet', 1, '[{\"added\": {}}]', 29, 1),
(155, '2018-09-28 12:25:04.593999', '3', 'B-Tech Timetable', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 29, 1),
(156, '2018-09-28 12:25:32.953603', '4', 'MS Dateseet', 1, '[{\"added\": {}}]', 29, 1),
(157, '2018-09-28 12:26:00.398405', '5', 'BS DateSheet', 1, '[{\"added\": {}}]', 29, 1),
(158, '2018-09-28 12:28:21.191233', '5', 'BS DateSheet', 3, '', 29, 1),
(159, '2018-09-28 14:47:48.105561', '3', 'Dr. Amjad Mahmood-Professor/ Executive Director', 2, '[{\"changed\": {\"fields\": [\"qualification\"]}}]', 9, 1),
(160, '2018-09-28 14:57:33.629972', '3', 'Dr. Amjad Mahmood-Professor/ Executive Director', 2, '[{\"changed\": {\"fields\": [\"qualification\"]}}]', 9, 1),
(161, '2018-09-28 15:02:49.996666', '3', 'Civil', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 23, 1),
(162, '2018-09-28 16:16:48.588023', '1', 'Banner object', 1, '[{\"added\": {}}]', 30, 1),
(163, '2018-09-28 18:38:23.286441', '14', 'Ms. Laila Khalid-Assistant Professor', 3, '', 9, 1),
(164, '2018-09-28 18:38:23.442480', '13', 'Ms. Naheed Akhtar-Assistant Professor', 3, '', 9, 1),
(165, '2018-09-28 18:38:23.638464', '12', 'Mr. Zeeshan Ullah-Assistant Professor', 3, '', 9, 1),
(166, '2018-09-28 18:38:23.914484', '11', 'Dr. M. Salik Javaid-Professor/ HoD Dept. of Civil Engineering', 3, '', 9, 1),
(167, '2018-09-28 18:38:24.062492', '10', 'Dr. I.S. Awan-none', 3, '', 9, 1),
(168, '2018-09-28 18:38:24.182502', '9', 'Dr. M. Noman Jafri-Professor/ Dean of Engineering and Computing', 3, '', 9, 1),
(169, '2018-09-28 18:38:24.294508', '7', 'Ms. Madiha Naveed-Lab Engineer', 3, '', 9, 1),
(170, '2018-09-28 18:38:24.438516', '6', 'Ms. Naveen Ahmed-Lecturer', 3, '', 9, 1),
(171, '2018-09-28 18:38:24.574529', '5', 'Ms. Sameen Javed-Lecturer', 3, '', 9, 1),
(172, '2018-09-28 18:38:24.714596', '4', 'Dr. M. Yousaf Khan-Associate Professor', 3, '', 9, 1),
(173, '2018-09-28 18:38:24.870552', '3', 'Dr. Amjad Mahmood-Professor/ Executive Director', 3, '', 9, 1),
(174, '2018-09-28 18:38:25.042561', '2', 'Dr Sidra Sultana-HoD Department of Computing', 3, '', 9, 1),
(175, '2018-09-28 18:41:37.323468', '15', 'Dr. Amjad Mahmood-Executive Director', 1, '[{\"added\": {}}]', 9, 1),
(176, '2018-09-28 18:45:25.298769', '16', 'Dr. Muhammad Yousaf Khan-Associate Professor', 1, '[{\"added\": {}}]', 9, 1),
(177, '2018-09-28 18:46:51.381987', '17', 'Dr. Sidra Sultana-HOD', 1, '[{\"added\": {}}]', 9, 1),
(178, '2018-09-28 18:48:09.555463', '18', 'Mr. Abdul Basit-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(179, '2018-09-28 18:49:56.412209', '19', 'Mr. Abdul Hannan-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(180, '2018-09-28 18:51:38.335838', '20', 'Mr.Muhammad Idrees-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(181, '2018-09-28 18:54:56.604648', '21', 'Ms. Sameen Javed-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(182, '2018-09-28 19:02:02.924748', '22', 'Ms. Naveen Ahmed-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(183, '2018-09-28 19:03:02.166911', '23', 'Mr. Asad Hanif-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(184, '2018-09-28 19:05:01.425699', '24', 'Ms. Madiha Naveed-Lab Engineer/Coordinator', 1, '[{\"added\": {}}]', 9, 1),
(185, '2018-09-28 19:06:40.896119', '25', 'Mr. Muhammad Murtaza-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(186, '2018-09-28 19:08:17.309794', '25', 'Mr. Muhammad Murtaza-Lab Engineer', 3, '', 9, 1),
(187, '2018-09-28 19:08:17.474911', '24', 'Ms. Madiha Naveed-Lab Engineer/Coordinator', 3, '', 9, 1),
(188, '2018-09-28 19:08:17.608007', '23', 'Mr. Asad Hanif-Lecturer', 3, '', 9, 1),
(189, '2018-09-28 19:09:12.494245', '26', 'Ms. Madiha Hena-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(190, '2018-09-28 19:10:08.884066', '27', 'Mr. Asad Hanif-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(191, '2018-09-28 19:10:47.335748', '27', 'Mr. Asad Hanif-Lecturer', 2, '[{\"changed\": {\"fields\": [\"qualification\", \"profile\"]}}]', 9, 1),
(192, '2018-09-28 19:11:48.647513', '28', 'Ms. Madiha Naveed-Lab Engineer/Coordinator', 1, '[{\"added\": {}}]', 9, 1),
(193, '2018-09-28 19:12:37.513556', '29', 'Mr. Muhammad Murtaza-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(194, '2018-09-28 19:16:08.908615', '30', 'Mr. Muhammad Uzair-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(195, '2018-09-28 19:25:03.336692', '30', 'Mr. Muhammad Uzair-Lab Engineer', 3, '', 9, 1),
(196, '2018-09-28 19:27:31.071941', '31', 'Dr.M.Noman Jafri-Professor & Dean', 1, '[{\"added\": {}}]', 9, 1),
(197, '2018-09-28 19:31:20.534635', '32', 'Dr. Imran Shafi-Associate Professor', 1, '[{\"added\": {}}]', 9, 1),
(198, '2018-09-28 19:32:09.073494', '33', 'Dr. Waqar Ahmed Malik-Associate Professor/HOD', 1, '[{\"added\": {}}]', 9, 1),
(199, '2018-09-28 19:32:15.248770', '32', 'Dr. Imran Shafi-Associate Professor', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 9, 1),
(200, '2018-09-28 19:33:52.692664', '34', 'Mr. Yasir Javed-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(201, '2018-09-28 19:35:06.354506', '35', 'Mr. Wasif Latif-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(202, '2018-09-28 19:36:37.560953', '36', 'Mr Kamran Qureshi-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(203, '2018-09-28 19:37:47.785886', '37', 'Mr. Shahzaib Iqbal-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(204, '2018-09-28 19:38:52.620535', '38', 'Ms.Rashida Khalid-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(205, '2018-09-28 19:40:01.227520', '39', 'Ms. Laiba Jawad-Lab Engineer/Coordinator', 1, '[{\"added\": {}}]', 9, 1),
(206, '2018-09-28 19:41:21.599593', '40', 'Mr. Rafi-u-Zman-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(207, '2018-09-28 19:43:05.022471', '41', 'Mr. Asim-ul-Haq-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(208, '2018-09-28 19:45:33.549226', '42', 'Dr. Muhammad Salik Javaid-HoD/Professor', 1, '[{\"added\": {}}]', 9, 1),
(209, '2018-09-28 19:47:59.627384', '43', 'Ms. Laila Khalid-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(210, '2018-09-28 19:49:00.087306', '44', 'Mr. Khan Shahid Kamal Khan-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(211, '2018-09-28 19:49:48.702513', '45', 'Ms. Naheed Akhtar-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(212, '2018-09-28 19:52:14.129323', '46', 'Mr. Muhammad Farjad Sami.-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(213, '2018-09-28 19:53:35.216198', '47', 'Mr. Muhammad Waqas Malik-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(214, '2018-09-28 19:55:20.002734', '48', 'Mr. Muhammad Sarfraz-Junior Lecture', 1, '[{\"added\": {}}]', 9, 1),
(215, '2018-09-28 19:58:43.505832', '49', 'Mr.Zeeshan Khalil-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(216, '2018-09-28 19:59:44.383671', '50', 'Mr. Muhammad Shahrukh Pasha-Lab Engineer', 1, '[{\"added\": {}}]', 9, 1),
(217, '2018-09-28 20:04:23.978848', '51', 'Ms. Khola Ilyas-Assistant Professor/HoD', 1, '[{\"added\": {}}]', 9, 1),
(218, '2018-09-28 20:06:12.206837', '52', 'Mr. Khursheed Ali-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(219, '2018-09-28 20:07:25.108192', '53', 'Mr. Furqan Saeed-Lecturer/ Program Coordinator', 1, '[{\"added\": {}}]', 9, 1),
(220, '2018-09-28 20:10:19.978756', '54', 'Ms. Aisha Razzaq-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(221, '2018-09-28 20:11:34.113774', '55', 'Mr. Roman Khan-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(222, '2018-09-28 20:12:50.141122', '56', 'Dr. Muhammad Akhlaq Mughal-HoD/ Associate Professor', 1, '[{\"added\": {}}]', 9, 1),
(223, '2018-09-28 20:17:35.061388', '57', 'Mr. Muhammad Rashid-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(224, '2018-09-28 20:18:56.493964', '58', 'Dr. Sajjad Ahmad-Assistant Professor/Coordinator', 1, '[{\"added\": {}}]', 9, 1),
(225, '2018-09-28 20:19:12.242119', '57', 'Mr. Muhammad Rashid-Assistant Professor', 3, '', 9, 1),
(226, '2018-09-28 20:21:40.561007', '59', 'Dr. Fariha Masood-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(227, '2018-09-28 20:22:42.512713', '60', 'Mr. Muhammad Rashid-Assistant Professor', 1, '[{\"added\": {}}]', 9, 1),
(228, '2018-09-28 20:23:50.131882', '61', 'Mr. Allah Nawaz Khan-Lecturer/HOD Life Science', 1, '[{\"added\": {}}]', 9, 1),
(229, '2018-09-28 20:25:01.816990', '62', 'Ms. Tabinda Azim-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(230, '2018-09-28 20:26:05.156266', '63', 'Mr Muhammad Wasim-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(231, '2018-09-28 20:27:51.602426', '64', 'Ms. Rabaila Riaz-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(232, '2018-09-28 20:28:51.706876', '65', 'Ms. Wajiha Khalid-Lecturer', 1, '[{\"added\": {}}]', 9, 1),
(233, '2018-09-28 20:29:45.975676', '66', 'Mr. Iqra Hamid-Lab Demonstrator', 1, '[{\"added\": {}}]', 9, 1),
(234, '2018-09-28 20:30:42.271222', '67', 'Mr. Amrullah Khan-Lab Assistant', 1, '[{\"added\": {}}]', 9, 1),
(235, '2018-09-28 20:39:33.823542', '4', 'MS Dateseet', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 29, 1),
(236, '2018-09-28 20:40:33.978542', '1', 'https://drive.google.com/file/d/1z2_Ec7xF96Hh4ineeZaS-u9NMILVK4EW/view?usp=sharing', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 25, 1),
(237, '2018-09-28 20:41:28.642892', '1', 'MS Calender', 2, '[{\"changed\": {\"fields\": [\"link\", \"title\"]}}]', 28, 1),
(238, '2018-09-28 20:43:34.887245', '3', 'B-Tech Timetable', 3, '', 29, 1),
(239, '2018-09-29 19:06:50.650634', '16', 'Dr. Muhammad Yousaf Khan-Associate Professor', 2, '[{\"changed\": {\"fields\": [\"profile\"]}}]', 9, 1),
(240, '2018-10-05 06:12:34.732675', '4', 'MS Datesheet', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 29, 1),
(241, '2018-10-08 08:06:21.045509', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"slider1\"]}}]', 7, 1),
(242, '2018-10-12 18:03:52.547552', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 7, 1),
(243, '2018-10-12 18:04:07.280921', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 7, 1),
(244, '2018-10-12 18:04:31.159839', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 7, 1),
(245, '2018-10-12 18:05:47.939978', '1', 'Slider object', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 7, 1),
(246, '2018-10-12 18:06:37.997758', '2', 'Slider object', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'slider', 'slider'),
(8, 'slider', 'staff'),
(9, 'slider', 'event'),
(10, 'slider', 'fees'),
(11, 'slider', 'acdamic_calander'),
(12, 'slider', 'new'),
(13, 'slider', 'timetable'),
(14, 'slider', 'online_admission'),
(15, 'slider', 'clo'),
(16, 'slider', 'message'),
(17, 'slider', 'timetablegraduate'),
(18, 'slider', 'download'),
(19, 'slider', 'permission'),
(20, 'slider', 'acdamic_calander_graduate'),
(21, 'slider', 'datesheet'),
(22, 'slider', 'banner'),
(23, 'alumni', 'alumni'),
(24, 'Ansec', 'events'),
(25, 'Ansec', 'applynow'),
(26, 'Ansec', 'background'),
(27, 'Ansec', 'orgnizers');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Ansec', '0001_initial', '2018-11-01 06:43:39.011907'),
(2, 'Ansec', '0002_applynow_background_orgnizers', '2018-11-01 06:43:39.067942'),
(3, 'Ansec', '0003_auto_20180917_0003', '2018-11-01 06:43:39.073947'),
(4, 'contenttypes', '0001_initial', '2018-11-01 06:43:39.113973'),
(5, 'auth', '0001_initial', '2018-11-01 06:43:39.524244'),
(6, 'admin', '0001_initial', '2018-11-01 06:43:39.623310'),
(7, 'admin', '0002_logentry_remove_auto_add', '2018-11-01 06:43:39.642324'),
(8, 'alumni', '0001_initial', '2018-11-01 06:43:39.677346'),
(9, 'alumni', '0002_auto_20180429_0056', '2018-11-01 06:43:39.710369'),
(10, 'contenttypes', '0002_remove_content_type_name', '2018-11-01 06:43:39.795425'),
(11, 'auth', '0002_alter_permission_name_max_length', '2018-11-01 06:43:39.813680'),
(12, 'auth', '0003_alter_user_email_max_length', '2018-11-01 06:43:39.860077'),
(13, 'auth', '0004_alter_user_username_opts', '2018-11-01 06:43:39.877090'),
(14, 'auth', '0005_alter_user_last_login_null', '2018-11-01 06:43:39.918119'),
(15, 'auth', '0006_require_contenttypes_0002', '2018-11-01 06:43:39.925121'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2018-11-01 06:43:39.945137'),
(17, 'auth', '0008_alter_user_username_max_length', '2018-11-01 06:43:39.979157'),
(18, 'sessions', '0001_initial', '2018-11-01 06:43:40.011180'),
(19, 'slider', '0001_initial', '2018-11-01 06:43:40.038198'),
(20, 'slider', '0002_student', '2018-11-01 06:43:40.068217'),
(21, 'slider', '0003_staff', '2018-11-01 06:43:40.096236'),
(22, 'slider', '0004_auto_20180212_1224', '2018-11-01 06:43:40.166282'),
(23, 'slider', '0005_event', '2018-11-01 06:43:40.200305'),
(24, 'slider', '0006_facebook', '2018-11-01 06:43:40.229326'),
(25, 'slider', '0007_auto_20180213_1207', '2018-11-01 06:43:40.259346'),
(26, 'slider', '0008_courses', '2018-11-01 06:43:40.296369'),
(27, 'slider', '0009_auto_20180307_0145', '2018-11-01 06:43:40.307377'),
(28, 'slider', '0010_auto_20180307_0155', '2018-11-01 06:43:40.318385'),
(29, 'slider', '0011_event_timestamp', '2018-11-01 06:43:40.359413'),
(30, 'slider', '0012_auto_20180604_2122', '2018-11-01 06:43:40.408446'),
(31, 'slider', '0013_auto_20180625_1806', '2018-11-01 06:43:40.445469'),
(32, 'slider', '0014_acdamic_calander', '2018-11-01 06:43:40.463483'),
(33, 'slider', '0015_new', '2018-11-01 06:43:40.487498'),
(34, 'slider', '0016_auto_20180903_1847', '2018-11-01 06:43:40.498506'),
(35, 'slider', '0017_auto_20180903_1849', '2018-11-01 06:43:40.510514'),
(36, 'slider', '0018_auto_20180903_1854', '2018-11-01 06:43:40.519518'),
(37, 'slider', '0019_timetable', '2018-11-01 06:43:40.539534'),
(38, 'slider', '0020_new_link', '2018-11-01 06:43:40.575556'),
(39, 'slider', '0021_online_admission', '2018-11-01 06:43:40.599572'),
(40, 'slider', '0022_auto_20180914_0114', '2018-11-01 06:43:40.610580'),
(41, 'slider', '0023_auto_20180914_0116', '2018-11-01 06:43:40.625591'),
(42, 'slider', '0024_auto_20180914_0116', '2018-11-01 06:43:40.634596'),
(43, 'slider', '0025_clo', '2018-11-01 06:43:40.657612'),
(44, 'slider', '0026_message', '2018-11-01 06:43:40.679627'),
(45, 'slider', '0027_timetablegraduate', '2018-11-01 06:43:40.699639'),
(46, 'slider', '0028_auto_20180922_1648', '2018-11-01 06:43:40.726658'),
(47, 'slider', '0029_permission', '2018-11-01 06:43:40.757679'),
(48, 'slider', '0030_auto_20180922_2223', '2018-11-01 06:43:40.790701'),
(49, 'slider', '0031_auto_20180922_2248', '2018-11-01 06:43:40.805712'),
(50, 'slider', '0032_acdamic_calander_graduate', '2018-11-01 06:43:40.831727'),
(51, 'slider', '0033_auto_20180927_2318', '2018-11-01 06:43:40.881761'),
(52, 'slider', '0034_auto_20180927_2330', '2018-11-01 06:43:40.917786'),
(53, 'slider', '0035_datesheet_visibility', '2018-11-01 06:43:40.964818'),
(54, 'slider', '0036_banner', '2018-11-01 06:43:40.985831'),
(55, 'slider', '0037_remove_staff_twiter', '2018-11-01 06:43:41.010849'),
(56, 'slider', '0038_auto_20181012_2302', '2018-11-01 06:43:41.089348'),
(57, 'slider', '0039_message_link', '2018-11-01 06:43:41.143286');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0iwsasx6hrgmgprxen58wktsk6vea31u', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:47:27.453651'),
('0z83zxf23tmf2n0um9vtwhet3jk8xyh1', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:57:18.829267'),
('1fbsrvlqerfuwejfbhu7lnn6q5vb6vn3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:38:25.477331'),
('2npi89sgo5tidom30q10prh5g49ky07a', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:13:19.906796'),
('2w5zeo55g7nuczfxqm7qyqa84gum7w5s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:45:40.878134'),
('5lu905bli6zlc4x5srjgjsbrxch9q19s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-11 18:09:27.752026'),
('69qzkhyzmnxrofbmjxh327fnyk8t2iws', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-03 12:09:20.702517'),
('69v6g0l5kbfy8iccd05qvxzvmvqwbo2l', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-19 12:21:52.908539'),
('6qmuxlsfdi59cgd6zqkphqjh5hh8elub', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:49:40.451009'),
('6xvhsb9b4qdbqram4aahm7tw49doiv2t', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 16:04:32.598927'),
('7z5p3hlblfgrvw7qlrm7kymoztexelle', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 18:32:31.066892'),
('813yr9uw3blqmd261agngrkbbvedvr0g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 18:15:41.045819'),
('9u35n3d4rl6n1uj4df13kbf2vunruacy', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-03-20 09:00:39.423936'),
('arrfhwegcfm3jsf7e2k4vw99yzobvjdf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-04-05 07:49:02.263173'),
('c58d42uax6ixe4e58szxme1zgdificz7', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-28 17:03:42.487912'),
('ft17fhmdmxls5hyysdm5g941av5e6ns5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-05 13:27:47.429994'),
('gq5rouxawpee0shhb7aja5w555u2gzvk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-17 13:17:09.899692'),
('i5x61qzrc7quy0wzgkbe44i89cbavvx3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-13 18:54:04.322052'),
('i6waukf391ien98xm6ejtb6g27xea4uj', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 09:45:59.924558'),
('jiggohyudr7xvhsfurrerua6im2eay6o', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:29:52.393284'),
('kbvlj0vajka5lrrwlwhe4whoqfwiex3q', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 07:59:36.046392'),
('lqg02xuuesgsxjj1mng8s6jhnh71z95j', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:36:00.296469'),
('m80a4akblio3mv0k12cycltau066j3l5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-13 17:00:29.762712'),
('miuktc9tph7k31cjojci7eqgs6zcyjpb', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:11:12.197728'),
('mnrvw3nw5pjrv87te4dqj43o32cxzwed', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-18 11:21:59.189032'),
('mxkk227rhj21iakn5hx1ropklourdxtp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-06 11:48:11.412916'),
('mzar8xbkdbjm9ic67sit65eo5j4pgnnk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-08 18:58:49.205520'),
('o377d77zd7v7fzgtjmrylyw5nje1hz7d', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-02-28 04:35:32.732837'),
('ojl0hjympv568r5ih8ndc5my4rjurqn8', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 19:24:28.572012'),
('ra0gy5kyo2h21k9czxg7euphs0stub2g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-05-03 17:35:27.643309'),
('s6pdj8gc1s2jq6n069wlzvqkes6smpxf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-10 04:16:15.529263'),
('vi0ku4d9phhcbllcuz7ak8bxwo7e3bsp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2017-12-25 11:15:11.456514'),
('xdguu8n37a5w187yt36fa4d6wc0nzt28', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-10 18:53:57.431166');

-- --------------------------------------------------------

--
-- Table structure for table `slider_acdamic_calander`
--

DROP TABLE IF EXISTS `slider_acdamic_calander`;
CREATE TABLE IF NOT EXISTS `slider_acdamic_calander` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_acdamic_calander`
--

INSERT INTO `slider_acdamic_calander` (`id`, `link`) VALUES
(2, 'https://drive.google.com/file/d/1YDZubokmzvKW2ijWaKZIVbPh19VVyz_w/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `slider_acdamic_calander_graduate`
--

DROP TABLE IF EXISTS `slider_acdamic_calander_graduate`;
CREATE TABLE IF NOT EXISTS `slider_acdamic_calander_graduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_acdamic_calander_graduate`
--

INSERT INTO `slider_acdamic_calander_graduate` (`id`, `link`, `title`) VALUES
(1, 'https://drive.google.com/file/d/1-4rvZWyxfSOy4hdpjynAuOREpRijuXGT/view?usp=sharing', 'MS Calender');

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner`
--

DROP TABLE IF EXISTS `slider_banner`;
CREATE TABLE IF NOT EXISTS `slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_banner`
--

INSERT INTO `slider_banner` (`id`, `image`) VALUES
(1, 'images/home-01-846x1002.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `slider_clo`
--

DROP TABLE IF EXISTS `slider_clo`;
CREATE TABLE IF NOT EXISTS `slider_clo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_clo`
--

INSERT INTO `slider_clo` (`id`, `link`, `title`) VALUES
(2, 'https://drive.google.com/file/d/1OuJHB7YpcHEAM0kmKQJBLrS5N-hUFUAj/view?usp=sharing', 'Electrical'),
(3, 'https://drive.google.com/file/d/1zIRR0Z8udPMffFBUb0oSdAZWM7hFc4Fl/view', 'Civil'),
(4, 'https://docs.google.com/spreadsheets/d/1TlYCy7JSoflUXMp_62lvRmzAIxQX0se5CUIfo_x_3iw/edit?ts=5acc58e9#gid=896371080', 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `slider_datesheet`
--

DROP TABLE IF EXISTS `slider_datesheet`;
CREATE TABLE IF NOT EXISTS `slider_datesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_datesheet`
--

INSERT INTO `slider_datesheet` (`id`, `link`, `title`, `visibility`) VALUES
(4, 'https://drive.google.com/file/d/1sqrB5CkeDguy20h8Ec7UdIwoViu9vyFz/view?usp=sharing', 'MS Datesheet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider_download`
--

DROP TABLE IF EXISTS `slider_download`;
CREATE TABLE IF NOT EXISTS `slider_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_download`
--

INSERT INTO `slider_download` (`id`, `title`, `file`) VALUES
(1, 'Application Form', 'downloads/Application.pdf'),
(2, 'Prospectus', 'downloads/pros.pdf'),
(3, 'Student Handbook', 'downloads/Handbook.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `slider_event`
--

DROP TABLE IF EXISTS `slider_event`;
CREATE TABLE IF NOT EXISTS `slider_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_event`
--

INSERT INTO `slider_event` (`id`, `picture`, `title`, `description`, `timestamp`) VALUES
(1, 'images/logo.png', 'ANSEC 18 Coming Soon', 'ANSEC 18 Coming Soon', '2018-09-03 10:54:53.000000'),
(2, 'images/orientation.jpeg', 'Orientation Session Fall 18', 'Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', '2018-08-27 09:00:00.000000'),
(3, 'images/38125799_2142134129333482_6496561974241918976_n.jpg', 'Entry Test Fall - 18', 'Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.', '2018-08-02 09:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `slider_fees`
--

DROP TABLE IF EXISTS `slider_fees`;
CREATE TABLE IF NOT EXISTS `slider_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(120) NOT NULL,
  `fees` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_fees`
--

INSERT INTO `slider_fees` (`id`, `program_name`, `fees`) VALUES
(1, 'BE- Civil Engineering', 8150),
(2, 'BE- Electrical Engineering', 4250),
(3, 'Pharm-D', 3800),
(4, 'BS- Software Engineering', 3500),
(5, 'BS- Computer Science', 2250),
(6, 'BS- Microbiology', 2100),
(7, 'BS- Biotechnology', 2100),
(8, 'BS- Telecommunication & Networks', 2100),
(9, 'Bachelor in Business Administration', 2100),
(10, 'Bachelor of Commerce', 2000),
(11, 'BS- Development Studies', 2000),
(12, 'B.Tech (Civil/Electrical)', 1500),
(13, 'MS- Computer Science', 4500),
(14, 'MS- Software Engineering', 4500),
(15, 'MS- Telecommunication & Networks', 4500),
(16, 'MS- Electrical Engineering', 4500),
(17, 'MS- Management Science', 4500),
(18, 'MS- Engineering Management', 4500),
(19, 'MS- Industrial Management', 4500),
(20, 'MS- Logistic and Supply Chain Management', 4500),
(21, 'MS- Project Management', 4500),
(22, 'MSc- Microbiology', 2500),
(23, 'Master in Business Administration (1.5 - 2 year)', 2500),
(24, 'Master in Business Administration (2 - 2.5 year)', 2500),
(25, 'Master in Business Administration (3.5 year)', 2500),
(26, 'Master of Commerce', 2000),
(27, 'MS- Development Studies', 2200);

-- --------------------------------------------------------

--
-- Table structure for table `slider_message`
--

DROP TABLE IF EXISTS `slider_message`;
CREATE TABLE IF NOT EXISTS `slider_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(120) NOT NULL,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_message`
--

INSERT INTO `slider_message` (`id`, `message`, `link`) VALUES
(1, 'Admissions are open', '#');

-- --------------------------------------------------------

--
-- Table structure for table `slider_new`
--

DROP TABLE IF EXISTS `slider_new`;
CREATE TABLE IF NOT EXISTS `slider_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_new`
--

INSERT INTO `slider_new` (`id`, `picture`, `title`, `description`, `timestamp`, `link`) VALUES
(1, 'images/Pages.jpg', 'Official Page of AUIC', 'Official Social Pages of AUIC.', '2018-09-03 13:12:42.000000', '#'),
(2, 'images/12.jpg', 'Youm e Ashora', 'AUIC will reamin closed on 20th & 21st on account of Youm e Ashora.', '2018-09-26 04:22:43.000000', '#'),
(3, 'images/Ambassadorship-Call.jpg', 'Ambassador\'s Call', 'Ambassador\'s call for ANSEC18 is officially open.', '2018-09-26 04:24:47.000000', 'https://goo.gl/forms/dUP1T2wrTI3ZClMB3');

-- --------------------------------------------------------

--
-- Table structure for table `slider_online_admission`
--

DROP TABLE IF EXISTS `slider_online_admission`;
CREATE TABLE IF NOT EXISTS `slider_online_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_online_admission`
--

INSERT INTO `slider_online_admission` (`id`, `link`) VALUES
(1, 'http://35.172.219.204/admissionsystem/AA/bootstrap/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `slider_permission`
--

DROP TABLE IF EXISTS `slider_permission`;
CREATE TABLE IF NOT EXISTS `slider_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_permission`
--

INSERT INTO `slider_permission` (`id`, `title`, `file`) VALUES
(1, 'HEC', 'permissions/HEC_Permission_for_Start_of_Operation.jpg'),
(2, 'Civil', 'permissions/BECE_1st_Accreditation_.jpg'),
(3, 'Electrical', 'permissions/BEEE_2013__2014_Re-Accr..pdf'),
(4, 'Computing', 'permissions/Accreditation_of_BSSE_Program.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slider`
--

DROP TABLE IF EXISTS `slider_slider`;
CREATE TABLE IF NOT EXISTS `slider_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider1` varchar(100) NOT NULL,
  `slider2` varchar(100) NOT NULL,
  `slider3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_slider`
--

INSERT INTO `slider_slider` (`id`, `slider1`, `slider2`, `slider3`) VALUES
(1, 'images/36824594_2117287088484853_4833747608725880832_n_2EQSQV4.jpg', 'images/25398107_2008323612714535_6504903865486525119_o.jpg', 'images/contact.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `slider_staff`
--

DROP TABLE IF EXISTS `slider_staff`;
CREATE TABLE IF NOT EXISTS `slider_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `designation` varchar(120) NOT NULL,
  `qualification` varchar(120) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_staff`
--

INSERT INTO `slider_staff` (`id`, `name`, `designation`, `qualification`, `profile`, `department`) VALUES
(15, 'Dr. Amjad Mahmood', 'Executive Director', 'Ph.D', 'images/Dr._Amjad_Mahmood.jpg', 'computing'),
(16, 'Dr. Muhammad Yousaf Khan', 'Associate Professor', 'PhD (Software Engineering) , Abertay University Dundee , Scotland,Uk', 'images/Dr._Muhammad_Yousaf_Khan_oNsjFC3.jpg', 'computing'),
(17, 'Dr. Sidra Sultana', 'HOD', 'PhD (Computer Software Engineering) , NUST ,Pakistan', 'images/Sidra_Sultana.jpg', 'computing'),
(18, 'Mr. Abdul Basit', 'Assistant Professor', 'MS (Telecomunication) , IQRA University, Islamabad', 'images/Abdul_Basit.jpg', 'computing'),
(19, 'Mr. Abdul Hannan', 'Assistant Professor', 'MS', 'images/Hannan.jpg', 'computing'),
(20, 'Mr.Muhammad Idrees', 'Assistant Professor', 'MS (Aplied Mathematics) , NED University of Engineering and Technology, Karachi', 'images/IDREES.jpg', 'computing'),
(21, 'Ms. Sameen Javed', 'Lecturer', 'MS (Software Engineering) , NUST', 'images/Sameen_Javed.jpg', 'computing'),
(22, 'Ms. Naveen Ahmed', 'Lecturer', 'MS (Software Engineering ) , NUST', 'images/NAVEEN_AHMED_.jpg', 'computing'),
(26, 'Ms. Madiha Hena', 'Lecturer', 'MS (Telecommunication and Networks) , Abasyn University, Islamabad', 'images/MADIHA_HENA.jpg', 'computing'),
(27, 'Mr. Asad Hanif', 'Lecturer', 'MS (Computer Science ) , IQRA University, Islamabad', 'images/Asad_Hanif_Q1EdIEY.jpg', 'computing'),
(28, 'Ms. Madiha Naveed', 'Lab Engineer/Coordinator', 'MS (Management Science ) , Abasyn University Peshawar', 'images/MADIHA_NAVEED_LAB_ENGINEER_OSGwh8t.jpg', 'computing'),
(29, 'Mr. Muhammad Murtaza', 'Lab Engineer', 'BS (Computer Engineering) , UET Taxila', 'images/Muhammad_Murtaza_K8mzqNt.jpg', 'computing'),
(31, 'Dr.M.Noman Jafri', 'Professor & Dean', 'PhD (Electrical Engineering) , University of Ottawa, Canada', 'images/Dr._M.Noman_Jafri_IeoWkTK.jpg', 'electrical'),
(32, 'Dr. Imran Shafi', 'Associate Professor', 'PhD ( Computer Engineering) , UET, Taxila', 'images/Dr._Imran_Shafi.jpg', 'electrical'),
(33, 'Dr. Waqar Ahmed Malik', 'Associate Professor/HOD', 'PhD', 'images/1.jpg', 'electrical'),
(34, 'Mr. Yasir Javed', 'Assistant Professor', 'MS (Computer System Engineering) , UET, Taxila', 'images/Yasir_Javed.jpg', 'electrical'),
(35, 'Mr. Wasif Latif', 'Assistant Professor', 'MS (Telecom and Networks) ,  IQRA University, Islamabad', 'images/Wasif_Latif.jpg', 'electrical'),
(36, 'Mr Kamran Qureshi', 'Lecturer', 'MS (Electronics Design) , Mid-Sweden University , Sweden', 'images/Kamran_Qureshi.jpg', 'electrical'),
(37, 'Mr. Shahzaib Iqbal', 'Lecturer', 'MS (Electrical Engineering) , Abasyn University', 'images/Shahzeb.jpg', 'electrical'),
(38, 'Ms.Rashida Khalid', 'Lecturer', 'MS (Electrical Engineering) , COMSATS, Islamabad', 'images/Rashida_Khalid.jpg', 'electrical'),
(39, 'Ms. Laiba Jawad', 'Lab Engineer/Coordinator', 'BS (Electrical Engineering) , UET Taxila', 'images/Laiba.jpg', 'electrical'),
(40, 'Mr. Rafi-u-Zman', 'Lab Engineer', 'BS (Electronic Engineering) , International  Islamic University', 'images/RAFI-U-ZAMAN.jpg', 'electrical'),
(41, 'Mr. Asim-ul-Haq', 'Lab Engineer', 'BS (Electrical Engineering) , COMSATS, Islamabad', 'images/Asim_Ul_Haq-Picture.jpg', 'electrical'),
(42, 'Dr. Muhammad Salik Javaid', 'HoD/Professor', 'Ph.D (Civil Engineering) , Georgia Istitute of Technology, Atlanta , USA', 'images/Salik_Javaid.jpg', 'civil'),
(43, 'Ms. Laila Khalid', 'Assistant Professor', 'MS (Civil Engineering) , NUST', 'images/Laila_Khalid_.jpg', 'civil'),
(44, 'Mr. Khan Shahid Kamal Khan', 'Assistant Professor', 'MS (Construction Engineering and Management) , NUST', 'images/KHAN_SHAHID_KAMAL_KHAN.jpg', 'civil'),
(45, 'Ms. Naheed Akhtar', 'Assistant Professor', 'MS (Civil Engineering) , UET, Taxila', 'images/Naheed_Akhtar_.jpg', 'civil'),
(46, 'Mr. Muhammad Farjad Sami.', 'Lecturer', 'MS (Geotechnical Engineering) , NUST', 'images/Farjad_sami.jpg', 'civil'),
(47, 'Mr. Muhammad Waqas Malik', 'Lecturer', 'MS (Structural Engineering) , NUST', 'images/Muhammad_Waqas_Malik.jpg', 'civil'),
(48, 'Mr. Muhammad Sarfraz', 'Junior Lecture', 'MS (Geotechnical Engineering) , NUST', 'images/MUHAMMAD_SARFARAZ_FAIZ_.jpg', 'civil'),
(49, 'Mr.Zeeshan Khalil', 'Lab Engineer', 'BS (Civil Engineering) , UET Taxila', 'images/Muhammad_Zeeshan_Khalil.jpg', 'civil'),
(50, 'Mr. Muhammad Shahrukh Pasha', 'Lab Engineer', 'BS (Civil Engineering) , UET Taxila', 'images/M._SHAHRUKH_PASHA.jpg', 'civil'),
(51, 'Ms. Khola Ilyas', 'Assistant Professor/HoD', 'MS (Management Science ) , IQRA University, Islamabad', 'images/khola_Ilyas.jpg', 'management-sciences'),
(52, 'Mr. Khursheed Ali', 'Assistant Professor', 'M.Phil (English) , University of Hazara, Mansehra', 'images/Khursheed_Ali.jpg', 'management-sciences'),
(53, 'Mr. Furqan Saeed', 'Lecturer/ Program Coordinator', 'MBA (Management Science ) , Bahria University, Islamabad', 'images/Furqan_Saeed.jpg', 'management-sciences'),
(54, 'Ms. Aisha Razzaq', 'Lecturer', 'MS', 'images/Aisha_Razzaq_.jpg', 'management-sciences'),
(55, 'Mr. Roman Khan', 'Lecturer', 'MBA (Management Science ) , Quaid-e-Azam University Islamabad', 'images/Roman_Khan.jpg', 'management-sciences'),
(56, 'Dr. Muhammad Akhlaq Mughal', 'HoD/ Associate Professor', 'Ph.D (Pharmacy) , University Of Peshawar', 'images/Dr_Akhlaq.jpg', 'life-scienecs'),
(58, 'Dr. Sajjad Ahmad', 'Assistant Professor/Coordinator', 'Ph.D (Pharmaceutical Science) , University of Malakand', 'images/download_sxowGrD.png', 'life-scienecs'),
(59, 'Dr. Fariha Masood', 'Assistant Professor', 'Ph.D (Biotechnology) , Quaid-e-Azam University Islamabad', 'images/DR._FARIHA_MASOOD.jpg', 'life-scienecs'),
(60, 'Mr. Muhammad Rashid', 'Assistant Professor', 'M.Phill (Pharmacology) , University of Mlakand', 'images/download_iTtwao8.png', 'life-scienecs'),
(61, 'Mr. Allah Nawaz Khan', 'Lecturer/HOD Life Science', 'MS (Microbiology) , COMSATS, Islamabad', 'images/Allah_Nawaz_Khan.jpg', 'life-scienecs'),
(62, 'Ms. Tabinda Azim', 'Lecturer', 'M.Phil (Pharmacology) , University of Sargogha', 'images/tabinda.jpg', 'life-scienecs'),
(63, 'Mr Muhammad Wasim', 'Lecturer', 'M.Phil (Pharmaceutical Chemistry) , Riphah International University, Islamabad', 'images/muhammad_Wasim.JPG', 'life-scienecs'),
(64, 'Ms. Rabaila Riaz', 'Lecturer', 'M.Phil (Biotechnology and Information) , BUITEMS , Quetta', 'images/Rabaila_Riaz.jpg', 'life-scienecs'),
(65, 'Ms. Wajiha Khalid', 'Lecturer', 'M.Phil (Pharmaceutics) , University of Lahore', 'images/Wajeeha_khalid.jpg', 'life-scienecs'),
(66, 'Mr. Iqra Hamid', 'Lab Demonstrator', 'Pharm-D , University of Lahore', 'images/Iqra_Hamid.jpg', 'life-scienecs'),
(67, 'Mr. Amrullah Khan', 'Lab Assistant', 'Pharm-D , University of Malakand', 'images/Amrullah_khan.jpg', 'life-scienecs');

-- --------------------------------------------------------

--
-- Table structure for table `slider_timetable`
--

DROP TABLE IF EXISTS `slider_timetable`;
CREATE TABLE IF NOT EXISTS `slider_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_timetable`
--

INSERT INTO `slider_timetable` (`id`, `link`) VALUES
(1, 'https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit');

-- --------------------------------------------------------

--
-- Table structure for table `slider_timetablegraduate`
--

DROP TABLE IF EXISTS `slider_timetablegraduate`;
CREATE TABLE IF NOT EXISTS `slider_timetablegraduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_timetablegraduate`
--

INSERT INTO `slider_timetablegraduate` (`id`, `link`) VALUES
(1, 'https://drive.google.com/file/d/1z2_Ec7xF96Hh4ineeZaS-u9NMILVK4EW/view?usp=sharing');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
