-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2022 at 12:58 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add campus', 7, 'add_campus'),
(26, 'Can change campus', 7, 'change_campus'),
(27, 'Can delete campus', 7, 'delete_campus'),
(28, 'Can view campus', 7, 'view_campus'),
(29, 'Can add campus hours', 8, 'add_campushours'),
(30, 'Can change campus hours', 8, 'change_campushours'),
(31, 'Can delete campus hours', 8, 'delete_campushours'),
(32, 'Can view campus hours', 8, 'view_campushours'),
(33, 'Can add event', 9, 'add_event'),
(34, 'Can change event', 9, 'change_event'),
(35, 'Can delete event', 9, 'delete_event'),
(36, 'Can view event', 9, 'view_event'),
(37, 'Can add facility hours', 10, 'add_facilityhours'),
(38, 'Can change facility hours', 10, 'change_facilityhours'),
(39, 'Can delete facility hours', 10, 'delete_facilityhours'),
(40, 'Can view facility hours', 10, 'view_facilityhours'),
(41, 'Can add industry', 11, 'add_industry'),
(42, 'Can change industry', 11, 'change_industry'),
(43, 'Can delete industry', 11, 'delete_industry'),
(44, 'Can view industry', 11, 'view_industry'),
(45, 'Can add region', 12, 'add_region'),
(46, 'Can change region', 12, 'change_region'),
(47, 'Can delete region', 12, 'delete_region'),
(48, 'Can view region', 12, 'view_region'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile'),
(53, 'Can add notification', 14, 'add_notification'),
(54, 'Can change notification', 14, 'change_notification'),
(55, 'Can delete notification', 14, 'delete_notification'),
(56, 'Can view notification', 14, 'view_notification'),
(57, 'Can add facility', 15, 'add_facility'),
(58, 'Can change facility', 15, 'change_facility'),
(59, 'Can delete facility', 15, 'delete_facility'),
(60, 'Can view facility', 15, 'view_facility'),
(61, 'Can add campus', 16, 'add_campus'),
(62, 'Can change campus', 16, 'change_campus'),
(63, 'Can delete campus', 16, 'delete_campus'),
(64, 'Can view campus', 16, 'view_campus'),
(65, 'Can add menu category', 17, 'add_menucategory'),
(66, 'Can change menu category', 17, 'change_menucategory'),
(67, 'Can delete menu category', 17, 'delete_menucategory'),
(68, 'Can view menu category', 17, 'view_menucategory'),
(69, 'Can add region', 18, 'add_region'),
(70, 'Can change region', 18, 'change_region'),
(71, 'Can delete region', 18, 'delete_region'),
(72, 'Can view region', 18, 'view_region'),
(73, 'Can add user', 19, 'add_user'),
(74, 'Can change user', 19, 'change_user'),
(75, 'Can delete user', 19, 'delete_user'),
(76, 'Can view user', 19, 'view_user'),
(77, 'Can add menu item', 20, 'add_menuitem'),
(78, 'Can change menu item', 20, 'change_menuitem'),
(79, 'Can delete menu item', 20, 'delete_menuitem'),
(80, 'Can view menu item', 20, 'view_menuitem'),
(81, 'Can add event', 21, 'add_event'),
(82, 'Can change event', 21, 'change_event'),
(83, 'Can delete event', 21, 'delete_event'),
(84, 'Can view event', 21, 'view_event'),
(85, 'Can add point', 22, 'add_point'),
(86, 'Can change point', 22, 'change_point'),
(87, 'Can delete point', 22, 'delete_point'),
(88, 'Can view point', 22, 'view_point'),
(89, 'Can add cron job log', 23, 'add_cronjoblog'),
(90, 'Can change cron job log', 23, 'change_cronjoblog'),
(91, 'Can delete cron job log', 23, 'delete_cronjoblog'),
(92, 'Can view cron job log', 23, 'view_cronjoblog'),
(93, 'Can add cron job lock', 24, 'add_cronjoblock'),
(94, 'Can change cron job lock', 24, 'change_cronjoblock'),
(95, 'Can delete cron job lock', 24, 'delete_cronjoblock'),
(96, 'Can view cron job lock', 24, 'view_cronjoblock');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$Zg5oqExAvDHKYGuQ0bACdn$NXrQCAeCvxSQhEW1AS0SKz+990gQV38c1UlpEyFTloU=', '2022-05-26 23:50:14.315904', 1, 'admin', '', '', '', 1, 1, '2022-05-25 15:50:42.959245');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_campus`
--

CREATE TABLE `campus_campus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `map` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_event`
--

CREATE TABLE `campus_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `event_start` datetime(6) NOT NULL,
  `event_end` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `time_created` datetime(6) NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_menucategory`
--

CREATE TABLE `campus_menucategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `campus_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_menuitem`
--

CREATE TABLE `campus_menuitem` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `time_created` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_region`
--

CREATE TABLE `campus_region` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_user`
--

CREATE TABLE `campus_user` (
  `id` bigint(20) NOT NULL,
  `type` varchar(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `campus_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-25 16:06:53.356938', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 9, 1),
(2, '2022-05-25 16:07:06.052881', '2', 'Event object (2)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 9, 1),
(3, '2022-05-25 16:07:16.317243', '1', 'Event object (1)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 9, 1),
(4, '2022-05-27 00:33:04.747406', '2', 'Profile object (2)', 3, '', 13, 1),
(5, '2022-05-27 00:33:04.796700', '1', 'Profile object (1)', 3, '', 13, 1),
(6, '2022-05-29 09:00:44.910874', '8', 'Profile object (8)', 3, '', 13, 1),
(7, '2022-05-29 09:00:44.972036', '7', 'Profile object (7)', 3, '', 13, 1),
(8, '2022-05-29 09:00:45.004980', '6', 'Profile object (6)', 3, '', 13, 1),
(9, '2022-05-29 09:00:45.056591', '5', 'Profile object (5)', 3, '', 13, 1),
(10, '2022-05-29 09:00:45.061494', '4', 'Profile object (4)', 3, '', 13, 1),
(11, '2022-05-29 09:00:45.080885', '3', 'Profile object (3)', 3, '', 13, 1),
(12, '2022-05-29 15:14:56.151555', '1', 'FacilityHours object (1)', 1, '[{\"added\": {}}]', 10, 1),
(13, '2022-05-29 15:16:28.022611', '1', 'Cafe', 1, '[{\"added\": {}}]', 15, 1),
(14, '2022-05-29 15:35:25.715550', '19', 'Robina', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(15, '2022-05-29 15:36:46.875955', '18', 'Southport', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(16, '2022-05-29 15:38:54.933719', '17', 'Coomera Marine', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(17, '2022-05-29 15:39:55.217237', '16', 'Coomera', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(18, '2022-05-29 15:41:28.876596', '15', 'Coolangatta', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(19, '2022-05-29 15:42:42.725162', '14', 'Ashmore', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(20, '2022-05-29 15:49:40.239828', '2', 'FacilityHours object (2)', 1, '[{\"added\": {}}]', 10, 1),
(21, '2022-05-29 15:50:55.088993', '2', 'Restaurant', 1, '[{\"added\": {}}]', 15, 1),
(22, '2022-05-29 15:56:17.130085', '3', 'FacilityHours object (3)', 1, '[{\"added\": {}}]', 10, 1),
(23, '2022-05-29 15:56:37.165949', '3', 'Gym', 1, '[{\"added\": {}}]', 15, 1),
(24, '2022-05-29 15:57:01.990034', '3', 'Gym', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(25, '2022-05-29 15:58:51.681060', '3', 'Gym', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(26, '2022-05-30 11:46:59.562539', '50', 'Profile object (50)', 3, '', 13, 1),
(27, '2022-05-30 11:46:59.573829', '49', 'Profile object (49)', 3, '', 13, 1),
(28, '2022-05-30 11:46:59.618504', '48', 'Profile object (48)', 3, '', 13, 1),
(29, '2022-05-30 11:46:59.652300', '47', 'Profile object (47)', 3, '', 13, 1),
(30, '2022-05-30 11:46:59.668938', '46', 'Profile object (46)', 3, '', 13, 1),
(31, '2022-05-30 11:46:59.701963', '45', 'Profile object (45)', 3, '', 13, 1),
(32, '2022-05-30 11:46:59.729729', '44', 'Profile object (44)', 3, '', 13, 1),
(33, '2022-05-30 11:46:59.740735', '43', 'Profile object (43)', 3, '', 13, 1),
(34, '2022-05-30 11:46:59.757767', '42', 'Profile object (42)', 3, '', 13, 1),
(35, '2022-05-30 11:46:59.794935', '41', 'Profile object (41)', 3, '', 13, 1),
(36, '2022-05-30 11:46:59.833780', '40', 'Profile object (40)', 3, '', 13, 1),
(37, '2022-05-30 11:46:59.867984', '39', 'Profile object (39)', 3, '', 13, 1),
(38, '2022-05-30 11:46:59.877726', '38', 'Profile object (38)', 3, '', 13, 1),
(39, '2022-05-30 11:46:59.910894', '37', 'Profile object (37)', 3, '', 13, 1),
(40, '2022-05-30 11:46:59.919776', '36', 'Profile object (36)', 3, '', 13, 1),
(41, '2022-05-30 11:46:59.970256', '35', 'Profile object (35)', 3, '', 13, 1),
(42, '2022-05-30 11:46:59.993320', '34', 'Profile object (34)', 3, '', 13, 1),
(43, '2022-05-30 11:47:00.021324', '33', 'Profile object (33)', 3, '', 13, 1),
(44, '2022-05-30 11:47:00.070991', '32', 'Profile object (32)', 3, '', 13, 1),
(45, '2022-05-30 11:47:00.075755', '31', 'Profile object (31)', 3, '', 13, 1),
(46, '2022-05-30 11:47:00.095041', '30', 'Profile object (30)', 3, '', 13, 1),
(47, '2022-05-30 11:47:00.129527', '29', 'Profile object (29)', 3, '', 13, 1),
(48, '2022-05-30 11:47:00.185081', '28', 'Profile object (28)', 3, '', 13, 1),
(49, '2022-05-30 11:47:00.202970', '27', 'Profile object (27)', 3, '', 13, 1),
(50, '2022-05-30 11:47:00.218524', '26', 'Profile object (26)', 3, '', 13, 1),
(51, '2022-05-30 11:47:00.231582', '25', 'Profile object (25)', 3, '', 13, 1),
(52, '2022-05-30 11:47:00.251667', '24', 'Profile object (24)', 3, '', 13, 1),
(53, '2022-05-30 11:47:00.277155', '23', 'Profile object (23)', 3, '', 13, 1),
(54, '2022-05-30 11:47:00.304277', '22', 'Profile object (22)', 3, '', 13, 1),
(55, '2022-05-30 11:47:00.344511', '21', 'Profile object (21)', 3, '', 13, 1),
(56, '2022-05-30 11:47:00.402414', '20', 'Profile object (20)', 3, '', 13, 1),
(57, '2022-05-30 11:47:00.444335', '19', 'Profile object (19)', 3, '', 13, 1),
(58, '2022-05-30 11:47:00.482571', '18', 'Profile object (18)', 3, '', 13, 1),
(59, '2022-05-30 11:47:00.501624', '17', 'Profile object (17)', 3, '', 13, 1),
(60, '2022-05-30 11:47:00.529706', '16', 'Profile object (16)', 3, '', 13, 1),
(61, '2022-05-30 11:47:00.553084', '15', 'Profile object (15)', 3, '', 13, 1),
(62, '2022-05-30 11:47:00.557505', '14', 'Profile object (14)', 3, '', 13, 1),
(63, '2022-05-30 11:47:00.598214', '13', 'Profile object (13)', 3, '', 13, 1),
(64, '2022-05-30 11:47:00.624798', '12', 'Profile object (12)', 3, '', 13, 1),
(65, '2022-05-30 11:47:00.661187', '11', 'Profile object (11)', 3, '', 13, 1),
(66, '2022-05-30 11:47:00.683043', '10', 'Profile object (10)', 3, '', 13, 1),
(67, '2022-05-30 11:47:00.706876', '9', 'Profile object (9)', 3, '', 13, 1),
(68, '2022-05-30 12:59:26.165833', '53', 'Profile object (53)', 3, '', 13, 1),
(69, '2022-05-30 12:59:26.190490', '52', 'Profile object (52)', 3, '', 13, 1),
(70, '2022-05-30 12:59:26.214649', '51', 'Profile object (51)', 3, '', 13, 1),
(71, '2022-05-30 13:11:52.615285', '56', 'Profile object (56)', 3, '', 13, 1),
(72, '2022-05-30 13:11:52.661776', '55', 'Profile object (55)', 3, '', 13, 1),
(73, '2022-05-30 13:11:52.692942', '54', 'Profile object (54)', 3, '', 13, 1),
(74, '2022-05-30 13:25:50.384532', '61', 'Profile object (61)', 3, '', 13, 1),
(75, '2022-05-30 13:25:50.389890', '60', 'Profile object (60)', 3, '', 13, 1),
(76, '2022-05-30 13:25:50.412856', '59', 'Profile object (59)', 3, '', 13, 1),
(77, '2022-05-30 13:25:50.437845', '58', 'Profile object (58)', 3, '', 13, 1),
(78, '2022-05-30 13:25:50.441608', '57', 'Profile object (57)', 3, '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(16, 'campus', 'campus'),
(21, 'campus', 'event'),
(17, 'campus', 'menucategory'),
(20, 'campus', 'menuitem'),
(18, 'campus', 'region'),
(19, 'campus', 'user'),
(5, 'contenttypes', 'contenttype'),
(24, 'django_cron', 'cronjoblock'),
(23, 'django_cron', 'cronjoblog'),
(22, 'poi', 'point'),
(6, 'sessions', 'session'),
(7, 'tafe', 'campus'),
(8, 'tafe', 'campushours'),
(9, 'tafe', 'event'),
(15, 'tafe', 'facility'),
(10, 'tafe', 'facilityhours'),
(11, 'tafe', 'industry'),
(14, 'tafe', 'notification'),
(13, 'tafe', 'profile'),
(12, 'tafe', 'region');

-- --------------------------------------------------------

--
-- Table structure for table `django_cron_cronjoblock`
--

CREATE TABLE `django_cron_cronjoblock` (
  `id` int(11) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `locked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_cron_cronjoblog`
--

CREATE TABLE `django_cron_cronjoblog` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `message` longtext NOT NULL,
  `ran_at_time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_cron_cronjoblog`
--

INSERT INTO `django_cron_cronjoblog` (`id`, `code`, `start_time`, `end_time`, `is_success`, `message`, `ran_at_time`) VALUES
(1, 'tafe.send_notifications', '2022-05-30 14:33:15.507377', '2022-05-30 14:33:15.575877', 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-25 15:46:19.866766'),
(2, 'auth', '0001_initial', '2022-05-25 15:46:22.078555'),
(3, 'admin', '0001_initial', '2022-05-25 15:46:22.602280'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-25 15:46:22.619847'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-25 15:46:22.628358'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-25 15:46:22.942301'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-25 15:46:23.059687'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-25 15:46:23.192945'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-25 15:46:23.212651'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-25 15:46:23.357011'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-25 15:46:23.361031'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-25 15:46:23.368535'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-25 15:46:23.551760'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-25 15:46:23.707250'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-25 15:46:23.924347'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-25 15:46:23.932837'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-25 15:46:24.197571'),
(18, 'campus', '0001_initial', '2022-05-25 15:46:27.242939'),
(19, 'campus', '0002_event_content', '2022-05-25 15:46:27.568980'),
(20, 'campus', '0003_alter_campus_address', '2022-05-25 15:46:27.575979'),
(21, 'campus', '0004_alter_campus_address', '2022-05-25 15:46:27.651757'),
(22, 'poi', '0001_initial', '2022-05-25 15:46:27.924062'),
(23, 'sessions', '0001_initial', '2022-05-25 15:46:28.811054'),
(24, 'tafe', '0001_initial', '2022-05-25 15:46:34.411397'),
(25, 'tafe', '0002_alter_profile_authuser', '2022-05-26 17:39:41.618692'),
(26, 'django_cron', '0001_initial', '2022-05-30 14:30:48.197379'),
(27, 'django_cron', '0002_remove_max_length_from_CronJobLog_message', '2022-05-30 14:30:48.222377'),
(28, 'django_cron', '0003_cronjoblock', '2022-05-30 14:30:48.325877');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fyr6kodnfcdq05ybmplychxp613k6fzd', '.eJxVjEEOwiAQRe_C2pAAHTu4dO8ZyMAMUjWQlHZlvLtt0oVu33v_v1WgdSlh7TKHidVFGXX6ZZHSU-ou-EH13nRqdZmnqPdEH7brW2N5XY_276BQL9sarTCRATiDdQOiN9GAbJAx58FbR9k7L545gSCyOBnAGkAHFsbRqM8X3bA3ZA:1nuNF8:L8XiOD-9wv5cD9MGNvGCPoQw3VQkOXI0RqwQu01CWwM', '2022-06-09 23:50:14.341278'),
('mbktbwthm6quyawg1zz4y5lkyk1g99w7', '.eJxVjEEOwiAQRe_C2pAAHTu4dO8ZyMAMUjWQlHZlvLtt0oVu33v_v1WgdSlh7TKHidVFGXX6ZZHSU-ou-EH13nRqdZmnqPdEH7brW2N5XY_276BQL9sarTCRATiDdQOiN9GAbJAx58FbR9k7L545gSCyOBnAGkAHFsbRqM8X3bA3ZA:1nttvV:_5KuhX-6Mnh17P6wzleJY63J4aIPtQFFb6SgBUI1Ijs', '2022-06-08 16:32:01.984767'),
('pn4m0bnfqfuixfv9ztzlr7kfm3yqoefp', '.eJxVjEEOwiAQRe_C2pAAHTu4dO8ZyMAMUjWQlHZlvLtt0oVu33v_v1WgdSlh7TKHidVFGXX6ZZHSU-ou-EH13nRqdZmnqPdEH7brW2N5XY_276BQL9sarTCRATiDdQOiN9GAbJAx58FbR9k7L545gSCyOBnAGkAHFsbRqM8X3bA3ZA:1nttHy:ni3v5KNcXvEB6zZOM9IUmt-_TGhxwKFBqKOYJ1NEMTc', '2022-06-08 15:51:10.839022');

-- --------------------------------------------------------

--
-- Table structure for table `poi_point`
--

CREATE TABLE `poi_point` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `time_created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tafe_campus`
--

CREATE TABLE `tafe_campus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `hours_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_campus`
--

INSERT INTO `tafe_campus` (`id`, `name`, `description`, `address`, `phone`, `latitude`, `longitude`, `listed`, `hours_id`, `region_id`) VALUES
(1, 'Acacia Ridge', 'The Acacia Ridge campus is our flagship trade training centre spanning more than 22 hectares. The campus is based on the south side of Brisbane approximately 15 kilometres from the Brisbane CBD and is home to some of our newest facilities with the recent completion of a $200 million capital works program.', '247 Bradman Street, Acacia Ridge Qld 4110', '', '0.000000', '0.000000', 1, 1, 1),
(2, 'Alexandra Hills', 'Study close to home and enjoy the perfect blend of city life with a laid-back coastal atmosphere at our Alexandra Hills campus. Located a 35 minute drive from Brisbane this leafy campus is situated in the Redlands within easy distance of the gorgeous islands of Moreton Bay.', 'Windemere Road, Alexandra Hills Qld 4161', '', '0.000000', '0.000000', 1, 2, 1),
(3, 'Bracken Ridge', 'Located 20 kilometres north of Brisbane our Bracken Ridge campus is surrounded by green parks, bikeways, and walkways and is within easy reach of nearby cafes and take-away shops. The beautiful Sandgate waterfront is just a five minute drive from campus and has plenty of shopping and restaurant options for you to explore between classes.', '157 Norris Road, Bracken Ridge Qld 4017', '', '0.000000', '0.000000', 1, 3, 1),
(4, 'Caboolture', 'Our Caboolture campus services a growing population and provides a convenient training location for students in Caboolture, the Sunshine Coast, Glasshouse Mountains, and Bribie Island. The stunning D\'Aguilar Range provides an impressive backdrop for the campus with the beautiful sandy beaches of Bribie Island just a short drive away.', 'Tallon Street, Caboolture Qld 4510', '', '0.000000', '0.000000', 1, 4, 1),
(5, 'Eagle Farm', 'Our Eagle Farm campus is located on the north side of the city approximately nine kilometres from the Brisbane CBD. The campus is just a few minutes drive to Brisbane’s dining precinct and cruise terminal Portside Wharf, offering a range of dining and take-away options for you to fuel up before or after class.', '776 Kingsford Smith Drive, Eagle Farm Qld 4009', '', '0.000000', '0.000000', 1, 5, 1),
(6, 'Grovely', 'Our Grovely campus is renowned for the delivery of courses in horticulture and animal studies. The campus is located near the impressive Brisbane State Forest Park and its classrooms and training areas are surrounded by manicured lawns, sprawling gardens, nurseries, and reclaimed forest areas. The campus is also within easy walking distance of a shopping precinct featuring a supermarket, food outlets and restaurants.', 'Fitzsimmons Street, Keperra Qld 4054', '', '0.000000', '0.000000', 1, 6, 1),
(7, 'Inala', 'The Inala campus has provided essential education and training to the local community for over 13 years. The campus has a diverse and multicultural student cohort and offers training for job seekers as well as English classes for migrants and refugees.', '54 Thrush Street, Inala Qld 4077', '', '0.000000', '0.000000', 1, 7, 1),
(8, 'Ipswich', 'Located in the outer suburb of Bundamba, our Ipswich campus offers a convenient location for students in Ipswich and surrounding areas. The campus is conveniently located 10 minutes from the Bundamba train station with nearby childcare facilities also available.', 'Corner Mary and Byrne Streets, Bundamba Qld 4304', '', '0.000000', '0.000000', 1, 8, 1),
(9, 'Loganlea', 'Located on Brisbane\'s south side only 40 mins from the city, our Loganlea campus offers a huge range of study options for students in Brisbane\'s outer suburbs. Set amidst lush, green surrounds and featuring a scenic pond and garden area, the campus is the perfect place to study without the need to travel to the city.', '50-68 Armstrong Road, Meadowbrook Qld 4131', '', '0.000000', '0.000000', 1, 9, 1),
(10, 'Mt Gravatt', 'Our Mt Gravatt campus is located just 20 minutes from the Brisbane CBD, offering students in Brisbane\'s south side a convenient location to pursue their study goals. Mt Gravatt is also our fashion studies hub offering a range of applied fashion design and millinery courses, and hosts our annual Brisbane fashion parade where students showcase their designs.', '1030 Cavendish Road, Mt Gravatt Qld 4122', '', '0.000000', '0.000000', 1, 10, 1),
(11, 'Redcliffe', 'Our Redcliffe campus offers a relaxed learning environment within easy walking distance of the Redcliffe business area and nearby beach. The Redcliffe area is known for its easy-going lifestyle with a distinct focus on leisure and recreation. The mix of golden sandy beaches and picturesque foreshore parks makes Redcliffe a popular destination for day-trippers wanting to experience the best nature has to offer.', '64-68 Klingner Road, Redcliffe Qld 4020', '', '0.000000', '0.000000', 1, 11, 1),
(12, 'South Bank', 'Our South Bank campus is located in the heart of Brisbane\'s arts and cultural precinct adjacent to art galleries, performing arts venues, a museum, and the State Library. The campus has easy access to the city, the beautiful South Bank Parklands, as well as plenty of cafes and restaurants for you to refuel between classes.', '66 Ernest Street , South Brisbane Qld 4101', '', '0.000000', '0.000000', 1, 12, 1),
(13, 'Springfield', 'Our Springfield campus is positioned in a growth corridor between the cities of Brisbane and Ipswich. Greater Springfield has experienced strong growth over the last 10 years and is projected to be one of the largest communities in Queensland within the next 30 years. The campus is located within Education City, a central nucleus for education in the greater Springfield area.', 'Education City Drive, Springfield Qld 4300', '', '0.000000', '0.000000', 1, 13, 1),
(14, 'Ashmore', 'This specialised facility is the renowned trades training hub of the Gold Coast. Equipped with industry-standard learning technologies you will perfect your craft nestled among the parkland setting and spacious campus grounds.', 'Corner Heeb Street and Benowa Road, Ashmore Qld 4214', '', '-27.994386', '153.389340', 1, 14, 2),
(15, 'Coolangatta', 'Located on the border of New South Wales our Coolangatta campus services students at the southern end of the Gold Coast. The campus is only 250 metres from the famous coastline between Snapper Rocks and Kirra beach with easy access to beaches, cafes and shops.', '5 Scott Street, Coolangatta Qld 4225', '', '-28.170482', '153.539412', 1, 15, 2),
(16, 'Coomera', 'Our Coomera campus is the perfect home for the creators, innovators, entertainers, and movie makers. Nestled among natural bushland this $26 million state-of-the-art facility offers the best creative learning experience in the region.', '198 Foxwell Road, Coomera Qld 4209,', '', '-27.853279', '153.321046', 1, 16, 2),
(17, 'Coomera Marine', 'Our Coomera Marine campus is situated in the heart of the Gold Coast Marine Precinct in Coomera, approximately 15 kilometres from Surfers Paradise.', '50 Waterway Drive, Coomera Qld 4209', '', '-27.865051', '153.333450', 1, 17, 2),
(18, 'Southport', 'Our Southport campus is conveniently located in the Gold Coast CBD next to the Australia Fair shopping centre and across the road from the beautiful Broadwater Parklands. The campus\' central location offers plenty of places to eat or relax between classes. The campus is regularly serviced by public transport including the light rail with a G:link station on its doorstep.', '91-99 Scarborough Street, Southport Qld 4215', '', '-27.966891', '153.413952', 1, 18, 2),
(19, 'Robina', 'The new TAFE Queensland Gold Coast Robina campus is due to open its doors to new students in 2022. Leading the way as a sustainable vocational institution in Australia, our Robina campus will ensure that sustainability is embedded into every aspect of campus operations including campus design, course curriculum and student life.', '209 Robina Town Centre Drive, Robina Qld 4226', '', '-28.072488', '153.376687', 1, 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_campushours`
--

CREATE TABLE `tafe_campushours` (
  `id` bigint(20) NOT NULL,
  `monOpen` time(6) NOT NULL,
  `monClose` time(6) NOT NULL,
  `tueOpen` time(6) NOT NULL,
  `tueClose` time(6) NOT NULL,
  `wedOpen` time(6) NOT NULL,
  `wedClose` time(6) NOT NULL,
  `thurOpen` time(6) NOT NULL,
  `thurClose` time(6) NOT NULL,
  `friOpen` time(6) NOT NULL,
  `friClose` time(6) NOT NULL,
  `satOpen` time(6) NOT NULL,
  `satClose` time(6) NOT NULL,
  `sunOpen` time(6) NOT NULL,
  `sunClose` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_campushours`
--

INSERT INTO `tafe_campushours` (`id`, `monOpen`, `monClose`, `tueOpen`, `tueClose`, `wedOpen`, `wedClose`, `thurOpen`, `thurClose`, `friOpen`, `friClose`, `satOpen`, `satClose`, `sunOpen`, `sunClose`) VALUES
(1, '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '17:00:00.000000', '08:00:00.000000', '14:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(2, '08:30:00.000000', '16:30:00.000000', '08:00:00.000000', '16:00:00.000000', '09:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(3, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(4, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(5, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '14:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(6, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(7, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '09:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(8, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:00:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(9, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(10, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(11, '00:00:00.000000', '00:00:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(12, '08:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '09:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '08:30:00.000000', '17:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(13, '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '09:00:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '08:30:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(14, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '09:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(15, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(16, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(17, '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(18, '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '08:00:00.000000', '16:30:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(19, '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tafe_event`
--

CREATE TABLE `tafe_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `registerLink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `eventStart` datetime(6) NOT NULL,
  `eventEnd` datetime(6) NOT NULL,
  `lastUpdate` datetime(6) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_event`
--

INSERT INTO `tafe_event` (`id`, `title`, `description`, `content`, `location`, `registerLink`, `image`, `eventStart`, `eventEnd`, `lastUpdate`, `timeCreated`, `listed`) VALUES
(1, 'Diploma of Business Webinar', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates.', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates. Choose from options in business, leadership and management to get the skills and experience you need to commence or further develop your business career.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-business-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-business.jpg', '2022-08-20 00:00:00.000000', '2022-08-20 02:00:00.000000', '2022-05-25 16:07:16.315243', '2022-05-18 12:38:51.451396', 1),
(2, 'Diploma of Nursing Webinar', 'Meet Georgia from our highly skilled nursing teaching team. During our webinar you will hear about our nursing training and what a wonderful career opportunities can be found with a nursing qualification from TAFE Queensland.', 'TAFE Queensland nursing students will learn their practical skills in our simulated training labs before going on to experience further learning during their work placement. This webinar focuses on our Diploma of Nursing (HLT54115) qualification.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-nursing-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-nursing.jpg', '2022-07-31 00:00:00.000000', '2022-07-31 06:00:00.000000', '2022-05-25 16:07:06.050880', '2022-05-18 12:45:13.634502', 1),
(3, 'Robina Campus Webinar', 'Get excited! Our brand new campus is due to open its doors in July and we can’t wait to show you what’s on offer.', 'You’re invited to join us at our exclusive Robina campus webinar happening Tuesday 17 May at 10am.\r\n\r\nThis will be a great opportunity to hear from our teachers across a range of study areas including beauty and hairdressing, childcare, cookery, events, hospitality, sports and fitness. Meet our director of faculty and learn all about the new, sustainable campus.\r\n\r\nFill in the form to receive your link to this informative online event!', 'Online', 'https://tafeqld.edu.au/https://tafeqld.edu.au/news-and-events/events/2022/may/robina-campus-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/news-and-events/news/2022/Robina-Blog-Assets-Feature-1920x1080.jpg', '2022-07-17 00:00:00.000000', '2022-07-17 01:00:00.000000', '2022-05-25 16:06:53.354439', '2022-05-18 12:45:55.697049', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_facility`
--

CREATE TABLE `tafe_facility` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `menuLink` varchar(255) NOT NULL,
  `bookingLink` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `hours_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_facility`
--

INSERT INTO `tafe_facility` (`id`, `name`, `description`, `address`, `phone`, `image`, `menuLink`, `bookingLink`, `listed`, `campus_id`, `hours_id`) VALUES
(1, 'Cafe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt nulla nec malesuada maximus. Praesent a nisi at ligula egestas congue. Nullam vel porttitor lacus. Suspendisse in est egestas, hendrerit metus vitae, scelerisque tortor. Praesent in finibus augue. Etiam malesuada tempus arcu, nec gravida est varius quis. Nam lobortis hendrerit est, vel pellentesque sapien sodales sit amet. Morbi tincidunt dapibus scelerisque.', '', '', 'https://images.pexels.com/photos/1855214/pexels-photo-1855214.jpeg?cs=srgb&dl=pexels-lisa-fotios-1855214.jpg&fm=jpg', '', '', 1, 19, 1),
(2, 'Restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam turpis odio, interdum et hendrerit sit amet, condimentum id ante. Praesent odio lectus, iaculis nec vehicula vitae, maximus eget mi. Pellentesque gravida magna nulla, et dapibus mi eleifend at. Aenean vitae odio ultrices mauris interdum rutrum. Phasellus ligula leo, ultricies vitae neque nec, cursus molestie mi. Nam interdum arcu et tellus egestas vehicula. Nam eget eros vitae orci congue suscipit.', '', '', 'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '', '', 1, 19, 2),
(3, 'Gym', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh metus, pretium vitae ornare sed, venenatis ut erat. In in euismod enim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean euismod dignissim nisl. Quisque porttitor nulla sapien. Quisque vitae eros non turpis elementum hendrerit. Cras velit justo, malesuada quis ipsum eget, congue accumsan ex. Aliquam eu mattis nibh.', '', '', 'https://images.pexels.com/photos/3768916/pexels-photo-3768916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '', '', 1, 19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_facilityhours`
--

CREATE TABLE `tafe_facilityhours` (
  `id` bigint(20) NOT NULL,
  `monOpen` time(6) NOT NULL,
  `monClose` time(6) NOT NULL,
  `tueOpen` time(6) NOT NULL,
  `tueClose` time(6) NOT NULL,
  `wedOpen` time(6) NOT NULL,
  `wedClose` time(6) NOT NULL,
  `thurOpen` time(6) NOT NULL,
  `thurClose` time(6) NOT NULL,
  `friOpen` time(6) NOT NULL,
  `friClose` time(6) NOT NULL,
  `satOpen` time(6) NOT NULL,
  `satClose` time(6) NOT NULL,
  `sunOpen` time(6) NOT NULL,
  `sunClose` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_facilityhours`
--

INSERT INTO `tafe_facilityhours` (`id`, `monOpen`, `monClose`, `tueOpen`, `tueClose`, `wedOpen`, `wedClose`, `thurOpen`, `thurClose`, `friOpen`, `friClose`, `satOpen`, `satClose`, `sunOpen`, `sunClose`) VALUES
(1, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(2, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(3, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tafe_industry`
--

CREATE TABLE `tafe_industry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_industry`
--

INSERT INTO `tafe_industry` (`id`, `name`, `listed`) VALUES
(1, 'Business', 1),
(2, 'Creative Industries', 1),
(3, 'Education & Community', 1),
(4, 'Environment & Animal Services', 1),
(5, 'Health & Science', 1),
(6, 'Information Technology', 1),
(7, 'Infrastructure & Transport', 1),
(8, 'Service Industries', 1),
(9, 'Trades', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_notification`
--

CREATE TABLE `tafe_notification` (
  `id` bigint(20) NOT NULL,
  `type` varchar(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `sendTime` datetime(6) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `industry_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tafe_profile`
--

CREATE TABLE `tafe_profile` (
  `id` bigint(20) NOT NULL,
  `type` varchar(2) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `notificationToken` varchar(255) NOT NULL,
  `authUser_id` int(11) DEFAULT NULL,
  `campus_id` bigint(20) NOT NULL,
  `industry_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_profile`
--

INSERT INTO `tafe_profile` (`id`, `type`, `timeCreated`, `notificationToken`, `authUser_id`, `campus_id`, `industry_id`, `region_id`) VALUES
(62, 'S', '2022-05-30 13:26:21.239785', 'ExponentPushToken[6bDQnSIIoc6KBqPzoadkQ8]', NULL, 16, 6, 2),
(63, 'S', '2022-05-30 14:19:11.182349', 'ExponentPushToken[j6Eit1OuYJfxK8pnEISbY8]', NULL, 16, 6, 2),
(64, 'S', '2022-06-01 04:42:33.660200', 'ExponentPushToken[Z8vdtWNvMCwm1LqOpCH7xi]', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_region`
--

CREATE TABLE `tafe_region` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_region`
--

INSERT INTO `tafe_region` (`id`, `name`, `listed`) VALUES
(1, 'Greater Brisbane', 1),
(2, 'Gold Coast', 1),
(3, 'Sunshine Coast', 1),
(4, 'Darling Downs and South West', 1),
(5, 'Wide Bay Burnett', 1),
(6, 'North Queensland', 1),
(7, 'Far North Queensland', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `campus_campus`
--
ALTER TABLE `campus_campus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `campus_campus_region_id_a1c02d2d_fk_campus_region_id` (`region_id`);

--
-- Indexes for table `campus_event`
--
ALTER TABLE `campus_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_event_location_id_de70d901_fk_campus_campus_id` (`location_id`);

--
-- Indexes for table `campus_menucategory`
--
ALTER TABLE `campus_menucategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `campus_menucategory_campus_id_096c569c_fk_campus_campus_id` (`campus_id`);

--
-- Indexes for table `campus_menuitem`
--
ALTER TABLE `campus_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_menuitem_category_id_c9214b13_fk_campus_menucategory_id` (`category_id`);

--
-- Indexes for table `campus_region`
--
ALTER TABLE `campus_region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `campus_user`
--
ALTER TABLE `campus_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_user_campus_id_3a92c9de_fk_campus_campus_id` (`campus_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_cron_cronjoblock`
--
ALTER TABLE `django_cron_cronjoblock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_name` (`job_name`);

--
-- Indexes for table `django_cron_cronjoblog`
--
ALTER TABLE `django_cron_cronjoblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_cron_cronjoblog_code_start_time_ran_at_time_8b50b8fa_idx` (`code`,`start_time`,`ran_at_time`),
  ADD KEY `django_cron_cronjoblog_code_start_time_4fc78f9d_idx` (`code`,`start_time`),
  ADD KEY `django_cron_cronjoblog_code_is_success_ran_at_time_84da9606_idx` (`code`,`is_success`,`ran_at_time`),
  ADD KEY `django_cron_cronjoblog_code_48865653` (`code`),
  ADD KEY `django_cron_cronjoblog_start_time_d68c0dd9` (`start_time`),
  ADD KEY `django_cron_cronjoblog_end_time_7918602a` (`end_time`),
  ADD KEY `django_cron_cronjoblog_ran_at_time_7fed2751` (`ran_at_time`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `poi_point`
--
ALTER TABLE `poi_point`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `hours_id` (`hours_id`),
  ADD KEY `tafe_campus_region_id_1257459b_fk_tafe_region_id` (`region_id`);

--
-- Indexes for table `tafe_campushours`
--
ALTER TABLE `tafe_campushours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tafe_event`
--
ALTER TABLE `tafe_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tafe_facility`
--
ALTER TABLE `tafe_facility`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `hours_id` (`hours_id`),
  ADD KEY `tafe_facility_campus_id_42fd5bea_fk_tafe_campus_id` (`campus_id`);

--
-- Indexes for table `tafe_facilityhours`
--
ALTER TABLE `tafe_facilityhours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tafe_industry`
--
ALTER TABLE `tafe_industry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_notification_campus_id_f2a73d1e_fk_tafe_campus_id` (`campus_id`),
  ADD KEY `tafe_notification_industry_id_8258f58b_fk_tafe_industry_id` (`industry_id`),
  ADD KEY `tafe_notification_region_id_d8fdf348_fk_tafe_region_id` (`region_id`);

--
-- Indexes for table `tafe_profile`
--
ALTER TABLE `tafe_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_profile_campus_id_d05b68ae_fk_tafe_campus_id` (`campus_id`),
  ADD KEY `tafe_profile_industry_id_760064fe_fk_tafe_industry_id` (`industry_id`),
  ADD KEY `tafe_profile_region_id_3cb5e650_fk_tafe_region_id` (`region_id`),
  ADD KEY `tafe_profile_authUser_id_d0ed0352` (`authUser_id`);

--
-- Indexes for table `tafe_region`
--
ALTER TABLE `tafe_region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_campus`
--
ALTER TABLE `campus_campus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_event`
--
ALTER TABLE `campus_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_menucategory`
--
ALTER TABLE `campus_menucategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_menuitem`
--
ALTER TABLE `campus_menuitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_region`
--
ALTER TABLE `campus_region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus_user`
--
ALTER TABLE `campus_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_cron_cronjoblock`
--
ALTER TABLE `django_cron_cronjoblock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_cron_cronjoblog`
--
ALTER TABLE `django_cron_cronjoblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `poi_point`
--
ALTER TABLE `poi_point`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tafe_campushours`
--
ALTER TABLE `tafe_campushours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tafe_event`
--
ALTER TABLE `tafe_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tafe_facility`
--
ALTER TABLE `tafe_facility`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tafe_facilityhours`
--
ALTER TABLE `tafe_facilityhours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tafe_industry`
--
ALTER TABLE `tafe_industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tafe_profile`
--
ALTER TABLE `tafe_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tafe_region`
--
ALTER TABLE `tafe_region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `campus_campus`
--
ALTER TABLE `campus_campus`
  ADD CONSTRAINT `campus_campus_region_id_a1c02d2d_fk_campus_region_id` FOREIGN KEY (`region_id`) REFERENCES `campus_region` (`id`);

--
-- Constraints for table `campus_event`
--
ALTER TABLE `campus_event`
  ADD CONSTRAINT `campus_event_location_id_de70d901_fk_campus_campus_id` FOREIGN KEY (`location_id`) REFERENCES `campus_campus` (`id`);

--
-- Constraints for table `campus_menucategory`
--
ALTER TABLE `campus_menucategory`
  ADD CONSTRAINT `campus_menucategory_campus_id_096c569c_fk_campus_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `campus_campus` (`id`);

--
-- Constraints for table `campus_menuitem`
--
ALTER TABLE `campus_menuitem`
  ADD CONSTRAINT `campus_menuitem_category_id_c9214b13_fk_campus_menucategory_id` FOREIGN KEY (`category_id`) REFERENCES `campus_menucategory` (`id`);

--
-- Constraints for table `campus_user`
--
ALTER TABLE `campus_user`
  ADD CONSTRAINT `campus_user_campus_id_3a92c9de_fk_campus_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `campus_campus` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `tafe_campus`
--
ALTER TABLE `tafe_campus`
  ADD CONSTRAINT `tafe_campus_region_id_1257459b_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`),
  ADD CONSTRAINT `tafe_campus_hours_id_f6c3f9b3_fk_tafe_campushours_id` FOREIGN KEY (`hours_id`) REFERENCES `tafe_campushours` (`id`);

--
-- Constraints for table `tafe_facility`
--
ALTER TABLE `tafe_facility`
  ADD CONSTRAINT `tafe_facility_hours_id_d6bed827_fk_tafe_facilityhours_id` FOREIGN KEY (`hours_id`) REFERENCES `tafe_facilityhours` (`id`),
  ADD CONSTRAINT `tafe_facility_campus_id_42fd5bea_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`);

--
-- Constraints for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  ADD CONSTRAINT `tafe_notification_region_id_d8fdf348_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`),
  ADD CONSTRAINT `tafe_notification_campus_id_f2a73d1e_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`),
  ADD CONSTRAINT `tafe_notification_industry_id_8258f58b_fk_tafe_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `tafe_industry` (`id`);

--
-- Constraints for table `tafe_profile`
--
ALTER TABLE `tafe_profile`
  ADD CONSTRAINT `tafe_profile_authUser_id_d0ed0352_fk_auth_user_id` FOREIGN KEY (`authUser_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `tafe_profile_campus_id_d05b68ae_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`),
  ADD CONSTRAINT `tafe_profile_industry_id_760064fe_fk_tafe_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `tafe_industry` (`id`),
  ADD CONSTRAINT `tafe_profile_region_id_3cb5e650_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
