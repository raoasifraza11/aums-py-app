# File name: D:/DB/db.sql
# Creation date: 10/17/2018
# Created by SQLite to MySQL 1.5 [Demo]
# --------------------------------------------------
# More conversion tools at http://www.convert-in.com

SET GLOBAL max_allowed_packet=200*1024*1024;

SET NAMES utf8;

DROP DATABASE IF EXISTS `addata`;
CREATE DATABASE `addata` character set utf8;
USE `db`;

#
# Table structure for table 'alumni_alumni'
#

DROP TABLE IF EXISTS `alumni_alumni` CASCADE;
CREATE TABLE `alumni_alumni` (
  `id` INT NOT NULL,
  `email` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `registration_number` INT NOT NULL,
  `courses` VARCHAR(6) CHARACTER SET utf8 NOT NULL,
  `year_semester` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `occupation` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `job_title` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `full_Name` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'alumni_alumni'
#

LOCK TABLES `alumni_alumni` WRITE;
INSERT IGNORE INTO `alumni_alumni`(`id`, `email`, `registration_number`, `courses`, `year_semester`, `occupation`, `job_title`, `full_Name`) VALUES(1, 'surhanzahid@gmail.com', 1187, 'bscs', '2019', 'student', 'none', 'Surhan Zahid'), (2, 'yasir@gmail.com', 1214, 'bscs', '2016', 'student', 'none', 'Yasir Rafique');
UNLOCK TABLES;

#
# Table structure for table 'Ansec_applynow'
#

DROP TABLE IF EXISTS `Ansec_applynow` CASCADE;
CREATE TABLE `Ansec_applynow` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'Ansec_applynow'
#

LOCK TABLES `Ansec_applynow` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'Ansec_background'
#

DROP TABLE IF EXISTS `Ansec_background` CASCADE;
CREATE TABLE `Ansec_background` (
  `id` INT NOT NULL,
  `picture` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `description` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `timestamp` DATETIME(6) NOT NULL,
  `link` TEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'Ansec_background'
#

LOCK TABLES `Ansec_background` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'Ansec_events'
#

DROP TABLE IF EXISTS `Ansec_events` CASCADE;
CREATE TABLE `Ansec_events` (
  `id` INT NOT NULL,
  `picture` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `description` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `timestamp` DATETIME(6) NOT NULL,
  `link` TEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'Ansec_events'
#

LOCK TABLES `Ansec_events` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'Ansec_orgnizers'
#

DROP TABLE IF EXISTS `Ansec_orgnizers` CASCADE;
CREATE TABLE `Ansec_orgnizers` (
  `id` INT NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `timestamp` DATETIME(6) NOT NULL,
  `phone_no` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'Ansec_orgnizers'
#

LOCK TABLES `Ansec_orgnizers` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'auth_group'
#

DROP TABLE IF EXISTS `auth_group` CASCADE;
CREATE TABLE `auth_group` (
  `id` INT NOT NULL,
  `name` VARCHAR(80) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `sqlite_autoindex_auth_group_1` (`name`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_group'
#

LOCK TABLES `auth_group` WRITE;
INSERT IGNORE INTO `auth_group`(`id`, `name`) VALUES(1, 'Employees');
UNLOCK TABLES;

#
# Table structure for table 'auth_group_permissions'
#

DROP TABLE IF EXISTS `auth_group_permissions` CASCADE;
CREATE TABLE `auth_group_permissions` (
  `id` INT NOT NULL,
  `group_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  INDEX `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  UNIQUE `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`, `permission_id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_group_permissions'
#

LOCK TABLES `auth_group_permissions` WRITE;
INSERT IGNORE INTO `auth_group_permissions`(`id`, `group_id`, `permission_id`) VALUES(1, 1, 32), (2, 1, 44);
UNLOCK TABLES;

#
# Table structure for table 'auth_permission'
#

DROP TABLE IF EXISTS `auth_permission` CASCADE;
CREATE TABLE `auth_permission` (
  `id` INT NOT NULL,
  `content_type_id` INT NOT NULL,
  `codename` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `name` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_permission_content_type_id_2f476e4b` (`content_type_id`),
  UNIQUE `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`, `codename`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_permission'
#

LOCK TABLES `auth_permission` WRITE;
INSERT IGNORE INTO `auth_permission`(`id`, `content_type_id`, `codename`, `name`) VALUES(1, 1, 'add_logentry', 'Can add log entry'), (2, 1, 'change_logentry', 'Can change log entry'), (3, 1, 'delete_logentry', 'Can delete log entry'), (4, 2, 'add_permission', 'Can add permission'), (5, 2, 'change_permission', 'Can change permission'), (6, 2, 'delete_permission', 'Can delete permission'), (7, 3, 'add_group', 'Can add group'), (8, 3, 'change_group', 'Can change group'), (9, 3, 'delete_group', 'Can delete group'), (10, 4, 'add_user', 'Can add user'), (11, 4, 'change_user', 'Can change user'), (12, 4, 'delete_user', 'Can delete user'), (13, 5, 'add_contenttype', 'Can add content type'), (14, 5, 'change_contenttype', 'Can change content type'), (15, 5, 'delete_contenttype', 'Can delete content type'), (16, 6, 'add_session', 'Can add session'), (17, 6, 'change_session', 'Can change session'), (18, 6, 'delete_session', 'Can delete session'), (19, 7, 'add_slider', 'Can add slider'), (20, 7, 'change_slider', 'Can change slider'), (21, 7, 'delete_slider', 'Can delete slider'), (22, 8, 'add_student', 'Can add student'), (23, 8, 'change_student', 'Can change student'), (24, 8, 'delete_student', 'Can delete student'), (25, 9, 'add_staff', 'Can add staff'), (26, 9, 'change_staff', 'Can change staff'), (27, 9, 'delete_staff', 'Can delete staff'), (28, 10, 'add_event', 'Can add event'), (29, 10, 'change_event', 'Can change event'), (30, 10, 'delete_event', 'Can delete event'), (31, 11, 'add_facebook', 'Can add facebook'), (32, 11, 'change_facebook', 'Can change facebook'), (33, 11, 'delete_facebook', 'Can delete facebook'), (34, 12, 'add_courses', 'Can add courses'), (35, 12, 'change_courses', 'Can change courses'), (36, 12, 'delete_courses', 'Can delete courses'), (37, 13, 'add_alumni', 'Can add alumni'), (38, 13, 'change_alumni', 'Can change alumni'), (39, 13, 'delete_alumni', 'Can delete alumni'), (40, 14, 'add_fees', 'Can add fees'), (41, 14, 'change_fees', 'Can change fees'), (42, 14, 'delete_fees', 'Can delete fees'), (43, 15, 'add_acdamic_calander', 'Can add acdamic_ calander'), (44, 15, 'change_acdamic_calander', 'Can change acdamic_ calander'), (45, 15, 'delete_acdamic_calander', 'Can delete acdamic_ calander'), (46, 16, 'add_new', 'Can add new'), (47, 16, 'change_new', 'Can change new'), (48, 16, 'delete_new', 'Can delete new'), (49, 17, 'add_timetable', 'Can add timetable'), (50, 17, 'change_timetable', 'Can change timetable');
UNLOCK TABLES;

#
# Table structure for table 'auth_user'
#

DROP TABLE IF EXISTS `auth_user` CASCADE;
CREATE TABLE `auth_user` (
  `id` INT NOT NULL,
  `password` VARCHAR(128) CHARACTER SET utf8 NOT NULL,
  `last_login` DATETIME(6),
  `is_superuser` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `first_name` VARCHAR(30) CHARACTER SET utf8 NOT NULL,
  `last_name` VARCHAR(30) CHARACTER SET utf8 NOT NULL,
  `email` VARCHAR(254) CHARACTER SET utf8 NOT NULL,
  `is_staff` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `is_active` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `date_joined` DATETIME(6) NOT NULL,
  `username` VARCHAR(150) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `sqlite_autoindex_auth_user_1` (`username`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_user'
#

LOCK TABLES `auth_user` WRITE;
INSERT IGNORE INTO `auth_user`(`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `username`) VALUES(1, 'pbkdf2_sha256$36000$TUtfiG7SmPyJ$G5CP7VexAURmjBHpx1BdXODKBS7AevqkySG0bLnD4aY=', '2018-09-29 18:54:04.298035', 1, "", "", 'admin@gmail.com', 1, 1, '2017-12-11 11:09:06.028968', 'admin'), (2, 'pbkdf2_sha256$36000$49VmNkuyWejE$ZAnD0U2NSFVh0CxrepTazsMKM5HlJ39qzwl4bGdAXis=', '2018-02-13 10:34:59.283802', 0, "", "", "", 1, 1, '2018-02-13 10:33:00', 'Aftab'), (3, 'pbkdf2_sha256$36000$QbnPpK3IXKpj$TW4Py2sGdSYLWXuR5pFEnT7ewHGntq4CYLgA1k62xFc=', NULL, 1, "", "", 'surhan@gmail.com', 1, 1, '2018-07-20 12:24:02.795124', 'surhan');
UNLOCK TABLES;

#
# Table structure for table 'auth_user_groups'
#

DROP TABLE IF EXISTS `auth_user_groups` CASCADE;
CREATE TABLE `auth_user_groups` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_user_groups_group_id_97559544` (`group_id`),
  INDEX `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  UNIQUE `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`, `group_id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_user_groups'
#

LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'auth_user_user_permissions'
#

DROP TABLE IF EXISTS `auth_user_user_permissions` CASCADE;
CREATE TABLE `auth_user_user_permissions` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`),
  INDEX `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  UNIQUE `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`, `permission_id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'auth_user_user_permissions'
#

LOCK TABLES `auth_user_user_permissions` WRITE;
INSERT IGNORE INTO `auth_user_user_permissions`(`id`, `user_id`, `permission_id`) VALUES(1, 2, 29);
UNLOCK TABLES;

#
# Table structure for table 'django_admin_log'
#

DROP TABLE IF EXISTS `django_admin_log` CASCADE;
CREATE TABLE `django_admin_log` (
  `id` INT NOT NULL,
  `object_id` LONGTEXT CHARACTER SET utf8,
  `object_repr` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `action_flag` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `change_message` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `content_type_id` INT,
  `user_id` INT NOT NULL,
  `action_time` DATETIME(6) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `django_admin_log_user_id_c564eba6` (`user_id`),
  INDEX `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'django_admin_log'
#

LOCK TABLES `django_admin_log` WRITE;
INSERT IGNORE INTO `django_admin_log`(`id`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`, `action_time`) VALUES(1, '1', 'Slider object', 1, '[{"added": {}}]', 7, 1, '2017-12-11 11:16:22.058501'), (2, '1', 'Slider object', 2, '[{"changed": {"fields": ["slider1"]}}]', 7, 1, '2017-12-11 19:37:07.527617'), (3, '1', 'Slider object', 2, '[{"changed": {"fields": ["slider2"]}}]', 7, 1, '2017-12-11 19:37:38.786327'), (4, '1', 'Slider object', 2, '[{"changed": {"fields": ["slider3"]}}]', 7, 1, '2017-12-11 19:38:29.882967'), (5, '1', 'Slider object', 2, '[{"changed": {"fields": ["slider1"]}}]', 7, 1, '2017-12-12 07:38:12.931948'), (6, '1', 'Student object', 1, '[{"added": {}}]', 8, 1, '2018-02-01 18:44:17.334054'), (7, '1', 'Student object', 2, '[{"changed": {"fields": ["name", "rollno"]}}]', 8, 1, '2018-02-01 18:44:32.751483'), (8, '1', 'Student object', 2, '[]', 8, 1, '2018-02-01 18:44:42.139491'), (9, '2', 'Student object', 1, '[{"added": {}}]', 8, 1, '2018-02-01 18:44:53.824763'), (10, '1', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-11 08:10:50.668493'), (11, '2', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-11 16:43:01.364910'), (12, '3', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:44:07.432835'), (13, '4', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:44:41.084338'), (14, '5', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:46:27.826214'), (15, '6', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:47:00.958051'), (16, '3', 'Staff object', 2, '[{"changed": {"fields": ["qualification"]}}]', 9, 1, '2018-02-12 06:50:41.224248'), (17, '7', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:52:02.601989'), (18, '8', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-02-12 06:52:46.801593'), (19, '8', 'Staff object', 2, '[{"changed": {"fields": ["linkedin"]}}]', 9, 1, '2018-02-12 07:27:57.165386'), (20, '1', 'Event object', 1, '[{"added": {}}]', 10, 1, '2018-02-12 15:31:59.492370'), (21, '2', 'Event object', 1, '[{"added": {}}]', 10, 1, '2018-02-12 15:33:51.931809'), (22, '3', 'Event object', 1, '[{"added": {}}]', 10, 1, '2018-02-12 15:34:19.545786'), (23, '1', 'Facebook object', 1, '[{"added": {}}]', 11, 1, '2018-02-13 07:08:13.348798'), (24, '2', 'Staff object', 2, '[{"changed": {"fields": ["profile"]}}]', 9, 1, '2018-02-13 09:56:36.147534'), (25, '3', 'Staff object', 2, '[{"changed": {"fields": ["profile"]}}]', 9, 1, '2018-02-13 09:56:56.826233'), (26, '4', 'Staff object', 2, '[{"changed": {"fields": ["profile"]}}]', 9, 1, '2018-02-13 09:57:49.790809'), (27, '2', 'Aftab', 1, '[{"added": {}}]', 4, 1, '2018-02-13 10:33:00.845426'), (28, '2', 'Aftab', 2, '[]', 4, 1, '2018-02-13 10:33:30.496272'), (29, '2', 'Aftab', 2, '[{"changed": {"fields": ["is_staff"]}}]', 4, 1, '2018-02-13 10:34:38.525370'), (30, '1', 'Facebook object', 2, '[{"changed": {"fields": ["embededcode"]}}]', 11, 1, '2018-02-14 19:57:29.997621'), (31, '1', 'Facebook object', 2, '[{"changed": {"fields": ["embededcode"]}}]', 11, 1, '2018-02-14 20:11:19.647761'), (32, '1', 'Courses object', 1, '[{"added": {}}]', 12, 1, '2018-03-06 20:45:03.867788'), (33, '1', 'Courses object', 2, '[]', 12, 1, '2018-03-06 20:46:18.355779'), (34, '1', 'Courses object', 2, '[]', 12, 1, '2018-03-06 20:46:25.191510'), (35, '1', 'Courses object', 2, '[]', 12, 1, '2018-03-06 20:49:15.633213'), (36, '1', 'Courses object', 2, '[{"changed": {"fields": ["semester"]}}]', 12, 1, '2018-03-06 20:55:57.027519'), (37, '1', 'Event Coming Soon-Be ready for something new', 2, '[{"changed": {"fields": ["timestamp"]}}]', 10, 1, '2018-04-19 18:00:00.374449'), (38, '4', 'Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh', 1, '[{"added": {}}]', 10, 1, '2018-04-19 18:34:23.867888'), (39, '1', 'Alumni object', 1, '[{"added": {}}]', 13, 1, '2018-04-28 19:51:37.281570'), (40, '1', 'Alumni object', 2, '[{"changed": {"fields": ["color"]}}]', 13, 1, '2018-04-28 19:53:06.899335'), (41, '1', 'Alumni object', 2, '[{"changed": {"fields": ["occupation"]}}]', 13, 1, '2018-04-28 19:53:14.983552'), (42, '1', 'Alumni object', 2, '[{"changed": {"fields": ["courses", "occupation"]}}]', 13, 1, '2018-04-28 19:58:05.581489'), (43, '1', 'Alumni object', 2, '[{"changed": {"fields": ["full_Name"]}}]', 13, 1, '2018-05-30 17:01:15.020522'), (44, '4', 'Abasyn Cultural Festival 18-Lorem Ipsum adalah text contoh digun akan didalam industri pence taka types etting adalah text contoh', 3, "", 10, 1, '2018-06-04 07:59:48.692174'), (45, '2', 'Staff object', 2, '[{"changed": {"fields": ["designation"]}}]', 9, 1, '2018-06-04 16:06:04.184149'), (46, '9', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-06-04 16:50:20.385708'), (47, '10', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-06-04 16:52:29.860844'), (48, '1', 'Staff object', 2, '[{"changed": {"fields": ["name"]}}]', 9, 1, '2018-06-05 12:22:05.711444'), (49, '11', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-06-05 12:23:40.609689'), (50, '12', 'Staff object', 1, '[{"added": {}}]', 9, 1, '2018-06-05 12:25:05.130058');
UNLOCK TABLES;

#
# Table structure for table 'django_content_type'
#

DROP TABLE IF EXISTS `django_content_type` CASCADE;
CREATE TABLE `django_content_type` (
  `id` INT NOT NULL,
  `app_label` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `model` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`, `model`)
) ENGINE=MyISAM;

#
# Dumping data for table 'django_content_type'
#

LOCK TABLES `django_content_type` WRITE;
INSERT IGNORE INTO `django_content_type`(`id`, `app_label`, `model`) VALUES(1, 'admin', 'logentry'), (2, 'auth', 'permission'), (3, 'auth', 'group'), (4, 'auth', 'user'), (5, 'contenttypes', 'contenttype'), (6, 'sessions', 'session'), (7, 'slider', 'slider'), (8, 'slider', 'student'), (9, 'slider', 'staff'), (10, 'slider', 'event'), (11, 'slider', 'facebook'), (12, 'slider', 'courses'), (13, 'alumni', 'alumni'), (14, 'slider', 'fees'), (15, 'slider', 'acdamic_calander'), (16, 'slider', 'new'), (17, 'slider', 'timetable'), (18, 'slider', 'online_admission'), (19, 'Ansec', 'events'), (20, 'Ansec', 'applynow'), (21, 'Ansec', 'background'), (22, 'Ansec', 'orgnizers'), (23, 'slider', 'clo'), (24, 'slider', 'message'), (25, 'slider', 'timetablegraduate'), (26, 'slider', 'download'), (27, 'slider', 'permission'), (28, 'slider', 'acdamic_calander_graduate'), (29, 'slider', 'datesheet'), (30, 'slider', 'banner');
UNLOCK TABLES;

#
# Table structure for table 'django_migrations'
#

DROP TABLE IF EXISTS `django_migrations` CASCADE;
CREATE TABLE `django_migrations` (
  `id` INT NOT NULL,
  `app` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  `name` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  `applied` DATETIME(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'django_migrations'
#

LOCK TABLES `django_migrations` WRITE;
INSERT IGNORE INTO `django_migrations`(`id`, `app`, `name`, `applied`) VALUES(1, 'contenttypes', '0001_initial', '2017-12-11 11:08:34.151773'), (2, 'auth', '0001_initial', '2017-12-11 11:08:34.209862'), (3, 'admin', '0001_initial', '2017-12-11 11:08:34.251812'), (4, 'admin', '0002_logentry_remove_auto_add', '2017-12-11 11:08:34.295242'), (5, 'contenttypes', '0002_remove_content_type_name', '2017-12-11 11:08:34.379298'), (6, 'auth', '0002_alter_permission_name_max_length', '2017-12-11 11:08:34.419325'), (7, 'auth', '0003_alter_user_email_max_length', '2017-12-11 11:08:34.476372'), (8, 'auth', '0004_alter_user_username_opts', '2017-12-11 11:08:34.525379'), (9, 'auth', '0005_alter_user_last_login_null', '2017-12-11 11:08:34.571360'), (10, 'auth', '0006_require_contenttypes_0002', '2017-12-11 11:08:34.595383'), (11, 'auth', '0007_alter_validators_add_error_messages', '2017-12-11 11:08:34.639439'), (12, 'auth', '0008_alter_user_username_max_length', '2017-12-11 11:08:34.707482'), (13, 'sessions', '0001_initial', '2017-12-11 11:08:34.738503'), (14, 'slider', '0001_initial', '2017-12-11 11:14:24.953617'), (15, 'slider', '0002_student', '2018-02-01 18:43:08.722075'), (16, 'slider', '0003_staff', '2018-02-11 08:08:05.934742'), (17, 'slider', '0004_auto_20180212_1224', '2018-02-12 07:24:33.104214'), (18, 'slider', '0005_event', '2018-02-12 15:24:51.648603'), (19, 'slider', '0006_facebook', '2018-02-13 07:02:53.211808'), (20, 'slider', '0007_auto_20180213_1207', '2018-02-13 07:07:46.212697'), (21, 'slider', '0008_courses', '2018-03-06 20:37:15.171632'), (22, 'slider', '0009_auto_20180307_0145', '2018-03-06 20:45:50.018473'), (23, 'slider', '0010_auto_20180307_0155', '2018-03-06 20:55:25.017992'), (24, 'slider', '0011_event_timestamp', '2018-04-19 17:54:53.662725'), (25, 'alumni', '0001_initial', '2018-04-28 19:50:46.417393'), (26, 'alumni', '0002_auto_20180429_0056', '2018-04-28 19:57:44.933184'), (27, 'slider', '0012_auto_20180604_2122', '2018-06-04 16:23:02.593148'), (28, 'slider', '0013_auto_20180625_1806', '2018-06-25 13:06:19.274318'), (29, 'slider', '0014_acdamic_calander', '2018-06-27 11:42:28.246958'), (30, 'slider', '0015_new', '2018-06-27 13:08:45.658614'), (31, 'slider', '0016_auto_20180903_1847', '2018-09-03 13:47:45.202878'), (32, 'slider', '0017_auto_20180903_1849', '2018-09-03 13:50:05.739179'), (33, 'slider', '0018_auto_20180903_1854', '2018-09-03 13:54:57.395019'), (34, 'slider', '0019_timetable', '2018-09-04 12:29:01.081244'), (35, 'slider', '0020_new_link', '2018-09-04 12:42:27.615005'), (36, 'slider', '0021_online_admission', '2018-09-13 20:12:25.391546'), (37, 'slider', '0022_auto_20180914_0114', '2018-09-13 20:14:55.081377'), (38, 'slider', '0023_auto_20180914_0116', '2018-09-13 20:16:13.205750'), (39, 'slider', '0024_auto_20180914_0116', '2018-09-13 20:16:30.675635'), (40, 'Ansec', '0001_initial', '2018-09-16 18:08:21.480393'), (41, 'Ansec', '0002_applynow_background_orgnizers', '2018-09-16 19:03:54.047733'), (42, 'Ansec', '0003_auto_20180917_0003', '2018-09-16 19:03:54.100769'), (43, 'slider', '0025_clo', '2018-09-17 17:48:55.460956'), (44, 'slider', '0026_message', '2018-09-21 16:09:59.072375'), (45, 'slider', '0027_timetablegraduate', '2018-09-21 16:17:17.328883'), (46, 'slider', '0028_auto_20180922_1648', '2018-09-22 11:48:57.428727'), (47, 'slider', '0029_permission', '2018-09-22 17:18:39.072692'), (48, 'slider', '0030_auto_20180922_2223', '2018-09-22 17:23:38.091420'), (49, 'slider', '0031_auto_20180922_2248', '2018-09-22 17:48:04.792575'), (50, 'slider', '0032_acdamic_calander_graduate', '2018-09-27 18:14:13.024047');
UNLOCK TABLES;

#
# Table structure for table 'django_session'
#

DROP TABLE IF EXISTS `django_session` CASCADE;
CREATE TABLE `django_session` (
  `session_key` VARCHAR(40) CHARACTER SET utf8 NOT NULL,
  `session_data` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `expire_date` DATETIME(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  INDEX `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM;

#
# Dumping data for table 'django_session'
#

LOCK TABLES `django_session` WRITE;
INSERT IGNORE INTO `django_session`(`session_key`, `session_data`, `expire_date`) VALUES('vi0ku4d9phhcbllcuz7ak8bxwo7e3bsp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2017-12-25 11:15:11.456514'), ('o377d77zd7v7fzgtjmrylyw5nje1hz7d', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-02-28 04:35:32.732837'), ('9u35n3d4rl6n1uj4df13kbf2vunruacy', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-03-20 09:00:39.423936'), ('arrfhwegcfm3jsf7e2k4vw99yzobvjdf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-04-05 07:49:02.263173'), ('ra0gy5kyo2h21k9czxg7euphs0stub2g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-05-03 17:35:27.643309'), ('m80a4akblio3mv0k12cycltau066j3l5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-13 17:00:29.762712'), ('kbvlj0vajka5lrrwlwhe4whoqfwiex3q', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 07:59:36.046392'), ('6xvhsb9b4qdbqram4aahm7tw49doiv2t', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-18 16:04:32.598927'), ('69v6g0l5kbfy8iccd05qvxzvmvqwbo2l', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-06-19 12:21:52.908539'), ('ft17fhmdmxls5hyysdm5g941av5e6ns5', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-05 13:27:47.429994'), ('mzar8xbkdbjm9ic67sit65eo5j4pgnnk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-08 18:58:49.205520'), ('xdguu8n37a5w187yt36fa4d6wc0nzt28', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-07-10 18:53:57.431166'), ('69qzkhyzmnxrofbmjxh327fnyk8t2iws', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-03 12:09:20.702517'), ('gq5rouxawpee0shhb7aja5w555u2gzvk', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-08-17 13:17:09.899692'), ('miuktc9tph7k31cjojci7eqgs6zcyjpb', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:11:12.197728'), ('1fbsrvlqerfuwejfbhu7lnn6q5vb6vn3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 13:38:25.477331'), ('813yr9uw3blqmd261agngrkbbvedvr0g', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-17 18:15:41.045819'), ('mnrvw3nw5pjrv87te4dqj43o32cxzwed', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-18 11:21:59.189032'), ('2npi89sgo5tidom30q10prh5g49ky07a', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:13:19.906796'), ('2w5zeo55g7nuczfxqm7qyqa84gum7w5s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-27 20:45:40.878134'), ('c58d42uax6ixe4e58szxme1zgdificz7', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-09-28 17:03:42.487912'), ('lqg02xuuesgsxjj1mng8s6jhnh71z95j', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:36:00.296469'), ('6qmuxlsfdi59cgd6zqkphqjh5hh8elub', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-01 17:49:40.451009'), ('mxkk227rhj21iakn5hx1ropklourdxtp', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-06 11:48:11.412916'), ('s6pdj8gc1s2jq6n069wlzvqkes6smpxf', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-10 04:16:15.529263'), ('5lu905bli6zlc4x5srjgjsbrxch9q19s', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-11 18:09:27.752026'), ('i6waukf391ien98xm6ejtb6g27xea4uj', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 09:45:59.924558'), ('jiggohyudr7xvhsfurrerua6im2eay6o', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:29:52.393284'), ('0iwsasx6hrgmgprxen58wktsk6vea31u', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:47:27.453651'), ('0z83zxf23tmf2n0um9vtwhet3jk8xyh1', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 14:57:18.829267'), ('7z5p3hlblfgrvw7qlrm7kymoztexelle', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 18:32:31.066892'), ('ojl0hjympv568r5ih8ndc5my4rjurqn8', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-12 19:24:28.572012'), ('i5x61qzrc7quy0wzgkbe44i89cbavvx3', 'N2E0ZWMzY2E3ZWY2ZTQzMjk4OTUyNzY0MTM0YWQ5NTAwY2JhM2ZmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjFjMjdmNzIwNjgxNjEyZWFhNGRjNmIxN2NhYmE4MDRkYmQ5MjQxIn0=', '2018-10-13 18:54:04.322052');
UNLOCK TABLES;

#
# Table structure for table 'addata.slider_acdamic_calander'
#

DROP TABLE IF EXISTS `addata.slider_acdamic_calander` CASCADE;
CREATE TABLE `slider_acdamic_calander` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_acdamic_calander'
#

LOCK TABLES `addata.slider_acdamic_calander` WRITE;
INSERT IGNORE INTO `slider_acdamic_calander`(`id`, `link`) VALUES(2, 'https://drive.google.com/file/d/1YDZubokmzvKW2ijWaKZIVbPh19VVyz_w/view?usp=sharing');
UNLOCK TABLES;

#
# Table structure for table 'addata.slider_acdamic_calander_graduate'
#

DROP TABLE IF EXISTS `adddata.slider_acdamic_calander_graduate` CASCADE;
CREATE TABLE `slider_acdamic_calander_graduate` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'addata.slider_acdamic_calander_graduate'
#

LOCK TABLES `addata.slider_acdamic_calander_graduate` WRITE;
INSERT IGNORE INTO `slider_acdamic_calander_graduate`(`id`, `link`, `title`) VALUES(1, 'https://drive.google.com/file/d/1-4rvZWyxfSOy4hdpjynAuOREpRijuXGT/view?usp=sharing', 'MS Calender');
UNLOCK TABLES;

#
# Table structure for table 'slider_banner'
#

DROP TABLE IF EXISTS `slider_banner` CASCADE;
CREATE TABLE `slider_banner` (
  `id` INT NOT NULL,
  `image` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_banner'
#

LOCK TABLES `slider_banner` WRITE;
INSERT IGNORE INTO `slider_banner`(`id`, `image`) VALUES(1, 'images/home-01-846x1002.JPG');
UNLOCK TABLES;

#
# Table structure for table 'slider_clo'
#

DROP TABLE IF EXISTS `slider_clo` CASCADE;
CREATE TABLE `slider_clo` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_clo'
#

LOCK TABLES `slider_clo` WRITE;
INSERT IGNORE INTO `slider_clo`(`id`, `link`, `title`) VALUES(2, 'https://drive.google.com/file/d/1OuJHB7YpcHEAM0kmKQJBLrS5N-hUFUAj/view?usp=sharing', 'Electrical'), (3, 'https://drive.google.com/file/d/1zIRR0Z8udPMffFBUb0oSdAZWM7hFc4Fl/view', 'Civil'), (4, 'https://docs.google.com/spreadsheets/d/1TlYCy7JSoflUXMp_62lvRmzAIxQX0se5CUIfo_x_3iw/edit?ts=5acc58e9#gid=896371080', 'Computing');
UNLOCK TABLES;

#
# Table structure for table 'slider_datesheet'
#

DROP TABLE IF EXISTS `slider_datesheet` CASCADE;
CREATE TABLE `slider_datesheet` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `visibility` LONGTEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_datesheet'
#

LOCK TABLES `slider_datesheet` WRITE;
INSERT IGNORE INTO `slider_datesheet`(`id`, `link`, `title`, `visibility`) VALUES(4, 'https://drive.google.com/file/d/1sqrB5CkeDguy20h8Ec7UdIwoViu9vyFz/view?usp=sharing', 'MS Datesheet', 1);
UNLOCK TABLES;

#
# Table structure for table 'slider_download'
#

DROP TABLE IF EXISTS `slider_download` CASCADE;
CREATE TABLE `slider_download` (
  `id` INT NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `file` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_download'
#

LOCK TABLES `slider_download` WRITE;
INSERT IGNORE INTO `slider_download`(`id`, `title`, `file`) VALUES(1, 'Application Form', 'downloads/Application.pdf'), (2, 'Prospectus', 'downloads/pros.pdf'), (3, 'Student Handbook', 'downloads/Handbook.pdf');
UNLOCK TABLES;

#
# Table structure for table 'slider_event'
#

DROP TABLE IF EXISTS `slider_event` CASCADE;
CREATE TABLE `slider_event` (
  `id` INT NOT NULL,
  `picture` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `description` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `timestamp` DATETIME(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_event'
#

LOCK TABLES `slider_event` WRITE;
INSERT IGNORE INTO `slider_event`(`id`, `picture`, `title`, `description`, `timestamp`) VALUES(1, 'images/logo.png', 'ANSEC 18 Coming Soon', 'ANSEC 18 Coming Soon', '2018-09-03 10:54:53'), (2, 'images/orientation.jpeg', 'Orientation Session Fall 18', 'Orientation Session Fall 18 will be held on 27th August 2018 at Main Auditorium, AUIC.', '2018-08-27 09:00:00'), (3, 'images/38125799_2142134129333482_6496561974241918976_n.jpg', 'Entry Test Fall - 18', 'Abasyn University Islamabad Campus warmly welcome to all the candidates for entry test Fall 18.', '2018-08-02 09:00:00');
UNLOCK TABLES;

#
# Table structure for table 'slider_fees'
#

DROP TABLE IF EXISTS `slider_fees` CASCADE;
CREATE TABLE `slider_fees` (
  `id` INT NOT NULL,
  `program_name` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `fees` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_fees'
#

LOCK TABLES `slider_fees` WRITE;
INSERT IGNORE INTO `slider_fees`(`id`, `program_name`, `fees`) VALUES(1, 'BE- Civil Engineering', 8150), (2, 'BE- Electrical Engineering', 4250), (3, 'Pharm-D', 3800), (4, 'BS- Software Engineering', 3500), (5, 'BS- Computer Science', 2250), (6, 'BS- Microbiology', 2100), (7, 'BS- Biotechnology', 2100), (8, 'BS- Telecommunication & Networks', 2100), (9, 'Bachelor in Business Administration', 2100), (10, 'Bachelor of Commerce', 2000), (11, 'BS- Development Studies', 2000), (12, 'B.Tech (Civil/Electrical)', 1500), (13, 'MS- Computer Science', 4500), (14, 'MS- Software Engineering', 4500), (15, 'MS- Telecommunication & Networks', 4500), (16, 'MS- Electrical Engineering', 4500), (17, 'MS- Management Science', 4500), (18, 'MS- Engineering Management', 4500), (19, 'MS- Industrial Management', 4500), (20, 'MS- Logistic and Supply Chain Management', 4500), (21, 'MS- Project Management', 4500), (22, 'MSc- Microbiology', 2500), (23, 'Master in Business Administration (1.5 - 2 year)', 2500), (24, 'Master in Business Administration (2 - 2.5 year)', 2500), (25, 'Master in Business Administration (3.5 year)', 2500), (26, 'Master of Commerce', 2000), (27, 'MS- Development Studies', 2200);
UNLOCK TABLES;

#
# Table structure for table 'slider_message'
#

DROP TABLE IF EXISTS `slider_message` CASCADE;
CREATE TABLE `slider_message` (
  `id` INT NOT NULL,
  `message` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_message'
#

LOCK TABLES `slider_message` WRITE;
INSERT IGNORE INTO `slider_message`(`id`, `message`, `link`) VALUES(1, 'Admissions are open', '#');
UNLOCK TABLES;

#
# Table structure for table 'slider_new'
#

DROP TABLE IF EXISTS `slider_new` CASCADE;
CREATE TABLE `slider_new` (
  `id` INT NOT NULL,
  `picture` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `description` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `timestamp` DATETIME(6) NOT NULL,
  `link` TEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_new'
#

LOCK TABLES `slider_new` WRITE;
INSERT IGNORE INTO `slider_new`(`id`, `picture`, `title`, `description`, `timestamp`, `link`) VALUES(1, 'images/Pages.jpg', 'Official Page of AUIC', 'Official Social Pages of AUIC.', '2018-09-03 13:12:42', '#'), (2, 'images/12.jpg', 'Youm e Ashora', 'AUIC will reamin closed on 20th & 21st on account of Youm e Ashora.', '2018-09-26 04:22:43', '#'), (3, 'images/Ambassadorship-Call.jpg', 'Ambassador\'s Call', 'Ambassador\'s call for ANSEC18 is officially open.', '2018-09-26 04:24:47', 'https://goo.gl/forms/dUP1T2wrTI3ZClMB3');
UNLOCK TABLES;

#
# Table structure for table 'slider_online_admission'
#

DROP TABLE IF EXISTS `slider_online_admission` CASCADE;
CREATE TABLE `slider_online_admission` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_online_admission'
#

LOCK TABLES `slider_online_admission` WRITE;
INSERT IGNORE INTO `slider_online_admission`(`id`, `link`) VALUES(1, 'http://35.172.219.204/admissionsystem/AA/bootstrap/index.php');
UNLOCK TABLES;

#
# Table structure for table 'slider_permission'
#

DROP TABLE IF EXISTS `slider_permission` CASCADE;
CREATE TABLE `slider_permission` (
  `id` INT NOT NULL,
  `file` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `title` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_permission'
#

LOCK TABLES `slider_permission` WRITE;
INSERT IGNORE INTO `slider_permission`(`id`, `file`, `title`) VALUES(1, 'permissions/HEC_Permission_for_Start_of_Operation.jpg', 'HEC'), (2, 'permissions/BECE_1st_Accreditation_.jpg', 'Civil'), (3, 'permissions/BEEE_2013__2014_Re-Accr..pdf', 'Electrical'), (4, 'permissions/Accreditation_of_BSSE_Program.pdf', 'Computing');
UNLOCK TABLES;

#
# Table structure for table 'slider_slider'
#

DROP TABLE IF EXISTS `slider_slider` CASCADE;
CREATE TABLE `slider_slider` (
  `id` INT NOT NULL,
  `image` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_slider'
#

LOCK TABLES `slider_slider` WRITE;
INSERT IGNORE INTO `slider_slider`(`id`, `image`) VALUES(1, 'silder/Admission_ad_for_07_Oct_2018.jpg'), (2, 'silder/contact.jpeg');
UNLOCK TABLES;

#
# Table structure for table 'slider_staff'
#

DROP TABLE IF EXISTS `slider_staff` CASCADE;
CREATE TABLE `slider_staff` (
  `id` INT NOT NULL,
  `name` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `designation` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `qualification` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  `profile` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `department` TEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_staff'
#

LOCK TABLES `slider_staff` WRITE;
INSERT IGNORE INTO `slider_staff`(`id`, `name`, `designation`, `qualification`, `profile`, `department`) VALUES(15, 'Dr. Amjad Mahmood', 'Executive Director', 'Ph.D', 'images/Dr._Amjad_Mahmood.jpg', 'computing'), (16, 'Dr. Muhammad Yousaf Khan', 'Associate Professor', 'PhD (Software Engineering) , Abertay University Dundee , Scotland,Uk', 'images/Dr._Muhammad_Yousaf_Khan_oNsjFC3.jpg', 'computing'), (17, 'Dr. Sidra Sultana', 'HOD', 'PhD (Computer Software Engineering) , NUST ,Pakistan', 'images/Sidra_Sultana.jpg', 'computing'), (18, 'Mr. Abdul Basit', 'Assistant Professor', 'MS (Telecomunication) , IQRA University, Islamabad', 'images/Abdul_Basit.jpg', 'computing'), (19, 'Mr. Abdul Hannan', 'Assistant Professor', 'MS', 'images/Hannan.jpg', 'computing'), (20, 'Mr.Muhammad Idrees', 'Assistant Professor', 'MS (Aplied Mathematics) , NED University of Engineering and Technology, Karachi', 'images/IDREES.jpg', 'computing'), (21, 'Ms. Sameen Javed', 'Lecturer', 'MS (Software Engineering) , NUST', 'images/Sameen_Javed.jpg', 'computing'), (22, 'Ms. Naveen Ahmed', 'Lecturer', 'MS (Software Engineering ) , NUST', 'images/NAVEEN_AHMED_.jpg', 'computing'), (26, 'Ms. Madiha Hena', 'Lecturer', 'MS (Telecommunication and Networks) , Abasyn University, Islamabad', 'images/MADIHA_HENA.jpg', 'computing'), (27, 'Mr. Asad Hanif', 'Lecturer', 'MS (Computer Science ) , IQRA University, Islamabad', 'images/Asad_Hanif_Q1EdIEY.jpg', 'computing'), (28, 'Ms. Madiha Naveed', 'Lab Engineer/Coordinator', 'MS (Management Science ) , Abasyn University Peshawar', 'images/MADIHA_NAVEED_LAB_ENGINEER_OSGwh8t.jpg', 'computing'), (29, 'Mr. Muhammad Murtaza', 'Lab Engineer', 'BS (Computer Engineering) , UET Taxila', 'images/Muhammad_Murtaza_K8mzqNt.jpg', 'computing'), (31, 'Dr.M.Noman Jafri', 'Professor & Dean', 'PhD (Electrical Engineering) , University of Ottawa, Canada', 'images/Dr._M.Noman_Jafri_IeoWkTK.jpg', 'electrical'), (32, 'Dr. Imran Shafi', 'Associate Professor', 'PhD ( Computer Engineering) , UET, Taxila', 'images/Dr._Imran_Shafi.jpg', 'electrical'), (33, 'Dr. Waqar Ahmed Malik', 'Associate Professor/HOD', 'PhD', 'images/1.jpg', 'electrical'), (34, 'Mr. Yasir Javed', 'Assistant Professor', 'MS (Computer System Engineering) , UET, Taxila', 'images/Yasir_Javed.jpg', 'electrical'), (35, 'Mr. Wasif Latif', 'Assistant Professor', 'MS (Telecom and Networks) ,  IQRA University, Islamabad', 'images/Wasif_Latif.jpg', 'electrical'), (36, 'Mr Kamran Qureshi', 'Lecturer', 'MS (Electronics Design) , Mid-Sweden University , Sweden', 'images/Kamran_Qureshi.jpg', 'electrical'), (37, 'Mr. Shahzaib Iqbal', 'Lecturer', 'MS (Electrical Engineering) , Abasyn University', 'images/Shahzeb.jpg', 'electrical'), (38, 'Ms.Rashida Khalid', 'Lecturer', 'MS (Electrical Engineering) , COMSATS, Islamabad', 'images/Rashida_Khalid.jpg', 'electrical'), (39, 'Ms. Laiba Jawad', 'Lab Engineer/Coordinator', 'BS (Electrical Engineering) , UET Taxila', 'images/Laiba.jpg', 'electrical'), (40, 'Mr. Rafi-u-Zman', 'Lab Engineer', 'BS (Electronic Engineering) , International  Islamic University', 'images/RAFI-U-ZAMAN.jpg', 'electrical'), (41, 'Mr. Asim-ul-Haq', 'Lab Engineer', 'BS (Electrical Engineering) , COMSATS, Islamabad', 'images/Asim_Ul_Haq-Picture.jpg', 'electrical'), (42, 'Dr. Muhammad Salik Javaid', 'HoD/Professor', 'Ph.D (Civil Engineering) , Georgia Istitute of Technology, Atlanta , USA', 'images/Salik_Javaid.jpg', 'civil'), (43, 'Ms. Laila Khalid', 'Assistant Professor', 'MS (Civil Engineering) , NUST', 'images/Laila_Khalid_.jpg', 'civil'), (44, 'Mr. Khan Shahid Kamal Khan', 'Assistant Professor', 'MS (Construction Engineering and Management) , NUST', 'images/KHAN_SHAHID_KAMAL_KHAN.jpg', 'civil'), (45, 'Ms. Naheed Akhtar', 'Assistant Professor', 'MS (Civil Engineering) , UET, Taxila', 'images/Naheed_Akhtar_.jpg', 'civil'), (46, 'Mr. Muhammad Farjad Sami.', 'Lecturer', 'MS (Geotechnical Engineering) , NUST', 'images/Farjad_sami.jpg', 'civil'), (47, 'Mr. Muhammad Waqas Malik', 'Lecturer', 'MS (Structural Engineering) , NUST', 'images/Muhammad_Waqas_Malik.jpg', 'civil'), (48, 'Mr. Muhammad Sarfraz', 'Junior Lecture', 'MS (Geotechnical Engineering) , NUST', 'images/MUHAMMAD_SARFARAZ_FAIZ_.jpg', 'civil'), (49, 'Mr.Zeeshan Khalil', 'Lab Engineer', 'BS (Civil Engineering) , UET Taxila', 'images/Muhammad_Zeeshan_Khalil.jpg', 'civil'), (50, 'Mr. Muhammad Shahrukh Pasha', 'Lab Engineer', 'BS (Civil Engineering) , UET Taxila', 'images/M._SHAHRUKH_PASHA.jpg', 'civil'), (51, 'Ms. Khola Ilyas', 'Assistant Professor/HoD', 'MS (Management Science ) , IQRA University, Islamabad', 'images/khola_Ilyas.jpg', 'management-sciences'), (52, 'Mr. Khursheed Ali', 'Assistant Professor', 'M.Phil (English) , University of Hazara, Mansehra', 'images/Khursheed_Ali.jpg', 'management-sciences'), (53, 'Mr. Furqan Saeed', 'Lecturer/ Program Coordinator', 'MBA (Management Science ) , Bahria University, Islamabad', 'images/Furqan_Saeed.jpg', 'management-sciences'), (54, 'Ms. Aisha Razzaq', 'Lecturer', 'MS', 'images/Aisha_Razzaq_.jpg', 'management-sciences'), (55, 'Mr. Roman Khan', 'Lecturer', 'MBA (Management Science ) , Quaid-e-Azam University Islamabad', 'images/Roman_Khan.jpg', 'management-sciences'), (56, 'Dr. Muhammad Akhlaq Mughal', 'HoD/ Associate Professor', 'Ph.D (Pharmacy) , University Of Peshawar', 'images/Dr_Akhlaq.jpg', 'life-scienecs'), (58, 'Dr. Sajjad Ahmad', 'Assistant Professor/Coordinator', 'Ph.D (Pharmaceutical Science) , University of Malakand', 'images/download_sxowGrD.png', 'life-scienecs'), (59, 'Dr. Fariha Masood', 'Assistant Professor', 'Ph.D (Biotechnology) , Quaid-e-Azam University Islamabad', 'images/DR._FARIHA_MASOOD.jpg', 'life-scienecs'), (60, 'Mr. Muhammad Rashid', 'Assistant Professor', 'M.Phill (Pharmacology) , University of Mlakand', 'images/download_iTtwao8.png', 'life-scienecs'), (61, 'Mr. Allah Nawaz Khan', 'Lecturer/HOD Life Science', 'MS (Microbiology) , COMSATS, Islamabad', 'images/Allah_Nawaz_Khan.jpg', 'life-scienecs'), (62, 'Ms. Tabinda Azim', 'Lecturer', 'M.Phil (Pharmacology) , University of Sargogha', 'images/tabinda.jpg', 'life-scienecs'), (63, 'Mr Muhammad Wasim', 'Lecturer', 'M.Phil (Pharmaceutical Chemistry) , Riphah International University, Islamabad', 'images/muhammad_Wasim.JPG', 'life-scienecs'), (64, 'Ms. Rabaila Riaz', 'Lecturer', 'M.Phil (Biotechnology and Information) , BUITEMS , Quetta', 'images/Rabaila_Riaz.jpg', 'life-scienecs'), (65, 'Ms. Wajiha Khalid', 'Lecturer', 'M.Phil (Pharmaceutics) , University of Lahore', 'images/Wajeeha_khalid.jpg', 'life-scienecs'), (66, 'Mr. Iqra Hamid', 'Lab Demonstrator', 'Pharm-D , University of Lahore', 'images/Iqra_Hamid.jpg', 'life-scienecs'), (67, 'Mr. Amrullah Khan', 'Lab Assistant', 'Pharm-D , University of Malakand', 'images/Amrullah_khan.jpg', 'life-scienecs');
UNLOCK TABLES;

#
# Table structure for table 'slider_timetable'
#

DROP TABLE IF EXISTS `slider_timetable` CASCADE;
CREATE TABLE `slider_timetable` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_timetable'
#

LOCK TABLES `slider_timetable` WRITE;
INSERT IGNORE INTO `slider_timetable`(`id`, `link`) VALUES(1, 'https://docs.google.com/document/d/1abCVBPe4_0waHfD2v5rnARL2fQDJ5EwSCQ_Y7Y55w7Q/edit');
UNLOCK TABLES;

#
# Table structure for table 'slider_timetablegraduate'
#

DROP TABLE IF EXISTS `slider_timetablegraduate` CASCADE;
CREATE TABLE `slider_timetablegraduate` (
  `id` INT NOT NULL,
  `link` VARCHAR(120) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

#
# Dumping data for table 'slider_timetablegraduate'
#

LOCK TABLES `slider_timetablegraduate` WRITE;
INSERT IGNORE INTO `slider_timetablegraduate`(`id`, `link`) VALUES(1, 'https://drive.google.com/file/d/1z2_Ec7xF96Hh4ineeZaS-u9NMILVK4EW/view?usp=sharing');
UNLOCK TABLES;

#
# Table structure for table 'sqlite_sequence'
#

DROP TABLE IF EXISTS `sqlite_sequence` CASCADE;
CREATE TABLE `sqlite_sequence` (
  `name` LONGTEXT CHARACTER SET utf8,
  `seq` LONGTEXT CHARACTER SET utf8
) ENGINE=MyISAM;

#
# Dumping data for table 'sqlite_sequence'
#

LOCK TABLES `sqlite_sequence` WRITE;
INSERT IGNORE INTO `sqlite_sequence`(`name`, `seq`) VALUES('django_migrations', 57), ('django_admin_log', 246), ('django_content_type', 30), ('auth_permission', 90), ('auth_user', 3), ('auth_user_user_permissions', 1), ('slider_event', 4), ('alumni_alumni', 2), ('slider_fees', 28), ('slider_acdamic_calander', 2), ('slider_timetable', 1), ('slider_new', 3), ('slider_online_admission', 1), ('auth_group', 1), ('auth_group_permissions', 2), ('Ansec_orgnizers', 0), ('slider_clo', 4), ('slider_timetablegraduate', 1), ('slider_download', 3), ('slider_permission', 4), ('slider_acdamic_calander_graduate', 1), ('slider_datesheet', 5), ('slider_banner', 1), ('slider_staff', 67), ('slider_slider', 2), ('slider_message', 1);
UNLOCK TABLES;
