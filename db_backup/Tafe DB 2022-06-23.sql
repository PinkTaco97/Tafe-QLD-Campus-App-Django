-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2022 at 09:26 AM
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
-- Table structure for table `authentication_user`
--

CREATE TABLE `authentication_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authentication_user`
--

INSERT INTO `authentication_user` (`id`, `password`, `last_login`, `is_superuser`, `is_staff`, `is_active`, `date_joined`, `username`, `email`, `first_name`, `last_name`) VALUES
(1, 'pbkdf2_sha256$320000$wSv2fh8q6am8pIUqxLKyYP$FBNSAsbUw6NkTBzMWbEWqHNdUbBxAj8xfx0AKAcFm4A=', '2022-06-18 11:31:06.012743', 1, 1, 1, '2022-06-08 13:06:19.350924', 'admin', 'admin@tafe.com', NULL, NULL),
(2, 'pbkdf2_sha256$320000$lY47qhH4KWOFNi77SSw9Zy$zQb42co1ZpdkqWV2Vby18kPmocDwSMs7vnI1C4FVvs0=', '2022-06-10 11:58:38.278129', 0, 0, 1, '2022-06-08 13:16:11.664533', 'nathan@tafe.com', 'nathan@tafe.com', NULL, NULL),
(3, 'pbkdf2_sha256$320000$KRzKnd2OHGv21QxFY97vt9$5JhqwRKDmLGDVKm2mFX9DzGYdslGmezs5DyH9W2ore8=', '2022-06-17 21:29:31.321919', 0, 0, 1, '2022-06-17 21:29:18.534380', 'test@tafe.com', 'test@tafe.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authentication_user_groups`
--

CREATE TABLE `authentication_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_user_user_permissions`
--

CREATE TABLE `authentication_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('9b9109d54706c87859e3a6ac40b51b0bf2f8a700', '2022-06-08 13:16:11.994779', 2),
('c3964112ce4c18d9a65876f24510ac1c60062114', '2022-06-17 21:29:18.858005', 3);

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add access attempt', 8, 'add_accessattempt'),
(30, 'Can change access attempt', 8, 'change_accessattempt'),
(31, 'Can delete access attempt', 8, 'delete_accessattempt'),
(32, 'Can view access attempt', 8, 'view_accessattempt'),
(33, 'Can add access log', 9, 'add_accesslog'),
(34, 'Can change access log', 9, 'change_accesslog'),
(35, 'Can delete access log', 9, 'delete_accesslog'),
(36, 'Can view access log', 9, 'view_accesslog'),
(37, 'Can add access failure', 10, 'add_accessfailurelog'),
(38, 'Can change access failure', 10, 'change_accessfailurelog'),
(39, 'Can delete access failure', 10, 'delete_accessfailurelog'),
(40, 'Can view access failure', 10, 'view_accessfailurelog'),
(41, 'Can add campus', 11, 'add_campus'),
(42, 'Can change campus', 11, 'change_campus'),
(43, 'Can delete campus', 11, 'delete_campus'),
(44, 'Can view campus', 11, 'view_campus'),
(45, 'Can add campus hours', 12, 'add_campushours'),
(46, 'Can change campus hours', 12, 'change_campushours'),
(47, 'Can delete campus hours', 12, 'delete_campushours'),
(48, 'Can view campus hours', 12, 'view_campushours'),
(49, 'Can add event', 13, 'add_event'),
(50, 'Can change event', 13, 'change_event'),
(51, 'Can delete event', 13, 'delete_event'),
(52, 'Can view event', 13, 'view_event'),
(53, 'Can add facility hours', 14, 'add_facilityhours'),
(54, 'Can change facility hours', 14, 'change_facilityhours'),
(55, 'Can delete facility hours', 14, 'delete_facilityhours'),
(56, 'Can view facility hours', 14, 'view_facilityhours'),
(57, 'Can add industry', 15, 'add_industry'),
(58, 'Can change industry', 15, 'change_industry'),
(59, 'Can delete industry', 15, 'delete_industry'),
(60, 'Can view industry', 15, 'view_industry'),
(61, 'Can add region', 16, 'add_region'),
(62, 'Can change region', 16, 'change_region'),
(63, 'Can delete region', 16, 'delete_region'),
(64, 'Can view region', 16, 'view_region'),
(65, 'Can add profile', 17, 'add_profile'),
(66, 'Can change profile', 17, 'change_profile'),
(67, 'Can delete profile', 17, 'delete_profile'),
(68, 'Can view profile', 17, 'view_profile'),
(69, 'Can add notification', 18, 'add_notification'),
(70, 'Can change notification', 18, 'change_notification'),
(71, 'Can delete notification', 18, 'delete_notification'),
(72, 'Can view notification', 18, 'view_notification'),
(73, 'Can add facility', 19, 'add_facility'),
(74, 'Can change facility', 19, 'change_facility'),
(75, 'Can delete facility', 19, 'delete_facility'),
(76, 'Can view facility', 19, 'view_facility'),
(77, 'Can add user', 20, 'add_user'),
(78, 'Can change user', 20, 'change_user'),
(79, 'Can delete user', 20, 'delete_user'),
(80, 'Can view user', 20, 'view_user'),
(81, 'Can add point', 21, 'add_point'),
(82, 'Can change point', 21, 'change_point'),
(83, 'Can delete point', 21, 'delete_point'),
(84, 'Can view point', 21, 'view_point'),
(85, 'Can add point', 22, 'add_point'),
(86, 'Can change point', 22, 'change_point'),
(87, 'Can delete point', 22, 'delete_point'),
(88, 'Can view point', 22, 'view_point'),
(89, 'Can add sdg', 23, 'add_sdg'),
(90, 'Can change sdg', 23, 'change_sdg'),
(91, 'Can delete sdg', 23, 'delete_sdg'),
(92, 'Can view sdg', 23, 'view_sdg'),
(93, 'Can add goal', 23, 'add_goal'),
(94, 'Can change goal', 23, 'change_goal'),
(95, 'Can delete goal', 23, 'delete_goal'),
(96, 'Can view goal', 23, 'view_goal');

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessattempt`
--

CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessfailurelog`
--

CREATE TABLE `axes_accessfailurelog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `locked_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accesslog`
--

CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `axes_accesslog`
--

INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-08 13:06:31.395131', '2022-06-18 11:30:57.573765'),
(2, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 13:16:32.033367', NULL),
(3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-08 14:23:59.145585', '2022-06-18 11:30:57.573765'),
(4, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 14:45:36.010696', NULL),
(5, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 14:52:56.536213', NULL),
(6, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 14:57:15.959994', NULL),
(7, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 14:59:08.112644', NULL),
(8, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 15:05:04.194159', NULL),
(9, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 15:28:19.768576', NULL),
(10, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-08 15:42:38.667046', NULL),
(11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-09 23:12:53.394295', '2022-06-18 11:30:57.573765'),
(12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-09 23:54:06.373499', '2022-06-18 11:30:57.573765'),
(13, 'okhttp/3.14.9', '172.17.0.1', 'nathan@tafe.com', 'application/json', '/user/login/', '2022-06-10 11:58:38.226834', NULL),
(14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.99 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-11 04:45:29.916224', '2022-06-18 11:30:57.573765'),
(15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-15 14:20:28.146026', '2022-06-18 11:30:57.573765'),
(16, 'okhttp/3.14.9', '172.17.0.1', 'test@tafe.com', 'application/json', '/user/login/', '2022-06-17 21:29:31.261099', NULL),
(17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '172.17.0.1', 'admin@tafe.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/admin/login/', '2022-06-18 11:31:06.023569', NULL);

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-08 13:12:12.702227', '3', 'Event object (3)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 13, 1),
(2, '2022-06-08 13:12:22.921692', '2', 'Event object (2)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 13, 1),
(3, '2022-06-08 13:12:37.615010', '1', 'Event object (1)', 2, '[{\"changed\": {\"fields\": [\"EventStart\", \"EventEnd\"]}}]', 13, 1),
(4, '2022-06-08 14:24:58.375765', '1', 'FacilityHours object (1)', 1, '[{\"added\": {}}]', 14, 1),
(5, '2022-06-08 14:26:52.045138', '1', 'Cafe', 1, '[{\"added\": {}}]', 19, 1),
(6, '2022-06-08 14:36:54.234568', '1', 'Cafe', 2, '[{\"changed\": {\"fields\": [\"Link1Title\"]}}]', 19, 1),
(7, '2022-06-08 14:38:22.982521', '1', 'Cafe', 2, '[{\"changed\": {\"fields\": [\"Link2URL\"]}}]', 19, 1),
(8, '2022-06-08 14:38:42.122279', '1', 'Cafe', 2, '[{\"changed\": {\"fields\": [\"Link1Title\", \"Link2URL\"]}}]', 19, 1),
(9, '2022-06-10 02:40:44.797396', '1', 'Hello Everyone! (A)', 1, '[{\"added\": {}}]', 18, 1),
(10, '2022-06-10 03:19:06.370253', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(11, '2022-06-10 03:37:43.297284', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(12, '2022-06-10 04:27:22.856274', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(13, '2022-06-10 04:30:16.297050', '2', 'Hello Business Students (I)', 1, '[{\"added\": {}}]', 18, 1),
(14, '2022-06-10 04:30:27.703601', '2', 'Hello Business Students! (I)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 18, 1),
(15, '2022-06-10 04:31:18.084125', '3', 'Hello Gold Coast Students! (R)', 1, '[{\"added\": {}}]', 18, 1),
(16, '2022-06-10 05:01:49.653500', '3', 'Hello Gold Coast Students! (R)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(17, '2022-06-10 05:01:53.861642', '2', 'Hello Business Students! (I)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(18, '2022-06-10 05:01:58.030608', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(19, '2022-06-10 11:02:40.944324', '4', 'Hello Robina! (C)', 1, '[{\"added\": {}}]', 18, 1),
(20, '2022-06-10 11:29:06.030488', '9', 'Testing', 1, '[{\"added\": {}}]', 15, 1),
(21, '2022-06-10 15:53:22.628133', '1', 'Test POI', 1, '[{\"added\": {}}]', 22, 1),
(22, '2022-06-10 16:13:49.940523', '1', 'Goal object (1)', 1, '[{\"added\": {}}]', 23, 1),
(23, '2022-06-10 16:15:16.610905', '2', 'Goal object (2)', 1, '[{\"added\": {}}]', 23, 1),
(24, '2022-06-10 16:16:56.559981', '3', 'Goal object (3)', 1, '[{\"added\": {}}]', 23, 1),
(25, '2022-06-10 16:20:00.178064', '4', 'Goal object (4)', 1, '[{\"added\": {}}]', 23, 1),
(26, '2022-06-10 16:21:13.260606', '5', 'Goal object (5)', 1, '[{\"added\": {}}]', 23, 1),
(27, '2022-06-10 16:22:06.444624', '6', 'Goal object (6)', 1, '[{\"added\": {}}]', 23, 1),
(28, '2022-06-10 16:23:19.416080', '7', 'Goal object (7)', 1, '[{\"added\": {}}]', 23, 1),
(29, '2022-06-10 16:24:39.722709', '8', 'Goal object (8)', 1, '[{\"added\": {}}]', 23, 1),
(30, '2022-06-10 22:25:55.997846', '9', 'Goal object (9)', 1, '[{\"added\": {}}]', 23, 1),
(31, '2022-06-10 22:28:10.285800', '10', 'Goal object (10)', 1, '[{\"added\": {}}]', 23, 1),
(32, '2022-06-10 22:29:41.619913', '11', 'Goal object (11)', 1, '[{\"added\": {}}]', 23, 1),
(33, '2022-06-10 22:30:42.667676', '12', 'Goal object (12)', 1, '[{\"added\": {}}]', 23, 1),
(34, '2022-06-10 22:31:44.582394', '13', 'Goal object (13)', 1, '[{\"added\": {}}]', 23, 1),
(35, '2022-06-10 22:32:57.609388', '14', 'Goal object (14)', 1, '[{\"added\": {}}]', 23, 1),
(36, '2022-06-10 22:34:08.406738', '15', 'Goal object (15)', 1, '[{\"added\": {}}]', 23, 1),
(37, '2022-06-10 22:34:57.076718', '16', 'Goal object (16)', 1, '[{\"added\": {}}]', 23, 1),
(38, '2022-06-10 22:36:11.608919', '17', 'Goal object (17)', 1, '[{\"added\": {}}]', 23, 1),
(39, '2022-06-10 23:21:39.024503', '17', 'Goal object (17)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 23, 1),
(40, '2022-06-10 23:21:42.041934', '16', 'Goal object (16)', 2, '[]', 23, 1),
(41, '2022-06-10 23:21:48.541968', '14', 'Goal object (14)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 23, 1),
(42, '2022-06-10 23:21:58.789366', '1', 'Goal object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 23, 1),
(43, '2022-06-11 03:10:57.913765', '9', 'Testing', 3, '', 15, 1),
(44, '2022-06-11 03:13:00.894300', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(45, '2022-06-11 04:46:00.808859', '1', 'Goal object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(46, '2022-06-11 04:49:24.567699', '2', 'Goal object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(47, '2022-06-11 05:07:42.560192', '3', 'Goal object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(48, '2022-06-11 05:40:35.725156', '4', 'Goal object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(49, '2022-06-11 06:00:06.017660', '5', 'Goal object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(50, '2022-06-11 06:00:23.294379', '6', 'Goal object (6)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(51, '2022-06-11 06:01:01.368542', '7', 'Goal object (7)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(52, '2022-06-11 06:01:22.193955', '8', 'Goal object (8)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(53, '2022-06-11 06:01:30.754407', '9', 'Goal object (9)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(54, '2022-06-11 06:01:40.893939', '10', 'Goal object (10)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(55, '2022-06-11 06:03:20.768101', '11', 'Goal object (11)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(56, '2022-06-11 06:03:39.641578', '12', 'Goal object (12)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(57, '2022-06-11 06:03:54.768147', '13', 'Goal object (13)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(58, '2022-06-11 06:04:13.556133', '14', 'Goal object (14)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(59, '2022-06-11 06:04:27.983407', '15', 'Goal object (15)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(60, '2022-06-11 06:04:38.334665', '16', 'Goal object (16)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(61, '2022-06-11 06:04:48.423122', '17', 'Goal object (17)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 23, 1),
(62, '2022-06-15 16:37:43.469195', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"Sent\"]}}]', 18, 1),
(63, '2022-06-18 11:07:24.214336', '1', 'Hello Everyone! (A)', 2, '[{\"changed\": {\"fields\": [\"SendTime\", \"Sent\"]}}]', 18, 1),
(64, '2022-06-18 11:23:02.771512', '19', 'Robina', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(65, '2022-06-18 11:23:25.028030', '19', 'Robina', 2, '[]', 11, 1),
(66, '2022-06-18 12:54:03.790299', '1', 'The Spit', 1, '[{\"added\": {}}]', 21, 1),
(67, '2022-06-18 12:58:27.754460', '2', 'Pacific Fair', 1, '[{\"added\": {}}]', 21, 1),
(68, '2022-06-22 11:30:37.259701', '16', 'Coomera', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(69, '2022-06-22 11:31:29.336049', '14', 'Ashmore', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(70, '2022-06-22 11:32:59.935296', '15', 'Coolangatta', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(71, '2022-06-22 11:33:32.288324', '17', 'Coomera Marine', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(72, '2022-06-22 11:34:33.905869', '18', 'Southport', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 11, 1),
(73, '2022-06-22 11:42:41.974859', '4', 'Event object (4)', 1, '[{\"added\": {}}]', 13, 1),
(74, '2022-06-22 11:54:12.065388', '2', 'FacilityHours object (2)', 1, '[{\"added\": {}}]', 14, 1),
(75, '2022-06-22 11:55:08.286142', '2', 'Restaurant', 1, '[{\"added\": {}}]', 19, 1),
(76, '2022-06-22 11:56:29.813310', '3', 'FacilityHours object (3)', 1, '[{\"added\": {}}]', 14, 1),
(77, '2022-06-22 11:56:55.220447', '3', 'Gym', 1, '[{\"added\": {}}]', 19, 1),
(78, '2022-06-22 11:58:34.456521', '4', 'FacilityHours object (4)', 1, '[{\"added\": {}}]', 14, 1),
(79, '2022-06-22 11:58:54.768097', '4', 'Coomera Cafe', 1, '[{\"added\": {}}]', 19, 1),
(80, '2022-06-22 13:34:53.689392', '1', 'Robina Cafe', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 19, 1),
(81, '2022-06-22 13:35:13.837941', '1', 'FacilityHours object (1)', 2, '[{\"changed\": {\"fields\": [\"MonOpen\"]}}]', 14, 1),
(82, '2022-06-22 13:35:34.324350', '1', 'FacilityHours object (1)', 2, '[{\"changed\": {\"fields\": [\"MonOpen\"]}}]', 14, 1),
(83, '2022-06-22 13:35:59.172822', '1', 'FacilityHours object (1)', 2, '[{\"changed\": {\"fields\": [\"MonOpen\"]}}]', 14, 1),
(84, '2022-06-23 09:22:36.572398', '3', 'Robina Gym', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 19, 1),
(85, '2022-06-23 09:22:45.074529', '2', 'Robina Restaurant', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 19, 1);

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
(20, 'authentication', 'user'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(8, 'axes', 'accessattempt'),
(10, 'axes', 'accessfailurelog'),
(9, 'axes', 'accesslog'),
(4, 'contenttypes', 'contenttype'),
(21, 'poi', 'point'),
(5, 'sessions', 'session'),
(11, 'tafe', 'campus'),
(12, 'tafe', 'campushours'),
(13, 'tafe', 'event'),
(19, 'tafe', 'facility'),
(14, 'tafe', 'facilityhours'),
(23, 'tafe', 'goal'),
(15, 'tafe', 'industry'),
(18, 'tafe', 'notification'),
(22, 'tafe', 'point'),
(17, 'tafe', 'profile'),
(16, 'tafe', 'region');

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
(1, 'contenttypes', '0001_initial', '2022-06-08 12:59:24.482607'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-06-08 12:59:25.021032'),
(3, 'auth', '0001_initial', '2022-06-08 12:59:25.885574'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-06-08 12:59:26.063648'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-06-08 12:59:26.081584'),
(6, 'auth', '0004_alter_user_username_opts', '2022-06-08 12:59:26.094854'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-06-08 12:59:26.143104'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-06-08 12:59:26.182155'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-06-08 12:59:26.201030'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-06-08 12:59:26.219091'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-06-08 12:59:26.248350'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-06-08 12:59:26.355393'),
(13, 'auth', '0011_update_proxy_permissions', '2022-06-08 12:59:26.379063'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-06-08 12:59:26.394902'),
(15, 'authentication', '0001_initial', '2022-06-08 12:59:27.269836'),
(16, 'admin', '0001_initial', '2022-06-08 12:59:27.609707'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-06-08 12:59:27.618815'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-08 12:59:27.639662'),
(19, 'authentication', '0002_rename_name_user_username', '2022-06-08 12:59:27.772927'),
(20, 'authentication', '0003_user_first_name_user_last_name_alter_user_username', '2022-06-08 12:59:28.067928'),
(21, 'authtoken', '0001_initial', '2022-06-08 12:59:28.263315'),
(22, 'authtoken', '0002_auto_20160226_1747', '2022-06-08 12:59:28.283510'),
(23, 'authtoken', '0003_tokenproxy', '2022-06-08 12:59:28.288474'),
(24, 'axes', '0001_initial', '2022-06-08 12:59:28.413675'),
(25, 'axes', '0002_auto_20151217_2044', '2022-06-08 12:59:28.898675'),
(26, 'axes', '0003_auto_20160322_0929', '2022-06-08 12:59:28.940384'),
(27, 'axes', '0004_auto_20181024_1538', '2022-06-08 12:59:28.974777'),
(28, 'axes', '0005_remove_accessattempt_trusted', '2022-06-08 12:59:29.251419'),
(29, 'axes', '0006_remove_accesslog_trusted', '2022-06-08 12:59:29.368473'),
(30, 'axes', '0007_alter_accessattempt_unique_together', '2022-06-08 12:59:29.466811'),
(31, 'axes', '0008_accessfailurelog', '2022-06-08 12:59:29.717736'),
(32, 'poi', '0001_initial', '2022-06-08 12:59:29.808864'),
(33, 'sessions', '0001_initial', '2022-06-08 12:59:29.970696'),
(34, 'tafe', '0001_initial', '2022-06-08 12:59:33.524111'),
(35, 'tafe', '0002_notification_sent_alter_notification_type', '2022-06-10 02:34:41.306244'),
(36, 'tafe', '0003_alter_notification_campus_alter_notification_data_and_more', '2022-06-10 02:38:09.774911'),
(37, 'tafe', '0004_point_sdg', '2022-06-10 15:51:39.179093'),
(38, 'tafe', '0005_rename_sdg_goal', '2022-06-10 16:05:16.743638');

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
('2hqubkopggovf5tcuhabsv0b331bfsm3', '.eJxVjM0OwiAQhN-FsyGFIj8evfsMZJddpGogKe3J-O62SQ86x_m-mbeIsC4lrp3nOJG4CCVOvx1CenLdAT2g3ptMrS7zhHJX5EG7vDXi1_Vw_w4K9LKtIWdldGIP42jJG2-Q7Jn0YBEcDQ4ZQkA2wB4xZectmpyd0luCdUF8vgTdOHI:1o2NIo:oQIhHJXfpYWbXOSAOPMn22a5fUk5cWrnj0Nao-VCxgE', '2022-07-02 11:31:06.065018'),
('d0dug6fd2xtamwzt415f12axoog0dfn8', '.eJxVjEEOwiAQRe_C2hBgLKhL956BzDCDVA0kpV0Z726bdKHb_977bxVxmUtcukxxZHVRTh1-N8L0lLoBfmC9N51anaeR9KbonXZ9ayyv6-7-HRTsZa1NNoIefB58CnQWmwIaAcfMR8lAwZFYAoPCNmWxGMDBaQDJyayiU58vC105AA:1nzTv4:MGOtPvmNxBysf1bE_Qgvi_j1ZHQI81AjTKsvXE6c-4M', '2022-06-24 11:58:38.299657'),
('fjpd9qw2a5wd6zxyutbbqi3jda048fga', '.eJxVjMsOwiAQRf-FtSHA8Agu3fsNZJgBqRqalHZl_Hdt0oVu7znnvkTCbW1pG2VJE4uz0OL0u2WkR-k74Dv22yxp7usyZbkr8qBDXmcuz8vh_h00HO1bVwccgzcmqGA9GGXQZoO-IiNzBAo-FNKkIhuATBW0Bc0IVMnV4sT7A9NIOCA:1nzIbu:TVWSwg4x1L83L1p-C0RFtMk_K2JSKtfNviK16dmw6iE', '2022-06-23 23:54:06.454099'),
('joct4ni8gbfmoeuk5yd0hxmy29vv6uhs', '.eJxVjMsOwiAQRf-FtSHA8Agu3fsNZJgBqRqalHZl_Hdt0oVu7znnvkTCbW1pG2VJE4uz0OL0u2WkR-k74Dv22yxp7usyZbkr8qBDXmcuz8vh_h00HO1bVwccgzcmqGA9GGXQZoO-IiNzBAo-FNKkIhuATBW0Bc0IVMnV4sT7A9NIOCA:1nzHy1:bvvj_RSTxuySRFRH4zd6OZEVsyIGabSw3g8Trdwl4fg', '2022-06-23 23:12:53.436229'),
('qombp7ndywsu2y4qt5682fceuymfflm5', '.eJxVjM0OwiAQhN-FsyGFIj8evfsMZJddpGogKe3J-O62SQ86x_m-mbeIsC4lrp3nOJG4CCVOvx1CenLdAT2g3ptMrS7zhHJX5EG7vDXi1_Vw_w4K9LKtIWdldGIP42jJG2-Q7Jn0YBEcDQ4ZQkA2wB4xZectmpyd0luCdUF8vgTdOHI:1nzjdR:31nzcWgR1xJ1g9OSJIrlG_4dv18BmOSNx-4f5pwVXFI', '2022-06-25 04:45:29.944458'),
('tuo75l72ocg8r0kk9pm4nc5skyshweyw', '.eJxVjEEOwiAQRe_C2pACQwdcuu8ZyABTqRqalHZlvLtt0oVu_3vvv0WgbS1ha7yEKYurMOLyu0VKT64HyA-q91mmua7LFOWhyJM2OcyZX7fT_Tso1Mpej9F3zKS001mhRdKGODGMnhAi2D7lhNmw7RAVeG0MMGjPbg_QcS8-X_BqN4U:1o2AAN:UPD2dCnlhxazjQObxf82VZrxytuB3GlEUn_8pUjNEsA', '2022-07-01 21:29:31.328260');

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

--
-- Dumping data for table `poi_point`
--

INSERT INTO `poi_point` (`id`, `title`, `description`, `image`, `code`, `last_update`, `time_created`) VALUES
(1, 'The Spit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor dignissim sem, in dignissim urna scelerisque a. Ut ultricies fringilla ligula, congue elementum nisl. Mauris tortor sem, porta vel ex ac, fermentum tristique erat. Nunc sem felis, pretium malesuada urna pretium, rutrum pellentesque magna. Suspendisse commodo, elit a venenatis dictum, augue justo tempus erat, consequat mollis augue risus et odio. Vivamus pulvinar justo urna, at facilisis diam semper quis. Sed porta lacus non ornare gravida. Vestibulum hendrerit ac mi vel congue. Ut vitae mi sed quam dictum gravida nec ac mauris. Quisque rutrum nisl finibus tempus pretium. Fusce bibendum orci quis ex imperdiet, sit amet efficitur turpis hendrerit. Maecenas non felis mattis leo sodales consectetur. Praesent commodo elit mi, id sagittis arcu elementum aliquam.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flive.staticflickr.com%2F1009%2F1342712098_44b029aca3_b.jpg&f=1&nofb=1', '14460577159304185983', '2022-06-18 12:54:03.774593', '2022-06-18 12:54:03.774654'),
(2, 'Pacific Fair', 'Pellentesque tincidunt, neque vitae commodo consectetur, ex felis mollis dui, ut vulputate mi justo sed metus. Fusce quis condimentum mauris. Nullam ornare erat et nulla auctor pulvinar. Pellentesque vehicula quis dui id bibendum. Phasellus gravida iaculis nibh, porta eleifend ex pellentesque in. Donec suscipit risus eu enim semper, sit amet malesuada elit ornare. Duis nisi ligula, lobortis eu mattis vitae, fringilla nec lorem. Cras et quam congue, faucibus velit et, tempor justo. Sed interdum hendrerit est, sit amet bibendum ante dapibus non. Cras non urna volutpat nisl ultrices pellentesque non non augue.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets.atdw-online.com.au%2Fimages%2Fd3b4b24309f11da32679d17a85dbf133.jpeg%3Frect%3D211%2C0%2C3377%2C2533%26w%3D2048%26h%3D1536%26rot%3D360&f=1&nofb=1', '14096874105548253372', '2022-06-18 12:58:27.752787', '2022-06-18 12:58:27.752849');

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
(14, 'Ashmore', 'This specialised facility is the renowned trades training hub of the Gold Coast. Equipped with industry-standard learning technologies you will perfect your craft nestled among the parkland setting and spacious campus grounds.', 'Corner Heeb Street and Benowa Road, Ashmore Qld 4214', '', '-27.994377', '153.389420', 1, 14, 2),
(15, 'Coolangatta', 'Located on the border of New South Wales our Coolangatta campus services students at the southern end of the Gold Coast. The campus is only 250 metres from the famous coastline between Snapper Rocks and Kirra beach with easy access to beaches, cafes and shops.', '5 Scott Street, Coolangatta Qld 4225', '', '-28.170455', '153.539294', 1, 15, 2),
(16, 'Coomera', 'Our Coomera campus is the perfect home for the creators, innovators, entertainers, and movie makers. Nestled among natural bushland this $26 million state-of-the-art facility offers the best creative learning experience in the region.', '198 Foxwell Road, Coomera Qld 4209,', '', '-27.853164', '153.320750', 1, 16, 2),
(17, 'Coomera Marine', 'Our Coomera Marine campus is situated in the heart of the Gold Coast Marine Precinct in Coomera, approximately 15 kilometres from Surfers Paradise.', '50 Waterway Drive, Coomera Qld 4209', '', '-27.865107', '153.335481', 1, 17, 2),
(18, 'Southport', 'Our Southport campus is conveniently located in the Gold Coast CBD next to the Australia Fair shopping centre and across the road from the beautiful Broadwater Parklands. The campus\' central location offers plenty of places to eat or relax between classes. The campus is regularly serviced by public transport including the light rail with a G:link station on its doorstep.', '91-99 Scarborough Street, Southport Qld 4215', '', '-27.966839', '153.414227', 1, 18, 2),
(19, 'Robina', 'The new TAFE Queensland Gold Coast Robina campus is due to open its doors to new students in 2022. Leading the way as a sustainable vocational institution in Australia, our Robina campus will ensure that sustainability is embedded into every aspect of campus operations including campus design, course curriculum and student life.', '209 Robina Town Centre Drive, Robina Qld 4226', '', '-28.072640', '153.379310', 1, 19, 2);

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
(1, 'Diploma of Business Webinar', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates.', 'Garry talks about TAFE Queensland’s business training and the diverse career opportunities open to our business graduates. Choose from options in business, leadership and management to get the skills and experience you need to commence or further develop your business career.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-business-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-business.jpg', '2022-10-20 00:00:00.000000', '2022-10-20 02:00:00.000000', '2022-06-08 13:12:37.611985', '2022-05-18 12:38:51.451396', 1),
(2, 'Diploma of Nursing Webinar', 'Meet Georgia from our highly skilled nursing teaching team. During our webinar you will hear about our nursing training and what a wonderful career opportunities can be found with a nursing qualification from TAFE Queensland.', 'TAFE Queensland nursing students will learn their practical skills in our simulated training labs before going on to experience further learning during their work placement. This webinar focuses on our Diploma of Nursing (HLT54115) qualification.', 'Online', 'https://tafeqld.edu.au/news-and-events/webinars/diploma-of-nursing-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/campaigns/webinars/TQ-on24-WEBINAR-1920x1080%20Screenshot-diploma-of-nursing.jpg', '2022-08-31 00:00:00.000000', '2022-08-31 06:00:00.000000', '2022-06-08 13:12:22.918670', '2022-05-18 12:45:13.634502', 1),
(3, 'Robina Campus Webinar', 'Get excited! Our brand new campus is due to open its doors in July and we can’t wait to show you what’s on offer.', 'You’re invited to join us at our exclusive Robina campus webinar happening Tuesday 17 May at 10am.\r\n\r\nThis will be a great opportunity to hear from our teachers across a range of study areas including beauty and hairdressing, childcare, cookery, events, hospitality, sports and fitness. Meet our director of faculty and learn all about the new, sustainable campus.\r\n\r\nFill in the form to receive your link to this informative online event!', 'Online', 'https://tafeqld.edu.au/https://tafeqld.edu.au/news-and-events/events/2022/may/robina-campus-webinar', 'https://tafeqld.edu.au/content/dam/tafe/en/news-and-events/news/2022/Robina-Blog-Assets-Feature-1920x1080.jpg', '2022-09-17 00:00:00.000000', '2022-09-17 01:00:00.000000', '2022-06-08 13:12:12.698964', '2022-05-18 12:45:55.697049', 1),
(4, 'Gold Coast Open Day', 'Are you just starting your career, looking for a change or want to enhance your existing skills but not sure where to start? Join us at one of our four campuses to speak to our experienced teachers and explore our amazing facilities.', 'START PLANNING FOR 2023!\r\n\r\nAre you just starting your career, looking for a change or want to enhance your existing skills but not sure where to start? Join us at one of our four campuses to speak to our experienced teachers and explore our amazing facilities. This is the perfect opportunity to get a feel for what study life at TAFE Queensland would be like.\r\n\r\nOur open day is happening on Thursday 18 August 2-6pm, see below to find out which campus you should attend.\r\nChoosing which campus to attend is easy!\r\nThink about what study area you are interested in\r\nFind out which campus offers your study area from the options listed below\r\nRegister to attend that particular campus on our open day - (Please note: If you would like to attend more than one campus make sure you fill out the form for each!)\r\nROBINA CAMPUS  \r\n\r\nChildcare | Business & Management | Events | General Education & Training - AMEP & SEE | Hair & Beauty | Hospitality & Cookery | Sports & Fitness\r\n\r\nASHMORE TRADE TRAINING CENTRE  \r\n\r\nAutomotive | Building & Construction | Cabinetry | Carpentry | Electrotechnology | Engineering | Horticulture | Marine | Plumbing | Wet Trades\r\n\r\nSOUTHPORT CAMPUS  \r\n\r\nAnimal Studies | Aged Care | Community Services | Nursing & Health\r\n\r\nCOOMERA CAMPUS \r\n\r\nBachelor Degrees | Blockchain | Cyber Security | Graphic Design and Interior/Building Design | Information Technology | Screen and Media | Music and Sound Production', 'Gold Coast', 'https://tafeqld.edu.au/news-and-events/events/2022/aug/gold-coast-open-day', 'https://tafeqld.edu.au/content/dam/tafe/en/news-and-events/events/2022/august/22-2585_TQGC_Open_Day_Website_Image_1920x1080px_V1.jpg', '2022-08-18 14:00:00.000000', '2022-08-18 18:00:00.000000', '2022-06-22 11:42:41.899617', '2022-06-22 11:42:41.899655', 1);

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
  `link1Title` varchar(255) NOT NULL,
  `link1URL` varchar(255) NOT NULL,
  `link2Title` varchar(255) NOT NULL,
  `link2URL` varchar(255) NOT NULL,
  `listed` tinyint(1) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `hours_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_facility`
--

INSERT INTO `tafe_facility` (`id`, `name`, `description`, `address`, `phone`, `image`, `link1Title`, `link1URL`, `link2Title`, `link2URL`, `listed`, `campus_id`, `hours_id`) VALUES
(1, 'Robina Cafe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '209 Robina Town Centre Drive, Robina Qld 4226', '66000000', 'https://images.pexels.com/photos/7125662/pexels-photo-7125662.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'View Menu', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.sampletemplates.com%2Fwp-content%2Fuploads%2F2016%2F05%2F05164419%2FCreative-Cafe-Menu-Template.jpg&f=1&nofb=1', 'Book a Table', 'https://www.sirgeorge.com.au/book-table/', 1, 19, 1),
(2, 'Robina Restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget libero fringilla, faucibus ligula sit amet, volutpat odio. Aliquam molestie luctus neque, nec ultricies purus faucibus vitae. Nulla ullamcorper ac leo vel venenatis. Curabitur porttitor sapien eu luctus maximus. Vivamus accumsan sem eget nunc lobortis, at semper risus lacinia. Suspendisse ac finibus justo. Nunc vel dignissim augue. In fermentum feugiat accumsan. In rutrum aliquam sapien in pulvinar. Proin pretium vulputate condimentum.', '', '', 'https://images.pexels.com/photos/1855214/pexels-photo-1855214.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '', '', '', '', 1, 19, 2),
(3, 'Robina Gym', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lobortis vulputate vestibulum. Curabitur sed nisl sit amet dui volutpat pharetra non suscipit elit. Sed semper tincidunt arcu ac egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent a urna at nisi ultrices condimentum vitae id orci. Vivamus fringilla congue dui at sollicitudin. Nulla nec lobortis augue, sit amet varius magna. Integer accumsan lectus id turpis placerat blandit. Donec facilisis felis non purus viverra placerat. In dapibus cursus est, sed consectetur eros blandit at. Phasellus eget diam vel sapien rhoncus rhoncus. Morbi tristique nibh eu urna pellentesque, a tincidunt purus interdum. Fusce efficitur tincidunt libero, a fermentum urna cursus vitae. Nam non nisi id tellus venenatis sodales vitae ac arcu. Morbi scelerisque quis enim in tristique.', '', '', 'https://images.pexels.com/photos/949129/pexels-photo-949129.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '', '', '', '', 1, 19, 3),
(4, 'Coomera Cafe', 'Proin eget laoreet purus. Vestibulum faucibus venenatis massa, vel imperdiet justo molestie sed. Suspendisse congue odio nisl, ac congue neque aliquam a. Curabitur posuere tortor a purus lacinia luctus. Donec tempus in ligula eget rhoncus. Curabitur vel leo fringilla, ornare augue in, imperdiet massa. Integer lectus urna, blandit sit amet ullamcorper vel, dictum vitae magna. Donec in volutpat sapien, eu tempor turpis. Sed ac tortor vel erat venenatis pretium. Phasellus dapibus dui auctor, malesuada quam id, convallis libero. In est nunc, molestie id libero a, convallis condimentum neque. Fusce convallis elit sapien, nec semper quam cursus in.', '', '', 'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '', '', '', '', 1, 16, 4);

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
(3, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000'),
(4, '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '08:00:00.000000', '16:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tafe_goal`
--

CREATE TABLE `tafe_goal` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `infoLink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `lastUpdate` datetime(6) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `listed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_goal`
--

INSERT INTO `tafe_goal` (`id`, `title`, `description`, `infoLink`, `image`, `icon`, `lastUpdate`, `timeCreated`, `listed`) VALUES
(1, 'No Poverty', 'End poverty in all forms everywhere.', 'https://sdgs.un.org/goals/goal1', 'https://sdgs.un.org/sites/default/files/2022-04/SDG_report_2021_Goal_1.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-01.jpg', '2022-06-11 04:46:00.806264', '2022-06-10 16:13:49.938767', 1),
(2, 'Zero Hunger', 'End hunger, achieve food security and improved nutrition and promote sustainable agriculture.', 'https://sdgs.un.org/goals/goal2', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%202.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-02.jpg', '2022-06-11 04:49:24.536054', '2022-06-10 16:15:16.609126', 1),
(3, 'Good Health and Well-Being', 'Ensure healthy lives and promote well-being for all at all ages.', 'https://sdgs.un.org/goals/goal3', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%203.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-03.jpg', '2022-06-11 05:07:42.557593', '2022-06-10 16:16:56.512502', 1),
(4, 'Quality Education', 'Ensure inclusive and equitable quality education and promote lifelong learning opportunities for all.', 'https://sdgs.un.org/goals/goal4', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%204.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-04.jpg', '2022-06-11 05:40:35.722550', '2022-06-10 16:20:00.176434', 1),
(5, 'Gender Equality', 'Achieve gender equality and empower all women and girls.', 'https://sdgs.un.org/goals/goal5', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%205.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-05.jpg', '2022-06-11 06:00:06.015005', '2022-06-10 16:21:13.259052', 1),
(6, 'Clean Water and Sanitation', 'Ensure availability and sustainable management of water and sanitation for all.', 'https://sdgs.un.org/goals/goal6', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%206.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-06.jpg', '2022-06-11 06:00:23.291819', '2022-06-10 16:22:06.442959', 1),
(7, 'Affordable and Clean Energy', 'Ensure access to affordable, reliable, sustainable and modern energy for all.', 'https://sdgs.un.org/goals/goal7', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%207.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-07.jpg', '2022-06-11 06:01:01.365775', '2022-06-10 16:23:19.414606', 1),
(8, 'Decent Work and Economic Growth', 'Promote sustained, inclusive and sustainable economic growth, full and productive employment and decent work for all.', 'https://sdgs.un.org/goals/goal8', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%208.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-08.jpg', '2022-06-11 06:01:22.191297', '2022-06-10 16:24:39.721011', 1),
(9, 'Industry, Innovation and Infrastructure', 'Build resilient infrastructure, promote inclusive and sustainable industrialization and foster innovation.', 'https://sdgs.un.org/goals/goal9', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%209.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-09.jpg', '2022-06-11 06:01:30.751846', '2022-06-10 22:25:55.968158', 1),
(10, 'Reduced Inequalities', 'Reduce inequality within and among countries.', 'https://sdgs.un.org/goals/goal10', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2010.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-10.jpg', '2022-06-11 06:01:40.891354', '2022-06-10 22:28:10.283902', 1),
(11, 'Sustainable Cities and Communities', 'Make cities and human settlements inclusive, safe, resilient and sustainable.', 'https://sdgs.un.org/goals/goal11', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2011.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-11.jpg', '2022-06-11 06:03:20.765373', '2022-06-10 22:29:41.617347', 1),
(12, 'Responsible Consumption and Production', 'Ensure sustainable consumption and production patterns.', 'https://sdgs.un.org/goals/goal12', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2012.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-12.jpg', '2022-06-11 06:03:39.638984', '2022-06-10 22:30:42.665374', 1),
(13, 'Climate Action', 'Take urgent action to combat climate change and its impacts.', 'https://sdgs.un.org/goals/goal13', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2013.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-13.jpg', '2022-06-11 06:03:54.765558', '2022-06-10 22:31:44.580692', 1),
(14, 'Life Below Water', 'Conserve and sustainably use the oceans, seas and marine resources for sustainable development.', 'https://sdgs.un.org/goals/goal14', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2014.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-14.jpg', '2022-06-11 06:04:13.553599', '2022-06-10 22:32:57.606495', 1),
(15, 'Life on Land', 'Protect, restore and promote sustainable use of terrestrial ecosystems, sustainably manage forests, combat desertification, and halt and reverse land degradation and halt biodiversity loss.', 'https://sdgs.un.org/goals/goal15', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2015.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-15.jpg', '2022-06-11 06:04:27.980834', '2022-06-10 22:34:08.404681', 1),
(16, 'Peace, Justice and Strong Institutions', 'Promote peaceful and inclusive societies for sustainable development, provide access to justice for all and build effective, accountable and inclusive institutions at all levels.', 'https://sdgs.un.org/goals/goal16', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2016.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-16.jpg', '2022-06-11 06:04:38.331901', '2022-06-10 22:34:57.074509', 1),
(17, 'Partnerships for the Goals', 'Strengthen the means of implementation and revitalize the Global Partnership for Sustainable Development.', 'https://sdgs.un.org/goals/goal17', 'https://sdgs.un.org/sites/default/files/2021-07/SDG_report_2021_Goal%2017.png', 'https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-17.jpg', '2022-06-11 06:04:48.420517', '2022-06-10 22:36:11.606655', 1);

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
(5, 'Information Technology', 1),
(6, 'Infrastructure & Transport', 1),
(7, 'Service Industries', 1),
(8, 'Trades', 1);

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
  `campus_id` bigint(20) DEFAULT NULL,
  `industry_id` bigint(20) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  `sent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_notification`
--

INSERT INTO `tafe_notification` (`id`, `type`, `title`, `body`, `data`, `sendTime`, `campus_id`, `industry_id`, `region_id`, `sent`) VALUES
(1, 'A', 'Hello Everyone!', 'This is a Test Notification sent to everyone.', '', '2022-06-18 11:06:59.000000', NULL, NULL, NULL, 1),
(2, 'I', 'Hello Business Students!', 'This is a Test Notification sent to Business Students!', '', '2022-06-10 04:30:09.000000', NULL, 1, NULL, 1),
(3, 'R', 'Hello Gold Coast Students!', 'This is a Test Notification sent to Gold Coast Students!', '', '2022-06-10 04:31:10.000000', NULL, NULL, 2, 1),
(4, 'C', 'Hello Robina!', 'This is a Test Notification sent to all Robina Students.', '', '2022-06-10 11:02:27.000000', 19, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tafe_point`
--

CREATE TABLE `tafe_point` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `time_created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_point`
--

INSERT INTO `tafe_point` (`id`, `title`, `description`, `image`, `code`, `last_update`, `time_created`) VALUES
(1, 'Test POI', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt molestie ipsum at imperdiet. Ut id urna est. Aenean in lorem nec lacus efficitur luctus. Pellentesque quis tellus vitae risus fringilla blandit. Mauris eget ligula at lectus rhoncus sagittis. Phasellus mollis tincidunt eleifend. Curabitur a molestie sem. Nam ultricies nisi sit amet vestibulum cursus. Maecenas id libero et felis dictum condimentum ac sed mauris. In hendrerit tellus id nulla molestie, vel efficitur massa faucibus. Fusce orci libero, faucibus vitae efficitur faucibus, semper nec nunc. Nullam turpis mauris, posuere in elit sit amet, euismod volutpat velit. Nam rutrum sed ligula vitae aliquet. Nullam vulputate est mi, in dapibus dui tempus eget. In rhoncus dolor quis justo imperdiet semper. Nunc tincidunt lectus blandit, laoreet erat eu, ultrices massa.', 'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?cs=srgb&dl=pexels-akwice-3094799.jpg&fm=jpg', '8703779867983567520', '2022-06-10 15:53:22.625979', '2022-06-10 15:53:22.625998');

-- --------------------------------------------------------

--
-- Table structure for table `tafe_profile`
--

CREATE TABLE `tafe_profile` (
  `id` bigint(20) NOT NULL,
  `type` varchar(2) NOT NULL,
  `platform` varchar(10) NOT NULL,
  `timeCreated` datetime(6) NOT NULL,
  `notificationToken` varchar(255) NOT NULL,
  `authUser_id` bigint(20) DEFAULT NULL,
  `campus_id` bigint(20) NOT NULL,
  `industry_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tafe_profile`
--

INSERT INTO `tafe_profile` (`id`, `type`, `platform`, `timeCreated`, `notificationToken`, `authUser_id`, `campus_id`, `industry_id`, `region_id`) VALUES
(1, 'S', '', '2022-06-08 15:20:37.044894', 'ExponentPushToken[Z8vdtWNvMCwm1LqOpCH7xi]', NULL, 16, 6, 2),
(2, 'P', '', '2022-06-09 02:25:04.549930', 'ExponentPushToken[j6Eit1OuYJfxK8pnEISbY8]', NULL, 19, 3, 2),
(3, 'S', '', '2022-06-10 11:57:44.279389', 'ExponentPushToken[Z8vdtWNvMCwm1LqOpCH7xi]', NULL, 1, 1, 1),
(4, 'S', '', '2022-06-11 03:10:18.588788', 'ExponentPushToken[6bDQnSIIoc6KBqPzoadkQ8]', NULL, 1, 1, 1),
(5, 'S', '', '2022-06-11 03:16:55.697036', 'ExponentPushToken[6bDQnSIIoc6KBqPzoadkQ8]', NULL, 1, 1, 1),
(6, 'S', '', '2022-06-18 11:05:19.128721', 'ExponentPushToken[Z8vdtWNvMCwm1LqOpCH7xi]', NULL, 16, 5, 2),
(7, 'S', '', '2022-06-22 15:51:37.422985', 'ExponentPushToken[j6Eit1OuYJfxK8pnEISbY8]', NULL, 19, 5, 2),
(8, 'S', '', '2022-06-22 19:39:18.144269', 'ExponentPushToken[gtlu_3PrIs0zAvIeJMyo_-]', NULL, 14, 1, 2),
(9, 'S', '', '2022-06-22 21:48:45.802174', 'ExponentPushToken[6fOP4YBFdxgf_tE0bV3C14]', NULL, 1, 1, 1),
(10, 'S', '', '2022-06-22 22:15:21.395690', '', NULL, 1, 1, 1),
(11, 'S', '', '2022-06-22 23:13:42.252054', '', NULL, 1, 1, 1),
(12, 'S', '', '2022-06-22 23:13:48.587408', '', NULL, 1, 1, 1),
(13, 'S', '', '2022-06-22 23:14:42.823403', '', NULL, 1, 1, 1),
(14, 'S', '', '2022-06-22 23:17:02.835801', '', NULL, 1, 1, 1),
(15, 'S', '', '2022-06-22 23:17:52.084941', '', NULL, 1, 1, 1),
(16, 'S', '', '2022-06-22 23:23:43.207503', '', NULL, 4, 1, 1),
(17, 'T', '', '2022-06-22 23:24:00.888721', '', NULL, 1, 2, 1),
(18, 'S', '', '2022-06-22 23:25:48.710890', '', NULL, 4, 1, 1),
(19, 'S', '', '2022-06-23 00:18:58.860067', '', NULL, 1, 1, 1);

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
-- Indexes for table `authentication_user`
--
ALTER TABLE `authentication_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `authentication_user_username_a09a089e_uniq` (`username`);

--
-- Indexes for table `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_groups_user_id_group_id_8af031ac_uniq` (`user_id`,`group_id`),
  ADD KEY `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_user_user_id_permission_id_ec51b09f_uniq` (`user_id`,`permission_id`),
  ADD KEY `authentication_user__permission_id_ea6be19a_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `axes_accessattempt_username_ip_address_user_agent_8ea22282_uniq` (`username`,`ip_address`,`user_agent`),
  ADD KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  ADD KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  ADD KEY `axes_accessattempt_username_3f2d4ca0` (`username`);

--
-- Indexes for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accessfailurelog_user_agent_ea145dda` (`user_agent`),
  ADD KEY `axes_accessfailurelog_ip_address_2e9f5a7f` (`ip_address`),
  ADD KEY `axes_accessfailurelog_username_a8b7e8a4` (`username`);

--
-- Indexes for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  ADD KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  ADD KEY `axes_accesslog_username_df93064b` (`username`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authentication_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
-- Indexes for table `tafe_goal`
--
ALTER TABLE `tafe_goal`
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
-- Indexes for table `tafe_point`
--
ALTER TABLE `tafe_point`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tafe_profile`
--
ALTER TABLE `tafe_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tafe_profile_authUser_id_d0ed0352_fk_authentication_user_id` (`authUser_id`),
  ADD KEY `tafe_profile_campus_id_d05b68ae_fk_tafe_campus_id` (`campus_id`),
  ADD KEY `tafe_profile_industry_id_760064fe_fk_tafe_industry_id` (`industry_id`),
  ADD KEY `tafe_profile_region_id_3cb5e650_fk_tafe_region_id` (`region_id`);

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
-- AUTO_INCREMENT for table `authentication_user`
--
ALTER TABLE `authentication_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `poi_point`
--
ALTER TABLE `poi_point`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tafe_facility`
--
ALTER TABLE `tafe_facility`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tafe_facilityhours`
--
ALTER TABLE `tafe_facilityhours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tafe_goal`
--
ALTER TABLE `tafe_goal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tafe_industry`
--
ALTER TABLE `tafe_industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tafe_notification`
--
ALTER TABLE `tafe_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tafe_point`
--
ALTER TABLE `tafe_point`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tafe_profile`
--
ALTER TABLE `tafe_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tafe_region`
--
ALTER TABLE `tafe_region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD CONSTRAINT `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `authentication_user__user_id_30868577_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Constraints for table `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD CONSTRAINT `authentication_user__permission_id_ea6be19a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `authentication_user__user_id_736ebf7e_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`),
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
  ADD CONSTRAINT `tafe_profile_region_id_3cb5e650_fk_tafe_region_id` FOREIGN KEY (`region_id`) REFERENCES `tafe_region` (`id`),
  ADD CONSTRAINT `tafe_profile_authUser_id_d0ed0352_fk_authentication_user_id` FOREIGN KEY (`authUser_id`) REFERENCES `authentication_user` (`id`),
  ADD CONSTRAINT `tafe_profile_campus_id_d05b68ae_fk_tafe_campus_id` FOREIGN KEY (`campus_id`) REFERENCES `tafe_campus` (`id`),
  ADD CONSTRAINT `tafe_profile_industry_id_760064fe_fk_tafe_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `tafe_industry` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
