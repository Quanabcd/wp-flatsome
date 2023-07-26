-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2023 lúc 07:32 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tamcocgarden`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_berocket_termmeta`
--

CREATE TABLE `wp_berocket_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `berocket_term_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(339, 485, 'admin', 'huy7989@gmail.com', '', '::1', '2020-01-17 02:25:58', '2020-01-17 02:25:58', '123', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'comment', 0, 1),
(768, 1142, 'ActionScheduler', '', '', '', '2020-02-21 02:38:54', '2020-02-21 02:38:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(771, 1255, 'ActionScheduler', '', '', '', '2020-02-24 09:04:34', '2020-02-24 09:04:34', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(772, 1142, 'ActionScheduler', '', '', '', '2020-02-24 09:04:34', '2020-02-24 09:04:34', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(773, 1142, 'ActionScheduler', '', '', '', '2020-02-24 09:04:34', '2020-02-24 09:04:34', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(774, 1256, 'ActionScheduler', '', '', '', '2020-02-24 09:04:35', '2020-02-24 09:04:35', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(775, 1255, 'ActionScheduler', '', '', '', '2020-02-24 10:05:02', '2020-02-24 10:05:02', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(776, 1255, 'ActionScheduler', '', '', '', '2020-02-24 10:05:03', '2020-02-24 10:05:03', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(777, 1273, 'ActionScheduler', '', '', '', '2020-02-24 10:05:03', '2020-02-24 10:05:03', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(778, 1256, 'ActionScheduler', '', '', '', '2020-02-24 10:05:03', '2020-02-24 10:05:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(779, 1256, 'ActionScheduler', '', '', '', '2020-02-24 10:05:04', '2020-02-24 10:05:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(780, 1274, 'ActionScheduler', '', '', '', '2020-02-24 10:05:04', '2020-02-24 10:05:04', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(781, 1273, 'ActionScheduler', '', '', '', '2020-02-24 11:05:36', '2020-02-24 11:05:36', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(782, 1273, 'ActionScheduler', '', '', '', '2020-02-24 11:05:37', '2020-02-24 11:05:37', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(783, 1287, 'ActionScheduler', '', '', '', '2020-02-24 11:05:37', '2020-02-24 11:05:37', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(784, 1274, 'ActionScheduler', '', '', '', '2020-02-24 11:05:37', '2020-02-24 11:05:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(785, 1274, 'ActionScheduler', '', '', '', '2020-02-24 11:05:37', '2020-02-24 11:05:37', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(786, 1288, 'ActionScheduler', '', '', '', '2020-02-24 11:05:37', '2020-02-24 11:05:37', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(787, 1287, 'ActionScheduler', '', '', '', '2020-02-24 13:46:52', '2020-02-24 13:46:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(788, 1287, 'ActionScheduler', '', '', '', '2020-02-24 13:46:52', '2020-02-24 13:46:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(789, 1289, 'ActionScheduler', '', '', '', '2020-02-24 13:46:53', '2020-02-24 13:46:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(790, 1288, 'ActionScheduler', '', '', '', '2020-02-24 13:46:53', '2020-02-24 13:46:53', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(791, 1288, 'ActionScheduler', '', '', '', '2020-02-24 13:46:53', '2020-02-24 13:46:53', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(792, 1290, 'ActionScheduler', '', '', '', '2020-02-24 13:46:53', '2020-02-24 13:46:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(793, 1289, 'ActionScheduler', '', '', '', '2020-02-24 14:46:53', '2020-02-24 14:46:53', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(794, 1289, 'ActionScheduler', '', '', '', '2020-02-24 14:46:53', '2020-02-24 14:46:53', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(795, 1308, 'ActionScheduler', '', '', '', '2020-02-24 14:46:54', '2020-02-24 14:46:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(796, 1290, 'ActionScheduler', '', '', '', '2020-02-24 14:46:55', '2020-02-24 14:46:55', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(797, 1290, 'ActionScheduler', '', '', '', '2020-02-24 14:46:55', '2020-02-24 14:46:55', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(798, 1309, 'ActionScheduler', '', '', '', '2020-02-24 14:46:56', '2020-02-24 14:46:56', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(799, 1308, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(800, 1308, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(801, 1332, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(802, 1309, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(803, 1309, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(804, 1333, 'ActionScheduler', '', '', '', '2020-02-24 15:47:25', '2020-02-24 15:47:25', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(805, 1332, 'ActionScheduler', '', '', '', '2020-02-25 10:18:03', '2020-02-25 10:18:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(806, 1332, 'ActionScheduler', '', '', '', '2020-02-25 10:18:06', '2020-02-25 10:18:06', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(807, 1334, 'ActionScheduler', '', '', '', '2020-02-25 10:18:08', '2020-02-25 10:18:08', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(808, 1333, 'ActionScheduler', '', '', '', '2020-02-25 10:18:47', '2020-02-25 10:18:47', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(809, 1333, 'ActionScheduler', '', '', '', '2020-02-25 10:18:47', '2020-02-25 10:18:47', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(810, 1335, 'ActionScheduler', '', '', '', '2020-02-25 10:18:47', '2020-02-25 10:18:47', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(811, 1334, 'ActionScheduler', '', '', '', '2020-02-25 15:00:30', '2020-02-25 15:00:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(812, 1334, 'ActionScheduler', '', '', '', '2020-02-25 15:00:31', '2020-02-25 15:00:31', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(813, 1336, 'ActionScheduler', '', '', '', '2020-02-25 15:00:33', '2020-02-25 15:00:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(814, 1335, 'ActionScheduler', '', '', '', '2020-02-25 15:00:33', '2020-02-25 15:00:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(815, 1335, 'ActionScheduler', '', '', '', '2020-02-25 15:00:33', '2020-02-25 15:00:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(816, 1337, 'ActionScheduler', '', '', '', '2020-02-25 15:00:33', '2020-02-25 15:00:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(817, 1336, 'ActionScheduler', '', '', '', '2020-03-02 09:45:34', '2020-03-02 09:45:34', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(818, 1336, 'ActionScheduler', '', '', '', '2020-03-02 09:45:35', '2020-03-02 09:45:35', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(819, 1338, 'ActionScheduler', '', '', '', '2020-03-02 09:45:36', '2020-03-02 09:45:36', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(820, 1337, 'ActionScheduler', '', '', '', '2020-03-02 09:45:36', '2020-03-02 09:45:36', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(821, 1337, 'ActionScheduler', '', '', '', '2020-03-02 09:45:36', '2020-03-02 09:45:36', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(822, 1339, 'ActionScheduler', '', '', '', '2020-03-02 09:45:36', '2020-03-02 09:45:36', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(823, 1338, 'ActionScheduler', '', '', '', '2020-03-02 11:01:27', '2020-03-02 11:01:27', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(824, 1338, 'ActionScheduler', '', '', '', '2020-03-02 11:01:28', '2020-03-02 11:01:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(825, 1342, 'ActionScheduler', '', '', '', '2020-03-02 11:01:28', '2020-03-02 11:01:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(826, 1339, 'ActionScheduler', '', '', '', '2020-03-02 11:01:28', '2020-03-02 11:01:28', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(827, 1339, 'ActionScheduler', '', '', '', '2020-03-02 11:01:28', '2020-03-02 11:01:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(828, 1343, 'ActionScheduler', '', '', '', '2020-03-02 11:01:28', '2020-03-02 11:01:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(829, 1342, 'ActionScheduler', '', '', '', '2020-03-03 02:56:47', '2020-03-03 02:56:47', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(830, 1342, 'ActionScheduler', '', '', '', '2020-03-03 02:56:48', '2020-03-03 02:56:48', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(831, 1346, 'ActionScheduler', '', '', '', '2020-03-03 02:56:48', '2020-03-03 02:56:48', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(832, 1343, 'ActionScheduler', '', '', '', '2020-03-03 02:56:48', '2020-03-03 02:56:48', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(833, 1343, 'ActionScheduler', '', '', '', '2020-03-03 02:56:49', '2020-03-03 02:56:49', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(834, 1347, 'ActionScheduler', '', '', '', '2020-03-03 02:56:49', '2020-03-03 02:56:49', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(835, 1346, 'ActionScheduler', '', '', '', '2020-03-03 04:01:31', '2020-03-03 04:01:31', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(836, 1346, 'ActionScheduler', '', '', '', '2020-03-03 04:01:32', '2020-03-03 04:01:32', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(837, 1348, 'ActionScheduler', '', '', '', '2020-03-03 04:01:33', '2020-03-03 04:01:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(838, 1347, 'ActionScheduler', '', '', '', '2020-03-03 04:01:33', '2020-03-03 04:01:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(839, 1347, 'ActionScheduler', '', '', '', '2020-03-03 04:01:33', '2020-03-03 04:01:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(840, 1349, 'ActionScheduler', '', '', '', '2020-03-03 04:01:33', '2020-03-03 04:01:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(841, 1348, 'ActionScheduler', '', '', '', '2020-03-03 05:01:49', '2020-03-03 05:01:49', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(842, 1348, 'ActionScheduler', '', '', '', '2020-03-03 05:01:50', '2020-03-03 05:01:50', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(843, 1352, 'ActionScheduler', '', '', '', '2020-03-03 05:01:50', '2020-03-03 05:01:50', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(844, 1349, 'ActionScheduler', '', '', '', '2020-03-03 05:01:50', '2020-03-03 05:01:50', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(845, 1349, 'ActionScheduler', '', '', '', '2020-03-03 05:01:50', '2020-03-03 05:01:50', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(846, 1353, 'ActionScheduler', '', '', '', '2020-03-03 05:01:50', '2020-03-03 05:01:50', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(847, 1352, 'ActionScheduler', '', '', '', '2020-03-03 06:32:04', '2020-03-03 06:32:04', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(848, 1352, 'ActionScheduler', '', '', '', '2020-03-03 06:32:05', '2020-03-03 06:32:05', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(849, 1354, 'ActionScheduler', '', '', '', '2020-03-03 06:32:06', '2020-03-03 06:32:06', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(850, 1353, 'ActionScheduler', '', '', '', '2020-03-03 06:32:06', '2020-03-03 06:32:06', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(851, 1353, 'ActionScheduler', '', '', '', '2020-03-03 06:32:06', '2020-03-03 06:32:06', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(852, 1355, 'ActionScheduler', '', '', '', '2020-03-03 06:32:06', '2020-03-03 06:32:06', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(853, 1354, 'ActionScheduler', '', '', '', '2020-03-03 07:33:04', '2020-03-03 07:33:04', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(854, 1354, 'ActionScheduler', '', '', '', '2020-03-03 07:33:04', '2020-03-03 07:33:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(855, 1358, 'ActionScheduler', '', '', '', '2020-03-03 07:33:05', '2020-03-03 07:33:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(856, 1355, 'ActionScheduler', '', '', '', '2020-03-03 07:33:05', '2020-03-03 07:33:05', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(857, 1355, 'ActionScheduler', '', '', '', '2020-03-03 07:33:05', '2020-03-03 07:33:05', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(858, 1359, 'ActionScheduler', '', '', '', '2020-03-03 07:33:05', '2020-03-03 07:33:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(859, 1358, 'ActionScheduler', '', '', '', '2020-03-03 08:34:38', '2020-03-03 08:34:38', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(860, 1358, 'ActionScheduler', '', '', '', '2020-03-03 08:34:39', '2020-03-03 08:34:39', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(861, 1361, 'ActionScheduler', '', '', '', '2020-03-03 08:34:39', '2020-03-03 08:34:39', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(862, 1359, 'ActionScheduler', '', '', '', '2020-03-03 08:34:39', '2020-03-03 08:34:39', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(863, 1359, 'ActionScheduler', '', '', '', '2020-03-03 08:34:39', '2020-03-03 08:34:39', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(864, 1362, 'ActionScheduler', '', '', '', '2020-03-03 08:34:39', '2020-03-03 08:34:39', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(865, 1361, 'ActionScheduler', '', '', '', '2020-03-03 10:12:45', '2020-03-03 10:12:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(866, 1361, 'ActionScheduler', '', '', '', '2020-03-03 10:12:48', '2020-03-03 10:12:48', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(867, 1372, 'ActionScheduler', '', '', '', '2020-03-03 10:12:51', '2020-03-03 10:12:51', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(868, 1362, 'ActionScheduler', '', '', '', '2020-03-03 10:15:21', '2020-03-03 10:15:21', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(869, 1362, 'ActionScheduler', '', '', '', '2020-03-03 10:15:22', '2020-03-03 10:15:22', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(870, 1373, 'ActionScheduler', '', '', '', '2020-03-03 10:15:22', '2020-03-03 10:15:22', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(871, 1372, 'ActionScheduler', '', '', '', '2020-03-03 13:38:55', '2020-03-03 13:38:55', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(872, 1372, 'ActionScheduler', '', '', '', '2020-03-03 13:38:56', '2020-03-03 13:38:56', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(873, 1374, 'ActionScheduler', '', '', '', '2020-03-03 13:38:56', '2020-03-03 13:38:56', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(874, 1373, 'ActionScheduler', '', '', '', '2020-03-03 13:38:56', '2020-03-03 13:38:56', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(875, 1373, 'ActionScheduler', '', '', '', '2020-03-03 13:38:56', '2020-03-03 13:38:56', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(876, 1375, 'ActionScheduler', '', '', '', '2020-03-03 13:38:56', '2020-03-03 13:38:56', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(877, 1374, 'ActionScheduler', '', '', '', '2020-03-04 01:55:57', '2020-03-04 01:55:57', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(878, 1374, 'ActionScheduler', '', '', '', '2020-03-04 01:55:58', '2020-03-04 01:55:58', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(879, 1376, 'ActionScheduler', '', '', '', '2020-03-04 01:55:59', '2020-03-04 01:55:59', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(880, 1375, 'ActionScheduler', '', '', '', '2020-03-04 01:55:59', '2020-03-04 01:55:59', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(881, 1375, 'ActionScheduler', '', '', '', '2020-03-04 01:55:59', '2020-03-04 01:55:59', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(882, 1377, 'ActionScheduler', '', '', '', '2020-03-04 01:55:59', '2020-03-04 01:55:59', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(883, 1376, 'ActionScheduler', '', '', '', '2020-03-04 03:00:17', '2020-03-04 03:00:17', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(884, 1376, 'ActionScheduler', '', '', '', '2020-03-04 03:00:18', '2020-03-04 03:00:18', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(885, 1388, 'ActionScheduler', '', '', '', '2020-03-04 03:00:19', '2020-03-04 03:00:19', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(886, 1377, 'ActionScheduler', '', '', '', '2020-03-04 03:00:19', '2020-03-04 03:00:19', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(887, 1377, 'ActionScheduler', '', '', '', '2020-03-04 03:00:19', '2020-03-04 03:00:19', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(888, 1389, 'ActionScheduler', '', '', '', '2020-03-04 03:00:19', '2020-03-04 03:00:19', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(889, 1388, 'ActionScheduler', '', '', '', '2020-03-04 04:00:28', '2020-03-04 04:00:28', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(890, 1388, 'ActionScheduler', '', '', '', '2020-03-04 04:00:28', '2020-03-04 04:00:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(891, 1390, 'ActionScheduler', '', '', '', '2020-03-04 04:00:29', '2020-03-04 04:00:29', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(892, 1389, 'ActionScheduler', '', '', '', '2020-03-04 04:00:29', '2020-03-04 04:00:29', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(893, 1389, 'ActionScheduler', '', '', '', '2020-03-04 04:00:29', '2020-03-04 04:00:29', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(894, 1391, 'ActionScheduler', '', '', '', '2020-03-04 04:00:29', '2020-03-04 04:00:29', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(895, 1390, 'ActionScheduler', '', '', '', '2020-03-04 05:00:30', '2020-03-04 05:00:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(896, 1390, 'ActionScheduler', '', '', '', '2020-03-04 05:00:30', '2020-03-04 05:00:30', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(897, 1402, 'ActionScheduler', '', '', '', '2020-03-04 05:00:30', '2020-03-04 05:00:30', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(898, 1391, 'ActionScheduler', '', '', '', '2020-03-04 05:00:30', '2020-03-04 05:00:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(899, 1391, 'ActionScheduler', '', '', '', '2020-03-04 05:00:30', '2020-03-04 05:00:30', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(900, 1403, 'ActionScheduler', '', '', '', '2020-03-04 05:00:31', '2020-03-04 05:00:31', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(901, 1402, 'ActionScheduler', '', '', '', '2020-03-04 06:33:13', '2020-03-04 06:33:13', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(902, 1402, 'ActionScheduler', '', '', '', '2020-03-04 06:33:14', '2020-03-04 06:33:14', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(903, 1404, 'ActionScheduler', '', '', '', '2020-03-04 06:33:14', '2020-03-04 06:33:14', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(904, 1403, 'ActionScheduler', '', '', '', '2020-03-04 06:33:14', '2020-03-04 06:33:14', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(905, 1403, 'ActionScheduler', '', '', '', '2020-03-04 06:33:14', '2020-03-04 06:33:14', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(906, 1405, 'ActionScheduler', '', '', '', '2020-03-04 06:33:15', '2020-03-04 06:33:15', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(907, 1404, 'ActionScheduler', '', '', '', '2020-03-04 07:33:25', '2020-03-04 07:33:25', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(908, 1404, 'ActionScheduler', '', '', '', '2020-03-04 07:33:25', '2020-03-04 07:33:25', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(909, 1438, 'ActionScheduler', '', '', '', '2020-03-04 07:33:26', '2020-03-04 07:33:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(910, 1405, 'ActionScheduler', '', '', '', '2020-03-04 07:33:26', '2020-03-04 07:33:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(911, 1405, 'ActionScheduler', '', '', '', '2020-03-04 07:33:26', '2020-03-04 07:33:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(912, 1439, 'ActionScheduler', '', '', '', '2020-03-04 07:33:26', '2020-03-04 07:33:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(913, 1438, 'ActionScheduler', '', '', '', '2020-03-04 08:34:08', '2020-03-04 08:34:08', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(914, 1438, 'ActionScheduler', '', '', '', '2020-03-04 08:34:09', '2020-03-04 08:34:09', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(915, 1444, 'ActionScheduler', '', '', '', '2020-03-04 08:34:09', '2020-03-04 08:34:09', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(916, 1439, 'ActionScheduler', '', '', '', '2020-03-04 08:34:09', '2020-03-04 08:34:09', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(917, 1439, 'ActionScheduler', '', '', '', '2020-03-04 08:34:09', '2020-03-04 08:34:09', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(918, 1445, 'ActionScheduler', '', '', '', '2020-03-04 08:34:09', '2020-03-04 08:34:09', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(919, 1444, 'ActionScheduler', '', '', '', '2020-03-04 09:34:37', '2020-03-04 09:34:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(920, 1444, 'ActionScheduler', '', '', '', '2020-03-04 09:34:37', '2020-03-04 09:34:37', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(921, 1448, 'ActionScheduler', '', '', '', '2020-03-04 09:34:38', '2020-03-04 09:34:38', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(922, 1445, 'ActionScheduler', '', '', '', '2020-03-04 09:34:38', '2020-03-04 09:34:38', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(923, 1445, 'ActionScheduler', '', '', '', '2020-03-04 09:34:38', '2020-03-04 09:34:38', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(924, 1449, 'ActionScheduler', '', '', '', '2020-03-04 09:34:38', '2020-03-04 09:34:38', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(925, 1448, 'ActionScheduler', '', '', '', '2020-03-04 10:34:52', '2020-03-04 10:34:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(926, 1448, 'ActionScheduler', '', '', '', '2020-03-04 10:34:52', '2020-03-04 10:34:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(927, 1453, 'ActionScheduler', '', '', '', '2020-03-04 10:34:53', '2020-03-04 10:34:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(928, 1449, 'ActionScheduler', '', '', '', '2020-03-04 10:34:53', '2020-03-04 10:34:53', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(929, 1449, 'ActionScheduler', '', '', '', '2020-03-04 10:34:53', '2020-03-04 10:34:53', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(930, 1454, 'ActionScheduler', '', '', '', '2020-03-04 10:34:53', '2020-03-04 10:34:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(931, 1453, 'ActionScheduler', '', '', '', '2020-03-04 13:33:44', '2020-03-04 13:33:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(932, 1453, 'ActionScheduler', '', '', '', '2020-03-04 13:33:45', '2020-03-04 13:33:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(933, 1455, 'ActionScheduler', '', '', '', '2020-03-04 13:33:46', '2020-03-04 13:33:46', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(934, 1454, 'ActionScheduler', '', '', '', '2020-03-04 13:33:46', '2020-03-04 13:33:46', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(935, 1454, 'ActionScheduler', '', '', '', '2020-03-04 13:33:46', '2020-03-04 13:33:46', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(936, 1456, 'ActionScheduler', '', '', '', '2020-03-04 13:33:46', '2020-03-04 13:33:46', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(937, 1455, 'ActionScheduler', '', '', '', '2020-03-04 14:55:44', '2020-03-04 14:55:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(938, 1455, 'ActionScheduler', '', '', '', '2020-03-04 14:55:45', '2020-03-04 14:55:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(939, 1457, 'ActionScheduler', '', '', '', '2020-03-04 14:55:45', '2020-03-04 14:55:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(940, 1456, 'ActionScheduler', '', '', '', '2020-03-04 14:55:45', '2020-03-04 14:55:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(941, 1456, 'ActionScheduler', '', '', '', '2020-03-04 14:55:45', '2020-03-04 14:55:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(942, 1458, 'ActionScheduler', '', '', '', '2020-03-04 14:55:46', '2020-03-04 14:55:46', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(943, 1457, 'ActionScheduler', '', '', '', '2020-03-05 04:53:11', '2020-03-05 04:53:11', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(944, 1457, 'ActionScheduler', '', '', '', '2020-03-05 04:53:12', '2020-03-05 04:53:12', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(945, 1459, 'ActionScheduler', '', '', '', '2020-03-05 04:53:13', '2020-03-05 04:53:13', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(946, 1458, 'ActionScheduler', '', '', '', '2020-03-05 04:53:13', '2020-03-05 04:53:13', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(947, 1458, 'ActionScheduler', '', '', '', '2020-03-05 04:53:13', '2020-03-05 04:53:13', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(948, 1460, 'ActionScheduler', '', '', '', '2020-03-05 04:53:13', '2020-03-05 04:53:13', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(949, 1459, 'ActionScheduler', '', '', '', '2020-03-05 06:31:46', '2020-03-05 06:31:46', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(950, 1459, 'ActionScheduler', '', '', '', '2020-03-05 06:31:46', '2020-03-05 06:31:46', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(951, 1461, 'ActionScheduler', '', '', '', '2020-03-05 06:31:47', '2020-03-05 06:31:47', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(952, 1460, 'ActionScheduler', '', '', '', '2020-03-05 06:31:47', '2020-03-05 06:31:47', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(953, 1460, 'ActionScheduler', '', '', '', '2020-03-05 06:31:47', '2020-03-05 06:31:47', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(954, 1462, 'ActionScheduler', '', '', '', '2020-03-05 06:31:47', '2020-03-05 06:31:47', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(955, 1461, 'ActionScheduler', '', '', '', '2020-03-05 07:46:41', '2020-03-05 07:46:41', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(956, 1461, 'ActionScheduler', '', '', '', '2020-03-05 07:46:41', '2020-03-05 07:46:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(957, 1463, 'ActionScheduler', '', '', '', '2020-03-05 07:46:42', '2020-03-05 07:46:42', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(958, 1462, 'ActionScheduler', '', '', '', '2020-03-05 07:46:42', '2020-03-05 07:46:42', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(959, 1462, 'ActionScheduler', '', '', '', '2020-03-05 07:46:42', '2020-03-05 07:46:42', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(960, 1464, 'ActionScheduler', '', '', '', '2020-03-05 07:46:42', '2020-03-05 07:46:42', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(961, 1463, 'ActionScheduler', '', '', '', '2020-03-05 08:46:43', '2020-03-05 08:46:43', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(962, 1463, 'ActionScheduler', '', '', '', '2020-03-05 08:46:43', '2020-03-05 08:46:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(963, 1466, 'ActionScheduler', '', '', '', '2020-03-05 08:46:43', '2020-03-05 08:46:43', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(964, 1464, 'ActionScheduler', '', '', '', '2020-03-05 08:46:43', '2020-03-05 08:46:43', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(965, 1464, 'ActionScheduler', '', '', '', '2020-03-05 08:46:43', '2020-03-05 08:46:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(966, 1467, 'ActionScheduler', '', '', '', '2020-03-05 08:46:44', '2020-03-05 08:46:44', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(967, 1466, 'ActionScheduler', '', '', '', '2020-03-05 09:47:57', '2020-03-05 09:47:57', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(968, 1466, 'ActionScheduler', '', '', '', '2020-03-05 09:47:57', '2020-03-05 09:47:57', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(969, 1471, 'ActionScheduler', '', '', '', '2020-03-05 09:47:58', '2020-03-05 09:47:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(970, 1467, 'ActionScheduler', '', '', '', '2020-03-05 09:47:58', '2020-03-05 09:47:58', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(971, 1467, 'ActionScheduler', '', '', '', '2020-03-05 09:47:58', '2020-03-05 09:47:58', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(972, 1472, 'ActionScheduler', '', '', '', '2020-03-05 09:47:58', '2020-03-05 09:47:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(973, 1471, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(974, 1471, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(975, 1473, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(976, 1472, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(977, 1472, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(978, 1474, 'ActionScheduler', '', '', '', '2020-03-05 13:49:30', '2020-03-05 13:49:30', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(979, 1473, 'ActionScheduler', '', '', '', '2020-03-05 14:49:32', '2020-03-05 14:49:32', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(980, 1473, 'ActionScheduler', '', '', '', '2020-03-05 14:49:33', '2020-03-05 14:49:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(981, 1475, 'ActionScheduler', '', '', '', '2020-03-05 14:49:33', '2020-03-05 14:49:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(982, 1474, 'ActionScheduler', '', '', '', '2020-03-05 14:49:33', '2020-03-05 14:49:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(983, 1474, 'ActionScheduler', '', '', '', '2020-03-05 14:49:33', '2020-03-05 14:49:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(984, 1476, 'ActionScheduler', '', '', '', '2020-03-05 14:49:33', '2020-03-05 14:49:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(985, 1475, 'ActionScheduler', '', '', '', '2020-03-05 15:49:44', '2020-03-05 15:49:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(986, 1475, 'ActionScheduler', '', '', '', '2020-03-05 15:49:44', '2020-03-05 15:49:44', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(987, 1477, 'ActionScheduler', '', '', '', '2020-03-05 15:49:45', '2020-03-05 15:49:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(988, 1476, 'ActionScheduler', '', '', '', '2020-03-05 15:49:45', '2020-03-05 15:49:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(989, 1476, 'ActionScheduler', '', '', '', '2020-03-05 15:49:45', '2020-03-05 15:49:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(990, 1478, 'ActionScheduler', '', '', '', '2020-03-05 15:49:45', '2020-03-05 15:49:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(991, 1477, 'ActionScheduler', '', '', '', '2020-03-05 16:51:03', '2020-03-05 16:51:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(992, 1477, 'ActionScheduler', '', '', '', '2020-03-05 16:51:04', '2020-03-05 16:51:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(993, 1479, 'ActionScheduler', '', '', '', '2020-03-05 16:51:04', '2020-03-05 16:51:04', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(994, 1478, 'ActionScheduler', '', '', '', '2020-03-05 16:51:04', '2020-03-05 16:51:04', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(995, 1478, 'ActionScheduler', '', '', '', '2020-03-05 16:51:04', '2020-03-05 16:51:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(996, 1480, 'ActionScheduler', '', '', '', '2020-03-05 16:51:05', '2020-03-05 16:51:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(997, 1479, 'ActionScheduler', '', '', '', '2020-03-06 04:40:08', '2020-03-06 04:40:08', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(998, 1479, 'ActionScheduler', '', '', '', '2020-03-06 04:40:09', '2020-03-06 04:40:09', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(999, 1481, 'ActionScheduler', '', '', '', '2020-03-06 04:40:11', '2020-03-06 04:40:11', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1000, 1480, 'ActionScheduler', '', '', '', '2020-03-06 04:40:53', '2020-03-06 04:40:53', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1001, 1480, 'ActionScheduler', '', '', '', '2020-03-06 04:40:53', '2020-03-06 04:40:53', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1002, 1482, 'ActionScheduler', '', '', '', '2020-03-06 04:40:54', '2020-03-06 04:40:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1003, 1481, 'ActionScheduler', '', '', '', '2020-03-06 06:49:25', '2020-03-06 06:49:25', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1004, 1481, 'ActionScheduler', '', '', '', '2020-03-06 06:49:25', '2020-03-06 06:49:25', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1005, 1483, 'ActionScheduler', '', '', '', '2020-03-06 06:49:26', '2020-03-06 06:49:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1006, 1482, 'ActionScheduler', '', '', '', '2020-03-06 06:49:26', '2020-03-06 06:49:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1007, 1482, 'ActionScheduler', '', '', '', '2020-03-06 06:49:26', '2020-03-06 06:49:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1008, 1484, 'ActionScheduler', '', '', '', '2020-03-06 06:49:26', '2020-03-06 06:49:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1009, 1483, 'ActionScheduler', '', '', '', '2020-03-06 07:52:17', '2020-03-06 07:52:17', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1010, 1483, 'ActionScheduler', '', '', '', '2020-03-06 07:52:17', '2020-03-06 07:52:17', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1011, 1485, 'ActionScheduler', '', '', '', '2020-03-06 07:52:17', '2020-03-06 07:52:17', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1012, 1484, 'ActionScheduler', '', '', '', '2020-03-06 07:52:17', '2020-03-06 07:52:17', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1013, 1484, 'ActionScheduler', '', '', '', '2020-03-06 07:52:17', '2020-03-06 07:52:17', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1014, 1486, 'ActionScheduler', '', '', '', '2020-03-06 07:52:18', '2020-03-06 07:52:18', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1015, 1485, 'ActionScheduler', '', '', '', '2020-03-06 08:52:41', '2020-03-06 08:52:41', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1016, 1485, 'ActionScheduler', '', '', '', '2020-03-06 08:52:42', '2020-03-06 08:52:42', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1017, 1487, 'ActionScheduler', '', '', '', '2020-03-06 08:52:42', '2020-03-06 08:52:42', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1018, 1486, 'ActionScheduler', '', '', '', '2020-03-06 08:52:42', '2020-03-06 08:52:42', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1019, 1486, 'ActionScheduler', '', '', '', '2020-03-06 08:52:42', '2020-03-06 08:52:42', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1020, 1488, 'ActionScheduler', '', '', '', '2020-03-06 08:52:42', '2020-03-06 08:52:42', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1021, 1487, 'ActionScheduler', '', '', '', '2020-03-06 09:52:51', '2020-03-06 09:52:51', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1022, 1487, 'ActionScheduler', '', '', '', '2020-03-06 09:52:52', '2020-03-06 09:52:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1023, 1489, 'ActionScheduler', '', '', '', '2020-03-06 09:52:52', '2020-03-06 09:52:52', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1024, 1488, 'ActionScheduler', '', '', '', '2020-03-06 09:52:52', '2020-03-06 09:52:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1025, 1488, 'ActionScheduler', '', '', '', '2020-03-06 09:52:52', '2020-03-06 09:52:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1026, 1490, 'ActionScheduler', '', '', '', '2020-03-06 09:52:53', '2020-03-06 09:52:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1027, 1489, 'ActionScheduler', '', '', '', '2020-03-06 11:27:58', '2020-03-06 11:27:58', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1028, 1489, 'ActionScheduler', '', '', '', '2020-03-06 11:27:58', '2020-03-06 11:27:58', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1029, 1491, 'ActionScheduler', '', '', '', '2020-03-06 11:27:59', '2020-03-06 11:27:59', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1030, 1490, 'ActionScheduler', '', '', '', '2020-03-06 11:27:59', '2020-03-06 11:27:59', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1031, 1490, 'ActionScheduler', '', '', '', '2020-03-06 11:27:59', '2020-03-06 11:27:59', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1032, 1492, 'ActionScheduler', '', '', '', '2020-03-06 11:27:59', '2020-03-06 11:27:59', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1033, 1491, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1034, 1491, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1035, 1493, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1036, 1492, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1037, 1492, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1038, 1494, 'ActionScheduler', '', '', '', '2020-03-06 12:28:58', '2020-03-06 12:28:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1039, 1493, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1040, 1493, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1041, 1495, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1042, 1494, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1043, 1494, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1044, 1496, 'ActionScheduler', '', '', '', '2020-03-06 13:29:57', '2020-03-06 13:29:57', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1045, 1495, 'ActionScheduler', '', '', '', '2020-03-06 14:58:30', '2020-03-06 14:58:30', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1046, 1495, 'ActionScheduler', '', '', '', '2020-03-06 14:58:31', '2020-03-06 14:58:31', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1047, 1497, 'ActionScheduler', '', '', '', '2020-03-06 14:58:31', '2020-03-06 14:58:31', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1048, 1496, 'ActionScheduler', '', '', '', '2020-03-06 14:58:31', '2020-03-06 14:58:31', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1049, 1496, 'ActionScheduler', '', '', '', '2020-03-06 14:58:31', '2020-03-06 14:58:31', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1050, 1498, 'ActionScheduler', '', '', '', '2020-03-06 14:58:31', '2020-03-06 14:58:31', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1051, 1497, 'ActionScheduler', '', '', '', '2020-03-09 02:03:59', '2020-03-09 02:03:59', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1052, 1497, 'ActionScheduler', '', '', '', '2020-03-09 02:03:59', '2020-03-09 02:03:59', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1053, 1499, 'ActionScheduler', '', '', '', '2020-03-09 02:04:00', '2020-03-09 02:04:00', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1054, 1498, 'ActionScheduler', '', '', '', '2020-03-09 02:04:00', '2020-03-09 02:04:00', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1055, 1498, 'ActionScheduler', '', '', '', '2020-03-09 02:04:00', '2020-03-09 02:04:00', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1056, 1500, 'ActionScheduler', '', '', '', '2020-03-09 02:04:00', '2020-03-09 02:04:00', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1057, 1499, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1058, 1499, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1059, 1501, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1060, 1500, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1061, 1500, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(1062, 1502, 'ActionScheduler', '', '', '', '2023-05-29 12:22:23', '2023-05-29 12:22:23', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_distributed_storage`
--

CREATE TABLE `wp_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) NOT NULL,
  `storage_key` varchar(40) NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT 0,
  `storage_data` longtext NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_fingerprints`
--

CREATE TABLE `wp_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext NOT NULL,
  `fingerprint_snapshot` longtext NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT 0,
  `fingerprint_status` varchar(20) NOT NULL,
  `fingerprint_uuid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_geolocation_cache`
--

CREATE TABLE `wp_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) NOT NULL,
  `location_credit` varchar(255) NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_lockouts`
--

CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT 1,
  `lockout_context` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_logs`
--

CREATE TABLE `wp_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `data` longtext NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(500) NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `remote_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_itsec_logs`
--

INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(1, 0, 'notification_center', 'send::hide-backend', 'a:2:{s:10:\"recipients\";a:1:{i:0;s:20:\"kythuat@tamnghia.com\";}s:7:\"subject\";s:58:\"[localhost/tracologistics] WordPress Login Address Changed\";}', 'debug', '2020-02-20 04:02:01', '2020-02-20 04:01:58', 73144840, 73234448, 'http://localhost/tracologistics/wp-admin/admin-ajax.php', 1, 1, '::1'),
(2, 0, 'notification_center', 'send_failed::hide-backend', 'a:1:{s:5:\"error\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:14:\"wp_mail_failed\";a:1:{i:0;s:36:\"Could not instantiate mail function.\";}}s:10:\"error_data\";a:1:{s:14:\"wp_mail_failed\";a:6:{s:2:\"to\";a:1:{i:0;s:20:\"kythuat@tamnghia.com\";}s:7:\"subject\";s:58:\"[localhost/tracologistics] WordPress Login Address Changed\";s:7:\"message\";s:45065:\"\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"vi-VN\">\n\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n	<title>New Login URL</title>\n	<meta name=\"viewport\" content=\"width=device-width\">\n\n	<style type=\"text/css\">\n		/* From: https://litmus.com/community/learning/13-foundations-email-coding-101 */\n\n		/* GENERAL STYLE RESETS */\n		body,#body-table,#body-cell{height:100%!important;width:100%!important;margin:0;padding:0;}\n		img,aimg{border:0;outline:none;text-decoration:none;}\n		.imageFix{display:block;}\n		table,td{border-collapse:collapse;border-spacing:0;}\n\n		/* CLIENT-SPECIFIC RESETS */\n		.ReadMsgBody{width:100%;}\n		.ExternalClass{width:100%;}\n		.ExternalClass,.ExternalClass p,.ExternalClass span,.ExternalClass font,.ExternalClass td,.ExternalClass div{line-height:100%;}\n		table,td{mso-table-lspace:0pt;mso-table-rspace:0pt;}\n		img{-ms-interpolation-mode:bicubic;}\n		body,table,td,p,a,li,blockquote{-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}\n\n\n		h1,h2,h3,h4,h5,h6{color:#202020;font-family:Helvetica;font-size:20px;font-weight:bold;line-height:150%;margin:0;padding:0;text-align:center;}\n		p{font-family:Helvetica;font-size:16px;line-height:150%;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;padding:0;text-align:center;}\n		a{color:#0084CB;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;text-decoration:none;}\n		img{height:auto;}\n\n		body,#body-table{background-color:#FFFFFF;}\n		#body-cell{padding-bottom:20px;}\n		.section-padding{padding-top:20px;padding-right:20px;padding-left:20px;}\n		.section-padding-bottom{padding-bottom:20px;}\n		.container-cell{color:#808080;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;padding-bottom:20px;}\n		#top-banner{background-color:#FFCE08;}\n		#top-banner .container-cell{color:#413F39;font-size:13px;}\n		#top-logo .container-cell{padding-top:20px;}\n		#title-container h1{font-size:34px;}\n		.info-box{padding-top:20px;padding-bottom:20px;}\n		.info-box .container{border:1px solid #CDCECE;background-color:#F2F2F2;}\n		.info-box .section-padding{padding-top:40px;padding-right:40px;padding-left:40px;}\n		.info-box .container-cell{padding-bottom:40px;}\n		.info-box .info-icon{width:33px;height:23px;vertical-align:middle;}\n		.section-heading .container-cell{padding-bottom:0;}\n		.section-heading h4{color:#0084CB;font-size:16px;}\n		.section-heading h4 img{padding-top:2px;padding-right:5px;vertical-align:top;}\n		.lockouts-summary .container.left-column{margin-right:60px;}\n		.lockouts-summary h4{color:#ACAAAA;font-size:16px;font-weight:normal;}\n		.lockouts-summary p{color:#505050;font-size:30px;font-weight:bold;}\n		.table{border:1px solid #cdcece;color: #808080;font-family:Helvetica;font-size:14px;}\n		.table th,.table td{border:1px solid #cdcece;padding:10px;}\n		.table th{text-align:left;font-weight:bold;padding:5px 10px;}\n		.table .row-label{font-style:italic;}\n		.table a,.table b{font-size:14px;}\n		.large-text h4{color:#505050;margin-bottom:10px;}\n		.details-box-container{padding-top:20px;padding-bottom:20px;}\n		.details-box{background-color:#E4EEF7;border:1px solid #CDCECE;}\n		.details-box .container-cell{color:#6A6A6A;}\n		.divider .divider-border{border-top-width:1px;border-top-style:solid;border-top-color:#E8E8E8;}\n		.divider .container-cell{line-height:1px;padding-bottom:20px;width:450px;}\n		.module-button .border-radius{-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;}\n		.module-button a{background-color:#FFCD08;border:1px solid #FFCD08;color:#2E280E;display:inline-block;font-size:18px;font-weight:bold;line-height:100%;padding-top:20px;padding-right:30px;padding-bottom:20px;padding-left:30px;}\n		.pro-callout{padding-top:20px;}\n		.pro-callout-background{background-color:#0B1A23;}\n		.pro-callout .section-padding{padding-top:40px;}\n		.pro-callout .two-factor{color:#FFFFFF;margin-top:20px;margin-bottom:20px;}\n		.pro-callout .module-button a{font-size:30px;}\n		.pro-callout .why-pro{color:#999999;font-style:italic;margin-top:20px;margin-bottom:20px;}\n		.footer-heading h2{color:#002030;font-size:26px;}\n		.pro-flag{background-color:#FFCC00;color:#000000;font-size:10px;display:inline-block;padding:3px;line-height:1;position:relative;bottom:10px;text-transform:uppercase;}\n		#security-guide-container{border:1px solid #CDCECE;background-color:#D3E8E9;}\n		#security-guide .container-cell{color:#6C6C6C;text-align:left;}\n		#security-guide h4{color:#6C6C6C;font-size:18px;padding-bottom:10px;text-align:left;}\n		#security-guide a{font-weight:bold;}\n		#footer-source-details .container-cell{line-height:200%;padding-top:60px;padding-bottom:0;}\n		#footer-source-details a{font-size:11px;font-weight:bold;line-height:200%;}\n		.template-container {max-width: 600px !important;}\n\n		@media only screen and (max-width:600px){\n			body{width:100% !important;min-width:100% !important;}\n			#body-cell{padding:10px !important;}\n			#main-container, .container{width:100% !important;}\n			.preserve-ratio{height:auto !important;width:100% !important;}\n			.container-cell-bottom{padding-top:20px !important;}\n			.lockouts-summary .container{width:auto !important;}\n		}\n\n		@media only screen and (max-width:450px){\n			.divider .container-cell{width:auto !important;}\n		}\n	</style>\n</head>\n\n<body style=\"margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n	<center>\n		<table id=\"body-table\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n			<tr>\n				<td id=\"body-cell\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;padding-bottom: 20px;height: 100%!important;width: 100%!important;\">\n					<table id=\"main-container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td id=\"top-banner\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFCE08;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #413F39;font-family: Helvetica;font-size: 13px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	New Login URL\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"top-logo\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;padding-top: 20px;\">\n																	<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/logo.png\" style=\"max-width: 300px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" alt=\"\" align=\"center\">\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"title-container\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<h1 style=\"color: #202020;font-family: Helvetica;font-size: 34px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">New Login URL</h1>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<p>The login address for DICHVUHAIQUANHAIPHONG.COM has changed. The new login address is <code>http://localhost/tracologistics/tnquantri</code>. You will be unable to use the old login address.</p>\n\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding section-padding-bottom\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;padding-bottom: 20px;\">\n								<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n														<a class=\"border-radius\" href=\"http://localhost/tracologistics/tnquantri\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 18px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Login Now</a>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n						<tr>\n							<td class=\"pro-callout\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;\">\n								<table class=\"pro-callout-background\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #0B1A23;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" class=\"container\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td align=\"center\" valign=\"top\" width=\"600\" class=\"section-padding\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 40px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td valign=\"top\" class=\"container-cell\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/pro_logo_no_text.png\" style=\"max-width: 100px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"100\" alt=\"\" align=\"center\">\n																	<p class=\"two-factor\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #FFFFFF;\">Want two-factor authentication, scheduled malware scanning, ticketed support and more?</p>\n																	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																		<tr>\n																			<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																				<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																					<tr>\n																						<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n																							<a href=\"https://ithemes.com/security/#plugin-pricing\" target=\"_blank\" class=\"border-radius\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 30px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Get iThemes Security Pro</a>\n																						</td>\n																					</tr>\n																				</table>\n																			</td>\n																		</tr>\n																	</table>\n																	<p class=\"why-pro\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #999999;font-style: italic;\">Why go Pro? <a href=\"https://ithemes.com/security/why-go-pro/\">Check out the Free/Pro comparison chart.</a></p>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td class=\"footer-heading\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<h2 style=\"color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">Security Resources</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/article_icon.png\" style=\"max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/category/wordpress-security/\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Articles</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Read the latest in WordPress Security news, tips, and updates on <a href=\"https://ithemes.com/category/wordpress-security/\">iThemes Blog</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/video_icon.png\" style=\"max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/tutorial/category/ithemes-security/\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Tutorials</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Make the most of iThemes Security features with our <a href=\"https://ithemes.com/tutorial/category/ithemes-security/\">free iThemes Security tutorials</a>.</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"divider\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"450\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"450\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"divider-border\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border-top-width: 1px;border-top-style: solid;border-top-color: #E8E8E8;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 1px;text-align: center;padding-bottom: 20px;width: 450px;\">\n											&nbsp;\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"footer-heading\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<h2 style=\"color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">Help &amp; Support</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/documentation_icon.png\" style=\"max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"http://ithemes.com/codex/page/IThemes_Security\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Documentation</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Read iThemes Security documentation and Frequently Asked Questions on <a href=\"http://ithemes.com/codex/page/IThemes_Security\">the Codex</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/support_icon.png\" style=\"max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://members.ithemes.com/panel/helpdesk.php\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Support</a>\n												<span class=\"pro-flag\" style=\"background-color: #FFCC00;color: #000000;font-size: 10px;display: inline-block;padding: 3px;line-height: 1;position: relative;bottom: 10px;text-transform: uppercase;\">Pro</span>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Pro customers can contact <a href=\"https://members.ithemes.com/panel/helpdesk.php\">iThemes Helpdesk</a> for help. Our support team answers questions Monday – Friday, 8am – 5pm (CST).</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"security-guide\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table id=\"security-guide-container\" class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 1px solid #CDCECE;background-color: #D3E8E9;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"104\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"section-padding-bottom\" align=\"left\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/wp_security_book.png\" style=\"max-width: 84px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"84\" alt=\"\" align=\"center\">\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"454\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6C6C6C;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;padding-bottom: 20px;\">\n											<h4 style=\"color: #6C6C6C;font-family: Helvetica;font-size: 18px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: left;padding-bottom: 10px;\">Free WordPress Security Guide</h4>\n											Learn simple WordPress security tips — including 3 kinds of security your site needs and 4 best security practices for keeping your WordPress site safe with our <a href=\"https://ithemes.com/publishing/wordpress-security/\">free guide</a>.\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"footer-source-details\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 200%;text-align: center;padding-bottom: 0;padding-top: 60px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/tracologistics/wp-content/plugins/better-wp-security/core/img/mail/footer_logo.png\" style=\"max-width: 50px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"50\" alt=\"\" align=\"center\"><br>\n											<br>\n											<span style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #666f72;font-family: Helvetica;font-size: 11px;line-height: 200%;text-align: center;text-decoration: none;font-weight: bold;\">\n												This email was generated by the iThemes Security plugin.<br>To unsubscribe from these updates, visit the <a href=\"http://localhost/tracologistics/wp-admin/admin.php?page=itsec\" style=\"color: #0084CB\">Settings page</a> in the iThemes Security plugin menu.\n											</span>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>					</table>\n				</td>\n			</tr>\n		</table>\n	</center>\n</body>\n\n</html>\n\";s:7:\"headers\";a:0:{}s:11:\"attachments\";a:0:{}s:24:\"phpmailer_exception_code\";i:2;}}}}', 'error', '2020-02-20 04:02:02', '2020-02-20 04:01:58', 73935280, 74211856, 'http://localhost/tracologistics/wp-admin/admin-ajax.php', 1, 1, '::1'),
(3, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-02-21 03:59:02', '2020-02-21 03:59:01', 45220472, 45421344, 'http://localhost/tracologistics/wp-admin/admin-ajax.php', 1, 1, '::1'),
(4, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-02-24 08:01:21', '2020-02-24 08:01:19', 40078032, 40125968, 'wp-cron', 1, 0, '::1'),
(5, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-02-25 10:17:59', '2020-02-25 10:17:56', 60377912, 60425848, 'wp-cron', 1, 0, '::1'),
(6, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-02 09:45:33', '2020-03-02 09:45:29', 60575400, 60623336, 'wp-cron', 1, 0, '::1'),
(7, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-03 10:12:39', '2020-03-03 10:12:32', 60416928, 60417184, 'wp-cron', 1, 0, '::1'),
(8, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-04 10:12:35', '2020-03-04 10:12:34', 62888688, 62936624, 'wp-cron', 1, 0, '::1'),
(9, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-05 13:49:29', '2020-03-05 13:49:28', 66774008, 66821944, 'wp-cron', 1, 0, '::1'),
(10, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-06 13:49:57', '2020-03-06 13:49:57', 66780008, 66827944, 'wp-cron', 1, 0, '::1'),
(11, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-09 02:03:58', '2020-03-09 02:03:56', 68791048, 68838928, 'http://localhost/mypham/', 1, 0, '::1');
INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(12, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-03-09 02:04:23', '2020-03-09 02:04:21', 67056864, 67104720, 'http://localhost/mypham/wp-json/yoast/v1/statistics', 1, 1, '::1'),
(13, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2023-05-29 12:22:23', '2023-05-29 12:22:22', 57523416, 57562624, 'wp-cron', 1, 0, '::1'),
(14, 0, 'brute_force', 'invalid-login::user-1', 'a:5:{s:7:\"details\";a:2:{s:6:\"source\";s:12:\"wp-login.php\";s:20:\"authentication_types\";a:1:{i:0;s:21:\"username_and_password\";}}s:4:\"user\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:18:\"incorrect_password\";a:1:{i:0;s:207:\"<strong>LỖI</strong>: Mật khẩu mà bạn đã nhập cho người dùng <strong>admin</strong> chưa đúng. <a href=\"http://localhost:8080/catba/tai-khoan/lost-password/\">Bạn quên mật khẩu?</a>\";}}s:10:\"error_data\";a:0:{}}s:8:\"username\";s:5:\"admin\";s:7:\"user_id\";i:1;s:6:\"SERVER\";a:53:{s:15:\"SERVER_SOFTWARE\";s:47:\"Apache/2.4.56 (Win64) OpenSSL/1.1.1t PHP/8.0.28\";s:11:\"REQUEST_URI\";s:44:\"/catba/wp-login.php?itsec-hb-token=tnquantri\";s:7:\"MIBDIRS\";s:24:\"C:/xampp/php/extras/mibs\";s:10:\"MYSQL_HOME\";s:19:\"\\\\xampp\\\\mysql\\\\bin\";s:12:\"OPENSSL_CONF\";s:31:\"C:/xampp/apache/bin/openssl.cnf\";s:20:\"PHP_PEAR_SYSCONF_DIR\";s:12:\"\\\\xampp\\\\php\";s:5:\"PHPRC\";s:12:\"\\\\xampp\\\\php\";s:3:\"TMP\";s:12:\"\\\\xampp\\\\tmp\";s:9:\"HTTP_HOST\";s:14:\"localhost:8080\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:3:\"147\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:14:\"HTTP_SEC_CH_UA\";s:77:\"\\\"Google Chrome\\\";v=\\\"113\\\", \\\"Chromium\\\";v=\\\"113\\\", \\\"Not-A.Brand\\\";v=\\\"24\\\"\";s:21:\"HTTP_SEC_CH_UA_MOBILE\";s:2:\"?0\";s:23:\"HTTP_SEC_CH_UA_PLATFORM\";s:11:\"\\\"Windows\\\"\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:11:\"HTTP_ORIGIN\";s:21:\"http://localhost:8080\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:15:\"HTTP_USER_AGENT\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:11:\"HTTP_ACCEPT\";s:135:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\";s:19:\"HTTP_SEC_FETCH_SITE\";s:11:\"same-origin\";s:19:\"HTTP_SEC_FETCH_MODE\";s:8:\"navigate\";s:19:\"HTTP_SEC_FETCH_USER\";s:2:\"?1\";s:19:\"HTTP_SEC_FETCH_DEST\";s:8:\"document\";s:12:\"HTTP_REFERER\";s:65:\"http://localhost:8080/catba/wp-login.php?itsec-hb-token=tnquantri\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:56:\"vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5\";s:11:\"HTTP_COOKIE\";s:100:\"itsec-hb-login-e6484dfd5972179b281dea8019a696ce=tnquantri; wordpress_test_cookie=WP%20Cookie%20check\";s:4:\"PATH\";s:1119:\"C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Windows\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files (x86)\\\\NVIDIA Corporation\\\\PhysX\\\\Common;C:\\\\Program Files\\\\NVIDIA Corporation\\\\NVIDIA NvDLISR;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\130\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;G:\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\DPC\\\\.console-ninja\\\\.bin;C:\\\\Users\\\\DPC\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;G:\\\\Microsoft VS Code\\\\bin;C:\\\\Users\\\\DPC\\\\AppData\\\\Local\\\\GitHubDesktop\\\\bin;C:\\\\Users\\\\DPC\\\\AppData\\\\Roaming\\\\npm\";s:10:\"SystemRoot\";s:11:\"C:\\\\WINDOWS\";s:7:\"COMSPEC\";s:30:\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:11:\"C:\\\\WINDOWS\";s:16:\"SERVER_SIGNATURE\";s:97:\"<address>Apache/2.4.56 (Win64) OpenSSL/1.1.1t PHP/8.0.28 Server at localhost Port 8080</address>\n\";s:11:\"SERVER_NAME\";s:9:\"localhost\";s:11:\"SERVER_ADDR\";s:3:\"::1\";s:11:\"SERVER_PORT\";s:4:\"8080\";s:11:\"REMOTE_ADDR\";s:3:\"::1\";s:13:\"DOCUMENT_ROOT\";s:15:\"C:/xampp/htdocs\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:15:\"C:/xampp/htdocs\";s:12:\"SERVER_ADMIN\";s:20:\"postmaster@localhost\";s:15:\"SCRIPT_FILENAME\";s:34:\"C:/xampp/htdocs/catba/wp-login.php\";s:11:\"REMOTE_PORT\";s:5:\"58028\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:24:\"itsec-hb-token=tnquantri\";s:11:\"SCRIPT_NAME\";s:19:\"/catba/wp-login.php\";s:8:\"PHP_SELF\";s:19:\"/catba/wp-login.php\";s:18:\"REQUEST_TIME_FLOAT\";s:15:\"1685363064.6773\";s:12:\"REQUEST_TIME\";s:10:\"1685363064\";}}', 'notice', '2023-05-29 12:24:25', '2023-05-29 12:24:24', 59877048, 60129512, 'http://localhost:8080/catba/wp-login.php?itsec-hb-token=tnquantri', 1, 0, '::1'),
(15, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2023-05-31 14:01:32', '2023-05-31 14:01:31', 38849536, 39580040, 'wp-cron', 1, 0, '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_opaque_tokens`
--

CREATE TABLE `wp_itsec_opaque_tokens` (
  `token_id` char(64) NOT NULL,
  `token_hashed` char(64) NOT NULL,
  `token_type` varchar(32) NOT NULL,
  `token_data` text NOT NULL,
  `token_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_itsec_temp`
--

CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_itsec_temp`
--

INSERT INTO `wp_itsec_temp` (`temp_id`, `temp_type`, `temp_date`, `temp_date_gmt`, `temp_host`, `temp_user`, `temp_username`) VALUES
(1, 'brute_force', '2023-05-29 19:24:24', '2023-05-29 12:24:24', '::1', NULL, NULL),
(2, 'brute_force', '2023-05-29 19:24:24', '2023-05-29 12:24:24', NULL, 1, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-flatsome/DefaultWordPress', 'yes'),
(2, 'home', 'http://localhost/wp-flatsome/DefaultWordPress', 'yes'),
(3, 'blogname', 'Mỹ phẩm', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kythuat@tamnghia.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '210', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:4;s:17:\"tnadvs/tnadvs.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:19:\"wp-smtp/wp-smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:72:\"D:\\Work\\Xampp\\htdocs\\tamnghia/wp-content/themes/flatsome-child/style.css\";i:1;s:76:\"D:\\Work\\Xampp\\htdocs\\tamnghia/wp-content/themes/flatsome-child/functions.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'flatsome', 'yes'),
(41, 'stylesheet', 'flatsome-child', 'yes'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '53496', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '280', 'yes'),
(59, 'thumbnail_size_h', '280', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '800', 'yes'),
(62, 'medium_size_h', '400', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1400', 'yes'),
(65, 'large_size_h', '800', 'yes'),
(66, 'image_default_link_type', 'file', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:6:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:5;a:0:{}i:7;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:14;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}i:17;a:4:{s:5:\"title\";s:10:\"Danh mục\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}}', 'yes'),
(79, 'widget_text', 'a:5:{i:1;a:0:{}i:4;a:3:{s:5:\"title\";s:4:\"asdf\";s:4:\"text\";s:4:\"asdf\";s:6:\"filter\";b:0;}i:13;a:3:{s:5:\"title\";s:5:\"About\";s:4:\"text\";s:98:\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.\";s:6:\"filter\";b:0;}i:16;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '1510', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1690599218', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:144:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'vi', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(99, 'widget_recent-posts', 'a:5:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:6;a:3:{s:5:\"title\";s:4:\"asdf\";s:6:\"number\";i:3;s:9:\"show_date\";b:0;}i:8;a:0:{}}', 'yes'),
(100, 'widget_recent-comments', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:5;a:2:{s:5:\"title\";s:15:\"Recent Comments\";s:6:\"number\";i:5;}}', 'yes'),
(101, 'widget_archives', 'a:5:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:6;a:3:{s:5:\"title\";s:7:\"Archive\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}i:7;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:16:\"sildebar-service\";a:2:{i:0;s:14:\"block_widget-4\";i:1;s:14:\"block_widget-5\";}s:19:\"wp_inactive_widgets\";a:94:{i:0;s:7:\"text-16\";i:1;s:13:\"categories-14\";i:2;s:13:\"custom_html-5\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:25:\"woocommerce_widget_cart-5\";i:5;s:33:\"woocommerce_layered_nav_filters-3\";i:6;s:33:\"woocommerce_layered_nav_filters-5\";i:7;s:33:\"woocommerce_layered_nav_filters-7\";i:8;s:33:\"woocommerce_layered_nav_filters-9\";i:9;s:34:\"woocommerce_layered_nav_filters-10\";i:10;s:34:\"woocommerce_layered_nav_filters-12\";i:11;s:25:\"woocommerce_layered_nav-3\";i:12;s:25:\"woocommerce_layered_nav-5\";i:13;s:25:\"woocommerce_layered_nav-7\";i:14;s:26:\"woocommerce_layered_nav-10\";i:15;s:26:\"woocommerce_layered_nav-11\";i:16;s:26:\"woocommerce_price_filter-3\";i:17;s:26:\"woocommerce_price_filter-5\";i:18;s:26:\"woocommerce_price_filter-7\";i:19;s:26:\"woocommerce_price_filter-9\";i:20;s:27:\"woocommerce_price_filter-11\";i:21;s:32:\"woocommerce_product_categories-5\";i:22;s:32:\"woocommerce_product_categories-7\";i:23;s:32:\"woocommerce_product_categories-9\";i:24;s:33:\"woocommerce_product_categories-10\";i:25;s:33:\"woocommerce_product_categories-12\";i:26;s:33:\"woocommerce_product_categories-13\";i:27;s:31:\"woocommerce_product_tag_cloud-3\";i:28;s:31:\"woocommerce_product_tag_cloud-5\";i:29;s:31:\"woocommerce_product_tag_cloud-6\";i:30;s:31:\"woocommerce_product_tag_cloud-7\";i:31;s:31:\"woocommerce_product_tag_cloud-8\";i:32;s:22:\"woocommerce_products-3\";i:33;s:22:\"woocommerce_products-4\";i:34;s:22:\"woocommerce_products-5\";i:35;s:22:\"woocommerce_products-7\";i:36;s:22:\"woocommerce_products-9\";i:37;s:23:\"woocommerce_products-11\";i:38;s:23:\"woocommerce_products-12\";i:39;s:23:\"woocommerce_products-13\";i:40;s:38:\"woocommerce_recently_viewed_products-3\";i:41;s:38:\"woocommerce_recently_viewed_products-5\";i:42;s:38:\"woocommerce_recently_viewed_products-7\";i:43;s:38:\"woocommerce_recently_viewed_products-8\";i:44;s:32:\"woocommerce_top_rated_products-2\";i:45;s:32:\"woocommerce_top_rated_products-3\";i:46;s:28:\"woocommerce_recent_reviews-3\";i:47;s:27:\"woocommerce_rating_filter-2\";i:48;s:27:\"woocommerce_rating_filter-3\";i:49;s:24:\"flatsome_recent_posts-17\";i:50;s:15:\"upsell_widget-3\";i:51;s:15:\"upsell_widget-5\";i:52;s:15:\"upsell_widget-7\";i:53;s:10:\"archives-2\";i:54;s:10:\"archives-7\";i:55;s:6:\"meta-2\";i:56;s:8:\"search-2\";i:57;s:7:\"text-13\";i:58;s:12:\"categories-2\";i:59;s:14:\"recent-posts-2\";i:60;s:17:\"recent-comments-2\";i:61;s:17:\"recent-comments-5\";i:62;s:11:\"tag_cloud-9\";i:63;s:24:\"flatsome_recent_posts-18\";i:64;s:14:\"block_widget-3\";i:65;s:7:\"pages-3\";i:66;s:7:\"pages-5\";i:67;s:7:\"pages-6\";i:68;s:7:\"pages-8\";i:69;s:10:\"calendar-3\";i:70;s:10:\"calendar-5\";i:71;s:10:\"archives-4\";i:72;s:10:\"archives-6\";i:73;s:8:\"search-4\";i:74;s:6:\"text-4\";i:75;s:12:\"categories-5\";i:76;s:12:\"categories-7\";i:77;s:14:\"recent-posts-4\";i:78;s:14:\"recent-posts-6\";i:79;s:14:\"recent-posts-8\";i:80;s:17:\"recent-comments-4\";i:81;s:11:\"tag_cloud-3\";i:82;s:11:\"tag_cloud-8\";i:83;s:10:\"nav_menu-3\";i:84;s:10:\"nav_menu-4\";i:85;s:23:\"flatsome_recent_posts-3\";i:86;s:23:\"flatsome_recent_posts-5\";i:87;s:23:\"flatsome_recent_posts-6\";i:88;s:23:\"flatsome_recent_posts-8\";i:89;s:23:\"flatsome_recent_posts-9\";i:90;s:24:\"flatsome_recent_posts-11\";i:91;s:24:\"flatsome_recent_posts-13\";i:92;s:24:\"flatsome_recent_posts-14\";i:93;s:24:\"flatsome_recent_posts-16\";}s:12:\"sidebar-main\";a:2:{i:0;s:13:\"categories-17\";i:1;s:23:\"woocommerce_products-10\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:4:{i:0;s:14:\"block_widget-2\";i:1;s:10:\"nav_menu-4\";i:2;s:10:\"nav_menu-3\";i:3;s:13:\"custom_html-3\";}s:12:\"shop-sidebar\";a:7:{i:0;s:33:\"woocommerce_product_categories-15\";i:1;s:27:\"woocommerce_price_filter-12\";i:2;s:26:\"yith-woo-ajax-navigation-2\";i:3;s:26:\"yith-woo-ajax-navigation-3\";i:4;s:26:\"yith-woo-ajax-navigation-4\";i:5;s:39:\"woocommerce_recently_viewed_products-10\";i:6;s:24:\"flatsome_recent_posts-20\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1690348580;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690349831;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690352541;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690363369;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690374141;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690374151;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690380980;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690383038;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690383219;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690384941;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690390800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690424179;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690424190;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690424193;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690425394;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690426237;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1690426238;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690426399;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:6:{i:1;a:0:{}i:3;a:3:{s:5:\"title\";s:5:\"Pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}i:5;a:0:{}i:6;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}i:8;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:4:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:5:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:0:{}i:8;a:0:{}i:9;a:2:{s:5:\"title\";s:9:\"Tag Cloud\";s:8:\"taxonomy\";s:8:\"post_tag\";}}', 'yes'),
(112, 'widget_nav_menu', 'a:4:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:2:{s:5:\"title\";s:12:\"Sản phẩm\";s:8:\"nav_menu\";i:67;}i:4;a:2:{s:5:\"title\";s:16:\"Về chúng tôi\";s:8:\"nav_menu\";i:84;}}', 'yes'),
(113, 'widget_custom_html', 'a:3:{i:3;a:2:{s:5:\"title\";s:11:\"Kết nối\";s:7:\"content\";s:626:\" <div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=1071916846163038&autoLogAppEvents=1\"></script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/tamnghia.vn\" data-tabs=\"timeline\" data-width=\"\" data-height=\"200\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/tamnghia.vn\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/tamnghia.vn\">Công ty cổ phần dịch vụ Tâm Nghĩa</a></blockquote></div>\";}s:12:\"_multiwidget\";i:1;i:5;a:0:{}}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578449863;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'current_theme', 'Flatsome Child', 'yes'),
(146, 'theme_mods_flatsome', 'a:32:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";s:19:\"right-sidebar-small\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:14:\"pages_template\";s:7:\"default\";s:19:\"flatsome_db_version\";s:6:\"3.10.1\";s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 08 Jan 2020 02:17:47 +0000\";s:0:\"\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578449878;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:16:\"sidebar-footer-1\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:16:\"sidebar-footer-2\";a:0:{}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'widget_flatsome_recent_posts', 'a:14:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:3;s:5:\"image\";s:2:\"on\";}i:5;a:3:{s:5:\"title\";s:5:\"Posts\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";}i:6;a:3:{s:5:\"title\";s:16:\"Latest From Blog\";s:6:\"number\";i:4;s:5:\"image\";N;}i:8;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:5:\"image\";N;}i:9;a:3:{s:5:\"title\";s:10:\"Thumbnail \";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";}i:11;a:3:{s:5:\"title\";s:17:\"Latest Blog Posts\";s:6:\"number\";i:5;s:5:\"image\";N;}i:13;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:4;s:5:\"image\";N;}i:14;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:5:\"image\";N;}i:16;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:3;s:5:\"image\";N;}i:17;a:4:{s:5:\"title\";s:15:\"Tin nổi bật\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}i:18;a:3:{s:5:\"title\";s:11:\"Latest News\";s:6:\"number\";i:4;s:5:\"image\";N;}i:20;a:4:{s:5:\"title\";s:21:\"Tin tức nổi bật\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}}', 'yes'),
(149, 'widget_block_widget', 'a:5:{i:2;a:2:{s:5:\"title\";s:25:\"Công Ty CPDV Tâm Nghĩa\";s:5:\"block\";s:19:\"noi-dung-chan-trang\";}i:3;a:2:{s:5:\"title\";s:21:\"Signup for Newsletter\";s:5:\"block\";s:24:\"footer-newsletter-signup\";}i:4;a:2:{s:5:\"title\";s:25:\"Hỗ trợ trực tuyến\";s:5:\"block\";s:26:\"ho-tro-truc-tuyen-cot-trai\";}i:5;a:2:{s:5:\"title\";s:20:\"Giới thiệu chung\";s:5:\"block\";s:25:\"gioi-thieu-chung-cot-trai\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'allowedthemes', 'a:1:{s:14:\"flatsome-child\";b:1;}', 'no'),
(153, 'fl_has_child_theme', 'flatsome-child', 'yes'),
(155, 'theme_mods_flatsome-child', 'a:114:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:14:\"product_layout\";s:17:\"left-sidebar-full\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:19:\"flatsome_db_version\";s:6:\"3.10.1\";s:18:\"nav_menu_locations\";a:4:{s:7:\"primary\";i:68;s:6:\"footer\";i:0;s:11:\"top_bar_nav\";i:0;s:9:\"mega_menu\";i:141;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 08 Jan 2020 02:18:01 +0000\";s:0:\"\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:14:\"html_shop_page\";s:0:\"\";s:22:\"html_shop_page_content\";s:0:\"\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:19:\"category_show_title\";b:1;s:15:\"breadcrumb_size\";s:5:\"small\";s:16:\"category_sidebar\";s:12:\"left-sidebar\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:15:\"breadcrumb_case\";s:0:\"\";s:10:\"grid_style\";s:5:\"grid2\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:20:\"product_box_category\";b:0;s:17:\"add_to_cart_style\";s:4:\"flat\";s:18:\"disable_quick_view\";b:0;s:22:\"sale_bubble_percentage\";b:1;s:18:\"product_box_rating\";b:0;s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:17:\"perf_instant_page\";s:1:\"0\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:26:\"flatsome_disable_style_css\";s:1:\"0\";s:13:\"disable_emoji\";s:1:\"1\";s:16:\"disable_blockcss\";s:1:\"1\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:13:\"search_result\";s:1:\"0\";s:19:\"search_result_style\";s:6:\"slider\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";s:1:\"1\";s:21:\"search_by_product_tag\";s:1:\"1\";s:17:\"facebook_accounts\";a:1:{i:0;s:1:\"0\";}s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:15:\"disable_reviews\";s:1:\"1\";s:27:\"product_gallery_woocommerce\";s:1:\"0\";s:9:\"tab_title\";s:26:\"Hướng dẫn thanh toán\";s:11:\"tab_content\";s:49:\"[block id=\"huong-dan-mua-hang-chi-tiet-san-pham\"]\";s:23:\"html_before_add_to_cart\";s:1:\" \";s:22:\"html_after_add_to_cart\";s:300:\"<div class=\"html_after_addtocart\" style=\"background-color: #fff1dd; padding: 8px; border: 1px dotted red; font-size: 19px\"><b style=\"color: red\">Hỗ trợ mua hàng:</b><br> <b>Hotline: 0981.123.123</b><br><span style=\"font-size:14px\"> (Bán hàng cả Thứ Bảy và Chủ Nhật)</span></div><br>\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"0\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"0\";s:27:\"infinite_scroll_loader_type\";s:7:\"spinner\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:12:\"fl_portfolio\";s:1:\"0\";s:15:\"parallax_mobile\";s:1:\"0\";s:15:\"flatsome_studio\";s:1:\"1\";s:27:\"category_header_transparent\";b:0;s:20:\"header_shop_bg_color\";s:7:\"#03964c\";s:9:\"cat_style\";s:6:\"bounce\";s:19:\"category_show_count\";b:1;s:21:\"category_shadow_hover\";s:1:\"0\";s:20:\"category_title_style\";s:8:\"featured\";s:15:\"category_shadow\";s:1:\"0\";s:13:\"product_hover\";s:4:\"zoom\";s:18:\"category_row_count\";s:1:\"4\";s:14:\"product_header\";s:8:\"featured\";s:19:\"product_image_width\";s:1:\"7\";s:19:\"product_image_style\";s:6:\"normal\";s:12:\"product_zoom\";b:1;s:21:\"product_next_prev_nav\";b:1;s:23:\"header_shop_bg_featured\";b:0;s:16:\"products_pr_page\";s:2:\"12\";s:13:\"payment_icons\";a:4:{i:0;s:10:\"creditcard\";i:1;s:10:\"mastercard\";i:2;s:6:\"paypal\";i:3;s:4:\"visa\";}s:19:\"product_sticky_cart\";b:1;s:23:\"related_products_pr_row\";s:1:\"4\";s:25:\"product_offcanvas_sidebar\";b:1;s:25:\"product_info_review_count\";b:1;s:17:\"product_info_meta\";b:0;s:15:\"product_display\";s:12:\"tabs_outline\";s:18:\"cart_steps_numbers\";b:1;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:2:{i:0;s:3:\"nav\";i:1;s:6:\"search\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:13:\"header_height\";s:2:\"80\";s:9:\"header_bg\";s:16:\"rgba(0,0,0,0.28)\";s:14:\"type_nav_color\";s:7:\"#ffffff\";s:20:\"type_nav_color_hover\";s:21:\"rgba(255,255,255,0.7)\";}', 'yes'),
(158, 'wpcf7', 'a:2:{s:7:\"version\";s:7:\"5.7.5.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1578449914;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'nsl-version', '3.1.7', 'yes'),
(164, 'widget_nextend_social_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'woosidebars-version', '1.4.5', 'yes'),
(170, 'woocommerce_store_address', 'Trung Văn', 'yes'),
(171, 'woocommerce_store_address_2', 'Nam Từ Liêm', 'yes'),
(172, 'woocommerce_store_city', 'Hà Nội', 'yes'),
(173, 'woocommerce_default_country', 'VN', 'yes'),
(174, 'woocommerce_store_postcode', '100000', 'yes'),
(175, 'woocommerce_allowed_countries', 'all', 'yes'),
(176, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(177, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(178, 'woocommerce_ship_to_countries', '', 'yes'),
(179, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(180, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(181, 'woocommerce_calc_taxes', 'no', 'yes'),
(182, 'woocommerce_enable_coupons', 'yes', 'yes'),
(183, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(184, 'woocommerce_currency', 'VND', 'yes'),
(185, 'woocommerce_currency_pos', 'right', 'yes'),
(186, 'woocommerce_price_thousand_sep', ',', 'yes'),
(187, 'woocommerce_price_decimal_sep', '.', 'yes'),
(188, 'woocommerce_price_num_decimals', '0', 'yes'),
(189, 'woocommerce_shop_page_id', '1400', 'yes'),
(190, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(191, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(192, 'woocommerce_placeholder_image', '1254', 'yes'),
(193, 'woocommerce_weight_unit', 'kg', 'yes'),
(194, 'woocommerce_dimension_unit', 'cm', 'yes'),
(195, 'woocommerce_enable_reviews', 'yes', 'yes'),
(196, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(197, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(198, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(199, 'woocommerce_review_rating_required', 'yes', 'no'),
(200, 'woocommerce_manage_stock', 'yes', 'yes'),
(201, 'woocommerce_hold_stock_minutes', '60', 'no'),
(202, 'woocommerce_notify_low_stock', 'yes', 'no'),
(203, 'woocommerce_notify_no_stock', 'yes', 'no'),
(204, 'woocommerce_stock_email_recipient', 'huy7989@gmail.com', 'no'),
(205, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(206, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(207, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(208, 'woocommerce_stock_format', '', 'yes'),
(209, 'woocommerce_file_download_method', 'force', 'no'),
(210, 'woocommerce_downloads_require_login', 'no', 'no'),
(211, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(212, 'woocommerce_prices_include_tax', 'no', 'yes'),
(213, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(214, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(215, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(216, 'woocommerce_tax_classes', '', 'yes'),
(217, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(218, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(219, 'woocommerce_price_display_suffix', '', 'yes'),
(220, 'woocommerce_tax_total_display', 'itemized', 'no'),
(221, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(222, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(223, 'woocommerce_ship_to_destination', 'billing', 'no'),
(224, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(225, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(226, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(227, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(228, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(229, 'woocommerce_registration_generate_username', 'yes', 'no'),
(230, 'woocommerce_registration_generate_password', 'yes', 'no'),
(231, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(232, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(233, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(234, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(235, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(236, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(237, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(238, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(239, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(240, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(241, 'woocommerce_email_from_name', 'Website', 'no'),
(242, 'woocommerce_email_from_address', 'tamnghiawordpress@gmail.com', 'no'),
(243, 'woocommerce_email_header_image', '', 'no'),
(244, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(245, 'woocommerce_email_base_color', '#96588a', 'no'),
(246, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(247, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(248, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(249, 'woocommerce_cart_page_id', '1392', 'no'),
(250, 'woocommerce_checkout_page_id', '1394', 'no'),
(251, 'woocommerce_myaccount_page_id', '1396', 'no'),
(252, 'woocommerce_terms_page_id', '', 'no'),
(253, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(254, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(255, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(256, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(257, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(258, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(259, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(260, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(261, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(262, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(263, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(264, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(265, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(266, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(267, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(268, 'woocommerce_api_enabled', 'no', 'yes'),
(269, 'woocommerce_allow_tracking', 'no', 'no'),
(270, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(271, 'woocommerce_single_image_width', '800', 'yes'),
(272, 'woocommerce_thumbnail_image_width', '250', 'yes'),
(273, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(274, 'woocommerce_demo_store', 'no', 'no'),
(275, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}', 'yes'),
(276, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(277, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(280, 'default_product_cat', '15', 'yes'),
(285, 'woocommerce_admin_notices', 'a:3:{i:0;s:20:\"no_secure_connection\";i:1;s:8:\"wc_admin\";i:2;s:14:\"template_files\";}', 'yes'),
(288, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(289, 'widget_woocommerce_widget_cart', 'a:4:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:2:{s:5:\"title\";s:6:\"Cart12\";s:13:\"hide_if_empty\";i:0;}i:5;a:0:{}}', 'yes'),
(290, 'widget_woocommerce_layered_nav_filters', 'a:8:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:0:{}i:5;a:0:{}i:7;a:0:{}i:9;a:1:{s:5:\"title\";s:14:\"Active Filters\";}i:10;a:1:{s:5:\"title\";s:14:\"Active Filters\";}i:12;a:0:{}}', 'yes'),
(291, 'widget_woocommerce_layered_nav', 'a:7:{i:1;a:0:{}i:3;a:0:{}i:5;a:0:{}i:7;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:5:\"color\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:2:\"or\";}i:10;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:5:\"color\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:2:\"or\";}i:11;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:5:\"color\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_price_filter', 'a:8:{i:1;a:0:{}i:3;a:0:{}i:5;a:0:{}i:7;a:0:{}i:9;a:1:{s:5:\"title\";s:21:\"Giao diện theo giá\";}i:11;a:1:{s:5:\"title\";s:15:\"Filter by price\";}i:12;a:1:{s:5:\"title\";s:15:\"Lọc theo giá\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_product_categories', 'a:9:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:5;a:7:{s:5:\"title\";s:18:\"Product Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:7;a:7:{s:5:\"title\";s:18:\"Product Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:9;a:7:{s:5:\"title\";s:9:\"Browse By\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:10;a:7:{s:5:\"title\";s:18:\"Product Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:12;a:7:{s:5:\"title\";s:18:\"Product Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}i:13;a:8:{s:5:\"title\";s:11:\"Lĩnh vực\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:1;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}i:15;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(294, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_tag_cloud', 'a:7:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:0:{}i:5;a:1:{s:5:\"title\";s:4:\"Tags\";}i:6;a:1:{s:5:\"title\";s:12:\"Product Tags\";}i:7;a:1:{s:5:\"title\";s:12:\"Product Tags\";}i:8;a:1:{s:5:\"title\";s:4:\"Tags\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(296, 'widget_woocommerce_products', 'a:11:{i:1;a:0:{}i:3;a:7:{s:5:\"title\";s:8:\"Products\";s:6:\"number\";s:1:\"4\";s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:4;a:7:{s:5:\"title\";s:12:\"Best Sellers\";s:6:\"number\";s:1:\"4\";s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:5:\"sales\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:5;a:7:{s:5:\"title\";s:7:\"On Sale\";s:6:\"number\";i:3;s:4:\"show\";s:6:\"onsale\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:7;a:7:{s:5:\"title\";s:8:\"Products\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:9;a:7:{s:5:\"title\";s:15:\"Latest Products\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"rand\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:10;a:7:{s:5:\"title\";s:24:\"Sản phẩm bán chạy\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:11;a:7:{s:5:\"title\";s:12:\"Best Selling\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:5:\"sales\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:12;a:7:{s:5:\"title\";s:6:\"Latest\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:13;a:7:{s:5:\"title\";s:8:\"Featured\";s:6:\"number\";i:4;s:4:\"show\";s:8:\"featured\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_recently_viewed_products', 'a:7:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:2:{s:5:\"title\";s:24:\"Recently Viewed Products\";s:6:\"number\";s:1:\"3\";}i:5;a:2:{s:5:\"title\";s:24:\"Recently Viewed Products\";s:6:\"number\";i:4;}i:7;a:2:{s:5:\"title\";s:24:\"Recently Viewed Products\";s:6:\"number\";i:10;}i:8;a:2:{s:5:\"title\";s:20:\"Giao diện đã xem\";s:6:\"number\";i:1;}i:10;a:2:{s:5:\"title\";s:21:\"Sản phẩm đã xem\";s:6:\"number\";i:5;}}', 'yes'),
(298, 'widget_woocommerce_top_rated_products', 'a:4:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:2;a:2:{s:5:\"title\";s:18:\"Top Rated Products\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:9:\"Top Rated\";s:6:\"number\";i:3;}}', 'yes'),
(299, 'widget_woocommerce_recent_reviews', 'a:3:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:2:{s:5:\"title\";s:14:\"Recent Reviews\";s:6:\"number\";s:1:\"3\";}}', 'yes'),
(300, 'widget_woocommerce_rating_filter', 'a:3:{s:12:\"_multiwidget\";i:1;i:2;a:1:{s:5:\"title\";s:14:\"Average Rating\";}i:3;a:1:{s:5:\"title\";s:14:\"Average Rating\";}}', 'yes'),
(301, 'widget_upsell_widget', 'a:5:{s:12:\"_multiwidget\";i:1;i:1;a:0:{}i:3;a:0:{}i:5;a:0:{}i:7;a:1:{s:5:\"title\";s:16:\"Complete the loo\";}}', 'yes'),
(306, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(315, '_transient_product_query-transient-version', '1685363129', 'yes'),
(343, 'featured_item_category_children', 'a:0:{}', 'yes'),
(345, 'widget_null-instagram-feed', 'a:4:{i:3;a:0:{}i:4;a:6:{s:5:\"title\";s:9:\"Instagram\";s:8:\"username\";s:21:\"beautifuldestinations\";s:6:\"number\";s:2:\"10\";s:4:\"size\";s:5:\"large\";s:6:\"target\";s:5:\"_self\";s:4:\"link\";s:10:\"Follow Me!\";}i:5;a:6:{s:5:\"title\";s:9:\"Instagram\";s:8:\"username\";s:7:\"topshop\";s:6:\"number\";s:1:\"6\";s:4:\"size\";s:9:\"thumbnail\";s:6:\"target\";s:5:\"_self\";s:4:\"link\";s:9:\"Follow us\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'yith_wcwl_button_position', 'shortcode', 'yes'),
(350, 'envato_setup_complete', '1578450861', 'yes'),
(352, 'woocommerce_product_type', 'both', 'yes'),
(353, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(354, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(355, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:35:\"Trả tiền mặt khi nhận hàng\";s:11:\"description\";s:33:\"Trả tiền mặt khi giao hàng\";s:12:\"instructions\";s:33:\"Trả tiền mặt khi giao hàng\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(356, '_transient_shipping-transient-version', '1583296616', 'yes'),
(368, 'wc_admin_install_timestamp', '1578451032', 'yes'),
(371, '_transient_product-transient-version', '1583317140', 'yes'),
(380, 'wc_admin_version', '0.24.0', 'yes'),
(645, 'woocommerce_shop_page_display', '', 'yes'),
(646, 'woocommerce_maybe_regenerate_images_hash', '5cf4554f96a6ca0b989ca076e23a6c9c', 'yes'),
(1574, 'widget_tn_diemban', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1609, 'acf_version', '6.1.6', 'yes'),
(1901, 'recovery_mode_email_last_sent', '1685363103', 'yes'),
(4088, 'tnsetting_footerconent', '', 'yes'),
(4217, 'tadv_settings', 'a:10:{s:9:\"toolbar_1\";s:143:\"formatselect,bold,strikethrough,italic,underline,blockquote,bullist,numlist,alignleft,alignjustify,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:121:\"fontselect,fontsizeselect,forecolor,backcolor,outdent,indent,pastetext,removeformat,charmap,wp_more,table,wp_help,rtl,ltr\";s:9:\"toolbar_3\";s:136:\"styleselect,image,media,wp_code,fullscreen,emoticons,hr,anchor,code,tadv_mark,nonbreaking,searchreplace,superscript,visualblocks,wp_page\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:291:\"formatselect,fontselect,fontsizeselect,bold,underline,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignjustify,alignright,link,unlink,forecolor,backcolor,table,wp_help,outdent,indent,removeformat,image,charmap,hr,emoticons,fullscreen,wp_page,wp_code,code,media,nonbreaking,anchor\";s:13:\"toolbar_block\";s:10:\"core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";s:7:\"options\";s:39:\"merge_toolbars,advlist,fontsize_formats\";s:7:\"plugins\";s:74:\"anchor,visualblocks,nonbreaking,emoticons,table,searchreplace,code,advlist\";}', 'yes'),
(4218, 'tadv_admin_settings', 'a:2:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";s:16:\"disabled_editors\";s:0:\"\";}', 'yes'),
(4219, 'tadv_version', '5210', 'yes'),
(4466, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(4790, 'tnsetting_phone_numbervi', 'xxxx.xxx.xxx', 'no'),
(4791, 'tnsetting_emailvi', '', 'no'),
(4792, 'tnsetting_namevi', '', 'no'),
(4793, 'tnsetting_addressvi', 'Việt Nam', 'no'),
(4794, 'tnsetting_sloganvi', 'Làm Việc Bằng Trái Tim', 'no'),
(4795, 'tnsetting_fanpagevi', '', 'no'),
(4796, 'tnsetting_bandovi', '', 'no'),
(4797, 'tnsetting_facebookvi', '', 'no'),
(4798, 'tnsetting_youtubevi', '', 'no'),
(4799, 'tnsetting_twittervi', '', 'no'),
(4800, 'tnsetting_bannervi', '', 'no'),
(4801, 'tnsetting_footercontentvi', '<ul style=\"list-style-type: circle;\">\r\n 	<li><strong>Địa chỉ:</strong> P209 tòa nhà Thành Đạt, Số 3 Lê Thánh Tông, P. Máy Tơ, Q.Ngô Quyền, TP.Hải Phòng</li>\r\n 	<li><strong>Hotline:</strong> 0906 174 066 (Mr Doanh)</li>\r\n 	<li><strong>MST:</strong> 0201736368</li>\r\n 	<li><strong>Email:</strong> info@dichvuhaiquanhaiphong.com<i class=\"fa fa-map-marker\"></i></li>\r\n</ul>', 'no'),
(4858, '_transient_woocommerce_reports-transient-version', '1581570101', 'yes'),
(5007, 'wpseo', 'a:101:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";i:2;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:0;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.5\";s:16:\"previous_version\";s:4:\"13.0\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1581585767;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:45:\"http://localhost/wp-flatsome/DefaultWordPress\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:2:{s:10:\"duhoc-cate\";s:9:\"room-type\";s:16:\"block_categories\";s:16:\"block_categories\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:34:\"dismiss_old_premium_version_notice\";s:0:\"\";s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1652258756;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:5:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:6:\"blocks\";i:4;s:5:\"duhoc\";}s:28:\"last_known_public_taxonomies\";a:4:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:10:\"duhoc-cate\";}}', 'yes'),
(5008, 'wpseo_titles', 'a:170:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:48:\"%%name%%, Tác giả tại %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:62:\"Bạn đã tìm %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:45:\"Không tìm thấy trang %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:81:\"Bài viết %%POSTLINK%% đã xuất hiện đầu tiên vào ngày %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:35:\"Lỗi 404: Không tìm thấy trang\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:0:\"\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Bạn đã tìm\";s:15:\"breadcrumbs-sep\";s:1:\"/\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:1;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:9:\"%%title%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:9:\"%%title%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"schema-page-type-blocks\";s:7:\"WebPage\";s:26:\"schema-article-type-blocks\";s:4:\"None\";s:19:\"social-title-blocks\";s:9:\"%%title%%\";s:25:\"social-description-blocks\";s:0:\"\";s:23:\"social-image-url-blocks\";s:0:\"\";s:22:\"social-image-id-blocks\";i:0;s:11:\"title-duhoc\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-duhoc\";s:0:\"\";s:13:\"noindex-duhoc\";b:0;s:24:\"display-metabox-pt-duhoc\";b:1;s:24:\"post_types-duhoc-maintax\";i:0;s:22:\"schema-page-type-duhoc\";s:7:\"WebPage\";s:25:\"schema-article-type-duhoc\";s:4:\"None\";s:18:\"social-title-duhoc\";s:9:\"%%title%%\";s:24:\"social-description-duhoc\";s:0:\"\";s:22:\"social-image-url-duhoc\";s:0:\"\";s:21:\"social-image-id-duhoc\";i:0;s:21:\"title-ptarchive-duhoc\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-ptarchive-duhoc\";s:0:\"\";s:23:\"bctitle-ptarchive-duhoc\";s:0:\"\";s:23:\"noindex-ptarchive-duhoc\";b:0;s:28:\"social-title-ptarchive-duhoc\";s:24:\"Lưu trữ %%pt_plural%%\";s:34:\"social-description-ptarchive-duhoc\";s:0:\"\";s:32:\"social-image-url-ptarchive-duhoc\";s:0:\"\";s:31:\"social-image-id-ptarchive-duhoc\";i:0;s:18:\"title-tax-category\";s:23:\"%%term_title%% %%page%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:25:\"Lưu trữ %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:23:\"%%term_title%% %%page%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:25:\"Lưu trữ %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:25:\"Lưu trữ %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:20:\"title-tax-duhoc-cate\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-tax-duhoc-cate\";s:0:\"\";s:30:\"display-metabox-tax-duhoc-cate\";b:1;s:22:\"noindex-tax-duhoc-cate\";b:0;s:27:\"social-title-tax-duhoc-cate\";s:25:\"Lưu trữ %%term_title%%\";s:33:\"social-description-tax-duhoc-cate\";s:0:\"\";s:31:\"social-image-url-tax-duhoc-cate\";s:0:\"\";s:30:\"social-image-id-tax-duhoc-cate\";i:0;s:28:\"taxonomy-duhoc-cate-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:13:\"title-product\";s:9:\"%%title%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:23:\"title-ptarchive-product\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:21:\"title-tax-product_cat\";s:23:\"%%term_title%% %%page%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:23:\"%%term_title%% %%page%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(5009, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(5140, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(5148, 'woocommerce_thumbnail_cropping_custom_height', '6', 'yes'),
(6287, 'wp_smtp_options', 'a:9:{s:4:\"from\";s:27:\"tamnghiawordpress@gmail.com\";s:8:\"fromname\";s:20:\"Thiết kế website\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:27:\"tamnghiawordpress@gmail.com\";s:8:\"password\";s:16:\"cdhrbybyepxcwpdq\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(6307, 'itsec-storage', 'a:6:{s:6:\"global\";a:33:{s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:64:\"You have been locked out due to too many invalid login attempts.\";s:25:\"community_lockout_message\";s:77:\"Your IP address has been flagged as a threat by the iThemes Security network.\";s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:16:\"blacklist_period\";i:7;s:14:\"lockout_period\";i:15;s:18:\"lockout_white_list\";a:0:{}s:12:\"log_rotation\";i:60;s:17:\"file_log_rotation\";i:180;s:8:\"log_type\";s:8:\"database\";s:12:\"log_location\";s:76:\"D:\\Work\\Xampp\\htdocs\\tracologistics/wp-content/uploads/ithemes-security/logs\";s:8:\"log_info\";s:0:\"\";s:14:\"allow_tracking\";b:0;s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:46:\"D:\\Work\\Xampp\\htdocs\\tracologistics/nginx.conf\";s:24:\"infinitewp_compatibility\";b:0;s:11:\"did_upgrade\";b:0;s:9:\"lock_file\";b:0;s:5:\"proxy\";s:9:\"automatic\";s:12:\"proxy_header\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"hide_admin_bar\";b:1;s:16:\"show_error_codes\";b:0;s:19:\"show_security_check\";b:0;s:5:\"build\";i:4116;s:13:\"initial_build\";i:4116;s:20:\"activation_timestamp\";i:1582171127;s:11:\"cron_status\";i:0;s:8:\"use_cron\";b:0;s:14:\"cron_test_time\";i:1685565511;s:19:\"enable_grade_report\";b:0;s:10:\"server_ips\";a:1:{i:0;s:3:\"::1\";}s:13:\"feature_flags\";a:0:{}}s:18:\"security-check-pro\";a:6:{s:19:\"last_scan_timestamp\";N;s:15:\"remote_ip_index\";N;s:13:\"ssl_supported\";N;s:20:\"remote_ips_timestamp\";N;s:10:\"remote_ips\";a:0:{}s:8:\"key_salt\";s:60:\"5[7>gmK8Zu>MFFVosLkg;xg qyR7Q( ZTiY3nGU76RIKAN9gSa?.0-EkX_&=\";}s:21:\"password-requirements\";a:2:{s:20:\"enabled_requirements\";a:1:{s:8:\"strength\";b:1;}s:20:\"requirement_settings\";a:1:{s:8:\"strength\";a:1:{s:4:\"role\";s:13:\"administrator\";}}}s:16:\"wordpress-tweaks\";a:13:{s:18:\"wlwmanifest_header\";b:0;s:14:\"edituri_header\";b:0;s:12:\"comment_spam\";b:0;s:11:\"file_editor\";b:1;s:14:\"disable_xmlrpc\";i:0;s:22:\"allow_xmlrpc_multiauth\";b:0;s:8:\"rest_api\";s:15:\"restrict-access\";s:12:\"login_errors\";b:0;s:21:\"force_unique_nicename\";b:0;s:27:\"disable_unused_author_pages\";b:0;s:16:\"block_tabnapping\";b:0;s:21:\"valid_user_login_type\";s:4:\"both\";s:26:\"patch_thumb_file_traversal\";b:1;}s:12:\"hide-backend\";a:6:{s:7:\"enabled\";b:1;s:4:\"slug\";s:9:\"tnquantri\";s:12:\"theme_compat\";b:1;s:17:\"theme_compat_slug\";s:9:\"tnquantri\";s:16:\"post_logout_slug\";s:0:\"\";s:8:\"register\";s:13:\"wp-signup.php\";}s:19:\"notification-center\";a:8:{s:9:\"last_sent\";a:1:{s:6:\"digest\";i:1685541691;}s:9:\"resend_at\";a:0:{}s:4:\"data\";a:1:{s:6:\"digest\";a:0:{}}s:15:\"last_mail_error\";s:36:\"Could not instantiate mail function.\";s:13:\"notifications\";a:4:{s:6:\"digest\";a:5:{s:8:\"schedule\";s:5:\"daily\";s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:7:\"lockout\";a:4:{s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:6:\"backup\";a:2:{s:10:\"email_list\";a:1:{i:0;s:20:\"kythuat@tamnghia.com\";}s:7:\"subject\";N;}s:12:\"hide-backend\";a:4:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;s:7:\"message\";s:0:\"\";}}s:12:\"admin_emails\";a:0:{}s:10:\"from_email\";s:0:\"\";s:18:\"default_recipients\";a:1:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}}}}', 'yes'),
(6308, 'itsec_temp_whitelist_ip', 'a:1:{s:3:\"::1\";i:1685449503;}', 'no'),
(6311, 'itsec_active_modules', 'a:6:{s:9:\"ban-users\";b:1;s:6:\"backup\";b:1;s:11:\"brute-force\";b:1;s:19:\"network-brute-force\";b:1;s:16:\"wordpress-tweaks\";b:1;s:18:\"security-check-pro\";b:1;}', 'yes'),
(6315, 'new_admin_email', 'kythuat@tamnghia.com', 'yes'),
(6323, 'itsec_highlighted_logs', 'a:3:{s:11:\"highlighted\";a:0:{}s:7:\"markers\";a:1:{s:31:\"notification-center-send-failed\";i:1582171713;}s:5:\"muted\";a:0:{}}', 'no'),
(6324, 'itsec_dismissed_notices', 'a:1:{i:0;s:25:\"network-brute-force-promo\";}', 'no'),
(6786, 'ot_vm', 'a:3:{s:10:\"menu_title\";s:23:\"Danh mục sản phẩm\";s:10:\"menu_event\";s:5:\"hover\";s:9:\"show_home\";s:1:\"1\";}', 'yes'),
(7005, 'menu-icons', 'a:3:{s:6:\"global\";a:1:{s:10:\"icon_types\";a:1:{i:0;s:5:\"image\";}}s:8:\"menu_141\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}s:7:\"menu_68\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}}', 'yes'),
(7108, 'menu_icons_install', '1582553524', 'yes'),
(7401, 'themeisle_sdk_notifications', 'a:2:{s:17:\"last_notification\";a:2:{s:2:\"id\";s:22:\"menu_icons_review_flag\";s:10:\"display_at\";i:1583719451;}s:24:\"last_notification_active\";i:1685363159;}', 'yes'),
(7505, 'wpseo_taxonomy_meta', 'a:1:{s:11:\"product_cat\";a:2:{i:131;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:135;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(7523, 'menu_icons_logger_flag', 'no', 'yes'),
(7813, 'woocommerce_thumbnail_cropping_custom_width', '5', 'yes'),
(7991, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(8000, 'woocommerce_bacs_accounts', 'a:2:{i:0;a:6:{s:12:\"account_name\";s:15:\"Nguyễn Văn A\";s:14:\"account_number\";s:11:\"01234567890\";s:9:\"bank_name\";s:11:\"Vietcombank\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:1;a:6:{s:12:\"account_name\";s:15:\"Nguyễn Văn A\";s:14:\"account_number\";s:11:\"09876543210\";s:9:\"bank_name\";s:8:\"Agribank\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(8009, 'woocommerce_free_shipping_2_settings', 'a:3:{s:5:\"title\";s:22:\"Giao hàng miễn phí\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";}', 'yes'),
(8053, 'yit_recently_activated', 'a:2:{i:0;s:41:\"yith-woocommerce-ajax-navigation/init.php\";i:1;s:39:\"yith-woocommerce-brands-add-on/init.php\";}', 'yes'),
(8054, 'widget_yith-woo-ajax-navigation', 'a:4:{i:2;a:9:{s:5:\"title\";s:10:\"Dung tích\";s:9:\"attribute\";s:9:\"dung-tich\";s:10:\"query_type\";s:2:\"or\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:3;a:9:{s:5:\"title\";s:18:\"Hãng sản xuất\";s:9:\"attribute\";s:13:\"hang-san-xuat\";s:10:\"query_type\";s:2:\"or\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:4;a:9:{s:5:\"title\";s:10:\"Màu sắc\";s:9:\"attribute\";s:7:\"mau-sac\";s:10:\"query_type\";s:2:\"or\";s:4:\"type\";s:5:\"color\";s:6:\"colors\";a:3:{i:154;s:7:\"#000000\";i:156;s:0:\"\";i:155;s:7:\"#1e73be\";}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(8055, 'widget_yith-woo-ajax-reset-navigation', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8056, 'yit_wcan_options', 'a:7:{s:29:\"yith_wcan_ajax_shop_container\";s:9:\".products\";s:30:\"yith_wcan_ajax_shop_pagination\";s:26:\"nav.woocommerce-pagination\";s:36:\"yith_wcan_ajax_shop_result_container\";s:25:\".woocommerce-result-count\";s:31:\"yith_wcan_ajax_scroll_top_class\";s:19:\".yit-wcan-container\";s:31:\"yith_wcan_ajax_shop_terms_order\";s:10:\"menu_order\";s:22:\"yith_wcan_custom_style\";s:0:\"\";s:30:\"yith_wcan_frontend_description\";b:0;}', 'yes'),
(8057, 'yith_system_info', 'a:2:{s:11:\"system_info\";a:13:{s:14:\"min_wp_version\";a:1:{s:5:\"value\";s:5:\"5.3.2\";}s:14:\"min_wc_version\";a:1:{s:5:\"value\";s:5:\"3.8.1\";}s:15:\"wp_memory_limit\";a:1:{s:5:\"value\";i:536870912;}s:15:\"min_php_version\";a:1:{s:5:\"value\";s:6:\"7.1.33\";}s:15:\"min_tls_version\";a:1:{s:5:\"value\";s:3:\"1.2\";}s:15:\"imagick_version\";a:1:{s:5:\"value\";s:3:\"n/a\";}s:15:\"wp_cron_enabled\";a:1:{s:5:\"value\";b:1;}s:16:\"mbstring_enabled\";a:1:{s:5:\"value\";b:1;}s:17:\"simplexml_enabled\";a:1:{s:5:\"value\";b:1;}s:10:\"gd_enabled\";a:1:{s:5:\"value\";b:1;}s:13:\"iconv_enabled\";a:1:{s:5:\"value\";b:1;}s:15:\"opcache_enabled\";a:1:{s:5:\"value\";b:0;}s:17:\"url_fopen_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}}s:6:\"errors\";b:0;}', 'yes'),
(8060, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(8061, '_site_transient_timeout_yith_promo_message', '3166707844', 'no'),
(8062, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(8065, 'yith_wcbr_brands_label', 'Thương hiệu:', 'yes'),
(8066, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcbr_panel\";b:1;}', 'yes'),
(8121, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:120:\"Trả thông qua Paypal; bạn có thể thanh toán với thẻ tín dụng nếu bạn không có tài khoản PayPal.\";s:5:\"email\";s:20:\"kythuat@tamnghia.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:20:\"kythuat@tamnghia.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(8165, 'category_children', 'a:0:{}', 'yes'),
(8216, 'yith_product_brand_children', 'a:0:{}', 'yes'),
(8340, 'product_cat_children', 'a:1:{i:130;a:2:{i:0;i:139;i:1;i:140;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(8544, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(8545, 'widget_woof_widget', 'a:2:{i:2;a:8:{s:5:\"title\";s:5:\"Lọc\";s:22:\"additional_text_before\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:24:\"woof_start_filtering_btn\";s:1:\"0\";s:11:\"ajax_redraw\";s:1:\"0\";s:12:\"btn_position\";s:1:\"b\";s:15:\"dynamic_recount\";s:2:\"-1\";s:10:\"autosubmit\";s:2:\"-1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(8546, 'woof_first_init', '1', 'yes'),
(8547, 'woof_set_automatically', '1', 'yes'),
(8548, 'woof_autosubmit', '1', 'yes'),
(8549, 'woof_show_count', '0', 'yes'),
(8550, 'woof_show_count_dynamic', '0', 'yes'),
(8551, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(8552, 'woof_try_ajax', '0', 'yes'),
(8553, 'woof_checkboxes_slide', '1', 'yes'),
(8554, 'woof_hide_red_top_panel', '0', 'yes'),
(8555, 'woof_sort_terms_checked', '0', 'yes'),
(8556, 'woof_filter_btn_txt', '', 'yes'),
(8557, 'woof_reset_btn_txt', '', 'yes'),
(8558, 'woof_settings', 'a:50:{s:11:\"items_order\";s:0:\"\";s:8:\"by_price\";a:8:{s:4:\"show\";s:1:\"1\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"show_button\";s:1:\"1\";s:10:\"title_text\";s:4:\"Giá\";s:6:\"ranges\";s:4:\"0-50\";s:17:\"first_option_text\";s:1:\"1\";s:15:\"ion_slider_step\";s:1:\"0\";s:9:\"price_tax\";s:1:\"0\";}s:8:\"tax_type\";a:8:{s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_cat\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";s:12:\"pa_dung-tich\";s:5:\"radio\";s:16:\"pa_hang-san-xuat\";s:5:\"radio\";s:10:\"pa_mau-sac\";s:5:\"radio\";s:10:\"pa_xuat-xu\";s:5:\"radio\";s:18:\"yith_product_brand\";s:5:\"radio\";}s:14:\"excluded_terms\";a:8:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:12:\"pa_dung-tich\";s:7:\"131,132\";s:16:\"pa_hang-san-xuat\";s:7:\"131,132\";s:10:\"pa_mau-sac\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:18:\"yith_product_brand\";s:0:\"\";}s:16:\"tax_block_height\";a:8:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:16:\"pa_hang-san-xuat\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";s:18:\"yith_product_brand\";s:1:\"0\";}s:16:\"show_title_label\";a:8:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:16:\"pa_hang-san-xuat\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";s:18:\"yith_product_brand\";s:1:\"1\";}s:18:\"show_toggle_button\";a:8:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:16:\"pa_hang-san-xuat\";s:1:\"2\";s:10:\"pa_mau-sac\";s:1:\"2\";s:10:\"pa_xuat-xu\";s:1:\"2\";s:18:\"yith_product_brand\";s:1:\"2\";}s:12:\"tooltip_text\";a:8:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:16:\"pa_hang-san-xuat\";s:0:\"\";s:10:\"pa_mau-sac\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:18:\"yith_product_brand\";s:0:\"\";}s:13:\"dispay_in_row\";a:8:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:16:\"pa_hang-san-xuat\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";s:18:\"yith_product_brand\";s:1:\"0\";}s:7:\"orderby\";a:8:{s:18:\"product_visibility\";s:2:\"-1\";s:11:\"product_cat\";s:2:\"-1\";s:11:\"product_tag\";s:2:\"-1\";s:12:\"pa_dung-tich\";s:2:\"-1\";s:16:\"pa_hang-san-xuat\";s:2:\"-1\";s:10:\"pa_mau-sac\";s:2:\"-1\";s:10:\"pa_xuat-xu\";s:2:\"-1\";s:18:\"yith_product_brand\";s:2:\"-1\";}s:5:\"order\";a:8:{s:18:\"product_visibility\";s:3:\"ASC\";s:11:\"product_cat\";s:3:\"ASC\";s:11:\"product_tag\";s:3:\"ASC\";s:12:\"pa_dung-tich\";s:3:\"ASC\";s:16:\"pa_hang-san-xuat\";s:3:\"ASC\";s:10:\"pa_mau-sac\";s:3:\"ASC\";s:10:\"pa_xuat-xu\";s:3:\"ASC\";s:18:\"yith_product_brand\";s:3:\"ASC\";}s:16:\"comparison_logic\";a:8:{s:18:\"product_visibility\";s:2:\"OR\";s:11:\"product_cat\";s:2:\"OR\";s:11:\"product_tag\";s:2:\"OR\";s:12:\"pa_dung-tich\";s:2:\"OR\";s:16:\"pa_hang-san-xuat\";s:2:\"OR\";s:10:\"pa_mau-sac\";s:2:\"OR\";s:10:\"pa_xuat-xu\";s:2:\"OR\";s:18:\"yith_product_brand\";s:2:\"OR\";}s:16:\"custom_tax_label\";a:8:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:16:\"pa_hang-san-xuat\";s:1:\"1\";s:10:\"pa_mau-sac\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:18:\"yith_product_brand\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:8:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:16:\"pa_hang-san-xuat\";s:1:\"2\";s:10:\"pa_mau-sac\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:18:\"yith_product_brand\";s:0:\"\";}s:3:\"tax\";a:5:{s:12:\"pa_dung-tich\";s:1:\"1\";s:16:\"pa_hang-san-xuat\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";s:18:\"yith_product_brand\";s:1:\"1\";}s:11:\"icheck_skin\";s:11:\"flat_orange\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:11:\"use_tooltip\";s:1:\"1\";s:21:\"woof_auto_hide_button\";s:1:\"0\";s:22:\"woof_auto_filter_skins\";s:0:\"\";s:16:\"woof_tooltip_img\";s:0:\"\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:20:\"init_only_on_reverse\";s:1:\"0\";s:12:\"init_only_on\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:17:\"optimize_js_files\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:20:\"activated_extensions\";s:0:\"\";}', 'yes'),
(8559, 'woof_version', '1.2.3', 'yes'),
(8560, 'woof_alert', 'a:2:{s:29:\"woocommerce_currency_switcher\";s:0:\"\";s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(8561, 'woof_alert_rev', '1583397309', 'yes'),
(8650, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes'),
(8652, 'br_filters_options', 'a:64:{s:10:\"plugin_key\";s:0:\"\";s:19:\"no_products_message\";s:43:\"There are no products meeting your criteria\";s:12:\"pos_relative\";s:1:\"1\";s:17:\"no_products_class\";s:0:\"\";s:18:\"products_holder_id\";s:11:\"ul.products\";s:30:\"woocommerce_result_count_class\";s:25:\".woocommerce-result-count\";s:26:\"woocommerce_ordering_class\";s:25:\"form.woocommerce-ordering\";s:28:\"woocommerce_pagination_class\";s:23:\".woocommerce-pagination\";s:19:\"woocommerce_removes\";a:4:{s:12:\"result_count\";s:0:\"\";s:8:\"ordering\";s:0:\"\";s:10:\"pagination\";s:0:\"\";s:15:\"pagination_ajax\";s:0:\"\";}s:17:\"products_per_page\";s:2:\"10\";s:15:\"attribute_count\";s:0:\"\";s:15:\"control_sorting\";s:1:\"1\";s:17:\"seo_friendly_urls\";s:1:\"1\";s:14:\"seo_uri_decode\";s:1:\"1\";s:12:\"recount_hide\";s:13:\"removeRecount\";s:9:\"slug_urls\";s:0:\"\";s:14:\"seo_meta_title\";s:0:\"\";s:17:\"seo_element_title\";s:0:\"\";s:18:\"seo_element_header\";s:0:\"\";s:23:\"seo_element_description\";s:0:\"\";s:21:\"seo_meta_title_visual\";s:33:\"BeRocket_AAPF_wcseo_title_visual1\";s:16:\"filters_turn_off\";s:0:\"\";s:10:\"hide_value\";a:4:{s:1:\"o\";s:1:\"1\";s:3:\"sel\";s:0:\"\";s:5:\"empty\";s:1:\"1\";s:6:\"button\";s:0:\"\";}s:11:\"use_select2\";s:0:\"\";s:13:\"fixed_select2\";s:0:\"\";s:15:\"first_page_jump\";s:1:\"1\";s:15:\"scroll_shop_top\";s:1:\"3\";s:18:\"scroll_shop_top_px\";s:4:\"-180\";s:18:\"selected_area_show\";s:1:\"1\";s:24:\"selected_area_hide_empty\";s:0:\"\";s:13:\"products_only\";s:1:\"1\";s:21:\"out_of_stock_variable\";s:1:\"0\";s:28:\"out_of_stock_variable_reload\";s:0:\"\";s:28:\"out_of_stock_variable_single\";s:0:\"\";s:16:\"alternative_load\";s:0:\"\";s:21:\"alternative_load_type\";s:6:\"wpajax\";s:19:\"page_same_as_filter\";s:0:\"\";s:13:\"use_get_query\";s:1:\"1\";s:16:\"styles_in_footer\";s:0:\"\";s:15:\"product_per_row\";s:1:\"4\";s:12:\"styles_input\";a:10:{s:8:\"checkbox\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:5:\"radio\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:6:\"slider\";a:10:{s:10:\"line_color\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:17:\"line_border_color\";s:0:\"\";s:17:\"line_border_width\";s:0:\"\";s:11:\"button_size\";s:0:\"\";s:12:\"button_color\";s:0:\"\";s:19:\"button_border_color\";s:0:\"\";s:19:\"button_border_width\";s:0:\"\";s:20:\"button_border_radius\";s:0:\"\";s:15:\"back_line_color\";s:0:\"\";}s:5:\"pc_ub\";a:10:{s:10:\"back_color\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:14:\"show_font_size\";s:0:\"\";s:10:\"close_size\";s:0:\"\";s:15:\"show_font_color\";s:0:\"\";s:21:\"show_font_color_hover\";s:0:\"\";s:16:\"close_font_color\";s:0:\"\";s:22:\"close_font_color_hover\";s:0:\"\";}s:13:\"product_count\";s:5:\"round\";s:22:\"product_count_position\";s:0:\"\";s:15:\"onlyTitle_title\";a:6:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";}s:21:\"onlyTitle_titleopened\";a:6:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";}s:16:\"onlyTitle_filter\";a:6:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";}s:28:\"product_count_position_image\";s:0:\"\";}s:16:\"child_pre_indent\";s:0:\"\";s:14:\"ajax_load_icon\";s:0:\"\";s:14:\"ajax_load_text\";a:4:{s:3:\"top\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";}s:11:\"description\";a:2:{s:4:\"show\";s:5:\"click\";s:4:\"hide\";s:5:\"click\";}s:9:\"user_func\";a:3:{s:13:\"before_update\";s:0:\"\";s:9:\"on_update\";s:0:\"\";s:12:\"after_update\";s:0:\"\";}s:10:\"custom_css\";s:0:\"\";s:15:\"user_custom_css\";s:0:\"\";s:13:\"br_opened_tab\";s:0:\"\";s:11:\"tags_custom\";s:1:\"1\";s:9:\"ajax_site\";s:0:\"\";s:10:\"search_fix\";s:1:\"1\";s:17:\"use_tax_for_price\";s:0:\"\";s:20:\"disable_font_awesome\";s:0:\"\";s:10:\"debug_mode\";s:0:\"\";s:17:\"ajax_request_load\";s:0:\"\";s:23:\"ajax_request_load_style\";s:0:\"\";s:28:\"fontawesome_frontend_disable\";s:0:\"\";s:28:\"fontawesome_frontend_version\";s:0:\"\";s:6:\"addons\";a:1:{i:0;s:0:\"\";}s:22:\"elements_position_hook\";s:31:\"woocommerce_archive_description\";s:16:\"purge_cache_time\";s:10:\"1583399673\";s:6:\"styles\";a:12:{s:5:\"title\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:5:\"label\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:9:\"selectbox\";a:1:{s:5:\"theme\";s:0:\"\";}s:12:\"slider_input\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:11:\"description\";a:1:{s:5:\"color\";s:0:\"\";}s:18:\"description_border\";a:1:{s:5:\"color\";s:0:\"\";}s:17:\"description_title\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:16:\"description_text\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:13:\"selected_area\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:19:\"selected_area_hover\";a:4:{s:5:\"color\";s:0:\"\";s:11:\"font_family\";s:0:\"\";s:4:\"bold\";s:0:\"\";s:9:\"font_size\";s:0:\"\";}s:19:\"selected_area_block\";a:1:{s:5:\"color\";s:0:\"\";}s:20:\"selected_area_border\";a:1:{s:5:\"color\";s:0:\"\";}}s:23:\"elements_above_products\";a:0:{}}', 'yes'),
(8653, 'br_filters_version', '1.4.1.8', 'yes'),
(8654, 'widget_berocket_aapf_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8655, 'widget_berocket_aapf_group', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8656, 'widget_berocket_aapf_single', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(8658, 'berocket_filter_open_wizard_on_settings', '1', 'yes'),
(8659, 'BeRocket_Framework_plugins_version_check', 'a:1:{s:12:\"ajax_filters\";s:7:\"1.4.1.8\";}', 'yes'),
(8660, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";i:2;s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:126:\"http://localhost/mypham/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.webp\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}}}}}', 'yes'),
(8663, 'berocket_current_displayed_notice', '', 'yes'),
(8664, 'berocket_admin_notices_rate_stars', 'a:1:{i:1;a:2:{s:4:\"time\";i:1584004479;s:5:\"count\";i:0;}}', 'yes'),
(8673, 'berocket_framework_option_global', 'a:2:{s:28:\"fontawesome_frontend_disable\";s:0:\"\";s:28:\"fontawesome_frontend_version\";s:0:\"\";}', 'yes'),
(8679, 'rewrite_rules', 'a:144:{s:11:\"roomtype/?$\";s:25:\"index.php?post_type=duhoc\";s:41:\"roomtype/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=duhoc&feed=$matches[1]\";s:36:\"roomtype/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=duhoc&feed=$matches[1]\";s:28:\"roomtype/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=duhoc&paged=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:56:\"(ban-buon-my-pham)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:39:\"(ban-buon-my-pham)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:21:\"(ban-buon-my-pham)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(khong-phan-loai)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(khong-phan-loai)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(khong-phan-loai)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(khuyen-mai)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(khuyen-mai)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(khuyen-mai)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(tuyen-dung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(tuyen-dung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(tuyen-dung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"roomtype/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"roomtype/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"roomtype/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"roomtype/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"roomtype/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"roomtype/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"roomtype/(.+?)/embed/?$\";s:38:\"index.php?duhoc=$matches[1]&embed=true\";s:27:\"roomtype/(.+?)/trackback/?$\";s:32:\"index.php?duhoc=$matches[1]&tb=1\";s:47:\"roomtype/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?duhoc=$matches[1]&feed=$matches[2]\";s:42:\"roomtype/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?duhoc=$matches[1]&feed=$matches[2]\";s:35:\"roomtype/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?duhoc=$matches[1]&paged=$matches[2]\";s:42:\"roomtype/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?duhoc=$matches[1]&cpage=$matches[2]\";s:31:\"roomtype/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?duhoc=$matches[1]&page=$matches[2]\";s:48:\"room-type/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?duhoc-cate=$matches[1]&feed=$matches[2]\";s:43:\"room-type/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?duhoc-cate=$matches[1]&feed=$matches[2]\";s:24:\"room-type/(.+?)/embed/?$\";s:43:\"index.php?duhoc-cate=$matches[1]&embed=true\";s:36:\"room-type/(.+?)/page/?([0-9]{1,})/?$\";s:50:\"index.php?duhoc-cate=$matches[1]&paged=$matches[2]\";s:18:\"room-type/(.+?)/?$\";s:32:\"index.php?duhoc-cate=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:63:\"index.php?taxonomy=block_categories&term=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?taxonomy=block_categories&term=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:52:\"index.php?taxonomy=block_categories&term=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:41:\"index.php?&page_id=1510&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(8681, 'berocket_aapf_filters_setup_wizard_list', 'a:1:{s:13:\"single_filter\";i:3;}', 'yes'),
(8682, 'br_get_taxonomy_hierarchy_product_cat', 'a:5:{s:5:\"terms\";a:10:{i:15;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:15;s:4:\"name\";s:13:\"Uncategorized\";s:4:\"slug\";s:13:\"uncategorized\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:15;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:15;a:1:{i:0;i:15;}}}i:131;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:131;s:4:\"name\";s:34:\"Chăm sóc &amp; dưỡng da mặt\";s:4:\"slug\";s:21:\"cham-soc-duong-da-mat\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:131;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:3;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:131;a:1:{i:0;i:131;}}}i:132;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:132;s:4:\"name\";s:25:\"Chăm sóc da toàn thân\";s:4:\"slug\";s:21:\"cham-soc-da-toan-than\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:132;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:132;a:1:{i:0;i:132;}}}i:133;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:133;s:4:\"name\";s:15:\"Chăm sóc tóc\";s:4:\"slug\";s:12:\"cham-soc-toc\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:133;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:133;a:1:{i:0;i:133;}}}i:136;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:136;s:4:\"name\";s:24:\"Mỹ phẩm đặc trị\";s:4:\"slug\";s:15:\"my-pham-dac-tri\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:136;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:136;a:1:{i:0;i:136;}}}i:135;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:135;s:4:\"name\";s:11:\"Nước hoa\";s:4:\"slug\";s:8:\"nuoc-hoa\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:135;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:135;a:1:{i:0;i:135;}}}i:137;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:137;s:4:\"name\";s:26:\"Phụ kiện trang điểm\";s:4:\"slug\";s:19:\"phu-kien-trang-diem\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:137;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:137;a:1:{i:0;i:137;}}}i:130;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:130;s:4:\"name\";s:27:\"Sản phẩm làm sạch da\";s:4:\"slug\";s:20:\"san-pham-lam-sach-da\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:130;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:2:{i:139;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:139;s:4:\"name\";s:17:\"Sữa rửa mặt\";s:4:\"slug\";s:11:\"sua-rua-mat\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:139;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:130;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:139;a:1:{i:0;i:139;}}}i:140;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:140;s:4:\"name\";s:11:\"Tẩy lông\";s:4:\"slug\";s:8:\"tay-long\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:140;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:130;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:140;a:1:{i:0;i:140;}}}}s:10:\"child_list\";a:2:{i:139;a:1:{i:0;i:139;}i:140;a:1:{i:0;i:140;}}s:11:\"parent_list\";a:3:{i:130;a:3:{i:0;i:140;i:1;i:139;i:2;i:130;}i:139;a:1:{i:0;i:139;}i:140;a:1:{i:0;i:140;}}}i:138;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:138;s:4:\"name\";s:26:\"Sản phẩm trang điểm\";s:4:\"slug\";s:19:\"san-pham-trang-diem\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:138;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:138;a:1:{i:0;i:138;}}}i:134;O:7:\"WP_Term\":13:{s:7:\"term_id\";i:134;s:4:\"name\";s:29:\"Thực phẩm CS sức khỏe\";s:4:\"slug\";s:21:\"thuc-pham-cs-suc-khoe\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:134;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:134;a:1:{i:0;i:134;}}}}s:9:\"hierarchy\";a:12:{i:15;a:1:{i:0;i:15;}i:131;a:1:{i:0;i:131;}i:132;a:1:{i:0;i:132;}i:133;a:1:{i:0;i:133;}i:136;a:1:{i:0;i:136;}i:135;a:1:{i:0;i:135;}i:137;a:1:{i:0;i:137;}i:130;a:1:{i:0;i:130;}i:139;a:2:{i:0;i:130;i:1;i:139;}i:140;a:2:{i:0;i:130;i:1;i:140;}i:138;a:1:{i:0;i:138;}i:134;a:1:{i:0;i:134;}}s:5:\"child\";a:12:{i:15;a:1:{i:0;i:15;}i:131;a:1:{i:0;i:131;}i:132;a:1:{i:0;i:132;}i:133;a:1:{i:0;i:133;}i:136;a:1:{i:0;i:136;}i:135;a:1:{i:0;i:135;}i:137;a:1:{i:0;i:137;}i:130;a:3:{i:0;i:140;i:1;i:139;i:2;i:130;}i:139;a:1:{i:0;i:139;}i:140;a:1:{i:0;i:140;}i:138;a:1:{i:0;i:138;}i:134;a:1:{i:0;i:134;}}s:3:\"md5\";s:42:\"f7d90b4b1cbcebe9cfa0f45b4e09a7651583399673\";s:4:\"time\";i:1583399946;}', 'yes'),
(8711, 'berocket_last_close_notices_time', '1583401426', 'yes'),
(8763, 'berocket_key_activated_plugins', 'a:1:{i:1;b:0;}', 'yes'),
(9357, 'woocommerce_version', '3.8.3', 'yes'),
(9358, 'woocommerce_db_version', '3.8.3', 'yes'),
(9360, '_transient_wc_attribute_taxonomies', 'a:4:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:9:\"dung-tich\";s:15:\"attribute_label\";s:10:\"Dung tích\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:13:\"hang-san-xuat\";s:15:\"attribute_label\";s:18:\"Hãng sản xuất\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"xuat-xu\";s:15:\"attribute_label\";s:11:\"Xuất xứ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(9366, '_transient_timeout_wpseo_link_table_inaccessible', '1716898943', 'no'),
(9367, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(9368, '_transient_timeout_wpseo_meta_table_inaccessible', '1716898943', 'no'),
(9369, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(9392, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1690339911;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(9395, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"kythuat@tamnghia.com\";s:7:\"version\";s:6:\"5.3.15\";s:9:\"timestamp\";i:1685362965;}', 'no'),
(9411, 'menu_icons_review_flag', 'no', 'yes'),
(9429, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690339914;s:7:\"checked\";a:2:{s:14:\"flatsome-child\";s:3:\"3.0\";s:8:\"flatsome\";s:6:\"3.10.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(9431, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"20.5\";}', 'yes'),
(9432, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(9437, '_site_transient_timeout_theme_roots', '1690341713', 'no'),
(9438, '_site_transient_theme_roots', 'a:2:{s:14:\"flatsome-child\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9439, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690343905;s:8:\"response\";a:10:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:5:\"1.7.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:45:\"olympus-google-fonts/olympus-google-fonts.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/olympus-google-fonts\";s:4:\"slug\";s:20:\"olympus-google-fonts\";s:6:\"plugin\";s:45:\"olympus-google-fonts/olympus-google-fonts.php\";s:11:\"new_version\";s:5:\"3.4.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/olympus-google-fonts/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/olympus-google-fonts.3.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/olympus-google-fonts/assets/icon-256x256.jpg?rev=2812012\";s:2:\"1x\";s:73:\"https://ps.w.org/olympus-google-fonts/assets/icon-128x128.jpg?rev=2812012\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/olympus-google-fonts/assets/banner-1544x500.jpg?rev=2812012\";s:2:\"1x\";s:75:\"https://ps.w.org/olympus-google-fonts/assets/banner-772x250.jpg?rev=2812012\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.5.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:5:\"3.1.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=2159749\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=2159749\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:45:\"simple-page-ordering/simple-page-ordering.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/simple-page-ordering\";s:4:\"slug\";s:20:\"simple-page-ordering\";s:6:\"plugin\";s:45:\"simple-page-ordering/simple-page-ordering.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/simple-page-ordering/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/simple-page-ordering.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/simple-page-ordering/assets/icon-256x256.png?rev=2716033\";s:2:\"1x\";s:73:\"https://ps.w.org/simple-page-ordering/assets/icon-128x128.png?rev=2716033\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/simple-page-ordering/assets/banner-1544x500.png?rev=2716033\";s:2:\"1x\";s:75:\"https://ps.w.org/simple-page-ordering/assets/banner-772x250.png?rev=2716033\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.gif?rev=2869506\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.gif?rev=2869506\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"20.12\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.2.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-256x256.png?rev=2619497\";s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=2619497\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-1544x500.png?rev=2619497\";s:2:\"1x\";s:83:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=2619497\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:43:\"remove-category-url/remove-category-url.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/remove-category-url\";s:4:\"slug\";s:19:\"remove-category-url\";s:6:\"plugin\";s:43:\"remove-category-url/remove-category-url.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/remove-category-url/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/remove-category-url.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/remove-category-url/assets/icon.svg?rev=1032792\";s:3:\"svg\";s:64:\"https://ps.w.org/remove-category-url/assets/icon.svg?rev=1032792\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/remove-category-url/assets/banner-1544x500.png?rev=1032792\";s:2:\"1x\";s:74:\"https://ps.w.org/remove-category-url/assets/banner-772x250.png?rev=1032792\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}s:19:\"wp-smtp/wp-smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/wp-smtp\";s:4:\"slug\";s:7:\"wp-smtp\";s:6:\"plugin\";s:19:\"wp-smtp/wp-smtp.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-smtp/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-smtp.1.2.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:60:\"https://ps.w.org/wp-smtp/assets/icon-128x128.png?rev=2351919\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/wp-smtp/assets/banner-772x250.png?rev=2348247\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.7\";}}s:7:\"checked\";a:17:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.6\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:5:\"1.7.5\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:7:\"5.7.5.1\";s:45:\"olympus-google-fonts/olympus-google-fonts.php\";s:5:\"3.3.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:17:\"tnadvs/tnadvs.php\";s:5:\"1.0.0\";s:35:\"litespeed-cache/litespeed-cache.php\";s:3:\"5.4\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:5:\"3.1.7\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:5:\"2.0.2\";s:43:\"remove-category-url/remove-category-url.php\";s:5:\"1.1.6\";s:45:\"simple-page-ordering/simple-page-ordering.php\";s:5:\"2.5.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"7.6.0\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.6\";s:19:\"wp-smtp/wp-smtp.php\";s:5:\"1.2.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"20.5\";}}', 'no'),
(9440, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}}', 'yes'),
(9441, 'wp_smtp_status', 'not_encrypted', 'yes'),
(9443, 'disallowed_keys', '', 'no'),
(9444, 'comment_previously_approved', '1', 'yes'),
(9445, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(9446, 'auto_update_core_dev', 'enabled', 'yes'),
(9447, 'auto_update_core_minor', 'enabled', 'yes'),
(9448, 'auto_update_core_major', 'unset', 'yes'),
(9449, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(9450, 'finished_updating_comment_type', '1', 'yes'),
(9451, 'user_count', '1', 'no'),
(9452, 'db_upgraded', '', 'yes'),
(9453, '_site_transient_timeout_available_translations', '1690350807', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9454, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-18 08:25:23\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-17 14:44:15\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 11:21:55\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 14:46:58\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-19 09:32:17\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-14 12:12:09\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-22 15:41:41\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 17:36:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-12 14:36:10\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-20 17:07:49\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-02 10:08:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-30 23:46:23\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 14:40:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-21 12:21:18\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2023-07-25 11:17:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 10:18:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-24 14:41:26\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-07 13:57:04\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-17 21:01:33\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-07 19:56:16\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 08:24:13\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 01:34:39\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-11 18:16:48\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-21 13:23:01\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-24 18:22:13\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-16 03:30:29\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-18 17:21:22\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-08 07:12:34\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-23 12:28:58\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 16:49:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-21 11:29:08\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-25 13:56:56\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-03 12:16:31\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 12:06:50\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-17 12:03:21\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9457, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1690426419', 'no'),
(9458, '_transient_wpseo_total_unindexed_post_type_archives', '1', 'no'),
(9459, '_transient_timeout_wpseo_total_unindexed_general_items', '1690426419', 'no'),
(9460, '_transient_wpseo_total_unindexed_general_items', '3', 'no'),
(9461, '_transient_timeout_wpseo_unindexed_post_link_count', '1690426419', 'no'),
(9462, '_transient_wpseo_unindexed_post_link_count', '14', 'no'),
(9463, '_transient_timeout_wpseo_total_unindexed_posts', '1690426419', 'no'),
(9464, '_transient_wpseo_total_unindexed_posts', '12', 'no'),
(9465, '_transient_timeout_wpseo_total_unindexed_terms', '1690426419', 'no'),
(9466, '_transient_wpseo_total_unindexed_terms', '10', 'no'),
(9467, '_transient_timeout_wpseo_unindexed_term_link_count', '1690426419', 'no'),
(9468, '_transient_wpseo_unindexed_term_link_count', '10', 'no'),
(9469, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1690944819', 'no'),
(9470, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(9471, '_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792', '1690944820', 'no'),
(9472, '_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(9477, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1690383232', 'no'),
(9478, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(9479, 'can_compress_scripts', '1', 'no'),
(9492, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1690354656', 'no'),
(9493, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6138;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4820;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2789;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2679;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2056;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1925;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1912;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1653;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1568;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1561;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1549;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1514;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1505;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1492;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1372;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1276;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1176;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1156;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1151;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1067;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1028;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1002;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:968;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:906;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:904;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:883;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:880;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:877;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:874;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:870;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:839;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:817;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:794;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:779;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:775;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:764;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:746;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:732;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:731;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:729;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:727;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:691;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:685;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:684;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:677;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:668;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:634;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:626;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:619;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:615;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:610;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:607;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:600;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:595;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:592;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:591;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:578;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:573;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:570;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:569;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:569;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:559;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:558;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:544;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:541;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:534;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:533;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:532;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:531;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:520;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:511;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:510;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:509;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:508;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:488;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:479;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:477;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:469;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:450;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:448;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:448;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:437;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:426;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:424;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:422;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:422;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:420;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:413;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:409;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:400;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:394;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:394;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:390;}}', 'no'),
(9499, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1690346362', 'no'),
(9500, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(9501, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1690346362', 'no'),
(9502, '_transient_wpseo_total_unindexed_terms_limited', '2', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 6, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(6, 6, '_mail', 'a:8:{s:7:\"subject\";s:32:\"tamnghiadev.com \"[your-subject]\"\";s:6:\"sender\";s:35:\"tamnghiadev.com <huy7989@gmail.com>\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tamnghiadev.com (http://localhost/tamnghia)\";s:9:\"recipient\";s:17:\"huy7989@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"tamnghiadev.com \"[your-subject]\"\";s:6:\"sender\";s:35:\"tamnghiadev.com <huy7989@gmail.com>\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tamnghiadev.com (http://localhost/tamnghia)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: huy7989@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(8, 6, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(9, 6, '_additional_settings', NULL),
(10, 6, '_locale', 'vi'),
(13, 8, '_form', '<div class=\"form-flat\">\n[text* your-name placeholder \"Họ và tên (*)\"]\n\n[email* your-email placeholder \"Email (*)\"] </p>\n\n[number* number-17 min:10 max:13 placeholder \"Số điện thoại (*)\"]\n[text* text-758 placeholder \"Địa chỉ\"]\n\n[textarea your-message placeholder \"Nội dung (*)\"] \n\n</p>\n\n[submit class:button primary \"Gửi liên hệ\"]\n</div>'),
(14, 8, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:37:\"Gửi liên hệ từ website abc.com\";s:6:\"sender\";s:17:\"huy7989@gmail.com\";s:9:\"recipient\";s:17:\"huy7989@gmail.com\";s:4:\"body\";s:167:\"Họ tên: [your-name]\nSố điện thoại: [number-17]\nEmail: [your-email]\nNội dung: [your-message]\nĐịa chỉ:[diachi]\n\nKH gửi liên hệ từ website abc.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(15, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(16, 8, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:43:\"Thông tin đã được gửi thành công\";s:12:\"mail_sent_ng\";s:36:\"Gửi thông tin không thành công\";s:16:\"validation_error\";s:37:\"Dữ liệu nhập vào không đúng\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:40:\"Xin mời nhập đầy đủ thông tin\";s:16:\"invalid_too_long\";s:29:\"Thông tin không chính xác\";s:17:\"invalid_too_short\";s:29:\"Thông tin không chính xác\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(17, 8, '_additional_settings', ''),
(18, 8, '_locale', 'en_US'),
(19, 9, '_form', '<div class=\"form-flat\">\n	[email* your-email placeholder \"Your Email (required)\"]\n\n	[submit class:button primary \"Sign Up\"]\n</div>'),
(20, 9, '_mail', 'a:8:{s:7:\"subject\";s:11:\"New signup!\";s:6:\"sender\";s:34:\"Flatsome Theme <mail@flatsome.dev>\";s:4:\"body\";s:24:\"New signup: [your-email]\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(21, 9, '_mail_2', ''),
(22, 9, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(23, 9, '_additional_settings', ''),
(24, 9, '_locale', 'en_US'),
(25, 10, '_form', '<div class=\"flex-row form-flat medium-flex-wrap\">\n<div class=\"flex-col flex-grow\">\n	[email* your-email placeholder \"Your Email (required)\"]\n</div>\n<div class=\"flex-col ml-half\">\n	[submit class:button primary \"Sign Up\"]\n</div>\n</div>'),
(26, 10, '_mail', ''),
(27, 10, '_mail_2', ''),
(28, 10, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(29, 10, '_additional_settings', ''),
(30, 10, '_locale', 'en_US'),
(31, 11, '_form', '<label>Your Name (required)</label>\n[text* your-name]\n\n<label>Your Email (required)</label>\n[email*  your-email] </p>\n\n<label>Your Message (required)</label>\n[textarea your-message] </p>\n\n[submit class:button primary \"Submit\"]'),
(32, 11, '_mail', ''),
(33, 11, '_mail_2', ''),
(34, 11, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(35, 11, '_additional_settings', ''),
(36, 11, '_locale', 'en_US'),
(2477, 220, '_thumbnail_id', NULL),
(2478, 221, '_thumbnail_id', NULL),
(2479, 222, '_thumbnail_id', NULL),
(2480, 223, '_thumbnail_id', NULL),
(2481, 224, '_thumbnail_id', NULL),
(2482, 225, '_thumbnail_id', NULL),
(2483, 226, '_thumbnail_id', NULL),
(2484, 227, '_thumbnail_id', NULL),
(2877, 315, '_edit_last', '1'),
(2878, 315, '_edit_lock', '1582103662:1'),
(3158, 457, 'thuoc_tinh', '218'),
(3159, 457, '_edit_last', '1'),
(3160, 457, '_edit_lock', '1579248301:1'),
(3161, 457, 'khu_vuc', 'HN'),
(3162, 457, '_khu_vuc', 'field_5e1fceb8b63d4'),
(3163, 457, 'tinh_thanh_quan', 'Ba Đình'),
(3164, 457, '_tinh_thanh_quan', 'field_5e1fd04d51c43'),
(3390, 461, 'thuoc_tinh', '218'),
(3391, 461, '_edit_last', '1'),
(3392, 461, '_edit_lock', '1579226792:1'),
(3393, 461, 'khu_vuc', 'HN'),
(3394, 461, '_khu_vuc', 'field_5e1fceb8b63d4'),
(3395, 461, 'tinh_thanh_quan', 'Hà Nội'),
(3396, 461, '_tinh_thanh_quan', 'field_5e1fd04d51c43'),
(3397, 461, 'hien_thi_box', '1'),
(3398, 461, '_hien_thi_box', 'field_5e1fdbc43d323'),
(3399, 462, 'thuoc_tinh', '218'),
(3400, 462, '_edit_last', '1'),
(3401, 462, '_edit_lock', '1579226776:1'),
(3414, 462, 'khu_vuc', 'MB'),
(3415, 462, '_khu_vuc', 'field_5e1fceb8b63d4'),
(3416, 462, 'tinh_thanh_quan', 'Bắc Cạn'),
(3417, 462, '_tinh_thanh_quan', 'field_5e1fd04d51c43'),
(3418, 462, 'hien_thi_box', '1'),
(3419, 462, '_hien_thi_box', 'field_5e1fdbc43d323'),
(3420, 457, 'hien_thi_box', '0'),
(3421, 457, '_hien_thi_box', 'field_5e1fdbc43d323'),
(3454, 485, 'thuoc_tinh', '218'),
(3455, 485, '_edit_last', '1'),
(3456, 485, '_edit_lock', '1579255543:1'),
(3457, 485, 'khu_vuc', 'TQ'),
(3458, 485, '_khu_vuc', 'field_5e1fceb8b63d4'),
(3459, 485, 'tinh_thanh_quan', 'Hà Nội'),
(3460, 485, '_tinh_thanh_quan', 'field_5e1fd04d51c43'),
(3461, 485, 'hien_thi_box', '0'),
(3462, 485, '_hien_thi_box', 'field_5e1fdbc43d323'),
(3478, 495, 'thuoc_tinh', '218'),
(3479, 495, '_edit_last', '1'),
(3480, 495, '_edit_lock', '1579242711:1'),
(3482, 495, 'link_video', 'LRTb2SyePHM'),
(3483, 495, '_link_video', 'field_5e212b0beb07e'),
(3486, 498, 'thuoc_tinh', '218'),
(3487, 498, '_edit_last', '1'),
(3488, 498, '_edit_lock', '1579270983:1'),
(3490, 498, 'link_video', 'CCKUiKVe4Rg'),
(3491, 498, '_link_video', 'field_5e212b0beb07e'),
(3492, 498, 'video_hot', '1'),
(3493, 498, '_video_hot', 'field_5e212c8f7ca42'),
(3498, 495, 'video_hot', '0'),
(3499, 495, '_video_hot', 'field_5e212c8f7ca42'),
(3539, 525, 'thuoc_tinh', '218'),
(3540, 525, '_edit_last', '1'),
(3541, 525, '_edit_lock', '1579312917:1'),
(3542, 525, 'ho_ten_faq', 'Nguyễn Văn A'),
(3543, 525, '_ho_ten_faq', 'field_5e2171963c132'),
(3544, 525, 'email_faq', 'abc@gmail.com'),
(3545, 525, '_email_faq', 'field_5e2171c83c133'),
(3546, 525, 'phone_faq', '0931123123'),
(3547, 525, '_phone_faq', 'field_5e2171d33c134'),
(3548, 525, 'noi_dung_faq', 'Thưa bác sĩ, tôi năm nay 55 tuổi, thường xuyên đau bụng đi ngoài sau ăn sáng, rượu bia. Bụng thỉnh thoảng đau có nổi cục cứng. Vậy thường tôi uống Tràng Phục Linh Plus sau bao lâu có hiệu quả ạ?'),
(3549, 525, '_noi_dung_faq', 'field_5e2171ec3c135'),
(3565, 525, 'faq_hot', '1'),
(3566, 525, '_faq_hot', 'field_5e226630bdb44'),
(3568, 536, 'thuoc_tinh', '218'),
(3569, 536, '_edit_last', '1'),
(3570, 536, '_edit_lock', '1579367687:1'),
(3571, 536, 'ho_ten_faq', '1'),
(3572, 536, '_ho_ten_faq', 'field_5e2171963c132'),
(3573, 536, 'email_faq', '2'),
(3574, 536, '_email_faq', 'field_5e2171c83c133'),
(3575, 536, 'phone_faq', '3'),
(3576, 536, '_phone_faq', 'field_5e2171d33c134'),
(3577, 536, 'noi_dung_faq', '4444'),
(3578, 536, '_noi_dung_faq', 'field_5e2171ec3c135'),
(3579, 536, 'faq_hot', '1'),
(3580, 536, '_faq_hot', 'field_5e226630bdb44'),
(3581, 536, 'faq_new', '1'),
(3582, 536, '_faq_new', 'field_5e226780fd5ee'),
(3907, 315, '_thumbnail_id', ''),
(4176, 724, '_edit_last', '1'),
(4177, 724, '_edit_lock', '1583287308:1'),
(4196, 724, '_thumbnail_id', ''),
(4266, 757, '_edit_last', '1'),
(4267, 757, '_edit_lock', '1583225925:1'),
(4363, 781, '_edit_last', '1'),
(4364, 781, '_edit_lock', '1583305588:1'),
(4372, 784, '_edit_last', '1'),
(4376, 784, '_edit_lock', '1583305580:1'),
(4377, 787, '_edit_last', '1'),
(4380, 787, '_edit_lock', '1583305571:1'),
(4383, 787, '_enable_sidebar', 'yes'),
(4809, 886, '_form', '<div class=\"form-flat\">\n[text* your-name placeholder \"Họ và tên (*)\"]\n\n\n[number* number-17 min:10 max:13 placeholder \"Số điện thoại (*)\"]\n\n[textarea your-message placeholder \"Nội dung (*)\"] </p>\n\n[submit class:button primary \"Đăng ký\"]\n</div>'),
(4810, 886, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:17:\"huy7989@gmail.com\";s:9:\"recipient\";s:17:\"huy7989@gmail.com\";s:4:\"body\";s:83:\"Họ tên: [your-name]\nSố điện thoại: [number-17]\nNội dung: [your-message]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4811, 886, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4812, 886, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:43:\"Thông tin đã được gửi thành công\";s:12:\"mail_sent_ng\";s:36:\"Gửi thông tin không thành công\";s:16:\"validation_error\";s:37:\"Dữ liệu nhập vào không đúng\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:40:\"Xin mời nhập đầy đủ thông tin\";s:16:\"invalid_too_long\";s:29:\"Thông tin không chính xác\";s:17:\"invalid_too_short\";s:29:\"Thông tin không chính xác\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(4813, 886, '_additional_settings', ''),
(4814, 886, '_locale', 'en_US'),
(4816, 886, '_config_errors', 'a:1:{s:12:\"mail.subject\";a:1:{i:0;a:2:{s:4:\"code\";i:101;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:57:\"https://contactform7.com/configuration-errors/maybe-empty\";}}}}'),
(4993, 1040, '_edit_last', '1'),
(4994, 1040, '_edit_lock', '1582096177:1'),
(4995, 1040, '_thumbnail_id', ''),
(5000, 787, '_yoast_wpseo_content_score', '90'),
(5001, 787, '_wp_old_slug', 'cloud-server-la-gi-dang-ky-dich-vu-o-dau-thi-tot'),
(5008, 784, '_yoast_wpseo_content_score', '90'),
(5009, 784, '_wp_old_slug', 'hiem-hoa-tiem-an-cho-doanh-nghiep-den-tu-email-mien-phi'),
(5014, 781, '_yoast_wpseo_content_score', '90'),
(5015, 781, '_wp_old_slug', 'khai-mac-internet-day-2019-bat-tay-lap-cau-lac-bo-dien-toan-dam-may-va-trung-tam-du-lieu-viet-nam-11-doanh-nghiep-internet-dat-muc-tieu-gi'),
(5125, 1096, '_edit_last', '1'),
(5126, 1096, '_edit_lock', '1582188525:1'),
(5130, 1096, '_yoast_wpseo_content_score', '90'),
(5131, 1098, '_edit_last', '1'),
(5132, 1098, '_edit_lock', '1582188617:1'),
(5136, 1098, '_yoast_wpseo_content_score', '60'),
(5137, 1100, '_edit_last', '1'),
(5138, 1100, '_edit_lock', '1582188688:1'),
(5142, 1100, '_yoast_wpseo_content_score', '60'),
(5143, 1102, '_edit_last', '1'),
(5144, 1102, '_edit_lock', '1582188812:1'),
(5148, 1102, '_yoast_wpseo_content_score', '60'),
(5149, 1104, '_edit_last', '1'),
(5150, 1104, '_edit_lock', '1582188895:1'),
(5154, 1104, '_yoast_wpseo_content_score', '60'),
(5155, 1106, '_edit_last', '1'),
(5156, 1106, '_edit_lock', '1582189026:1'),
(5160, 1106, '_yoast_wpseo_content_score', '60'),
(5161, 1108, '_edit_last', '1'),
(5162, 1108, '_edit_lock', '1582189092:1'),
(5166, 1108, '_yoast_wpseo_content_score', '60'),
(5167, 1110, '_edit_last', '1'),
(5168, 1110, '_edit_lock', '1582189253:1'),
(5172, 1110, '_yoast_wpseo_content_score', '60'),
(5173, 1112, '_menu_item_type', 'custom'),
(5174, 1112, '_menu_item_menu_item_parent', '0'),
(5175, 1112, '_menu_item_object_id', '1112'),
(5176, 1112, '_menu_item_object', 'custom'),
(5177, 1112, '_menu_item_target', ''),
(5178, 1112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5179, 1112, '_menu_item_xfn', ''),
(5180, 1112, '_menu_item_url', '/'),
(5181, 1112, '_menu_item_orphaned', '1582189555'),
(5328, 1131, '_edit_last', '1'),
(5329, 1131, '_edit_lock', '1583719462:1'),
(5335, 787, 'newshot', '1'),
(5336, 787, '_newshot', 'field_5e4e5d6237f9f'),
(5337, 1136, 'newshot', '1'),
(5338, 1136, '_newshot', 'field_5e4e5d6237f9f'),
(5340, 784, 'newshot', '1'),
(5341, 784, '_newshot', 'field_5e4e5d6237f9f'),
(5342, 1137, 'newshot', '1'),
(5343, 1137, '_newshot', 'field_5e4e5d6237f9f'),
(5354, 1142, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582256334;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(5487, 1173, '_menu_item_type', 'taxonomy'),
(5488, 1173, '_menu_item_menu_item_parent', '0'),
(5489, 1173, '_menu_item_object_id', '1'),
(5490, 1173, '_menu_item_object', 'category'),
(5491, 1173, '_menu_item_target', ''),
(5492, 1173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5493, 1173, '_menu_item_xfn', ''),
(5494, 1173, '_menu_item_url', ''),
(5495, 1173, '_menu_item_orphaned', '1582259224'),
(5856, 1237, '_edit_last', '1'),
(5857, 1237, '_edit_lock', '1582532197:1'),
(5864, 1237, '_thumbnail_id', ''),
(5892, 1255, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582538674;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(5893, 1256, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582538675;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(5912, 1258, '_menu_item_type', 'taxonomy'),
(5913, 1258, '_menu_item_menu_item_parent', '0'),
(5914, 1258, '_menu_item_object_id', '131'),
(5915, 1258, '_menu_item_object', 'product_cat'),
(5916, 1258, '_menu_item_target', ''),
(5917, 1258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5918, 1258, '_menu_item_xfn', ''),
(5919, 1258, '_menu_item_url', ''),
(5921, 1259, '_menu_item_type', 'taxonomy'),
(5922, 1259, '_menu_item_menu_item_parent', '0'),
(5923, 1259, '_menu_item_object_id', '132'),
(5924, 1259, '_menu_item_object', 'product_cat'),
(5925, 1259, '_menu_item_target', ''),
(5926, 1259, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5927, 1259, '_menu_item_xfn', ''),
(5928, 1259, '_menu_item_url', ''),
(5930, 1260, '_menu_item_type', 'taxonomy'),
(5931, 1260, '_menu_item_menu_item_parent', '0'),
(5932, 1260, '_menu_item_object_id', '133'),
(5933, 1260, '_menu_item_object', 'product_cat'),
(5934, 1260, '_menu_item_target', ''),
(5935, 1260, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5936, 1260, '_menu_item_xfn', ''),
(5937, 1260, '_menu_item_url', ''),
(5939, 1261, '_menu_item_type', 'taxonomy'),
(5940, 1261, '_menu_item_menu_item_parent', '0'),
(5941, 1261, '_menu_item_object_id', '136'),
(5942, 1261, '_menu_item_object', 'product_cat'),
(5943, 1261, '_menu_item_target', ''),
(5944, 1261, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5945, 1261, '_menu_item_xfn', ''),
(5946, 1261, '_menu_item_url', ''),
(5948, 1262, '_menu_item_type', 'taxonomy'),
(5949, 1262, '_menu_item_menu_item_parent', '0'),
(5950, 1262, '_menu_item_object_id', '135'),
(5951, 1262, '_menu_item_object', 'product_cat'),
(5952, 1262, '_menu_item_target', ''),
(5953, 1262, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5954, 1262, '_menu_item_xfn', ''),
(5955, 1262, '_menu_item_url', ''),
(5957, 1263, '_menu_item_type', 'taxonomy'),
(5958, 1263, '_menu_item_menu_item_parent', '0'),
(5959, 1263, '_menu_item_object_id', '137'),
(5960, 1263, '_menu_item_object', 'product_cat'),
(5961, 1263, '_menu_item_target', ''),
(5962, 1263, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5963, 1263, '_menu_item_xfn', ''),
(5964, 1263, '_menu_item_url', ''),
(5966, 1264, '_menu_item_type', 'taxonomy'),
(5967, 1264, '_menu_item_menu_item_parent', '0'),
(5968, 1264, '_menu_item_object_id', '130'),
(5969, 1264, '_menu_item_object', 'product_cat'),
(5970, 1264, '_menu_item_target', ''),
(5971, 1264, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5972, 1264, '_menu_item_xfn', ''),
(5973, 1264, '_menu_item_url', ''),
(5975, 1265, '_menu_item_type', 'taxonomy'),
(5976, 1265, '_menu_item_menu_item_parent', '1264'),
(5977, 1265, '_menu_item_object_id', '139'),
(5978, 1265, '_menu_item_object', 'product_cat'),
(5979, 1265, '_menu_item_target', ''),
(5980, 1265, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5981, 1265, '_menu_item_xfn', ''),
(5982, 1265, '_menu_item_url', ''),
(5984, 1266, '_menu_item_type', 'taxonomy'),
(5985, 1266, '_menu_item_menu_item_parent', '1264'),
(5986, 1266, '_menu_item_object_id', '140'),
(5987, 1266, '_menu_item_object', 'product_cat'),
(5988, 1266, '_menu_item_target', ''),
(5989, 1266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5990, 1266, '_menu_item_xfn', ''),
(5991, 1266, '_menu_item_url', ''),
(5993, 1267, '_menu_item_type', 'taxonomy'),
(5994, 1267, '_menu_item_menu_item_parent', '0'),
(5995, 1267, '_menu_item_object_id', '138'),
(5996, 1267, '_menu_item_object', 'product_cat'),
(5997, 1267, '_menu_item_target', ''),
(5998, 1267, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5999, 1267, '_menu_item_xfn', ''),
(6000, 1267, '_menu_item_url', ''),
(6002, 1268, '_menu_item_type', 'taxonomy'),
(6003, 1268, '_menu_item_menu_item_parent', '0'),
(6004, 1268, '_menu_item_object_id', '134'),
(6005, 1268, '_menu_item_object', 'product_cat'),
(6006, 1268, '_menu_item_target', ''),
(6007, 1268, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6008, 1268, '_menu_item_xfn', ''),
(6009, 1268, '_menu_item_url', ''),
(6022, 1270, '_menu_item_type', 'taxonomy'),
(6023, 1270, '_menu_item_menu_item_parent', '0'),
(6024, 1270, '_menu_item_object_id', '142'),
(6025, 1270, '_menu_item_object', 'category'),
(6026, 1270, '_menu_item_target', ''),
(6027, 1270, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6028, 1270, '_menu_item_xfn', ''),
(6029, 1270, '_menu_item_url', ''),
(6031, 1271, '_menu_item_type', 'taxonomy'),
(6032, 1271, '_menu_item_menu_item_parent', '0'),
(6033, 1271, '_menu_item_object_id', '144'),
(6034, 1271, '_menu_item_object', 'category'),
(6035, 1271, '_menu_item_target', ''),
(6036, 1271, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6037, 1271, '_menu_item_xfn', ''),
(6038, 1271, '_menu_item_url', ''),
(6040, 1272, '_menu_item_type', 'taxonomy'),
(6041, 1272, '_menu_item_menu_item_parent', '0'),
(6042, 1272, '_menu_item_object_id', '143'),
(6043, 1272, '_menu_item_object', 'category'),
(6044, 1272, '_menu_item_target', ''),
(6045, 1272, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6046, 1272, '_menu_item_xfn', ''),
(6047, 1272, '_menu_item_url', ''),
(6049, 1273, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582542303;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6050, 1274, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582542304;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6059, 1287, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582545937;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6060, 1288, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582545937;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6061, 1289, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582555613;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6062, 1290, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582555613;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6065, 1292, '_menu_item_type', 'custom'),
(6066, 1292, '_menu_item_menu_item_parent', '0'),
(6067, 1292, '_menu_item_object_id', '1292'),
(6068, 1292, '_menu_item_object', 'custom'),
(6069, 1292, '_menu_item_target', ''),
(6070, 1292, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6071, 1292, '_menu_item_xfn', ''),
(6072, 1292, '_menu_item_url', '/'),
(6073, 1292, '_menu_item_orphaned', '1582552558'),
(6076, 1264, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1291\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6077, 1258, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1293\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6088, 1259, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1295\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6089, 1260, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1298\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6090, 1261, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1294\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6091, 1262, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1296\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6092, 1263, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1293\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6093, 1267, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1296\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6094, 1268, 'menu-icons', 'a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:4:\"1294\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(6095, 1302, '_edit_last', '1'),
(6096, 1302, '_edit_lock', '1583308105:1'),
(6100, 1302, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(6101, 1302, '_regular_price', '60000'),
(6102, 1302, 'total_sales', '0'),
(6103, 1302, '_tax_status', 'taxable'),
(6104, 1302, '_tax_class', ''),
(6105, 1302, '_manage_stock', 'no'),
(6106, 1302, '_backorders', 'no'),
(6107, 1302, '_sold_individually', 'no'),
(6108, 1302, '_virtual', 'no'),
(6109, 1302, '_downloadable', 'no'),
(6110, 1302, '_download_limit', '-1'),
(6111, 1302, '_download_expiry', '-1'),
(6112, 1302, '_stock', NULL),
(6113, 1302, '_stock_status', 'instock'),
(6114, 1302, '_wc_average_rating', '0'),
(6115, 1302, '_wc_review_count', '0'),
(6116, 1302, '_product_version', '3.8.1'),
(6117, 1302, '_price', '50000'),
(6118, 1302, '_yoast_wpseo_primary_product_cat', '131'),
(6119, 1302, '_yoast_wpseo_content_score', '90'),
(6131, 1308, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582559214;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6132, 1309, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582559215;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6150, 1317, '_edit_last', '1'),
(6151, 1317, '_edit_lock', '1583308070:1'),
(6155, 1317, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(6156, 1317, '_regular_price', '230000'),
(6157, 1317, '_sale_price', '200000'),
(6158, 1317, 'total_sales', '0'),
(6159, 1317, '_tax_status', 'taxable'),
(6160, 1317, '_tax_class', ''),
(6161, 1317, '_manage_stock', 'no'),
(6162, 1317, '_backorders', 'no'),
(6163, 1317, '_sold_individually', 'no'),
(6164, 1317, '_virtual', 'no'),
(6165, 1317, '_downloadable', 'no'),
(6166, 1317, '_download_limit', '-1'),
(6167, 1317, '_download_expiry', '-1'),
(6168, 1317, '_stock', NULL),
(6169, 1317, '_stock_status', 'instock'),
(6170, 1317, '_wc_average_rating', '0'),
(6171, 1317, '_wc_review_count', '0'),
(6172, 1317, '_product_version', '3.8.1'),
(6173, 1317, '_price', '200000'),
(6174, 1317, '_yoast_wpseo_primary_product_cat', '135'),
(6175, 1317, '_yoast_wpseo_content_score', '90'),
(6176, 1317, '_product_attributes', 'a:4:{s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:16:\"pa_hang-san-xuat\";a:6:{s:4:\"name\";s:16:\"pa_hang-san-xuat\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(6208, 1332, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582562845;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6209, 1333, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582562845;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6210, 1334, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582629488;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6211, 1335, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582629527;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6212, 1317, '_product_url', 'http://tamnghia.com'),
(6213, 1336, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582646432;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6214, 1337, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1582646433;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6215, 1338, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583145936;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6216, 1339, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583145936;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6217, 1342, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583150488;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6218, 1343, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583150488;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6219, 1346, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583207808;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6220, 1347, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583207809;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6221, 1348, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583211692;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6222, 1349, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583211693;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6223, 1350, '_edit_last', '1'),
(6224, 1350, '_edit_lock', '1583719453:1'),
(6225, 1302, '_sale_price', '50000'),
(6226, 1352, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583215310;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6227, 1353, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583215310;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6228, 1354, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583220725;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6229, 1355, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583220726;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6232, 1358, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583224385;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6233, 1359, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583224385;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6234, 1361, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583228079;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6235, 1362, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583228079;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6238, 757, '_yoast_wpseo_content_score', '90'),
(6241, 1372, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583233970;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6242, 1373, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583234122;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6243, 1374, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583246336;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6244, 1375, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583246336;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6245, 1376, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583290558;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6246, 1377, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583290559;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6261, 1381, '_edit_last', '1'),
(6262, 1381, '_edit_lock', '1583287303:1'),
(6263, 1381, '_yoast_wpseo_content_score', '90'),
(6270, 1386, '_edit_last', '1'),
(6271, 1386, '_edit_lock', '1583719428:1'),
(6272, 1302, 'thong_tin_them', 'Mô tả thêm'),
(6273, 1302, '_thong_tin_them', 'field_5e5f134e73975'),
(6274, 1388, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583294418;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6275, 1389, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583294419;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6276, 1390, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583298029;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6277, 1391, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583298029;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6302, 1402, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583301630;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6303, 1403, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583301630;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6304, 1404, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583307194;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6305, 1405, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583307195;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6324, 1415, '_edit_last', '1'),
(6327, 1415, '_yoast_wpseo_content_score', '30'),
(6328, 1415, 'newshot', '1'),
(6329, 1415, '_newshot', 'field_5e4e5d6237f9f'),
(6330, 1417, 'newshot', '1'),
(6331, 1417, '_newshot', 'field_5e4e5d6237f9f'),
(6332, 1415, '_yoast_wpseo_primary_category', '142'),
(6333, 1415, '_edit_lock', '1583305612:1'),
(6334, 1418, '_edit_last', '1'),
(6335, 1418, '_edit_lock', '1583306721:1'),
(6340, 1418, '_yoast_wpseo_content_score', '90'),
(6341, 1418, 'newshot', '0'),
(6342, 1418, '_newshot', 'field_5e4e5d6237f9f'),
(6343, 1420, 'newshot', '0'),
(6344, 1420, '_newshot', 'field_5e4e5d6237f9f'),
(6345, 1418, '_yoast_wpseo_primary_category', '143'),
(6351, 1424, '_menu_item_type', 'taxonomy'),
(6352, 1424, '_menu_item_menu_item_parent', '0'),
(6353, 1424, '_menu_item_object_id', '157'),
(6354, 1424, '_menu_item_object', 'category'),
(6355, 1424, '_menu_item_target', ''),
(6356, 1424, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6357, 1424, '_menu_item_xfn', ''),
(6358, 1424, '_menu_item_url', ''),
(6360, 1425, '_menu_item_type', 'taxonomy'),
(6361, 1425, '_menu_item_menu_item_parent', '0'),
(6362, 1425, '_menu_item_object_id', '144'),
(6363, 1425, '_menu_item_object', 'category'),
(6364, 1425, '_menu_item_target', ''),
(6365, 1425, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6366, 1425, '_menu_item_xfn', ''),
(6367, 1425, '_menu_item_url', ''),
(6369, 1426, '_menu_item_type', 'taxonomy'),
(6370, 1426, '_menu_item_menu_item_parent', '0'),
(6371, 1426, '_menu_item_object_id', '142'),
(6372, 1426, '_menu_item_object', 'category'),
(6373, 1426, '_menu_item_target', ''),
(6374, 1426, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6375, 1426, '_menu_item_xfn', ''),
(6376, 1426, '_menu_item_url', ''),
(6378, 1427, '_menu_item_type', 'taxonomy'),
(6379, 1427, '_menu_item_menu_item_parent', '0'),
(6380, 1427, '_menu_item_object_id', '143'),
(6381, 1427, '_menu_item_object', 'category'),
(6382, 1427, '_menu_item_target', ''),
(6383, 1427, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6384, 1427, '_menu_item_xfn', ''),
(6385, 1427, '_menu_item_url', ''),
(6387, 1428, '_menu_item_type', 'taxonomy'),
(6388, 1428, '_menu_item_menu_item_parent', '0'),
(6389, 1428, '_menu_item_object_id', '131'),
(6390, 1428, '_menu_item_object', 'product_cat'),
(6391, 1428, '_menu_item_target', ''),
(6392, 1428, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6393, 1428, '_menu_item_xfn', ''),
(6394, 1428, '_menu_item_url', ''),
(6396, 1429, '_menu_item_type', 'taxonomy'),
(6397, 1429, '_menu_item_menu_item_parent', '0'),
(6398, 1429, '_menu_item_object_id', '132'),
(6399, 1429, '_menu_item_object', 'product_cat'),
(6400, 1429, '_menu_item_target', ''),
(6401, 1429, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6402, 1429, '_menu_item_xfn', ''),
(6403, 1429, '_menu_item_url', ''),
(6405, 1430, '_menu_item_type', 'taxonomy'),
(6406, 1430, '_menu_item_menu_item_parent', '0'),
(6407, 1430, '_menu_item_object_id', '133'),
(6408, 1430, '_menu_item_object', 'product_cat'),
(6409, 1430, '_menu_item_target', ''),
(6410, 1430, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6411, 1430, '_menu_item_xfn', ''),
(6412, 1430, '_menu_item_url', ''),
(6414, 1431, '_menu_item_type', 'taxonomy'),
(6415, 1431, '_menu_item_menu_item_parent', '0'),
(6416, 1431, '_menu_item_object_id', '136'),
(6417, 1431, '_menu_item_object', 'product_cat'),
(6418, 1431, '_menu_item_target', ''),
(6419, 1431, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6420, 1431, '_menu_item_xfn', ''),
(6421, 1431, '_menu_item_url', ''),
(6423, 1432, '_menu_item_type', 'taxonomy'),
(6424, 1432, '_menu_item_menu_item_parent', '0'),
(6425, 1432, '_menu_item_object_id', '135'),
(6426, 1432, '_menu_item_object', 'product_cat'),
(6427, 1432, '_menu_item_target', ''),
(6428, 1432, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6429, 1432, '_menu_item_xfn', ''),
(6430, 1432, '_menu_item_url', ''),
(6432, 1433, '_menu_item_type', 'taxonomy'),
(6433, 1433, '_menu_item_menu_item_parent', '0'),
(6434, 1433, '_menu_item_object_id', '137'),
(6435, 1433, '_menu_item_object', 'product_cat'),
(6436, 1433, '_menu_item_target', ''),
(6437, 1433, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6438, 1433, '_menu_item_xfn', ''),
(6439, 1433, '_menu_item_url', ''),
(6471, 1438, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583310805;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6472, 1439, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583310806;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6473, 1317, 'thong_tin_them', ''),
(6474, 1317, '_thong_tin_them', 'field_5e5f134e73975'),
(6475, 1317, '_yoast_wpseo_primary_yith_product_brand', '160'),
(6476, 1302, '_yoast_wpseo_primary_yith_product_brand', '159'),
(6477, 1440, '_edit_last', '1'),
(6478, 1440, '_edit_lock', '1583308532:1'),
(6481, 1440, 'total_sales', '0'),
(6482, 1440, '_tax_status', 'taxable'),
(6483, 1440, '_tax_class', ''),
(6484, 1440, '_manage_stock', 'no'),
(6485, 1440, '_backorders', 'no'),
(6486, 1440, '_sold_individually', 'no'),
(6487, 1440, '_virtual', 'no'),
(6488, 1440, '_downloadable', 'no'),
(6489, 1440, '_download_limit', '-1'),
(6490, 1440, '_download_expiry', '-1'),
(6491, 1440, '_stock', NULL),
(6492, 1440, '_stock_status', 'instock'),
(6493, 1440, '_wc_average_rating', '0'),
(6494, 1440, '_wc_review_count', '0'),
(6495, 1440, '_product_attributes', 'a:1:{s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(6496, 1440, '_product_version', '3.8.1'),
(6497, 1440, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(6498, 1440, '_regular_price', '160000'),
(6499, 1440, '_price', '160000'),
(6500, 1440, '_product_image_gallery', '1441'),
(6501, 1440, 'thong_tin_them', ''),
(6502, 1440, '_thong_tin_them', 'field_5e5f134e73975');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(6503, 1440, '_yoast_wpseo_primary_product_cat', '131'),
(6504, 1440, '_yoast_wpseo_primary_yith_product_brand', '159'),
(6505, 1440, '_yoast_wpseo_content_score', '90'),
(6507, 1442, '_edit_last', '1'),
(6508, 1442, '_edit_lock', '1583318803:1'),
(6512, 1442, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(6513, 1442, '_regular_price', '400000'),
(6514, 1442, '_sale_price', '250000'),
(6515, 1442, 'total_sales', '0'),
(6516, 1442, '_tax_status', 'taxable'),
(6517, 1442, '_tax_class', ''),
(6518, 1442, '_manage_stock', 'no'),
(6519, 1442, '_backorders', 'no'),
(6520, 1442, '_sold_individually', 'no'),
(6521, 1442, '_virtual', 'no'),
(6522, 1442, '_downloadable', 'no'),
(6523, 1442, '_download_limit', '-1'),
(6524, 1442, '_download_expiry', '-1'),
(6525, 1442, '_stock', NULL),
(6526, 1442, '_stock_status', 'instock'),
(6527, 1442, '_wc_average_rating', '0'),
(6528, 1442, '_wc_review_count', '0'),
(6529, 1442, '_product_version', '3.8.1'),
(6530, 1442, '_price', '250000'),
(6531, 1442, 'thong_tin_them', ''),
(6532, 1442, '_thong_tin_them', 'field_5e5f134e73975'),
(6533, 1442, '_yoast_wpseo_primary_product_cat', '131'),
(6534, 1442, '_yoast_wpseo_primary_yith_product_brand', '160'),
(6535, 1442, '_yoast_wpseo_content_score', '60'),
(6536, 1442, '_product_attributes', 'a:1:{s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(6537, 1444, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583314449;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6538, 1445, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583314449;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6541, 1448, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583318078;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6542, 1449, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583318078;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6545, 1442, 'danh_muc', 'a:1:{i:0;s:3:\"131\";}'),
(6546, 1442, '_danh_muc', 'field_5e5f7d9bf27c6'),
(6547, 1442, 'thuong_hieu', 'a:1:{i:0;s:3:\"160\";}'),
(6548, 1442, '_thuong_hieu', 'field_5e5f7dd6f27c7'),
(6549, 1453, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583321692;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6550, 1454, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583321693;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6551, 1455, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583332426;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6552, 1456, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583332426;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6553, 1457, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583337345;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6554, 1458, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583337345;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6555, 1459, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583387592;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6556, 1460, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583387593;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6557, 1461, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583393507;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6558, 1462, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583393507;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6559, 1463, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583398002;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6560, 1464, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583398002;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6563, 1466, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583401603;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6564, 1467, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583401604;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6565, 1468, 'br_filters_group', 'a:8:{s:4:\"data\";a:0:{}s:7:\"filters\";a:1:{i:0;s:4:\"1469\";}s:20:\"search_box_link_type\";s:0:\"\";s:14:\"search_box_url\";s:0:\"\";s:19:\"search_box_category\";s:0:\"\";s:16:\"search_box_style\";a:9:{s:8:\"position\";s:0:\"\";s:15:\"search_position\";s:0:\"\";s:11:\"search_text\";s:0:\"\";s:10:\"background\";s:0:\"\";s:12:\"back_opacity\";s:0:\"\";s:17:\"button_background\";s:0:\"\";s:22:\"button_background_over\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:15:\"text_color_over\";s:0:\"\";}s:12:\"custom_class\";s:0:\"\";s:12:\"filters_data\";a:1:{i:1469;a:1:{s:5:\"width\";s:0:\"\";}}}'),
(6566, 1469, 'br_product_filter', 'a:68:{s:4:\"data\";a:0:{}s:12:\"br_wp_footer\";s:0:\"\";s:11:\"widget_type\";s:6:\"filter\";s:10:\"reset_hide\";s:19:\"berocket_no_filters\";s:5:\"title\";s:0:\"\";s:11:\"filter_type\";s:9:\"attribute\";s:9:\"attribute\";s:16:\"pa_hang-san-xuat\";s:15:\"custom_taxonomy\";s:11:\"product_cat\";s:4:\"type\";s:8:\"checkbox\";s:25:\"select_first_element_text\";s:0:\"\";s:8:\"operator\";s:2:\"OR\";s:15:\"order_values_by\";s:0:\"\";s:17:\"order_values_type\";s:3:\"asc\";s:17:\"text_before_price\";s:5:\"10000\";s:16:\"text_after_price\";s:8:\"20000000\";s:20:\"enable_slider_inputs\";s:0:\"\";s:18:\"parent_product_cat\";s:0:\"\";s:11:\"depth_count\";s:1:\"0\";s:22:\"widget_collapse_enable\";s:0:\"\";s:14:\"widget_is_hide\";s:0:\"\";s:27:\"show_product_count_per_attr\";s:0:\"\";s:21:\"hide_child_attributes\";s:0:\"\";s:19:\"hide_collapse_arrow\";s:0:\"\";s:20:\"use_value_with_color\";s:0:\"\";s:14:\"values_per_row\";s:0:\"\";s:17:\"icon_before_title\";s:0:\"\";s:16:\"icon_after_title\";s:0:\"\";s:17:\"icon_before_value\";s:0:\"\";s:16:\"icon_after_value\";s:0:\"\";s:12:\"price_values\";s:0:\"\";s:11:\"description\";s:0:\"\";s:9:\"css_class\";s:0:\"\";s:16:\"tag_cloud_height\";s:1:\"0\";s:18:\"tag_cloud_min_font\";s:2:\"12\";s:18:\"tag_cloud_max_font\";s:2:\"14\";s:20:\"tag_cloud_tags_count\";s:3:\"100\";s:14:\"tag_cloud_type\";s:0:\"\";s:13:\"use_min_price\";s:0:\"\";s:9:\"min_price\";s:1:\"0\";s:13:\"use_max_price\";s:0:\"\";s:9:\"max_price\";s:1:\"1\";s:6:\"height\";s:4:\"auto\";s:12:\"scroll_theme\";s:4:\"dark\";s:18:\"selected_area_show\";s:0:\"\";s:19:\"hide_selected_arrow\";s:0:\"\";s:16:\"selected_is_hide\";s:0:\"\";s:14:\"slider_default\";s:0:\"\";s:12:\"number_style\";s:0:\"\";s:30:\"number_style_thousand_separate\";s:0:\"\";s:29:\"number_style_decimal_separate\";s:1:\".\";s:27:\"number_style_decimal_number\";s:1:\"2\";s:14:\"is_hide_mobile\";s:0:\"\";s:12:\"user_can_see\";s:0:\"\";s:15:\"cat_propagation\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:26:\"parent_product_cat_current\";s:0:\"\";s:15:\"attribute_count\";s:0:\"\";s:9:\"show_page\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:15:\"cat_value_limit\";s:21:\"cham-soc-duong-da-mat\";s:6:\"ranges\";a:2:{i:0;s:1:\"1\";i:1;s:2:\"50\";}s:18:\"range_display_type\";s:0:\"\";s:16:\"to_infinity_text\";s:0:\"\";s:25:\"attribute_count_show_hide\";s:0:\"\";s:22:\"color_image_block_size\";s:9:\"h2em w2em\";s:29:\"color_image_block_size_height\";s:0:\"\";s:28:\"color_image_block_size_width\";s:0:\"\";s:19:\"color_image_checked\";s:17:\"brchecked_default\";s:30:\"color_image_checked_custom_css\";s:0:\"\";}'),
(6567, 1469, '_edit_last', '1'),
(6568, 1469, '_edit_lock', '1583401271:1'),
(6569, 1468, '_edit_lock', '1583424363:1'),
(6570, 1468, '_edit_last', '1'),
(6571, 1471, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583405278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6572, 1472, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583405278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6573, 1473, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583419770;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6574, 1474, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583419770;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6575, 1475, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583423373;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6576, 1476, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583423373;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6577, 1477, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583426984;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6578, 1478, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583426985;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6579, 1479, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583430664;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6580, 1480, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583430664;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6581, 1481, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583473210;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6582, 1482, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583473253;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6583, 1483, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583480966;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6584, 1484, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583480966;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6585, 1485, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583484737;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6586, 1486, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583484737;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6587, 1487, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583488362;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6588, 1488, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583488362;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6589, 1489, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583491972;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6590, 1490, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583491972;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6591, 1491, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583497678;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6592, 1492, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583497679;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6593, 1493, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583501338;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6594, 1494, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583501338;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6595, 1495, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583504997;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6596, 1496, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583504997;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6597, 1497, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583510311;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6598, 1498, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583510311;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6599, 1499, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583723039;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6600, 1500, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1583723040;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6616, 1501, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685366543;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6617, 1502, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685366543;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6655, 1510, '_edit_last', '1'),
(6656, 1510, '_edit_lock', '1690343084:1'),
(6657, 1510, '_footer', 'normal'),
(6658, 1510, '_wp_page_template', 'page-blank.php'),
(6666, 1510, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6667, 1510, '_yoast_wpseo_wordproof_timestamp', ''),
(6668, 1237, '_wp_trash_meta_status', 'publish'),
(6669, 1237, '_wp_trash_meta_time', '1690343319'),
(6670, 1237, '_wp_desired_post_slug', 'header-ship-hotline-thanh-toan'),
(6671, 1381, '_wp_trash_meta_status', 'publish'),
(6672, 1381, '_wp_trash_meta_time', '1690343319'),
(6673, 1381, '_wp_desired_post_slug', 'huong-dan-mua-hang-chi-tiet-san-pham'),
(6674, 757, '_wp_trash_meta_status', 'publish'),
(6675, 757, '_wp_trash_meta_time', '1690343319'),
(6676, 757, '_wp_desired_post_slug', 'noi-dung-chan-trang'),
(6677, 315, '_wp_trash_meta_status', 'publish'),
(6678, 315, '_wp_trash_meta_time', '1690343319'),
(6679, 315, '_wp_desired_post_slug', 'trang-chu-slide'),
(6680, 1040, '_wp_trash_meta_status', 'publish'),
(6681, 1040, '_wp_trash_meta_time', '1690343319'),
(6682, 1040, '_wp_desired_post_slug', 'trang-chu-tin-noi-bat'),
(6683, 724, '_wp_trash_meta_status', 'publish'),
(6684, 724, '_wp_trash_meta_time', '1690343319'),
(6685, 724, '_wp_desired_post_slug', 'trang-chu-y-kien-khach-hang-doi-tac'),
(6686, 1517, '_edit_last', '1'),
(6687, 1517, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6688, 1517, '_yoast_wpseo_wordproof_timestamp', ''),
(6689, 1517, '_yoast_wpseo_primary_block_categories', ''),
(6690, 1517, '_edit_lock', '1690343586:1'),
(6691, 1519, '_wp_attached_file', '2023/07/TCG03474.webp'),
(6692, 1519, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:4:\"file\";s:21:\"2023/07/TCG03474.webp\";s:8:\"filesize\";i:400026;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6693, 1517, '_thumbnail_id', ''),
(6694, 1517, '_wp_trash_meta_status', 'publish'),
(6695, 1517, '_wp_trash_meta_time', '1690343732'),
(6696, 1517, '_wp_desired_post_slug', 'slider-trang-chu'),
(6697, 1525, '_edit_last', '1'),
(6698, 1525, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6699, 1525, '_yoast_wpseo_wordproof_timestamp', ''),
(6700, 1525, '_yoast_wpseo_primary_block_categories', ''),
(6701, 1525, '_edit_lock', '1690343659:1'),
(6702, 1525, '_wp_trash_meta_status', 'publish'),
(6703, 1525, '_wp_trash_meta_time', '1690343807'),
(6704, 1525, '_wp_desired_post_slug', 'slider-trang-chu'),
(6705, 1528, '_edit_last', '1'),
(6706, 1528, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(6707, 1528, '_yoast_wpseo_wordproof_timestamp', ''),
(6708, 1528, '_yoast_wpseo_primary_block_categories', ''),
(6709, 1528, '_edit_lock', '1690344837:1'),
(6710, 1530, '_wp_attached_file', '2023/07/well-come-1-img-1.webp'),
(6711, 1530, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:615;s:6:\"height\";i:433;s:4:\"file\";s:30:\"2023/07/well-come-1-img-1.webp\";s:8:\"filesize\";i:94674;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6713, 1519, '_edit_lock', '1690344671:1'),
(6714, 1519, '_edit_last', '1'),
(6715, 1528, '_thumbnail_id', ''),
(6716, 1534, '_edit_last', '1'),
(6717, 1534, '_edit_lock', '1690344942:1'),
(6718, 1534, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6719, 1534, '_yoast_wpseo_wordproof_timestamp', ''),
(6720, 1534, '_yoast_wpseo_primary_block_categories', ''),
(6721, 1536, '_wp_attached_file', '2023/07/after-3-welcome.webp'),
(6722, 1536, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:654;s:6:\"height\";i:463;s:4:\"file\";s:28:\"2023/07/after-3-welcome.webp\";s:8:\"filesize\";i:13288;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6723, 1534, '_thumbnail_id', ''),
(6724, 1538, '_edit_last', '1'),
(6725, 1538, '_edit_lock', '1690345054:1'),
(6726, 1538, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6727, 1538, '_yoast_wpseo_wordproof_timestamp', ''),
(6728, 1538, '_yoast_wpseo_primary_block_categories', ''),
(6729, 1538, '_thumbnail_id', ''),
(6730, 1541, '_edit_last', '1'),
(6731, 1541, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6732, 1541, '_yoast_wpseo_wordproof_timestamp', ''),
(6733, 1541, '_yoast_wpseo_primary_block_categories', ''),
(6734, 1541, '_edit_lock', '1690345318:1'),
(6735, 1543, '_wp_attached_file', '2023/07/img-right-the-people.webp'),
(6736, 1543, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:425;s:6:\"height\";i:561;s:4:\"file\";s:33:\"2023/07/img-right-the-people.webp\";s:8:\"filesize\";i:45056;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6737, 1541, '_thumbnail_id', ''),
(6738, 1545, '_edit_last', '1'),
(6739, 1545, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6740, 1545, '_yoast_wpseo_wordproof_timestamp', ''),
(6741, 1545, '_yoast_wpseo_primary_block_categories', ''),
(6742, 1545, '_edit_lock', '1690345383:1'),
(6743, 1545, '_thumbnail_id', ''),
(6744, 1548, '_edit_last', '1'),
(6745, 1548, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6746, 1548, '_yoast_wpseo_wordproof_timestamp', ''),
(6747, 1548, '_yoast_wpseo_primary_block_categories', ''),
(6748, 1548, '_edit_lock', '1690345451:1'),
(6749, 1550, '_wp_attached_file', '2023/07/img-the-house-mains.webp'),
(6750, 1550, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1047;s:6:\"height\";i:810;s:4:\"file\";s:32:\"2023/07/img-the-house-mains.webp\";s:8:\"filesize\";i:172114;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6751, 1548, '_thumbnail_id', ''),
(6752, 1552, '_edit_last', '1'),
(6753, 1552, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6754, 1552, '_yoast_wpseo_wordproof_timestamp', ''),
(6755, 1552, '_yoast_wpseo_primary_block_categories', ''),
(6756, 1552, '_edit_lock', '1690345507:1'),
(6757, 1552, '_thumbnail_id', ''),
(6758, 1555, '_edit_last', '1'),
(6759, 1555, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6760, 1555, '_yoast_wpseo_wordproof_timestamp', ''),
(6761, 1555, '_yoast_wpseo_primary_block_categories', ''),
(6762, 1555, '_edit_lock', '1690345520:1'),
(6763, 1558, '_wp_attached_file', '2023/07/after-3-experiences.webp'),
(6764, 1558, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:290;s:6:\"height\";i:566;s:4:\"file\";s:32:\"2023/07/after-3-experiences.webp\";s:8:\"filesize\";i:14472;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6765, 1555, '_thumbnail_id', ''),
(6766, 1560, '_edit_last', '1'),
(6767, 1560, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(6768, 1560, '_yoast_wpseo_wordproof_timestamp', ''),
(6769, 1560, '_yoast_wpseo_primary_block_categories', ''),
(6770, 1560, '_edit_lock', '1690345732:1'),
(6771, 1564, '_wp_attached_file', '2023/07/after-3-house.webp'),
(6772, 1564, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:318;s:6:\"height\";i:371;s:4:\"file\";s:26:\"2023/07/after-3-house.webp\";s:8:\"filesize\";i:9454;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6773, 1560, '_thumbnail_id', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2020-01-08 02:18:34', '2020-01-08 02:18:34', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\ntamnghiadev.com \"[your-subject]\"\ntamnghiadev.com <huy7989@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tamnghiadev.com (http://localhost/tamnghia)\nhuy7989@gmail.com\nReply-To: [your-email]\n\n0\n0\n\ntamnghiadev.com \"[your-subject]\"\ntamnghiadev.com <huy7989@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on tamnghiadev.com (http://localhost/tamnghia)\n[your-email]\nReply-To: huy7989@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-01-08 02:18:34', '2020-01-08 02:18:34', '', 0, 'http://localhost/tamnghia/?post_type=wpcf7_contact_form&p=6', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2016-08-29 14:03:10', '2016-08-29 14:03:10', '<div class=\"form-flat\">\r\n[text* your-name placeholder \"Họ và tên (*)\"]\r\n\r\n[email* your-email placeholder \"Email (*)\"] </p>\r\n\r\n[number* number-17 min:10 max:13 placeholder \"Số điện thoại (*)\"]\r\n[text* text-758 placeholder \"Địa chỉ\"]\r\n\r\n[textarea your-message placeholder \"Nội dung (*)\"] \r\n\r\n</p>\r\n\r\n[submit class:button primary \"Gửi liên hệ\"]\r\n</div>\n1\nGửi liên hệ từ website abc.com\nhuy7989@gmail.com\nhuy7989@gmail.com\nHọ tên: [your-name]\r\nSố điện thoại: [number-17]\r\nEmail: [your-email]\r\nNội dung: [your-message]\r\nĐịa chỉ:[diachi]\r\n\r\nKH gửi liên hệ từ website abc.com\n\n\n\n\n\n\n\n\n\n\n\n\n\nThông tin đã được gửi thành công\nGửi thông tin không thành công\nDữ liệu nhập vào không đúng\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nXin mời nhập đầy đủ thông tin\nThông tin không chính xác\nThông tin không chính xác\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form Flat', '', 'publish', 'closed', 'closed', '', 'contact-form-outline', '', '', '2020-02-19 09:51:41', '2020-02-19 09:51:41', '', 0, 'http://flatsome.dev/?post_type=wpcf7_contact_form&#038;p=8979', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2016-08-25 13:56:17', '2016-08-25 13:56:17', '<div class=\"form-flat\">\r\n	[email* your-email placeholder \"Your Email (required)\"]\r\n\r\n	[submit class:button primary \"Sign Up\"]\r\n</div>\nNew signup!\nFlatsome Theme <mail@flatsome.dev>\nNew signup: [your-email]\n[your-email]\n\n\n\n\n\nFlatsome \"[your-subject]\"\nFlatsome <wordpress@flatsome.dev>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Flatsome (http://flatsome.dev)\n[your-email]\nReply-To: email@mail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Newsletter Vertical', '', 'publish', 'closed', 'closed', '', 'newsletter-horizontal', '', '', '2016-08-25 13:56:17', '2016-08-25 13:56:17', '', 0, 'http://flatsome.dev/?post_type=wpcf7_contact_form&amp;p=8787', 0, 'wpcf7_contact_form', '', 0),
(10, 1, '2016-04-04 11:38:11', '2016-04-04 11:38:11', '<div class=\"flex-row form-flat medium-flex-wrap\">\r\n<div class=\"flex-col flex-grow\">\r\n	[email* your-email placeholder \"Your Email (required)\"]\r\n</div>\r\n<div class=\"flex-col ml-half\">\r\n	[submit class:button primary \"Sign Up\"]\r\n</div>\r\n</div>\nFlatsome \"[your-subject]\"\n[your-name] <wordpress@flatsome.dev>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Flatsome (http://flatsome.dev)\nemail@mail.com\n\n\n\n\n\nFlatsome \"[your-subject]\"\nFlatsome <wordpress@flatsome.dev>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Flatsome (http://flatsome.dev)\n[your-email]\nReply-To: email@mail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Newsletter Horizontal', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2016-04-04 11:38:11', '2016-04-04 11:38:11', '', 0, 'http://flatsome.dev/?post_type=wpcf7_contact_form&amp;p=7042', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2016-04-04 11:33:38', '2016-04-04 11:33:38', '<label>Your Name (required)</label>\r\n[text* your-name]\r\n\r\n<label>Your Email (required)</label>\r\n[email*  your-email] </p>\r\n\r\n<label>Your Message (required)</label>\r\n[textarea your-message] </p>\r\n\r\n[submit class:button primary \"Submit\"]\nNew Message!\nmail@flatsome.dev\nMessage:\r\n[your-message]\nemail@mail.com\n\n\n1\n\n\nFlatsome \"[your-subject]\"\nFlatsome <wordpress@flatsome.dev>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Flatsome (http://flatsome.dev)\n[your-email]\nReply-To: email@mail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1-2', '', '', '2016-04-04 11:33:38', '2016-04-04 11:33:38', '', 0, 'http://flatsome.dev/?post_type=wpcf7_contact_form&amp;p=7041', 0, 'wpcf7_contact_form', '', 0),
(220, 1, '2016-08-28 09:39:54', '2016-08-28 09:39:54', '', 'Lookbook Summer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'publish', 'open', 'closed', '', 'lookbook-summer', '', '', '2016-08-28 09:39:54', '2016-08-28 09:39:54', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8922', 0, 'featured_item', '', 0),
(221, 1, '2016-08-28 09:38:06', '2016-08-28 09:38:06', '', 'Another Print Package', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ', 'publish', 'open', 'closed', '', 'another-print-package', '', '', '2016-08-28 09:38:06', '2016-08-28 09:38:06', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8919', 0, 'featured_item', '', 0),
(222, 1, '2016-08-28 09:36:46', '2016-08-28 09:36:46', '[ux_slider margin=\"13px\"]\n\n[ux_image id=\"8893\"]\n\n[ux_image id=\"8892\"]\n\n[ux_image id=\"8891\"]\n\n\n[/ux_slider]\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>', 'FL3 Print Package', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'publish', 'open', 'closed', '', 'fl3-print-package', '', '', '2016-08-28 09:36:46', '2016-08-28 09:36:46', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8917', 0, 'featured_item', '', 0),
(223, 1, '2016-08-28 09:35:26', '2016-08-28 09:35:26', '', 'Awesome Pencil Poster', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat', 'publish', 'open', 'closed', '', 'awesome-pencil-poster', '', '', '2016-08-28 09:35:26', '2016-08-28 09:35:26', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8915', 0, 'featured_item', '', 0),
(224, 1, '2016-08-28 09:29:58', '2016-08-28 09:29:58', '', 'Portfolio typography', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'publish', 'open', 'closed', '', 'portfolio-typography', '', '', '2016-08-28 09:29:58', '2016-08-28 09:29:58', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8913', 0, 'featured_item', '', 0),
(225, 1, '2016-08-28 09:25:23', '2016-08-28 09:25:23', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'Flatsome Poster Print', '', 'publish', 'open', 'closed', '', 'flatsome-poster-print', '', '', '2016-08-28 09:25:23', '2016-08-28 09:25:23', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8909', 0, 'featured_item', '', 0),
(226, 1, '2016-08-28 09:22:57', '2016-08-28 09:22:57', '', 'Magazine', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat', 'publish', 'open', 'closed', '', 'magazine', '', '', '2016-08-28 09:22:57', '2016-08-28 09:22:57', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8890', 0, 'featured_item', '', 0),
(227, 1, '2016-08-28 08:57:59', '2016-08-28 08:57:59', '', 'Flat T-Shirt Company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 'publish', 'open', 'closed', '', 'flat-t-shirt-company', '', '', '2016-08-28 08:57:59', '2016-08-28 08:57:59', '', 0, 'http://flatsome.dev/?post_type=featured_item&amp;p=8887', 0, 'featured_item', '', 0),
(315, 1, '2020-01-10 09:08:51', '2020-01-10 09:08:51', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1277\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'trash', 'closed', 'closed', '', 'trang-chu-slide__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/tamnghia/?post_type=blocks&#038;p=315', 0, 'blocks', '', 0),
(316, 1, '2020-01-10 09:04:27', '2020-01-10 09:04:27', '', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-01-10 09:04:27', '2020-01-10 09:04:27', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(317, 1, '2020-01-10 09:08:51', '2020-01-10 09:08:51', '[ux_slider]\n\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Primary\"]\n\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Primary\"]\n\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-01-10 09:08:51', '2020-01-10 09:08:51', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(318, 1, '2020-01-10 09:09:41', '2020-01-10 09:09:41', '[ux_slider]\n\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Kho giao diện\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Primary\"]\n\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-01-10 09:09:41', '2020-01-10 09:09:41', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(321, 1, '2020-01-10 09:10:52', '2020-01-10 09:10:52', '[ux_slider]\n\n[ux_banner height=\"500px\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(0, 0, 0, 0.31)\" effect=\"sparkle\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Kho giao diện\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Primary\"]\n\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-01-10 09:10:52', '2020-01-10 09:10:52', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(322, 1, '2020-01-10 09:11:03', '2020-01-10 09:11:03', '[ux_slider]\r\n\r\n[ux_banner height=\"500px\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(0, 0, 0, 0.31)\" effect=\"sparkle\"]\r\n\r\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\r\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\r\n<h3>Tâm Nghĩa</h3>\r\nChuẩn SEO - Tốc độ nhanh\r\n\r\n[button text=\"Kho giao diện\"]\r\n\r\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\"]\r\n\r\n[/text_box]\r\n\r\n[/ux_banner]\r\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\r\n\r\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\r\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\r\n<h3>Tâm Nghĩa</h3>\r\nChuẩn SEO - Tốc độ nhanh\r\n\r\n[button text=\"Primary\"]\r\n\r\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\r\n\r\n[/text_box]\r\n\r\n[/ux_banner]\r\n\r\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-01-10 09:11:03', '2020-01-10 09:11:03', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(457, 1, '2020-01-16 03:00:47', '2020-01-16 03:00:47', '<div class=\"entry-content\"><strong>Nhà thuốc có dấu <img class=\"alignnone size-full wp-image-17116 lazyloaded\" src=\"https://vuongbao.vn/wp-content/uploads/2019/03/_trans_trans_sao.png\" alt=\"\" width=\"22\" height=\"20\" data-src=\"https://vuongbao.vn/wp-content/uploads/2019/03/_trans_trans_sao.png\" /> là chắc chắn còn hàng</strong><img class=\"aligncenter size-full wp-image-19570 lazyloaded\" src=\"https://trangphuclinh.vn/wp-content/uploads/2019__std/07/hop-tpl-21-5.jpg\" alt=\"hop-trpl-bo-y-te-cap-phep\" width=\"380\" height=\"280\" data-src=\"https://trangphuclinh.vn/wp-content/uploads/2019__std/07/hop-tpl-21-5.jpg\" /></div>\r\n<div class=\"entry-content\">\r\n<h2 class=\"sub_dist_title\">1. Phường Phúc Xá</h2>\r\n<table class=\"diem_ban layout_3col\">\r\n<tbody>\r\n<tr>\r\n<th class=\"dia_chi\">Địa chỉ</th>\r\n<th class=\"ten_nha_thuoc\">Nhà thuốc</th>\r\n<th class=\"sdt\">Điện thoại</th>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">80 Phúc Xá</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Gia Đức</td>\r\n<td class=\"sdt\">0947 165 392</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">19 Tân ấp</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Xuân Hưng</td>\r\n<td class=\"sdt\">0919 876 470</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">22 Phúc Xá</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Huệ Hà</td>\r\n<td class=\"sdt\">0988 864 895</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">63 Nghĩa Dũng</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Xuân Hưng</td>\r\n<td class=\"sdt\">0919 876 470</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">81 Nghĩa Dũng</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Thu Hương</td>\r\n<td class=\"sdt\">0975 313 752</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">25 Ngõ 12 Nghĩa Dũng</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc 24/7</td>\r\n<td class=\"sdt\">0904 800 474</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2 class=\"sub_dist_title\">2. Phường Trúc Bạch</h2>\r\n<table class=\"diem_ban layout_3col\">\r\n<tbody>\r\n<tr>\r\n<th class=\"dia_chi\">Địa chỉ</th>\r\n<th class=\"ten_nha_thuoc\">Nhà thuốc</th>\r\n<th class=\"sdt\">Điện thoại</th>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">127 Nguyễn Trường Tộ</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Hạnh Phúc</td>\r\n<td class=\"sdt\">0966 026 074</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">02A Nguyễn Trường Tộ</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Dương</td>\r\n<td class=\"sdt\">0987 406 301</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">47 Châu Long</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Hồng Hoa 2</td>\r\n<td class=\"sdt\">0987 406 301</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">Số 93 Nguyễn Trường Tộ, Trúc Bạch</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc An Tâm 93</td>\r\n<td class=\"sdt\">0979 653 920</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2 class=\"sub_dist_title\">3. Phường Vĩnh Phúc</h2>\r\n<table class=\"diem_ban layout_3col\">\r\n<tbody>\r\n<tr>\r\n<th class=\"dia_chi\">Địa chỉ</th>\r\n<th class=\"ten_nha_thuoc\">Nhà thuốc</th>\r\n<th class=\"sdt\">Điện thoại</th>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">P107 Khu nhà C Vĩnh Phúc</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc An Tâm</td>\r\n<td class=\"sdt\">024 2023 6363</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">Lô A Khu 7.2HA Vĩnh Phúc</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Hồng Vân</td>\r\n<td class=\"sdt\">0989 662 813</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">28 Lô A Vĩnh Phúc</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Trung Hiếu</td>\r\n<td class=\"sdt\">0916 383 303</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">Kiot 6 Đốc Ngữ</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc Y Dược</td>\r\n<td class=\"sdt\">024 6293 9759</td>\r\n</tr>\r\n<tr class=\"nha_thuoc vip1\">\r\n<td class=\"dia_chi\">Số 12/6 Vĩnh Phúc, Vĩnh Phúc</td>\r\n<td class=\"ten_nha_thuoc\">Nhà thuốc An Sinh</td>\r\n<td class=\"sdt\">0912 428 882</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2 class=\"sub_dist_title\"></h2>\r\n</div>', 'Danh sách đại lý, nhà thuốc phân phối tại Ba Đình', '', 'publish', 'closed', 'closed', '', 'danh-sach-dai-ly-nha-thuoc-phan-phoi-tai-ba-dinh', '', '', '2020-01-17 02:09:18', '2020-01-17 02:09:18', '', 0, 'http://localhost/tamnghia/?post_type=phanphoi&#038;p=457', 0, 'phanphoi', '', 0),
(461, 1, '2020-01-16 04:17:40', '2020-01-16 04:17:40', 'Nội dung', 'Danh sách đại lý, nhà thuốc phân phối tại Hà Nội', '', 'publish', 'closed', 'closed', '', 'danh-sach-dai-ly-nha-thuoc-phan-phoi-tai-ha-noi', '', '', '2020-01-17 02:08:52', '2020-01-17 02:08:52', '', 0, 'http://localhost/tamnghia/?post_type=phanphoi&#038;p=461', 0, 'phanphoi', '', 0),
(462, 1, '2020-01-16 06:58:06', '2020-01-16 06:58:06', 'Mô tả', 'Danh sách đại lý, nhà thuốc phân phối tại Bắc Kan', '', 'publish', 'closed', 'closed', '', 'danh-sach-dai-ly-nha-thuoc-phan-phoi-tai-bac-kan', '', '', '2020-01-17 02:08:35', '2020-01-17 02:08:35', '', 0, 'http://localhost/tamnghia/?post_type=phanphoi&#038;p=462', 0, 'phanphoi', '', 0),
(485, 1, '2020-01-17 02:08:19', '2020-01-17 02:08:19', '[tnphanphoipost code=\'218\']\r\n\r\n[tnphanphoi code=\'218\']\r\n\r\n...', 'Hệ thống phân phối tràng phục linh', '', 'publish', 'open', 'closed', '', 'he-thong-phan-phoi-trang-phuc-linh', '', '', '2020-01-17 02:30:48', '2020-01-17 02:30:48', '', 0, 'http://localhost/tamnghia/?post_type=phanphoi&#038;p=485', 0, 'phanphoi', '', 1),
(486, 1, '2020-01-17 02:30:18', '2020-01-17 02:30:18', '[tnphanphoipost code=\'218\']\n\n[\n...', 'Hệ thống phân phối tràng phục linh', '', 'inherit', 'closed', 'closed', '', '485-autosave-v1', '', '', '2020-01-17 02:30:18', '2020-01-17 02:30:18', '', 485, 'http://localhost/tamnghia/485-autosave-v1/', 0, 'revision', '', 0),
(495, 1, '2020-01-17 03:39:18', '2020-01-17 03:39:18', 'Mô tả', 'Thiết kế website', '', 'publish', 'open', 'closed', '', 'thiet-ke-website', '', '', '2020-01-17 04:33:18', '2020-01-17 04:33:18', '', 0, 'http://localhost/tamnghia/?post_type=video&#038;p=495', 0, 'video', '', 0),
(498, 1, '2020-01-17 03:42:53', '2020-01-17 03:42:53', 'Video 2', 'Video 2', '', 'publish', 'open', 'closed', '', 'video-2', '', '', '2020-01-17 04:33:06', '2020-01-17 04:33:06', '', 0, 'http://localhost/tamnghia/?post_type=video&#038;p=498', 0, 'video', '', 0),
(525, 1, '2020-01-17 08:41:39', '2020-01-17 08:41:39', 'Chào anh,\r\n\r\nTheo nghiên cứu chứng minh, uống Tràng Phục Linh Plus sau khoảng 2-3 tuần đầu mình bắt đầu thấy có hiệu quả. Cụ thể người bệnh giảm co thắt đại tràng, dẫn đến bớt đau bụng, đi ngoài nhiều lần, trướng bụng sôi bụng, đi ngoài phân sống… Vì thế mà ăn uống cảm thấy ngon miệng hơn, giấc ngủ tốt hơn. Tùy với tình trạng bệnh của từng người, có người uống sau 1-2 hôm đã bắt đầu thấy tác dụng.\r\n\r\nMột lộ trình được khuyến cáo sử dụng liên tục từ 3-6 tháng để đạt hiệu quả tốt nhất. Tràng Phục Linh Plus dùng càng sớm càng cho hiệu quả rõ rệt. Vì vậy, anh nên dùng sớm nhé!\r\n\r\nĐể được tư vấn cụ thể anh vui lòng gọi về tổng đài miễn cước: <strong>1800.1506</strong>\r\n\r\nNếu đã đã hiểu rõ về sản hẩm. Anh có thể tìm mua Tràng Phục Linh Plus tại các nhà thuốc dưới đây\r\n\r\nDanh sách điểm bán Tràng Phục Linh Plus: <strong><a href=\"https://trangphuclinh.vn/he-thong-phan-phoi-trang-phuc-linh-plus/\" target=\"_blank\" rel=\"noopener noreferrer\">Xem tại đây</a></strong>\r\n\r\nTìm điểm bán TRÀNG PHỤC LINH PLUS gần nhà nhất: <strong><a href=\"https://trangphuclinh.vn/he-thong-phan-phoi-trang-phuc-linh-plus/\" target=\"_blank\" rel=\"noopener noreferrer\">XEM TẠI ĐÂY</a></strong>\r\n\r\n<img class=\"aligncenter size-large wp-image-18985 lazyloaded\" title=\"Câu trả lời 2\" src=\"https://trangphuclinh.vn/wp-content/uploads/2017__std/07/1-613x368.png.jpg\" alt=\"Câu trả lời 2\" width=\"613\" height=\"368\" data-src=\"https://trangphuclinh.vn/wp-content/uploads/2017__std/07/1-613x368.png.jpg\" />', 'Dùng Tràng Phục Linh Plus bao lâu có hiệu quả?', '', 'publish', 'open', 'closed', '', 'dung-trang-phuc-linh-plus-bao-lau-co-hieu-qua', '', '', '2020-01-18 01:58:47', '2020-01-18 01:58:47', '', 0, 'http://localhost/tamnghia/?post_type=faq&#038;p=525', 0, 'faq', '', 0),
(536, 1, '2020-01-18 02:04:58', '2020-01-18 02:04:58', 'Nội dung', '12 123 123 123', '', 'publish', 'open', 'closed', '', '12-123-123-123', '', '', '2020-01-18 02:04:58', '2020-01-18 02:04:58', '', 0, 'http://localhost/tamnghia/?post_type=faq&#038;p=536', 0, 'faq', '', 0),
(631, 1, '2020-02-12 09:30:36', '2020-02-12 09:30:36', '[ux_slider]\n\n[ux_banner height=\"500px\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(0, 0, 0, 0.31)\" effect=\"sparkle\"]\n\n[text_box width=\"71\" width__sm=\"60\" position_x=\"85\" position_y=\"50\"]\n\n<h1 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 85%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h1>\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</span></p>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"500px\" bg_overlay=\"rgba(0, 0, 0, 0.31)\"]\n\n[text_box width=\"64\" width__sm=\"60\" position_x=\"5\" position_y=\"50\" text_align=\"left\"]\n\n<h4 class=\"uppercase\">Thiết kế website chuyên nghiệp</h4>\n<h3>Tâm Nghĩa</h3>\n<p>Chuẩn SEO - Tốc độ nhanh</p>\n[button text=\"Primary\"]\n\n[button text=\"Secondary\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 09:30:36', '2020-02-12 09:30:36', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(634, 1, '2020-02-12 09:37:54', '2020-02-12 09:37:54', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"633\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" hover=\"zoom-long\" effect=\"sparkle\"]\n\n[text_box width=\"71\" width__sm=\"60\" position_x=\"85\" position_y=\"50\"]\n\n<h1 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 85%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h1>\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</span></p>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 09:37:54', '2020-02-12 09:37:54', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(635, 1, '2020-02-12 09:38:34', '2020-02-12 09:38:34', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"633\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" hover=\"zoom-long\" effect=\"snow\"]\n\n[text_box width=\"71\" width__sm=\"60\" position_x=\"85\" position_y=\"50\"]\n\n<h1 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 85%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h1>\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</span></p>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 09:38:34', '2020-02-12 09:38:34', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(640, 1, '2020-02-12 10:05:46', '2020-02-12 10:05:46', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"633\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" hover=\"zoom-long\" effect=\"snow\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h2 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 75%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h2>\n<div class=\"uabb-infobox-title-wrap\">\n<p class=\"uabb-infobox-title\" style=\"text-align: center;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</p>\n<p style=\"text-align: center;\">--</p>\n</div>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 10:05:46', '2020-02-12 10:05:46', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(642, 1, '2020-02-12 10:09:10', '2020-02-12 10:09:10', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"641\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" hover=\"zoom-long\" effect=\"snow\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h2 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 75%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h2>\n<div class=\"uabb-infobox-title-wrap\">\n<p class=\"uabb-infobox-title\" style=\"text-align: center;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</p>\n<p style=\"text-align: center;\">--</p>\n</div>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 10:09:10', '2020-02-12 10:09:10', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(643, 1, '2020-02-12 10:09:57', '2020-02-12 10:09:57', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"641\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" bg_overlay__sm=\"rgba(249, 123, 0, 0.85)\" hover=\"zoom-long\" effect=\"snow\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h2 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 75%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h2>\n<div class=\"uabb-infobox-title-wrap\">\n<p class=\"uabb-infobox-title\" style=\"text-align: center;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</p>\n<p style=\"text-align: center;\">--</p>\n</div>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 10:09:57', '2020-02-12 10:09:57', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(644, 1, '2020-02-12 10:10:29', '2020-02-12 10:10:29', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"641\" bg_color=\"rgb(255, 97, 41)\" bg_overlay=\"rgba(249, 123, 0, 0.9)\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\" hover=\"zoom-long\" effect=\"snow\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h2 class=\"uabb-infobox-title-prefix\" style=\"text-align: center;\"><span style=\"font-size: 75%;\">DỊCH VỤ THIẾT KẾ WEBSITE CHUYÊN NGHIỆP</span></h2>\n<div class=\"uabb-infobox-title-wrap\">\n<p class=\"uabb-infobox-title\" style=\"text-align: center;\">Tâm Nghĩa cung cấp giải pháp thiết kế website tổng thể cho doanh nghiệp Việt. Với mong muốn giúp mọi người có thể tạo được website hoàn chỉnh một cách dễ dàng, nhanh chóng, chi phí phải chăng.</p>\n<p style=\"text-align: center;\">--</p>\n</div>\n<p style=\"text-align: center;\">ĐẾN HÔM NAY ĐÃ CÓ <strong>1.000 +</strong> KHÁCH HÀNG ĐÃ VÀ ĐANG TIN TƯỞNG SỬ DỤNG.</p>\n[button text=\"Kho giao diện\" color=\"success\" animate=\"fadeInLeft\"]\n\n[button text=\"Liên hệ ngay\" color=\"white\" style=\"outline\" animate=\"fadeInRight\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-12 10:10:29', '2020-02-12 10:10:29', '', 315, 'http://localhost/tamnghia/315-revision-v1/', 0, 'revision', '', 0),
(724, 1, '2020-02-13 02:57:26', '2020-02-12 19:57:26', '[section bg=\"1277\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(54, 52, 44, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Trang chủ - Ý kiến khách hàng', '', 'trash', 'closed', 'closed', '', 'trang-chu-y-kien-khach-hang-doi-tac__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/tamnghia/?post_type=blocks&#038;p=724', 0, 'blocks', '', 0),
(725, 1, '2020-02-13 02:57:26', '2020-02-13 02:57:26', '', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 02:57:26', '2020-02-13 02:57:26', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(732, 1, '2020-02-13 03:01:16', '2020-02-13 03:01:16', '[section label=\"Testimonials: Section BG Slider\" bg=\"731\" bg_color=\"rgb(242, 242, 242)\" bg_pos=\"10% 24%\" dark=\"true\" padding=\"70px\"]\n\n[row label=\"Block\" col_bg=\"#2e36ff\"]\n\n[col span__sm=\"12\" padding=\"5% 0px 5% 0px\" margin=\"-110px 0px 0px 0px\" bg_color=\"#446084\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"square\" timer=\"3000\"]\n\n[row_inner label=\"Testimonials 1\" h_align=\"center\"]\n\n[col_inner span=\"8\" span__sm=\"11\" span__md=\"10\" align=\"center\"]\n\n[featured_box img=\"726\" img_width=\"70\" pos=\"center\" class=\"circle\"]\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim ullamcorper nisi, vitae fermentum lacus dapibus ut. Praesent dapibus purus ac eros condimentum, id lobortis erat cursus.</p>\n\n[/featured_box]\n[divider height=\"2px\"]\n\n<h6>Mike Lloyd</h6>\n<p>UI Designer Yahoo</p>\n\n[/col_inner]\n\n[/row_inner]\n[row_inner label=\"Testimonial 2\" h_align=\"center\"]\n\n[col_inner span=\"8\" span__sm=\"11\" span__md=\"10\" align=\"center\"]\n\n[featured_box img=\"730\" img_width=\"70\" pos=\"center\" class=\"circle\"]\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim ullamcorper nisi, vitae fermentum lacus dapibus ut. Praesent dapibus purus ac eros condimentum, id lobortis erat cursus.</p>\n\n[/featured_box]\n[divider height=\"2px\"]\n\n<h6>Kirstin W. Everton</h6>\n<p>Graphic Designer, Apple</p>\n\n[/col_inner]\n\n[/row_inner]\n[row_inner label=\"Testimonial 2\" h_align=\"center\"]\n\n[col_inner span=\"8\" span__sm=\"11\" span__md=\"10\" align=\"center\"]\n\n[featured_box img=\"729\" img_width=\"70\" pos=\"center\" class=\"circle\"]\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim ullamcorper nisi, vitae fermentum lacus dapibus ut. Praesent dapibus purus ac eros condimentum, id lobortis erat cursus.</p>\n\n[/featured_box]\n[divider height=\"2px\"]\n\n<h6>Andy Guscott</h6>\n<p>Developer, Google</p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:01:16', '2020-02-13 03:01:16', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(733, 1, '2020-02-13 03:05:20', '2020-02-13 03:05:20', '[section label=\"Testimonials: Section BG Slider\" bg=\"731\" bg_color=\"rgb(242, 242, 242)\" bg_pos=\"10% 24%\" dark=\"true\" padding=\"70px\"]\n\n\n[/section]\n[row]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>Our clients</h2>\n<p>Vestibulum nibh dolor malesuada eget nibh.</p>\n[button text=\"Leave a review\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:05:20', '2020-02-13 03:05:20', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(734, 1, '2020-02-13 03:06:39', '2020-02-13 03:06:39', '[row style=\"collapse\" width=\"full-width\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>Our clients</h2>\n<p>Vestibulum nibh dolor malesuada eget nibh.</p>\n[button text=\"Leave a review\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:06:39', '2020-02-13 03:06:39', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(735, 1, '2020-02-13 03:11:22', '2020-02-13 03:11:22', '[row style=\"collapse\" width=\"full-width\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Leave a review\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:11:22', '2020-02-13 03:11:22', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(736, 1, '2020-02-13 03:11:46', '2020-02-13 03:11:46', '[row style=\"collapse\" width=\"full-width\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:11:46', '2020-02-13 03:11:46', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(746, 1, '2020-02-13 03:39:47', '2020-02-13 03:39:47', '[row style=\"collapse\" width=\"full-width\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" width=\"full-width\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:39:47', '2020-02-13 03:39:47', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(747, 1, '2020-02-13 03:40:34', '2020-02-13 03:40:34', '[row style=\"collapse\" width=\"full-width\" class=\"blyk\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" width=\"full-width\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:40:34', '2020-02-13 03:40:34', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(750, 1, '2020-02-13 03:42:56', '2020-02-13 03:42:56', '[row style=\"collapse\" width=\"full-width\" class=\"blyk\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" width=\"full-width\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" bg_color=\"rgb(243, 243, 243)\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 03:42:56', '2020-02-13 03:42:56', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(757, 1, '2020-02-13 04:06:32', '2020-02-13 04:06:32', '<div class=\"form-group\">\r\n\r\n<span style=\"font-size: 80%;\">Nessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây: </span>\r\n<ul>\r\n 	<li><span style=\"font-size: 80%;\">Phone: <strong>0942 64 68 60</strong></span></li>\r\n 	<li><span style=\"font-size: 80%;\">Email: info@thietkewebchuyennghiep.com</span></li>\r\n 	<li><span style=\"font-size: 80%;\">Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a></span></li>\r\n</ul>\r\n</div>', 'Nội dung chân trang', '', 'trash', 'closed', 'closed', '', 'noi-dung-chan-trang__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/tamnghia/?post_type=blocks&#038;p=757', 0, 'blocks', '', 0),
(758, 1, '2020-02-13 04:06:32', '2020-02-13 04:06:32', '<div class=\"form-group\">[tnsetting code=\'footercontent\']</div>\r\n<div class=\"clear\"></div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-02-13 04:06:32', '2020-02-13 04:06:32', '', 757, 'http://localhost/tamnghia/757-revision-v1/', 0, 'revision', '', 0),
(781, 1, '2020-02-13 08:44:12', '2020-02-13 01:44:12', '<h5>1. Căn cứ pháp lý</h5>\r\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\r\n\r\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\r\n\r\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\r\n\r\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\r\n<h5>2. Quy trình và các bước nhập dụng cụ đun nước nóng tức thời (cây nóng lạnh)</h5>\r\n<em><strong>A. HS code dụng cụ đun nước nóng và thuế suất</strong></em>\r\n<ul>\r\n 	<li>Mã Hs code: 85161010</li>\r\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 20%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 20%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%.</li>\r\n 	<li>Thuế giá trị tăng: 10%</li>\r\n</ul>\r\n<strong><em>B. Quy trình hải quan nhập khẩu dụng cụ đun nước nóng tức thời</em></strong>\r\n\r\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\r\n<h6>BƯỚC 1:</h6>\r\nTổ chức, cá nhân nhập khẩu Đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\r\n 	<li>Hợp đồng (sales contract)</li>\r\n 	<li>Hóa đơn thương mại (commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (packing list)</li>\r\n 	<li>Vận tải đơn (House bill)</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM.\r\n\r\nSau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n<h6>BƯỚC 2:</h6>\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp</li>\r\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\r\n 	<li>Tờ khai, Certificate</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\r\n 	<li>Số lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý: </em></strong>Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\r\n<h6>BƯỚC 4: KẾT QUẢ ĐẠT CHẤT LƯỢNG NHẬP KHẨU</h6>\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại, tờ khai: 1 bản chụp</li>\r\n 	<li>Nộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.</li>\r\n 	<li>Nộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.</li>\r\n</ul>\r\n–&gt;<em> Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\r\n\r\n&nbsp;\r\n<h6>BƯỚC 5:</h6>\r\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\r\n\r\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu cây đun nước nóng tức thời', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu cây đun nước nóng tức thời, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'publish', 'open', 'open', '', 'thu-tuc-nhap-khau-cay-dun-nuoc-nong-tuc-thoi', '', '', '2020-03-04 14:06:27', '2020-03-04 07:06:27', '', 0, 'http://localhost/tamnghia/?p=781', 0, 'post', '', 0),
(783, 1, '2020-02-13 08:44:12', '2020-02-13 08:44:12', '<div id=\"abdf\">\r\n\r\nHôm nay, ngày 11/12, trong khuôn khổ hội thảo Internet Day 2019 chủ đề <strong>“Internet Việt Nam: Đổi mới sáng tạo để Chuyển đổi số”</strong> được tổ chức tại Hà Nội, Hiệp hội Internet Việt Nam <em>(VIA)</em> đã chính thức ra mắt Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam <em>(Vietnam Cloud Computing and Data Center Club - VNCDC).</em>\r\n\r\n<img title=\"nhan_hoa_internet_day_2019.jpg\" src=\"https://nhanhoa.com/uploads/attach/1576046470_nhan_hoa_internet_day_2019.jpg\" width=\"1000\" height=\"750\" border=\"0\" />\r\n<table class=\"imageBox\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p class=\"PCaption\"><em>Chủ tịch Hiệp hội Internet Việt Nam Vũ Hoàng Liên trao quyết định thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu cho các thành viên sáng lập Câu lạc bộ. (Ảnh: Minh Sơn)</em></p>\r\n\r\n<div></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nSự kiện có sự tham dự của Thứ trưởng Bộ TT&amp;TT Phạm Hồng Hải; nguyên Thứ trưởng Bộ Bưu chính Viễn thông Mai Liêm Trực và nguyên Thứ trưởng Bộ TT&amp;TT Nguyễn Minh Hồng, Chủ tịch Hội Truyền thông số Việt Nam.\r\n\r\nLà tổ chức chuyên môn trực thuộc Hiệp hội Internet Việt Nam, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam gồm các thành viên thuộc Hiệp hội hoạt động trong lĩnh vực điện toán đám mây và trung tâm dữ liệu, tuân thủ pháp luật của nhà nước; tôn chỉ, mục đích của Hiệp hội.\r\n\r\nCâu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam có 12 thành viên sáng lập. Theo đó, ngoài VIA, Câu lạc bộ có 11 sáng lập viên là những doanh nghiệp đang kinh doanh trong lĩnh vực dịch vụ điện toán đám mây và trung tâm dữ liệu, bao gồm: <strong>Công ty TNHH Phần mềm Nhân Hòa; </strong><strong>Công ty cổ phần VNG; Công ty TNHH Viettel CHT; Công ty cổ phần Hạ tầng viễn thông CMC (CMC Telecom); Công ty cổ phần Viễn thông quốc tế FPT (FTI); Công ty cổ phần Z.com; Tổng Công ty Viettel Net; Tổng công ty VNPT IT; Công ty cổ phần NetNam; Công ty cổ phần HTC Viễn thông quốc tế; và Công ty TNHH Phần mềm iNET.</strong>\r\n\r\nTrong phát biểu khai mạc Internet Day 2019, Chủ tịch Hiệp hội Internet Việt Nam Vũ Hoàng Liên nhấn mạnh, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu ra đời với sứ mệnh thúc đẩy dịch vụ điện toán đám mây và trung tâm dữ liệu phát triển, đóng góp tích cực cho hành trình chuyển đối số quốc gia, chuyển đổi số của các tổ chức, doanh nghiệp Việt Nam. Các hoạt động của Câu lạc bộ sẽ tích hợp chặt chẽ với các hoạt động của Hiệp hội Internet Việt Nam, kỳ vọng sẽ tạo ra sức mạnh cộng hưởng để hình thành nên bức tranh tươi sáng hơn cho Internet Việt Nam\r\n\r\nQuy chế của Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam cũng nêu rõ, hoạt động của Câu lạc bộ hướng tới mục tiêu thúc đẩy phát triển thị trường dịch vụ điện toán đám mây và trung tâm dữ liệu ở Việt Nam, xây dựng môi trường kinh doanh và cạnh tranh lành mạnh. Bên cạnh đó, hoạt động của Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam cũng giúp các thành viên của Câu lạc bộ và cộng đồng nâng cao năng lực, kiến thức, thúc đẩy hợp tác trong lĩnh vực điện toán đám mây và trung tâm dữ liệu.\r\n\r\n</div>\r\n<div id=\"AdAsia\"></div>\r\n<div id=\"3ff45804a9127c6efc9bd1908ad07f68_sync\"></div>\r\n<div id=\"abde\">\r\n\r\nĐể hiện thực hóa các mục tiêu trên, nhiều nhiệm vụ sẽ được Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam triển khai, đó là: Nghiên cứu, đề xuất và triển khai các biện pháp để thúc đẩy phát triển thị trường điện toán đám mây và trung tâm dữ liệu ở Việt Nam; Đóng góp ý kiến xây dựng chính sách của nhà nước, xây dựng các tiêu chuẩn, quy chuẩn kiểm tra, đánh giá dịch vụ điện toán đám mây và trung tâm dữ liệu của Nhà nước;\r\n\r\nTổ chức các hoạt động, sự kiện nhằm chia sẻ các kinh nghiệm, kiến thức liên quan đến dịch vụ điện toán đám mây và trung tâm dữ liệu giữa các thành viên Câu lạc bộ và nâng cao nhận thức cho cộng đồng, người sử dụng về các dịch vụ và thị trường điện toán đám mây, trung tâm dữ liệu của Việt Nam; Xây dựng và công bố các báo cáo định kỳ về mảng dịch vụ và thị trường liên quan đến điện toán đám mây trong nước (Cloud-Index, Catalog giới thiệu sản phẩm của các thành viên trong hệ sinh thái); Tổ chức các giải thưởng tôn vinh những doanh nghiệp điện toán đám mây và trung tâm dữ liệu có năng lực tốt nhất trên thị trường Việt Nam.\r\n\r\nTrao đổi với ICTnews, ông Vũ Thế Bình, Phó Chủ tịch kiêm Tổng thư ký Hiệp hội Internet Việt Nam cho biết, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam đã bầu ra Ban chủ nhiệm Câu lạc bộ nhiệm kỳ 2 năm đầu tiên, gồm đại diện của 6 Công ty: <strong>Nhân Hòa, </strong><strong>VNG, Viettel CHT, CMC Telecom, FTI và Z.com. Ban chủ nhiệm nhất trí bầu ông Vũ Minh Trí, Phó Tổng giám đốc Công ty VNG làm Chủ nhiệm Câu lạc bộ; các ông Lê Hoài Nam, Phó Tổng giám đốc Viettel CHT và Đặng Tùng Sơn, Phó Tổng giám đốc CMC Telecom làm các Phó chủ nhiệm Câu lạc bộ.</strong>\r\n\r\n<img title=\"nhan_hoa_3_internet_day_2019.jpg\" src=\"https://nhanhoa.com/uploads/attach/1576047743_nhan_hoa_3_internet_day_2019.jpg\" width=\"1000\" height=\"750\" border=\"0\" />\r\n\r\n</div>\r\n<div class=\"content-detail\">\r\n<div id=\"abde\">\r\n<p class=\"PCaption\"><em>Thứ trưởng Bộ TT&amp;TT Phạm Hồng Hải phát biểu tại phiên toàn thể sự kiện Internet Day 2019 được tổ chức tại Hà Nội ngày 11/12.</em></p>\r\nTrước đó, như ICTnews đã đưa tin, trong khuôn khổ sự kiện <strong>“OpenInfra Days 2019”</strong> được tổ chức ngày 24/8, Hiệp hội Internet Việt Nam đã công bố việc khởi động kế hoạch thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam.\r\n\r\nThời điểm đó, nói về lý do để Hiệp hội quyết định đứng ra xúc tiến thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam, ông Vũ Thế Bình cho biết, gần đây, ngoài sự phát triển về hạ tầng Internet băng rộng cố định và băng rộng, để đáp ứng nhu cầu cũng như để thúc đẩy thị trường, nhiều doanh nghiệp, hội viên VIA đã đầu tư và đưa ra thị trường các dịch vụ điện toán đám mây và trung tâm dữ liệu đa dạng. Còn ở góc độ nhu cầu của người dùng, rất nhiều tổ chức, doanh nghiệp đang chuyển ứng dụng của mình lên Cloud, phần lớn là đưa lên các dịch vụ Cloud nước ngoài như Amazon, Microsoft, Google, Alibaba…\r\n\r\n<em>“Chúng tôi quan sát thấy sự dịch chuyển rất thú vị. Một số nhà mạng giữ giá tăng băng thông, tức là gián tiếp hỗ trợ, thúc đẩy việc sử dụng các dịch vụ Cloud đặt tại nước ngoài. Trong khi đó, cũng chính các nhà mạng đó đang đầu tư và cố gắng đưa ra thị trường các dịch vụ Cloud trong nước. Thêm vào đó, nhiều doanh nghiệp nhỏ, startup cũng nỗ lực xây dựng và cung cấp các dịch vụ - giải pháp Cloud. Hiệp hội mong muốn các “tay chơi Cloud và Data Center” có cơ hội hợp tác với nhau, để thúc đẩy và mở rộng thị trường, kích cầu, giảm thiểu khả năng thị trường Cloud và Data Center trong nước chưa lớn đã có nguy cơ thiếu bền vững. Chúng tôi cố gắng vận động, làm trung gian và kết nối các “tay chơi”; việc thực sự hợp tác và cùng thúc đẩy, phần lớn phụ thuộc vào các doanh nghiệp trong cuộc”</em>, ông Vũ Thế Bình chia sẻ.\r\n\r\n</div>\r\n</div>', 'Khai mạc Internet Day 2019: Bắt tay lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam, 11 doanh nghiệp Internet đặt mục tiêu gì?', '', 'inherit', 'closed', 'closed', '', '781-revision-v1', '', '', '2020-02-13 08:44:12', '2020-02-13 08:44:12', '', 781, 'http://localhost/tamnghia/781-revision-v1/', 0, 'revision', '', 0),
(784, 1, '2020-02-13 08:46:14', '2020-02-13 01:46:14', '<h5>1. Căn cứ pháp lý</h5>\r\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\r\n\r\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\r\n\r\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\r\n\r\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\r\n<h5>2. Quy trình và các bước nhập khẩu bàn là điện:</h5>\r\n<strong><em>A. HS code bàn là điện và thuế suất</em></strong>\r\n<ul>\r\n 	<li>Mã Hs code: 85164090</li>\r\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 25%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%</li>\r\n 	<li>Thuế giá trị tăng: 10%</li>\r\n</ul>\r\n<strong><em>B. Quy trình hải quan nhập khẩu bàn là điện</em></strong>\r\n\r\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nTổ chức, cá nhân nhập khẩu đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc;</li>\r\n 	<li>hợp đồng (sales contract),</li>\r\n 	<li>hóa đơn thương mại (commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (packing list),</li>\r\n 	<li>Vận tải đơn (House bill),</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n\r\n<strong><em>Bước 2:</em></strong><em> </em>\r\n\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc;</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp,</li>\r\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp,</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\r\n 	<li>Tờ khai, Certificate,</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\r\n 	<li>Số lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý:</em></strong> Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\r\n\r\n<strong><em>Bước 4:</em></strong> Kết quả đạt chất lượng nhập khẩu\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn),</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo,</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem,</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại,</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\r\n<h6><strong><em>BƯỚC 5:</em></strong></h6>\r\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\r\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu bàn là điện', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu bàn là điện, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'publish', 'open', 'open', '', 'thu-tuc-nhap-khau-ban-la-dien', '', '', '2020-03-04 14:06:19', '2020-03-04 07:06:19', '', 0, 'http://localhost/tamnghia/?p=784', 0, 'post', '', 0),
(786, 1, '2020-02-13 08:46:14', '2020-02-13 08:46:14', '<strong>Hiện nay, Email đã trở thành một kênh trao đổi thông tin quan trọng của mỗi doanh nghiệp. Tuy nhiên thói quen sử dụng dịch vụ email miễn phí đã khiến các doanh nghiệp phải đối mặt với nhiều hiểm họa tiềm ẩn.\r\n\r\nVậy đâu là giải pháp cho doanh nghiệp giữa thực tại này?\r\n\r\n</strong>Trong cuộc trao đổi giữa Nhịp Sống Kinh Tế với ông Hồ Trung Dũng – CEO Công ty Phần mềm Nhân Hòa, một đơn vị cung cấp dịch vụ email có thâm niên và nghiệp vụ hàng đầu tại Việt Nam, vị chuyên gia này đã đưa ra<span class=\"text_exposed_show\"> nhiều lời khuyên, lời chia sẻ vô cùng hữu ích cho các doanh nghiệp.\r\n\r\nVới con số thống kê đáng ngạc nhiên là tại Việt Nam có tới 96% doanh nghiệp sử dụng email mà tại đó 90% email là kênh giao tiếp chính thì có tới 80% doanh nghiệp gặp vấn đề với dịch vụ này.\r\n\r\n<em>Chi tiết bài báo:</em> <strong><a href=\"https://cafebiz.vn/email-mien-phi-va-nhung-nguy-co-tiem-an-cho-doanh-nghiep-2019010211402962.chn\">Tại đây</a></strong>\r\n</span>\r\n\r\nMột trong những nguyên nhân chính là do rất nhiều doanh nghiệp có thói quen sử dụng dịch vụ email miễn phí/ dịch vụ email có chất lượng không đảm bảo làm email giao dịch. Việc đó vô hình chung sẽ khiến doanh nghiệp phải đối mặt với rất nhiều nguy cơ như bị giả mạo email, hay email gửi đi bị rơi vào thư rác. Ngoài ra doanh nghiệp cũng khó kiểm soát được việc sử dụng email của nhân viên và có thể bị mất khách hàng khi nhân viên nghỉ việc, do các dịch vụ email này không hỗ trợ hoặc rất hạn chế các công cụ quản lý người dùng.\r\n\r\nThực tế đã có nhiều trường hợp đáng tiếc xảy ra như việc bị hacker giả mạo email để lừa đảo các doanh nghiệp, lợi dụng khả năng bảo mật kém của dịch vụ và sự bất cẩn của người dùng để xâm nhập vào hệ thống email doanh nghiệp nhằm mục đích nắm bắt thông tin trao đổi giữa doanh nghiệp và đối tác/khách hàng. Sau đó harker tạo một địa chỉ email giả mạo hoặc truy cập vào tài khoản nạn nhân để gửi email với nội dung lừa đảo nhằm chiếm đoạt tiền của doanh nghiệp.\r\n\r\nĐể đề phòng những hiểm họa tiềm ẩn này, doanh nghiệp cần một giải pháp email toàn diện và khác biệt với những tính năng sau:\r\n\r\n- Tạo và quản lý email theo tên miền riêng, loại bỏ 100% nguy cơ giả mạo email\r\n- Công nghệ điện toán đám mây và SMTP ưu việt đảm bảo tỷ lệ gửi email vào inbox lên tới 99%\r\n- Giám sát và hỗ trợ kịp thời việc giao dịch email cho nhân viên thông qua tài khoản quản trị dịch vụ\r\n- Dễ dàng kiểm soát email của nhân viên khi nghỉ việc, đổi mật khẩu, chuyển quyền truy cập hoặc cài đặt chuyển tiếp cho nhân viên khác\r\n\r\nGiải pháp email chuyên nghiệp đến từ Nhân Hòa phù hợp với mọi quy mô đối tượng doanh nghiệp/tổ chức sẽ đem lại một cách thức sử dụng, trải nghiệm và đánh giá hoàn toàn khác về kênh giao tiếp thông tin này, và quan trọng hơn hết là hoàn toàn để lại nỗi lo về các hiểm họa tiềm ẩn sau lưng.\r\n\r\n---\r\nNhân Hòa là đơn vị cung cấp dịch vụ tên miền, dịch vụ email, máy chủ lớn tại Việt Nam, thành lập từ 2002, hiện đang cung cấp cho hơn 60,000 khách hàng. Dịch vụ email của Nhân Hòa là giải pháp toàn diện đáp ứng mọi nhu cầu về email của doanh nghiệp.\r\n\r\nĐặc biệt Công ty áp dụng chính sách ưu đãi nhằm nâng cao trải nghiệm chất lượng dịch vụ của khách hàng khi hoàn tiền trong 30 ngày nếu khách hàng không hài lòng về dịch vụ và ưu đãi tới 20% phí dịch vụ email khi đăng ký.', 'Hiểm họa tiềm ẩn cho doanh nghiệp đến từ Email miễn phí', 'Hiện nay, Email đã trở thành một kênh trao đổi thông tin quan trọng của mỗi doanh nghiệp. Tuy nhiên thói quen sử dụng dịch vụ email miễn phí đã khiến các doanh nghiệp phải đối mặt với nhiều hiểm họa tiềm ẩn.\r\n', 'inherit', 'closed', 'closed', '', '784-revision-v1', '', '', '2020-02-13 08:46:14', '2020-02-13 08:46:14', '', 784, 'http://localhost/tamnghia/784-revision-v1/', 0, 'revision', '', 0),
(787, 1, '2020-02-13 08:47:18', '2020-02-13 01:47:18', '<h5>1. Thủ tục nhập khẩu máy điều hòa không khí: Căn cứ pháp lý</h5>\r\n<ul>\r\n 	<li>Quyết định 3482/QĐ-KHCN về danh mục hàng hóa phải kiểm tra chất lượng thuộc quản lý của Bộ khoa học công nghệ. Quyết định có hiệu lực kể từ ngày ký (8/12/2017) và thay thế cho QĐ 1171/2015/QĐ-BKHCN trước đây.</li>\r\n 	<li>Thông tư số 11/2012/TT-BKHCN ngày 12/4/2012 về việc ban hành QCVN 9:2012/BKHCN. Danh mục các mặt hàng thử nghiệm theo QCVN 9:2012/BKHCN: Máy hút bụi, Máy giặt, Tủ lạnh, Tủ giữ lạnh thương mại, tủ đá, điều hòa không khí, máy khoan cầm tay.</li>\r\n</ul>\r\n<em>Tương thích điện từ (EMC) là khả năng hoạt động thoả đáng của thiết bị hoặc hệ thống trong môi trường điện từ và không tạo ra nhiễu điện từ quá mức làm ảnh hưởng đến hoạt động đúng của thiết bị khác trong môi trường đó</em>\r\n<ul>\r\n 	<li>Thông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 ( Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)</li>\r\n 	<li>Công văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07/2017/TT-BKHCN ngày 16/6/2017</li>\r\n 	<li>Quyết định 04/2017/QĐ-TTg ngày 9 tháng 3 năm 2017 quy định danh mục dán nhãn năng lượng và lộ trình thực hiện</li>\r\n</ul>\r\n<em>Mặt hàng máy điều hòa không khí nằm trong danh mục phải kiểm tra chất lượng theo QCVN 9:2012/KHCN và dán nhãn năng lượng.</em>\r\n<h5>2. Thủ tục nhập khẩu máy điều hòa không khí: Quy trình và các bước thực hiện</h5>\r\n<ul>\r\n 	<li>Mã HS code máy điều hòa không khí: 84151010</li>\r\n 	<li>Thuế nhập khẩu ưu đãi: 25%, thuế tiêu thụ đặc biệt: 10%, thuế giá trị gia tăng: 10%.</li>\r\n 	<li>Nếu nhập từ Trung Quốc có FORM E: thuế nhập khẩu 5%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%, nhập từ Thái Lan và Malaysia có FORM D: thuế nhập khẩu 5%.</li>\r\n</ul>\r\n<strong><em>2.1. THỦ TỤC TRƯỚC KHI THÔNG QUAN</em></strong>\r\n\r\nĐể thông quan lô hàng, doanh nghiệp chỉ cần có 2 văn bản sau;\r\n<ul>\r\n 	<li>Xác nhận đã đăng ký kiểm tra chất lượng</li>\r\n 	<li>Phiếu kết quả thử nghiệm hiệu suất năng lượng tối thiểu hoặc công văn xác nhận đã đăng ký công bố hiệu suất năng lượng và dán nhãn năng lượng</li>\r\n</ul>\r\n<em>⇒ C</em><em>ác việc cần làm: Đăng ký kiểm tra chất lượng, thử nghiệm hiệu suất năng lượng</em>\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nĐăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\r\n 	<li>Hợp đồng (Sales contract)</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list)</li>\r\n 	<li>Vận tải đơn (House bill)</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng TP. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n<h6>BƯỚC 2:<em> </em></h6>\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list) 1 bản chụp</li>\r\n 	<li>Vận tải đơn (House Bill: Gốc hoặc bản chụp</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc</li>\r\n 	<li>Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n\r\n<strong><em>Lưu ý:  </em></strong>Trường hợp doanh nghiệp đã có kết quả thử nghiệm hiệu suất năng lượng có thể nộp cùng với xác nhận đã ký kiểm tra chất lượng để được thông quan lô hàng luôn mà không cần phải làm thủ tục đem hàng về kho bảo quản\r\n\r\nVì vậy, nếu bạn có sẵn mẫu tại Việt Nam thì nên mang đi thử nghiệm Hiệu suất năng lượng trước khi nhập hàng về để rút ngắn thời gian chờ đợi để được thông quan lô hàng.\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu đến 1 trong các trung tâm Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), để thử nghiệm và làm chứng nhận hợp quy.\r\n\r\nHoặc có thể liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc</li>\r\n 	<li>Tờ khai</li>\r\n 	<li>Certificate</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp\r\nSố lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý: </em></strong>Chứng nhận hợp quy máy điều hòa không khí có giá trị trong vòng 3 năm nên lô hàng tiếp theo doanh nghiệp KHÔNG phải làm bước này.\r\n<h6>BƯỚC 4:</h6>\r\nMang mẫu lên Vinacomin hoặc Quatest 3 để thử nghiệm hiệu suất năng lượng. Lưu ý phiếu thử nghiệm hiệu suất năng lượng có giá trị vô thời hạn cho model cùng chủng loại.\r\n\r\nSau khi có kết quả thử nghiệm hiệu suất năng lượng, doanh nghiệp nộp hồ sơ cùng với xác nhận đã đăng ký kiểm tra chất lượng để được thông quan.\r\n\r\n<em><strong>2.2 THỦ TỤC SAU THÔNG QUAN LÔ HÀNG:</strong></em>\r\n<h6>BƯỚC 5: TRẢ KẾT QUẢ KIỂM TRA CHẤT LƯỢNG CHO NƠI ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo hồ sơ đã hoàn thiện đúng thời gian quy định tại thông tư 07/2017”</em>\r\n<h6>BƯỚC 6: XÁC NHẬN CÔNG BỐ ĐÃ ĐĂNG KÝ DÁN NHÃN NĂNG LƯỢNG CHO MÁY ĐIỀU HÒA KHÔNG KHÍ</h6>\r\nDoanh nghiệp lập hồ sơ và xin <strong><em>xác nhận công bố dán nhãn năng lượng </em></strong>của Vụ tiết kiệm năng lượng và phát triển bền vững – Bộ công thương<strong><em>.</em></strong>\r\n\r\nChứng từ này có tác dụng chứng minh doanh nghiệp đã công bố nhãn năng lượng cho các cơ quan liên quan khi đến kiểm tra. Đồng thời, dùng để thay thế phiếu kết quả thử nghiệm hiệu suất năng lượng trong quá trình thông quan lô hàng tiếp theo.\r\n\r\nTRACO Logistics đã có nhiều năm kinh nghiệm làm thủ tục, xin các giấy tờ liên quan cho các mặt hàng điện tử, điện lạnh, gia dụng. TRACO Logistics nhận nhập khẩu ủy thác các mặt hàng này. TRACO Logistics nắm rất rõ từng chi phí, thời gian hoàn thành công việc. Để được tư vấn ngay, Quý khách hàng vui lòng liên hệ TRACO Logistics.\r\n\r\nHi vọng được hợp tác cùng Quý khách hàng!', 'Thủ tục nhập khẩu máy điều hòa không khí', 'Bài viết chi tiết hướng dẫn thủ tục nhập khẩu máy điều hòa không khí. Doanh nghiệp có thể nắm vững quy trình và thủ tục thông quan hàng hóa.', 'publish', 'open', 'open', '', 'thu-tuc-nhap-khau-may-dieu-hoa-khong-khi', '', '', '2020-03-04 14:06:11', '2020-03-04 07:06:11', '', 0, 'http://localhost/tamnghia/?p=787', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(788, 1, '2020-02-13 08:47:18', '2020-02-13 08:47:18', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server). Sự ra đời của Cloud Server mang công nghệ cao và hiệu quả vượt trội, được nghiên cứu, kế thừa và phát triển trên nền tảng điện toán đám mây (Cloud Computing). Vậy cụ thể <strong>Cloud hosting là gì? Cloud service là gì?</strong>\r\n\r\n&gt;&gt;&gt; Xem thêm: Tự <span data-sheets-userformat=\"{\" data-sheets-value=\"{\"><a href=\"https://nhanhoa.com/tin-tuc/cach-ho-bien-may-tinh-thanh-server-dich-thuc.html\">tạo hosting tại nhà</a> với phương pháp cực đơn giản bạn nên biết</span>\r\n\r\n<strong>Cloud Hosting, Cloud Server là gì?\r\n</strong>\r\n\r\nCloud là gì?\r\n\r\n- Cloud vẫn được mọi người biết đến là nền tảng điện toán đám mây, bao gồm: public cloud, private cloud, hybrid cloud, SaaS, PaaS, IaaS - tất cả những loại đám mây này khiến cho ngay cả những người làm kinh tế giàu kinh nghiệm nhất, cũng như các chuyên gia IT hàng đầu cũng phải bối rối. Và, khi các nhà cung cấp mới xuất hiện, các công ty công nghệ lâu đời tìm kiếm các cách để xâm nhập thị trường, tạo ra các thuật ngữ mới, làm cho mọi thứ càng mơ hồ hơn, làm cho người mua công nghệ đang tìm kiếm một giải pháp hiệu quả với chi phí phù hợp đáp ứng nhu cầu của họ sẽ càng dễ “loạn” hơn.\r\n\r\n- Cách dễ hiểu nhất, điện toán đám mây đơn giản là sử dụng máy tính của người khác qua Internet.\r\n\r\n&gt;&gt;&gt; Xem thêm: <a href=\"https://nhanhoa.com/tin-tuc/bang-gia-hosting-o-nha-dang-ki-nao-re-nhat.html\">Hosting giá rẻ tốt nhất </a>- Nỗi lo của doanh nghiệp kinh doanh Online\r\n\r\n<em>Cloud hosting là gì?</em>\r\n<p dir=\"ltr\">- <em>Cloud hosting là gì?</em> Đây là một dịch vụ có chức năng như web hosting đó là lưu trữ các dữ liệu, ứng dụng trên nền website tuy nhiên lại được phân chia ở dạng cloud nên sở hữu rất nhiều những đặc điểm nổi trội. Khi sử dụng cloud hosting thì người dùng sẽ tránh được những tác động từ việc dùng hosting chung một server nhưng vẫn đảm bảo mức giá rẻ. Dịch vụ đa phần được cung cấp cho khách hàng là doanh nghiệp , tổ chức, website TMĐT, thậm chí là các cá nhân, diễn đàn có yêu cầu cao về quản lý thông tin dữ liệu hiệu quả, ổn định, khả năng mở rộng bất cứ khi nào có nhu cầu, tốc độ truy cập website cực nhanh.\r\n\r\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: vps - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-5]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/may-chu/may-chu-ao-vps.html\">vps</a></em> - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường</span>\r\n\r\n<img title=\"cloud-hosting-la-gi-01.jpg\" src=\"https://nhanhoa.com/uploads/attach/1532662459_cloud-hosting-la-gi-01.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-01\" width=\"682\" height=\"398\" />\r\n\r\n</p>\r\n<p dir=\"ltr\"><em>- </em>Nguyên lý hoạt động của<em> Cloud Hosting là gì? </em>Hoạt động dựa vào nền tảng điện toán đám mây (cloud computing), cải thiện được tốc độ truy cập hosting, tăng khả năng bảo mật dữ liệu cũng như hạn chế việc hosting bị chết đến 99%. Cloud Hosting sẽ mang lại cho khách hàng sự yên tâm và mang lại hiệu quả cao nhất trong kinh doanh và công việc.</p>\r\n&gt;&gt;&gt; Xem thêm: Tìm hiểu những nhà cung cấp <a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\">h</a><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">osting tốt nhất hiện nay</span></a><em><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">\r\n</span></a></em>\r\n\r\n<em>Cloud service là gì?</em>\r\n\r\n- <em>Cloud service là gì?</em>Đây là một loại hình dịch vụ PaaS (Platform as a Service) với khả năng nâng cấp dễ dàng không ảnh hưởng đến các dữ liệu đang được vận hành, được thiết kế riêng nhằm đáp ứng nhu cầu của các website lớn mà VPS không thể đem lại.\r\n\r\n\r\n<img title=\"cloudserver_5.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735170_cloudserver_5.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-02\" width=\"600\" height=\"300\" />\r\n\r\n“Cloud Server sử dụng liên kết nhiều máy chủ vật lí với nhau, giảm rủi ro cho việc điều hành và phát triển server.”\r\n\r\nƯu điểm của <em>Cloud hosting là gì? Cloud service là gì?</em>\r\n\r\nCùng có tác dụng cung cấp cho khách hàng các máy chủ ảo tương tự như Virtual Private Server (VPS Server) nhưng Cloud Server đem lại chất lượng cao cấp hơn, đảm bảo độ tin cậy, hiệu quả về giá thành, tốc độ xử lý và khả năng mở rộng dễ dàng.\r\n\r\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: cho thue hosting - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-11]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/hosting/linux-hosting.html\">Cho thue hosting</a></em> - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường</span>\r\n\r\nPhương thức hoạt động như một máy chủ chuyên dụng (Dedicated Server), hỗ trợ được đa hệ điều hành (Windows, Linux…) và được cam kết tài nguyên thực khi mà CPU | RAM | File hệ thống | Hệ điều hành… được hoạt động độc lập trên mỗi máy chủ, Cloud Server hoàn toàn nhanh hơn, tốt hơn và mạnh mẽ hơn nhờ sức mạnh của nền tảng điện toán đám mây.\r\n\r\n<img title=\"cloudserver_6.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735177_cloudserver_6.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-03\" width=\"600\" height=\"338\" />\r\nHệ thống  Cloud Server sử dụng sức mạnh kết hợp của nhiều nút (node) phần cứng (mỗi nút là 1 máy chủ) thay vì một máy chủ duy nhất, chính vì vậy điều này dẫn đến dịch vụ máy chủ trên nền điện toán đám mây của chúng tôi sẽ có tốc độ gấp nhiều lần so với máy chủ chia sẻ thông thường.\r\n\r\nXem thêm: <a href=\"https://nhanhoa.com/tin-tuc/4-uu-diem-vuot-troi-cua-cloud-server-ma-moi-nguoi-can-biet.html\">4 Ưu điểm vượt trội của Cloud Server mà mọi người cần biết</a>', 'Cloud Server là gì? - Đăng ký dịch vụ ở đâu thì tốt?', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server).', 'inherit', 'closed', 'closed', '', '787-revision-v1', '', '', '2020-02-13 08:47:18', '2020-02-13 08:47:18', '', 787, 'http://localhost/tamnghia/787-revision-v1/', 0, 'revision', '', 0),
(789, 1, '2020-02-13 08:48:09', '2020-02-13 08:48:09', '<div id=\"abdf\">\r\n\r\nHôm nay, ngày 11/12, trong khuôn khổ hội thảo Internet Day 2019 chủ đề <strong>“Internet Việt Nam: Đổi mới sáng tạo để Chuyển đổi số”</strong> được tổ chức tại Hà Nội, Hiệp hội Internet Việt Nam <em>(VIA)</em> đã chính thức ra mắt Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam <em>(Vietnam Cloud Computing and Data Center Club - VNCDC).</em>\r\n\r\n<img title=\"nhan_hoa_internet_day_2019.jpg\" src=\"https://nhanhoa.com/uploads/attach/1576046470_nhan_hoa_internet_day_2019.jpg\" width=\"1000\" height=\"750\" border=\"0\" />\r\n<table class=\"imageBox\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p class=\"PCaption\"><em>Chủ tịch Hiệp hội Internet Việt Nam Vũ Hoàng Liên trao quyết định thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu cho các thành viên sáng lập Câu lạc bộ. (Ảnh: Minh Sơn)</em></p>\r\n\r\n<div></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nSự kiện có sự tham dự của Thứ trưởng Bộ TT&amp;TT Phạm Hồng Hải; nguyên Thứ trưởng Bộ Bưu chính Viễn thông Mai Liêm Trực và nguyên Thứ trưởng Bộ TT&amp;TT Nguyễn Minh Hồng, Chủ tịch Hội Truyền thông số Việt Nam.\r\n\r\nLà tổ chức chuyên môn trực thuộc Hiệp hội Internet Việt Nam, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam gồm các thành viên thuộc Hiệp hội hoạt động trong lĩnh vực điện toán đám mây và trung tâm dữ liệu, tuân thủ pháp luật của nhà nước; tôn chỉ, mục đích của Hiệp hội.\r\n\r\nCâu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam có 12 thành viên sáng lập. Theo đó, ngoài VIA, Câu lạc bộ có 11 sáng lập viên là những doanh nghiệp đang kinh doanh trong lĩnh vực dịch vụ điện toán đám mây và trung tâm dữ liệu, bao gồm: <strong>Công ty TNHH Phần mềm Nhân Hòa; </strong><strong>Công ty cổ phần VNG; Công ty TNHH Viettel CHT; Công ty cổ phần Hạ tầng viễn thông CMC (CMC Telecom); Công ty cổ phần Viễn thông quốc tế FPT (FTI); Công ty cổ phần Z.com; Tổng Công ty Viettel Net; Tổng công ty VNPT IT; Công ty cổ phần NetNam; Công ty cổ phần HTC Viễn thông quốc tế; và Công ty TNHH Phần mềm iNET.</strong>\r\n\r\nTrong phát biểu khai mạc Internet Day 2019, Chủ tịch Hiệp hội Internet Việt Nam Vũ Hoàng Liên nhấn mạnh, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu ra đời với sứ mệnh thúc đẩy dịch vụ điện toán đám mây và trung tâm dữ liệu phát triển, đóng góp tích cực cho hành trình chuyển đối số quốc gia, chuyển đổi số của các tổ chức, doanh nghiệp Việt Nam. Các hoạt động của Câu lạc bộ sẽ tích hợp chặt chẽ với các hoạt động của Hiệp hội Internet Việt Nam, kỳ vọng sẽ tạo ra sức mạnh cộng hưởng để hình thành nên bức tranh tươi sáng hơn cho Internet Việt Nam\r\n\r\nQuy chế của Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam cũng nêu rõ, hoạt động của Câu lạc bộ hướng tới mục tiêu thúc đẩy phát triển thị trường dịch vụ điện toán đám mây và trung tâm dữ liệu ở Việt Nam, xây dựng môi trường kinh doanh và cạnh tranh lành mạnh. Bên cạnh đó, hoạt động của Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam cũng giúp các thành viên của Câu lạc bộ và cộng đồng nâng cao năng lực, kiến thức, thúc đẩy hợp tác trong lĩnh vực điện toán đám mây và trung tâm dữ liệu.\r\n\r\n</div>\r\n<div id=\"AdAsia\"></div>\r\n<div id=\"3ff45804a9127c6efc9bd1908ad07f68_sync\"></div>\r\n<div id=\"abde\">\r\n\r\nĐể hiện thực hóa các mục tiêu trên, nhiều nhiệm vụ sẽ được Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam triển khai, đó là: Nghiên cứu, đề xuất và triển khai các biện pháp để thúc đẩy phát triển thị trường điện toán đám mây và trung tâm dữ liệu ở Việt Nam; Đóng góp ý kiến xây dựng chính sách của nhà nước, xây dựng các tiêu chuẩn, quy chuẩn kiểm tra, đánh giá dịch vụ điện toán đám mây và trung tâm dữ liệu của Nhà nước;\r\n\r\nTổ chức các hoạt động, sự kiện nhằm chia sẻ các kinh nghiệm, kiến thức liên quan đến dịch vụ điện toán đám mây và trung tâm dữ liệu giữa các thành viên Câu lạc bộ và nâng cao nhận thức cho cộng đồng, người sử dụng về các dịch vụ và thị trường điện toán đám mây, trung tâm dữ liệu của Việt Nam; Xây dựng và công bố các báo cáo định kỳ về mảng dịch vụ và thị trường liên quan đến điện toán đám mây trong nước (Cloud-Index, Catalog giới thiệu sản phẩm của các thành viên trong hệ sinh thái); Tổ chức các giải thưởng tôn vinh những doanh nghiệp điện toán đám mây và trung tâm dữ liệu có năng lực tốt nhất trên thị trường Việt Nam.\r\n\r\nTrao đổi với ICTnews, ông Vũ Thế Bình, Phó Chủ tịch kiêm Tổng thư ký Hiệp hội Internet Việt Nam cho biết, Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam đã bầu ra Ban chủ nhiệm Câu lạc bộ nhiệm kỳ 2 năm đầu tiên, gồm đại diện của 6 Công ty: <strong>Nhân Hòa, </strong><strong>VNG, Viettel CHT, CMC Telecom, FTI và Z.com. Ban chủ nhiệm nhất trí bầu ông Vũ Minh Trí, Phó Tổng giám đốc Công ty VNG làm Chủ nhiệm Câu lạc bộ; các ông Lê Hoài Nam, Phó Tổng giám đốc Viettel CHT và Đặng Tùng Sơn, Phó Tổng giám đốc CMC Telecom làm các Phó chủ nhiệm Câu lạc bộ.</strong>\r\n\r\n<img title=\"nhan_hoa_3_internet_day_2019.jpg\" src=\"https://nhanhoa.com/uploads/attach/1576047743_nhan_hoa_3_internet_day_2019.jpg\" width=\"1000\" height=\"750\" border=\"0\" />\r\n\r\n</div>\r\n<div class=\"content-detail\">\r\n<div id=\"abde\">\r\n<p class=\"PCaption\"><em>Thứ trưởng Bộ TT&amp;TT Phạm Hồng Hải phát biểu tại phiên toàn thể sự kiện Internet Day 2019 được tổ chức tại Hà Nội ngày 11/12.</em></p>\r\nTrước đó, như ICTnews đã đưa tin, trong khuôn khổ sự kiện <strong>“OpenInfra Days 2019”</strong> được tổ chức ngày 24/8, Hiệp hội Internet Việt Nam đã công bố việc khởi động kế hoạch thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam.\r\n\r\nThời điểm đó, nói về lý do để Hiệp hội quyết định đứng ra xúc tiến thành lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam, ông Vũ Thế Bình cho biết, gần đây, ngoài sự phát triển về hạ tầng Internet băng rộng cố định và băng rộng, để đáp ứng nhu cầu cũng như để thúc đẩy thị trường, nhiều doanh nghiệp, hội viên VIA đã đầu tư và đưa ra thị trường các dịch vụ điện toán đám mây và trung tâm dữ liệu đa dạng. Còn ở góc độ nhu cầu của người dùng, rất nhiều tổ chức, doanh nghiệp đang chuyển ứng dụng của mình lên Cloud, phần lớn là đưa lên các dịch vụ Cloud nước ngoài như Amazon, Microsoft, Google, Alibaba…\r\n\r\n<em>“Chúng tôi quan sát thấy sự dịch chuyển rất thú vị. Một số nhà mạng giữ giá tăng băng thông, tức là gián tiếp hỗ trợ, thúc đẩy việc sử dụng các dịch vụ Cloud đặt tại nước ngoài. Trong khi đó, cũng chính các nhà mạng đó đang đầu tư và cố gắng đưa ra thị trường các dịch vụ Cloud trong nước. Thêm vào đó, nhiều doanh nghiệp nhỏ, startup cũng nỗ lực xây dựng và cung cấp các dịch vụ - giải pháp Cloud. Hiệp hội mong muốn các “tay chơi Cloud và Data Center” có cơ hội hợp tác với nhau, để thúc đẩy và mở rộng thị trường, kích cầu, giảm thiểu khả năng thị trường Cloud và Data Center trong nước chưa lớn đã có nguy cơ thiếu bền vững. Chúng tôi cố gắng vận động, làm trung gian và kết nối các “tay chơi”; việc thực sự hợp tác và cùng thúc đẩy, phần lớn phụ thuộc vào các doanh nghiệp trong cuộc”</em>, ông Vũ Thế Bình chia sẻ.\r\n\r\n</div>\r\n</div>', 'Khai mạc Internet Day 2019: Bắt tay lập Câu lạc bộ Điện toán đám mây và Trung tâm dữ liệu Việt Nam, 11 doanh nghiệp Internet đặt mục tiêu gì?', 'Hôm nay, ngày 11/12, trong khuôn khổ hội thảo Internet Day 2019 chủ đề “Internet Việt Nam: Đổi mới sáng tạo để Chuyển đổi số” được tổ chức tại Hà Nội, Hiệp hội Internet Việt Nam (VIA) đã chính thức ra mắt', 'inherit', 'closed', 'closed', '', '781-revision-v1', '', '', '2020-02-13 08:48:09', '2020-02-13 08:48:09', '', 781, 'http://localhost/tamnghia/781-revision-v1/', 0, 'revision', '', 0),
(791, 1, '2020-02-13 08:49:35', '2020-02-13 08:49:35', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server). Sự ra đời của Cloud Server mang công nghệ cao và hiệu quả vượt trội, được nghiên cứu, kế thừa và phát triển trên nền tảng điện toán đám mây (Cloud Computing). Vậy cụ thể <strong>Cloud hosting là gì? Cloud service là gì?</strong>\r\n\r\n&gt;&gt;&gt; Xem thêm: Tự <span data-sheets-userformat=\"{\" data-sheets-value=\"{\"><a href=\"https://nhanhoa.com/tin-tuc/cach-ho-bien-may-tinh-thanh-server-dich-thuc.html\">tạo hosting tại nhà</a> với phương pháp cực đơn giản bạn nên biết</span>\r\n\r\n<strong>Cloud Hosting, Cloud Server là gì?\r\n</strong>\r\n\r\nCloud là gì?\r\n\r\n- Cloud vẫn được mọi người biết đến là nền tảng điện toán đám mây, bao gồm: public cloud, private cloud, hybrid cloud, SaaS, PaaS, IaaS - tất cả những loại đám mây này khiến cho ngay cả những người làm kinh tế giàu kinh nghiệm nhất, cũng như các chuyên gia IT hàng đầu cũng phải bối rối. Và, khi các nhà cung cấp mới xuất hiện, các công ty công nghệ lâu đời tìm kiếm các cách để xâm nhập thị trường, tạo ra các thuật ngữ mới, làm cho mọi thứ càng mơ hồ hơn, làm cho người mua công nghệ đang tìm kiếm một giải pháp hiệu quả với chi phí phù hợp đáp ứng nhu cầu của họ sẽ càng dễ “loạn” hơn.\r\n\r\n- Cách dễ hiểu nhất, điện toán đám mây đơn giản là sử dụng máy tính của người khác qua Internet.\r\n\r\n&gt;&gt;&gt; Xem thêm: <a href=\"https://nhanhoa.com/tin-tuc/bang-gia-hosting-o-nha-dang-ki-nao-re-nhat.html\">Hosting giá rẻ tốt nhất </a>- Nỗi lo của doanh nghiệp kinh doanh Online\r\n\r\n<em>Cloud hosting là gì?</em>\r\n<p dir=\"ltr\">- <em>Cloud hosting là gì?</em> Đây là một dịch vụ có chức năng như web hosting đó là lưu trữ các dữ liệu, ứng dụng trên nền website tuy nhiên lại được phân chia ở dạng cloud nên sở hữu rất nhiều những đặc điểm nổi trội. Khi sử dụng cloud hosting thì người dùng sẽ tránh được những tác động từ việc dùng hosting chung một server nhưng vẫn đảm bảo mức giá rẻ. Dịch vụ đa phần được cung cấp cho khách hàng là doanh nghiệp , tổ chức, website TMĐT, thậm chí là các cá nhân, diễn đàn có yêu cầu cao về quản lý thông tin dữ liệu hiệu quả, ổn định, khả năng mở rộng bất cứ khi nào có nhu cầu, tốc độ truy cập website cực nhanh.</p>\r\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: vps - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-5]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/may-chu/may-chu-ao-vps.html\">vps</a></em> - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường</span>\r\n\r\n<img title=\"cloud-hosting-la-gi-01.jpg\" src=\"https://nhanhoa.com/uploads/attach/1532662459_cloud-hosting-la-gi-01.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-01\" width=\"682\" height=\"398\" />\r\n<p dir=\"ltr\"><em>- </em>Nguyên lý hoạt động của<em> Cloud Hosting là gì? </em>Hoạt động dựa vào nền tảng điện toán đám mây (cloud computing), cải thiện được tốc độ truy cập hosting, tăng khả năng bảo mật dữ liệu cũng như hạn chế việc hosting bị chết đến 99%. Cloud Hosting sẽ mang lại cho khách hàng sự yên tâm và mang lại hiệu quả cao nhất trong kinh doanh và công việc.</p>\r\n&gt;&gt;&gt; Xem thêm: Tìm hiểu những nhà cung cấp <a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\">h</a><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">osting tốt nhất hiện nay</span></a><em><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">\r\n</span></a></em>\r\n\r\n<em>Cloud service là gì?</em>\r\n\r\n- <em>Cloud service là gì?</em>Đây là một loại hình dịch vụ PaaS (Platform as a Service) với khả năng nâng cấp dễ dàng không ảnh hưởng đến các dữ liệu đang được vận hành, được thiết kế riêng nhằm đáp ứng nhu cầu của các website lớn mà VPS không thể đem lại.\r\n\r\n<img title=\"cloudserver_5.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735170_cloudserver_5.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-02\" width=\"600\" height=\"300\" />\r\n\r\n“Cloud Server sử dụng liên kết nhiều máy chủ vật lí với nhau, giảm rủi ro cho việc điều hành và phát triển server.”\r\n\r\nƯu điểm của <em>Cloud hosting là gì? Cloud service là gì?</em>\r\n\r\nCùng có tác dụng cung cấp cho khách hàng các máy chủ ảo tương tự như Virtual Private Server (VPS Server) nhưng Cloud Server đem lại chất lượng cao cấp hơn, đảm bảo độ tin cậy, hiệu quả về giá thành, tốc độ xử lý và khả năng mở rộng dễ dàng.\r\n\r\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: cho thue hosting - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-11]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/hosting/linux-hosting.html\">Cho thue hosting</a></em> - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường</span>\r\n\r\nPhương thức hoạt động như một máy chủ chuyên dụng (Dedicated Server), hỗ trợ được đa hệ điều hành (Windows, Linux…) và được cam kết tài nguyên thực khi mà CPU | RAM | File hệ thống | Hệ điều hành… được hoạt động độc lập trên mỗi máy chủ, Cloud Server hoàn toàn nhanh hơn, tốt hơn và mạnh mẽ hơn nhờ sức mạnh của nền tảng điện toán đám mây.\r\n\r\n<img title=\"cloudserver_6.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735177_cloudserver_6.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-03\" width=\"600\" height=\"338\" />\r\nHệ thống  Cloud Server sử dụng sức mạnh kết hợp của nhiều nút (node) phần cứng (mỗi nút là 1 máy chủ) thay vì một máy chủ duy nhất, chính vì vậy điều này dẫn đến dịch vụ máy chủ trên nền điện toán đám mây của chúng tôi sẽ có tốc độ gấp nhiều lần so với máy chủ chia sẻ thông thường.\r\n\r\nXem thêm: <a href=\"https://nhanhoa.com/tin-tuc/4-uu-diem-vuot-troi-cua-cloud-server-ma-moi-nguoi-can-biet.html\">4 Ưu điểm vượt trội của Cloud Server mà mọi người cần biết</a>', 'Cloud Server là gì? - Đăng ký dịch vụ ở đâu thì tốt?', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server).', 'inherit', 'closed', 'closed', '', '787-revision-v1', '', '', '2020-02-13 08:49:35', '2020-02-13 08:49:35', '', 787, 'http://localhost/tamnghia/787-revision-v1/', 0, 'revision', '', 0),
(864, 1, '2020-02-13 15:32:08', '2020-02-13 15:32:08', '[row style=\"collapse\" width=\"full-width\" class=\"blyk\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 0px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" width=\"full-width\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" bg_color=\"rgb(243, 243, 243)\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Kirstin W. Everton</h3>\n<p>Developer, Google</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Andy Guscott<br /></h3>\n<p>Graphic Designer, Apple</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size:100%; font-style: normal;\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In est sem, ultrices ornare molestie sit amet, placerat vel arcu. Phasellus quis massa id sem pretium dictum. Donec sed sollicitudin est, sit amet eleifend ipsum. Vivamus nec pretium turpis.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Kimberly Mason<br /></h3>\n<p>Sales, Uber</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-13 15:32:08', '2020-02-13 15:32:08', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(886, 1, '2020-02-17 14:32:38', '2020-02-17 14:32:38', '<div class=\"form-flat\">\r\n[text* your-name placeholder \"Họ và tên (*)\"]\r\n\r\n\r\n[number* number-17 min:10 max:13 placeholder \"Số điện thoại (*)\"]\r\n\r\n[textarea your-message placeholder \"Nội dung (*)\"] </p>\r\n\r\n[submit class:button primary \"Đăng ký\"]\r\n</div>\n1\n\nhuy7989@gmail.com\nhuy7989@gmail.com\nHọ tên: [your-name]\r\nSố điện thoại: [number-17]\r\nNội dung: [your-message]\n\n\n\n\n\n\n\n\n\n\n\n\n\nThông tin đã được gửi thành công\nGửi thông tin không thành công\nDữ liệu nhập vào không đúng\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nXin mời nhập đầy đủ thông tin\nThông tin không chính xác\nThông tin không chính xác\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Đăng ký', '', 'publish', 'closed', 'closed', '', 'contact-form-flat_copy', '', '', '2020-02-17 14:34:51', '2020-02-17 14:34:51', '', 0, 'http://localhost/tamnghia/?post_type=wpcf7_contact_form&#038;p=886', 0, 'wpcf7_contact_form', '', 0),
(910, 1, '2020-02-17 15:19:42', '2020-02-17 15:19:42', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '55dd5d0ab80cc5d78a51951ad32ece2b', '', '', '2020-02-17 15:19:42', '2020-02-17 15:19:42', '', 0, 'http://localhost/tamnghia/55dd5d0ab80cc5d78a51951ad32ece2b/', 0, 'oembed_cache', '', 0),
(911, 1, '2020-02-17 15:23:46', '2020-02-17 15:23:46', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '28c73e5bec2facd4960e45e2813f1e19', '', '', '2020-02-17 15:23:46', '2020-02-17 15:23:46', '', 0, 'http://localhost/tamnghia/28c73e5bec2facd4960e45e2813f1e19/', 0, 'oembed_cache', '', 0),
(913, 1, '2020-02-17 15:27:24', '2020-02-17 15:27:24', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '2ca40a816e980d242cc988f10539dc20', '', '', '2020-02-17 15:27:24', '2020-02-17 15:27:24', '', 0, 'http://localhost/tamnghia/2ca40a816e980d242cc988f10539dc20/', 0, 'oembed_cache', '', 0),
(914, 1, '2020-02-17 15:27:25', '2020-02-17 15:27:25', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '543846a8a6f66b6ac74ce5ba470cf89c', '', '', '2020-02-17 15:27:25', '2020-02-17 15:27:25', '', 0, 'http://localhost/tamnghia/543846a8a6f66b6ac74ce5ba470cf89c/', 0, 'oembed_cache', '', 0),
(915, 1, '2020-02-17 15:27:26', '2020-02-17 15:27:26', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '05e7c80ac593d66037b1465dc03dc9bd', '', '', '2020-02-17 15:27:26', '2020-02-17 15:27:26', '', 0, 'http://localhost/tamnghia/05e7c80ac593d66037b1465dc03dc9bd/', 0, 'oembed_cache', '', 0),
(916, 1, '2020-02-17 15:27:26', '2020-02-17 15:27:26', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'b88b8d99d3839a66ad8ef30b18207560', '', '', '2020-02-17 15:27:26', '2020-02-17 15:27:26', '', 0, 'http://localhost/tamnghia/b88b8d99d3839a66ad8ef30b18207560/', 0, 'oembed_cache', '', 0),
(923, 1, '2020-02-17 15:31:54', '2020-02-17 15:31:54', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '013ac66a3bb6ba34a3a5e55792cc5902', '', '', '2020-02-17 15:31:54', '2020-02-17 15:31:54', '', 0, 'http://localhost/tamnghia/013ac66a3bb6ba34a3a5e55792cc5902/', 0, 'oembed_cache', '', 0),
(924, 1, '2020-02-17 15:31:55', '2020-02-17 15:31:55', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '26b09286946e70b7b68fd25e3b15b117', '', '', '2020-02-17 15:31:55', '2020-02-17 15:31:55', '', 0, 'http://localhost/tamnghia/26b09286946e70b7b68fd25e3b15b117/', 0, 'oembed_cache', '', 0),
(925, 1, '2020-02-17 15:31:58', '2020-02-17 15:31:58', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'fdbdcf37e8cfdc0e61ac6e78793d6152', '', '', '2020-02-17 15:31:58', '2020-02-17 15:31:58', '', 0, 'http://localhost/tamnghia/fdbdcf37e8cfdc0e61ac6e78793d6152/', 0, 'oembed_cache', '', 0),
(926, 1, '2020-02-17 15:31:59', '2020-02-17 15:31:59', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '0f7909844f4ca9a581f4e55dc1b62f32', '', '', '2020-02-17 15:31:59', '2020-02-17 15:31:59', '', 0, 'http://localhost/tamnghia/0f7909844f4ca9a581f4e55dc1b62f32/', 0, 'oembed_cache', '', 0),
(929, 1, '2020-02-17 15:48:55', '2020-02-17 15:48:55', '[row style=\"collapse\" width=\"full-width\" class=\"blyk\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 0px 0px\" depth=\"3\"]\n\n[row_inner style=\"collapse\" col_bg=\"rgb(255,255,255)\" width=\"full-width\" v_align=\"equal\" padding=\"10% 10% 10% 10%\" padding__sm=\"10% 0px 10% 0px\"]\n\n[col_inner span=\"6\" span__sm=\"12\" padding=\"10% 10% 10% 10%\" align=\"center\" bg_color=\"#446084\" color=\"light\"]\n\n[section bg=\"728\" bg_color=\"rgba(17, 17, 17, 0.07)\" bg_overlay=\"rgba(49, 75, 107, 0.92)\" height=\"400px\" height__sm=\"300px\"]\n\n<h2>KHÁCH HÀNG</h2>\n<p>Hàng ngàn khách hàng đã tin tưởng và sử dụng dịch vụ của chúng tôi</p>\n[button text=\"Khách hàng tiêu biểu\" color=\"white\"]\n\n\n[/section]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" bg_color=\"rgb(243, 243, 243)\"]\n\n[section height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_pos=\"outside\" arrows=\"false\" nav_color=\"dark\" bullet_style=\"simple\" timer=\"3000\"]\n\n[row_inner_1 label=\"Testimonial 1\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size: 100%; font-style: normal;\">\n<p>Tôi rất hài hài lòng về quy trình làm việc của công ty TÂM NGHĨA. Hệ thống quản trị của website thì rất hữu dụng và nhiều tính năng, Tôi hoàn toàn có thể dễ dàng thay đổi tất cả các phần nội dung của website. Tôi đánh giá cao về TÂM NGHĨA.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"727\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\">Hồng Liên</h3>\n<p>Giám Đốc</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size: 100%; font-style: normal;\">\n<p>Trước đây tôi đã làm việc với khá nhiều đơn vị, nhưng chưa bên nào đem lại sự ổn định và hiệu quả trong quảng cáo cho tôi. Nên tôi thật sự đã tin tưởng TÂM NGHĨA sau 01 tháng hợp tác và tôi quyết định không thay đổi đối tác nữa.</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img=\"726\" img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Phan Hương<br /></h3>\n<p>Giám Đốc</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 label=\"Testimonial 2\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n<blockquote style=\"font-size: 100%; font-style: normal;\">\n<p>TÂM NGHĨA là đơn vị cung cấp về dịch vụ website được công ty chúng tôi rất tin tưởng và hài lòng, đội ngũ nhân viên tư vấn rất tận tình và chu đáo. Đúng với những gì các bạn cam kết</p>\n</blockquote>\n[gap height=\"10px\"]\n\n[featured_box img_width=\"50\" pos=\"left\" font_size=\"small\" class=\"circle\"]\n\n<h3 style=\"margin-bottom:0px;\"> Tiến Thuận<br /></h3>\n<p>Giám Đốc</p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/section]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-17 15:48:55', '2020-02-17 15:48:55', '', 724, 'http://localhost/tamnghia/724-revision-v1/', 0, 'revision', '', 0),
(954, 1, '2020-02-19 03:54:26', '2020-02-19 03:54:26', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 03:54:26', '2020-02-19 03:54:26', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(955, 1, '2020-02-19 03:55:14', '2020-02-19 03:55:14', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 03:55:14', '2020-02-19 03:55:14', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(956, 1, '2020-02-19 03:57:41', '2020-02-19 03:57:41', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\"]\n\n<p style=\"text-align: left;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 03:57:41', '2020-02-19 03:57:41', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(957, 1, '2020-02-19 03:59:57', '2020-02-19 03:59:57', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"100\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 03:59:57', '2020-02-19 03:59:57', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(958, 1, '2020-02-19 04:00:45', '2020-02-19 04:00:45', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"71\" width__sm=\"90\" scale__sm=\"100\" position_x=\"85\" position_x__sm=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 04:00:45', '2020-02-19 04:00:45', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(959, 1, '2020-02-19 04:01:30', '2020-02-19 04:01:30', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide home', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 04:01:30', '2020-02-19 04:01:30', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(1019, 1, '2020-02-19 06:51:58', '2020-02-19 06:51:58', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[row h_align=\"center\"]\n\n[col span__sm=\"12\" margin=\"60px 0px 40px 0px\"]\n\n[row_inner style=\"collapse\"]\n\n[col_inner span__sm=\"12\" padding=\"30px 30px 20px 30px\" bg_color=\"rgb(45, 45, 45)\"]\n\n[row_inner_1 style=\"small\"]\n\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n[col_inner_1 span=\"2\" span__sm=\"4\"]\n\n[ux_image]\n\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 06:51:58', '2020-02-19 06:51:58', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1020, 1, '2020-02-19 06:54:07', '2020-02-19 06:54:07', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[gap]\n\n[ux_slider style=\"container\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 06:54:07', '2020-02-19 06:54:07', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1027, 1, '2020-02-19 06:59:15', '2020-02-19 06:59:15', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[gap]\n\n[ux_slider style=\"container\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 06:59:15', '2020-02-19 06:59:15', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1028, 1, '2020-02-19 07:00:25', '2020-02-19 07:00:25', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[gap]\n\n[ux_slider style=\"container\" hide_nav=\"true\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:00:25', '2020-02-19 07:00:25', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1029, 1, '2020-02-19 07:01:13', '2020-02-19 07:01:13', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[gap]\n\n[ux_slider hide_nav=\"true\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:01:13', '2020-02-19 07:01:13', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1030, 1, '2020-02-19 07:01:37', '2020-02-19 07:01:37', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[gap]\n\n[section]\n\n[ux_slider hide_nav=\"true\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:01:37', '2020-02-19 07:01:37', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1031, 1, '2020-02-19 07:02:18', '2020-02-19 07:02:18', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[section]\n\n[ux_slider hide_nav=\"true\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:02:18', '2020-02-19 07:02:18', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1032, 1, '2020-02-19 07:02:39', '2020-02-19 07:02:39', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[section]\n\n[ux_slider hide_nav=\"true\" nav_color=\"dark\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:02:39', '2020-02-19 07:02:39', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1034, 1, '2020-02-19 07:07:43', '2020-02-19 07:07:43', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Slide trang chủ', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 07:07:43', '2020-02-19 07:07:43', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(1035, 1, '2020-02-19 07:08:12', '2020-02-19 07:08:12', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[section]\n\n[ux_slider hide_nav=\"true\" nav_color=\"dark\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Ý kiến khách hàng - Đối tác trang chủ', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:08:12', '2020-02-19 07:08:12', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1036, 1, '2020-02-19 07:09:40', '2020-02-19 07:09:40', '[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"951\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"952\" bg_size=\"original\" bg_overlay__sm=\"rgba(249, 123, 0, 0.75)\"]\n\n[text_box width=\"43\" width__sm=\"90\" scale__sm=\"100\" position_x=\"50\" position_x__sm=\"50\" position_y=\"90\" bg=\"rgba(0, 0, 0, 0.4)\"]\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 120%;\">A Complete Line of Services – Logistics</span></strong></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-19 07:09:40', '2020-02-19 07:09:40', '', 315, 'http://localhost/tracologistics/315-revision-v1/', 0, 'revision', '', 0),
(1039, 1, '2020-02-19 07:10:46', '2020-02-19 07:10:46', '[section bg=\"964\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(8, 71, 152, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]\n[section]\n\n[ux_slider hide_nav=\"true\" nav_color=\"dark\" bullets=\"false\"]\n\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1025\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1024\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1023\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1022\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[ux_image id=\"1026\"]\n\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Trang chủ - Ý kiến khách hàng - Đối tác', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-02-19 07:10:46', '2020-02-19 07:10:46', '', 724, 'http://localhost/tracologistics/724-revision-v1/', 0, 'revision', '', 0),
(1040, 1, '2020-02-19 07:11:53', '2020-02-19 07:11:53', '[section]\n\n<h2 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tin nổi bật</span></h2>\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"circle\" auto_slide=\"5000\" posts=\"6\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n[/section]', 'Trang chủ - Tin nổi bật', '', 'trash', 'closed', 'closed', '', 'trang-chu-tin-noi-bat__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/tracologistics/?post_type=blocks&#038;p=1040', 0, 'blocks', '', 0),
(1041, 1, '2020-02-19 07:11:53', '2020-02-19 07:11:53', '', 'Trang chủ - Tin nổi bật', '', 'inherit', 'closed', 'closed', '', '1040-revision-v1', '', '', '2020-02-19 07:11:53', '2020-02-19 07:11:53', '', 1040, 'http://localhost/tracologistics/1040-revision-v1/', 0, 'revision', '', 0),
(1042, 1, '2020-02-19 07:23:41', '2020-02-19 07:23:41', '[section]\n\n<h2 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tin nổi bật</span></h2>\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" auto_slide=\"5000\" posts=\"6\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n[/section]', 'Trang chủ - Tin nổi bật', '', 'inherit', 'closed', 'closed', '', '1040-revision-v1', '', '', '2020-02-19 07:23:41', '2020-02-19 07:23:41', '', 1040, 'http://localhost/tracologistics/1040-revision-v1/', 0, 'revision', '', 0),
(1044, 1, '2020-02-19 07:26:02', '2020-02-19 07:26:02', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server). Sự ra đời của Cloud Server mang công nghệ cao và hiệu quả vượt trội, được nghiên cứu, kế thừa và phát triển trên nền tảng điện toán đám mây (Cloud Computing). Vậy cụ thể <strong>Cloud hosting là gì? Cloud service là gì?</strong>\n\n&gt;&gt;&gt; Xem thêm: Tự <span data-sheets-userformat=\"{\" data-sheets-value=\"{\"><a href=\"https://nhanhoa.com/tin-tuc/cach-ho-bien-may-tinh-thanh-server-dich-thuc.html\">tạo hosting tại nhà</a> với phương pháp cực đơn giản bạn nên biết</span>\n\n<strong>Cloud Hosting, Cloud Server là gì?\n</strong>\n\nCloud là gì?\n\n- Cloud vẫn được mọi người biết đến là nền tảng điện toán đám mây, bao gồm: public cloud, private cloud, hybrid cloud, SaaS, PaaS, IaaS - tất cả những loại đám mây này khiến cho ngay cả những người làm kinh tế giàu kinh nghiệm nhất, cũng như các chuyên gia IT hàng đầu cũng phải bối rối. Và, khi các nhà cung cấp mới xuất hiện, các công ty công nghệ lâu đời tìm kiếm các cách để xâm nhập thị trường, tạo ra các thuật ngữ mới, làm cho mọi thứ càng mơ hồ hơn, làm cho người mua công nghệ đang tìm kiếm một giải pháp hiệu quả với chi phí phù hợp đáp ứng nhu cầu của họ sẽ càng dễ “loạn” hơn.\n\n- Cách dễ hiểu nhất, điện toán đám mây đơn giản là sử dụng máy tính của người khác qua Internet.\n\n&gt;&gt;&gt; Xem thêm: <a href=\"https://nhanhoa.com/tin-tuc/bang-gia-hosting-o-nha-dang-ki-nao-re-nhat.html\">Hosting giá rẻ tốt nhất </a>- Nỗi lo của doanh nghiệp kinh doanh Online\n\n<em>Cloud hosting là gì?</em>\n<p dir=\"ltr\">- <em>Cloud hosting là gì?</em> Đây là một dịch vụ có chức năng như web hosting đó là lưu trữ các dữ liệu, ứng dụng trên nền website tuy nhiên lại được phân chia ở dạng cloud nên sở hữu rất nhiều những đặc điểm nổi trội. Khi sử dụng cloud hosting thì người dùng sẽ tránh được những tác động từ việc dùng hosting chung một server nhưng vẫn đảm bảo mức giá rẻ. Dịch vụ đa phần được cung cấp cho khách hàng là doanh nghiệp , tổ chức, website TMĐT, thậm chí là các cá nhân, diễn đàn có yêu cầu cao về quản lý thông tin dữ liệu hiệu quả, ổn định, khả năng mở rộng bất cứ khi nào có nhu cầu, tốc độ truy cập website cực nhanh.</p>\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: vps - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-5]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/may-chu/may-chu-ao-vps.html\">vps</a></em> - Tìm hiểu dịch vụ tại Nhân Hòa với ưu đãi tốt hàng đầu thị trường</span>\n\n<img title=\"cloud-hosting-la-gi-01.jpg\" src=\"https://nhanhoa.com/uploads/attach/1532662459_cloud-hosting-la-gi-01.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-01\" width=\"682\" height=\"398\" />\n<p dir=\"ltr\"><em>- </em>Nguyên lý hoạt động của<em> Cloud Hosting là gì? </em>Hoạt động dựa vào nền tảng điện toán đám mây (cloud computing), cải thiện được tốc độ truy cập hosting, tăng khả năng bảo mật dữ liệu cũng như hạn chế việc hosting bị chết đến 99%. Cloud Hosting sẽ mang lại cho khách hàng sự yên tâm và mang lại hiệu quả cao nhất trong kinh doanh và công việc.</p>\n&gt;&gt;&gt; Xem thêm: Tìm hiểu những nhà cung cấp <a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\">h</a><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">osting tốt nhất hiện nay</span></a><em><a href=\"https://nhanhoa.com/tin-tuc/3-loai-hosting-tot-nhat-hien-nay-khong-the-bo-qua.html\"><span data-sheets-userformat=\"{\" data-sheets-value=\"{\">\n</span></a></em>\n\n<em>Cloud service là gì?</em>\n\n- <em>Cloud service là gì?</em>Đây là một loại hình dịch vụ PaaS (Platform as a Service) với khả năng nâng cấp dễ dàng không ảnh hưởng đến các dữ liệu đang được vận hành, được thiết kế riêng nhằm đáp ứng nhu cầu của các website lớn mà VPS không thể đem lại.\n\n<img title=\"cloudserver_5.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735170_cloudserver_5.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-02\" width=\"600\" height=\"300\" />\n\n“Cloud Server sử dụng liên kết nhiều máy chủ vật lí với nhau, giảm rủi ro cho việc điều hành và phát triển server.”\n\nƯu điểm của <em>Cloud hosting là gì? Cloud service là gì?</em>\n\nCùng có tác dụng cung cấp cho khách hàng các máy chủ ảo tương tự như Virtual Private Server (VPS Server) nhưng Cloud Server đem lại chất lượng cao cấp hơn, đảm bảo độ tin cậy, hiệu quả về giá thành, tốc độ xử lý và khả năng mở rộng dễ dàng.\n\n<span data-sheets-value=\"{\">&gt;&gt; Xem thêm: cho thue hosting - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường\"}\" data-sheets-userformat=\"{\"2\":256,\"11\":3}\" data-sheets-formula=\"=R[0]C[-11]&amp;R[0]C[-3]&amp;R[0]C[-4]\"&gt;&gt;&gt;&gt; Xem thêm: <em><a href=\"https://nhanhoa.com/hosting/linux-hosting.html\">Cho thue hosting</a></em> - Tìm hiểu dịch vụ hosting giá tốt hàng đầu thị trường</span>\n\nPhương thức hoạt động như một máy chủ chuyên dụng (Dedicated Server), hỗ trợ được đa hệ điều hành (Windows, Linux…) và được cam kết tài nguyên thực khi mà CPU | RAM | File hệ thống | Hệ điều hành… được hoạt động độc lập trên mỗi máy chủ, Cloud Server hoàn toàn nhanh hơn, tốt hơn và mạnh mẽ hơn nhờ sức mạnh của nền tảng điện toán đám mây.\n\n<img title=\"cloudserver_6.jpg\" src=\"https://nhanhoa.com/uploads/attach/1510735177_cloudserver_6.jpg\" alt=\"cloud-hosting-la-gi-cloud-service-la-gi-03\" width=\"600\" height=\"338\" />\nHệ thống  Cloud Server sử dụng sức mạnh kết hợp của nhiều nút (node) phần cứng (mỗi nút là 1 máy chủ) thay vì một máy chủ duy nhất, chính vì vậy điều này dẫn đến dịch vụ máy chủ trên nền điện toán đám mây của chúng tôi sẽ có tốc độ gấp nhiều lần so với máy chủ chia sẻ thông thường.\n\nXem thêm: <a href=\"https://nhanhoa.com/tin-tuc/4-uu-diem-vuot-troi-cua-cloud-server-ma-moi-nguoi-can-biet.html\">4 Ưu điểm vượt trội của Cloud Server mà mọi người cần biết</a>', 'Thủ tục nhập khẩu máy điều hòa không khí', 'Ngành công nghệ thông tin Internet phát triển với một tốc độ chóng mặt, các tổ chức – doanh nghiệp nghiên cứu giải pháp thay thế cho việc phải bỏ ra một khoản đầu tư không hề nhỏ để mua/thuê – bảo trì – vận hành máy chủ (server).', 'inherit', 'closed', 'closed', '', '787-autosave-v1', '', '', '2020-02-19 07:26:02', '2020-02-19 07:26:02', '', 787, 'http://localhost/tracologistics/787-autosave-v1/', 0, 'revision', '', 0),
(1046, 1, '2020-02-19 07:27:53', '2020-02-19 07:27:53', '<h5>1. Thủ tục nhập khẩu máy điều hòa không khí: Căn cứ pháp lý</h5>\r\n<ul>\r\n 	<li>Quyết định 3482/QĐ-KHCN về danh mục hàng hóa phải kiểm tra chất lượng thuộc quản lý của Bộ khoa học công nghệ. Quyết định có hiệu lực kể từ ngày ký (8/12/2017) và thay thế cho QĐ 1171/2015/QĐ-BKHCN trước đây.</li>\r\n 	<li>Thông tư số 11/2012/TT-BKHCN ngày 12/4/2012 về việc ban hành QCVN 9:2012/BKHCN. Danh mục các mặt hàng thử nghiệm theo QCVN 9:2012/BKHCN: Máy hút bụi, Máy giặt, Tủ lạnh, Tủ giữ lạnh thương mại, tủ đá, điều hòa không khí, máy khoan cầm tay.</li>\r\n</ul>\r\n<em>Tương thích điện từ (EMC) là khả năng hoạt động thoả đáng của thiết bị hoặc hệ thống trong môi trường điện từ và không tạo ra nhiễu điện từ quá mức làm ảnh hưởng đến hoạt động đúng của thiết bị khác trong môi trường đó</em>\r\n<ul>\r\n 	<li>Thông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 ( Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)</li>\r\n 	<li>Công văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07/2017/TT-BKHCN ngày 16/6/2017</li>\r\n 	<li>Quyết định 04/2017/QĐ-TTg ngày 9 tháng 3 năm 2017 quy định danh mục dán nhãn năng lượng và lộ trình thực hiện</li>\r\n</ul>\r\n<em>Mặt hàng máy điều hòa không khí nằm trong danh mục phải kiểm tra chất lượng theo QCVN 9:2012/KHCN và dán nhãn năng lượng.</em>\r\n<h5>2. Thủ tục nhập khẩu máy điều hòa không khí: Quy trình và các bước thực hiện</h5>\r\n<ul>\r\n 	<li>Mã HS code máy điều hòa không khí: 84151010</li>\r\n 	<li>Thuế nhập khẩu ưu đãi: 25%, thuế tiêu thụ đặc biệt: 10%, thuế giá trị gia tăng: 10%.</li>\r\n 	<li>Nếu nhập từ Trung Quốc có FORM E: thuế nhập khẩu 5%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%, nhập từ Thái Lan và Malaysia có FORM D: thuế nhập khẩu 5%.</li>\r\n</ul>\r\n<strong><em>2.1. THỦ TỤC TRƯỚC KHI THÔNG QUAN</em></strong>\r\n\r\nĐể thông quan lô hàng, doanh nghiệp chỉ cần có 2 văn bản sau;\r\n<ul>\r\n 	<li>Xác nhận đã đăng ký kiểm tra chất lượng</li>\r\n 	<li>Phiếu kết quả thử nghiệm hiệu suất năng lượng tối thiểu hoặc công văn xác nhận đã đăng ký công bố hiệu suất năng lượng và dán nhãn năng lượng</li>\r\n</ul>\r\n<em>⇒ C</em><em>ác việc cần làm: Đăng ký kiểm tra chất lượng, thử nghiệm hiệu suất năng lượng</em>\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nĐăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\r\n 	<li>Hợp đồng (Sales contract)</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list)</li>\r\n 	<li>Vận tải đơn (House bill)</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng TP. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n<h6>BƯỚC 2:<em> </em></h6>\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list) 1 bản chụp</li>\r\n 	<li>Vận tải đơn (House Bill: Gốc hoặc bản chụp</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc</li>\r\n 	<li>Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n\r\n<strong><em>Lưu ý:  </em></strong>Trường hợp doanh nghiệp đã có kết quả thử nghiệm hiệu suất năng lượng có thể nộp cùng với xác nhận đã ký kiểm tra chất lượng để được thông quan lô hàng luôn mà không cần phải làm thủ tục đem hàng về kho bảo quản\r\n\r\nVì vậy, nếu bạn có sẵn mẫu tại Việt Nam thì nên mang đi thử nghiệm Hiệu suất năng lượng trước khi nhập hàng về để rút ngắn thời gian chờ đợi để được thông quan lô hàng.\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu đến 1 trong các trung tâm Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), để thử nghiệm và làm chứng nhận hợp quy.\r\n\r\nHoặc có thể liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc</li>\r\n 	<li>Tờ khai</li>\r\n 	<li>Certificate</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp\r\nSố lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý: </em></strong>Chứng nhận hợp quy máy điều hòa không khí có giá trị trong vòng 3 năm nên lô hàng tiếp theo doanh nghiệp KHÔNG phải làm bước này.\r\n<h6>BƯỚC 4:</h6>\r\nMang mẫu lên Vinacomin hoặc Quatest 3 để thử nghiệm hiệu suất năng lượng. Lưu ý phiếu thử nghiệm hiệu suất năng lượng có giá trị vô thời hạn cho model cùng chủng loại.\r\n\r\nSau khi có kết quả thử nghiệm hiệu suất năng lượng, doanh nghiệp nộp hồ sơ cùng với xác nhận đã đăng ký kiểm tra chất lượng để được thông quan.\r\n\r\n<em><strong>2.2 THỦ TỤC SAU THÔNG QUAN LÔ HÀNG:</strong></em>\r\n<h6>BƯỚC 5: TRẢ KẾT QUẢ KIỂM TRA CHẤT LƯỢNG CHO NƠI ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo hồ sơ đã hoàn thiện đúng thời gian quy định tại thông tư 07/2017”</em>\r\n<h6>BƯỚC 6: XÁC NHẬN CÔNG BỐ ĐÃ ĐĂNG KÝ DÁN NHÃN NĂNG LƯỢNG CHO MÁY ĐIỀU HÒA KHÔNG KHÍ</h6>\r\nDoanh nghiệp lập hồ sơ và xin <strong><em>xác nhận công bố dán nhãn năng lượng </em></strong>của Vụ tiết kiệm năng lượng và phát triển bền vững – Bộ công thương<strong><em>.</em></strong>\r\n\r\nChứng từ này có tác dụng chứng minh doanh nghiệp đã công bố nhãn năng lượng cho các cơ quan liên quan khi đến kiểm tra. Đồng thời, dùng để thay thế phiếu kết quả thử nghiệm hiệu suất năng lượng trong quá trình thông quan lô hàng tiếp theo.\r\n\r\nTRACO Logistics đã có nhiều năm kinh nghiệm làm thủ tục, xin các giấy tờ liên quan cho các mặt hàng điện tử, điện lạnh, gia dụng. TRACO Logistics nhận nhập khẩu ủy thác các mặt hàng này. TRACO Logistics nắm rất rõ từng chi phí, thời gian hoàn thành công việc. Để được tư vấn ngay, Quý khách hàng vui lòng liên hệ TRACO Logistics.\r\n\r\nHi vọng được hợp tác cùng Quý khách hàng!', 'Thủ tục nhập khẩu máy điều hòa không khí', 'Bài viết chi tiết hướng dẫn thủ tục nhập khẩu máy điều hòa không khí. Doanh nghiệp có thể nắm vững quy trình và thủ tục thông quan hàng hóa.', 'inherit', 'closed', 'closed', '', '787-revision-v1', '', '', '2020-02-19 07:27:53', '2020-02-19 07:27:53', '', 787, 'http://localhost/tracologistics/787-revision-v1/', 0, 'revision', '', 0),
(1047, 1, '2020-02-19 07:29:26', '2020-02-19 07:29:26', '<strong>Hiện nay, Email đã trở thành một kênh trao đổi thông tin quan trọng của mỗi doanh nghiệp. Tuy nhiên thói quen sử dụng dịch vụ email miễn phí đã khiến các doanh nghiệp phải đối mặt với nhiều hiểm họa tiềm ẩn.</strong>\n\nVậy đâu là giải pháp cho doanh nghiệp giữa thực tại này?\n\nTrong cuộc trao đổi giữa Nhịp Sống Kinh Tế với ông Hồ Trung Dũng – CEO Công ty Phần mềm Nhân Hòa, một đơn vị cung cấp dịch vụ email có thâm niên và nghiệp vụ hàng đầu tại Việt Nam, vị chuyên gia này đã đưa ra<span class=\"text_exposed_show\"> nhiều lời khuyên, lời chia sẻ vô cùng hữu ích cho các doanh nghiệp.</span>\n\nVới con số thống kê đáng ngạc nhiên là tại Việt Nam có tới 96% doanh nghiệp sử dụng email mà tại đó 90% email là kênh giao tiếp chính thì có tới 80% doanh nghiệp gặp vấn đề với dịch vụ này.\n\n<em>Chi tiết bài báo:</em> <strong><a href=\"https://cafebiz.vn/email-mien-phi-va-nhung-nguy-co-tiem-an-cho-doanh-nghiep-2019010211402962.chn\">Tại đây</a></strong>\n\nMột trong những nguyên nhân chính là do rất nhiều doanh nghiệp có thói quen sử dụng dịch vụ email miễn phí/ dịch vụ email có chất lượng không đảm bảo làm email giao dịch. Việc đó vô hình chung sẽ khiến doanh nghiệp phải đối mặt với rất nhiều nguy cơ như bị giả mạo email, hay email gửi đi bị rơi vào thư rác. Ngoài ra doanh nghiệp cũng khó kiểm soát được việc sử dụng email của nhân viên và có thể bị mất khách hàng khi nhân viên nghỉ việc, do các dịch vụ email này không hỗ trợ hoặc rất hạn chế các công cụ quản lý người dùng.\n\nThực tế đã có nhiều trường hợp đáng tiếc xảy ra như việc bị hacker giả mạo email để lừa đảo các doanh nghiệp, lợi dụng khả năng bảo mật kém của dịch vụ và sự bất cẩn của người dùng để xâm nhập vào hệ thống email doanh nghiệp nhằm mục đích nắm bắt thông tin trao đổi giữa doanh nghiệp và đối tác/khách hàng. Sau đó harker tạo một địa chỉ email giả mạo hoặc truy cập vào tài khoản nạn nhân để gửi email với nội dung lừa đảo nhằm chiếm đoạt tiền của doanh nghiệp.\n\nĐể đề phòng những hiểm họa tiềm ẩn này, doanh nghiệp cần một giải pháp email toàn diện và khác biệt với những tính năng sau:\n\n- Tạo và quản lý email theo tên miền riêng, loại bỏ 100% nguy cơ giả mạo email\n- Công nghệ điện toán đám mây và SMTP ưu việt đảm bảo tỷ lệ gửi email vào inbox lên tới 99%\n- Giám sát và hỗ trợ kịp thời việc giao dịch email cho nhân viên thông qua tài khoản quản trị dịch vụ\n- Dễ dàng kiểm soát email của nhân viên khi nghỉ việc, đổi mật khẩu, chuyển quyền truy cập hoặc cài đặt chuyển tiếp cho nhân viên khác\n\nGiải pháp email chuyên nghiệp đến từ Nhân Hòa phù hợp với mọi quy mô đối tượng doanh nghiệp/tổ chức sẽ đem lại một cách thức sử dụng, trải nghiệm và đánh giá hoàn toàn khác về kênh giao tiếp thông tin này, và quan trọng hơn hết là hoàn toàn để lại nỗi lo về các hiểm họa tiềm ẩn sau lưng.\n\n---\nNhân Hòa là đơn vị cung cấp dịch vụ tên miền, dịch vụ email, máy chủ lớn tại Việt Nam, thành lập từ 2002, hiện đang cung cấp cho hơn 60,000 khách hàng. Dịch vụ email của Nhân Hòa là giải pháp toàn diện đáp ứng mọi nhu cầu về email của doanh nghiệp.\n\nĐặc biệt Công ty áp dụng chính sách ưu đãi nhằm nâng cao trải nghiệm chất lượng dịch vụ của khách hàng khi hoàn tiền trong 30 ngày nếu khách hàng không hài lòng về dịch vụ và ưu đãi tới 20% phí dịch vụ email khi đăng ký.', 'Thủ tục nhập khẩu bàn là điện', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu bàn là điện, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'inherit', 'closed', 'closed', '', '784-autosave-v1', '', '', '2020-02-19 07:29:26', '2020-02-19 07:29:26', '', 784, 'http://localhost/tracologistics/784-autosave-v1/', 0, 'revision', '', 0),
(1051, 1, '2020-02-19 07:30:58', '2020-02-19 07:30:58', '<h5>1. Căn cứ pháp lý</h5>\r\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\r\n\r\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\r\n\r\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\r\n\r\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\r\n<h5>2. Quy trình và các bước nhập khẩu bàn là điện:</h5>\r\n<strong><em>A. HS code bàn là điện và thuế suất</em></strong>\r\n<ul>\r\n 	<li>Mã Hs code: 85164090</li>\r\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 25%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%</li>\r\n 	<li>Thuế giá trị tăng: 10%</li>\r\n</ul>\r\n<strong><em>B. Quy trình hải quan nhập khẩu bàn là điện</em></strong>\r\n\r\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nTổ chức, cá nhân nhập khẩu đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc;</li>\r\n 	<li>hợp đồng (sales contract),</li>\r\n 	<li>hóa đơn thương mại (commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (packing list),</li>\r\n 	<li>Vận tải đơn (House bill),</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n\r\n<strong><em>Bước 2:</em></strong><em> </em>\r\n\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc;</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp,</li>\r\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp,</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\r\n 	<li>Tờ khai, Certificate,</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\r\n 	<li>Số lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý:</em></strong> Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\r\n\r\n<strong><em>Bước 4:</em></strong> Kết quả đạt chất lượng nhập khẩu\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn),</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo,</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem,</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại,</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\r\n<h6><strong><em>BƯỚC 5:</em></strong></h6>\r\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\r\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu bàn là điện', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu bàn là điện, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'inherit', 'closed', 'closed', '', '784-revision-v1', '', '', '2020-02-19 07:30:58', '2020-02-19 07:30:58', '', 784, 'http://localhost/tracologistics/784-revision-v1/', 0, 'revision', '', 0),
(1052, 1, '2020-02-19 08:02:56', '2020-02-19 08:02:56', '<h5>1. Căn cứ pháp lý</h5>\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\n\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\n\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\n\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\n<h5>2. Quy trình và các bước nhập dụng cụ đun nước nóng tức thời (cây nóng lạnh)</h5>\n<em><strong>A. HS code dụng cụ đun nước nóng và thuế suất</strong></em>\n<ul>\n 	<li>Mã Hs code: 85161010</li>\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 20%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 20%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%.</li>\n 	<li>Thuế giá trị tăng: 10%</li>\n</ul>\n<strong><em>B. Quy trình hải quan nhập khẩu dụng cụ đun nước nóng tức thời</em></strong>\n\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\n<h6>BƯỚC 1:</h6>\nTổ chức, cá nhân nhập khẩu Đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\n\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\n<ul>\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\n 	<li>Hợp đồng (sales contract)</li>\n 	<li>Hóa đơn thương mại (commercial invoice)</li>\n 	<li>Quy cách đóng gói (packing list)</li>\n 	<li>Vận tải đơn (House bill)</li>\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\n</ul>\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM.\n\nSau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\n<h6>BƯỚC 2:</h6>\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan đó.\n\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\n<ul>\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp</li>\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp</li>\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\n</ul>\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\n<h6>BƯỚC 3:</h6>\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\n\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\n<ul>\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\n 	<li>Tờ khai, Certificate</li>\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\n 	<li>Số lượng mẫu: 1 mẫu</li>\n</ul>\n<strong><em>Lưu ý: </em></strong>Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\n<h6>BƯỚC 4: KẾT QUẢ ĐẠT CHẤT LƯỢNG NHẬP KHẨU</h6>\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\n<ul>\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại, tờ khai: 1 bản chụp</li>\n 	<li>Nộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.</li>\n 	<li>Nộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.</li>\n</ul>\n–&gt;<em> Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\n\n&nbsp;\n<h6>BƯỚC 5:</h6>\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\n\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu cây đun nước nóng tức thời', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu cây đun nước nóng tức thời, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'inherit', 'closed', 'closed', '', '781-autosave-v1', '', '', '2020-02-19 08:02:56', '2020-02-19 08:02:56', '', 781, 'http://localhost/tracologistics/781-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1054, 1, '2020-02-19 08:04:41', '2020-02-19 08:04:41', '<h5>1. Căn cứ pháp lý</h5>\r\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\r\n\r\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\r\n\r\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\r\n\r\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\r\n<h5>2. Quy trình và các bước nhập dụng cụ đun nước nóng tức thời (cây nóng lạnh)</h5>\r\n<em><strong>A. HS code dụng cụ đun nước nóng và thuế suất</strong></em>\r\n<ul>\r\n 	<li>Mã Hs code: 85161010</li>\r\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 20%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 20%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%.</li>\r\n 	<li>Thuế giá trị tăng: 10%</li>\r\n</ul>\r\n<strong><em>B. Quy trình hải quan nhập khẩu dụng cụ đun nước nóng tức thời</em></strong>\r\n\r\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\r\n<h6>BƯỚC 1:</h6>\r\nTổ chức, cá nhân nhập khẩu Đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\r\n 	<li>Hợp đồng (sales contract)</li>\r\n 	<li>Hóa đơn thương mại (commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (packing list)</li>\r\n 	<li>Vận tải đơn (House bill)</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM.\r\n\r\nSau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n<h6>BƯỚC 2:</h6>\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp</li>\r\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\r\n 	<li>Tờ khai, Certificate</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\r\n 	<li>Số lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý: </em></strong>Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\r\n<h6>BƯỚC 4: KẾT QUẢ ĐẠT CHẤT LƯỢNG NHẬP KHẨU</h6>\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại, tờ khai: 1 bản chụp</li>\r\n 	<li>Nộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.</li>\r\n 	<li>Nộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.</li>\r\n</ul>\r\n–&gt;<em> Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\r\n\r\n&nbsp;\r\n<h6>BƯỚC 5:</h6>\r\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\r\n\r\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu cây đun nước nóng tức thời', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu cây đun nước nóng tức thời, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'inherit', 'closed', 'closed', '', '781-revision-v1', '', '', '2020-02-19 08:04:41', '2020-02-19 08:04:41', '', 781, 'http://localhost/tracologistics/781-revision-v1/', 0, 'revision', '', 0),
(1055, 1, '2020-02-19 08:11:08', '2020-02-19 08:11:08', '[section]\n\n<h2 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tin nổi bật</span></h2>\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"circle\" auto_slide=\"5000\" posts=\"6\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n[/section]\n[section]\n\n<h2 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tin chuyên nghành</span></h2>\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"circle\" auto_slide=\"5000\" cat=\"85\" posts=\"6\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n[/section]', 'Trang chủ - Tin nổi bật', '', 'inherit', 'closed', 'closed', '', '1040-revision-v1', '', '', '2020-02-19 08:11:08', '2020-02-19 08:11:08', '', 1040, 'http://localhost/tracologistics/1040-revision-v1/', 0, 'revision', '', 0),
(1096, 1, '2020-02-20 15:50:27', '2020-02-20 08:50:27', '<h2 class=\"bg-tongquan bg-tongquan-service\">Vận Tải Đường Biển</h2>\r\n<strong>Taurus Logistics</strong> cung cấp <strong>dịch vụ vận chuyển đường biển quốc tế </strong>cho hàng hóa xuất nhập khẩu từ các Cảng Biển trên Thế Giới về Hồ Chí Minh, Hải Phòng, Đà Nẵng, Qui Nhơn theo các phương thức giao hàng khác nhau như giao nhận hàng tại cảng (CY-CY) (CFS-CFS), giao nhận hàng tại xưởng (DOOR–CY) (CY-DOOR) và giao hàng đến tận tay người nhận (DOOR-DOOR).\r\n<h2>Vận tải đường biển quốc tế</h2>\r\nVới mạng lưới đại lý trải rộng trên tất cả các cảng biển trên thế giới, <strong>Taurus </strong><strong>Logistics</strong> có giá tốt với các hãng vận tải biển quốc tế lớn và uy tín như ONE, CMA, MAERSK, HAPAG-LLOYD, EVERGREEN, MSC, COSCO, PIL… <strong>Taurus </strong><strong>Logistics</strong> là một trong những nhà cung cấp dịch vụ vận tải biển hàng đầu của Việt Nam đối với các tuyến đường đến Bắc và Nam Mỹ, Châu Âu, Châu Á… đảm bảo cung cấp những dịch vụ đáng tin cậy, hiệu quả về chi phí và đáp ứng mọi nhu cầu về vận chuyển đường biển quốc tế của khách hàng.\r\n\r\n<strong>Dịch vụ của chúng tôi</strong>\r\n<ul>\r\n 	<li>Dịch vụ vận chuyển <strong>hàng nguyên container (FCL)</strong> bằng đường biển</li>\r\n 	<li>Dịch vụ vận chuyển <strong>hàng lẻ (LCL</strong>) bằng đường biển</li>\r\n 	<li>Dịch vụ vận chuyển <strong>hàng lạnh</strong> bằng đường biển</li>\r\n 	<li>Dịch vụ vận chuyển <strong>hàng siêu trường, siêu trọng</strong> bằng đường biển</li>\r\n 	<li>Dịch vụ vận chuyển, <strong>di dời máy móc, thiết bị</strong> nhà xưởng</li>\r\n 	<li>Dịch vụ vận chuyển <strong>hàng nguy hiểm (IMO)</strong> bằng đường biển</li>\r\n</ul>', 'Vận Tải Đường Biển', '', 'publish', 'closed', 'closed', '', 'van-tai-duong-bien', '', '', '2020-02-20 15:50:27', '2020-02-20 08:50:27', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1096', 0, 'service', '', 0),
(1098, 1, '2020-02-20 15:52:31', '2020-02-20 08:52:31', 'Nội dung đang được cập nhật', 'Vận tải hàng không', '', 'publish', 'closed', 'closed', '', 'van-tai-hang-khong', '', '', '2020-02-20 15:52:31', '2020-02-20 08:52:31', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1098', 0, 'service', '', 0),
(1100, 1, '2020-02-20 15:53:40', '2020-02-20 08:53:40', 'Nội dung đang được cập nhật', 'Vận tải đường bộ', '', 'publish', 'closed', 'closed', '', 'van-tai-duong-bo', '', '', '2020-02-20 15:53:40', '2020-02-20 08:53:40', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1100', 0, 'service', '', 0),
(1102, 1, '2020-02-20 15:55:00', '2020-02-20 08:55:00', 'Nội dung đang được cập nhật', 'Thủ tục hải quan', '', 'publish', 'closed', 'closed', '', 'thu-tuc-hai-quan', '', '', '2020-02-20 15:55:00', '2020-02-20 08:55:00', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1102', 0, 'service', '', 0),
(1104, 1, '2020-02-20 15:57:04', '2020-02-20 08:57:04', 'Nội dung đang được cập nhật', 'Dịch vụ gom hàng lẻ', '', 'publish', 'closed', 'closed', '', 'dich-vu-gom-hang-le', '', '', '2020-02-20 15:57:04', '2020-02-20 08:57:04', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1104', 0, 'service', '', 0),
(1106, 1, '2020-02-20 15:59:18', '2020-02-20 08:59:18', 'Nội dung đang được cập nhật', 'Vận tải đa phương thức', '', 'publish', 'closed', 'closed', '', 'van-tai-da-phuong-thuc', '', '', '2020-02-20 15:59:18', '2020-02-20 08:59:18', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1106', 0, 'service', '', 0),
(1108, 1, '2020-02-20 16:00:25', '2020-02-20 09:00:25', '', 'Chuyển phát nhanh quốc tế', '', 'publish', 'closed', 'closed', '', 'chuyen-phat-nhanh-quoc-te', '', '', '2020-02-20 16:00:25', '2020-02-20 09:00:25', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1108', 0, 'service', '', 0),
(1110, 1, '2020-02-20 16:03:02', '2020-02-20 09:03:02', 'Nội dung đang được cập nhật', 'Dịch vụ xuất nhập khẩu', '', 'publish', 'closed', 'closed', '', 'dich-vu-xuat-nhap-khau', '', '', '2020-02-20 16:03:02', '2020-02-20 09:03:02', '', 0, 'http://localhost/tracologistics/?post_type=service&#038;p=1110', 0, 'service', '', 0),
(1112, 1, '2020-02-20 16:05:55', '0000-00-00 00:00:00', '', 'Dịch vụ', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-20 16:05:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/tracologistics/?p=1112', 1, 'nav_menu_item', '', 0),
(1131, 1, '2020-02-20 17:20:46', '2020-02-20 10:20:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chọn', 'tuy-chon', 'publish', 'closed', 'closed', '', 'group_5e4e5d5e45e7d', '', '', '2020-02-20 17:20:46', '2020-02-20 10:20:46', '', 0, 'http://localhost/tracologistics/?post_type=acf-field-group&#038;p=1131', 0, 'acf-field-group', '', 0),
(1132, 1, '2020-02-20 17:20:46', '2020-02-20 10:20:46', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Tin nổi bật', 'newshot', 'publish', 'closed', 'closed', '', 'field_5e4e5d6237f9f', '', '', '2020-02-20 17:20:46', '2020-02-20 10:20:46', '', 1131, 'http://localhost/tracologistics/?post_type=acf-field&p=1132', 0, 'acf-field', '', 0),
(1136, 1, '2020-02-20 17:45:41', '2020-02-20 10:45:41', '<h5>1. Thủ tục nhập khẩu máy điều hòa không khí: Căn cứ pháp lý</h5>\r\n<ul>\r\n 	<li>Quyết định 3482/QĐ-KHCN về danh mục hàng hóa phải kiểm tra chất lượng thuộc quản lý của Bộ khoa học công nghệ. Quyết định có hiệu lực kể từ ngày ký (8/12/2017) và thay thế cho QĐ 1171/2015/QĐ-BKHCN trước đây.</li>\r\n 	<li>Thông tư số 11/2012/TT-BKHCN ngày 12/4/2012 về việc ban hành QCVN 9:2012/BKHCN. Danh mục các mặt hàng thử nghiệm theo QCVN 9:2012/BKHCN: Máy hút bụi, Máy giặt, Tủ lạnh, Tủ giữ lạnh thương mại, tủ đá, điều hòa không khí, máy khoan cầm tay.</li>\r\n</ul>\r\n<em>Tương thích điện từ (EMC) là khả năng hoạt động thoả đáng của thiết bị hoặc hệ thống trong môi trường điện từ và không tạo ra nhiễu điện từ quá mức làm ảnh hưởng đến hoạt động đúng của thiết bị khác trong môi trường đó</em>\r\n<ul>\r\n 	<li>Thông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 ( Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)</li>\r\n 	<li>Công văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07/2017/TT-BKHCN ngày 16/6/2017</li>\r\n 	<li>Quyết định 04/2017/QĐ-TTg ngày 9 tháng 3 năm 2017 quy định danh mục dán nhãn năng lượng và lộ trình thực hiện</li>\r\n</ul>\r\n<em>Mặt hàng máy điều hòa không khí nằm trong danh mục phải kiểm tra chất lượng theo QCVN 9:2012/KHCN và dán nhãn năng lượng.</em>\r\n<h5>2. Thủ tục nhập khẩu máy điều hòa không khí: Quy trình và các bước thực hiện</h5>\r\n<ul>\r\n 	<li>Mã HS code máy điều hòa không khí: 84151010</li>\r\n 	<li>Thuế nhập khẩu ưu đãi: 25%, thuế tiêu thụ đặc biệt: 10%, thuế giá trị gia tăng: 10%.</li>\r\n 	<li>Nếu nhập từ Trung Quốc có FORM E: thuế nhập khẩu 5%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%, nhập từ Thái Lan và Malaysia có FORM D: thuế nhập khẩu 5%.</li>\r\n</ul>\r\n<strong><em>2.1. THỦ TỤC TRƯỚC KHI THÔNG QUAN</em></strong>\r\n\r\nĐể thông quan lô hàng, doanh nghiệp chỉ cần có 2 văn bản sau;\r\n<ul>\r\n 	<li>Xác nhận đã đăng ký kiểm tra chất lượng</li>\r\n 	<li>Phiếu kết quả thử nghiệm hiệu suất năng lượng tối thiểu hoặc công văn xác nhận đã đăng ký công bố hiệu suất năng lượng và dán nhãn năng lượng</li>\r\n</ul>\r\n<em>⇒ C</em><em>ác việc cần làm: Đăng ký kiểm tra chất lượng, thử nghiệm hiệu suất năng lượng</em>\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nĐăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc</li>\r\n 	<li>Hợp đồng (Sales contract)</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list)</li>\r\n 	<li>Vận tải đơn (House bill)</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng TP. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n<h6>BƯỚC 2:<em> </em></h6>\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice)</li>\r\n 	<li>Quy cách đóng gói (Packing list) 1 bản chụp</li>\r\n 	<li>Vận tải đơn (House Bill: Gốc hoặc bản chụp</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc</li>\r\n 	<li>Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n\r\n<strong><em>Lưu ý:  </em></strong>Trường hợp doanh nghiệp đã có kết quả thử nghiệm hiệu suất năng lượng có thể nộp cùng với xác nhận đã ký kiểm tra chất lượng để được thông quan lô hàng luôn mà không cần phải làm thủ tục đem hàng về kho bảo quản\r\n\r\nVì vậy, nếu bạn có sẵn mẫu tại Việt Nam thì nên mang đi thử nghiệm Hiệu suất năng lượng trước khi nhập hàng về để rút ngắn thời gian chờ đợi để được thông quan lô hàng.\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu đến 1 trong các trung tâm Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), để thử nghiệm và làm chứng nhận hợp quy.\r\n\r\nHoặc có thể liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc</li>\r\n 	<li>Tờ khai</li>\r\n 	<li>Certificate</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp\r\nSố lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý: </em></strong>Chứng nhận hợp quy máy điều hòa không khí có giá trị trong vòng 3 năm nên lô hàng tiếp theo doanh nghiệp KHÔNG phải làm bước này.\r\n<h6>BƯỚC 4:</h6>\r\nMang mẫu lên Vinacomin hoặc Quatest 3 để thử nghiệm hiệu suất năng lượng. Lưu ý phiếu thử nghiệm hiệu suất năng lượng có giá trị vô thời hạn cho model cùng chủng loại.\r\n\r\nSau khi có kết quả thử nghiệm hiệu suất năng lượng, doanh nghiệp nộp hồ sơ cùng với xác nhận đã đăng ký kiểm tra chất lượng để được thông quan.\r\n\r\n<em><strong>2.2 THỦ TỤC SAU THÔNG QUAN LÔ HÀNG:</strong></em>\r\n<h6>BƯỚC 5: TRẢ KẾT QUẢ KIỂM TRA CHẤT LƯỢNG CHO NƠI ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn)</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo hồ sơ đã hoàn thiện đúng thời gian quy định tại thông tư 07/2017”</em>\r\n<h6>BƯỚC 6: XÁC NHẬN CÔNG BỐ ĐÃ ĐĂNG KÝ DÁN NHÃN NĂNG LƯỢNG CHO MÁY ĐIỀU HÒA KHÔNG KHÍ</h6>\r\nDoanh nghiệp lập hồ sơ và xin <strong><em>xác nhận công bố dán nhãn năng lượng </em></strong>của Vụ tiết kiệm năng lượng và phát triển bền vững – Bộ công thương<strong><em>.</em></strong>\r\n\r\nChứng từ này có tác dụng chứng minh doanh nghiệp đã công bố nhãn năng lượng cho các cơ quan liên quan khi đến kiểm tra. Đồng thời, dùng để thay thế phiếu kết quả thử nghiệm hiệu suất năng lượng trong quá trình thông quan lô hàng tiếp theo.\r\n\r\nTRACO Logistics đã có nhiều năm kinh nghiệm làm thủ tục, xin các giấy tờ liên quan cho các mặt hàng điện tử, điện lạnh, gia dụng. TRACO Logistics nhận nhập khẩu ủy thác các mặt hàng này. TRACO Logistics nắm rất rõ từng chi phí, thời gian hoàn thành công việc. Để được tư vấn ngay, Quý khách hàng vui lòng liên hệ TRACO Logistics.\r\n\r\nHi vọng được hợp tác cùng Quý khách hàng!', 'Thủ tục nhập khẩu máy điều hòa không khí', 'Bài viết chi tiết hướng dẫn thủ tục nhập khẩu máy điều hòa không khí. Doanh nghiệp có thể nắm vững quy trình và thủ tục thông quan hàng hóa.', 'inherit', 'closed', 'closed', '', '787-revision-v1', '', '', '2020-02-20 17:45:41', '2020-02-20 10:45:41', '', 787, 'http://localhost/tracologistics/787-revision-v1/', 0, 'revision', '', 0),
(1137, 1, '2020-02-20 17:46:04', '2020-02-20 10:46:04', '<h5>1. Căn cứ pháp lý</h5>\r\nQuyết định 3482/QĐ-KHCNngày ban hành 8 tháng 12 năm 2017 của Bộ Khoa học và Công Nghệ ban hành công bố danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng theo quy chuẩn kỹ thuật quốc gia thuộc trách nhiệm quản lý của Bộ Khoa học và Công Nghệ.\r\n\r\nThông tư số 21/2009/TT-BKHCN ngày 30/9/2009 về việc ban hành QCVN 4:2009/BKHCN, có hiệu lực từ ngày 01/6/2010 đối với thiết bị điện số thứ tự từ 1 đến 6 của Phụ lục ban hành kèm theo QCVN 4:2009/BKHCN.\r\n\r\nThông tư 07/2017/TT-BKHCN ngày 16/6/2017 về việc<strong> “</strong>Sửa đổi, bổ sung một số điều của Thông tư số 27/2012/TT-BKHCN ngày 12/12/2012 của Bộ trưởng Bộ Khoa học và Công nghệ quy định việc kiểm tra nhà nước về chất lượng hàng hóa nhập khẩu thuộc trách nhiệm quản lý của Bộ Khoa học và Công nghệ” (Danh mục hàng hóa nhập khẩu phải kiểm tra chất lượng thuộc quản lý của BKHCN quy định trong QĐ 1171/2015/QĐ-BKHCN)\r\n\r\nCông văn 2421/TĐC-HCHQ về việc hướng dẫn thực hiện thông tư 07-2017-BKHCN ngày 16/6/2017\r\n<h5>2. Quy trình và các bước nhập khẩu bàn là điện:</h5>\r\n<strong><em>A. HS code bàn là điện và thuế suất</em></strong>\r\n<ul>\r\n 	<li>Mã Hs code: 85164090</li>\r\n 	<li>Thuế nhập khẩu ưu đãi thông thường: 25%. Nhập từ Trung Quốc có FORM E: thuế nhập khẩu 10%. Nhập từ Hàn Quốc có FORM AK: thuế nhập khẩu: 25%. Nhập từ Thái Lan, Malaysia có FORM D: thuế nhập khẩu 0%</li>\r\n 	<li>Thuế giá trị tăng: 10%</li>\r\n</ul>\r\n<strong><em>B. Quy trình hải quan nhập khẩu bàn là điện</em></strong>\r\n\r\nCác việc cần làm: Đăng ký kiểm tra chất lượng, chứng nhận hợp quy\r\n<h6>BƯỚC 1: ĐĂNG KÝ KIỂM TRA CHẤT LƯỢNG</h6>\r\nTổ chức, cá nhân nhập khẩu đăng ký kiểm tra chất lượng tại Chi cục tiêu chuẩn đo lường chất lượng các tỉnh. Mở tờ khai hải quan tại chi cục nào thì đăng ký tại tỉnh, thành phố đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký Kiểm tra chất lượng theo mẫu: 4 bản gốc;</li>\r\n 	<li>hợp đồng (sales contract),</li>\r\n 	<li>hóa đơn thương mại (commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (packing list),</li>\r\n 	<li>Vận tải đơn (House bill),</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): bản chụp của tổ chức cá nhân nhập khẩu.</li>\r\n</ul>\r\nNộp hồ sơ online trên trang <em>dichvucong4.haiphong.gov.vn</em> nếu hàng về cảng Hải Phòng và mở tờ khai tại chi cục hải quan Hải Phòng. Nếu tại Hồ Chí Minh thì nộp bản cứng tại Chi cục Tiêu chuẩn Đo lường Chất lượng Tp. HCM .Sau khi hệ thống phản hồi hồ sơ đạt thì nộp bản cứng. Chi cục tiêu chuẩn đo lường ký đóng dấu. 1 bản doanh nghiệp lưu và 1 bản nộp cho hải quan trong quá trình làm thủ tục hải quan.\r\n\r\n<strong><em>Bước 2:</em></strong><em> </em>\r\n\r\nMở tờ khai hải quan và làm thủ tục đem hàng về kho bảo quản. Hàng về cảng/ sân bay nào thì mở tờ khai tại chi cục hải quan quản lý cảng/ sân bay đó.\r\n\r\n<em><strong>Hồ sơ chuẩn bị:</strong></em>\r\n<ul>\r\n 	<li>Giấy đăng ký kiểm tra chất lượng 1 bản gốc;</li>\r\n 	<li>Hóa đơn thương mại (Commercial invoice),</li>\r\n 	<li>Quy cách đóng gói (Packing list): 1 bản chụp,</li>\r\n 	<li>Vận tải đơn (House Bill): Gốc hoặc bản chụp,</li>\r\n 	<li>Chứng nhận xuất xứ (C/O): Bản gốc, Giấy giới thiệu, lệnh,…</li>\r\n</ul>\r\n<em>–&gt; Hoàn tất thủ tục đem hàng về kho bảo quản</em>\r\n<h6>BƯỚC 3:</h6>\r\nMang mẫu lên Trung tâm 1 (Quatest 1), Trung tâm 3 (Quatest 3), Vietcert, Quacert để thử nghiệm và làm chứng nhận hợp quy, hoặc liên hệ Trung tâm kiểm tra sẽ xuống kho lấy mẫu.\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Hợp đồng thử nghiệm do Quatest làm: 2 bản gốc;</li>\r\n 	<li>Tờ khai, Certificate,</li>\r\n 	<li>Bản vẽ kỹ thuật: 1 bản chụp</li>\r\n 	<li>Số lượng mẫu: 1 mẫu</li>\r\n</ul>\r\n<strong><em>Lưu ý:</em></strong> Kiểm tra chất lượng theo lô hàng nhập khẩu, nên lô hàng nào về doanh nghiệp cũng phải làm bước này. Trường hợp lô đầu tiên nhập khẩu, mẫu đem đi thử nghiệm có thể bị phá hủy.\r\n\r\n<strong><em>Bước 4:</em></strong> Kết quả đạt chất lượng nhập khẩu\r\n\r\n<strong><em>Hồ sơ chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Chứng nhận hợp quy: 1 bản chụp (chứng nhận có thời hạn),</li>\r\n 	<li>Hình ảnh sản phẩm: in màu có đóng dấu treo,</li>\r\n 	<li>Tem hợp quy: 1 bản có dấu và 1 tem,</li>\r\n 	<li>Nhãn chính và nhãn phụ: 1 bản gốc mỗi loại,</li>\r\n 	<li>Tờ khai: 1 bản chụp</li>\r\n</ul>\r\nNộp online tại: <em>dichvucong4.haiphong.gov.vn</em> nếu đăng ký tại Hải Phòng, tại HCM nộp bản cứng.\r\nNộp bản cứng tại: Sau khi hồ sơ được duyệt trên hệ thống thì nộp bản cứng.\r\n<em>–&gt; Chi cục tiêu chuẩn đo lường ra “Thông báo kết quả đạt chất lượng nhập khẩu”</em>\r\n<h6><strong><em>BƯỚC 5:</em></strong></h6>\r\nThông quan tờ khai hải quan, chính thức hàng được phép lưu thông trên thị trường.\r\nHồ sơ chuẩn bị: Kết quả đạt chất lượng nhập khẩu (theo lô).', 'Thủ tục nhập khẩu bàn là điện', 'Khi doanh nghiệp muốn tìm hiểu thủ tục nhập khẩu bàn là điện, có thể đọc bài viết chi tiết hướng dẫn quy trình và thủ tục này.', 'inherit', 'closed', 'closed', '', '784-revision-v1', '', '', '2020-02-20 17:46:04', '2020-02-20 10:46:04', '', 784, 'http://localhost/tracologistics/784-revision-v1/', 0, 'revision', '', 0),
(1142, 0, '2020-02-21 03:38:54', '2020-02-21 03:38:54', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5391a2eed845.07437365-5tXCtcXRhRkvwisvrJYiwQx8wsnArrim', '', '', '2020-02-24 16:04:34', '2020-02-24 09:04:34', '', 0, 'http://localhost/tracologistics/?post_type=scheduled-action&#038;p=1142', 0, 'scheduled-action', '', 3),
(1173, 1, '2020-02-21 11:27:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-21 11:27:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/tracologistics/?p=1173', 1, 'nav_menu_item', '', 0),
(1237, 1, '2020-02-24 15:18:53', '2020-02-24 08:18:53', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1239\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Ship dịch vụ COD</strong></p>\n<p><span>trên phạm vi toàn quốc</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1241\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Hotline: 09123.123.123</strong></p>\n<p><span>tư vấn miễn phí 24/24</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1240\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><b>Thanh toán</b></p>\n<p><span>khi nhận hàng tại Hà Nội</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]', 'Header - Ship - Hotline - Thanh toán', '', 'trash', 'closed', 'closed', '', 'header-ship-hotline-thanh-toan__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/mypham/?post_type=blocks&#038;p=1237', 0, 'blocks', '', 0),
(1238, 1, '2020-02-24 15:18:53', '2020-02-24 08:18:53', '', 'Header - Ship - Hotline - Thanh toán', '', 'inherit', 'closed', 'closed', '', '1237-revision-v1', '', '', '2020-02-24 15:18:53', '2020-02-24 08:18:53', '', 1237, 'http://localhost/mypham/1237-revision-v1/', 0, 'revision', '', 0),
(1242, 1, '2020-02-24 15:24:48', '2020-02-24 08:24:48', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1239\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Ship dịch vụ COD</strong></p>\n<span>trên phạm vi toàn quốc</span>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1241\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Hotline: 09123.123.123</strong></p>\n<span>tư vấn miễn phí 24/24</span>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1240\" pos=\"left\" class=\"boxhd\"]\n\n<p><b>Thanh toán</b></p>\n<span>khi nhận hàng tại Hà Nội</span>\n\n[/featured_box]\n\n[/col]\n\n[/row]', 'Header - Ship - Hotline - Thanh toán', '', 'inherit', 'closed', 'closed', '', '1237-revision-v1', '', '', '2020-02-24 15:24:48', '2020-02-24 08:24:48', '', 1237, 'http://localhost/mypham/1237-revision-v1/', 0, 'revision', '', 0),
(1244, 1, '2020-02-24 15:31:04', '2020-02-24 08:31:04', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1239\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Ship dịch vụ COD</strong></p>\n<p><span>trên phạm vi toàn quốc</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1241\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><strong>Hotline: 09123.123.123</strong></p>\n<p><span>tư vấn miễn phí 24/24</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"1240\" img_width=\"40\" pos=\"left\" class=\"boxhd\"]\n\n<p><b>Thanh toán</b></p>\n<p><span>khi nhận hàng tại Hà Nội</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]', 'Header - Ship - Hotline - Thanh toán', '', 'inherit', 'closed', 'closed', '', '1237-revision-v1', '', '', '2020-02-24 15:31:04', '2020-02-24 08:31:04', '', 1237, 'http://localhost/mypham/1237-revision-v1/', 0, 'revision', '', 0),
(1255, 0, '2020-02-24 10:04:34', '2020-02-24 10:04:34', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e539fcf6d6ef9.16539512-AHrUAcrCEpd9Zf7EYt3lauvlNz5EJhT3', '', '', '2020-02-24 17:05:03', '2020-02-24 10:05:03', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1255', 0, 'scheduled-action', '', 3),
(1256, 0, '2020-02-24 10:04:35', '2020-02-24 10:04:35', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e539fd0083ed0.44462517-2qeejqGaohUmk4BCo6bXJFKT5kPLs7au', '', '', '2020-02-24 17:05:04', '2020-02-24 10:05:04', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1256', 0, 'scheduled-action', '', 3),
(1258, 1, '2020-02-24 16:38:34', '2020-02-24 09:38:34', '', 'Chăm sóc & dưỡng da mặt', '', 'publish', 'closed', 'closed', '', 'cham-soc-duong-da-mat', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1258', 4, 'nav_menu_item', '', 0),
(1259, 1, '2020-02-24 16:38:34', '2020-02-24 09:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1259', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1259', 5, 'nav_menu_item', '', 0),
(1260, 1, '2020-02-24 16:38:34', '2020-02-24 09:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1260', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1260', 6, 'nav_menu_item', '', 0),
(1261, 1, '2020-02-24 16:38:34', '2020-02-24 09:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1261', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1261', 7, 'nav_menu_item', '', 0),
(1262, 1, '2020-02-24 16:38:34', '2020-02-24 09:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '1262', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1262', 8, 'nav_menu_item', '', 0),
(1263, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1263', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1263', 9, 'nav_menu_item', '', 0),
(1264, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1264', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1264', 1, 'nav_menu_item', '', 0),
(1265, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1265', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 130, 'http://localhost/mypham/?p=1265', 2, 'nav_menu_item', '', 0),
(1266, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1266', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 130, 'http://localhost/mypham/?p=1266', 3, 'nav_menu_item', '', 0),
(1267, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1267', '', '', '2020-02-24 21:19:44', '2020-02-24 14:19:44', '', 0, 'http://localhost/mypham/?p=1267', 10, 'nav_menu_item', '', 0),
(1268, 1, '2020-02-24 16:38:35', '2020-02-24 09:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '1268', '', '', '2020-02-24 21:19:45', '2020-02-24 14:19:45', '', 0, 'http://localhost/mypham/?p=1268', 11, 'nav_menu_item', '', 0),
(1270, 1, '2020-02-24 16:42:33', '2020-02-24 09:42:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1270', '', '', '2020-03-04 14:28:50', '2020-03-04 07:28:50', '', 0, 'http://localhost/mypham/?p=1270', 3, 'nav_menu_item', '', 0),
(1271, 1, '2020-02-24 16:42:33', '2020-02-24 09:42:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1271', '', '', '2020-03-04 14:28:50', '2020-03-04 07:28:50', '', 0, 'http://localhost/mypham/?p=1271', 5, 'nav_menu_item', '', 0),
(1272, 1, '2020-02-24 16:42:33', '2020-02-24 09:42:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1272', '', '', '2020-03-04 14:28:50', '2020-03-04 07:28:50', '', 0, 'http://localhost/mypham/?p=1272', 6, 'nav_menu_item', '', 0),
(1273, 0, '2020-02-24 11:05:03', '2020-02-24 11:05:03', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53ae013c7190.31685407-yy7cyo2iKvvTuzTtscRDOD9CnOjLkPbi', '', '', '2020-02-24 18:05:37', '2020-02-24 11:05:37', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1273', 0, 'scheduled-action', '', 3),
(1274, 0, '2020-02-24 11:05:04', '2020-02-24 11:05:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53ae019d7ef1.14171536-Af9A0DcnmsFC2R3ejN1Lb5JbfxFIVGgH', '', '', '2020-02-24 18:05:37', '2020-02-24 11:05:37', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1274', 0, 'scheduled-action', '', 3),
(1278, 1, '2020-02-24 17:27:35', '2020-02-24 10:27:35', '[section]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1276\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:27:35', '2020-02-24 10:27:35', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1279, 1, '2020-02-24 17:29:05', '2020-02-24 10:29:05', '[section]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1276\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:29:05', '2020-02-24 10:29:05', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1280, 1, '2020-02-24 17:29:10', '2020-02-24 10:29:10', '[section]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1276\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:29:10', '2020-02-24 10:29:10', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1281, 1, '2020-02-24 17:29:24', '2020-02-24 10:29:24', '[section]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1276\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:29:24', '2020-02-24 10:29:24', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1282, 1, '2020-02-24 17:30:12', '2020-02-24 10:30:12', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1276\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:30:12', '2020-02-24 10:30:12', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1283, 1, '2020-02-24 17:33:14', '2020-02-24 10:33:14', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1277\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:33:14', '2020-02-24 10:33:14', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1284, 1, '2020-02-24 17:34:46', '2020-02-24 10:34:46', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1276\"]\n\n[ux_image id=\"1275\"]\n\n[ux_image id=\"1277\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:34:46', '2020-02-24 10:34:46', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1285, 1, '2020-02-24 17:35:47', '2020-02-24 10:35:47', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1276\"]\n\n[ux_image id=\"1275\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:35:47', '2020-02-24 10:35:47', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1286, 1, '2020-02-24 17:36:35', '2020-02-24 10:36:35', '[section padding=\"0px\" padding__sm=\"0px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1277\"]\n\n[ux_image id=\"1277\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chủ - Slide', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-24 17:36:35', '2020-02-24 10:36:35', '', 315, 'http://localhost/mypham/315-revision-v1/', 0, 'revision', '', 0),
(1287, 0, '2020-02-24 12:05:37', '2020-02-24 12:05:37', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53d3ccdc94e8.18333206-8KBu4K8G1ZnNzgtjOVo7xIDM4Qyywzsa', '', '', '2020-02-24 20:46:52', '2020-02-24 13:46:52', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1287', 0, 'scheduled-action', '', 3),
(1288, 0, '2020-02-24 12:05:37', '2020-02-24 12:05:37', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53d3cdc6fe83.43319283-iXlNUJG1rbRyKat9bag9w89KGV48VieS', '', '', '2020-02-24 20:46:53', '2020-02-24 13:46:53', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1288', 0, 'scheduled-action', '', 3),
(1289, 0, '2020-02-24 14:46:53', '2020-02-24 14:46:53', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53e1dde5e8d9.77828208-I5ABHvdTvBgVjN5XYkibWUsK1v12uJcQ', '', '', '2020-02-24 21:46:53', '2020-02-24 14:46:53', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1289', 0, 'scheduled-action', '', 3),
(1290, 0, '2020-02-24 14:46:53', '2020-02-24 14:46:53', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53e1df6f00d0.86775451-UJhtEnwwEgxxMb9cBtokY7Z4CoZrWaNx', '', '', '2020-02-24 21:46:55', '2020-02-24 14:46:55', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1290', 0, 'scheduled-action', '', 3),
(1292, 1, '2020-02-24 20:55:58', '0000-00-00 00:00:00', '', 'a', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-02-24 20:55:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/mypham/?p=1292', 1, 'nav_menu_item', '', 0),
(1302, 1, '2020-02-24 21:34:40', '2020-02-24 14:34:40', '<strong>Bộ sản phẩm gồm có:</strong>\r\n<ul>\r\n 	<li class=\"bullet-star\"><span class=\"text_exposed_show\">01 chai sữa dưỡng làm trắng Tomato Fresh Emulsion</span></li>\r\n 	<li class=\"bullet-star\"><span class=\"text_exposed_show\">01 Chai Nước hoa hồng Tomato Fresh Skin</span></li>\r\n 	<li class=\"bullet-star\"><span class=\"text_exposed_show\">01 Lọ kem dưỡng Tomato Fresh Cream</span></li>\r\n 	<li class=\"bullet-star\"><span class=\"text_exposed_show\">02 chai nhỏ nước hoa hồng + sữa dưỡng (dành cho khi đi du lịch, dã ngoại)</span></li>\r\n</ul>\r\n<span class=\"text_exposed_show\"><strong>Sữa Dưỡng Tomato Fresh Emulsion</strong>:</span>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n\r\n<span class=\"text_exposed_show\">Đây là sản phẩm sữa dưỡng da chiết xuất từ Arbutin và cà chua giàu lycopene, vitamin và khoáng chất, thấm sâu cải thiện làn da xỉn màu, hạn chế tối đa sự hình thành các melamin hắc tố của da. Sử dụng Tomato Fresh Emulsion giúp mang lại sức sống cho da, làm da bạn sáng căng mịn, mềm mượt!</span>\r\n\r\n</div>\r\n</div>', 'Bộ dưỡng da cà chua Foodaholic Tomato', 'Các sản phẩm dưỡng da từ Pháp luôn được các nàng tin tưởng, ngay cả những bạn khó tính nhất bởi chất lượng và độ an toàn, do được kiểm định vô cùng gắt gao.', 'publish', 'closed', 'closed', '', 'bo-duong-da-ca-chua-foodaholic-tomato', '', '', '2020-03-04 14:50:37', '2020-03-04 07:50:37', '', 0, 'http://localhost/mypham/?post_type=product&#038;p=1302', 0, 'product', '', 0),
(1308, 0, '2020-02-24 15:46:54', '2020-02-24 15:46:54', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53f00d6da424.84012174-Oy4m3E758cA139RAfzuco84AtJxzuJXW', '', '', '2020-02-24 22:47:25', '2020-02-24 15:47:25', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1308', 0, 'scheduled-action', '', 3),
(1309, 0, '2020-02-24 15:46:55', '2020-02-24 15:46:55', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e53f00db4fbf7.03844722-xHBq6iIb67olPHCHeQXjyeWhhCB8RwGw', '', '', '2020-02-24 22:47:25', '2020-02-24 15:47:25', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1309', 0, 'scheduled-action', '', 3),
(1317, 1, '2020-02-24 22:07:35', '2020-02-24 15:07:35', '<ul>\r\n 	<li class=\"bullet-star\">Xuất xứ : Hàn Quốc</li>\r\n 	<li class=\"bullet-star\">Hãng sản xuất : Dionel</li>\r\n 	<li class=\"bullet-star\">Dung tích : 5ml</li>\r\n 	<li class=\"bullet-star\">Màu sắc: Đen, xanh, trắng</li>\r\n</ul>\r\n<h2>Đặc điểm</h2>\r\nDionel secret love đang là nước hoa vùng kín đa năng với 2 công dụng chỉ cần 1 -2 giọt vừa làm sạch, vừa mang lại hương thơm dịu nhẹ, quyến rũ. Với chiết xuất từ các thành phần thiên nhiên như tinh dầu hoa anh thảo, chiết xuất hoắc hương … nước hoa vùng kín Dionel secret love an toàn với mọi loại da. Sản phẩm được bộ y tế Hàn Quốc cấp giấy phép đưa vào sử dụng\r\n\r\nĐặc điểm nước hoa vùng kín Dionel secret love\r\n– Nước hoa vùng kín Dionel secret love được chiết xuất từ các thành phần từ thiên nhiên như: dầu cây anh thảo, dầu hạt hướng dương, Anisaldehyde (thành phần quan trọng của cây hoắc hương), Squalane\r\n\r\n– Sản phẩm nước hoa vùng kín được bộ Y tế Hàn Quốc cấp phép\r\n\r\n– Mang lại hương thơm nhẹ nhàng, tinh tế với chỉ 1 – 2 giọt mỗi ngày\r\n\r\n– Sử dụng siêu tiết kiệm có thể dùng trong 10 – 12 tháng\r\n\r\n– Được đóng gói trong 1 chiếc lọ nhỏ xinh, dễ dàng mang theo một cách kín đáo\r\n\r\n– Có 2 phiên bản: Secret Love Black Edition và Secret Love White Edition\r\n\r\n+ Secret Love Black Edition: Nước hoa Secret Love phiên bản Black là sự kết hợp ngọt ngào của hương hoa cam, lan Nam Phi, cam đào và sự quyến rũ của hoa hồng, hoa nhài và hoa mộc lan.\r\n\r\n+ Secret Love White Edition: Phiên bản White của Secret Love mang đến hương thơm trong sạch, mịn màng và ngọt ngào của xạ hương trắng cùng sự phảng phất vừa nhẹ nhàng vừa sắc sảo của hương hoa.\r\n\r\n+ Secret Love màu xanh: hương bạc hà thơm mát\r\n\r\nCông dụng nước hoa vùng kín Dionel secret love\r\n– Đem lại hương thơm dịu nhẹ, quyến rũ cho vùng kín\r\n\r\n– Giúp làm sạch và loại bỏ mùi gây khó chịu\r\n\r\n– Khử trùng và cân bằng độ PH\r\n\r\n– Phù hợp với mọi loại da\r\n<h2>So sánh 3 mùi</h2>\r\n<ul>\r\n 	<li class=\"bullet-star\"><strong>MÀU TRẮNG:</strong> Mùi kiểu quyến rũ ngọt ngào ý</li>\r\n 	<li class=\"bullet-star\"><strong>M</strong><strong>ÀU ĐEN:</strong> Lọ đen thì mạnh mẽ sexy hơn. Mùi mạnh hơn xíu xiu</li>\r\n 	<li class=\"bullet-star\"><strong>MÀU XANH:</strong> Clean Cotton hương bạc hà mát lạnh khử mùi khó chịu, diệt vi khuẩn rất tốt nhé.</li>\r\n</ul>\r\nCách sử dụng nước hoa vùng kín Dionel secret love\r\n\r\n– Nhỏ 1-2 giọt vào quần lót mỗi ngày, dung dịch sẽ hút đi mùi khó chịu và tỏa ra hương dễ chịu một cách nhanh chóng\r\n\r\n– Khi tắm bồn: nhỏ 3~4 giọt vào nước. Mùi hương dễ chịu của nước hoa sẽ lan tỏa giúp bạn thư thái\r\n\r\n– Khi đến kỳ kinh nguyệt: Nhỏ 1-2 giọt vào băng vệ sinh, giúp khử mùi khó chịu và cân bằng độ PH\r\n\r\n– Trong ngày hẹn hò: Nhỏ 1~2 giọt lên quần lót, cổ tay, cổ, gáy. Mùi hương của Secret Love sẽ tạo cho bạn một bầu không khí lãng mạn, ngọt ngà', 'Nước hoa vùng kín Dionel Secret Love', '', 'publish', 'closed', 'closed', '', 'nuoc-hoa-vung-kin-dionel-secret-love', '', '', '2020-03-04 14:50:03', '2020-03-04 07:50:03', '', 0, 'http://localhost/mypham/?post_type=product&#038;p=1317', 0, 'product', '', 0),
(1332, 0, '2020-02-24 16:47:25', '2020-02-24 16:47:25', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e54f45f760ce7.14360014-qyzfIuQJv2WR2HHvXrSN3WipQZqbuDQo', '', '', '2020-02-25 17:18:06', '2020-02-25 10:18:06', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1332', 0, 'scheduled-action', '', 3),
(1333, 0, '2020-02-24 16:47:25', '2020-02-24 16:47:25', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e54f487410e69.40688140-zd6eRnJb48lmOdrVO4iKzix6uzAnJcv4', '', '', '2020-02-25 17:18:47', '2020-02-25 10:18:47', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1333', 0, 'scheduled-action', '', 3),
(1334, 0, '2020-02-25 11:18:08', '2020-02-25 11:18:08', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e553690413378.27743194-Y4kJkwcP4MWLC0UFcytIwrfKM7qwfJfL', '', '', '2020-02-25 22:00:31', '2020-02-25 15:00:31', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1334', 0, 'scheduled-action', '', 3),
(1335, 0, '2020-02-25 11:18:47', '2020-02-25 11:18:47', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e553691c08377.28990412-DXgb791gLWr1O1p6RjiwGPZq9YKbJtkZ', '', '', '2020-02-25 22:00:33', '2020-02-25 15:00:33', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1335', 0, 'scheduled-action', '', 3),
(1336, 0, '2020-02-25 16:00:32', '2020-02-25 16:00:32', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5cd5c0033a11.63854805-CBNXQSOvcYMZGvfMtQlXySz4T9HeUtEV', '', '', '2020-03-02 16:45:35', '2020-03-02 09:45:35', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1336', 0, 'scheduled-action', '', 3),
(1337, 0, '2020-02-25 16:00:33', '2020-02-25 16:00:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5cd5c0c967a9.08192708-36KmRAkr7bQZkdwHczRONXBnK419cxJd', '', '', '2020-03-02 16:45:36', '2020-03-02 09:45:36', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1337', 0, 'scheduled-action', '', 3),
(1338, 0, '2020-03-02 10:45:36', '2020-03-02 10:45:36', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5ce78822fea0.86434482-hmBXzUqOYKQtEiY56oLRn1n9IuuA7gFz', '', '', '2020-03-02 18:01:28', '2020-03-02 11:01:28', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1338', 0, 'scheduled-action', '', 3),
(1339, 0, '2020-03-02 10:45:36', '2020-03-02 10:45:36', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5ce7888c6330.74799992-gRjsLLCuo873CD9ZmsfqLteenSvgmm91', '', '', '2020-03-02 18:01:28', '2020-03-02 11:01:28', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1339', 0, 'scheduled-action', '', 3),
(1342, 0, '2020-03-02 12:01:28', '2020-03-02 12:01:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5dc7707f5e79.82318529-9S2khFJFJTepq6ZhpdERahG38jFOJGNI', '', '', '2020-03-03 09:56:48', '2020-03-03 02:56:48', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1342', 0, 'scheduled-action', '', 3),
(1343, 0, '2020-03-02 12:01:28', '2020-03-02 12:01:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5dc7713cc205.70425417-YeLzRSTIYkpfvcyYkt4HbpNi9dJe9vvm', '', '', '2020-03-03 09:56:49', '2020-03-03 02:56:49', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1343', 0, 'scheduled-action', '', 3),
(1346, 0, '2020-03-03 03:56:48', '2020-03-03 03:56:48', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5dd69ca5cda5.60729167-SFnuTXOIsBhvXFibbI1CC3t914G7uDiK', '', '', '2020-03-03 11:01:32', '2020-03-03 04:01:32', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1346', 0, 'scheduled-action', '', 3);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1347, 0, '2020-03-03 03:56:49', '2020-03-03 03:56:49', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5dd69d42b420.28590748-4WEpiyfznqWHMcMPNk4rEF9dTUXfBY5G', '', '', '2020-03-03 11:01:33', '2020-03-03 04:01:33', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1347', 0, 'scheduled-action', '', 3),
(1348, 0, '2020-03-03 05:01:32', '2020-03-03 05:01:32', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5de4be10a276.63992137-nS0XlfHCYVDBYNBCqr5f3KLkzLph6DDJ', '', '', '2020-03-03 12:01:50', '2020-03-03 05:01:50', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1348', 0, 'scheduled-action', '', 3),
(1349, 0, '2020-03-03 05:01:33', '2020-03-03 05:01:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5de4be6d4f27.69715660-1TZWfleWh3V1vahhjINvkukZNl0TZN55', '', '', '2020-03-03 12:01:50', '2020-03-03 05:01:50', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1349', 0, 'scheduled-action', '', 3),
(1350, 1, '2020-03-03 11:10:48', '2020-03-03 04:10:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"product_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tùy chọn', 'tuy-chon', 'publish', 'closed', 'closed', '', 'group_5e5dd83726206', '', '', '2020-03-03 14:05:39', '2020-03-03 07:05:39', '', 0, 'http://localhost/mypham/?post_type=acf-field-group&#038;p=1350', 0, 'acf-field-group', '', 0),
(1351, 1, '2020-03-03 11:10:48', '2020-03-03 04:10:48', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Hiển thị tại trang chủ', 'displayhome', 'publish', 'closed', 'closed', '', 'field_5e5dd83f38620', '', '', '2020-03-03 11:10:48', '2020-03-03 04:10:48', '', 1350, 'http://localhost/mypham/?post_type=acf-field&p=1351', 0, 'acf-field', '', 0),
(1352, 0, '2020-03-03 06:01:50', '2020-03-03 06:01:50', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5df9e536dbd5.13814710-FMOB3aYX2SVg5r5PAmc2DwXOfBW88Fpk', '', '', '2020-03-03 13:32:05', '2020-03-03 06:32:05', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1352', 0, 'scheduled-action', '', 3),
(1353, 0, '2020-03-03 06:01:50', '2020-03-03 06:01:50', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5df9e68ffc48.75849058-6l4spKRV8C50aYzeqkSPYXWA51xORUXc', '', '', '2020-03-03 13:32:06', '2020-03-03 06:32:06', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1353', 0, 'scheduled-action', '', 3),
(1354, 0, '2020-03-03 07:32:05', '2020-03-03 07:32:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e0830e28cf1.33440158-tBk5rKcXl83DXzPyWmKTeByRybJ7SDvP', '', '', '2020-03-03 14:33:04', '2020-03-03 07:33:04', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1354', 0, 'scheduled-action', '', 3),
(1355, 0, '2020-03-03 07:32:06', '2020-03-03 07:32:06', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e0831693825.82680189-GMbJlfBuz8wKXxJ97xeY5q5PVpcXQqnu', '', '', '2020-03-03 14:33:05', '2020-03-03 07:33:05', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1355', 0, 'scheduled-action', '', 3),
(1356, 1, '2020-03-03 14:05:39', '2020-03-03 07:05:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh', 'cate_img', 'publish', 'closed', 'closed', '', 'field_5e5e01773b57c', '', '', '2020-03-03 14:05:39', '2020-03-03 07:05:39', '', 1350, 'http://localhost/mypham/?post_type=acf-field&p=1356', 1, 'acf-field', '', 0),
(1358, 0, '2020-03-03 08:33:05', '2020-03-03 08:33:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e169f241b93.39983357-7s4JWxwSHF2MA1svak0g6SnHBeCuSXb5', '', '', '2020-03-03 15:34:39', '2020-03-03 08:34:39', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1358', 0, 'scheduled-action', '', 3),
(1359, 0, '2020-03-03 08:33:05', '2020-03-03 08:33:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e169f81d550.48757306-Qj5Kimer0TUhKPR7ahLyBIu22D8lIaak', '', '', '2020-03-03 15:34:39', '2020-03-03 08:34:39', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1359', 0, 'scheduled-action', '', 3),
(1361, 0, '2020-03-03 09:34:39', '2020-03-03 09:34:39', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e2da0eecfd6.31366975-BaneX5P1DcLPvDbekQHsNWeQYqBcDsUg', '', '', '2020-03-03 17:12:48', '2020-03-03 10:12:48', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1361', 0, 'scheduled-action', '', 3),
(1362, 0, '2020-03-03 09:34:39', '2020-03-03 09:34:39', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e2e3a23d8c6.37718924-1avkvf9H7grP5zxBb4QZRdOkl0AZEt1t', '', '', '2020-03-03 17:15:22', '2020-03-03 10:15:22', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1362', 0, 'scheduled-action', '', 3),
(1364, 1, '2020-03-03 15:57:29', '2020-03-03 08:57:29', '<div class=\"form-group\">\n\nNessy.vn là giao diện bán hàng được thiết kế và duy trì bởi . Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây:\n\n- Phone: 0942 64\n- Email: giuselethien@gmail.com\n- Website: <a href=\"http://giuseart.com/\">www.giuseart.com</a>\n\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-autosave-v1', '', '', '2020-03-03 15:57:29', '2020-03-03 08:57:29', '', 757, 'http://localhost/mypham/757-autosave-v1/', 0, 'revision', '', 0),
(1365, 1, '2020-03-03 15:58:14', '2020-03-03 08:58:14', '<div class=\"form-group\">\r\n\r\nNessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây:\r\n\r\n- Phone: 0942 64 68 60\r\n- Email: info@thietkewebchuyennghiep.com\r\n- Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a>\r\n\r\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-03-03 15:58:14', '2020-03-03 08:58:14', '', 757, 'http://localhost/mypham/757-revision-v1/', 0, 'revision', '', 0),
(1366, 1, '2020-03-03 15:59:04', '2020-03-03 08:59:04', '<div class=\"form-group\">\r\n\r\nNessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây:\r\n\r\n&nbsp;\r\n\r\n- Phone: 0942 64 68 60\r\n\r\n- Email: info@thietkewebchuyennghiep.com\r\n\r\n- Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a>\r\n\r\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-03-03 15:59:04', '2020-03-03 08:59:04', '', 757, 'http://localhost/mypham/757-revision-v1/', 0, 'revision', '', 0),
(1367, 1, '2020-03-03 15:59:58', '2020-03-03 08:59:58', '<div class=\"form-group\">\r\n\r\n<span style=\"font-size: 80%;\">Nessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây: </span>\r\n<ul>\r\n 	<li>Phone: 0942 64 68 60</li>\r\n 	<li>Email: info@thietkewebchuyennghiep.com</li>\r\n 	<li>Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a></li>\r\n</ul>\r\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-03-03 15:59:58', '2020-03-03 08:59:58', '', 757, 'http://localhost/mypham/757-revision-v1/', 0, 'revision', '', 0),
(1368, 1, '2020-03-03 16:00:17', '2020-03-03 09:00:17', '<div class=\"form-group\">\r\n\r\n<span style=\"font-size: 80%;\">Nessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây: </span>\r\n<ul>\r\n 	<li><span style=\"font-size: 80%;\">Phone: 0942 64 68 60</span></li>\r\n 	<li><span style=\"font-size: 80%;\">Email: info@thietkewebchuyennghiep.com</span></li>\r\n 	<li><span style=\"font-size: 80%;\">Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a></span></li>\r\n</ul>\r\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-03-03 16:00:17', '2020-03-03 09:00:17', '', 757, 'http://localhost/mypham/757-revision-v1/', 0, 'revision', '', 0),
(1369, 1, '2020-03-03 16:01:02', '2020-03-03 09:01:02', '<div class=\"form-group\">\r\n\r\n<span style=\"font-size: 80%;\">Nessy.vn là giao diện bán hàng được thiết kế và duy trì bởi Tâm Nghĩa. Mọi nhu cầu mua giao diện web, thắc mắc, tư vấn,... xin vui lòng liên hệ theo thông tin dưới đây: </span>\r\n<ul>\r\n 	<li><span style=\"font-size: 80%;\">Phone: <strong>0942 64 68 60</strong></span></li>\r\n 	<li><span style=\"font-size: 80%;\">Email: info@thietkewebchuyennghiep.com</span></li>\r\n 	<li><span style=\"font-size: 80%;\">Website: <a href=\"http://thietkewebchuyennghiep.com\">thietkewebchuyennghiep.com</a></span></li>\r\n</ul>\r\n</div>', 'Nội dung chân trang', '', 'inherit', 'closed', 'closed', '', '757-revision-v1', '', '', '2020-03-03 16:01:02', '2020-03-03 09:01:02', '', 757, 'http://localhost/mypham/757-revision-v1/', 0, 'revision', '', 0),
(1370, 1, '2020-03-03 16:02:55', '2020-03-03 09:02:55', '[section bg=\"1277\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(54, 52, 44, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Trang chủ - Ý kiến khách hàng - Đối tác', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-03-03 16:02:55', '2020-03-03 09:02:55', '', 724, 'http://localhost/mypham/724-revision-v1/', 0, 'revision', '', 0),
(1372, 0, '2020-03-03 11:12:50', '2020-03-03 11:12:50', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e5df058b139.54335288-iFoXkRcN793AAgxOBneGFnzmWGoDqh2V', '', '', '2020-03-03 20:38:56', '2020-03-03 13:38:56', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1372', 0, 'scheduled-action', '', 3),
(1373, 0, '2020-03-03 11:15:22', '2020-03-03 11:15:22', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5e5df0ca6288.24986992-nRU8UAA5Hszr5UDe2lBelAvGTDjmpD8y', '', '', '2020-03-03 20:38:56', '2020-03-03 13:38:56', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1373', 0, 'scheduled-action', '', 3),
(1374, 0, '2020-03-03 14:38:56', '2020-03-03 14:38:56', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f0aae5fcc19.89933835-OUc0TjhITIoIUFlTspNW0VU5pGtJLp9D', '', '', '2020-03-04 08:55:58', '2020-03-04 01:55:58', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1374', 0, 'scheduled-action', '', 3),
(1375, 0, '2020-03-03 14:38:56', '2020-03-03 14:38:56', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f0aaf51d6f9.73138243-tMTmyFCse9TicBHl5uw4dLNNW5d9sHQl', '', '', '2020-03-04 08:55:59', '2020-03-04 01:55:59', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1375', 0, 'scheduled-action', '', 3),
(1376, 0, '2020-03-04 02:55:58', '2020-03-04 02:55:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f19c2865335.92305010-yYl9QDdwyq9tiClw3K6Vc1yTdnIE0ylG', '', '', '2020-03-04 10:00:18', '2020-03-04 03:00:18', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1376', 0, 'scheduled-action', '', 3),
(1377, 0, '2020-03-04 02:55:59', '2020-03-04 02:55:59', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f19c338a4e6.38360920-Ajqs4G6M7sj4ZSkrCv16yzQzTlb6vrJr', '', '', '2020-03-04 10:00:19', '2020-03-04 03:00:19', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1377', 0, 'scheduled-action', '', 3),
(1379, 1, '2020-03-04 09:01:23', '2020-03-04 02:01:23', '[section]\n\n<h2 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Tin nổi bật</span></h2>\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"circle\" auto_slide=\"5000\" posts=\"6\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n[/section]', 'Trang chủ - Tin nổi bật', '', 'inherit', 'closed', 'closed', '', '1040-revision-v1', '', '', '2020-03-04 09:01:23', '2020-03-04 02:01:23', '', 1040, 'http://localhost/mypham/1040-revision-v1/', 0, 'revision', '', 0),
(1380, 1, '2020-03-04 09:01:48', '2020-03-04 02:01:48', '[section bg=\"1277\" bg_color=\"rgb(0, 0, 0)\" bg_overlay=\"rgba(54, 52, 44, 0.9)\" dark=\"true\" height=\"400px\"]\n\n[ux_slider hide_nav=\"true\" nav_style=\"simple\" timer=\"3000\"]\n\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kirstin Everton</strong> / Apple</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Proin sit amet tristique ex. Quisque posuere neque nec nisl varius dictum nec sit amet magna. Nunc iaculis blandit elit eget dignissim. Aliquam neque orci, tempus et odio id, pellentesque tempus diam. Nullam sollicitudin nunc et arcu molestie maximus. </p>\n[divider margin=\"10px\"]\n\n<p><strong>Jack Johnson</strong> / Google</p>\n\n[/col]\n\n[/row]\n[row h_align=\"center\"]\n\n[col span=\"8\" span__sm=\"12\" align=\"center\"]\n\n<p>Nullam auctor lectus nec eros convallis, id vehicula elit finibus. Donec fermentum finibus viverra. Sed sollicitudin dictum arcu in feugiat. Sed eget placerat nulla.</p>\n[divider margin=\"10px\"]\n\n<p><strong>Kimberly Mason</strong> / Uber</p>\n\n[/col]\n\n[/row]\n\n[/ux_slider]\n\n[/section]', 'Trang chủ - Ý kiến khách hàng', '', 'inherit', 'closed', 'closed', '', '724-revision-v1', '', '', '2020-03-04 09:01:48', '2020-03-04 02:01:48', '', 724, 'http://localhost/mypham/724-revision-v1/', 0, 'revision', '', 0),
(1381, 1, '2020-03-04 09:03:46', '2020-03-04 02:03:46', '<h3>Hướng dẫn mua hàng</h3>\r\nQuý khách truy cập website của chúng tôi qua địa chỉ: www.nessy.vn, xem sản phẩm và lựa chọn sản phẩm cần mua.\r\n- Nhấn nút \"Thêm vào giỏ hàng\" để đưa sản phẩm vào giỏ hàng.\r\n- Sau khi đã hoàn tất việc chọn hàng, quý khách vào giỏ hàng để xem (biểu tượng giỏ hàng ngoài cùng bên phải topbar).\r\n- Chuyển tới trang thanh toán.\r\n- Nhập đầy đủ thông tin cá nhân và thông tin thanh toán vào biểu mẫu.\r\n-Kết thúc đơn hàng, quý khách vui lòng chờ nhân viên của chúng tôi điện thoại lại để chốt đơn.\r\n<h3>Hướng dẫn thanh toán</h3>\r\nHiện tại, chúng tôi mới chỉ cung cấp 2 hình thức thanh toán: (1). nhận hàng thanh toán và (2). thanh toán chuyển khoản.\r\n- 1. Quý khách đặt hàng và được nhân viên xác nhận qua cuộc gọi trực tiếp. Qua đó, chúng tôi gửi hàng về cho quý khách thông qua dịch vụ ship COD. Quý khách nhận hàng, kiểm tra hàng và thanh toán trực tiếp cho nhân viên bưu phát.\r\n- 2: Quý khách chuyển khoản trước cho chúng tôi qua tài khoản nhân hàng, và chúng tôi sẽ gửi chuyển phát nhanh cho quý khách:\r\n<h3>Thông tin chuyển khoản:</h3>\r\n- Ngân hàng Vietcombank: 01234567890 - Nguyễn Văn A - VCB Hà Nội\r\n- Ngân hàng Agribank: 01234567890 - Nguyễn Văn A - Agribank Hà Nội', 'Hướng dẫn mua hàng - Chi tiết sản phẩm', '', 'trash', 'closed', 'closed', '', 'huong-dan-mua-hang-chi-tiet-san-pham__trashed', '', '', '2023-07-26 10:48:39', '2023-07-26 03:48:39', '', 0, 'http://localhost/mypham/?post_type=blocks&#038;p=1381', 0, 'blocks', '', 0),
(1382, 1, '2020-03-04 09:03:46', '2020-03-04 02:03:46', '<h3>Hướng dẫn mua hàng</h3>\r\nQuý khách truy cập website của chúng tôi qua địa chỉ: www.nessy.vn, xem sản phẩm và lựa chọn sản phẩm cần mua.\r\n- Nhấn nút \"Thêm vào giỏ hàng\" để đưa sản phẩm vào giỏ hàng.\r\n- Sau khi đã hoàn tất việc chọn hàng, quý khách vào giỏ hàng để xem (biểu tượng giỏ hàng ngoài cùng bên phải topbar).\r\n- Chuyển tới trang thanh toán.\r\n- Nhập đầy đủ thông tin cá nhân và thông tin thanh toán vào biểu mẫu.\r\n-Kết thúc đơn hàng, quý khách vui lòng chờ nhân viên của chúng tôi điện thoại lại để chốt đơn.\r\n<h3>Hướng dẫn thanh toán</h3>\r\nHiện tại, chúng tôi mới chỉ cung cấp 2 hình thức thanh toán: (1). nhận hàng thanh toán và (2). thanh toán chuyển khoản.\r\n- 1. Quý khách đặt hàng và được nhân viên xác nhận qua cuộc gọi trực tiếp. Qua đó, chúng tôi gửi hàng về cho quý khách thông qua dịch vụ ship COD. Quý khách nhận hàng, kiểm tra hàng và thanh toán trực tiếp cho nhân viên bưu phát.\r\n- 2: Quý khách chuyển khoản trước cho chúng tôi qua tài khoản nhân hàng, và chúng tôi sẽ gửi chuyển phát nhanh cho quý khách:\r\n<h3>Thông tin chuyển khoản:</h3>\r\n- Ngân hàng Vietcombank: 01234567890 - Nguyễn Văn A - VCB Hà Nội\r\n- Ngân hàng Agribank: 01234567890 - Nguyễn Văn A - Agribank Hà Nội', 'Hướng dẫn mua hàng - Chi tiết sản phẩm', '', 'inherit', 'closed', 'closed', '', '1381-revision-v1', '', '', '2020-03-04 09:03:46', '2020-03-04 02:03:46', '', 1381, 'http://localhost/mypham/1381-revision-v1/', 0, 'revision', '', 0),
(1386, 1, '2020-03-04 09:33:23', '2020-03-04 02:33:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thông tin thêm', 'thong-tin-them', 'publish', 'closed', 'closed', '', 'group_5e5f1348bab53', '', '', '2020-03-04 09:33:23', '2020-03-04 02:33:23', '', 0, 'http://localhost/mypham/?post_type=acf-field-group&#038;p=1386', 0, 'acf-field-group', '', 0),
(1387, 1, '2020-03-04 09:33:23', '2020-03-04 02:33:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Thông tin thêm', 'thong_tin_them', 'publish', 'closed', 'closed', '', 'field_5e5f134e73975', '', '', '2020-03-04 09:33:23', '2020-03-04 02:33:23', '', 1386, 'http://localhost/mypham/?post_type=acf-field&p=1387', 0, 'acf-field', '', 0),
(1388, 0, '2020-03-04 04:00:18', '2020-03-04 04:00:18', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f27dccc9b59.56873932-b84rnC5jqLGqyiRd8mRJhEKB36SaWc67', '', '', '2020-03-04 11:00:28', '2020-03-04 04:00:28', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1388', 0, 'scheduled-action', '', 3),
(1389, 0, '2020-03-04 04:00:19', '2020-03-04 04:00:19', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f27dd6fd440.46208114-obYvyW2hPRQHLwe6AasrOMpmbkrKFXRf', '', '', '2020-03-04 11:00:29', '2020-03-04 04:00:29', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1389', 0, 'scheduled-action', '', 3),
(1390, 0, '2020-03-04 05:00:29', '2020-03-04 05:00:29', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f35ee80c922.25246461-BVHLwdpJfrEURshQKA9erQ2y2YfACvxm', '', '', '2020-03-04 12:00:30', '2020-03-04 05:00:30', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1390', 0, 'scheduled-action', '', 3),
(1391, 0, '2020-03-04 05:00:29', '2020-03-04 05:00:29', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f35eedf8f41.39280554-R6hy4zhP2znG842fODCaM0FZ8Z7xU8t7', '', '', '2020-03-04 12:00:30', '2020-03-04 05:00:30', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1391', 0, 'scheduled-action', '', 3),
(1402, 0, '2020-03-04 06:00:30', '2020-03-04 06:00:30', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f4baa079069.83547448-8uXHZE9r0kL3PCVqMenjEFQFIpdJt2DA', '', '', '2020-03-04 13:33:14', '2020-03-04 06:33:14', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1402', 0, 'scheduled-action', '', 3),
(1403, 0, '2020-03-04 06:00:30', '2020-03-04 06:00:30', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f4baaf13c44.95662063-YSqMkrnX1CPLu6hHcfh2vKTiDRryGjej', '', '', '2020-03-04 13:33:14', '2020-03-04 06:33:14', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1403', 0, 'scheduled-action', '', 3),
(1404, 0, '2020-03-04 07:33:14', '2020-03-04 07:33:14', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f59c5764753.01282005-NrVkTVcfB8Tio3YZBM4OixPc2TSSeWzi', '', '', '2020-03-04 14:33:25', '2020-03-04 07:33:25', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1404', 0, 'scheduled-action', '', 3),
(1405, 0, '2020-03-04 07:33:15', '2020-03-04 07:33:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f59c60d0167.31463102-CPyunuQ8Q3P9QBkqfXO5JJsKChkPzltS', '', '', '2020-03-04 14:33:26', '2020-03-04 07:33:26', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1405', 0, 'scheduled-action', '', 3),
(1415, 1, '2020-03-04 14:07:40', '2020-03-04 07:07:40', 'Theo đó, tất cả các mẫu laptop hiện đại đến từ thương hiệu nổi tiếng Lenovo sẽ được giảm ngay 20% đồng trong ngày 2 ngày 22 và 23/02, áp dụng cho tất cả khách hàng chọn mua tại 19 trung tâm laptop của FPT Shop. Đây là cơ hội \'có một không hai\' để bạn có thể sở hữu chiếc laptop phục vụ tốt công việc, học tập và giải trí với giá chỉ từ 8.990.000 đồng. Với những ai đang băng khoăn về tài chính, ưu đãi trả góp 0% lãi suất và không cần trả trước của FPT Shop là lựa chọn hấp dẫn không thể bỏ qua. Ngoài ra, FPT Shop luôn luôn có những ưu đãi đặc biệt dành cho khách hàng như: , nhận ngay balo laptop thời thượng, mua combo sinh viên (Office 365 Personal + Lạc Việt) giá chỉ còn 690.000 đồng, được giảm 20% khi mua combo bảo vệ laptop (Miếng dán màn hình và Phần mềm diệt virus Eset),...\r\n\r\n<img src=\"https://cdn.fptshop.com.vn/uploads/images/tin-tuc/111360/Originals/FB%20ads%20NF.png\" alt=\"\" />\r\n\r\n<em>Hàng chục mẫu laptop Lenovo đồng loạt giảm 20% tại FPT Shop chỉ trong 2 ngày 22 - 23/02</em>\r\n\r\n&nbsp;\r\n\r\n<strong>Tại sao bạn nên chọn mua laptop tại trung tâm laptop FPT Shop?</strong>\r\n\r\nVới mục tiêu chung là phục tốt nhất cho nhu cầu trải nghiệm và chọn mua laptop của khách hàng, cả 19 trung tâm laptop của FPT Shop đều trưng bày hàng trăm mẫu laptop và được đầu tư khu vực trưng bày cực kỳ hoành tráng, phân rõ theo dòng máy (như laptop gaming, laptop sinh viên, laptop danh nhân…). Ngoài ra, FPT Shop còn liên tục cập nhật, bổ sung những laptop chính hãng mới nhất, hiện đại nhất đến từ những thương hiệu nổi tiếng toàn cầu như HP, ASUS, Dell, Acer, MSI, Lenovo, Masstel… Không chỉ ‘sờ tận tay’, trải nghiệm thoải mái, bạn còn được đội ngũ nhân viên giàu kinh nghiệm tại FPT Shop tư vấn, hướng dẫn để có thể lựa chọn chiếc laptop vừa đáp ứng nhu cầu sử dụng, vừa phù hợp với khả năng tài chính của mình.\r\n\r\nNgoài ra, chọn mua sản phẩm tại Trung tâm lapatop FPT Shop, khách hàng luôn luôn nhận những \'đặc quyền\' không đâu có được như giảm 5% cho đơn hàng mua laptop tiếp theo, giảm 50% cho lần dán màn hình tiếp theo, hỗ trợ vệ sinh và cài đặt máy miễn phí.', 'Tất cả laptop Lenovo đồng loạt giảm 20% tại FPT Shop', 'Chỉ 2 ngày 22 - 23/02, FPT Shop sẽ giảm ngay 20% cho tất cả các sản phẩm laptop thuộc thương hiệu Lenovo, áp dụng cho tất cả khách hàng chọn mua tại 19 trung tâm laptop hiện đại bậc nhất của FPT Shop.', 'publish', 'closed', 'closed', '', 'tat-ca-laptop-lenovo-dong-loat-giam-20-tai-fpt-shop', '', '', '2020-03-04 14:07:40', '2020-03-04 07:07:40', '', 0, 'http://localhost/mypham/?p=1415', 0, 'post', '', 0),
(1417, 1, '2020-03-04 14:07:40', '2020-03-04 07:07:40', 'Theo đó, tất cả các mẫu laptop hiện đại đến từ thương hiệu nổi tiếng Lenovo sẽ được giảm ngay 20% đồng trong ngày 2 ngày 22 và 23/02, áp dụng cho tất cả khách hàng chọn mua tại 19 trung tâm laptop của FPT Shop. Đây là cơ hội \'có một không hai\' để bạn có thể sở hữu chiếc laptop phục vụ tốt công việc, học tập và giải trí với giá chỉ từ 8.990.000 đồng. Với những ai đang băng khoăn về tài chính, ưu đãi trả góp 0% lãi suất và không cần trả trước của FPT Shop là lựa chọn hấp dẫn không thể bỏ qua. Ngoài ra, FPT Shop luôn luôn có những ưu đãi đặc biệt dành cho khách hàng như: , nhận ngay balo laptop thời thượng, mua combo sinh viên (Office 365 Personal + Lạc Việt) giá chỉ còn 690.000 đồng, được giảm 20% khi mua combo bảo vệ laptop (Miếng dán màn hình và Phần mềm diệt virus Eset),...\r\n\r\n<img src=\"https://cdn.fptshop.com.vn/uploads/images/tin-tuc/111360/Originals/FB%20ads%20NF.png\" alt=\"\" />\r\n\r\n<em>Hàng chục mẫu laptop Lenovo đồng loạt giảm 20% tại FPT Shop chỉ trong 2 ngày 22 - 23/02</em>\r\n\r\n&nbsp;\r\n\r\n<strong>Tại sao bạn nên chọn mua laptop tại trung tâm laptop FPT Shop?</strong>\r\n\r\nVới mục tiêu chung là phục tốt nhất cho nhu cầu trải nghiệm và chọn mua laptop của khách hàng, cả 19 trung tâm laptop của FPT Shop đều trưng bày hàng trăm mẫu laptop và được đầu tư khu vực trưng bày cực kỳ hoành tráng, phân rõ theo dòng máy (như laptop gaming, laptop sinh viên, laptop danh nhân…). Ngoài ra, FPT Shop còn liên tục cập nhật, bổ sung những laptop chính hãng mới nhất, hiện đại nhất đến từ những thương hiệu nổi tiếng toàn cầu như HP, ASUS, Dell, Acer, MSI, Lenovo, Masstel… Không chỉ ‘sờ tận tay’, trải nghiệm thoải mái, bạn còn được đội ngũ nhân viên giàu kinh nghiệm tại FPT Shop tư vấn, hướng dẫn để có thể lựa chọn chiếc laptop vừa đáp ứng nhu cầu sử dụng, vừa phù hợp với khả năng tài chính của mình.\r\n\r\nNgoài ra, chọn mua sản phẩm tại Trung tâm lapatop FPT Shop, khách hàng luôn luôn nhận những \'đặc quyền\' không đâu có được như giảm 5% cho đơn hàng mua laptop tiếp theo, giảm 50% cho lần dán màn hình tiếp theo, hỗ trợ vệ sinh và cài đặt máy miễn phí.', 'Tất cả laptop Lenovo đồng loạt giảm 20% tại FPT Shop', 'Chỉ 2 ngày 22 - 23/02, FPT Shop sẽ giảm ngay 20% cho tất cả các sản phẩm laptop thuộc thương hiệu Lenovo, áp dụng cho tất cả khách hàng chọn mua tại 19 trung tâm laptop hiện đại bậc nhất của FPT Shop.', 'inherit', 'closed', 'closed', '', '1415-revision-v1', '', '', '2020-03-04 14:07:40', '2020-03-04 07:07:40', '', 1415, 'http://localhost/mypham/1415-revision-v1/', 0, 'revision', '', 0),
(1418, 1, '2020-03-04 14:11:44', '2020-03-04 07:11:44', 'Để bắt kịp xu hướng phát triển của ngành Thương Mại Điện Tử, <strong>Mỹ Phẩm Cho Nam</strong> đang chú trọng xây dựng cỗ máy kinh doanh để từng bước phát triển mạnh mẽ hơn. Do đó, nhân lực về sale đang được <strong>Mỹ Phẩm Cho Nam</strong> đầu tư và phát triển tối đa. Nếu bạn đam mê kiếm tiền, muốn được học thêm nhiều kỹ năng về sale, <strong>Mỹ Phẩm Cho Nam </strong>là nơi bạn nên thử sức với 2 vị trí sau:\r\n\r\nNVKD KINH DOANH: 2 người - Thu nhập 6.000.000 + thưởng doanh số\r\n\r\n<strong><u>Mô tả công việc:</u></strong>\r\n- Tiếp thị, tư vấn đến khách hàng sản phẩm của công ty: các dòng sản phẩm mỹ phẩm cho Nam.\r\n- Tìm kiếm, chăm sóc và phát triển khách hàng Cộng tác viên, Đại lý bán hàng....nhằm đảm bảo doanh số theo yêu cầu của công ty.\r\n\r\n<strong><u>Yêu cầu:</u></strong>\r\n- Tối thiểu 1 năm kinh nghiệm ở vị trí ứng tuyển\r\n- Có kiến thức về ngành mỹ phẩm là lợi thế\r\n- Có đầy đủ phương tiện làm việc: laptop, điện thoại, xe máy', 'Tuyển dụng nhân viên kinh doanh Mỹ Phẩm Cho Nam', 'Để bắt kịp xu hướng phát triển của ngành Thương Mại Điện Tử, Mỹ Phẩm Cho Nam đang chú trọng xây dựng cỗ máy kinh doanh để từng bước phát triển mạnh mẽ hơn', 'publish', 'closed', 'closed', '', 'tuyen-dung-nhan-vien-kinh-doanh-my-pham-cho-nam', '', '', '2020-03-04 14:11:44', '2020-03-04 07:11:44', '', 0, 'http://localhost/mypham/?p=1418', 0, 'post', '', 0),
(1420, 1, '2020-03-04 14:11:44', '2020-03-04 07:11:44', 'Để bắt kịp xu hướng phát triển của ngành Thương Mại Điện Tử, <strong>Mỹ Phẩm Cho Nam</strong> đang chú trọng xây dựng cỗ máy kinh doanh để từng bước phát triển mạnh mẽ hơn. Do đó, nhân lực về sale đang được <strong>Mỹ Phẩm Cho Nam</strong> đầu tư và phát triển tối đa. Nếu bạn đam mê kiếm tiền, muốn được học thêm nhiều kỹ năng về sale, <strong>Mỹ Phẩm Cho Nam </strong>là nơi bạn nên thử sức với 2 vị trí sau:\r\n\r\nNVKD KINH DOANH: 2 người - Thu nhập 6.000.000 + thưởng doanh số\r\n\r\n<strong><u>Mô tả công việc:</u></strong>\r\n- Tiếp thị, tư vấn đến khách hàng sản phẩm của công ty: các dòng sản phẩm mỹ phẩm cho Nam.\r\n- Tìm kiếm, chăm sóc và phát triển khách hàng Cộng tác viên, Đại lý bán hàng....nhằm đảm bảo doanh số theo yêu cầu của công ty.\r\n\r\n<strong><u>Yêu cầu:</u></strong>\r\n- Tối thiểu 1 năm kinh nghiệm ở vị trí ứng tuyển\r\n- Có kiến thức về ngành mỹ phẩm là lợi thế\r\n- Có đầy đủ phương tiện làm việc: laptop, điện thoại, xe máy', 'Tuyển dụng nhân viên kinh doanh Mỹ Phẩm Cho Nam', 'Để bắt kịp xu hướng phát triển của ngành Thương Mại Điện Tử, Mỹ Phẩm Cho Nam đang chú trọng xây dựng cỗ máy kinh doanh để từng bước phát triển mạnh mẽ hơn', 'inherit', 'closed', 'closed', '', '1418-revision-v1', '', '', '2020-03-04 14:11:44', '2020-03-04 07:11:44', '', 1418, 'http://localhost/mypham/1418-revision-v1/', 0, 'revision', '', 0),
(1424, 1, '2020-03-04 14:28:50', '2020-03-04 07:28:50', ' ', '', '', 'publish', 'closed', 'closed', '', '1424', '', '', '2020-03-04 14:28:50', '2020-03-04 07:28:50', '', 0, 'http://localhost/mypham/?p=1424', 4, 'nav_menu_item', '', 0),
(1425, 1, '2020-03-04 14:29:27', '2020-03-04 07:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1425', '', '', '2020-03-04 14:29:27', '2020-03-04 07:29:27', '', 0, 'http://localhost/mypham/?p=1425', 2, 'nav_menu_item', '', 0),
(1426, 1, '2020-03-04 14:29:27', '2020-03-04 07:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1426', '', '', '2020-03-04 14:29:27', '2020-03-04 07:29:27', '', 0, 'http://localhost/mypham/?p=1426', 3, 'nav_menu_item', '', 0),
(1427, 1, '2020-03-04 14:29:27', '2020-03-04 07:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '1427', '', '', '2020-03-04 14:29:27', '2020-03-04 07:29:27', '', 0, 'http://localhost/mypham/?p=1427', 4, 'nav_menu_item', '', 0),
(1428, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', '', 'Chăm sóc & dưỡng da mặt', '', 'publish', 'closed', 'closed', '', 'cham-soc-duong-da-mat-2', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1428', 1, 'nav_menu_item', '', 0),
(1429, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', ' ', '', '', 'publish', 'closed', 'closed', '', '1429', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1429', 2, 'nav_menu_item', '', 0),
(1430, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', ' ', '', '', 'publish', 'closed', 'closed', '', '1430', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1430', 3, 'nav_menu_item', '', 0),
(1431, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', ' ', '', '', 'publish', 'closed', 'closed', '', '1431', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1431', 4, 'nav_menu_item', '', 0),
(1432, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', ' ', '', '', 'publish', 'closed', 'closed', '', '1432', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1432', 5, 'nav_menu_item', '', 0),
(1433, 1, '2020-03-04 14:30:17', '2020-03-04 07:30:17', ' ', '', '', 'publish', 'closed', 'closed', '', '1433', '', '', '2020-03-04 14:31:08', '2020-03-04 07:31:08', '', 0, 'http://localhost/mypham/?p=1433', 6, 'nav_menu_item', '', 0),
(1438, 0, '2020-03-04 08:33:25', '2020-03-04 08:33:25', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f68011a6df7.93057744-jRrlQsPBOFYmLj5beo63UEtQUFJ2wMBv', '', '', '2020-03-04 15:34:09', '2020-03-04 08:34:09', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1438', 0, 'scheduled-action', '', 3),
(1439, 0, '2020-03-04 08:33:26', '2020-03-04 08:33:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f68015fa7f7.36785177-Ylb9atkxtefuhEy2KtMmV1jotDI1AL05', '', '', '2020-03-04 15:34:09', '2020-03-04 08:34:09', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1439', 0, 'scheduled-action', '', 3),
(1440, 1, '2020-03-04 14:54:17', '2020-03-04 07:54:17', '<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n<h2>Đặc điểm</h2>\r\nHằng ngày, cơ thể chúng ta tiếp xúc với rất nhiều bụi bẩn, khói độc…cứ thế tích tụ lại làm cho làn da bị xỉn màu và sạm đen. Dù cho sử dụng dưỡng thể hay các loại kem trắng da thì tone da bạn vẫn không khá hơn trước. Đó là vì bạn đã bỏ qua bước tẩy tế bào chết cho cơ thể, một công đoạn cực kì quan trọng trong quá trình dưỡng da thông thường\r\n\r\n</div>\r\n</div>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n<ul>\r\n 	<li class=\"bullet-star\"><strong>Dung lượng</strong>: 283g</li>\r\n 	<li class=\"bullet-star\"><strong>Nhãn hiệu</strong>: St.Ives</li>\r\n 	<li class=\"bullet-star\"><strong>Xuất xứ</strong>: USA</li>\r\n</ul>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n\r\nTẩy tế bào chết dạng hũ StIves – Scrub StIves là tẩy tế bào chết số 1 của Mỹ (được tạp chí Allure bình chọn), tẩy da chết nhẹ nhàng dùng 100% hạt tẩy lấy từ thiên nhiên làm da mềm mại sáng khỏe.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<h2>Hướng dẫn sử dụng</h2>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n<ul>\r\n 	<li class=\"bullet-checkmark\">Làm ẩm mặt.</li>\r\n 	<li class=\"bullet-checkmark\">Bôi sản phẩm lên lòng bàn tay và xoa bóp trên mặt.</li>\r\n 	<li class=\"bullet-checkmark\">Rửa sạch với nước.</li>\r\n 	<li class=\"bullet-checkmark\">Tránh tiếp xúc trực tiếp với mắt.</li>\r\n 	<li class=\"bullet-checkmark\">Trong trường hợp tiếp xúc với mắt, rửa kỹ bằng nước.</li>\r\n 	<li class=\"bullet-checkmark\">Để có kết quả tốt nhất sử dụng 3-4 lần/tuần</li>\r\n</ul>\r\n</div>\r\n</div>', 'Tẩy tế bào chết dạng hũ Stives hàng nhập khẩu', '', 'publish', 'closed', 'closed', '', 'tay-te-bao-chet-dang-hu-stives-hang-nhap-khau', '', '', '2020-03-04 14:56:16', '2020-03-04 07:56:16', '', 0, 'http://localhost/mypham/?post_type=product&#038;p=1440', 0, 'product', '', 0),
(1442, 1, '2020-03-04 14:59:10', '2020-03-04 07:59:10', '<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n\r\nLà một công nghệ đột phá giúp bạn cũng có thể mang lên hiệu quả trong vấn đề chăm sóc mái tóc, kích thích mái tóc từ sâu bên trong, độ chắc khỏe sẽ được dưỡng chất này thấm rất nhanh vào sâu bên trong da đầu, ngăn ngừa rụng tóc, kháng viêm, mang lên độ phục hồi chắc khỏe, nuôi dưỡng chân tóc giúp mái tóc dầy hơn, đen hơn và tự nhiên vô cùng.\r\n\r\nBộ dầu gội, dầu xả Kaminomoto Medicated Shampoo Nhật Bản giúp kích thích mọc tóc và ngăn ngừa rụng tóc dành cho những người bị rụng tóc, giúp tóc mọc nhanh và nhiều hơn.\r\n\r\n</div>\r\n</div>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n<ul>\r\n 	<li class=\"bullet-arrow bullet-star\"><span class=\"info-text-left\">Dung tích:</span> 300ml x 2</li>\r\n 	<li class=\"bullet-arrow bullet-star\"><span class=\"info-text-left\">Xuất Xứ:</span> Nhật Bản</li>\r\n 	<li class=\"bullet-arrow bullet-star\"><span class=\"info-text-left\">Thương hiệu:</span> <strong>Kaminomoto</strong></li>\r\n 	<li class=\"bullet-arrow bullet-star\"><span class=\"info-text-left\">Hãng sản xuất:</span> <strong>Kaminomoto</strong></li>\r\n</ul>\r\n<div id=\"ProductDescription\" class=\"Block Moveable Panel ProductDescription\">\r\n<div class=\"ProductDescriptionContainer\">\r\n\r\nDầu gội đầu đặc trị của Kaminomto dành riêng cho tóc yếu, nhiều gàu, da đầu nhờn, và những người bị bệnh rụng tóc. Bao gồm các chiết xuất thảo dược quý hiếm và Chất dẫn xuất sinh học đặc biệt. Chất dẫn xuất sinh học này trực tiếp dẫn các chiết xuất thảo dược vào nuôi dưỡng tế bào chân tóc, hạn chế chất nhờn trên da đầu, kích thích sự tái sinh của tóc và giúp tế bào chân tóc trên da đầu hồi phục trở lại.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Dầu gội kích thích mọc tóc Kaminomoto M. Shampoo', '', 'publish', 'closed', 'closed', '', 'dau-goi-kich-thich-moc-toc-kaminomoto-m-shampoo', '', '', '2020-03-04 17:19:00', '2020-03-04 10:19:00', '', 0, 'http://localhost/mypham/?post_type=product&#038;p=1442', 0, 'product', '', 0),
(1444, 0, '2020-03-04 09:34:09', '2020-03-04 09:34:09', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f762def01a8.33444853-qFMCQxZFyp3uLBhYkxjv0nJD0AvVgfbP', '', '', '2020-03-04 16:34:37', '2020-03-04 09:34:37', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1444', 0, 'scheduled-action', '', 3),
(1445, 0, '2020-03-04 09:34:09', '2020-03-04 09:34:09', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f762e5f34e2.51733100-4EbDqSgyymWTD1eUslwne6T9tcMqXAM0', '', '', '2020-03-04 16:34:38', '2020-03-04 09:34:38', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1445', 0, 'scheduled-action', '', 3),
(1448, 0, '2020-03-04 10:34:38', '2020-03-04 10:34:38', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f844c8efb71.35663371-yxwDdQHSVqugx8u2vghVQCYcR35Jnb5p', '', '', '2020-03-04 17:34:52', '2020-03-04 10:34:52', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1448', 0, 'scheduled-action', '', 3),
(1449, 0, '2020-03-04 10:34:38', '2020-03-04 10:34:38', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5f844d32b3e0.46038558-Wd8PcDKT8HMUQeofPQSpfhB39cq0Vchj', '', '', '2020-03-04 17:34:53', '2020-03-04 10:34:53', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1449', 0, 'scheduled-action', '', 3),
(1453, 0, '2020-03-04 11:34:52', '2020-03-04 11:34:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5fae39b71915.90369329-eizthqSwoWhDxwzEihKWBUMKeb038dBl', '', '', '2020-03-04 20:33:45', '2020-03-04 13:33:45', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1453', 0, 'scheduled-action', '', 3),
(1454, 0, '2020-03-04 11:34:53', '2020-03-04 11:34:53', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5fae3ac4c8c3.50599497-H2bdxOVKkVUbXpK8zljFL3dus5W3qrK0', '', '', '2020-03-04 20:33:46', '2020-03-04 13:33:46', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1454', 0, 'scheduled-action', '', 3),
(1455, 0, '2020-03-04 14:33:46', '2020-03-04 14:33:46', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5fc171569fd3.21565503-Fn1o2Xm6AZpc5IGnkpnyOqySiEfZ4ZEY', '', '', '2020-03-04 21:55:45', '2020-03-04 14:55:45', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1455', 0, 'scheduled-action', '', 3),
(1456, 0, '2020-03-04 14:33:46', '2020-03-04 14:33:46', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e5fc171bfa6f8.05430179-NT0OLyQ8PQ2z4rqkpJCfmNmHI7ldvlZn', '', '', '2020-03-04 21:55:45', '2020-03-04 14:55:45', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1456', 0, 'scheduled-action', '', 3),
(1457, 0, '2020-03-04 15:55:45', '2020-03-04 15:55:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e6085b8672271.24713138-qzIkSgTEGgfB7frwEMajEhgtdhMR8AvC', '', '', '2020-03-05 11:53:12', '2020-03-05 04:53:12', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1457', 0, 'scheduled-action', '', 3),
(1458, 0, '2020-03-04 15:55:45', '2020-03-04 15:55:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e6085b93e7ab7.29892849-pbHuPKijhuEwNeuzvzUpRAXfIqXKP4wW', '', '', '2020-03-05 11:53:13', '2020-03-05 04:53:13', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1458', 0, 'scheduled-action', '', 3),
(1459, 0, '2020-03-05 05:53:12', '2020-03-05 05:53:12', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e609cd30477f2.47587885-kfL63eHoOJcizPTRtFhGL2M0tV4tqmxu', '', '', '2020-03-05 13:31:47', '2020-03-05 06:31:47', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1459', 0, 'scheduled-action', '', 3),
(1460, 0, '2020-03-05 05:53:13', '2020-03-05 05:53:13', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e609cd3b6ca87.60143233-9O5cS2BLaBfW3kFrgZF1250run6xsNU2', '', '', '2020-03-05 13:31:47', '2020-03-05 06:31:47', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1460', 0, 'scheduled-action', '', 3),
(1461, 0, '2020-03-05 07:31:47', '2020-03-05 07:31:47', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60ae62006b80.88445558-OVFSi2QlMTI6o9BTP3ydEQPbRmFZCdJd', '', '', '2020-03-05 14:46:41', '2020-03-05 07:46:41', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1461', 0, 'scheduled-action', '', 3),
(1462, 0, '2020-03-05 07:31:47', '2020-03-05 07:31:47', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60ae62674c11.27412291-EY3iF00KKX9I2zGzRiPlxFJOMAAwSFwv', '', '', '2020-03-05 14:46:42', '2020-03-05 07:46:42', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1462', 0, 'scheduled-action', '', 3),
(1463, 0, '2020-03-05 08:46:42', '2020-03-05 08:46:42', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60bc738b4311.61975214-l3AwK6QChhnED9I2F5pKeVAPFBh8grbb', '', '', '2020-03-05 15:46:43', '2020-03-05 08:46:43', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1463', 0, 'scheduled-action', '', 3),
(1464, 0, '2020-03-05 08:46:42', '2020-03-05 08:46:42', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60bc73eb7e34.77992327-zKyXnhMgN7sGh3ps1t6iUFsZQDChxEOz', '', '', '2020-03-05 15:46:43', '2020-03-05 08:46:43', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1464', 0, 'scheduled-action', '', 3),
(1466, 0, '2020-03-05 09:46:43', '2020-03-05 09:46:43', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60cacded30c2.57179343-bXFVvtufFSMtkYRxnKc7X6qykBfZxDUG', '', '', '2020-03-05 16:47:57', '2020-03-05 09:47:57', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1466', 0, 'scheduled-action', '', 3),
(1467, 0, '2020-03-05 09:46:44', '2020-03-05 09:46:44', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e60cace40c0f3.74003792-pGHTEZ95PqoaA99IDmA3ccZFFbsi7Qeo', '', '', '2020-03-05 16:47:58', '2020-03-05 09:47:58', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1467', 0, 'scheduled-action', '', 3),
(1468, 1, '2020-03-05 16:18:43', '2020-03-05 09:18:43', '', 'a', '', 'publish', 'closed', 'closed', '', 'a', '', '', '2020-03-05 16:27:24', '2020-03-05 09:27:24', '', 0, 'http://localhost/mypham/?post_type=br_filters_group&#038;p=1468', 0, 'br_filters_group', '', 0),
(1469, 1, '2020-03-05 16:19:15', '2020-03-05 09:19:15', '', 'Dung tích', '', 'publish', 'closed', 'closed', '', 'loc', '', '', '2020-03-05 16:29:42', '2020-03-05 09:29:42', '', 0, 'http://localhost/mypham/?post_type=br_product_filter&#038;p=1469', 0, 'br_product_filter', '', 0),
(1470, 1, '2020-03-05 16:21:09', '2020-03-05 09:21:09', '', 'Dung tích', '', 'inherit', 'closed', 'closed', '', '1469-autosave-v1', '', '', '2020-03-05 16:21:09', '2020-03-05 09:21:09', '', 1469, 'http://localhost/mypham/1469-autosave-v1/', 0, 'revision', '', 0),
(1471, 0, '2020-03-05 10:47:58', '2020-03-05 10:47:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61036a893851.00243485-0r6ohFyAwDGTfqTH3Pb5LckUr2WLp9H8', '', '', '2020-03-05 20:49:30', '2020-03-05 13:49:30', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1471', 0, 'scheduled-action', '', 3),
(1472, 0, '2020-03-05 10:47:58', '2020-03-05 10:47:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61036acc5f89.94948251-2q0hcAxNtIAyefsvLuMZSpU6sdHZUsDa', '', '', '2020-03-05 20:49:30', '2020-03-05 13:49:30', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1472', 0, 'scheduled-action', '', 3),
(1473, 0, '2020-03-05 14:49:30', '2020-03-05 14:49:30', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61117d4bb169.47687189-oG016ibcodsieKksDOBzDBLL82xjWXIb', '', '', '2020-03-05 21:49:33', '2020-03-05 14:49:33', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1473', 0, 'scheduled-action', '', 3),
(1474, 0, '2020-03-05 14:49:30', '2020-03-05 14:49:30', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61117d9e4bc9.92875485-4xvJ7f7gvv70JeRKUBPVTfH1dyHhV41Y', '', '', '2020-03-05 21:49:33', '2020-03-05 14:49:33', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1474', 0, 'scheduled-action', '', 3),
(1475, 0, '2020-03-05 15:49:33', '2020-03-05 15:49:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e611f98d088e2.01285972-iamQJYxf8mvAME7dQujHNVPfodGerFcu', '', '', '2020-03-05 22:49:44', '2020-03-05 15:49:44', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1475', 0, 'scheduled-action', '', 3),
(1476, 0, '2020-03-05 15:49:33', '2020-03-05 15:49:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e611f992f08b1.08575778-ree3eeiy4WEJjmf4uJxgR7RrfdqoTCyP', '', '', '2020-03-05 22:49:45', '2020-03-05 15:49:45', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1476', 0, 'scheduled-action', '', 3),
(1477, 0, '2020-03-05 16:49:44', '2020-03-05 16:49:44', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e612df84cbe87.72350104-xpL9BvoZ3BxYiyX2gxADdE4EPNyUHzan', '', '', '2020-03-05 23:51:04', '2020-03-05 16:51:04', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1477', 0, 'scheduled-action', '', 3);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1478, 0, '2020-03-05 16:49:45', '2020-03-05 16:49:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e612df8dedd44.03118859-9lYtH6VN7tDqbvVKNb6prurMTvv6edT6', '', '', '2020-03-05 23:51:04', '2020-03-05 16:51:04', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1478', 0, 'scheduled-action', '', 3),
(1479, 0, '2020-03-05 17:51:04', '2020-03-05 17:51:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61d42a45e412.01402506-Eon036sGAeINnrhgYXshfou7WoWW2kBd', '', '', '2020-03-06 11:40:10', '2020-03-06 04:40:10', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1479', 0, 'scheduled-action', '', 3),
(1480, 0, '2020-03-05 17:51:04', '2020-03-05 17:51:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61d455e0cf81.25790624-JQ2l8PiZtnDezuc0qRT1Atw8m6Vw7sAG', '', '', '2020-03-06 11:40:53', '2020-03-06 04:40:53', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1480', 0, 'scheduled-action', '', 3),
(1481, 0, '2020-03-06 05:40:10', '2020-03-06 05:40:10', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61f275e84836.79971996-PbQfQz4eQrzsWZ1z1cdcM6JodmaY005S', '', '', '2020-03-06 13:49:25', '2020-03-06 06:49:25', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1481', 0, 'scheduled-action', '', 3),
(1482, 0, '2020-03-06 05:40:53', '2020-03-06 05:40:53', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e61f27652ab04.27271484-tV79c9tQjOhx1oVqeJK0aKkpkJMjTj5P', '', '', '2020-03-06 13:49:26', '2020-03-06 06:49:26', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1482', 0, 'scheduled-action', '', 3),
(1483, 0, '2020-03-06 07:49:26', '2020-03-06 07:49:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e62013182eb50.75998250-vqVtYjpKGeQSC57yPnc1DcOV1PXLfzpg', '', '', '2020-03-06 14:52:17', '2020-03-06 07:52:17', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1483', 0, 'scheduled-action', '', 3),
(1484, 0, '2020-03-06 07:49:26', '2020-03-06 07:49:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e620131e285a6.71859843-WfPhuw0239wqZRVvLqOBQLqUpRAP0nSz', '', '', '2020-03-06 14:52:17', '2020-03-06 07:52:17', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1484', 0, 'scheduled-action', '', 3),
(1485, 0, '2020-03-06 08:52:17', '2020-03-06 08:52:17', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e620f5a46b156.65584519-FmlmdH0ipNaHvAE2phkwJtOkpmIfXRj7', '', '', '2020-03-06 15:52:42', '2020-03-06 08:52:42', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1485', 0, 'scheduled-action', '', 3),
(1486, 0, '2020-03-06 08:52:17', '2020-03-06 08:52:17', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e620f5ab7e220.42187294-6rNePxt0FFdwNpATvIFPNxFndFD5m8CB', '', '', '2020-03-06 15:52:42', '2020-03-06 08:52:42', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1486', 0, 'scheduled-action', '', 3),
(1487, 0, '2020-03-06 09:52:42', '2020-03-06 09:52:42', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e621d74330611.51383188-THmRD6kT2uBBMdaKJtU1DjBovO1LeOey', '', '', '2020-03-06 16:52:52', '2020-03-06 09:52:52', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1487', 0, 'scheduled-action', '', 3),
(1488, 0, '2020-03-06 09:52:42', '2020-03-06 09:52:42', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e621d74d2eda5.82274452-QD98Hx6x7WtnsTuWwrEzYge9IKPRCbI3', '', '', '2020-03-06 16:52:52', '2020-03-06 09:52:52', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1488', 0, 'scheduled-action', '', 3),
(1489, 0, '2020-03-06 10:52:52', '2020-03-06 10:52:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e6233be91fb29.92628305-dOMqFgJzlcaq8klNQAdxbHKitqLe88nn', '', '', '2020-03-06 18:27:58', '2020-03-06 11:27:58', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1489', 0, 'scheduled-action', '', 3),
(1490, 0, '2020-03-06 10:52:52', '2020-03-06 10:52:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e6233bf2e5170.01661635-1rxB7TlF1GJQdCIsC1gUr3YDqXWbZe1O', '', '', '2020-03-06 18:27:59', '2020-03-06 11:27:59', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1490', 0, 'scheduled-action', '', 3),
(1491, 0, '2020-03-06 12:27:58', '2020-03-06 12:27:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e62420a306414.48247371-hNPlAYorbDoWc3e53RZXGhNjId2gpEhE', '', '', '2020-03-06 19:28:58', '2020-03-06 12:28:58', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1491', 0, 'scheduled-action', '', 3),
(1492, 0, '2020-03-06 12:27:59', '2020-03-06 12:27:59', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e62420abfa4b9.67536982-PDO7R8GSEfAhjyv0e0rjQqkjzm2Bf1a7', '', '', '2020-03-06 19:28:58', '2020-03-06 12:28:58', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1492', 0, 'scheduled-action', '', 3),
(1493, 0, '2020-03-06 13:28:58', '2020-03-06 13:28:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e62505573e4a3.84905945-FSC4ojRHq9FgCoWTWADzgiRgaJVZrSil', '', '', '2020-03-06 20:29:57', '2020-03-06 13:29:57', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1493', 0, 'scheduled-action', '', 3),
(1494, 0, '2020-03-06 13:28:58', '2020-03-06 13:28:58', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e625055c5b010.64168779-mw8hC03cimEzfDb3FAu6QVh4DmddHleg', '', '', '2020-03-06 20:29:57', '2020-03-06 13:29:57', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1494', 0, 'scheduled-action', '', 3),
(1495, 0, '2020-03-06 14:29:57', '2020-03-06 14:29:57', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e626517154e55.35473651-v6bswMKdwgt2xvxeOYmV0DyfklYjlNPM', '', '', '2020-03-06 21:58:31', '2020-03-06 14:58:31', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1495', 0, 'scheduled-action', '', 3),
(1496, 0, '2020-03-06 14:29:57', '2020-03-06 14:29:57', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e626517ae2996.29966386-QGFyuo0hmC7BWxUnDS0UlM3dOKmZ1ZYP', '', '', '2020-03-06 21:58:31', '2020-03-06 14:58:31', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1496', 0, 'scheduled-action', '', 3),
(1497, 0, '2020-03-06 15:58:31', '2020-03-06 15:58:31', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e65a40fa415b0.44548993-Woc2cW47l3Yl7gYbfs9JMVu1Svi46hYu', '', '', '2020-03-09 09:03:59', '2020-03-09 02:03:59', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1497', 0, 'scheduled-action', '', 3),
(1498, 0, '2020-03-06 15:58:31', '2020-03-06 15:58:31', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e65a4100caa69.72444683-qrKtz5cmSNULHainY9WQGKmYKizOdV57', '', '', '2020-03-09 09:04:00', '2020-03-09 02:04:00', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1498', 0, 'scheduled-action', '', 3),
(1499, 0, '2020-03-09 03:03:59', '2020-03-09 03:03:59', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-647498ffcb0b30.81911134-4xzTXWYeunRQTU5HpvOcJhZdalFWldJO', '', '', '2023-05-29 19:22:23', '2023-05-29 12:22:23', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1499', 1, 'scheduled-action', '', 3),
(1500, 0, '2020-03-09 03:04:00', '2020-03-09 03:04:00', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'closed', 'closed', '', 'scheduled-action-647498ffd51647.11515957-ROMSudIoMzKbrg7p0zW0nzNfBV8ZV5u6', '', '', '2023-05-29 19:22:23', '2023-05-29 12:22:23', '', 0, 'http://localhost/mypham/?post_type=scheduled-action&#038;p=1500', 1, 'scheduled-action', '', 3),
(1501, 0, '2023-05-29 13:22:23', '2023-05-29 13:22:23', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'closed', 'closed', '', '', '', '', '2023-05-29 13:22:23', '2023-05-29 13:22:23', '', 0, 'http://localhost:8080/catba/?post_type=scheduled-action&p=1501', 0, 'scheduled-action', '', 1),
(1502, 0, '2023-05-29 13:22:23', '2023-05-29 13:22:23', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'closed', 'closed', '', '', '', '', '2023-05-29 13:22:23', '2023-05-29 13:22:23', '', 0, 'http://localhost:8080/catba/?post_type=scheduled-action&p=1502', 0, 'scheduled-action', '', 1),
(1510, 1, '2023-05-29 19:37:30', '2023-05-29 12:37:30', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2023-07-26 09:54:01', '2023-07-26 02:54:01', '', 0, 'http://localhost:8080/catba/?page_id=1510', 0, 'page', '', 0),
(1511, 1, '2023-05-29 19:37:30', '2023-05-29 12:37:30', 'eqdqwd', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '1510-revision-v1', '', '', '2023-05-29 19:37:30', '2023-05-29 12:37:30', '', 1510, 'http://localhost:8080/catba/1510-revision-v1/', 0, 'revision', '', 0),
(1515, 1, '2023-07-26 09:53:40', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-26 09:53:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1515', 0, 'post', '', 0),
(1516, 1, '2023-07-26 09:54:01', '2023-07-26 02:54:01', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '1510-revision-v1', '', '', '2023-07-26 09:54:01', '2023-07-26 02:54:01', '', 1510, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1516', 0, 'revision', '', 0),
(1517, 1, '2023-07-26 10:48:54', '2023-07-26 03:48:54', '[ux_image id=\"1519\"]\n\n[ux_image id=\"1519\"]', 'Slider - Trang chủ', '', 'trash', 'closed', 'closed', '', 'slider-trang-chu__trashed', '', '', '2023-07-26 10:55:32', '2023-07-26 03:55:32', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1517', 0, 'blocks', '', 0),
(1518, 1, '2023-07-26 10:48:54', '2023-07-26 03:48:54', '', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:48:54', '2023-07-26 03:48:54', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1518', 0, 'revision', '', 0),
(1519, 1, '2023-07-26 10:49:33', '2023-07-26 03:49:33', '', 'TCG03474', '', 'inherit', 'closed', 'closed', '', 'tcg03474', '', '', '2023-07-26 11:13:28', '2023-07-26 04:13:28', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/TCG03474.webp', 0, 'attachment', 'image/webp', 0),
(1520, 1, '2023-07-26 10:49:52', '2023-07-26 03:49:52', '[ux_slider]\n\n[ux_image id=\"1519\"]\n\n\n[/ux_slider]', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:49:52', '2023-07-26 03:49:52', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1520', 0, 'revision', '', 0),
(1521, 1, '2023-07-26 10:51:39', '2023-07-26 03:51:39', '[ux_slider]\n\n[ux_image id=\"1519\"]\n\n[ux_image id=\"1519\"]\n\n\n[/ux_slider]', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:51:39', '2023-07-26 03:51:39', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1521', 0, 'revision', '', 0),
(1522, 1, '2023-07-26 10:53:28', '2023-07-26 03:53:28', '[ux_image id=\"1519\"]', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:53:28', '2023-07-26 03:53:28', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1522', 0, 'revision', '', 0),
(1523, 1, '2023-07-26 10:53:59', '2023-07-26 03:53:59', '[ux_image id=\"1519\"]\n\n[ux_image]', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:53:59', '2023-07-26 03:53:59', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1523', 0, 'revision', '', 0),
(1524, 1, '2023-07-26 10:54:20', '2023-07-26 03:54:20', '[ux_image id=\"1519\"]\n\n[ux_image id=\"1519\"]', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1517-revision-v1', '', '', '2023-07-26 10:54:20', '2023-07-26 03:54:20', '', 1517, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1524', 0, 'revision', '', 0),
(1525, 1, '2023-07-26 10:55:44', '2023-07-26 03:55:44', '', 'Slider - Trang chủ', '', 'trash', 'closed', 'closed', '', 'slider-trang-chu__trashed-2', '', '', '2023-07-26 10:56:47', '2023-07-26 03:56:47', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1525', 0, 'blocks', '', 0),
(1526, 1, '2023-07-26 10:55:44', '2023-07-26 03:55:44', '', 'Slider - Trang chủ', '', 'inherit', 'closed', 'closed', '', '1525-revision-v1', '', '', '2023-07-26 10:55:44', '2023-07-26 03:55:44', '', 1525, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1526', 0, 'revision', '', 0),
(1527, 1, '2023-07-26 10:56:20', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-26 10:56:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1527', 0, 'blocks', '', 0),
(1528, 1, '2023-07-26 11:09:55', '2023-07-26 04:09:55', '<div class=\"col-xl-7\">\n<div class=\"title-alls__pages titles-mains\">\n<p class=\"title-allss\">Tonkin Garden</p>\n</div>\n<p class=\"title-text__mains\">- Garden of Emotions -</p>\n<div class=\"mains-text__alls s-content\">\n<p><span style=\"font-weight: 400;\">Villagers in the Red River Delta traditionally had gardens around their homes. The owners of Tam Coc Garden were inspired by this ancestral way of life to create this magnificent Tonkinese garden.</span></p>\n</div>\n<a class=\"see-sustainability__items\" title=\"- Garden of Emotions -\" href=\"garden\"> Read more <img src=\"https://www.tamcocgarden.com/wp-content/themes/tamcoc/theme/frontend/images/see-mores-growns.svg\" /> </a></div>', 'Garden of Emotions', '', 'publish', 'closed', 'closed', '', 'garden-of-emotions-image', '', '', '2023-07-26 11:15:25', '2023-07-26 04:15:25', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1528', 0, 'blocks', '', 0),
(1529, 1, '2023-07-26 11:09:55', '2023-07-26 04:09:55', '', 'Garden of Emotions - Image', '', 'inherit', 'closed', 'closed', '', '1528-revision-v1', '', '', '2023-07-26 11:09:55', '2023-07-26 04:09:55', '', 1528, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1529', 0, 'revision', '', 0),
(1530, 1, '2023-07-26 11:10:47', '2023-07-26 04:10:47', '', 'well-come-1-img-1', '', 'inherit', 'closed', 'closed', '', 'well-come-1-img-1', '', '', '2023-07-26 11:10:47', '2023-07-26 04:10:47', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/well-come-1-img-1.webp', 0, 'attachment', 'image/webp', 0),
(1531, 1, '2023-07-26 11:11:07', '2023-07-26 04:11:07', '[ux_image id=\"1530\"]\n\n[ux_image id=\"1530\"]', 'Garden of Emotions - Image', '', 'inherit', 'closed', 'closed', '', '1528-revision-v1', '', '', '2023-07-26 11:11:07', '2023-07-26 04:11:07', '', 1528, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1531', 0, 'revision', '', 0),
(1532, 1, '2023-07-26 11:14:51', '2023-07-26 04:14:51', '[ux_image id=\"1530\"]\r\n\r\n[ux_image id=\"1530\"]', 'Garden of Emotions', '', 'inherit', 'closed', 'closed', '', '1528-revision-v1', '', '', '2023-07-26 11:14:51', '2023-07-26 04:14:51', '', 1528, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1532', 0, 'revision', '', 0),
(1533, 1, '2023-07-26 11:15:25', '2023-07-26 04:15:25', '<div class=\"col-xl-7\">\n<div class=\"title-alls__pages titles-mains\">\n<p class=\"title-allss\">Tonkin Garden</p>\n</div>\n<p class=\"title-text__mains\">- Garden of Emotions -</p>\n<div class=\"mains-text__alls s-content\">\n<p><span style=\"font-weight: 400;\">Villagers in the Red River Delta traditionally had gardens around their homes. The owners of Tam Coc Garden were inspired by this ancestral way of life to create this magnificent Tonkinese garden.</span></p>\n</div>\n<a class=\"see-sustainability__items\" title=\"- Garden of Emotions -\" href=\"garden\"> Read more <img src=\"https://www.tamcocgarden.com/wp-content/themes/tamcoc/theme/frontend/images/see-mores-growns.svg\" /> </a></div>', 'Garden of Emotions', '', 'inherit', 'closed', 'closed', '', '1528-revision-v1', '', '', '2023-07-26 11:15:25', '2023-07-26 04:15:25', '', 1528, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1533', 0, 'revision', '', 0),
(1534, 1, '2023-07-26 11:16:53', '2023-07-26 04:16:53', '[ux_image id=\"1536\"]', 'Image - Phụ nữ cuốc đất', '', 'publish', 'closed', 'closed', '', 'image-phu-nu-cuoc-dat', '', '', '2023-07-26 11:17:25', '2023-07-26 04:17:25', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1534', 0, 'blocks', '', 0),
(1535, 1, '2023-07-26 11:16:53', '2023-07-26 04:16:53', '', 'Image - Phụ nữ cuốc đất', '', 'inherit', 'closed', 'closed', '', '1534-revision-v1', '', '', '2023-07-26 11:16:53', '2023-07-26 04:16:53', '', 1534, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1535', 0, 'revision', '', 0),
(1536, 1, '2023-07-26 11:17:22', '2023-07-26 04:17:22', '', 'after-3-welcome', '', 'inherit', 'closed', 'closed', '', 'after-3-welcome', '', '', '2023-07-26 11:17:22', '2023-07-26 04:17:22', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-welcome.webp', 0, 'attachment', 'image/webp', 0),
(1537, 1, '2023-07-26 11:17:25', '2023-07-26 04:17:25', '[ux_image id=\"1536\"]', 'Image - Phụ nữ cuốc đất', '', 'inherit', 'closed', 'closed', '', '1534-revision-v1', '', '', '2023-07-26 11:17:25', '2023-07-26 04:17:25', '', 1534, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1537', 0, 'revision', '', 0),
(1538, 1, '2023-07-26 11:18:32', '2023-07-26 04:18:32', '<div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">The Land</p>\n                        </div>\n                        <p class=\"title-text__mains\">- The ancient roots of Tam Coc -</p>\n                        <div class=\"mains-text__alls s-content\">\n                            <p><span style=\"font-weight: 400\">Nested between lumbering limestone peaks and glistening rice paddies, Tam Coc Garden is a charming oasis that is endowed with rich natural and cultural heritage. The resort is designed according to the original construction of an authentic Tonkinese village with stone houses and tile roofs in the middle of a lush garden. Everything appeals to travelers who appreciate the beauty of nature, traditional values, local culture and who have a stake in creating ecologically sustainable travel experiences.</span>\n                            </p>\n                        </div>\n                        <ul class=\"nav-all__bottoms\">\n                            <li><a href=\"our-story\" title=\"Its Story\">Its Story</a>\n                            </li>\n                            <li><a href=\"our-villagers\" title=\"Its Villagers\">Its Villagers</a>\n                            </li>\n                            <li><a href=\"discover-tam-coc\" title=\"Its Attractions\">Its Attractions</a>\n                            </li>\n                        </ul>', 'The ancient roots', '', 'publish', 'closed', 'closed', '', 'the-ancient-roots', '', '', '2023-07-26 11:18:58', '2023-07-26 04:18:58', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1538', 0, 'blocks', '', 0),
(1539, 1, '2023-07-26 11:18:32', '2023-07-26 04:18:32', '', 'The ancient roots', '', 'inherit', 'closed', 'closed', '', '1538-revision-v1', '', '', '2023-07-26 11:18:32', '2023-07-26 04:18:32', '', 1538, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1539', 0, 'revision', '', 0),
(1540, 1, '2023-07-26 11:18:58', '2023-07-26 04:18:58', '<div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">The Land</p>\n                        </div>\n                        <p class=\"title-text__mains\">- The ancient roots of Tam Coc -</p>\n                        <div class=\"mains-text__alls s-content\">\n                            <p><span style=\"font-weight: 400\">Nested between lumbering limestone peaks and glistening rice paddies, Tam Coc Garden is a charming oasis that is endowed with rich natural and cultural heritage. The resort is designed according to the original construction of an authentic Tonkinese village with stone houses and tile roofs in the middle of a lush garden. Everything appeals to travelers who appreciate the beauty of nature, traditional values, local culture and who have a stake in creating ecologically sustainable travel experiences.</span>\n                            </p>\n                        </div>\n                        <ul class=\"nav-all__bottoms\">\n                            <li><a href=\"our-story\" title=\"Its Story\">Its Story</a>\n                            </li>\n                            <li><a href=\"our-villagers\" title=\"Its Villagers\">Its Villagers</a>\n                            </li>\n                            <li><a href=\"discover-tam-coc\" title=\"Its Attractions\">Its Attractions</a>\n                            </li>\n                        </ul>', 'The ancient roots', '', 'inherit', 'closed', 'closed', '', '1538-revision-v1', '', '', '2023-07-26 11:18:58', '2023-07-26 04:18:58', '', 1538, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1540', 0, 'revision', '', 0),
(1541, 1, '2023-07-26 11:20:06', '2023-07-26 04:20:06', '[ux_image id=\"1543\"]', 'The ancient roots - image', '', 'publish', 'closed', 'closed', '', 'the-ancient-roots-image', '', '', '2023-07-26 11:23:45', '2023-07-26 04:23:45', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1541', 0, 'blocks', '', 0),
(1542, 1, '2023-07-26 11:20:06', '2023-07-26 04:20:06', '', 'The ancient roots - image', '', 'inherit', 'closed', 'closed', '', '1541-revision-v1', '', '', '2023-07-26 11:20:06', '2023-07-26 04:20:06', '', 1541, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1542', 0, 'revision', '', 0),
(1543, 1, '2023-07-26 11:23:41', '2023-07-26 04:23:41', '', 'img-right-the-people', '', 'inherit', 'closed', 'closed', '', 'img-right-the-people', '', '', '2023-07-26 11:23:41', '2023-07-26 04:23:41', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/img-right-the-people.webp', 0, 'attachment', 'image/webp', 0),
(1544, 1, '2023-07-26 11:23:45', '2023-07-26 04:23:45', '[ux_image id=\"1543\"]', 'The ancient roots - image', '', 'inherit', 'closed', 'closed', '', '1541-revision-v1', '', '', '2023-07-26 11:23:45', '2023-07-26 04:23:45', '', 1541, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1544', 0, 'revision', '', 0),
(1545, 1, '2023-07-26 11:24:31', '2023-07-26 04:24:31', '<div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">The Houses</p>\n                        </div>\n                        <p class=\"title-text__mains\">- Designed for natural living -</p>\n                        <div class=\"mains-text__alls s-content\">\n                            <p><span style=\"font-weight: 400\">The tastefully decorated rooms blend furniture, materials, colors and style to bring a sense of cohesion through a refined charm without pretentiousness. Stone, wood, traditional tiles, ceramics and bamboo are naturally intertwined to create a unique personality and charisma.</span>\n                            </p>\n                        </div>\n                        <ul class=\"nav-all__bottoms\">\n                            <li><a href=\"room/deluxe-tonkin-garden/\" title=\"Deluxe Tonkin Garden Bungalow\">Deluxe Tonkin Garden Bungalow</a>\n                            </li>\n                            <li><a href=\"room/full-moon-villa/\" title=\"Full Moon Villa\">Full Moon Villa</a>\n                            </li>\n                            <li><a href=\"room/sunset-valley-bungalow\" title=\"Sunset Valley Bungalow\">Sunset Valley Bungalow</a>\n                            </li>\n                            <li><a href=\"room/premium-tonkin-garden\" title=\"Premium Tonkin Garden Bungalow\">Premium Tonkin Garden Bungalow</a>\n                            </li>\n                        </ul>', 'Designed for natural living', '', 'publish', 'closed', 'closed', '', 'designed-for-natural-living', '', '', '2023-07-26 11:24:48', '2023-07-26 04:24:48', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1545', 0, 'blocks', '', 0),
(1546, 1, '2023-07-26 11:24:31', '2023-07-26 04:24:31', '', 'Designed for natural living', '', 'inherit', 'closed', 'closed', '', '1545-revision-v1', '', '', '2023-07-26 11:24:31', '2023-07-26 04:24:31', '', 1545, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1546', 0, 'revision', '', 0),
(1547, 1, '2023-07-26 11:24:48', '2023-07-26 04:24:48', '<div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">The Houses</p>\n                        </div>\n                        <p class=\"title-text__mains\">- Designed for natural living -</p>\n                        <div class=\"mains-text__alls s-content\">\n                            <p><span style=\"font-weight: 400\">The tastefully decorated rooms blend furniture, materials, colors and style to bring a sense of cohesion through a refined charm without pretentiousness. Stone, wood, traditional tiles, ceramics and bamboo are naturally intertwined to create a unique personality and charisma.</span>\n                            </p>\n                        </div>\n                        <ul class=\"nav-all__bottoms\">\n                            <li><a href=\"room/deluxe-tonkin-garden/\" title=\"Deluxe Tonkin Garden Bungalow\">Deluxe Tonkin Garden Bungalow</a>\n                            </li>\n                            <li><a href=\"room/full-moon-villa/\" title=\"Full Moon Villa\">Full Moon Villa</a>\n                            </li>\n                            <li><a href=\"room/sunset-valley-bungalow\" title=\"Sunset Valley Bungalow\">Sunset Valley Bungalow</a>\n                            </li>\n                            <li><a href=\"room/premium-tonkin-garden\" title=\"Premium Tonkin Garden Bungalow\">Premium Tonkin Garden Bungalow</a>\n                            </li>\n                        </ul>', 'Designed for natural living', '', 'inherit', 'closed', 'closed', '', '1545-revision-v1', '', '', '2023-07-26 11:24:48', '2023-07-26 04:24:48', '', 1545, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1547', 0, 'revision', '', 0),
(1548, 1, '2023-07-26 11:25:32', '2023-07-26 04:25:32', '[ux_image id=\"1550\"]', 'Designed for natural living - Image', '', 'publish', 'closed', 'closed', '', 'designed-for-natural-living-image', '', '', '2023-07-26 11:25:58', '2023-07-26 04:25:58', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1548', 0, 'blocks', '', 0),
(1549, 1, '2023-07-26 11:25:32', '2023-07-26 04:25:32', '', 'Designed for natural living - Image', '', 'inherit', 'closed', 'closed', '', '1548-revision-v1', '', '', '2023-07-26 11:25:32', '2023-07-26 04:25:32', '', 1548, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1549', 0, 'revision', '', 0),
(1550, 1, '2023-07-26 11:25:55', '2023-07-26 04:25:55', '', 'img-the-house-mains', '', 'inherit', 'closed', 'closed', '', 'img-the-house-mains', '', '', '2023-07-26 11:25:55', '2023-07-26 04:25:55', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/img-the-house-mains.webp', 0, 'attachment', 'image/webp', 0),
(1551, 1, '2023-07-26 11:25:58', '2023-07-26 04:25:58', '[ux_image id=\"1550\"]', 'Designed for natural living - Image', '', 'inherit', 'closed', 'closed', '', '1548-revision-v1', '', '', '2023-07-26 11:25:58', '2023-07-26 04:25:58', '', 1548, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1551', 0, 'revision', '', 0),
(1552, 1, '2023-07-26 11:26:38', '2023-07-26 04:26:38', '<div class=\"text-alls__experiences\">\n                        <div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">Experiences</p>\n                        </div>\n                    </div>\n                    <p class=\"title-text__mains\">- Discover the soul of Tam Coc -</p>\n                    <div class=\"mains-text__alls\">\n                        <p><span style=\"font-weight: 400\">Connection to the natural world is an important part of one’s sense of self. Nature is often forgotten and taken for granted, and yet it\'s right in front of us if only we would listen with our ear to the earth. </span>\n                        </p>\n                    </div>', 'Discover the soul', '', 'publish', 'closed', 'closed', '', 'discover-the-soul', '', '', '2023-07-26 11:26:56', '2023-07-26 04:26:56', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1552', 0, 'blocks', '', 0),
(1553, 1, '2023-07-26 11:26:38', '2023-07-26 04:26:38', '', 'Discover the soul', '', 'inherit', 'closed', 'closed', '', '1552-revision-v1', '', '', '2023-07-26 11:26:38', '2023-07-26 04:26:38', '', 1552, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1553', 0, 'revision', '', 0),
(1554, 1, '2023-07-26 11:26:56', '2023-07-26 04:26:56', '<div class=\"text-alls__experiences\">\n                        <div class=\"title-alls__pages titles-mains\">\n                            <p class=\"title-allss\">Experiences</p>\n                        </div>\n                    </div>\n                    <p class=\"title-text__mains\">- Discover the soul of Tam Coc -</p>\n                    <div class=\"mains-text__alls\">\n                        <p><span style=\"font-weight: 400\">Connection to the natural world is an important part of one’s sense of self. Nature is often forgotten and taken for granted, and yet it\'s right in front of us if only we would listen with our ear to the earth. </span>\n                        </p>\n                    </div>', 'Discover the soul', '', 'inherit', 'closed', 'closed', '', '1552-revision-v1', '', '', '2023-07-26 11:26:56', '2023-07-26 04:26:56', '', 1552, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1554', 0, 'revision', '', 0),
(1555, 1, '2023-07-26 11:27:42', '2023-07-26 04:27:42', '[ux_image id=\"1558\"]', 'Discover the soul - image', '', 'publish', 'closed', 'closed', '', 'discover-the-soul-image', '', '', '2023-07-26 11:28:25', '2023-07-26 04:28:25', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1555', 0, 'blocks', '', 0),
(1556, 1, '2023-07-26 11:27:42', '2023-07-26 04:27:42', '', 'Discover the soul - image', '', 'inherit', 'closed', 'closed', '', '1555-revision-v1', '', '', '2023-07-26 11:27:42', '2023-07-26 04:27:42', '', 1555, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1556', 0, 'revision', '', 0),
(1557, 1, '2023-07-26 11:27:44', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-26 11:27:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1557', 0, 'blocks', '', 0),
(1558, 1, '2023-07-26 11:28:22', '2023-07-26 04:28:22', '', 'after-3-experiences', '', 'inherit', 'closed', 'closed', '', 'after-3-experiences', '', '', '2023-07-26 11:28:22', '2023-07-26 04:28:22', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-experiences.webp', 0, 'attachment', 'image/webp', 0),
(1559, 1, '2023-07-26 11:28:25', '2023-07-26 04:28:25', '[ux_image id=\"1558\"]', 'Discover the soul - image', '', 'inherit', 'closed', 'closed', '', '1555-revision-v1', '', '', '2023-07-26 11:28:25', '2023-07-26 04:28:25', '', 1555, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1559', 0, 'revision', '', 0),
(1560, 1, '2023-07-26 11:31:13', '2023-07-26 04:31:13', '[ux_image id=\"1564\"]', 'Designed for natural living – Image - Right', '', 'publish', 'closed', 'closed', '', 'designed-for-natural-living-image-right', '', '', '2023-07-26 11:31:33', '2023-07-26 04:31:33', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&#038;p=1560', 0, 'blocks', '', 0),
(1561, 1, '2023-07-26 11:31:13', '2023-07-26 04:31:13', '', 'Designed for natural living – Image - Right', '', 'inherit', 'closed', 'closed', '', '1560-revision-v1', '', '', '2023-07-26 11:31:13', '2023-07-26 04:31:13', '', 1560, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1561', 0, 'revision', '', 0),
(1562, 1, '2023-07-26 11:31:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-26 11:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1562', 0, 'blocks', '', 0),
(1563, 1, '2023-07-26 11:31:19', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-26 11:31:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1563', 0, 'blocks', '', 0),
(1564, 1, '2023-07-26 11:31:30', '2023-07-26 04:31:30', '', 'after-3-house', '', 'inherit', 'closed', 'closed', '', 'after-3-house', '', '', '2023-07-26 11:31:30', '2023-07-26 04:31:30', '', 0, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-house.webp', 0, 'attachment', 'image/webp', 0),
(1565, 1, '2023-07-26 11:31:33', '2023-07-26 04:31:33', '[ux_image id=\"1564\"]', 'Designed for natural living – Image - Right', '', 'inherit', 'closed', 'closed', '', '1560-revision-v1', '', '', '2023-07-26 11:31:33', '2023-07-26 04:31:33', '', 1560, 'http://localhost/wp-flatsome/DefaultWordPress/?p=1565', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_social_users`
--

CREATE TABLE `wp_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `social_users_id` int(11) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `link_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(5, 25, 'product_count_product_tag', '0'),
(6, 26, 'product_count_product_tag', '0'),
(7, 27, 'product_count_product_tag', '0'),
(8, 28, 'product_count_product_tag', '0'),
(11, 30, 'product_count_product_tag', '0'),
(12, 31, 'product_count_product_tag', '0'),
(13, 32, 'product_count_product_tag', '0'),
(24, 38, 'product_count_product_tag', '0'),
(25, 39, 'product_count_product_tag', '0'),
(26, 40, 'product_count_product_tag', '0'),
(27, 41, 'product_count_product_tag', '0'),
(28, 42, 'product_count_product_tag', '0'),
(29, 43, 'product_count_product_tag', '0'),
(30, 44, 'product_count_product_tag', '0'),
(31, 45, 'product_count_product_tag', '0'),
(34, 47, 'product_count_product_tag', '0'),
(35, 48, 'product_count_product_tag', '0'),
(36, 49, 'product_count_product_tag', '0'),
(37, 50, 'product_count_product_tag', '0'),
(38, 51, 'product_count_product_tag', '0'),
(39, 52, 'product_count_product_tag', '0'),
(40, 53, 'product_count_product_tag', '0'),
(41, 54, 'product_count_product_tag', '0'),
(42, 55, 'product_count_product_tag', '0'),
(43, 56, 'product_count_product_tag', '0'),
(56, 63, 'product_count_product_tag', '0'),
(57, 64, 'product_count_product_tag', '0'),
(60, 75, 'cate_thuoc_tinh', '219'),
(61, 75, 'cate_color', 'Cam'),
(62, 76, 'cate_thuoc_tinh', '218'),
(63, 76, 'cate_color', 'Xanh'),
(64, 77, 'cate_thuoc_tinh', '218'),
(65, 77, 'cate_color', 'Xanh'),
(66, 78, 'cate_thuoc_tinh', '219'),
(67, 78, 'cate_color', 'Cam'),
(68, 72, 'cate_thuoc_tinh', '218'),
(69, 72, 'cate_color', 'Xanh'),
(70, 15, 'product_count_product_cat', '0'),
(88, 130, 'order', '0'),
(89, 130, 'display_type', ''),
(90, 130, 'thumbnail_id', '0'),
(91, 131, 'order', '0'),
(92, 131, 'display_type', ''),
(93, 131, 'thumbnail_id', '0'),
(94, 132, 'order', '0'),
(95, 132, 'display_type', ''),
(96, 132, 'thumbnail_id', '0'),
(97, 133, 'order', '0'),
(98, 133, 'display_type', ''),
(99, 133, 'thumbnail_id', '0'),
(100, 134, 'order', '0'),
(101, 134, 'display_type', ''),
(102, 134, 'thumbnail_id', '0'),
(103, 135, 'order', '0'),
(104, 135, 'display_type', ''),
(105, 135, 'thumbnail_id', '0'),
(106, 136, 'order', '0'),
(107, 136, 'display_type', ''),
(108, 136, 'thumbnail_id', '0'),
(109, 137, 'order', '0'),
(110, 137, 'display_type', ''),
(111, 137, 'thumbnail_id', '0'),
(112, 138, 'order', '0'),
(113, 138, 'display_type', ''),
(114, 138, 'thumbnail_id', '0'),
(115, 139, 'order', '0'),
(116, 139, 'display_type', ''),
(117, 139, 'thumbnail_id', '0'),
(118, 140, 'order', '0'),
(119, 140, 'display_type', ''),
(120, 140, 'thumbnail_id', '0'),
(121, 131, 'product_count_product_cat', '3'),
(122, 135, 'product_count_product_cat', '1'),
(123, 145, 'order_pa_dung-tich', '0'),
(124, 146, 'order_pa_dung-tich', '0'),
(125, 147, 'order_pa_dung-tich', '0'),
(126, 148, 'order_pa_dung-tich', '0'),
(127, 149, 'order_pa_hang-san-xuat', '0'),
(128, 150, 'order_pa_hang-san-xuat', '0'),
(129, 151, 'order_pa_xuat-xu', '0'),
(130, 152, 'order_pa_xuat-xu', '0'),
(131, 153, 'order_pa_xuat-xu', '0'),
(132, 154, 'order_pa_mau-sac', '0'),
(133, 155, 'order_pa_mau-sac', '0'),
(134, 156, 'order_pa_mau-sac', '0'),
(135, 131, 'cat_meta', 'a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}'),
(136, 131, 'displayhome', '1'),
(137, 131, '_displayhome', 'field_5e5dd83f38620'),
(138, 131, 'cate_img', '1357'),
(139, 131, '_cate_img', 'field_5e5e01773b57c'),
(140, 135, 'cat_meta', 'a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}'),
(141, 135, 'displayhome', '1'),
(142, 135, '_displayhome', 'field_5e5dd83f38620'),
(143, 135, 'cate_img', '1363'),
(144, 135, '_cate_img', 'field_5e5e01773b57c'),
(145, 158, 'thumbnail_id', '0'),
(146, 159, 'thumbnail_id', '0'),
(147, 160, 'thumbnail_id', '0'),
(148, 160, 'product_count_yith_product_brand', '2'),
(149, 159, 'product_count_yith_product_brand', '2'),
(150, 130, 'product_count_product_cat', '0'),
(151, 139, 'product_count_product_cat', '0'),
(152, 131, 'brand_prd', 'a:2:{i:0;s:3:\"160\";i:1;s:3:\"159\";}'),
(153, 131, '_brand_prd', 'field_5e5f723e6502a'),
(154, 132, 'cat_meta', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(18, 'Video', 'post-format-video', 0),
(19, 'brooklyn', 'brooklyn', 0),
(20, 'fashion', 'fashion', 0),
(21, 'style', 'style-2', 0),
(22, 'women', 'women-3', 0),
(25, 'jeans', 'jeans-2', 0),
(26, 'man', 'man', 0),
(27, 't-shirt', 't-shirt', 0),
(28, 'white', 'white', 0),
(30, 'Diesel', 'diesel', 0),
(31, 'shoe', 'shoe', 0),
(32, 'stars', 'stars', 0),
(38, 'fit', 'fit', 0),
(39, 'levis', 'levis', 0),
(40, 'party', 'party', 0),
(41, 'washed-out', 'washed-out', 0),
(42, 'women', 'women-2', 0),
(43, 'River Island', 'river-island', 0),
(44, 'Jack and Jones', 'jack-and-jones', 0),
(45, 'Lee', 'lee', 0),
(47, 'bag', 'bag', 0),
(48, 'classic', 'classic', 0),
(49, 'leather', 'leather', 0),
(50, 'sweden', 'sweden', 0),
(51, 'green', 'green', 0),
(52, 'nypd', 'nypd', 0),
(53, 'Converse', 'converse', 0),
(54, 'rock chick', 'rock-chick', 0),
(55, 'vans', 'vans', 0),
(56, 'run', 'run', 0),
(63, 'Jumper', 'jumper', 0),
(64, 'Pink', 'pink', 0),
(65, 'Lookbook', 'lookbook', 0),
(66, 'Design', 'design', 0),
(67, 'Dịch vụ', 'dich-vu', 0),
(68, 'Main', 'main', 0),
(69, 'wc-admin-notes', 'wc-admin-notes', 0),
(70, 'Tràng phục linh', 'he-thong-phan-phoi-trang-phuc-linh', 0),
(71, 'Tràng phục linh Plus', 'he-thong-phan-phoi-trang-phuc-linh-plus', 0),
(72, 'Tràng phục linh', 'he-thong-trang-phuc-linh', 0),
(73, 'Tràng phục linh plus', 'he-thong-trang-phuc-linh-plus', 0),
(75, 'a', 'a', 0),
(76, 'b', 'b', 0),
(77, 'Danh mục video 1', 'danh-muc-video-1', 0),
(78, 'Danh mục video 2', 'danh-muc-video-2', 0),
(84, 'Về chúng tôi', 've-chung-toi', 0),
(88, 'Dịch vụ', 'dich-vu', 0),
(130, 'Sản phẩm làm sạch da', 'san-pham-lam-sach-da', 0),
(131, 'Chăm sóc &amp; dưỡng da mặt', 'cham-soc-duong-da-mat', 0),
(132, 'Chăm sóc da toàn thân', 'cham-soc-da-toan-than', 0),
(133, 'Chăm sóc tóc', 'cham-soc-toc', 0),
(134, 'Thực phẩm CS sức khỏe', 'thuc-pham-cs-suc-khoe', 0),
(135, 'Nước hoa', 'nuoc-hoa', 0),
(136, 'Mỹ phẩm đặc trị', 'my-pham-dac-tri', 0),
(137, 'Phụ kiện trang điểm', 'phu-kien-trang-diem', 0),
(138, 'Sản phẩm trang điểm', 'san-pham-trang-diem', 0),
(139, 'Sữa rửa mặt', 'sua-rua-mat', 0),
(140, 'Tẩy lông', 'tay-long', 0),
(141, 'Danh mục sản phẩm', 'danh-muc-san-pham', 0),
(142, 'Khuyến mãi', 'khuyen-mai', 0),
(143, 'Tuyển dụng', 'tuyen-dung', 0),
(144, 'Tin tức', 'tin-tuc', 0),
(145, '5 ml', '5-ml', 0),
(146, '10 ml', '10-ml', 0),
(147, '50 ml', '50-ml', 0),
(148, '100 ml', '100-ml', 0),
(149, 'Dionel', 'dionel', 0),
(150, 'Chanel', 'chanel', 0),
(151, 'Hàn Quốc', 'han-quoc', 0),
(152, 'Nhật Bản', 'nhat-ban', 0),
(153, 'Mỹ', 'my', 0),
(154, 'Đen', 'den', 0),
(155, 'Xanh', 'xanh', 0),
(156, 'Trắng', 'trang', 0),
(157, 'Bán buôn mỹ phẩm', 'ban-buon-my-pham', 0),
(158, 'Shiseido', 'shiseido', 0),
(159, 'Sebamed', 'sebamed', 0),
(160, 'Lancome', 'lancome', 0),
(161, 'isdisabled', 'isdisabled', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(220, 65, 0),
(221, 66, 0),
(222, 66, 0),
(223, 66, 0),
(224, 66, 0),
(225, 66, 0),
(226, 66, 0),
(227, 65, 0),
(457, 70, 0),
(457, 72, 0),
(461, 72, 0),
(462, 72, 0),
(485, 72, 0),
(495, 77, 0),
(498, 77, 0),
(525, 76, 0),
(536, 76, 0),
(781, 144, 0),
(784, 144, 0),
(787, 144, 0),
(1096, 88, 0),
(1098, 88, 0),
(1100, 88, 0),
(1102, 88, 0),
(1104, 88, 0),
(1106, 88, 0),
(1108, 88, 0),
(1110, 88, 0),
(1142, 69, 0),
(1255, 69, 0),
(1256, 69, 0),
(1258, 141, 0),
(1259, 141, 0),
(1260, 141, 0),
(1261, 141, 0),
(1262, 141, 0),
(1263, 141, 0),
(1264, 141, 0),
(1265, 141, 0),
(1266, 141, 0),
(1267, 141, 0),
(1268, 141, 0),
(1270, 68, 0),
(1271, 68, 0),
(1272, 68, 0),
(1273, 69, 0),
(1274, 69, 0),
(1287, 69, 0),
(1288, 69, 0),
(1289, 69, 0),
(1290, 69, 0),
(1302, 2, 0),
(1302, 131, 0),
(1302, 159, 0),
(1308, 69, 0),
(1309, 69, 0),
(1317, 2, 0),
(1317, 135, 0),
(1317, 146, 0),
(1317, 149, 0),
(1317, 151, 0),
(1317, 154, 0),
(1317, 160, 0),
(1332, 69, 0),
(1333, 69, 0),
(1334, 69, 0),
(1335, 69, 0),
(1336, 69, 0),
(1337, 69, 0),
(1338, 69, 0),
(1339, 69, 0),
(1342, 69, 0),
(1343, 69, 0),
(1346, 69, 0),
(1347, 69, 0),
(1348, 69, 0),
(1349, 69, 0),
(1352, 69, 0),
(1353, 69, 0),
(1354, 69, 0),
(1355, 69, 0),
(1358, 69, 0),
(1359, 69, 0),
(1361, 69, 0),
(1362, 69, 0),
(1372, 69, 0),
(1373, 69, 0),
(1374, 69, 0),
(1375, 69, 0),
(1376, 69, 0),
(1377, 69, 0),
(1388, 69, 0),
(1389, 69, 0),
(1390, 69, 0),
(1391, 69, 0),
(1402, 69, 0),
(1403, 69, 0),
(1404, 69, 0),
(1405, 69, 0),
(1415, 142, 0),
(1418, 143, 0),
(1424, 68, 0),
(1425, 84, 0),
(1426, 84, 0),
(1427, 84, 0),
(1428, 67, 0),
(1429, 67, 0),
(1430, 67, 0),
(1431, 67, 0),
(1432, 67, 0),
(1433, 67, 0),
(1438, 69, 0),
(1439, 69, 0),
(1440, 2, 0),
(1440, 131, 0),
(1440, 151, 0),
(1440, 159, 0),
(1442, 2, 0),
(1442, 131, 0),
(1442, 148, 0),
(1442, 160, 0),
(1444, 69, 0),
(1445, 69, 0),
(1448, 69, 0),
(1449, 69, 0),
(1453, 69, 0),
(1454, 69, 0),
(1455, 69, 0),
(1456, 69, 0),
(1457, 69, 0),
(1458, 69, 0),
(1459, 69, 0),
(1460, 69, 0),
(1461, 69, 0),
(1462, 69, 0),
(1463, 69, 0),
(1464, 69, 0),
(1466, 69, 0),
(1467, 69, 0),
(1471, 69, 0),
(1472, 69, 0),
(1473, 69, 0),
(1474, 69, 0),
(1475, 69, 0),
(1476, 69, 0),
(1477, 69, 0),
(1478, 69, 0),
(1479, 69, 0),
(1480, 69, 0),
(1481, 69, 0),
(1482, 69, 0),
(1483, 69, 0),
(1484, 69, 0),
(1485, 69, 0),
(1486, 69, 0),
(1487, 69, 0),
(1488, 69, 0),
(1489, 69, 0),
(1490, 69, 0),
(1491, 69, 0),
(1492, 69, 0),
(1493, 69, 0),
(1494, 69, 0),
(1495, 69, 0),
(1496, 69, 0),
(1497, 69, 0),
(1498, 69, 0),
(1499, 69, 0),
(1500, 69, 0),
(1501, 69, 0),
(1502, 69, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 4),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(18, 18, 'post_format', '', 0, 0),
(19, 19, 'post_tag', '', 0, 0),
(20, 20, 'post_tag', '', 0, 0),
(21, 21, 'post_tag', '', 0, 0),
(22, 22, 'post_tag', '', 0, 0),
(25, 25, 'product_tag', '', 0, 0),
(26, 26, 'product_tag', '', 0, 0),
(27, 27, 'product_tag', '', 0, 0),
(28, 28, 'product_tag', '', 0, 0),
(30, 30, 'product_tag', '', 0, 0),
(31, 31, 'product_tag', '', 0, 0),
(32, 32, 'product_tag', '', 0, 0),
(38, 38, 'product_tag', '', 0, 0),
(39, 39, 'product_tag', '', 0, 0),
(40, 40, 'product_tag', '', 0, 0),
(41, 41, 'product_tag', '', 0, 0),
(42, 42, 'product_tag', '', 0, 0),
(43, 43, 'product_tag', '', 0, 0),
(44, 44, 'product_tag', '', 0, 0),
(45, 45, 'product_tag', '', 0, 0),
(47, 47, 'product_tag', '', 0, 0),
(48, 48, 'product_tag', '', 0, 0),
(49, 49, 'product_tag', '', 0, 0),
(50, 50, 'product_tag', '', 0, 0),
(51, 51, 'product_tag', '', 0, 0),
(52, 52, 'product_tag', '', 0, 0),
(53, 53, 'product_tag', '', 0, 0),
(54, 54, 'product_tag', '', 0, 0),
(55, 55, 'product_tag', '', 0, 0),
(56, 56, 'product_tag', '', 0, 0),
(63, 63, 'product_tag', '', 0, 0),
(64, 64, 'product_tag', '', 0, 0),
(65, 65, 'featured_item_category', '', 0, 2),
(66, 66, 'featured_item_category', '', 0, 6),
(67, 67, 'nav_menu', '', 0, 6),
(68, 68, 'nav_menu', '', 0, 4),
(69, 69, 'action-group', '', 0, 97),
(70, 70, 'phanphoi_cat', '', 0, 1),
(71, 71, 'phanphoi_cat', '', 0, 0),
(72, 72, 'phanphoi-cate', '', 0, 4),
(73, 73, 'phanphoi-cate', '', 0, 0),
(75, 75, 'faq-cate', '', 0, 0),
(76, 76, 'faq-cate', 'b', 0, 2),
(77, 77, 'video-cate', '', 0, 2),
(78, 78, 'video-cate', '', 0, 0),
(84, 84, 'nav_menu', '', 0, 3),
(88, 88, 'sv-cate', '', 0, 8),
(130, 130, 'product_cat', '', 0, 0),
(131, 131, 'product_cat', '', 0, 3),
(132, 132, 'product_cat', '', 0, 0),
(133, 133, 'product_cat', '', 0, 0),
(134, 134, 'product_cat', '', 0, 0),
(135, 135, 'product_cat', '', 0, 1),
(136, 136, 'product_cat', '', 0, 0),
(137, 137, 'product_cat', '', 0, 0),
(138, 138, 'product_cat', '', 0, 0),
(139, 139, 'product_cat', '', 130, 0),
(140, 140, 'product_cat', '', 130, 0),
(141, 141, 'nav_menu', '', 0, 11),
(142, 142, 'category', '', 0, 1),
(143, 143, 'category', '', 0, 1),
(144, 144, 'category', '', 0, 3),
(145, 145, 'pa_dung-tich', '', 0, 0),
(146, 146, 'pa_dung-tich', '', 0, 1),
(147, 147, 'pa_dung-tich', '', 0, 0),
(148, 148, 'pa_dung-tich', '', 0, 1),
(149, 149, 'pa_hang-san-xuat', '', 0, 1),
(150, 150, 'pa_hang-san-xuat', '', 0, 0),
(151, 151, 'pa_xuat-xu', '', 0, 2),
(152, 152, 'pa_xuat-xu', '', 0, 0),
(153, 153, 'pa_xuat-xu', '', 0, 0),
(154, 154, 'pa_mau-sac', '', 0, 1),
(155, 155, 'pa_mau-sac', '', 0, 0),
(156, 156, 'pa_mau-sac', '', 0, 0),
(157, 157, 'category', '', 0, 0),
(158, 158, 'yith_product_brand', '', 0, 0),
(159, 159, 'yith_product_brand', '', 0, 2),
(160, 160, 'yith_product_brand', '', 0, 2),
(161, 161, 'berocket_taxonomy_data', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_tnadvs`
--

CREATE TABLE `wp_tnadvs` (
  `iid` mediumint(8) NOT NULL,
  `vlan` varchar(5) DEFAULT NULL,
  `vcode` varchar(25) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `vimg` varchar(255) DEFAULT NULL,
  `vdescription` varchar(1000) DEFAULT NULL,
  `vlink` varchar(500) DEFAULT NULL,
  `vcontent` longtext DEFAULT NULL,
  `dcreate` datetime DEFAULT NULL,
  `dmodified` datetime DEFAULT NULL,
  `vauthor` varchar(255) DEFAULT NULL,
  `iorder` tinyint(4) DEFAULT NULL,
  `vstatus` varchar(20) DEFAULT NULL,
  `vpr1` varchar(255) DEFAULT NULL,
  `vpr2` varchar(255) DEFAULT NULL,
  `vpr3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_tnadvs`
--

INSERT INTO `wp_tnadvs` (`iid`, `vlan`, `vcode`, `vname`, `vimg`, `vdescription`, `vlink`, `vcontent`, `dcreate`, `dmodified`, `vauthor`, `iorder`, `vstatus`, `vpr1`, `vpr2`, `vpr3`) VALUES
(1, NULL, 'DD', 'a', '/wp-content/uploads/2020/01/banner_71e9c662.jpg', '/', '/', '', '2020-01-17 07:58:01', '2020-01-17 08:12:49', 'admin', 1, 'trash', '219', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '1515'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:GXqDHIAy6xer9emcqO9tOILS'),
(19, 1, 'wc_last_active', '1685318400'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor_expand=on&editor=tinymce&advImgDetails=show'),
(21, 1, 'wp_user-settings-time', '1582269432'),
(22, 1, '_order_count', '0'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'closedpostboxes_post', 'a:1:{i:0;s:13:\"trackbacksdiv\";}'),
(29, 1, 'metaboxhidden_post', 'a:0:{}'),
(32, 1, 'closedpostboxes_faq', 'a:0:{}'),
(33, 1, 'metaboxhidden_faq', 'a:2:{i:0;s:12:\"postimagediv\";i:1;s:7:\"slugdiv\";}'),
(34, 1, 'meta-box-order_video', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:41:\"submitdiv,tagsdiv-video-cate,postimagediv\";s:6:\"normal\";s:48:\"acf-group_5e212b051f81f,commentstatusdiv,slugdiv\";s:8:\"advanced\";s:11:\"tn_prd_meta\";}'),
(35, 1, 'screen_layout_video', '2'),
(45, 1, 'session_tokens', 'a:1:{s:64:\"304388f3145f51c395bb9a276509a3f1c9aff399e52623a487182724e6bff5d3\";a:4:{s:10:\"expiration\";i:1690512813;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1690340013;}}'),
(47, 1, 'nav_menu_recently_edited', '67'),
(48, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(49, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:15:\"add-product_tag\";i:5;s:30:\"woocommerce_endpoints_nav_link\";}'),
(51, 1, 'meta-box-order_product', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:130:\"submitdiv,product_catdiv,yith_product_branddiv,acf-group_5e5f7d8fbedec,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:91:\"wpseo_meta,acf-group_5e5f1348bab53,woocommerce-product-data,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(52, 1, 'screen_layout_product', '2'),
(53, 1, 'closedpostboxes_product', 'a:1:{i:0;s:19:\"tagsdiv-product_tag\";}'),
(54, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(55, 1, 'closedpostboxes_dashboard', 'a:7:{i:0;s:28:\"woocommerce_dashboard_status\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:9:\"themeisle\";i:4;s:24:\"wpseo-dashboard-overview\";i:5;s:21:\"dashboard_quick_press\";i:6;s:17:\"dashboard_primary\";}'),
(56, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(57, 1, 'dismissed_no_secure_connection_notice', '1'),
(58, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:67:\"woocommerce_dashboard_status,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(63, 1, '_yoast_wpseo_profile_updated', '1582170922'),
(64, 1, 'wpseo_title', ''),
(65, 1, 'wpseo_metadesc', ''),
(66, 1, 'wpseo_noindex_author', ''),
(67, 1, 'wpseo_content_analysis_disable', ''),
(68, 1, 'wpseo_keyword_analysis_disable', ''),
(69, 1, 'billing_first_name', ''),
(70, 1, 'billing_last_name', ''),
(71, 1, 'billing_company', ''),
(72, 1, 'billing_address_1', ''),
(73, 1, 'billing_address_2', ''),
(74, 1, 'billing_city', ''),
(75, 1, 'billing_postcode', ''),
(76, 1, 'billing_country', ''),
(77, 1, 'billing_state', ''),
(78, 1, 'billing_phone', ''),
(79, 1, 'billing_email', 'huy7989@gmail.com'),
(80, 1, 'shipping_first_name', ''),
(81, 1, 'shipping_last_name', ''),
(82, 1, 'shipping_company', ''),
(83, 1, 'shipping_address_1', ''),
(84, 1, 'shipping_address_2', ''),
(85, 1, 'shipping_city', ''),
(86, 1, 'shipping_postcode', ''),
(87, 1, 'shipping_country', ''),
(88, 1, 'shipping_state', ''),
(89, 1, 'facebook', ''),
(90, 1, 'instagram', ''),
(91, 1, 'linkedin', ''),
(92, 1, 'myspace', ''),
(93, 1, 'pinterest', ''),
(94, 1, 'soundcloud', ''),
(95, 1, 'tumblr', ''),
(96, 1, 'twitter', ''),
(97, 1, 'youtube', ''),
(98, 1, 'wikipedia', ''),
(99, 1, 'last_update', '1582170922'),
(100, 1, 'itsec_user_activity_last_seen', '1685363105'),
(101, 1, 'itsec-settings-view', 'grid'),
(102, 1, 'itsec-password-strength', '4'),
(103, 1, '_itsec_password_requirements', 'a:1:{s:16:\"evaluation_times\";a:1:{s:8:\"strength\";i:1582171651;}}'),
(105, 1, '_itsec_has_logged_in', '1582171651'),
(106, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:85:\"submitdiv,formatdiv,categorydiv,acf-group_5e4e5d5e45e7d,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:96:\"wpseo_meta,revisionsdiv,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(107, 1, 'screen_layout_post', '2'),
(112, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(113, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"f4a331b7a22d1b237565d8813a34d8ac\";a:6:{s:3:\"key\";s:32:\"f4a331b7a22d1b237565d8813a34d8ac\";s:10:\"product_id\";i:1440;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),
(120, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:585:\"Yoast SEO và Advanced Custom Fields có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt <a href=\"http://localhost:8080/catba/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=9266b82c10\">ACF Content Analysis for Yoast SEO</a> để cuộc đời tốt hơn. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"Thông tin thêm về ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Thông tin thêm</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BRRg8ag9uUaxLZhNA8pVmtPuhUkzFx1\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:20:\"kythuat@tamnghia.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-01-08 02:16:17\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:145:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:398:\"<p>Do sự thay đổi trong cài đặt URL danh mục của bạn, một số dữ liệu SEO của bạn cần được xử lý lại.</p><p>Chúng tôi ước tính việc này sẽ mất chưa đầy một phút.</p><a class=\"button\" href=\"http://localhost/wp-flatsome/DefaultWordPress/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Bắt đầu tối ưu hóa dữ liệu SEO</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BRRg8ag9uUaxLZhNA8pVmtPuhUkzFx1\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:20:\"kythuat@tamnghia.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-01-08 02:16:17\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:145:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:536:\"Có vẻ như bạn không sử dụng addon <strong>Yoast WooCommerce SEO của chúng tôi</strong>. <a href=\"https://yoa.st/1o0?php_version=8.0&platform=wordpress&platform_version=6.2.2&software=free&software_version=20.5&days_active=365plus&user_language=vi\" aria-label=\"Thông tin thêm về Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\"> Nâng cấp ngay hôm nay</a> để mở khóa nhiều công cụ và tính năng SEO hơn để làm cho sản phẩm của bạn nổi bật trong kết quả tìm kiếm.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BRRg8ag9uUaxLZhNA8pVmtPuhUkzFx1\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:20:\"kythuat@tamnghia.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-01-08 02:16:17\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:145:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(125, 1, '_woocommerce_load_saved_cart_after_login', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BRRg8ag9uUaxLZhNA8pVmtPuhUkzFx1', 'admin', 'kythuat@tamnghia.com', '', '2020-01-08 02:16:17', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `icon` varchar(200) NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-08 02:37:29', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-08 02:37:29', NULL, 0),
(3, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-01-10 03:09:52', NULL, 0),
(4, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-13 03:02:02', NULL, 0),
(5, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', 'thumbs-up', '{}', 'unactioned', 'woocommerce-admin', '2020-01-13 03:02:02', NULL, 0),
(6, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://localhost/tamnghia/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-16 02:38:04', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0),
(4, 4, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0),
(5, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0),
(6, 5, 'install-now', 'Install now', '', 'unactioned', 1),
(7, 6, 'tracking-dismiss', 'Dismiss', '', 'actioned', 0),
(8, 6, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(79, 79),
(79, 82),
(79, 83),
(80, 80),
(81, 81),
(82, 82),
(83, 83);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(1302, '', 0, 0, 50000.00, 50000.00, 1, NULL, 'instock', 0, 0.00, 0),
(1317, '', 0, 0, 200000.00, 200000.00, 1, NULL, 'instock', 0, 0.00, 0),
(1440, '', 0, 0, 160000.00, 160000.00, 0, NULL, 'instock', 0, 0.00, 0),
(1442, '', 0, 0, 250000.00, 250000.00, 1, NULL, 'instock', 0, 0.00, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'xuat-xu', 'Xuất xứ', 'select', 'menu_order', 1),
(2, 'hang-san-xuat', 'Hãng sản xuất', 'select', 'menu_order', 1),
(3, 'dung-tich', 'Dung tích', 'select', 'menu_order', 1),
(4, 'mau-sac', 'Màu sắc', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(78, '1', 'a:11:{s:4:\"cart\";s:420:\"a:1:{s:32:\"f4a331b7a22d1b237565d8813a34d8ac\";a:11:{s:3:\"key\";s:32:\"f4a331b7a22d1b237565d8813a34d8ac\";s:10:\"product_id\";i:1440;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:160000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:160000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:6:\"160000\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"160000\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"160000\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:457:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_cd190aa92d351cf439e91d067e07c251\";s:5:\"rates\";a:1:{s:15:\"free_shipping:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:2\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:2;s:5:\"label\";s:22:\"Giao hàng miễn phí\";s:4:\"cost\";s:1:\"0\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:70:\"Tẩy tế bào chết dạng hũ Stives hàng nhập khẩu &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:2\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:2\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:731:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-02-20T03:55:22+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"huy7989@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1583892263);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Vietnam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 2, 'free_shipping', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woof_query_cache`
--

CREATE TABLE `wp_woof_query_cache` (
  `mkey` varchar(64) NOT NULL,
  `mvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://localhost/wp-flatsome/DefaultWordPress/', '46:8a78450092c9b95a04a796681a7b55e3', 1510, 'post', 'page', 1, 0, NULL, NULL, 'Trang chủ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 02:51:51', '2023-07-25 19:54:01', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 02:54:01', '2023-05-29 12:37:30'),
(2, 'http://localhost/wp-flatsome/DefaultWordPress/author/admin/', '59:07e9bea0ed40b5313205167358fa1e12', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/807179ba0c95b13c9682d9e92027a769?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/807179ba0c95b13c9682d9e92027a769?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-07-26 02:51:51', '2023-07-25 21:31:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 04:31:33', '2016-04-04 11:33:38'),
(3, 'http://localhost/wp-flatsome/DefaultWordPress/', '46:8a78450092c9b95a04a796681a7b55e3', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Trang chủ', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-07-26 02:51:51', '2023-07-25 21:31:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 04:31:33', '2020-02-13 01:44:12'),
(4, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Không tìm thấy trang %%sep%% %%sitename%%', NULL, 'Lỗi 404: Không tìm thấy trang', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:04:05', '2023-07-25 20:04:05', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(5, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1237', '70:ce5a25f8217ad1330c6e9890dd319b55', 1237, 'post', 'blocks', 1, 0, NULL, NULL, 'Header &#8211; Ship &#8211; Hotline &#8211; Thanh toán', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-02-24 08:18:53'),
(6, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1381', '70:eb3fd28f761bca41d2f90cdaf7a7d3bb', 1381, 'post', 'blocks', 1, 0, NULL, NULL, 'Hướng dẫn mua hàng &#8211; Chi tiết sản phẩm', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-03-04 02:03:46'),
(7, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=757', '69:bf097379cbeb43756c0017201e1ab0f8', 757, 'post', 'blocks', 1, 0, NULL, NULL, 'Nội dung chân trang', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-02-13 04:06:32'),
(8, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=315', '69:9ce64c5e324291618ba2e40baca86bf3', 315, 'post', 'blocks', 1, 0, NULL, NULL, 'Trang chủ &#8211; Slide', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-01-10 09:08:51'),
(9, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1040', '70:0ab791d8bb31f5ff9ef7fe6c29ce0017', 1040, 'post', 'blocks', 1, 0, NULL, NULL, 'Trang chủ &#8211; Tin nổi bật', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-02-19 07:11:53'),
(10, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=724', '69:05e9fcf06a372a4536c230c448dd5e9c', 724, 'post', 'blocks', 1, 0, NULL, NULL, 'Trang chủ &#8211; Ý kiến khách hàng', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 03:48:32', '2023-07-25 20:48:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-26 03:48:39', '2020-02-12 19:57:26'),
(11, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1517', '70:5c87a93baaf24b36b7204bdf3219b7a8', 1517, 'post', 'blocks', 1, 0, NULL, NULL, 'Slider &#8211; Trang chủ', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 03:48:55', '2023-07-25 20:55:32', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 03:55:32', '2023-07-26 03:48:54'),
(12, 'http://localhost/wp-flatsome/DefaultWordPress/?post_type=blocks&p=1525', '70:edac0e9195d635fd88112a744607541a', 1525, 'post', 'blocks', 1, 0, NULL, NULL, 'Slider &#8211; Trang chủ', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 03:55:45', '2023-07-25 20:56:47', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 03:56:47', '2023-07-26 03:55:44'),
(13, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/garden-of-emotions-image/', '78:849db8bbdc50a7d9c135694701731ec5', 1528, 'post', 'blocks', 1, 0, NULL, NULL, 'Garden of Emotions', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://www.tamcocgarden.com/wp-content/themes/tamcoc/theme/frontend/images/see-mores-growns.svg', NULL, NULL, 'first-content-image', NULL, NULL, 'https://www.tamcocgarden.com/wp-content/themes/tamcoc/theme/frontend/images/see-mores-growns.svg', NULL, 'first-content-image', NULL, 1, NULL, NULL, '2023-07-26 04:09:57', '2023-07-25 21:15:25', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-07-26 04:15:25', '2023-07-26 04:09:55'),
(14, 'http://localhost/wp-flatsome/DefaultWordPress/tuyen-dung-nhan-vien-kinh-doanh-my-pham-cho-nam/', '94:da8b1e58dfecb7c17789a94a77e075bd', 1418, 'post', 'post', 1, 0, NULL, NULL, 'Tuyển dụng nhân viên kinh doanh Mỹ Phẩm Cho Nam', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:11:44', '2020-03-04 07:11:44'),
(15, 'http://localhost/wp-flatsome/DefaultWordPress/tuyen-dung/', '57:36beb0260451ecb72a1659c4cfda44fc', 143, 'term', 'category', NULL, NULL, NULL, NULL, 'Tuyển dụng', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:11:44', '2020-03-04 07:11:44'),
(16, 'http://localhost/wp-flatsome/DefaultWordPress/tat-ca-laptop-lenovo-dong-loat-giam-20-tai-fpt-shop/', '98:db8bb5d8e49e0808f820a1442a3ff8ee', 1415, 'post', 'post', 1, 0, NULL, NULL, 'Tất cả laptop Lenovo đồng loạt giảm 20% tại FPT Shop', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://cdn.fptshop.com.vn/uploads/images/tin-tuc/111360/Originals/FB%20ads%20NF.png', NULL, NULL, 'first-content-image', NULL, NULL, 'https://cdn.fptshop.com.vn/uploads/images/tin-tuc/111360/Originals/FB%20ads%20NF.png', NULL, 'first-content-image', NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:07:40', '2020-03-04 07:07:40'),
(17, 'http://localhost/wp-flatsome/DefaultWordPress/khuyen-mai/', '57:843333ceda579f00a58aa61b21239fe3', 142, 'term', 'category', NULL, NULL, NULL, NULL, 'Khuyến mãi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:07:40', '2020-03-04 07:07:40'),
(18, 'http://localhost/wp-flatsome/DefaultWordPress/thu-tuc-nhap-khau-may-dieu-hoa-khong-khi/', '87:b34f9ff1d9ef24668e10cc71b6805705', 787, 'post', 'post', 1, 0, NULL, NULL, 'Thủ tục nhập khẩu máy điều hòa không khí', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:06:11', '2020-02-13 01:47:18'),
(19, 'http://localhost/wp-flatsome/DefaultWordPress/tin-tuc/', '54:b59d82fd3c44e3cf88a63b3ec5653a43', 144, 'term', 'category', NULL, NULL, NULL, NULL, 'Tin tức', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:06:27', '2020-02-13 01:44:12'),
(20, 'http://localhost/wp-flatsome/DefaultWordPress/thu-tuc-nhap-khau-ban-la-dien/', '76:2d8110a5b54416ec1be0488e0007c35c', 784, 'post', 'post', 1, 0, NULL, NULL, 'Thủ tục nhập khẩu bàn là điện', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:06:19', '2020-02-13 01:46:14'),
(21, 'http://localhost/wp-flatsome/DefaultWordPress/thu-tuc-nhap-khau-cay-dun-nuoc-nong-tuc-thoi/', '91:3067c49451903fc548aa8a31b27bc2a7', 781, 'post', 'post', 1, 0, NULL, NULL, 'Thủ tục nhập khẩu cây đun nước nóng tức thời', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-03-04 07:06:27', '2020-02-13 01:44:12'),
(22, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/image-phu-nu-cuoc-dat/', '75:3f5c722c975c9cf55e48149675b8ca8f', 1534, 'post', 'blocks', 1, 0, NULL, NULL, 'Image &#8211; Phụ nữ cuốc đất', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:16:44', '2023-07-25 21:17:25', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:17:25', '2023-07-26 04:16:53'),
(23, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/the-ancient-roots/', '71:ff97ece5f03daf5efc48188734342593', 1538, 'post', 'blocks', 1, 0, NULL, NULL, 'The ancient roots', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2023-07-26 04:18:28', '2023-07-25 21:18:58', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:18:58', '2023-07-26 04:18:32'),
(24, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/the-ancient-roots-image/', '77:3f0f2d23b083c2d506f60795de64640c', 1541, 'post', 'blocks', 1, 0, NULL, NULL, 'The ancient roots &#8211; image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:20:07', '2023-07-25 21:23:45', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:23:45', '2023-07-26 04:20:06'),
(25, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/designed-for-natural-living/', '81:486b35d864e12fce582ac4480a91da03', 1545, 'post', 'blocks', 1, 0, NULL, NULL, 'Designed for natural living', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2023-07-26 04:24:31', '2023-07-25 21:24:48', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:24:48', '2023-07-26 04:24:31'),
(26, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/designed-for-natural-living-image/', '87:8c1558178749cf9f08922414eaa5b2fb', 1548, 'post', 'blocks', 1, 0, NULL, NULL, 'Designed for natural living &#8211; Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:25:33', '2023-07-25 21:25:58', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:25:58', '2023-07-26 04:25:32'),
(27, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/discover-the-soul/', '71:f25c844577b62314e390cafc82c2bacf', 1552, 'post', 'blocks', 1, 0, NULL, NULL, 'Discover the soul', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:26:39', '2023-07-25 21:26:56', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:26:56', '2023-07-26 04:26:38'),
(28, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/discover-the-soul-image/', '77:94a34f5054514c2f3e6b5c8af02b8915', 1555, 'post', 'blocks', 1, 0, NULL, NULL, 'Discover the soul &#8211; image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:27:42', '2023-07-25 21:28:25', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:28:25', '2023-07-26 04:27:42'),
(29, 'http://localhost/wp-flatsome/DefaultWordPress/blocks/designed-for-natural-living-image-right/', '93:ba3d30c0e4d9e40c6e3ec9a863b99e9c', 1560, 'post', 'blocks', 1, 0, NULL, NULL, 'Designed for natural living – Image &#8211; Right', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-07-26 04:31:14', '2023-07-25 21:31:33', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-26 04:31:33', '2023-07-26 04:31:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 15, 1, 1),
(15, 0, 0, 1),
(16, 17, 1, 1),
(17, 0, 0, 1),
(18, 19, 1, 1),
(19, 0, 0, 1),
(20, 19, 1, 1),
(21, 19, 1, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 1418, 143, 'category', '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1),
(2, 1415, 142, 'category', '2023-07-26 04:12:59', '2023-07-25 21:12:59', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) NOT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(305, 'http://thietkewebchuyennghiep.com', 757, 0, 'external', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'http://localhost/mypham/thu-tuc-nhap-khau-may-dieu-hoa-khong-khi/', 1040, 787, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'http://localhost/mypham/thu-tuc-nhap-khau-ban-la-dien/', 1040, 784, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'http://localhost/mypham/thu-tuc-nhap-khau-cay-dun-nuoc-nong-tuc-thoi/', 1040, 781, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'x', 819, 0, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'x', 819, 0, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'x', 819, 0, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'mailto:x', 819, 0, 'external', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'x', 819, 0, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/TCG03474.webp', 1517, 1519, 'image-in', 11, NULL, 1366, 2048, 400026, NULL, NULL),
(322, 'garden', 1528, 0, 'internal', 13, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'https://www.tamcocgarden.com/wp-content/themes/tamcoc/theme/frontend/images/see-mores-growns.svg', 1528, 0, 'image-ex', 13, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-welcome.webp', 1534, 1536, 'image-in', 22, NULL, 463, 654, 13288, NULL, NULL),
(325, 'our-story', 1538, 0, 'internal', 23, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'our-villagers', 1538, 0, 'internal', 23, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'discover-tam-coc', 1538, 0, 'internal', 23, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/img-right-the-people.webp', 1541, 1543, 'image-in', 24, NULL, 561, 425, 45056, NULL, NULL),
(329, 'room/deluxe-tonkin-garden/', 1545, 0, 'internal', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'room/full-moon-villa/', 1545, 0, 'internal', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'room/sunset-valley-bungalow', 1545, 0, 'internal', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'room/premium-tonkin-garden', 1545, 0, 'internal', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/img-the-house-mains.webp', 1548, 1550, 'image-in', 26, NULL, 810, 1047, 172114, NULL, NULL),
(334, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-experiences.webp', 1555, 1558, 'image-in', 28, NULL, 566, 290, 14472, NULL, NULL),
(335, 'http://localhost/wp-flatsome/DefaultWordPress/wp-content/uploads/2023/07/after-3-house.webp', 1560, 1564, 'image-in', 29, NULL, 371, 318, 9454, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(7, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 0, 0),
(38, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(171, 0, 0),
(172, 0, 0),
(173, 0, 0),
(174, 0, 0),
(175, 0, 0),
(176, 0, 0),
(177, 0, 0),
(178, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(182, 0, 0),
(183, 0, 0),
(184, 0, 0),
(185, 0, 0),
(186, 0, 0),
(187, 0, 0),
(188, 0, 0),
(189, 0, 0),
(190, 0, 0),
(191, 0, 0),
(192, 0, 0),
(193, 0, 0),
(194, 0, 0),
(195, 0, 0),
(196, 0, 0),
(197, 0, 0),
(198, 0, 0),
(199, 0, 0),
(200, 0, 0),
(201, 0, 0),
(202, 0, 0),
(203, 0, 0),
(204, 0, 0),
(205, 0, 0),
(206, 0, 0),
(207, 0, 0),
(208, 0, 0),
(209, 0, 0),
(210, 0, 0),
(211, 0, 0),
(212, 0, 0),
(213, 0, 0),
(214, 0, 0),
(215, 0, 0),
(216, 0, 0),
(217, 0, 0),
(218, 0, 0),
(219, 0, 0),
(228, 0, 0),
(229, 0, 0),
(233, 0, 0),
(245, 0, 0),
(246, 0, 0),
(251, 0, 0),
(252, 0, 0),
(253, 0, 0),
(254, 0, 0),
(255, 0, 0),
(262, 0, 0),
(263, 0, 0),
(264, 0, 0),
(265, 0, 0),
(275, 0, 0),
(276, 0, 0),
(277, 0, 0),
(278, 0, 0),
(282, 0, 0),
(296, 0, 0),
(299, 0, 0),
(300, 0, 0),
(301, 0, 0),
(315, 0, 0),
(324, 0, 0),
(325, 0, 0),
(326, 0, 0),
(327, 0, 0),
(328, 0, 0),
(329, 0, 0),
(330, 0, 0),
(332, 0, 0),
(333, 0, 0),
(334, 0, 0),
(335, 0, 0),
(336, 0, 0),
(337, 0, 0),
(338, 0, 0),
(351, 0, 0),
(352, 0, 0),
(353, 0, 0),
(354, 0, 0),
(355, 0, 0),
(356, 0, 0),
(357, 0, 0),
(358, 0, 0),
(359, 0, 0),
(360, 0, 0),
(361, 0, 0),
(362, 0, 0),
(363, 0, 0),
(364, 0, 0),
(365, 0, 0),
(366, 0, 0),
(367, 0, 0),
(368, 0, 0),
(369, 0, 0),
(370, 0, 0),
(371, 0, 0),
(372, 0, 0),
(373, 0, 0),
(374, 0, 0),
(375, 0, 0),
(376, 0, 0),
(377, 0, 0),
(378, 0, 0),
(379, 0, 0),
(380, 0, 0),
(381, 0, 0),
(382, 0, 0),
(384, 0, 0),
(385, 0, 0),
(392, 0, 0),
(393, 0, 0),
(396, 0, 0),
(397, 0, 0),
(398, 0, 0),
(399, 0, 0),
(400, 0, 0),
(402, 0, 0),
(405, 0, 0),
(406, 0, 0),
(409, 0, 0),
(410, 0, 0),
(411, 0, 0),
(412, 0, 0),
(413, 0, 0),
(414, 0, 0),
(415, 0, 0),
(416, 0, 0),
(417, 0, 0),
(418, 0, 0),
(419, 0, 0),
(420, 0, 0),
(421, 0, 0),
(422, 0, 0),
(423, 0, 0),
(424, 0, 0),
(426, 0, 0),
(433, 0, 0),
(434, 0, 0),
(437, 0, 0),
(438, 0, 0),
(448, 0, 0),
(449, 0, 0),
(450, 0, 0),
(451, 0, 0),
(452, 0, 0),
(453, 0, 0),
(455, 0, 0),
(458, 0, 0),
(459, 0, 0),
(460, 0, 0),
(463, 0, 0),
(464, 0, 0),
(465, 0, 0),
(466, 0, 0),
(467, 0, 0),
(468, 0, 0),
(469, 0, 0),
(470, 0, 0),
(471, 0, 0),
(472, 0, 0),
(473, 0, 0),
(474, 0, 0),
(475, 0, 0),
(476, 0, 0),
(477, 0, 0),
(478, 0, 0),
(479, 0, 0),
(480, 0, 0),
(481, 0, 0),
(482, 0, 0),
(483, 0, 0),
(484, 0, 0),
(489, 0, 0),
(490, 0, 0),
(492, 0, 0),
(493, 0, 0),
(497, 0, 0),
(499, 0, 0),
(500, 0, 0),
(503, 0, 0),
(504, 0, 0),
(505, 0, 0),
(506, 0, 0),
(507, 0, 0),
(508, 0, 0),
(509, 0, 0),
(510, 0, 0),
(511, 0, 0),
(512, 0, 0),
(513, 0, 0),
(514, 0, 0),
(515, 0, 0),
(516, 0, 0),
(517, 0, 0),
(519, 0, 0),
(520, 0, 0),
(521, 0, 0),
(522, 0, 0),
(527, 0, 0),
(528, 0, 0),
(530, 0, 0),
(531, 0, 0),
(532, 0, 0),
(533, 0, 0),
(534, 0, 0),
(535, 0, 0),
(537, 0, 0),
(538, 0, 0),
(539, 0, 0),
(540, 0, 0),
(541, 0, 0),
(542, 0, 0),
(543, 0, 0),
(544, 0, 0),
(545, 0, 0),
(546, 0, 0),
(547, 0, 0),
(548, 0, 0),
(549, 0, 0),
(550, 0, 0),
(551, 0, 0),
(552, 0, 0),
(553, 0, 0),
(554, 0, 0),
(555, 0, 0),
(556, 0, 0),
(557, 0, 0),
(558, 0, 0),
(559, 0, 0),
(560, 0, 0),
(561, 0, 0),
(562, 0, 0),
(563, 0, 0),
(564, 0, 0),
(565, 0, 0),
(566, 0, 0),
(567, 0, 0),
(568, 0, 0),
(569, 0, 0),
(570, 0, 0),
(571, 0, 0),
(572, 0, 0),
(573, 0, 0),
(574, 0, 0),
(575, 0, 0),
(577, 0, 0),
(578, 0, 0),
(579, 0, 0),
(580, 0, 0),
(581, 0, 0),
(582, 0, 0),
(583, 0, 0),
(584, 0, 0),
(585, 0, 0),
(586, 0, 0),
(587, 0, 0),
(588, 0, 0),
(589, 0, 0),
(590, 0, 0),
(591, 0, 0),
(592, 0, 0),
(593, 0, 0),
(594, 0, 0),
(595, 0, 0),
(596, 0, 0),
(597, 0, 0),
(598, 0, 0),
(599, 0, 0),
(600, 0, 0),
(601, 0, 0),
(602, 0, 0),
(603, 0, 0),
(604, 0, 0),
(605, 0, 0),
(606, 0, 0),
(607, 0, 0),
(608, 0, 0),
(609, 0, 0),
(610, 0, 0),
(611, 0, 0),
(612, 0, 0),
(613, 0, 0),
(614, 0, 0),
(615, 0, 0),
(616, 0, 0),
(617, 0, 0),
(618, 0, 0),
(619, 0, 0),
(620, 0, 0),
(621, 0, 0),
(622, 0, 0),
(623, 0, 0),
(624, 0, 0),
(625, 0, 0),
(626, 0, 0),
(627, 0, 0),
(628, 0, 0),
(629, 0, 0),
(630, 0, 0),
(632, 0, 0),
(633, 0, 0),
(636, 0, 0),
(637, 0, 0),
(638, 0, 0),
(639, 0, 0),
(641, 0, 0),
(646, 0, 0),
(648, 0, 0),
(649, 0, 0),
(650, 0, 0),
(651, 0, 0),
(652, 0, 0),
(653, 0, 0),
(654, 0, 0),
(655, 0, 0),
(656, 0, 0),
(657, 0, 0),
(658, 0, 0),
(659, 0, 0),
(660, 0, 0),
(661, 0, 0),
(662, 0, 0),
(663, 0, 0),
(664, 0, 0),
(665, 0, 0),
(666, 0, 0),
(667, 0, 0),
(668, 0, 0),
(669, 0, 0),
(670, 0, 0),
(671, 0, 0),
(672, 0, 0),
(673, 0, 0),
(674, 0, 0),
(675, 0, 0),
(676, 0, 0),
(677, 0, 0),
(678, 0, 0),
(679, 0, 0),
(680, 0, 0),
(681, 0, 0),
(682, 0, 0),
(683, 0, 0),
(684, 0, 0),
(685, 0, 0),
(686, 0, 0),
(687, 0, 0),
(688, 0, 0),
(689, 0, 0),
(690, 0, 0),
(691, 0, 0),
(693, 0, 0),
(694, 0, 0),
(695, 0, 0),
(696, 0, 0),
(697, 0, 0),
(698, 0, 0),
(699, 0, 0),
(700, 0, 0),
(701, 0, 0),
(702, 0, 0),
(703, 0, 0),
(704, 0, 0),
(705, 0, 0),
(707, 0, 0),
(708, 0, 0),
(709, 0, 0),
(710, 0, 0),
(711, 0, 0),
(712, 0, 0),
(713, 0, 0),
(714, 0, 0),
(715, 0, 0),
(716, 0, 0),
(717, 0, 0),
(718, 0, 0),
(719, 0, 0),
(720, 0, 0),
(721, 0, 0),
(722, 0, 0),
(723, 0, 0),
(724, 0, 0),
(726, 0, 0),
(727, 0, 0),
(728, 0, 0),
(729, 0, 0),
(730, 0, 0),
(731, 0, 0),
(738, 0, 0),
(739, 0, 0),
(740, 0, 0),
(741, 0, 0),
(742, 0, 0),
(743, 0, 0),
(744, 0, 0),
(745, 0, 0),
(748, 0, 0),
(749, 0, 0),
(751, 0, 0),
(752, 0, 0),
(753, 0, 0),
(754, 0, 0),
(755, 0, 0),
(756, 0, 0),
(757, 0, 0),
(759, 0, 0),
(760, 0, 0),
(761, 0, 0),
(762, 0, 0),
(763, 0, 0),
(764, 0, 0),
(765, 0, 0),
(766, 0, 0),
(767, 0, 0),
(768, 0, 0),
(769, 0, 0),
(770, 0, 0),
(771, 0, 0),
(772, 0, 0),
(773, 0, 0),
(774, 0, 0),
(775, 0, 0),
(776, 0, 0),
(777, 0, 0),
(778, 0, 0),
(779, 0, 0),
(780, 0, 0),
(781, 0, 1),
(782, 0, 0),
(784, 0, 1),
(785, 0, 0),
(787, 0, 1),
(790, 0, 0),
(792, 0, 0),
(793, 0, 0),
(794, 0, 0),
(795, 0, 0),
(796, 0, 0),
(797, 0, 0),
(798, 0, 0),
(799, 0, 0),
(800, 0, 0),
(801, 0, 0),
(802, 0, 0),
(803, 0, 0),
(804, 0, 0),
(805, 0, 0),
(806, 0, 0),
(807, 0, 0),
(808, 0, 0),
(809, 0, 0),
(810, 0, 0),
(811, 0, 0),
(812, 0, 0),
(813, 0, 0),
(814, 0, 0),
(815, 0, 0),
(816, 0, 0),
(817, 0, 0),
(819, 4, 0),
(821, 0, 0),
(824, 0, 0),
(825, 0, 0),
(826, 0, 0),
(827, 0, 0),
(828, 0, 0),
(829, 0, 0),
(830, 0, 0),
(831, 0, 0),
(832, 0, 0),
(833, 0, 0),
(836, 0, 0),
(837, 0, 0),
(838, 0, 0),
(839, 0, 0),
(840, 0, 0),
(841, 0, 0),
(842, 0, 0),
(843, 0, 0),
(844, 0, 0),
(845, 0, 0),
(846, 0, 0),
(847, 0, 0),
(848, 0, 0),
(849, 0, 0),
(850, 0, 0),
(851, 0, 0),
(852, 0, 0),
(853, 0, 0),
(856, 0, 0),
(857, 0, 0),
(858, 0, 0),
(859, 0, 0),
(865, 0, 0),
(866, 0, 0),
(867, 0, 0),
(868, 0, 0),
(869, 0, 0),
(870, 0, 0),
(871, 0, 0),
(872, 0, 0),
(873, 0, 0),
(874, 0, 0),
(875, 0, 0),
(876, 0, 0),
(877, 0, 0),
(878, 0, 0),
(879, 0, 0),
(880, 0, 0),
(881, 0, 0),
(882, 0, 0),
(883, 0, 0),
(884, 0, 0),
(885, 0, 0),
(887, 0, 0),
(888, 0, 0),
(889, 0, 0),
(890, 0, 0),
(891, 0, 0),
(892, 0, 0),
(893, 0, 0),
(894, 0, 0),
(895, 0, 0),
(896, 0, 0),
(897, 0, 0),
(898, 0, 0),
(899, 0, 0),
(900, 0, 0),
(901, 0, 0),
(902, 0, 0),
(903, 0, 0),
(904, 0, 0),
(905, 0, 0),
(906, 0, 0),
(907, 0, 0),
(908, 0, 0),
(909, 0, 0),
(912, 0, 0),
(917, 0, 0),
(918, 0, 0),
(919, 0, 0),
(920, 0, 0),
(921, 0, 0),
(922, 0, 0),
(927, 0, 0),
(928, 0, 0),
(930, 0, 0),
(931, 0, 0),
(932, 0, 0),
(933, 0, 0),
(934, 0, 0),
(935, 0, 0),
(936, 0, 0),
(937, 0, 0),
(938, 0, 0),
(939, 0, 0),
(940, 0, 0),
(941, 0, 0),
(942, 0, 0),
(943, 0, 0),
(945, 0, 0),
(946, 0, 0),
(947, 0, 0),
(948, 0, 0),
(949, 0, 0),
(950, 0, 0),
(951, 0, 0),
(952, 0, 0),
(953, 0, 0),
(960, 0, 0),
(961, 0, 0),
(962, 0, 0),
(963, 0, 0),
(964, 0, 0),
(965, 0, 0),
(966, 0, 0),
(967, 0, 0),
(968, 0, 0),
(969, 0, 0),
(970, 0, 0),
(971, 0, 0),
(973, 0, 0),
(974, 0, 0),
(975, 0, 0),
(976, 0, 0),
(977, 0, 0),
(978, 0, 0),
(979, 0, 0),
(980, 0, 0),
(981, 0, 0),
(982, 0, 0),
(983, 0, 0),
(984, 0, 0),
(985, 0, 0),
(986, 0, 0),
(987, 0, 0),
(988, 0, 0),
(989, 0, 0),
(990, 0, 0),
(991, 0, 0),
(992, 0, 0),
(993, 0, 0),
(995, 0, 0),
(996, 0, 0),
(997, 0, 0),
(998, 0, 0),
(999, 0, 0),
(1000, 0, 0),
(1001, 0, 0),
(1002, 0, 0),
(1003, 0, 0),
(1004, 0, 0),
(1005, 0, 0),
(1006, 0, 0),
(1007, 0, 0),
(1008, 0, 0),
(1009, 0, 0),
(1010, 0, 0),
(1011, 0, 0),
(1012, 0, 0),
(1013, 0, 0),
(1014, 0, 0),
(1015, 0, 0),
(1016, 0, 0),
(1017, 0, 0),
(1018, 0, 0),
(1022, 0, 0),
(1023, 0, 0),
(1024, 0, 0),
(1025, 0, 0),
(1026, 0, 0),
(1033, 0, 0),
(1037, 0, 0),
(1038, 0, 0),
(1040, 3, 0),
(1048, 0, 0),
(1049, 0, 0),
(1056, 0, 0),
(1057, 0, 0),
(1058, 0, 0),
(1059, 0, 0),
(1060, 0, 0),
(1063, 0, 0),
(1064, 0, 0),
(1065, 0, 0),
(1066, 0, 0),
(1067, 0, 0),
(1068, 0, 0),
(1069, 0, 0),
(1070, 0, 0),
(1071, 0, 0),
(1072, 0, 0),
(1073, 0, 0),
(1074, 0, 0),
(1075, 0, 0),
(1076, 0, 0),
(1077, 0, 0),
(1079, 0, 0),
(1080, 0, 0),
(1081, 0, 0),
(1082, 0, 0),
(1083, 0, 0),
(1084, 0, 0),
(1085, 0, 0),
(1086, 0, 0),
(1087, 0, 0),
(1089, 0, 0),
(1090, 0, 0),
(1091, 0, 0),
(1092, 0, 0),
(1093, 0, 0),
(1094, 0, 0),
(1095, 0, 0),
(1096, 0, 0),
(1097, 0, 0),
(1098, 0, 0),
(1099, 0, 0),
(1100, 0, 0),
(1101, 0, 0),
(1102, 0, 0),
(1103, 0, 0),
(1104, 0, 0),
(1105, 0, 0),
(1106, 0, 0),
(1107, 0, 0),
(1108, 0, 0),
(1109, 0, 0),
(1110, 0, 0),
(1111, 0, 0),
(1113, 0, 0),
(1114, 0, 0),
(1115, 0, 0),
(1116, 0, 0),
(1117, 0, 0),
(1118, 0, 0),
(1119, 0, 0),
(1120, 0, 0),
(1121, 0, 0),
(1122, 0, 0),
(1123, 0, 0),
(1124, 0, 0),
(1125, 0, 0),
(1126, 0, 0),
(1127, 0, 0),
(1128, 0, 0),
(1129, 0, 0),
(1130, 0, 0),
(1133, 0, 0),
(1134, 0, 0),
(1135, 0, 0),
(1138, 0, 0),
(1139, 0, 0),
(1140, 0, 0),
(1141, 0, 0),
(1143, 0, 0),
(1144, 0, 0),
(1145, 0, 0),
(1148, 0, 0),
(1160, 0, 0),
(1161, 0, 0),
(1162, 0, 0),
(1163, 0, 0),
(1164, 0, 0),
(1165, 0, 0),
(1166, 0, 0),
(1167, 0, 0),
(1168, 0, 0),
(1169, 0, 0),
(1170, 0, 0),
(1171, 0, 0),
(1172, 0, 0),
(1174, 0, 0),
(1175, 0, 0),
(1176, 0, 0),
(1177, 0, 0),
(1178, 0, 0),
(1179, 0, 0),
(1180, 0, 0),
(1181, 0, 0),
(1182, 0, 0),
(1183, 0, 0),
(1184, 0, 0),
(1185, 0, 0),
(1186, 0, 0),
(1187, 0, 0),
(1188, 0, 0),
(1189, 0, 0),
(1190, 0, 0),
(1191, 0, 0),
(1192, 0, 0),
(1193, 0, 0),
(1194, 0, 0),
(1195, 0, 0),
(1196, 0, 0),
(1197, 0, 0),
(1198, 0, 0),
(1199, 0, 0),
(1200, 0, 0),
(1201, 0, 0),
(1202, 0, 0),
(1203, 0, 0),
(1204, 0, 0),
(1205, 0, 0),
(1206, 0, 0),
(1207, 0, 0),
(1208, 0, 0),
(1209, 0, 0),
(1210, 0, 0),
(1211, 0, 0),
(1212, 0, 0),
(1213, 0, 0),
(1214, 0, 0),
(1215, 0, 0),
(1216, 0, 0),
(1217, 0, 0),
(1219, 0, 0),
(1220, 0, 0),
(1221, 0, 0),
(1222, 0, 0),
(1223, 0, 0),
(1224, 0, 0),
(1225, 0, 0),
(1226, 0, 0),
(1227, 0, 0),
(1228, 0, 0),
(1229, 0, 0),
(1231, 0, 0),
(1232, 0, 0),
(1233, 0, 0),
(1235, 0, 0),
(1236, 0, 0),
(1237, 0, 0),
(1243, 0, 0),
(1245, 0, 0),
(1246, 0, 0),
(1247, 0, 0),
(1248, 0, 0),
(1249, 0, 0),
(1250, 0, 0),
(1251, 0, 0),
(1252, 0, 0),
(1253, 0, 0),
(1257, 0, 0),
(1269, 0, 0),
(1299, 0, 0),
(1300, 0, 0),
(1301, 0, 0),
(1302, 0, 0),
(1304, 0, 0),
(1305, 0, 0),
(1306, 0, 0),
(1307, 0, 0),
(1310, 0, 0),
(1311, 0, 0),
(1312, 0, 0),
(1313, 0, 0),
(1314, 0, 0),
(1315, 0, 0),
(1316, 0, 0),
(1317, 0, 0),
(1319, 0, 0),
(1320, 0, 0),
(1321, 0, 0),
(1322, 0, 0),
(1323, 0, 0),
(1324, 0, 0),
(1325, 0, 0),
(1326, 0, 0),
(1327, 0, 0),
(1328, 0, 0),
(1329, 0, 0),
(1330, 0, 0),
(1331, 0, 0),
(1340, 0, 0),
(1371, 0, 0),
(1378, 0, 0),
(1381, 0, 0),
(1383, 0, 0),
(1384, 0, 0),
(1385, 0, 0),
(1392, 0, 0),
(1394, 0, 0),
(1396, 0, 0),
(1398, 0, 0),
(1400, 0, 0),
(1411, 0, 0),
(1412, 0, 0),
(1415, 0, 0),
(1418, 0, 0),
(1421, 0, 0),
(1422, 0, 0),
(1423, 0, 0),
(1434, 0, 0),
(1435, 0, 0),
(1436, 0, 0),
(1437, 0, 0),
(1440, 0, 0),
(1442, 0, 0),
(1446, 0, 0),
(1447, 0, 0),
(1450, 0, 0),
(1451, 0, 0),
(1452, 0, 0),
(1465, 0, 0),
(1510, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  ADD UNIQUE KEY `meta_id` (`meta_id`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Chỉ mục cho bảng `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Chỉ mục cho bảng `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Chỉ mục cho bảng `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Chỉ mục cho bảng `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `wp_itsec_opaque_tokens`
--
ALTER TABLE `wp_itsec_opaque_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_hashed` (`token_hashed`);

--
-- Chỉ mục cho bảng `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_social_users`
--
ALTER TABLE `wp_social_users`
  ADD PRIMARY KEY (`social_users_id`),
  ADD KEY `ID` (`ID`,`type`),
  ADD KEY `identifier` (`identifier`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_tnadvs`
--
ALTER TABLE `wp_tnadvs`
  ADD PRIMARY KEY (`iid`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Chỉ mục cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Chỉ mục cho bảng `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woof_query_cache`
--
ALTER TABLE `wp_woof_query_cache`
  ADD KEY `mkey` (`mkey`);

--
-- Chỉ mục cho bảng `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Chỉ mục cho bảng `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Chỉ mục cho bảng `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Chỉ mục cho bảng `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1063;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9504;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6774;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1566;

--
-- AUTO_INCREMENT cho bảng `wp_social_users`
--
ALTER TABLE `wp_social_users`
  MODIFY `social_users_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `wp_tnadvs`
--
ALTER TABLE `wp_tnadvs`
  MODIFY `iid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
