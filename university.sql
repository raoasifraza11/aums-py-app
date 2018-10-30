-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2018 at 10:57 AM
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
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_alumni`
--

DROP TABLE IF EXISTS `alumni_alumni`;
CREATE TABLE IF NOT EXISTS `alumni_alumni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `registration_number` int(11) NOT NULL DEFAULT '0',
  `courses` varchar(6) COLLATE utf8_bin NOT NULL,
  `year_semester` varchar(200) COLLATE utf8_bin NOT NULL,
  `occupation` varchar(200) COLLATE utf8_bin NOT NULL,
  `job_title` varchar(200) COLLATE utf8_bin NOT NULL,
  `full_Name` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `alumni_alumni`
--

INSERT INTO `alumni_alumni` (`id`, `email`, `registration_number`, `courses`, `year_semester`, `occupation`, `job_title`, `full_Name`) VALUES
(1, 'surhanzahid@gmail.com', 1187, 'bscs', '2019', 'student', 'none', 'Surhan Zahid'),
(2, 'yasir@gmail.com', 1214, 'bscs', '2016', 'student', 'none', 'Yasir Rafique');

-- --------------------------------------------------------

--
-- Table structure for table `ansec_applynow`
--

DROP TABLE IF EXISTS `ansec_applynow`;
CREATE TABLE IF NOT EXISTS `ansec_applynow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_background`
--

