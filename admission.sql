-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for admission
CREATE DATABASE IF NOT EXISTS `admission` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `admission`;

-- Dumping structure for table admission.address
CREATE TABLE IF NOT EXISTS `address` (
  `ads_id` int(10) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `addresstwo` varchar(255) NOT NULL,
  `citytwo` varchar(30) NOT NULL,
  `phonetwo` varchar(255) NOT NULL,
  `addressthree` varchar(255) NOT NULL,
  `citythree` varchar(30) NOT NULL,
  `phonethree` varchar(255) NOT NULL,
  `fathermob` varchar(255) NOT NULL,
  `activem` varchar(10) NOT NULL,
  `activef` varchar(10) NOT NULL,
  PRIMARY KEY (`ads_id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `userfk` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3954 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.address: ~7 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`ads_id`, `signup_id`, `address`, `city`, `phone`, `addresstwo`, `citytwo`, `phonetwo`, `addressthree`, `citythree`, `phonethree`, `fathermob`, `activem`, `activef`) VALUES
	(3946, 5755, 'house 6 janjua town', 'Rawalpindi', '1234', 'house 6 janjua town', 'Rawalpindi', '97897987897', 'house 6 janjua town', 'Rawalpindi', '97897987897', '87897897897', 'y', 'z'),
	(3947, 5764, 'house 6 janjua town', 'Rawalpindi', '78896789789', 'house 6 janjua town', 'Rawalpindi', '78896789789', 'house 6 janjua town', 'Rawalpindi', '78896789789', '87897897987', 'y', 'z'),
	(3948, 5765, 'house 6 janjua town', 'Rawalpindi', '098908908', 'house 6 janjua town', 'Rawalpindi', '098908908', 'house 6 janjua town', 'Rawalpindi', '098908908', '87686876786', 'y', 'z'),
	(3949, 5766, 'house 6 janjua town', 'Rawalpindi', '8789789789', 'house 6 janjua town', 'Rawalpindi', '8789789789', 'house 6 janjua town', 'Rawalpindi', '8789789789', '86787687687', 'y', 'z'),
	(3950, 5767, 'house 6 janjua town', 'Rawalpindi', '6877867', 'house 6 janjua town', 'Rawalpindi', '6877867', 'house 6 janjua town', 'Rawalpindi', '6877867', '7878678', 'y', 'z'),
	(3951, 5768, 'house 6 janjua town', 'Rawalpindi', '89789789798', 'house 6 janjua town', 'Rawalpindi', '89789789798', 'house 6 janjua town', 'Rawalpindi', '89789789798', '98789', 'y', 'z'),
	(3952, 5769, 'house 6 janjua town', 'Rawalpindi', '678678678', 'house 6 janjua town', 'Rawalpindi', '678678678', 'house 6 janjua town', 'Rawalpindi', '678678678', '88787987', 'y', 'z'),
	(3953, 5772, 'house 6 janjua town', 'Rawalpindi', '9890', 'house 6 janjua town', 'Rawalpindi', '9890', 'house 6 janjua town', 'Rawalpindi', '9890', '93284903284', 'y', 'z');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping structure for table admission.admissions
CREATE TABLE IF NOT EXISTS `admissions` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `session` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `open_date` date NOT NULL,
  `close_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.admissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `admissions` DISABLE KEYS */;
INSERT INTO `admissions` (`id`, `session`, `year`, `open_date`, `close_date`) VALUES
	(7, 'Fall', '2019', '2019-02-01', '2019-02-28');
/*!40000 ALTER TABLE `admissions` ENABLE KEYS */;

-- Dumping structure for table admission.admission_sys_signup
CREATE TABLE IF NOT EXISTS `admission_sys_signup` (
  `signup_id` int(255) NOT NULL AUTO_INCREMENT,
  `program` text NOT NULL,
  `university` text NOT NULL,
  `firstname` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admission` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`signup_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`),
  KEY `email_2` (`email`),
  CONSTRAINT `admission_sys_signup_user_id_a54befa6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5774 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.admission_sys_signup: ~14 rows (approximately)
/*!40000 ALTER TABLE `admission_sys_signup` DISABLE KEYS */;
INSERT INTO `admission_sys_signup` (`signup_id`, `program`, `university`, `firstname`, `last_name`, `email`, `password`, `user_id`, `admission`) VALUES
	(5755, 'BS', 'Islamabad', 'ahmad', 'khan', 'ahmadkhan2208@gmail.com', '1234qwer', 7, 0),
	(5756, '2', 'Islamabad', 'ahm', 'khan', 'ahmad@h.com', '1234qwer', 8, 0),
	(5757, 'MS', 'Islamabad', 'aj', 'jj', 'ah@g.com', '1234qwer', 9, 0),
	(5758, 'Gradudate', 'Islamabad', 'a', 'k', 'a@g.com', '1234qwer', 10, 0),
	(5763, '', '', '', '', '', '', 15, 0),
	(5764, 'Undergraduate', 'Islamabad', 'ahmad', 'khan', 'ahmad@gmail.com', '1234qwer', 16, 0),
	(5765, 'Gradudate', 'Islamabad', 'jamil', 'jamil', 'umer.j@g.com', '1234qwer', 17, 0),
	(5766, 'Undergraduate', 'Islamabad', 'junaid', 'ali', 'j.ali@H.COM', '1234qwer', 18, 0),
	(5767, 'Undergraduate', 'Islamabad', 'ahmad', 'khan', 'a@g.com', '1234qwer', 19, 0),
	(5768, 'Gradudate', 'Islamabad', 'hamza', 'khan', 'h.a@g.com', '1234qwer', 20, 0),
	(5769, 'Undergraduate', 'Islamabad', 'murtaza', 'khan', 'ahmadkhan2208@gmail.com', '1234qwer', 21, 0),
	(5770, '', '', '', '', '', '', 22, 0),
	(5771, '', '', '', '', '', '', 23, 0),
	(5772, 'Undergraduate', 'Islamabad', 'faraz', 'ahsan', 'a@g.com', '1234qwer', 24, 0),
	(5773, '', '', '', '', '', '', 25, 0);
/*!40000 ALTER TABLE `admission_sys_signup` ENABLE KEYS */;

-- Dumping structure for table admission.admitcard
CREATE TABLE IF NOT EXISTS `admitcard` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.admitcard: ~0 rows (approximately)
/*!40000 ALTER TABLE `admitcard` DISABLE KEYS */;
INSERT INTO `admitcard` (`id`, `date`, `time_start`, `time_end`) VALUES
	(124, '2019-01-17', '09:00:00', '11:00:00');
/*!40000 ALTER TABLE `admitcard` ENABLE KEYS */;

-- Dumping structure for table admission.alumni_alumni
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.alumni_alumni: ~2 rows (approximately)
/*!40000 ALTER TABLE `alumni_alumni` DISABLE KEYS */;
INSERT INTO `alumni_alumni` (`id`, `email`, `full_Name`, `registration_number`, `courses`, `year_semester`, `occupation`, `job_title`) VALUES
	(1, 'surhanzahid@gmail.com', 'Surhan Zahid', 1187, 'bscs', '2019', 'student', 'none'),
	(2, 'yasir@gmail.com', 'Yasir Rafique', 1214, 'bscs', '2016', 'student', 'none');
/*!40000 ALTER TABLE `alumni_alumni` ENABLE KEYS */;

-- Dumping structure for table admission.ansec_applynow
CREATE TABLE IF NOT EXISTS `ansec_applynow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.ansec_applynow: ~0 rows (approximately)
/*!40000 ALTER TABLE `ansec_applynow` DISABLE KEYS */;
INSERT INTO `ansec_applynow` (`id`, `link`) VALUES
	(1, '#');
/*!40000 ALTER TABLE `ansec_applynow` ENABLE KEYS */;

-- Dumping structure for table admission.ansec_background
CREATE TABLE IF NOT EXISTS `ansec_background` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.ansec_background: ~2 rows (approximately)
/*!40000 ALTER TABLE `ansec_background` DISABLE KEYS */;
INSERT INTO `ansec_background` (`id`, `picture`, `title`, `description`, `timestamp`, `link`) VALUES
	(1, 'images/AUIC-Logo_5NpxYmL.png', 'logotest', 'logotest', '2018-11-01 11:41:37.000000', '#'),
	(2, 'images/38442242_983271961852761_1305581912370184192_n_1.jpg', 'Digital Design', 'Coming SoonLorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting', '2018-11-01 11:43:13.000000', '#');
/*!40000 ALTER TABLE `ansec_background` ENABLE KEYS */;

-- Dumping structure for table admission.ansec_events
CREATE TABLE IF NOT EXISTS `ansec_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.ansec_events: ~0 rows (approximately)
/*!40000 ALTER TABLE `ansec_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ansec_events` ENABLE KEYS */;

-- Dumping structure for table admission.ansec_orgnizers
CREATE TABLE IF NOT EXISTS `ansec_orgnizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.ansec_orgnizers: ~0 rows (approximately)
/*!40000 ALTER TABLE `ansec_orgnizers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ansec_orgnizers` ENABLE KEYS */;

-- Dumping structure for table admission.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table admission.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table admission.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_permission: ~201 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
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
	(19, 'Can add abasyntest', 7, 'add_abasyntest'),
	(20, 'Can change abasyntest', 7, 'change_abasyntest'),
	(21, 'Can delete abasyntest', 7, 'delete_abasyntest'),
	(22, 'Can add address', 8, 'add_address'),
	(23, 'Can change address', 8, 'change_address'),
	(24, 'Can delete address', 8, 'delete_address'),
	(25, 'Can add adminlogin', 9, 'add_adminlogin'),
	(26, 'Can change adminlogin', 9, 'change_adminlogin'),
	(27, 'Can delete adminlogin', 9, 'delete_adminlogin'),
	(28, 'Can add admissiondate', 10, 'add_admissiondate'),
	(29, 'Can change admissiondate', 10, 'change_admissiondate'),
	(30, 'Can delete admissiondate', 10, 'delete_admissiondate'),
	(31, 'Can add admitcard', 11, 'add_admitcard'),
	(32, 'Can change admitcard', 11, 'change_admitcard'),
	(33, 'Can delete admitcard', 11, 'delete_admitcard'),
	(34, 'Can add details', 12, 'add_details'),
	(35, 'Can change details', 12, 'change_details'),
	(36, 'Can delete details', 12, 'delete_details'),
	(37, 'Can add education bsc', 13, 'add_educationbsc'),
	(38, 'Can change education bsc', 13, 'change_educationbsc'),
	(39, 'Can delete education bsc', 13, 'delete_educationbsc'),
	(40, 'Can add education fsc', 14, 'add_educationfsc'),
	(41, 'Can change education fsc', 14, 'change_educationfsc'),
	(42, 'Can delete education fsc', 14, 'delete_educationfsc'),
	(43, 'Can add education matric', 15, 'add_educationmatric'),
	(44, 'Can change education matric', 15, 'change_educationmatric'),
	(45, 'Can delete education matric', 15, 'delete_educationmatric'),
	(46, 'Can add education ms', 16, 'add_educationms'),
	(47, 'Can change education ms', 16, 'change_educationms'),
	(48, 'Can delete education ms', 16, 'delete_educationms'),
	(49, 'Can add education phd', 17, 'add_educationphd'),
	(50, 'Can change education phd', 17, 'change_educationphd'),
	(51, 'Can delete education phd', 17, 'delete_educationphd'),
	(52, 'Can add ntstest', 18, 'add_ntstest'),
	(53, 'Can change ntstest', 18, 'change_ntstest'),
	(54, 'Can delete ntstest', 18, 'delete_ntstest'),
	(55, 'Can add otherdeatils', 19, 'add_otherdeatils'),
	(56, 'Can change otherdeatils', 19, 'change_otherdeatils'),
	(57, 'Can delete otherdeatils', 19, 'delete_otherdeatils'),
	(58, 'Can add personal', 20, 'add_personal'),
	(59, 'Can change personal', 20, 'change_personal'),
	(60, 'Can delete personal', 20, 'delete_personal'),
	(61, 'Can add programs', 21, 'add_programs'),
	(62, 'Can change programs', 21, 'change_programs'),
	(63, 'Can delete programs', 21, 'delete_programs'),
	(64, 'Can add resultcard', 22, 'add_resultcard'),
	(65, 'Can change resultcard', 22, 'change_resultcard'),
	(66, 'Can delete resultcard', 22, 'delete_resultcard'),
	(67, 'Can add signup', 23, 'add_signup'),
	(68, 'Can change signup', 23, 'change_signup'),
	(69, 'Can delete signup', 23, 'delete_signup'),
	(70, 'Can add status', 24, 'add_status'),
	(71, 'Can change status', 24, 'change_status'),
	(72, 'Can delete status', 24, 'delete_status'),
	(73, 'Can add submit', 25, 'add_submit'),
	(74, 'Can change submit', 25, 'change_submit'),
	(75, 'Can delete submit', 25, 'delete_submit'),
	(76, 'Can add auth group', 26, 'add_authgroup'),
	(77, 'Can change auth group', 26, 'change_authgroup'),
	(78, 'Can delete auth group', 26, 'delete_authgroup'),
	(79, 'Can add auth group permissions', 27, 'add_authgrouppermissions'),
	(80, 'Can change auth group permissions', 27, 'change_authgrouppermissions'),
	(81, 'Can delete auth group permissions', 27, 'delete_authgrouppermissions'),
	(82, 'Can add auth permission', 28, 'add_authpermission'),
	(83, 'Can change auth permission', 28, 'change_authpermission'),
	(84, 'Can delete auth permission', 28, 'delete_authpermission'),
	(85, 'Can add auth user', 29, 'add_authuser'),
	(86, 'Can change auth user', 29, 'change_authuser'),
	(87, 'Can delete auth user', 29, 'delete_authuser'),
	(88, 'Can add auth user groups', 30, 'add_authusergroups'),
	(89, 'Can change auth user groups', 30, 'change_authusergroups'),
	(90, 'Can delete auth user groups', 30, 'delete_authusergroups'),
	(91, 'Can add auth user user permissions', 31, 'add_authuseruserpermissions'),
	(92, 'Can change auth user user permissions', 31, 'change_authuseruserpermissions'),
	(93, 'Can delete auth user user permissions', 31, 'delete_authuseruserpermissions'),
	(94, 'Can add django admin log', 32, 'add_djangoadminlog'),
	(95, 'Can change django admin log', 32, 'change_djangoadminlog'),
	(96, 'Can delete django admin log', 32, 'delete_djangoadminlog'),
	(97, 'Can add django content type', 33, 'add_djangocontenttype'),
	(98, 'Can change django content type', 33, 'change_djangocontenttype'),
	(99, 'Can delete django content type', 33, 'delete_djangocontenttype'),
	(100, 'Can add django migrations', 34, 'add_djangomigrations'),
	(101, 'Can change django migrations', 34, 'change_djangomigrations'),
	(102, 'Can delete django migrations', 34, 'delete_djangomigrations'),
	(103, 'Can add django session', 35, 'add_djangosession'),
	(104, 'Can change django session', 35, 'change_djangosession'),
	(105, 'Can delete django session', 35, 'delete_djangosession'),
	(106, 'Can add admissions', 36, 'add_admissions'),
	(107, 'Can change admissions', 36, 'change_admissions'),
	(108, 'Can delete admissions', 36, 'delete_admissions'),
	(109, 'Can add offered_programs', 37, 'add_offered_programs'),
	(110, 'Can change offered_programs', 37, 'change_offered_programs'),
	(111, 'Can delete offered_programs', 37, 'delete_offered_programs'),
	(112, 'Can add event', 38, 'add_event'),
	(113, 'Can change event', 38, 'change_event'),
	(114, 'Can delete event', 38, 'delete_event'),
	(115, 'Can add events', 39, 'add_events'),
	(116, 'Can change events', 39, 'change_events'),
	(117, 'Can delete events', 39, 'delete_events'),
	(118, 'Can add workouts', 40, 'add_workouts'),
	(119, 'Can change workouts', 40, 'change_workouts'),
	(120, 'Can delete workouts', 40, 'delete_workouts'),
	(121, 'Can add calendar', 41, 'add_calendar'),
	(122, 'Can change calendar', 41, 'change_calendar'),
	(123, 'Can delete calendar', 41, 'delete_calendar'),
	(124, 'Can add calendar relation', 42, 'add_calendarrelation'),
	(125, 'Can change calendar relation', 42, 'change_calendarrelation'),
	(126, 'Can delete calendar relation', 42, 'delete_calendarrelation'),
	(127, 'Can add event', 43, 'add_event'),
	(128, 'Can change event', 43, 'change_event'),
	(129, 'Can delete event', 43, 'delete_event'),
	(130, 'Can add event relation', 44, 'add_eventrelation'),
	(131, 'Can change event relation', 44, 'change_eventrelation'),
	(132, 'Can delete event relation', 44, 'delete_eventrelation'),
	(133, 'Can add occurrence', 45, 'add_occurrence'),
	(134, 'Can change occurrence', 45, 'change_occurrence'),
	(135, 'Can delete occurrence', 45, 'delete_occurrence'),
	(136, 'Can add rule', 46, 'add_rule'),
	(137, 'Can change rule', 46, 'change_rule'),
	(138, 'Can delete rule', 46, 'delete_rule'),
	(139, 'Can add slider', 47, 'add_slider'),
	(140, 'Can change slider', 47, 'change_slider'),
	(141, 'Can delete slider', 47, 'delete_slider'),
	(142, 'Can add staff', 48, 'add_staff'),
	(143, 'Can change staff', 48, 'change_staff'),
	(144, 'Can delete staff', 48, 'delete_staff'),
	(145, 'Can add event', 49, 'add_event'),
	(146, 'Can change event', 49, 'change_event'),
	(147, 'Can delete event', 49, 'delete_event'),
	(148, 'Can add Fee', 50, 'add_fees'),
	(149, 'Can change Fee', 50, 'change_fees'),
	(150, 'Can delete Fee', 50, 'delete_fees'),
	(151, 'Can add Acdamic Calander', 51, 'add_acdamic_calander'),
	(152, 'Can change Acdamic Calander', 51, 'change_acdamic_calander'),
	(153, 'Can delete Acdamic Calander', 51, 'delete_acdamic_calander'),
	(154, 'Can add News', 52, 'add_new'),
	(155, 'Can change News', 52, 'change_new'),
	(156, 'Can delete News', 52, 'delete_new'),
	(157, 'Can add timetable', 53, 'add_timetable'),
	(158, 'Can change timetable', 53, 'change_timetable'),
	(159, 'Can delete timetable', 53, 'delete_timetable'),
	(160, 'Can add Online Admission', 54, 'add_online_admission'),
	(161, 'Can change Online Admission', 54, 'change_online_admission'),
	(162, 'Can delete Online Admission', 54, 'delete_online_admission'),
	(163, 'Can add CLO', 55, 'add_clo'),
	(164, 'Can change CLO', 55, 'change_clo'),
	(165, 'Can delete CLO', 55, 'delete_clo'),
	(166, 'Can add Message', 56, 'add_message'),
	(167, 'Can change Message', 56, 'change_message'),
	(168, 'Can delete Message', 56, 'delete_message'),
	(169, 'Can add Timetable Graduate', 57, 'add_timetablegraduate'),
	(170, 'Can change Timetable Graduate', 57, 'change_timetablegraduate'),
	(171, 'Can delete Timetable Graduate', 57, 'delete_timetablegraduate'),
	(172, 'Can add Download', 58, 'add_download'),
	(173, 'Can change Download', 58, 'change_download'),
	(174, 'Can delete Download', 58, 'delete_download'),
	(175, 'Can add Permission Letter', 59, 'add_permission'),
	(176, 'Can change Permission Letter', 59, 'change_permission'),
	(177, 'Can delete Permission Letter', 59, 'delete_permission'),
	(178, 'Can add Acdamic Calander Graduate', 60, 'add_acdamic_calander_graduate'),
	(179, 'Can change Acdamic Calander Graduate', 60, 'change_acdamic_calander_graduate'),
	(180, 'Can delete Acdamic Calander Graduate', 60, 'delete_acdamic_calander_graduate'),
	(181, 'Can add DateSheet', 61, 'add_datesheet'),
	(182, 'Can change DateSheet', 61, 'change_datesheet'),
	(183, 'Can delete DateSheet', 61, 'delete_datesheet'),
	(184, 'Can add banner', 62, 'add_banner'),
	(185, 'Can change banner', 62, 'change_banner'),
	(186, 'Can delete banner', 62, 'delete_banner'),
	(187, 'Can add alumni', 63, 'add_alumni'),
	(188, 'Can change alumni', 63, 'change_alumni'),
	(189, 'Can delete alumni', 63, 'delete_alumni'),
	(190, 'Can add Event', 64, 'add_events'),
	(191, 'Can change Event', 64, 'change_events'),
	(192, 'Can delete Event', 64, 'delete_events'),
	(193, 'Can add Apply Now', 65, 'add_applynow'),
	(194, 'Can change Apply Now', 65, 'change_applynow'),
	(195, 'Can delete Apply Now', 65, 'delete_applynow'),
	(196, 'Can add Background', 66, 'add_background'),
	(197, 'Can change Background', 66, 'change_background'),
	(198, 'Can delete Background', 66, 'delete_background'),
	(199, 'Can add Orgnizer', 67, 'add_orgnizers'),
	(200, 'Can change Orgnizer', 67, 'change_orgnizers'),
	(201, 'Can delete Orgnizer', 67, 'delete_orgnizers');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table admission.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_user: ~14 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(7, 'pbkdf2_sha256$100000$u73LJbGMwL44$wBOinIOJQ6DF5+IqVRE+Y7QVMr+9Rj+l8cFamO652pI=', '2019-06-25 08:01:52.007683', 0, 'ahmadkhan2208', '', '', 'ahmadkhan2208@gmail.com', 0, 1, '2018-11-22 06:36:26.119108'),
	(8, 'pbkdf2_sha256$100000$C4oikYu0Czv5$8BvGVQAzJ9yGiakstjaE1+0hn1nRXgP9bgP0Xgd7FoE=', '2018-12-03 10:05:31.937545', 0, 'ahmad', '', '', 'ahmad@h.com', 0, 1, '2018-11-22 07:11:58.286713'),
	(9, 'pbkdf2_sha256$100000$rFMsYVXSklPV$f+Yj8dFo/6Yy1TFkNjkiO90b2K9hdVlYR9FBNvXlREM=', '2018-12-03 09:21:07.545330', 0, 'aak', '', '', 'ah@g.com', 0, 1, '2018-11-22 07:13:56.529821'),
	(10, 'pbkdf2_sha256$100000$vMUB436Mo7xK$kLwXsP2py8jF46XvAIgxAqc+f/k7ZygX6F1mwQ3te94=', '2018-12-03 09:37:52.984732', 0, 'ahmadali', '', '', 'a@g.com', 0, 1, '2018-12-03 09:37:51.773611'),
	(15, 'pbkdf2_sha256$100000$d6lpHujtSoeP$mwZ9EnB/wCIXfmiPLTPUYX8xGo4VnW8nmy/pLXFbjLg=', '2019-06-24 12:10:20.297943', 0, 'ahmad2208', '', '', '', 1, 1, '2018-12-07 07:17:44.580194'),
	(16, 'pbkdf2_sha256$100000$lRcd4qSQhmaY$vG7KmXir8NNVhL5L5ANi6NjtHyPO586Ai4DsMBQNozE=', '2018-12-26 06:35:42.562671', 0, 'ahmad1234', '', '', 'ahmad@gmail.com', 0, 1, '2018-12-11 10:08:06.671254'),
	(17, 'pbkdf2_sha256$100000$QfkZFCZ1NulF$id1sMPkMEhKONWKDXCZL4s93uNJUZ5yZypFUu52Ct0s=', '2019-04-19 06:53:49.228224', 0, 'umerjamil', '', '', 'umer.j@g.com', 0, 1, '2018-12-28 06:06:09.817361'),
	(18, 'pbkdf2_sha256$100000$USptc2pZKc8k$DnAbFnS2ODr909ADBomuZtO5r9rAmKty8+iHynPxVl8=', '2019-03-14 08:43:08.767250', 0, 'junaidali', '', '', 'j.ali@h.com', 0, 1, '2018-12-28 09:11:23.670551'),
	(19, 'pbkdf2_sha256$100000$lc4WU10LNwFk$28VWt5wUe6/YAaYzv9rWi3aC/FfikZmMRKma1w3AZNo=', '2019-02-13 05:15:05.111137', 0, 'hannan', '', '', 'a@g.com', 0, 1, '2019-01-01 07:15:22.576063'),
	(20, 'pbkdf2_sha256$100000$qCm14Nu53xPq$vEWjqJPtQQDn3+4CtzIwedXKDBjs6M6LoI5v1BnaM0c=', '2019-03-14 08:42:51.481320', 0, 'hamza', '', '', 'h.a@g.com', 0, 1, '2019-01-10 06:59:56.086303'),
	(21, 'pbkdf2_sha256$100000$0C8eO70MTARI$2XqPVekocDmhU0Wkh8XwgCFH/WtKumT+DGL5CopUC4Y=', '2019-01-11 10:16:02.048852', 0, 'murtaza', '', '', 'ahmadkhan2208@gmail.com', 0, 1, '2019-01-11 10:16:01.190082'),
	(22, 'pbkdf2_sha256$100000$K7vNkl5xRk4w$b0R1yjhV71ENGc7aUB4oGrqOBNV/YSbQA6gRCUO0Q2g=', '2019-02-13 06:37:48.967960', 0, 'alikhan', '', '', '', 0, 1, '2019-02-13 06:37:35.444140'),
	(23, 'pbkdf2_sha256$100000$4tjm6s14FJc9$Tyj0FcyH7lkgIAH+M8iEBPZPsBwlBnfQ3372CRF9BYU=', '2019-04-26 06:32:34.021910', 1, 'ak2208', '', '', 'ahm@gmail.com', 1, 1, '2019-04-26 06:32:09.598588'),
	(24, 'pbkdf2_sha256$100000$vH5qJYS4suJV$lLceoLZwSa4fV6HR0NGFIfeJ42MIbhaLMCDFAJbbJLA=', '2019-05-29 08:30:23.435195', 0, 'faraz', '', '', 'a@g.com', 0, 1, '2019-05-29 08:30:22.710543'),
	(25, 'pbkdf2_sha256$100000$hIKTEsQXWoGd$imXXsRyFbcjP76nKWP0OWad3v25Dx2KiiV8AoxuxkL0=', '2019-06-26 05:42:00.203886', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2019-06-26 05:41:46.826970');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table admission.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table admission.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table admission.details
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `submit` int(100) NOT NULL,
  `fnam` varchar(100) NOT NULL,
  `snam` varchar(100) NOT NULL,
  `mcod` int(100) NOT NULL,
  `mnum` int(100) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `fkz` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2446 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.details: ~6 rows (approximately)
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` (`id`, `signup_id`, `email`, `submit`, `fnam`, `snam`, `mcod`, `mnum`, `date`) VALUES
	(2439, 5765, 'umer.j@g.com', 1, 'jamil', '', 0, 0, '2018-12-29'),
	(2440, 5766, 'j.ali@H.COM', 1, 'junaid', '', 0, 0, '2018-12-28'),
	(2441, 5767, 'a@g.com', 1, 'ahmad', '', 0, 0, '2019-01-01'),
	(2443, 5755, 'ahmadkhan2208@gmail.com', 1, 'ahmad', '', 0, 0, '2019-01-08'),
	(2444, 5768, 'h.a@g.com', 1, '', '', 0, 0, '2019-01-11'),
	(2445, 5769, 'ahmadkhan2208@gmail.com', 1, '', '', 0, 0, '2019-01-11');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;

-- Dumping structure for table admission.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2019-04-26 06:33:14.638748', '1', 'Event object (1)', 1, '[{"added": {}}]', 38, 23);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table admission.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.django_content_type: ~67 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(7, 'admission_sys', 'abasyntest'),
	(8, 'admission_sys', 'address'),
	(9, 'admission_sys', 'adminlogin'),
	(10, 'admission_sys', 'admissiondate'),
	(36, 'admission_sys', 'admissions'),
	(11, 'admission_sys', 'admitcard'),
	(26, 'admission_sys', 'authgroup'),
	(27, 'admission_sys', 'authgrouppermissions'),
	(28, 'admission_sys', 'authpermission'),
	(29, 'admission_sys', 'authuser'),
	(30, 'admission_sys', 'authusergroups'),
	(31, 'admission_sys', 'authuseruserpermissions'),
	(12, 'admission_sys', 'details'),
	(32, 'admission_sys', 'djangoadminlog'),
	(33, 'admission_sys', 'djangocontenttype'),
	(34, 'admission_sys', 'djangomigrations'),
	(35, 'admission_sys', 'djangosession'),
	(13, 'admission_sys', 'educationbsc'),
	(14, 'admission_sys', 'educationfsc'),
	(15, 'admission_sys', 'educationmatric'),
	(16, 'admission_sys', 'educationms'),
	(17, 'admission_sys', 'educationphd'),
	(38, 'admission_sys', 'event'),
	(39, 'admission_sys', 'events'),
	(18, 'admission_sys', 'ntstest'),
	(37, 'admission_sys', 'offered_programs'),
	(19, 'admission_sys', 'otherdeatils'),
	(20, 'admission_sys', 'personal'),
	(21, 'admission_sys', 'programs'),
	(22, 'admission_sys', 'resultcard'),
	(23, 'admission_sys', 'signup'),
	(24, 'admission_sys', 'status'),
	(25, 'admission_sys', 'submit'),
	(40, 'admission_sys', 'workouts'),
	(63, 'alumni', 'alumni'),
	(65, 'Ansec', 'applynow'),
	(66, 'Ansec', 'background'),
	(64, 'Ansec', 'events'),
	(67, 'Ansec', 'orgnizers'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(41, 'schedule', 'calendar'),
	(42, 'schedule', 'calendarrelation'),
	(43, 'schedule', 'event'),
	(44, 'schedule', 'eventrelation'),
	(45, 'schedule', 'occurrence'),
	(46, 'schedule', 'rule'),
	(6, 'sessions', 'session'),
	(51, 'slider', 'acdamic_calander'),
	(60, 'slider', 'acdamic_calander_graduate'),
	(62, 'slider', 'banner'),
	(55, 'slider', 'clo'),
	(61, 'slider', 'datesheet'),
	(58, 'slider', 'download'),
	(49, 'slider', 'event'),
	(50, 'slider', 'fees'),
	(56, 'slider', 'message'),
	(52, 'slider', 'new'),
	(54, 'slider', 'online_admission'),
	(59, 'slider', 'permission'),
	(47, 'slider', 'slider'),
	(48, 'slider', 'staff'),
	(53, 'slider', 'timetable'),
	(57, 'slider', 'timetablegraduate');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table admission.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.django_migrations: ~84 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2018-11-22 04:48:31.994225'),
	(2, 'auth', '0001_initial', '2018-11-22 04:48:40.023449'),
	(3, 'admin', '0001_initial', '2018-11-22 04:48:41.466747'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-22 04:48:41.541815'),
	(5, 'admission_sys', '0001_initial', '2018-11-22 04:48:42.019247'),
	(6, 'admission_sys', '0002_auto_20181121_2048', '2018-11-22 04:48:42.407594'),
	(7, 'contenttypes', '0002_remove_content_type_name', '2018-11-22 04:48:43.903940'),
	(8, 'auth', '0002_alter_permission_name_max_length', '2018-11-22 04:48:45.002929'),
	(9, 'auth', '0003_alter_user_email_max_length', '2018-11-22 04:48:46.601366'),
	(10, 'auth', '0004_alter_user_username_opts', '2018-11-22 04:48:46.689447'),
	(11, 'auth', '0005_alter_user_last_login_null', '2018-11-22 04:48:47.847487'),
	(12, 'auth', '0006_require_contenttypes_0002', '2018-11-22 04:48:47.918552'),
	(13, 'auth', '0007_alter_validators_add_error_messages', '2018-11-22 04:48:47.991617'),
	(14, 'auth', '0008_alter_user_username_max_length', '2018-11-22 04:48:49.690145'),
	(15, 'auth', '0009_alter_user_last_name_max_length', '2018-11-22 04:48:50.930261'),
	(16, 'sessions', '0001_initial', '2018-11-22 04:48:52.623785'),
	(17, 'admission_sys', '0003_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django', '2018-11-22 05:25:08.899124'),
	(18, 'admission_sys', '0004_auto_20181121_2130', '2018-11-22 05:30:42.512939'),
	(19, 'admission_sys', '0005_auto_20181121_2138', '2018-11-22 05:38:58.139143'),
	(20, 'admission_sys', '0006_admissions', '2019-01-02 07:55:21.744137'),
	(21, 'admission_sys', '0007_offered_programs', '2019-01-02 09:58:14.679162'),
	(22, 'admission_sys', '0008_event', '2019-04-26 06:08:56.180168'),
	(23, 'admission_sys', '0009_auto_20190426_1241', '2019-04-26 07:41:34.239680'),
	(24, 'admission_sys', '0010_delete_events', '2019-04-26 07:42:09.670554'),
	(25, 'admission_sys', '0011_workouts', '2019-04-26 07:47:36.036151'),
	(26, 'admission_sys', '0012_delete_workouts', '2019-04-26 11:20:11.888867'),
	(27, 'schedule', '0001_initial', '2019-04-27 04:24:41.026863'),
	(28, 'schedule', '0002_event_color_event', '2019-04-27 04:24:42.078808'),
	(29, 'schedule', '0003_auto_20160715_0028', '2019-04-27 04:24:44.198757'),
	(30, 'schedule', '0006_update_text_fields_empty_string', '2019-04-27 04:24:44.409913'),
	(31, 'schedule', '0004_text_fields_not_null', '2019-04-27 04:24:50.616510'),
	(32, 'schedule', '0005_verbose_name_plural_for_calendar', '2019-04-27 04:24:50.675562'),
	(33, 'schedule', '0007_merge_text_fields', '2019-04-27 04:24:50.770649'),
	(34, 'schedule', '0008_gfk_index', '2019-04-27 04:24:52.993653'),
	(35, 'schedule', '0008_calendar_slug_unique', '2019-04-27 04:24:55.839279'),
	(36, 'schedule', '0009_merge_20180108_2303', '2019-04-27 04:24:56.061422'),
	(37, 'schedule', '0010_events_set_missing_calendar', '2019-04-27 04:24:56.273613'),
	(38, 'schedule', '0011_event_calendar_not_null', '2019-04-27 04:24:57.959134'),
	(39, 'admission_sys', '0008_auto_20190528_1507', '2019-05-28 10:11:25.310429'),
	(40, 'admission_sys', '0009_auto_20190528_1511', '2019-05-28 10:11:25.383495'),
	(41, 'Ansec', '0001_initial', '2019-06-25 07:58:46.790948'),
	(42, 'Ansec', '0002_applynow_background_orgnizers', '2019-06-25 07:58:48.165187'),
	(43, 'Ansec', '0003_auto_20180917_0003', '2019-06-25 07:58:48.239253'),
	(44, 'admission_sys', '0013_merge_20190625_1258', '2019-06-25 07:58:48.288299'),
	(45, 'alumni', '0001_initial', '2019-06-25 07:58:48.710682'),
	(46, 'alumni', '0002_auto_20180429_0056', '2019-06-25 07:58:49.109039'),
	(47, 'slider', '0001_initial', '2019-06-25 07:58:49.712584'),
	(48, 'slider', '0002_student', '2019-06-25 07:58:50.192054'),
	(49, 'slider', '0003_staff', '2019-06-25 07:58:50.568355'),
	(50, 'slider', '0004_auto_20180212_1224', '2019-06-25 07:58:52.463112'),
	(51, 'slider', '0005_event', '2019-06-25 07:58:52.930485'),
	(52, 'slider', '0006_facebook', '2019-06-25 07:58:53.354868'),
	(53, 'slider', '0007_auto_20180213_1207', '2019-06-25 07:58:54.488890'),
	(54, 'slider', '0008_courses', '2019-06-25 07:58:54.852223'),
	(55, 'slider', '0009_auto_20180307_0145', '2019-06-25 07:58:54.979334'),
	(56, 'slider', '0010_auto_20180307_0155', '2019-06-25 07:58:55.040388'),
	(57, 'slider', '0011_event_timestamp', '2019-06-25 07:58:55.692978'),
	(58, 'slider', '0012_auto_20180604_2122', '2019-06-25 07:58:56.980140'),
	(59, 'slider', '0013_auto_20180625_1806', '2019-06-25 07:58:57.974035'),
	(60, 'slider', '0014_acdamic_calander', '2019-06-25 07:58:58.379400'),
	(61, 'slider', '0015_new', '2019-06-25 07:58:58.722709'),
	(62, 'slider', '0016_auto_20180903_1847', '2019-06-25 07:58:58.882855'),
	(63, 'slider', '0017_auto_20180903_1849', '2019-06-25 07:58:58.925941'),
	(64, 'slider', '0018_auto_20180903_1854', '2019-06-25 07:58:58.969980'),
	(65, 'slider', '0019_timetable', '2019-06-25 07:58:59.314247'),
	(66, 'slider', '0020_new_link', '2019-06-25 07:59:00.936707'),
	(67, 'slider', '0021_online_admission', '2019-06-25 07:59:01.306045'),
	(68, 'slider', '0022_auto_20180914_0114', '2019-06-25 07:59:01.378107'),
	(69, 'slider', '0023_auto_20180914_0116', '2019-06-25 07:59:01.439163'),
	(70, 'slider', '0024_auto_20180914_0116', '2019-06-25 07:59:01.480197'),
	(71, 'slider', '0025_clo', '2019-06-25 07:59:01.799529'),
	(72, 'slider', '0026_message', '2019-06-25 07:59:02.319955'),
	(73, 'slider', '0027_timetablegraduate', '2019-06-25 07:59:02.635239'),
	(74, 'slider', '0028_auto_20180922_1648', '2019-06-25 07:59:02.956532'),
	(75, 'slider', '0029_permission', '2019-06-25 07:59:03.308848'),
	(76, 'slider', '0030_auto_20180922_2223', '2019-06-25 07:59:03.355890'),
	(77, 'slider', '0031_auto_20180922_2248', '2019-06-25 07:59:03.438976'),
	(78, 'slider', '0032_acdamic_calander_graduate', '2019-06-25 07:59:03.896377'),
	(79, 'slider', '0033_auto_20180927_2318', '2019-06-25 07:59:04.717120'),
	(80, 'slider', '0034_auto_20180927_2330', '2019-06-25 07:59:05.730034'),
	(81, 'slider', '0035_datesheet_visibility', '2019-06-25 07:59:06.552773'),
	(82, 'slider', '0036_banner', '2019-06-25 07:59:07.163325'),
	(83, 'slider', '0037_remove_staff_twiter', '2019-06-25 07:59:07.765866'),
	(84, 'slider', '0038_auto_20181218_1019', '2019-06-25 07:59:07.814912');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table admission.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.django_session: ~42 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('13itefw2qavzpxz9filpstmtanqmz0hn', 'Y2ExYmJjNTc3NjcxN2E0NDRmMTBiNWVhNWU2ZmM3MjdhMTI3ZmMxNDp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTY4OTRhMWQwZjVlMDBkYTgyZDZmODQ0YTYyM2RhODgwOTBmNmQ0NSJ9', '2019-04-26 18:32:34.137931'),
	('21uhs03jypdtbcbayhchpvfkd27f2zp0', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-03-21 23:38:35.872481'),
	('2606zehleeod28op9kliqv6co46d8amf', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-03 20:10:15.385533'),
	('39noyoohs4w0ovr9a6y6z7bjjzxie5b6', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:31:57.537638'),
	('4yh849abnuouyz8em0dttsjyhn5k7m3k', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-06 05:55:01.348802'),
	('555j0b81qb4yjxnstbjadsd1849fc8ld', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-05-28 22:11:46.998137'),
	('73a056mj929e6ftcg4shsymankyx0b1n', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:32:15.156505'),
	('81fsrrbrv7zj6rl5da61aru7ck8y9l4h', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-02-19 17:00:44.732636'),
	('8hxgcjr3y8h3aswcwr3i68t3fc36tyhq', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-03-18 17:18:25.717953'),
	('990cqhtmn7hn81gs19ezlj07qnfjj00w', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:32:04.188680'),
	('9iphoz8qga7fjsxqksojah9grya8mole', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-01-04 19:33:43.379819'),
	('9xi3967vugjk3zg9xw6281ysln0m87nm', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-03-16 23:32:18.651866'),
	('c6ugue791v503wddp8h9qmb32loc01vc', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-02-11 19:26:43.527930'),
	('cdfn7hidu9vg7m17ja0nrmtzuy0apo1r', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-03-25 19:41:58.315261'),
	('cfun4k4btweugcf5ldrijc0frzh9wd30', 'ZWUwMzRkYTRjNzJiOTA5MTNlMjExMzJiN2Q5YzljNmUyMWNjYjYwNjp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjdhOTk2MDJiYjJkODQ1Yzg3M2IzZjYyMDEzNTY0ZWM2MWNlNTM1MyJ9', '2019-02-13 19:02:45.182813'),
	('dd7cw8ozfjp0ojbms923triobsqdvicq', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-06-24 23:46:21.322859'),
	('dh47ywk8o29sgdk6z8zyayzdeyzwbik1', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-01-10 10:40:07.605591'),
	('dn21b5q0o8kmaqc5ue09dgx1hhv93kgr', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-03-22 22:10:15.502424'),
	('du93fbvq9l1dyqyg4xz10s2ulh0bzb68', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-06 06:12:41.746179'),
	('dwqmggbr3ue155bqnv7c8bhmj8km6cvd', 'YWU0YzU3MGUzZWMxZDc2YjEwZmVmNWVmYWVmOGI3NDM5NWZlMmZiZTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmMmEwN2YyNmY2ODFjZmFlZTcwZDk3ODg1MTVjZjE0MWRkMGViMyJ9', '2019-07-10 05:42:00.620265'),
	('e3ed07qci7bvk9ojsk0ii8pj3cpkg845', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-03-14 22:27:08.794384'),
	('e7wv0o1h7oqnd47ozrefy5wrtpc83yrl', 'OGU5ZDIyMzZjMzZiZTc3ZTMyODc5YTczNmViZTYyNDhhNGI2ZDI5Njp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmIyZmE4N2M0NDFhZTY0OWZiZThmYzI1MTc3ODNlZWNmNmNmZGU1OSJ9', '2019-05-29 20:30:23.521273'),
	('f3ii3o67kotxbwojor81z8iokypiuwfj', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-27 16:25:59.164562'),
	('gfsxp1xgmlsebr3vtky827lerzqmsmg0', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-29 01:42:36.680970'),
	('jmq8q1lpe992aqo7admxpwh64w0vsnj6', 'ZWUwMzRkYTRjNzJiOTA5MTNlMjExMzJiN2Q5YzljNmUyMWNjYjYwNjp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjdhOTk2MDJiYjJkODQ1Yzg3M2IzZjYyMDEzNTY0ZWM2MWNlNTM1MyJ9', '2019-01-10 18:59:56.994121'),
	('kjdvu3ka9a6ekptzkh7hajrbr1deeol0', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-27 18:49:23.517108'),
	('li2n4kt22w21iabxfupdeolml2iws0wv', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-01-03 08:23:50.356034'),
	('m5pmcwkkvwnyc2cmvqkkyvfuz96ltp8z', 'MzIwZTBjMmE3YzFkOWI1ZTYwNGNjNGM3Y2FhOGU2NWYyZjlmNGU0Zjp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODY5NDk5NzFiMWMxY2ZhYWRkNjA2NTMxNDkxYzJiZTRmMmIyMmYzNiJ9', '2019-01-11 22:16:02.191973'),
	('nomy805aphrf6td3r1in9a3jx33yb3d8', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:31:44.908423'),
	('qqozlutniol0am8efi1vhzk5rne5f718', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:33:14.671269'),
	('r8pj9fba0ljr150b2pwcmf6lsl8674e1', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-18 23:12:37.171867'),
	('snxrekippbkobkm00pkrwly0g70refca', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-06-25 00:10:20.470097'),
	('su4ge52iki026ko9dg4f1yy8g5vc3oh7', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-08 17:56:19.141190'),
	('upcvw6nbv5fx3vk3ql2li740eox3hhso', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-24 20:24:40.609236'),
	('uy687azlm1gf3j1xx4whkbqhuzsphiz8', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-06 06:15:28.928386'),
	('vd1doqv8oasnr8x4rf89hu0yo47nluxm', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-01-08 17:59:40.008693'),
	('vscoeokcfyw306vg7wpov1l4i12y9q9f', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-03-13 19:21:53.298085'),
	('wbwmm3ygoehoxii3s6fov3oiw9knt826', 'NjFjMTMzYTA1YzE3ZGZmNTBkOWEzMzM2Y2FhM2MwZWNjZGFmOGQxOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYzRkMjY5M2M4YWNhMTBkZDNkY2EyY2MwYmNjMjMwMmUwZGI3NDA4In0=', '2019-04-02 17:47:28.630442'),
	('wgulc27tdde8wlw7jb8teut5i0uej66m', 'NmE5ODY0Mzc3OGZmMjRjOGM1Njk4YzY5Yzc2NTBmYTgwM2ViMTg0ZTp7fQ==', '2018-12-17 09:32:21.051433'),
	('xetmp8d3vyz7q8rl93pr3ch7w1cq0uws', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-01-01 04:20:14.572701'),
	('z5cu6raremi8rz5c8aun9wel9z724hdl', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-04-19 19:06:58.974159'),
	('z5eyn3n7wg286d1xm1baj3bbm8hgyyxc', 'NzdlODY5NDBiNmY2NTc0NGRkZjk4MjQxMzQ1YWZhMDNhZmVhYjU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QwN2IxZjYxZDBhNzIyNTUzZmExNDhkZmQ2NDFkMWMyMTA3OWU5YSJ9', '2019-01-03 20:25:39.646288');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table admission.education_bsc
CREATE TABLE IF NOT EXISTS `education_bsc` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `bseged` varchar(255) NOT NULL,
  `bseyr` int(255) NOT NULL,
  `bseuni` varchar(255) NOT NULL,
  `bsesub` varchar(255) NOT NULL,
  `bsetocgpa` varchar(255) NOT NULL,
  `bseobt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `education_bsc_ibfk_1` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.education_bsc: ~0 rows (approximately)
/*!40000 ALTER TABLE `education_bsc` DISABLE KEYS */;
INSERT INTO `education_bsc` (`id`, `signup_id`, `bseged`, `bseyr`, `bseuni`, `bsesub`, `bsetocgpa`, `bseobt`) VALUES
	(220, 5755, 'BS', 2018, 'abasyn', 'science', '1000', '500');
/*!40000 ALTER TABLE `education_bsc` ENABLE KEYS */;

-- Dumping structure for table admission.education_fsc
CREATE TABLE IF NOT EXISTS `education_fsc` (
  `fsc_id` int(10) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `waiting` varchar(20) NOT NULL,
  `fsedeg` varchar(255) NOT NULL,
  `fseyr` int(255) NOT NULL,
  `fsebod` varchar(255) NOT NULL,
  `fsesub` varchar(255) NOT NULL,
  `fsetono` int(255) NOT NULL,
  `fseobno` int(255) NOT NULL,
  `percent` int(255) DEFAULT NULL,
  PRIMARY KEY (`fsc_id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `urfscFK` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3676 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.education_fsc: ~5 rows (approximately)
/*!40000 ALTER TABLE `education_fsc` DISABLE KEYS */;
INSERT INTO `education_fsc` (`fsc_id`, `signup_id`, `waiting`, `fsedeg`, `fseyr`, `fsebod`, `fsesub`, `fsetono`, `fseobno`, `percent`) VALUES
	(3671, 5755, 'fscwaiting', 'fSC', 2016, '897', 'pre eng', 2, 3, 3),
	(3672, 5765, 'fscwaiting', 'fSC', 2016, '98', 'pre eng', 4, 5, 10),
	(3673, 5766, 'fscwaiting', 'fSC', 2016, '897', 'pre eng', 3, 4, 4),
	(3674, 5768, 'fscwaiting', 'fSC', 2016, '897', 'pre eng', 2, 3, 3),
	(3675, 5769, 'fscwaiting', 'A-levels', 2016, '897', 'pre eng', 2, 4, 3);
/*!40000 ALTER TABLE `education_fsc` ENABLE KEYS */;

-- Dumping structure for table admission.education_matric
CREATE TABLE IF NOT EXISTS `education_matric` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `yearpass` int(255) NOT NULL,
  `board` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `totalmark` int(255) NOT NULL,
  `obtainmark` int(255) NOT NULL,
  `percent` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `education_matric_ibfk_1` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3747 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.education_matric: ~6 rows (approximately)
/*!40000 ALTER TABLE `education_matric` DISABLE KEYS */;
INSERT INTO `education_matric` (`id`, `signup_id`, `degree`, `yearpass`, `board`, `subject`, `totalmark`, `obtainmark`, `percent`) VALUES
	(3741, 5755, 'Matric', 2018, 'fbise', 'science', 3, 2, 2),
	(3742, 5765, 'Matric', 2018, 'fbise', 'science', 3, 4, 5),
	(3743, 5766, 'Matric', 2018, 'fbise', 'science', 2, 4, 3),
	(3744, 5767, 'Matric', 67678, '786876', '786786', 767, 76, 76),
	(3745, 5768, 'Matric', 2018, 'fbise', 'science', 2, 3, 3),
	(3746, 5769, 'Matric', 2018, 'fbise', 'science', 3, 3, 3);
/*!40000 ALTER TABLE `education_matric` ENABLE KEYS */;

-- Dumping structure for table admission.education_ms
CREATE TABLE IF NOT EXISTS `education_ms` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `msdeg` varchar(255) NOT NULL,
  `msyr` int(255) NOT NULL,
  `msnui` varchar(255) NOT NULL,
  `mssub` varchar(255) NOT NULL,
  `mstocgpa` varchar(255) NOT NULL,
  `msobcgpa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `frkeyuser` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.education_ms: ~2 rows (approximately)
/*!40000 ALTER TABLE `education_ms` DISABLE KEYS */;
INSERT INTO `education_ms` (`id`, `signup_id`, `msdeg`, `msyr`, `msnui`, `mssub`, `mstocgpa`, `msobcgpa`) VALUES
	(418, 5755, 'BEEE', 7897, '78', '97', '87', '89'),
	(419, 5765, '789', 8789, '789', '89', '1', '4');
/*!40000 ALTER TABLE `education_ms` ENABLE KEYS */;

-- Dumping structure for table admission.education_phd
CREATE TABLE IF NOT EXISTS `education_phd` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `phddeg` varchar(255) NOT NULL,
  `phdyr` int(255) NOT NULL,
  `phduni` varchar(255) NOT NULL,
  `phdsub` varchar(255) NOT NULL,
  `phdtocgpa` varchar(255) NOT NULL,
  `phdobcgpa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table admission.education_phd: ~0 rows (approximately)
/*!40000 ALTER TABLE `education_phd` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_phd` ENABLE KEYS */;

-- Dumping structure for table admission.ntstest
CREATE TABLE IF NOT EXISTS `ntstest` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `rolno` varchar(50) NOT NULL,
  `testtype` varchar(255) NOT NULL,
  `ob_marks` varchar(100) NOT NULL,
  `month_nts` varchar(100) NOT NULL,
  `day_nts` varchar(100) NOT NULL,
  `year_nts` varchar(100) NOT NULL,
  `nts_resultcard` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `frky` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.ntstest: ~0 rows (approximately)
/*!40000 ALTER TABLE `ntstest` DISABLE KEYS */;
INSERT INTO `ntstest` (`id`, `signup_id`, `rolno`, `testtype`, `ob_marks`, `month_nts`, `day_nts`, `year_nts`, `nts_resultcard`) VALUES
	(386, 5766, ' 89789', 'NTS', '878', '1', '1980', 'jan', '/img/SAM_0778.JPG');
/*!40000 ALTER TABLE `ntstest` ENABLE KEYS */;

-- Dumping structure for table admission.offered_programs
CREATE TABLE IF NOT EXISTS `offered_programs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `code` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(15) NOT NULL,
  `status` int(2) NOT NULL,
  `Department` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.offered_programs: ~31 rows (approximately)
/*!40000 ALTER TABLE `offered_programs` DISABLE KEYS */;
INSERT INTO `offered_programs` (`id`, `code`, `name`, `short_name`, `status`, `Department`) VALUES
	(10, 1, 'BE Civil Engineering', 'BECE', 1, 'Civil'),
	(11, 1, 'BE Electrical Engineering', 'BEEE', 1, 'Electrical'),
	(13, 1, 'BS Software Engineering', 'BSSE', 1, 'Computing'),
	(14, 1, 'BS Computer Science', 'BSCS', 1, 'Computing'),
	(15, 1, 'BS Microbiology', 'BSMB', 1, 'Life sciences'),
	(16, 1, 'Doctor of Physical Therapy', 'DPT', 1, 'Life sciences'),
	(17, 1, 'BS Human Nutrition & Dietetics', 'BS HN&D', 1, 'Life sciences'),
	(18, 1, 'BS Medical Lab Technology', 'BS MLT', 1, 'Life sciences'),
	(19, 1, 'BS English', 'BS Eng', 1, 'Management sciences'),
	(20, 1, 'BS Psychology', 'BS Psy', 1, 'Management sciences'),
	(21, 1, 'BS Fashion & Design', 'BS F&D', 1, 'Management sciences'),
	(22, 1, 'Bachelor of Business Administration', 'BBA', 1, 'Management sciences'),
	(23, 1, 'BS Environmental Sciences', 'BS ES', 1, 'Life sciences'),
	(24, 1, 'Bachelor of Education', 'B.Ed (Hons.)', 1, 'Education'),
	(25, 1, 'BS in Mass Communication', 'BS MC', 1, 'Management sciences'),
	(26, 1, 'BS Mathematics', 'BS Maths', 1, 'Mathamatics and statistics'),
	(27, 1, 'BS Statistics', 'BS Stats ', 1, 'Mathamatics and statistics'),
	(28, 2, 'MS Computer Science', 'MS CS', 1, 'Computing'),
	(29, 2, 'MS Software Engineering', 'MS SE', 1, 'Computing'),
	(30, 2, 'MS Telecom & Networks', 'MS TN', 1, 'Computing'),
	(31, 2, 'MS Electrical Engineering', 'MS EE', 1, 'Electrical'),
	(32, 2, 'MS Management Science', 'MS MS', 1, 'Management sciences'),
	(33, 2, 'MS Engineering Management', 'MS EM', 1, 'Management sciences'),
	(34, 2, 'MS Logistics & Supply Chain Management', 'MS LSM', 1, 'Management sciences'),
	(35, 2, 'MS Project Management', 'MS PM', 1, 'Management sciences'),
	(36, 2, 'MS Data Science', 'MS DS', 1, 'Computing'),
	(37, 2, 'M.Phil Microbiology', 'M.Phil MB', 1, 'Life sciences'),
	(38, 1, 'Doctor of Pharmacy', 'Pharm-D', 1, 'Pharmacy'),
	(39, 1, 'Bachelor of Technology in Civil Engineering', 'B-Tech (CE)', 1, 'Technology'),
	(40, 1, 'Bachelor of Technology in Mechanical Engineering', 'B-Tech (ME)', 1, 'Technology'),
	(41, 1, 'Bachelor of Technology in Electrical Engineering', 'B-Tech (EE)', 1, 'Technology');
/*!40000 ALTER TABLE `offered_programs` ENABLE KEYS */;

-- Dumping structure for table admission.otherdeatils
CREATE TABLE IF NOT EXISTS `otherdeatils` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `hostel` varchar(100) NOT NULL,
  `transport` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3069 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.otherdeatils: ~5 rows (approximately)
/*!40000 ALTER TABLE `otherdeatils` DISABLE KEYS */;
INSERT INTO `otherdeatils` (`id`, `signup_id`, `hostel`, `transport`) VALUES
	(3034, 5765, 'NO', 'YES'),
	(3035, 5766, 'YES', 'NO'),
	(3037, 5755, 'NO', 'YES'),
	(3039, 5768, 'NO', 'YES'),
	(3067, 5769, 'NO', 'NO'),
	(3068, 5772, 'YES', 'NO');
/*!40000 ALTER TABLE `otherdeatils` ENABLE KEYS */;

-- Dumping structure for table admission.personal
CREATE TABLE IF NOT EXISTS `personal` (
  `per_id` int(10) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `fname` text NOT NULL,
  `month` text NOT NULL,
  `day` int(30) NOT NULL,
  `year` int(30) NOT NULL,
  `gender` text NOT NULL,
  `citizen` text NOT NULL,
  `domicile` text NOT NULL,
  `cnici` int(30) NOT NULL,
  `cnicii` int(30) NOT NULL,
  `cniciii` int(11) NOT NULL,
  `mobcode` int(30) NOT NULL,
  `mobnumber` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`per_id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3917 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.personal: ~6 rows (approximately)
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`per_id`, `signup_id`, `uname`, `fname`, `month`, `day`, `year`, `gender`, `citizen`, `domicile`, `cnici`, `cnicii`, `cniciii`, `mobcode`, `mobnumber`, `photo`) VALUES
	(3910, 5755, 'ahmad ali khan', 'sarfraz', 'jan', 1, 1980, 'Male', 'AF', 'PUNJAB', 89789, 8978978, 9, 300, '8787987', 'No file'),
	(3911, 5765, 'umer', 'jamil', 'jan', 1, 1980, '1', 'PK', '1', 98908, 9888889, 8, 300, '7868678', '/img/SAM_0757.JPG'),
	(3912, 5766, 'junaid ali ', 'ali', 'jan', 1, 1999, 'Male', 'PK', 'PUNJAB', 87987, 8978979, 9, 347, '8978978', '/img/SAM_0758.JPG'),
	(3913, 5767, 'hannan', 'kl', 'jan', 1, 1981, '1', 'PK', '1', 76876, 7678678, 0, 300, '8768768', 'No file'),
	(3914, 5768, 'hamza', 'khan', 'jan', 1, 1980, 'Male', 'PK', 'PUNJAB', 87897, 8987789, 0, 342, '8767878', 'No file'),
	(3915, 5769, 'murtaza khan', 'khan', 'jan', 1, 1980, 'Male', 'PK', 'KPK', 78687, 7867867, 7, 300, '9798789', 'No file'),
	(3916, 5772, 'faraz ahsan', 'ahsana', 'apr', 4, 1985, 'Male', 'PK', 'SINDH', 87987, 8978978, 8, 300, '8798789', '/img/323667_1.png');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;

-- Dumping structure for table admission.programs
CREATE TABLE IF NOT EXISTS `programs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `programone` varchar(100) NOT NULL,
  `programtwo` varchar(100) NOT NULL,
  `programthree` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `frkry` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3110 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.programs: ~6 rows (approximately)
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` (`id`, `signup_id`, `programone`, `programtwo`, `programthree`) VALUES
	(3103, 5767, 'BS software engineering', 'BS Psychology', 'BS computer science'),
	(3104, 5755, 'BS software engineering', 'BS software engineering', 'BS software engineering'),
	(3105, 5768, 'MS software enginnering', 'MS computer science', 'MS software enginnering'),
	(3106, 5769, 'BS computer science', 'BS software engineering', 'BS micro biology'),
	(3107, 5766, 'BS Psychology', 'BS English', 'BS English'),
	(3108, 5765, 'MS software enginnering', 'MS computer science', 'MS software enginnering'),
	(3109, 5772, 'BS Computer Science', 'BS Software Engineering', 'BS in Mass Communication');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;

-- Dumping structure for table admission.resultcard
CREATE TABLE IF NOT EXISTS `resultcard` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `mresult` varchar(255) NOT NULL,
  `fresult` varchar(255) NOT NULL,
  `bscresult` varchar(255) NOT NULL,
  `bsresult` varchar(255) NOT NULL,
  `msresult` varchar(255) NOT NULL,
  `hope_certificate` varchar(255) NOT NULL,
  `e_certificate` varchar(255) NOT NULL,
  `e_certificate_a` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `frzky` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2733 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.resultcard: ~6 rows (approximately)
/*!40000 ALTER TABLE `resultcard` DISABLE KEYS */;
INSERT INTO `resultcard` (`id`, `signup_id`, `mresult`, `fresult`, `bscresult`, `bsresult`, `msresult`, `hope_certificate`, `e_certificate`, `e_certificate_a`) VALUES
	(2727, 5755, 'no file', 'no file', '', '', '', '', '', ''),
	(2728, 5765, 'no file', 'no file', '', 'no file', '', '', '', ''),
	(2729, 5766, '/img/SAM_0779.JPG', '/img/SAM_0779_VSDQhfO.JPG', '', '', '', '', '', ''),
	(2730, 5767, 'no file', '', '', '', '', '', '', ''),
	(2731, 5768, 'no file', 'no file', '', '', '', '', '', ''),
	(2732, 5769, 'no file', 'no file', '', '', '', '', '', '');
/*!40000 ALTER TABLE `resultcard` ENABLE KEYS */;

-- Dumping structure for table admission.slider_acdamic_calander
CREATE TABLE IF NOT EXISTS `slider_acdamic_calander` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_acdamic_calander: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_acdamic_calander` DISABLE KEYS */;
INSERT INTO `slider_acdamic_calander` (`id`, `link`) VALUES
	(2, 'https://drive.google.com/file/d/1YDZubokmzvKW2ijWaKZIVbPh19VVyz_w/view?usp=sharing');
/*!40000 ALTER TABLE `slider_acdamic_calander` ENABLE KEYS */;

-- Dumping structure for table admission.slider_acdamic_calander_graduate
CREATE TABLE IF NOT EXISTS `slider_acdamic_calander_graduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_acdamic_calander_graduate: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_acdamic_calander_graduate` DISABLE KEYS */;
INSERT INTO `slider_acdamic_calander_graduate` (`id`, `link`, `title`) VALUES
	(1, 'https://drive.google.com/file/d/1-4rvZWyxfSOy4hdpjynAuOREpRijuXGT/view?usp=sharing', 'MS Calender');
/*!40000 ALTER TABLE `slider_acdamic_calander_graduate` ENABLE KEYS */;

-- Dumping structure for table admission.slider_banner
CREATE TABLE IF NOT EXISTS `slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_banner: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_banner` DISABLE KEYS */;
INSERT INTO `slider_banner` (`id`, `image`) VALUES
	(1, 'images/home-01-846x1002.JPG'),
	(5, 'images/summer_1.png');
/*!40000 ALTER TABLE `slider_banner` ENABLE KEYS */;

-- Dumping structure for table admission.slider_clo
CREATE TABLE IF NOT EXISTS `slider_clo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_clo: ~3 rows (approximately)
/*!40000 ALTER TABLE `slider_clo` DISABLE KEYS */;
INSERT INTO `slider_clo` (`id`, `link`, `title`) VALUES
	(2, 'https://drive.google.com/file/d/1OuJHB7YpcHEAM0kmKQJBLrS5N-hUFUAj/view?usp=sharing', 'Electrical'),
	(3, 'https://drive.google.com/file/d/1zIRR0Z8udPMffFBUb0oSdAZWM7hFc4Fl/view', 'Civil'),
	(4, 'https://docs.google.com/spreadsheets/d/1TlYCy7JSoflUXMp_62lvRmzAIxQX0se5CUIfo_x_3iw/edit?ts=5acc58e9#gid=896371080', 'Computing');
/*!40000 ALTER TABLE `slider_clo` ENABLE KEYS */;

-- Dumping structure for table admission.slider_datesheet
CREATE TABLE IF NOT EXISTS `slider_datesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_datesheet: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_datesheet` DISABLE KEYS */;
INSERT INTO `slider_datesheet` (`id`, `link`, `title`, `visibility`) VALUES
	(4, 'https://drive.google.com/file/d/1sqrB5CkeDguy20h8Ec7UdIwoViu9vyFz/view?usp=sharing', 'MS Datesheet', 1);
/*!40000 ALTER TABLE `slider_datesheet` ENABLE KEYS */;

-- Dumping structure for table admission.slider_download
CREATE TABLE IF NOT EXISTS `slider_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_download: ~3 rows (approximately)
/*!40000 ALTER TABLE `slider_download` DISABLE KEYS */;
INSERT INTO `slider_download` (`id`, `title`, `file`) VALUES
	(1, 'Application Form', 'downloads/Application.pdf'),
	(2, 'Prospectus', 'downloads/pros.pdf'),
	(3, 'Student Handbook', 'downloads/Handbook.pdf');
/*!40000 ALTER TABLE `slider_download` ENABLE KEYS */;

-- Dumping structure for table admission.slider_event
CREATE TABLE IF NOT EXISTS `slider_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_event: ~6 rows (approximately)
/*!40000 ALTER TABLE `slider_event` DISABLE KEYS */;
INSERT INTO `slider_event` (`id`, `picture`, `title`, `description`, `timestamp`) VALUES
	(1, 'images/logo.png', 'ANSEC 18 Coming Soon', 'ANSEC 18 Coming Soon', '2018-09-03 10:54:53.000000'),
	(2, 'images/orientation.jpeg', 'Orientation Session Fall 18', 'Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', '2018-08-27 09:00:00.000000'),
	(3, 'images/38125799_2142134129333482_6496561974241918976_n.jpg', 'Entry Test Fall - 18', 'Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.', '2018-08-02 09:00:00.000000'),
	(6, 'images/defense2.png', 'Public PhD defense', 'Hierarchical Multi-Label document Classification using Swarm intelligence.26th June, 2019 (02:00 PM) at board room AUIC.', '2019-06-26 14:00:00.000000'),
	(8, 'images/defense.png', 'Public PhD defense', 'A Frequent Graph Pattern Mining Approach for Evaluation of Trends in Social Media. 4th July, 2019 02:00 PM at board room', '2019-07-04 02:00:00.000000'),
	(9, 'images/IMG-20190401-WA0002.jpg', 'Molecular Biology Techniques', 'One Hands-On workshop on Molecular Biology Techniques', '2019-04-06 09:00:00.000000');
/*!40000 ALTER TABLE `slider_event` ENABLE KEYS */;

-- Dumping structure for table admission.slider_fees
CREATE TABLE IF NOT EXISTS `slider_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(120) NOT NULL,
  `fees` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_fees: ~27 rows (approximately)
/*!40000 ALTER TABLE `slider_fees` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `slider_fees` ENABLE KEYS */;

-- Dumping structure for table admission.slider_message
CREATE TABLE IF NOT EXISTS `slider_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider_message` ENABLE KEYS */;

-- Dumping structure for table admission.slider_new
CREATE TABLE IF NOT EXISTS `slider_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_new: ~3 rows (approximately)
/*!40000 ALTER TABLE `slider_new` DISABLE KEYS */;
INSERT INTO `slider_new` (`id`, `picture`, `title`, `description`, `timestamp`, `link`) VALUES
	(4, 'images/Convocation-iner_Y8G3XLd.png', 'Registrations Open for Convocation', 'Fill form and submit with demand draft of 3,000 in favor of Abasyn University Fee Collection Account before 9th Jan .', '2018-11-01 13:34:26.000000', 'https://drive.google.com/file/d/1B9-Qk2EFlIIwVVOWmYwToHyafcfeix4O/view?fbclid=IwAR1Cddeciw8BW2CsIM5-OhPM6JonHWpILpQrKt0VrPP0bSbBfhNTkuwU3pk'),
	(5, 'images/PMS-Exams-Date-Sheet.jpg', 'Mid Term Date Sheet', 'Date sheet of Graduate & Undergraduate degree programs for semester Summer ~ 19.', '2018-11-01 13:37:14.000000', 'https://drive.google.com/file/d/1FMKBFy-EgjCsL8UwUeKyCR3652ZoJrQo/view?usp=sharing'),
	(6, 'images/red.jpg', 'Result Spring\'19', 'Login to student portal and check your result', '2018-11-01 13:39:56.000000', 'http://202.142.169.100/qecisb');
/*!40000 ALTER TABLE `slider_new` ENABLE KEYS */;

-- Dumping structure for table admission.slider_online_admission
CREATE TABLE IF NOT EXISTS `slider_online_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_online_admission: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_online_admission` DISABLE KEYS */;
INSERT INTO `slider_online_admission` (`id`, `link`) VALUES
	(1, 'http://18.205.240.98/admissionsystem/AA/bootstrap/index.php');
/*!40000 ALTER TABLE `slider_online_admission` ENABLE KEYS */;

-- Dumping structure for table admission.slider_permission
CREATE TABLE IF NOT EXISTS `slider_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_permission: ~4 rows (approximately)
/*!40000 ALTER TABLE `slider_permission` DISABLE KEYS */;
INSERT INTO `slider_permission` (`id`, `title`, `file`) VALUES
	(1, 'HEC', 'permissions/HEC_Permission_for_Start_of_Operation.jpg'),
	(2, 'Civil', 'permissions/BECE_1st_Accreditation_.jpg'),
	(3, 'Electrical', 'permissions/BEEE_2013__2014_Re-Accr..pdf'),
	(4, 'Computing', 'permissions/Accreditation_of_BSSE_Program.pdf');
/*!40000 ALTER TABLE `slider_permission` ENABLE KEYS */;

-- Dumping structure for table admission.slider_slider
CREATE TABLE IF NOT EXISTS `slider_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider1` varchar(100) NOT NULL,
  `slider2` varchar(100) NOT NULL,
  `slider3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.slider_slider: 1 rows
/*!40000 ALTER TABLE `slider_slider` DISABLE KEYS */;
INSERT INTO `slider_slider` (`id`, `slider1`, `slider2`, `slider3`) VALUES
	(1, 'images/25398107_2008323612714535_6504903865486525119_o_GDclHQH.jpg', 'images/Backdrop2_1.jpg', 'images/priscilla-du-preez-293218-unsplash_Tvbf5we.jpg');
/*!40000 ALTER TABLE `slider_slider` ENABLE KEYS */;

-- Dumping structure for table admission.slider_staff
CREATE TABLE IF NOT EXISTS `slider_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `designation` varchar(120) NOT NULL,
  `qualification` varchar(120) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_staff: ~48 rows (approximately)
/*!40000 ALTER TABLE `slider_staff` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `slider_staff` ENABLE KEYS */;

-- Dumping structure for table admission.slider_timetable
CREATE TABLE IF NOT EXISTS `slider_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_timetable: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_timetable` DISABLE KEYS */;
INSERT INTO `slider_timetable` (`id`, `link`) VALUES
	(2, 'https://docs.google.com/document/d/1DM--LvDiWCfoJOpjTpHw601XiOz9SoB-k1VyrsN6tWY');
/*!40000 ALTER TABLE `slider_timetable` ENABLE KEYS */;

-- Dumping structure for table admission.slider_timetablegraduate
CREATE TABLE IF NOT EXISTS `slider_timetablegraduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table admission.slider_timetablegraduate: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider_timetablegraduate` DISABLE KEYS */;
INSERT INTO `slider_timetablegraduate` (`id`, `link`) VALUES
	(1, 'https://drive.google.com/file/d/1YimFURnNeEy5ab_TIBrNe7EFxpxE_3hG/view?fbclid=IwAR37JpzHJkgzeeyDG9NlmyxhZ_wIEaUG5vzrh8GM');
/*!40000 ALTER TABLE `slider_timetablegraduate` ENABLE KEYS */;

-- Dumping structure for table admission.sqlite_sequence
CREATE TABLE IF NOT EXISTS `sqlite_sequence` (
  `name` longtext,
  `seq` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table admission.sqlite_sequence: 26 rows
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
	('django_migrations', '57'),
	('django_admin_log', '246'),
	('django_content_type', '30'),
	('auth_permission', '90'),
	('auth_user', '3'),
	('auth_user_user_permissions', '1'),
	('slider_event', '4'),
	('alumni_alumni', '2'),
	('slider_fees', '28'),
	('slider_acdamic_calander', '2'),
	('slider_timetable', '1'),
	('slider_new', '3'),
	('slider_online_admission', '1'),
	('auth_group', '1'),
	('auth_group_permissions', '2'),
	('Ansec_orgnizers', '0'),
	('slider_clo', '4'),
	('slider_timetablegraduate', '1'),
	('slider_download', '3'),
	('slider_permission', '4'),
	('slider_acdamic_calander_graduate', '1'),
	('slider_datesheet', '5'),
	('slider_banner', '1'),
	('slider_staff', '67'),
	('slider_slider', '2'),
	('slider_message', '1');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;

-- Dumping structure for table admission.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `personalstatus` int(10) DEFAULT NULL,
  `address` int(10) DEFAULT NULL,
  `education` int(10) DEFAULT NULL,
  `metric` int(100) DEFAULT NULL,
  `fsc` int(100) DEFAULT NULL,
  `bsc` int(100) DEFAULT NULL,
  `phd` int(100) DEFAULT NULL,
  `metricimg` int(100) DEFAULT NULL,
  `fscimg` int(100) DEFAULT NULL,
  `bscimg` int(100) DEFAULT NULL,
  `bsimg` int(100) DEFAULT NULL,
  `nts` int(10) DEFAULT NULL,
  `ms` int(11) DEFAULT NULL,
  `msimg` int(11) DEFAULT NULL,
  `ntscard` int(10) DEFAULT NULL,
  `teststatus` int(100) DEFAULT NULL,
  `othdetil` int(100) DEFAULT NULL,
  `program` int(100) DEFAULT NULL,
  `submit` int(100) DEFAULT NULL,
  `ntsok` int(100) DEFAULT NULL,
  `auictestok` int(100) DEFAULT NULL,
  `ntscardok` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `uss_fk` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5307 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.status: ~6 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `signup_id`, `personalstatus`, `address`, `education`, `metric`, `fsc`, `bsc`, `phd`, `metricimg`, `fscimg`, `bscimg`, `bsimg`, `nts`, `ms`, `msimg`, `ntscard`, `teststatus`, `othdetil`, `program`, `submit`, `ntsok`, `auictestok`, `ntscardok`) VALUES
	(5299, 5755, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(5300, 5765, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(5302, 5767, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
	(5303, 5768, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(5304, 5769, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(5305, 5766, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL),
	(5306, 5772, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Dumping structure for table admission.submit
CREATE TABLE IF NOT EXISTS `submit` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `signup_id` int(255) NOT NULL,
  `conform` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `signup_id` (`signup_id`),
  CONSTRAINT `fk` FOREIGN KEY (`signup_id`) REFERENCES `admission_sys_signup` (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202467 DEFAULT CHARSET=latin1;

-- Dumping data for table admission.submit: ~6 rows (approximately)
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` (`id`, `signup_id`, `conform`) VALUES
	(202433, 5765, 'true'),
	(202434, 5766, 'true'),
	(202435, 5767, 'true'),
	(202437, 5755, 'true'),
	(202438, 5768, 'true'),
	(202466, 5769, 'true');
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
