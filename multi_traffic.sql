-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2019 at 03:24 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `multi_traffic`
--
CREATE DATABASE IF NOT EXISTS `multi_traffic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `multi_traffic`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
(19, 'Can add register model', 7, 'add_registermodel'),
(20, 'Can change register model', 7, 'change_registermodel'),
(21, 'Can delete register model', 7, 'delete_registermodel'),
(22, 'Can add upload_ model', 8, 'add_upload_model'),
(23, 'Can change upload_ model', 8, 'change_upload_model'),
(24, 'Can delete upload_ model', 8, 'delete_upload_model'),
(25, 'Can add check traffic', 9, 'add_checktraffic'),
(26, 'Can change check traffic', 9, 'change_checktraffic'),
(27, 'Can delete check traffic', 9, 'delete_checktraffic');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'user', 'checktraffic'),
(7, 'user', 'registermodel'),
(8, 'user', 'upload_model');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-04 05:23:48.922646'),
(2, 'auth', '0001_initial', '2019-01-04 05:24:19.704915'),
(3, 'admin', '0001_initial', '2019-01-04 05:24:23.239521'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-04 05:24:23.286321'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-01-04 05:24:29.034334'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-01-04 05:24:30.140337'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-01-04 05:24:30.906739'),
(8, 'auth', '0004_alter_user_username_opts', '2019-01-04 05:24:30.953539'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-01-04 05:24:31.611740'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-01-04 05:24:31.658540'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-01-04 05:24:31.689740'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-01-04 05:24:37.930355'),
(13, 'sessions', '0001_initial', '2019-01-04 05:24:39.091757'),
(14, 'user', '0001_initial', '2019-01-04 05:24:39.560758'),
(15, 'user', '0002_upload_model', '2019-01-04 05:32:01.961160'),
(16, 'user', '0003_checktraffic', '2019-01-04 07:08:27.163585');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hhv1qbqbahwgqes5annw1nnzx8h89744', 'NGJmN2Y4ZGUyNWNlNzQ5YzEyM2RmMTk2YzgzM2QwMTJmYjRhMTFhMDp7InVzZXJpZCI6MX0=', '2019-01-18 05:27:25.893193'),
('xp48wy0l9w364x9js5sgzb45zocnukf8', 'NGJmN2Y4ZGUyNWNlNzQ5YzEyM2RmMTk2YzgzM2QwMTJmYjRhMTFhMDp7InVzZXJpZCI6MX0=', '2019-01-19 12:15:22.787465'),
('zfi4jdj7m86mb8cr2i0mdb4fs2xe39mi', 'NGJmN2Y4ZGUyNWNlNzQ5YzEyM2RmMTk2YzgzM2QwMTJmYjRhMTFhMDp7InVzZXJpZCI6MX0=', '2019-01-19 15:14:52.144276');

-- --------------------------------------------------------

--
-- Table structure for table `user_checktraffic`
--

CREATE TABLE IF NOT EXISTS `user_checktraffic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wetr` varchar(200) NOT NULL,
  `are` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `traf_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_checktraffic_traf_id_d9dde669_fk_user_upload_model_id` (`traf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user_checktraffic`
--

INSERT INTO `user_checktraffic` (`id`, `wetr`, `are`, `img`, `file_path`, `traf_id`) VALUES
(1, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_1sJIExR.jpg', 1),
(2, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_VkpT1SO.jpg', 1),
(3, 'Rain', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_u2aYSnv.jpg', 1),
(4, 'Rain', 'mambalam', 'tamilnadu', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/chennai-rain-21.jpg', 2),
(5, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_C4ayrfV.jpg', 1),
(6, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_2cDtxLP.jpg', 1),
(7, 'rain', 'mambalam', 'tamilnadu', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/chennai-rain-21_QgNk8BM.jpg', 2),
(8, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_7vGr5sT.jpg', 1),
(9, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_tje03Oa.jpg', 1),
(10, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_dLaKP8U.jpg', 1),
(11, 'Sunny', 'werd', 'wer', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/a3_IaZr1n8.jpg', 1),
(12, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1.jpg', 4),
(13, 'Fog', 'Agaram', 'Vizhuppuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f5.jpg', 16),
(14, 'Fog', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4.jpg', 13),
(15, 'Fog', 'Ambattur I.E', 'Kancheepuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f2.jpg', 7),
(16, 'Fog', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4_c8UkHw8.jpg', 13),
(17, 'Fog', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4_qKyHtYV.jpg', 13),
(18, 'Rain', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_UI7Eamc.jpg', 4),
(19, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_VA43YMc.jpg', 4),
(20, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_06dmMKh.jpg', 4),
(21, 'Rain', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_s04LfTm.jpg', 4),
(22, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_BAMqWmb.jpg', 4),
(23, 'Rain', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_xjG39h4.jpg', 4),
(24, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_HLyNfcl.jpg', 4),
(25, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_JBlFtq1.jpg', 4),
(26, 'Sunny', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_Yf0VwP8.jpg', 4),
(27, 'Fog', 'Gandhi Nagar', 'Vellore', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f8.jpg', 25),
(28, 'Rain', 'Ambattur I.E', 'Kancheepuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f2_A4F6b0s.jpg', 7),
(29, 'Fog', 'Agaram', 'Vizhuppuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f5_B8PMimR.jpg', 16),
(30, 'Fog', 'Gandhi Nagar', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f7.jpg', 22),
(31, 'Rain', 'Adyar', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/r6.png', 20),
(32, 'Fog', 'Gandhi Nagar', 'Vellore', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f8_eeGPFir.jpg', 25),
(33, 'Fog', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4_veQQzBS.jpg', 13),
(34, 'Sunny', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4_n0IIJRi.jpg', 13),
(35, 'Fog', 'Gandhi Nagar', 'Vellore', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f8_38W5wvI.jpg', 25),
(36, 'Sunny', 'Amarambedu', 'Kancheepuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/s6.jpg', 18),
(37, 'Fog', 'Agaram', 'Vizhuppuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f5_qyjgGL2.jpg', 16),
(38, 'Fog', 'Agaram', 'Vizhuppuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f5_haNbhQ8.jpg', 16),
(39, 'Fog', 'Korukkupet', 'Chennai', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f4_sNpXBXU.jpg', 13),
(40, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_SFgeYfY.jpg', 4),
(41, 'Fog', 'Kumanan chavadie', 'Thiruvallur', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f1_axOglZE.jpg', 4),
(42, 'Fog', 'Agaram', 'Vizhuppuram', 'D:\\python project path\\Multi_Traffic_Scene_Perception\\assets/media/f6.jpg', 19);

-- --------------------------------------------------------

--
-- Table structure for table `user_registermodel`
--

CREATE TABLE IF NOT EXISTS `user_registermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `password` int(11) NOT NULL,
  `mblenum` bigint(20) NOT NULL,
  `email` varchar(400) NOT NULL,
  `gender` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_registermodel`
--

INSERT INTO `user_registermodel` (`id`, `firstname`, `lastname`, `userid`, `password`, `mblenum`, `email`, `gender`) VALUES
(1, 'santhosh', 'kumar', 'santhosh', 1998, 9789672189, 'chennaisunday.cs0216@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_upload_model`
--