DROP TABLE IF EXISTS `ansec_background`;
CREATE TABLE IF NOT EXISTS `ansec_background` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `description` varchar(120) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `link` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_events`
--

DROP TABLE IF EXISTS `ansec_events`;
CREATE TABLE IF NOT EXISTS `ansec_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `description` varchar(120) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `link` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ansec_orgnizers`
--

DROP TABLE IF EXISTS `ansec_orgnizers`;
CREATE TABLE IF NOT EXISTS `ansec_orgnizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `phone_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL DEFAULT '0',
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `content_type_id`, `codename`, `name`) VALUES
(1, 1, 'add_logentry', 'Can add log entry'),
(2, 1, 'change_logentry', 'Can change log entry'),
(3, 1, 'delete_logentry', 'Can delete log entry'),
(4, 2, 'add_permission', 'Can add permission'),
(5, 2, 'change_permission', 'Can change permission'),
(6, 2, 'delete_permission', 'Can delete permission'),
(7, 3, 'add_group', 'Can add group'),
(8, 3, 'change_group', 'Can change group'),
(9, 3, 'delete_group', 'Can delete group'),
(10, 4, 'add_user', 'Can add user'),
(11, 4, 'change_user', 'Can change user'),
(12, 4, 'delete_user', 'Can delete user'),
(13, 5, 'add_contenttype', 'Can add content type'),
(14, 5, 'change_contenttype', 'Can change content type'),
(15, 5, 'delete_contenttype', 'Can delete content type'),
(16, 6, 'add_session', 'Can add session'),
(17, 6, 'change_session', 'Can change session'),
(18, 6, 'delete_session', 'Can delete session'),
(19, 7, 'add_slider', 'Can add slider'),
(20, 7, 'change_slider', 'Can change slider'),
(21, 7, 'delete_slider', 'Can delete slider'),
(22, 8, 'add_student', 'Can add student'),
(23, 8, 'change_student', 'Can change student'),
(24, 8, 'delete_student', 'Can delete student'),
(25, 9, 'add_staff', 'Can add staff'),
(26, 9, 'change_staff', 'Can change staff'),
(27, 9, 'delete_staff', 'Can delete staff'),
(28, 10, 'add_event', 'Can add event'),
(29, 10, 'change_event', 'Can change event'),
(30, 10, 'delete_event', 'Can delete event'),
(31, 11, 'add_facebook', 'Can add facebook'),
(32, 11, 'change_facebook', 'Can change facebook'),
(33, 11, 'delete_facebook', 'Can delete facebook'),
(34, 12, 'add_courses', 'Can add courses'),
(35, 12, 'change_courses', 'Can change courses'),
(36, 12, 'delete_courses', 'Can delete courses'),
(37, 13, 'add_alumni', 'Can add alumni'),
(38, 13, 'change_alumni', 'Can change alumni'),
(39, 13, 'delete_alumni', 'Can delete alumni'),
(40, 14, 'add_fees', 'Can add fees'),
(41, 14, 'change_fees', 'Can change fees'),
(42, 14, 'delete_fees', 'Can delete fees'),
(43, 15, 'add_acdamic_calander', 'Can add acdamic_ calander'),
(44, 15, 'change_acdamic_calander', 'Can change acdamic_ calander'),
(45, 15, 'delete_acdamic_calander', 'Can delete acdamic_ calander'),
(46, 16, 'add_new', 'Can add new'),
(47, 16, 'change_new', 'Can change new'),
(48, 16, 'delete_new', 'Can delete new'),
(49, 17, 'add_timetable', 'Can add timetable'),
(50, 17, 'change_timetable', 'Can change timetable'),
(51, 17, 'delete_timetable', 'Can delete timetable'),
(52, 18, 'add_online_admission', '292-TRIAL-Can add Online Admission 82'),
(53, 18, 'change_online_admission', '21-TRIAL-Can change Online Admission 116'),
(54, 18, 'delete_online_admission', '218-TRIAL-Can delete Online Admission 95'),
(55, 19, 'add_events', '47-TRIAL-Can add Event 126'),
(56, 19, 'change_events', '71-TRIAL-Can change Event 138'),
(57, 19, 'delete_events', '69-TRIAL-Can delete Event 112'),
(58, 20, 'add_applynow', '167-TRIAL-Can add Apply Now 199'),
(59, 20, 'change_applynow', '235-TRIAL-Can change Apply Now 294'),
(60, 20, 'delete_applynow', '203-TRIAL-Can delete Apply Now 111'),
(61, 21, 'add_background', '122-TRIAL-Can add Background 33'),
(62, 21, 'change_background', '273-TRIAL-Can change Background 164'),
(63, 21, 'delete_background', '141-TRIAL-Can delete Background 211'),
(64, 22, 'add_orgnizers', '53-TRIAL-Can add Orgnizer 268'),
(65, 22, 'change_orgnizers', '47-TRIAL-Can change Orgnizer 44'),
(66, 22, 'delete_orgnizers', '262-TRIAL-Can delete Orgnizer 57'),
(67, 23, 'add_clo', '237-TRIAL-Can add CLO 259'),
(68, 23, 'change_clo', '23-TRIAL-Can change CLO 141'),
(69, 23, 'delete_clo', '229-TRIAL-Can delete CLO 178'),
(70, 24, 'add_message', '16-TRIAL-Can add Message 35'),
(71, 24, 'change_message', '290-TRIAL-Can change Message 42'),
(72, 24, 'delete_message', '288-TRIAL-Can delete Message 106'),
(73, 25, 'add_timetablegraduate', '40-TRIAL-Can add timetable graduate 242'),
(74, 25, 'change_timetablegraduate', '64-TRIAL-Can change timetable graduate 148'),
(75, 25, 'delete_timetablegraduate', '146-TRIAL-Can delete timetable graduate 105'),
(76, 26, 'add_download', '290-TRIAL-Can add Download 129'),
(77, 26, 'change_download', '70-TRIAL-Can change Download 50'),
(78, 26, 'delete_download', '6-TRIAL-Can delete Download 201'),
(79, 27, 'add_permission', '93-TRIAL-Can add Permission 248'),
(80, 27, 'change_permission', '129-TRIAL-Can change Permission 23'),
(81, 27, 'delete_permission', '84-TRIAL-Can delete Permission 154'),
(82, 28, 'add_acdamic_calander_graduate', '156-TRIAL-Can add Acdamic_Calander_Graduate 140'),
(83, 28, 'change_acdamic_calander_graduate', '166-TRIAL-Can change Acdamic_Calander_Graduate 176'),
(84, 28, 'delete_acdamic_calander_graduate', '131-TRIAL-Can delete Acdamic_Calander_Graduate 208'),
(85, 29, 'add_datesheet', '144-TRIAL-Can add DateSheet 39'),
(86, 29, 'change_datesheet', '26-TRIAL-Can change DateSheet 223'),
(87, 29, 'delete_datesheet', '137-TRIAL-Can delete DateSheet 238'),
(88, 30, 'add_banner', '218-TRIAL-Can add banner 282'),
(89, 30, 'change_banner', '129-TRIAL-Can change banner 41'),
(90, 30, 'delete_banner', '33-TRIAL-Can delete banner 215');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(20, 'Ansec', 'applynow'),
(21, 'Ansec', 'background'),
(19, 'Ansec', 'events'),
(22, 'Ansec', 'orgnizers'),
(1, 'admin', 'logentry'),
(13, 'alumni', 'alumni'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(15, 'slider', 'acdamic_calander'),
(28, 'slider', 'acdamic_calander_graduate'),
(30, 'slider', 'banner'),
(23, 'slider', 'clo'),
(12, 'slider', 'courses'),
(29, 'slider', 'datesheet'),
(26, 'slider', 'download'),
(10, 'slider', 'event'),
(11, 'slider', 'facebook'),
(14, 'slider', 'fees'),
(24, 'slider', 'message'),
(16, 'slider', 'new'),
(18, 'slider', 'online_admission'),
(27, 'slider', 'permission'),
(7, 'slider', 'slider'),
(9, 'slider', 'staff'),
(8, 'slider', 'student'),
(17, 'slider', 'timetable'),
(25, 'slider', 'timetablegraduate');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-12-11 11:08:34'),
(2, 'auth', '0001_initial', '2017-12-11 11:08:34'),
(3, 'admin', '0001_initial', '2017-12-11 11:08:34'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-12-11 11:08:34'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-12-11 11:08:34'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-12-11 11:08:34'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-12-11 11:08:34'),
(8, 'auth', '0004_alter_user_username_opts', '2017-12-11 11:08:35'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-12-11 11:08:35'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-12-11 11:08:35'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-12-11 11:08:35'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-12-11 11:08:35'),
(13, 'sessions', '0001_initial', '2017-12-11 11:08:35'),
(14, 'slider', '0001_initial', '2017-12-11 11:14:25'),
(15, 'slider', '0002_student', '2018-02-01 18:43:09'),
(16, 'slider', '0003_staff', '2018-02-11 08:08:06'),
(17, 'slider', '0004_auto_20180212_1224', '2018-02-12 07:24:33'),
(18, 'slider', '0005_event', '2018-02-12 15:24:52'),
(19, 'slider', '0006_facebook', '2018-02-13 07:02:53'),
(20, 'slider', '0007_auto_20180213_1207', '2018-02-13 07:07:46'),
(21, 'slider', '0008_courses', '2018-03-06 20:37:15'),
(22, 'slider', '0009_auto_20180307_0145', '2018-03-06 20:45:50'),
(23, 'slider', '0010_auto_20180307_0155', '2018-03-06 20:55:25'),
(24, 'slider', '0011_event_timestamp', '2018-04-19 17:54:54'),
(25, 'alumni', '0001_initial', '2018-04-28 19:50:46'),
(26, 'alumni', '0002_auto_20180429_0056', '2018-04-28 19:57:45'),
(27, 'slider', '0012_auto_20180604_2122', '2018-06-04 16:23:03'),
(28, 'slider', '0013_auto_20180625_1806', '2018-06-25 13:06:19'),
(29, 'slider', '0014_acdamic_calander', '2018-06-27 11:42:28'),
(30, 'slider', '0015_new', '2018-06-27 13:08:46'),
(31, 'slider', '0016_auto_20180903_1847', '2018-09-03 13:47:45'),
(32, 'slider', '0017_auto_20180903_1849', '2018-09-03 13:50:06'),
(33, 'slider', '0018_auto_20180903_1854', '2018-09-03 13:54:57'),
(34, 'slider', '0019_timetable', '2018-09-04 12:29:01'),
(35, 'slider', '0020_new_link', '2018-09-04 12:42:28'),
(36, 'slider', '0021_online_admission', '2018-09-13 20:12:25'),
(37, 'slider', '0022_auto_20180914_0114', '2018-09-13 20:14:55'),
(38, 'slider', '0023_auto_20180914_0116', '2018-09-13 20:16:13'),
(39, 'slider', '0024_auto_20180914_0116', '2018-09-13 20:16:31'),
(40, 'Ansec', '0001_initial', '2018-09-16 18:08:21'),
(41, 'Ansec', '0002_applynow_background_orgnizers', '2018-09-16 19:03:54'),
(42, 'Ansec', '0003_auto_20180917_0003', '2018-09-16 19:03:54'),
(43, 'slider', '0025_clo', '2018-09-17 17:48:55'),
(44, 'slider', '0026_message', '2018-09-21 16:09:59'),
(45, 'slider', '0027_timetablegraduate', '2018-09-21 16:17:17'),
(46, 'slider', '0028_auto_20180922_1648', '2018-09-22 11:48:57'),
(47, 'slider', '0029_permission', '2018-09-22 17:18:39'),
(48, 'slider', '0030_auto_20180922_2223', '2018-09-22 17:23:38'),
(49, 'slider', '0031_auto_20180922_2248', '2018-09-22 17:48:05'),
(50, 'slider', '0032_acdamic_calander_graduate', '2018-09-27 18:14:13'),
(51, 'slider', '0033_auto_20180927_2318', '2018-09-27 18:18:59'),
(52, 'slider', '0034_auto_20180927_2330', '2018-09-27 18:31:04'),
(53, 'slider', '0035_datesheet_visibility', '2018-09-27 18:32:27'),
(54, 'slider', '0036_banner', '2018-09-28 16:11:54'),
(55, 'slider', '0037_remove_staff_twiter', '2018-09-29 19:34:32'),
(56, 'slider', '0038_auto_20181012_2302', '2018-10-12 18:02:36'),
(57, 'slider', '0039_message_link', '2018-10-12 18:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` text COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0iwsasx6hrgmgprxen58wktsk6vea31u', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:47:27'),
('0z83zxf23tmf2n0um9vtwhet3jk8xyh1', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:57:19'),
('1fbsrvlqerfuwejfbhu7lnn6q5vb6vn3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:38:25'),
('2npi89sgo5tidom30q10prh5g49ky07a', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:13:20'),
('2w5zeo55g7nuczfxqm7qyqa84gum7w5s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:45:41'),
('5lu905bli6zlc4x5srjgjsbrxch9q19s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-11 18:09:28'),
('69qzkhyzmnxrofbmjxh327fnyk8t2iws', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-03 12:09:21'),
('69v6g0l5kbfy8iccd05qvxzvmvqwbo2l', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-19 12:21:53'),
('6qmuxlsfdi59cgd6zqkphqjh5hh8elub', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:49:40'),
('6xvhsb9b4qdbqram4aahm7tw49doiv2t', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 16:04:33'),
('7z5p3hlblfgrvw7qlrm7kymoztexelle', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 18:32:31'),
('813yr9uw3blqmd261agngrkbbvedvr0g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 18:15:41'),
('9u35n3d4rl6n1uj4df13kbf2vunruacy', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-03-20 09:00:39'),
('arrfhwegcfm3jsf7e2k4vw99yzobvjdf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-04-05 07:49:02'),
('c58d42uax6ixe4e58szxme1zgdificz7', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-28 17:03:42'),
('ft17fhmdmxls5hyysdm5g941av5e6ns5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-05 13:27:47'),
('gq5rouxawpee0shhb7aja5w555u2gzvk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-17 13:17:10'),
('i5x61qzrc7quy0wzgkbe44i89cbavvx3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-13 18:54:04'),
('i6waukf391ien98xm6ejtb6g27xea4uj', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 09:46:00'),
('jiggohyudr7xvhsfurrerua6im2eay6o', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:29:52'),
('kbvlj0vajka5lrrwlwhe4whoqfwiex3q', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 07:59:36'),
('lqg02xuuesgsxjj1mng8s6jhnh71z95j', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:36:00'),
('m80a4akblio3mv0k12cycltau066j3l5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-13 17:00:30'),
('miuktc9tph7k31cjojci7eqgs6zcyjpb', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:11:12'),
('mnrvw3nw5pjrv87te4dqj43o32cxzwed', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-18 11:21:59'),
('mxkk227rhj21iakn5hx1ropklourdxtp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-06 11:48:11'),
('mzar8xbkdbjm9ic67sit65eo5j4pgnnk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-08 18:58:49'),
('o377d77zd7v7fzgtjmrylyw5nje1hz7d', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-02-28 04:35:33'),
('ojl0hjympv568r5ih8ndc5my4rjurqn8', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 19:24:29'),
('ra0gy5kyo2h21k9czxg7euphs0stub2g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-05-03 17:35:28'),
('s6pdj8gc1s2jq6n069wlzvqkes6smpxf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-10 04:16:16'),
('vi0ku4d9phhcbllcuz7ak8bxwo7e3bsp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2017-12-25 11:15:11'),
('xdguu8n37a5w187yt36fa4d6wc0nzt28', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-10 18:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `slider_acdamic_calander`
--

DROP TABLE IF EXISTS `slider_acdamic_calander`;
CREATE TABLE IF NOT EXISTS `slider_acdamic_calander` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `visibility` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slider_datesheet`
--

INSERT INTO `slider_datesheet` (`id`, `link`, `title`, `visibility`) VALUES
(4, 'https://drive.google.com/file/d/1sqrB5CkeDguy20h8Ec7UdIwoViu9vyFz/view?usp=sharing', 'MS Datesheet', '1');

-- --------------------------------------------------------

--
-- Table structure for table `slider_download`
--

DROP TABLE IF EXISTS `slider_download`;
CREATE TABLE IF NOT EXISTS `slider_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `picture` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `description` varchar(120) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slider_event`
--

INSERT INTO `slider_event` (`id`, `picture`, `title`, `description`, `timestamp`) VALUES
(1, 'images/logo.png', 'ANSEC 18 Coming Soon', 'ANSEC 18 Coming Soon', '2018-09-03 10:54:53'),
(2, 'images/orientation.jpeg', 'Orientation Session Fall 18', 'Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', '2018-08-27 09:00:00'),
(3, 'images/38125799_2142134129333482_6496561974241918976_n.jpg', 'Entry Test Fall - 18', 'Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.', '2018-08-02 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider_fees`
--

DROP TABLE IF EXISTS `slider_fees`;
CREATE TABLE IF NOT EXISTS `slider_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(120) COLLATE utf8_bin NOT NULL,
  `fees` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `message` varchar(120) COLLATE utf8_bin NOT NULL,
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `picture` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `description` varchar(120) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `link` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slider_new`
--

INSERT INTO `slider_new` (`id`, `picture`, `title`, `description`, `timestamp`, `link`) VALUES
(1, 'images/Pages.jpg', 'Official Page of AUIC', 'Official Social Pages of AUIC.', '2018-09-03 13:12:42', '#'),
(2, 'images/12.jpg', 'Youm e Ashora', 'AUIC will reamin closed on 20th & 21st on account of Youm e Ashora.', '2018-09-26 04:22:43', '#'),
(3, 'images/Ambassadorship-Call.jpg', 'Ambassador\'s Call', 'Ambassador\'s call for ANSEC18 is officially open.', '2018-09-26 04:24:47', 'https://goo.gl/forms/dUP1T2wrTI3ZClMB3');

-- --------------------------------------------------------

--
-- Table structure for table `slider_online_admission`
--

DROP TABLE IF EXISTS `slider_online_admission`;
CREATE TABLE IF NOT EXISTS `slider_online_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slider_permission`
--

INSERT INTO `slider_permission` (`id`, `file`, `title`) VALUES
(1, 'permissions/HEC_Permission_for_Start_of_Operation.jpg', 'HEC'),
(2, 'permissions/BECE_1st_Accreditation_.jpg', 'Civil'),
(3, 'permissions/BEEE_2013__2014_Re-Accr..pdf', 'Electrical'),
(4, 'permissions/Accreditation_of_BSSE_Program.pdf', 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slider`
--

DROP TABLE IF EXISTS `slider_slider`;
CREATE TABLE IF NOT EXISTS `slider_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider1` varchar(100) COLLATE utf8_bin NOT NULL,
  `slider2` varchar(100) COLLATE utf8_bin NOT NULL,
  `slider3` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `name` varchar(120) COLLATE utf8_bin NOT NULL,
  `designation` varchar(120) COLLATE utf8_bin NOT NULL,
  `qualification` varchar(120) COLLATE utf8_bin NOT NULL,
  `profile` varchar(100) COLLATE utf8_bin NOT NULL,
  `department` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `link` varchar(120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slider_timetablegraduate`
--

INSERT INTO `slider_timetablegraduate` (`id`, `link`) VALUES
(1, 'https://drive.google.com/file/d/1z2_Ec7xF96Hh4ineeZaS-u9NMILVK4EW/view?usp=sharing');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