CREATE TABLE IF NOT EXISTS `user_upload_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wheather` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `images` varchar(100) NOT NULL,
  `state` varchar(200) NOT NULL,
  `distric` varchar(200) NOT NULL,
  `usid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_upload_model_usid_id_0b4bfeae_fk_user_registermodel_id` (`usid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `user_upload_model`
--

INSERT INTO `user_upload_model` (`id`, `wheather`, `area`, `images`, `state`, `distric`, `usid_id`) VALUES
(1, 'Fog', 'Perambur', 'train/a3.jpg', 'Tamil Nadu', 'Chennai', 1),
(2, 'rain', 'mambalam', 'train/chennai-rain-21.jpg', 'Tamil Nadu', 'Chennai', 1),
(3, 'Sunny', 'Korukkupet', 'train/s1.jpg', 'Tamil Nadu', 'Chennai', 1),
(4, 'Fog', 'Kumanan chavadie', 'train/f1.jpg', 'Tamil Nadu', 'Thiruvallur', 1),
(5, 'Rain', 'Agaram', 'train/r.jpg', 'Tamil Nadu', 'Vellore', 1),
(6, 'Sunny', 'Adyar', 'train/s1_8iCFTXL.jpg', 'Tamil Nadu', 'Vizhuppuram', 1),
(7, 'Fog', 'Ambattur I.E', 'train/f2.jpg', 'Tamil Nadu', 'Kancheepuram', 1),
(8, 'Rain', 'Amarambedu', 'train/r2.jpg', 'Tamil Nadu', 'Chennai', 1),
(9, 'Sunny', 'Gandhi Nagar', 'train/s3.jpg', 'Tamil Nadu', 'Thiruvannamalai', 1),
(10, 'Fog', 'Koyambedu Market', 'train/f3.jpg', 'Tamil Nadu', 'Chennai', 1),
(11, 'Rain', 'Adyar', 'train/r3.png', 'Tamil Nadu', 'Chennai', 1),
(12, 'Sunny', 'Adayar', 'train/s4.jpg', 'Tamil Nadu', 'Chennai', 1),
(13, 'Fog', 'Korukkupet', 'train/f4.jpg', 'Tamil Nadu', 'Chennai', 1),
(14, 'Rain', 'Kumanan chavadie', 'train/r4.jpg', 'Tamil Nadu', 'Chennai', 1),
(15, 'Sunny', 'Kosappur', 'train/s5.jpg', 'Tamil Nadu', 'Thiruvallur', 1),
(16, 'Fog', 'Agaram', 'train/f5.jpg', 'Tamil Nadu', 'Vizhuppuram', 1),
(17, 'Rain', 'Ambattur I.E', 'train/r5.jpg', 'Tamil Nadu', 'Chennai', 1),
(18, 'Sunny', 'Amarambedu', 'train/s6.jpg', 'Tamil Nadu', 'Kancheepuram', 1),
(19, 'Fog', 'Agaram', 'train/f6.jpg', 'Tamil Nadu', 'Vizhuppuram', 1),
(20, 'Rain', 'Adyar', 'train/r6.png', 'Tamil Nadu', 'Chennai', 1),
(21, 'Sunny', 'Korukkupet', 'train/s7.jpg', 'Tamil Nadu', 'Vellore', 1),
(22, 'Fog', 'Gandhi Nagar', 'train/f7.jpg', 'Tamil Nadu', 'Thiruvallur', 1),
(23, 'Rain', 'Adyar', 'train/r7.jpg', 'Tamil Nadu', 'Chennai', 1),
(24, 'Sunny', 'Amarambedu', 'train/s8.jpg', 'Tamil Nadu', 'Kancheepuram', 1),
(25, 'Fog', 'Gandhi Nagar', 'train/f8.jpg', 'Tamil Nadu', 'Vellore', 1),
(26, 'Rain', 'Koyambedu Market', 'train/r8.jpg', 'Tamil Nadu', 'Chennai', 1),
(27, 'Sunny', 'Adyar', 'train/s9.jpg', 'Tamil Nadu', 'Chennai', 1),
(28, 'Fog', 'Korukkupet', 'train/f9.jpg', 'Tamil Nadu', 'Kancheepuram', 1),
(29, 'Rain', 'Gandhi Nagar', 'train/r9.jpg', 'Tamil Nadu', 'Thiruvallur', 1),
(30, 'Sunny', 'Amarambedu', 'train/s10.jpg', 'Tamil Nadu', 'Chennai', 1),
(31, 'Fog', 'Adyar', 'train/f10.jpg', 'Tamil Nadu', 'Chennai', 1),
(32, 'Rain', 'Adyar', 'train/r10.jpg', 'Tamil Nadu', 'Chennai', 1),
(33, 'Fog', 'mambalam', 'train/f4_LnX8MXH.jpg', 'Tamil Nadu', 'Chennai', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_checktraffic`
--
ALTER TABLE `user_checktraffic`
  ADD CONSTRAINT `user_checktraffic_traf_id_d9dde669_fk_user_upload_model_id` FOREIGN KEY (`traf_id`) REFERENCES `user_upload_model` (`id`);

--
-- Constraints for table `user_upload_model`
--
ALTER TABLE `user_upload_model`
  ADD CONSTRAINT `user_upload_model_usid_id_0b4bfeae_fk_user_registermodel_id` FOREIGN KEY (`usid_id`) REFERENCES `user_registermodel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
