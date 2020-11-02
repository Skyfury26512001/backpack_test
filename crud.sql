-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 30, 2020 lúc 02:07 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `souma_newit_dev`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'ID',
  `display_order` int(11) DEFAULT '0' COMMENT '表示順',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名前',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1-Internal,2-External',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediaurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_movie_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schools`
--

INSERT INTO `schools` (`id`, `display_order`, `name`, `created_at`, `updated_at`, `type`, `email`, `mediaurl`, `special_movie_url`) VALUES
(2, 20, '四街道校', '2020-06-16 05:46:13', '2020-10-21 06:47:31', 1, 'yotsukaido@souma-school.co.jp', 'other/input2_mark.mp4', 'other/input2_mark.mp4'),
(3, 1, '下総中山校', '2020-07-02 06:58:19', '2020-10-21 06:47:02', 1, 'shimousanakayama@souma-school.co.jp', 'other/input2_mark.mp4', 'other/input2_mark.mp4'),
(5, 1, '八千代緑が丘校', '2020-07-07 08:02:21', '2020-10-21 06:46:33', 1, 'midorigaoka@souma-school.co.jp', 'other/input2_mark.mp4', 'other/input2_mark.mp4'),
(6, 11, 'オンライン', '2020-07-07 08:11:59', '2020-10-12 06:47:12', 2, '', NULL, NULL),
(8, 1, '流山おおたかの森校', '2020-07-16 13:02:24', '2020-10-21 06:46:07', 1, 'ootakanomori@souma-school.co.jp', 'other/input2_mark.mp4', 'other/input2_mark.mp4'),
(9, 2, '船橋三咲校', '2020-10-09 06:55:44', '2020-10-21 06:45:38', 1, 'misaki@souma-school.co.jp', 'other/input2_mark_blank.mp4', 'other/input2_mark_blank.mp4'),
(10, 7, '入塾検討者校', '2020-10-17 06:21:47', '2020-10-21 06:47:42', 1, 'info@soumahd.co.jp', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sclasses`
--

CREATE TABLE `sclasses` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'ID',
  `display_order` int(11) DEFAULT '0' COMMENT '表示順',
  `school_id` bigint(20) UNSIGNED NOT NULL COMMENT '学校ID',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名前',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sclasses`
--

INSERT INTO `sclasses` (`id`, `display_order`, `school_id`, `name`, `created_at`, `updated_at`) VALUES
(4, 2, 2, '小学５年', '2020-07-01 01:54:00', '2020-10-21 06:36:49'),
(5, NULL, 5, '小学５年', '2020-07-01 02:00:16', '2020-10-21 06:38:12'),
(6, NULL, 2, '小学６年', '2020-07-01 02:00:24', '2020-10-21 06:36:56'),
(7, NULL, 2, '中学１年', '2020-07-01 02:00:36', '2020-10-21 06:37:06'),
(8, NULL, 2, '中学２年', '2020-07-01 02:10:02', '2020-10-21 06:37:13'),
(9, NULL, 2, '中学３年', '2020-07-01 02:10:17', '2020-10-21 06:37:20'),
(11, 1, 3, '小学５年', '2020-07-02 06:58:45', '2020-10-21 06:37:31'),
(12, 1, 5, '小学６年', '2020-07-07 08:02:55', '2020-10-21 06:38:20'),
(13, 1, 5, '中学１年', '2020-07-07 08:03:03', '2020-10-21 06:38:28'),
(14, 1, 6, 'クラズ１', '2020-07-07 08:13:07', '2020-07-07 08:13:07'),
(15, 2, 6, 'クラズ２', '2020-07-07 08:13:22', '2020-07-07 08:13:22'),
(16, 3, 6, 'クラズ3', '2020-07-07 08:13:37', '2020-07-07 08:13:37'),
(17, 1, 8, '小学５年', '2020-07-16 13:02:40', '2020-10-21 06:39:04'),
(18, 1, 8, '小学６年', '2020-07-16 13:02:47', '2020-10-21 06:39:13'),
(19, 1, 8, '中学１年', '2020-07-16 13:02:57', '2020-10-21 06:39:21'),
(24, 100, 9, '小学５年', '2020-10-12 12:57:45', '2020-10-21 06:39:49'),
(25, 0, 10, '小学５年', '2020-10-20 05:13:51', '2020-10-21 06:44:10'),
(26, 0, 9, '小学６年', '2020-10-21 06:33:20', '2020-10-21 06:39:56'),
(27, 0, 9, '中学１年', '2020-10-21 06:33:31', '2020-10-21 06:40:04'),
(28, 0, 9, '中学２年', '2020-10-21 06:33:40', '2020-10-21 06:40:13'),
(29, 0, 9, '中学３年', '2020-10-21 06:33:46', '2020-10-21 06:40:21'),
(30, 0, 9, '高校１年', '2020-10-21 06:33:53', '2020-10-21 06:40:29'),
(31, 0, 8, '中学２年', '2020-10-21 06:34:24', '2020-10-21 06:39:29'),
(32, 0, 8, '中学３年', '2020-10-21 06:34:28', '2020-10-21 06:39:37'),
(33, 0, 5, '中学２年', '2020-10-21 06:34:58', '2020-10-21 06:38:36'),
(34, 0, 5, '中学３年', '2020-10-21 06:35:03', '2020-10-21 06:38:45'),
(35, 0, 3, '小学６年', '2020-10-21 06:35:19', '2020-10-21 06:37:38'),
(36, 0, 3, '中学１年', '2020-10-21 06:35:22', '2020-10-21 06:37:47'),
(37, 0, 3, '中学２年', '2020-10-21 06:35:30', '2020-10-21 06:37:55'),
(38, 0, 3, '中学３年', '2020-10-21 06:35:34', '2020-10-21 06:38:02'),
(39, 0, 10, '小学６年', '2020-10-21 06:44:18', '2020-10-21 06:44:18'),
(40, 0, 10, '中学１年', '2020-10-21 06:44:24', '2020-10-21 06:44:24'),
(41, 0, 10, '中学２年', '2020-10-21 06:44:32', '2020-10-21 06:44:32'),
(42, 0, 10, '中学３年', '2020-10-21 06:44:39', '2020-10-21 06:44:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'ID',
  `display_order` int(11) NOT NULL DEFAULT '0' COMMENT '表示順',
  `class_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT '学年ID',
  `user_id` bigint(20) NOT NULL COMMENT 'ユーザID',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名前',
  `school_hope` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_current` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_current` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `school_hope_id` int(11) DEFAULT NULL COMMENT 'school_id',
  `referral_type` int(11) DEFAULT NULL COMMENT '0: none, 1: leaflets, 2: video, 3:request make video',
  `referral_day` datetime DEFAULT NULL,
  `referrer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `referrer_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `referrer_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `referrer_gender` int(11) DEFAULT NULL COMMENT '0:male, 1:female',
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '郵便番号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `display_order`, `class_id`, `user_id`, `name`, `school_hope`, `name_kana`, `gender`, `address`, `tel`, `school_current`, `class_current`, `created_at`, `updated_at`, `student_code`, `security_code`, `active`, `school_hope_id`, `referral_type`, `referral_day`, `referrer_name`, `referrer_school`, `referrer_class`, `referrer_gender`, `postal_code`) VALUES
(14, 1, 10, 66, '名前 学生 １', '', '', 0, '', '', '', '', '2020-07-01 02:41:20', '2020-07-01 02:41:20', 'A01', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(16, 1, 10, 68, '名前 学生 2', '', '', 0, '', '', '', '', '2020-07-01 02:46:45', '2020-07-01 02:46:45', 'A03', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(17, 1, 10, 69, '名前 学生 3', '', '', 0, '', '', '', '', '2020-07-01 02:47:10', '2020-07-01 02:47:10', 'A04', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(18, 1, 7, 71, '名前 学生 5', '', '', 0, '', '', '', '', '2020-07-01 02:47:48', '2020-07-01 02:47:48', 'A05', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(19, 1, 10, 74, 'NGUYEN ANH TUAN', '', '', 0, '', '', '', '', '2020-07-01 04:38:27', '2020-07-01 04:38:27', 'A06', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(20, 1, 11, 75, 'ヒエウテスト', '', '', 0, '', '', '', '', '2020-07-02 06:59:36', '2020-07-02 07:02:18', 'A07', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(22, 1, 12, 78, 'トゥアン学生１', '', 'セキ', 0, '', '', '', '', '2020-07-07 08:08:20', '2020-07-07 08:08:20', 'A08', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(23, 1, 12, 79, 'トゥアン学生２', '', '', 0, '', '', '', '', '2020-07-07 08:09:27', '2020-07-07 08:09:27', 'A09', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(24, 1, 14, 80, 'datdq', '', '', 0, '', '', '', '', '2020-07-07 08:14:34', '2020-07-07 08:14:34', 'A010', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(25, 1, 13, 81, 'トゥアン学生TEST', '', '', 0, '', '', '', '', '2020-07-16 07:00:22', '2020-07-16 07:00:22', 'A011', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(26, 1, 13, 82, 'トゥアン学生１T', '', '', 0, '', '', '', '', '2020-07-16 07:00:51', '2020-07-16 07:00:51', 'A012', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(27, 0, 21, 85, 'test1124', '', '', 0, '', '', '', '', '2020-07-15 23:12:53', '2020-07-15 23:12:53', 'A013', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(28, 0, 19, 86, 'せき', '', 'セキ　ハナ', 0, '', '', '', '', '2020-07-16 13:04:28', '2020-10-22 11:53:21', 'A031', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(29, 1, 20, 87, '名前・学生２', '', '', 0, '', '', '', '', '2020-07-16 13:06:57', '2020-07-16 13:06:57', 'A032', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(30, 0, 21, 89, 'test1124', '', '', 0, '', '', '', '', '2020-07-19 22:00:22', '2020-07-19 22:00:22', 'A014', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(31, 0, 21, 91, 'ah', '', '', 0, '', '', '', '', '2020-07-19 22:47:22', '2020-07-19 22:47:22', 'A015', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(32, 0, 22, 92, 'dghb', '', '', 0, '', '', '', '', '2020-07-19 22:56:59', '2020-07-19 22:56:59', 'A016', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(33, 0, 19, 93, '名前・学生３', '', 'トゥアン', 0, NULL, NULL, '', '', '2020-07-21 02:16:25', '2020-10-26 22:18:37', 'A017', '0000', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(34, 0, 22, 94, 'kiennd', '', '', 0, '', '', '', '', '2020-07-20 18:44:44', '2020-07-20 18:44:44', 'A018', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(35, 1, 19, 95, '田中', '', '', 0, '', '', '', '', '2020-07-21 08:30:36', '2020-07-21 08:30:36', 'A019', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(36, 0, 22, 98, 'a', '', '', 0, '', '', '', '', '2020-07-27 07:28:53', '2020-07-27 07:28:53', 'A020', '0', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(37, 0, 21, 102, 'test1124', '', '', 0, '', '', '', '', '2020-08-11 03:19:20', '2020-08-11 03:19:20', NULL, '', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(38, 0, 21, 62, 'test1124', '', '', 0, '', '', '', '', '2020-08-11 03:53:34', '2020-08-11 03:53:34', NULL, '', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(40, 1, 19, 107, '学生名前４', '', '', 0, '', '', '', '', '2020-08-12 08:22:12', '2020-08-12 08:22:12', 'A099', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(41, 1, 19, 108, '学生名前５', '', '', 0, '', '', '', '', '2020-08-12 08:23:22', '2020-08-12 08:23:22', 'A089', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(42, 1, 18, 110, '学生 ２・１', '', '', 0, '', '', '', '', '2020-08-13 07:53:01', '2020-08-13 07:53:01', 'A021', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(43, 1, 22, 111, 'TuanNA - Online', '', '', 0, '', '', '', '', '2020-08-13 09:57:16', '2020-08-13 09:57:16', 'ON001', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(44, 1, 19, 112, '学生名前６66', '', '', 0, '', '', '', '', '2020-08-17 11:11:47', '2020-08-17 11:11:47', 'A036', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(45, 1, 13, 113, 'TuanNA 001', '', '', 0, '', '', '', '', '2020-08-18 00:52:26', '2020-08-18 00:52:26', 'T001', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(46, 1, 19, 114, '学生　７', '', '', 0, '', '', '', '', '2020-08-18 06:24:13', '2020-08-18 06:24:13', 'A037', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(47, 0, 10, 115, 'test1124', '', '', 0, '', '', '', '', '2020-08-19 08:42:32', '2020-08-19 08:42:32', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(48, 0, 12, 116, 'test1124', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tieu hoc dai nam', 'Lop 2A', '2020-08-20 03:02:09', '2020-08-26 03:38:35', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(49, 0, 10, 117, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tieu hoc dai nam', 'Lop 2A', '2020-08-20 06:59:25', '2020-08-20 06:59:25', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(50, 0, 10, 120, 'thucnv', '', '', 0, '', '', '', '', '2020-08-20 08:32:14', '2020-08-20 08:32:14', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(51, 2, 4, 121, 'thucnv', 'Truong cap 2', 'フリガナ', 1, NULL, '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-08-20 08:34:20', '2020-08-20 08:34:20', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(52, 3, 5, 122, 'a', 'ạkaa', 'â', 1, 'dbc', '098455427', 'a', 'a', '2020-08-20 08:37:14', '2020-08-20 08:37:14', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(53, 4, 6, 123, 'thucnv', 'Truong cap 2', 'フリガナ', 1, NULL, '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-08-20 08:38:01', '2020-08-20 08:38:01', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(54, 0, 20, 124, 'rrrrr', 'トゥアン学校', 'eeeeee', 1, NULL, NULL, 'ffffff', 'ddghhhh', '2020-08-20 08:55:51', '2020-08-20 08:55:51', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(55, 0, 20, 125, 'ffghhhhh', '神田校', 'cbbnnn', 1, NULL, NULL, 'ffghh', 'njwww', '2020-08-20 09:00:17', '2020-08-20 09:00:17', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(56, 0, 20, 126, 'thucnv', 'Truong cap 2', 'フリガナ', 1, NULL, '84(01231313133)', 'Truong tieu hoc dai nam', 'Lop 2A', '2020-08-20 09:02:16', '2020-08-20 09:02:16', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(57, 0, 4, 127, 'a', 'a', 'a', 0, 'A', '4', 'a', 'a', '2020-08-20 09:54:15', '2020-08-20 09:54:15', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(58, 0, 20, 128, 'a', 'a', 'a', 1, 'A', '45454', 'a', 'a', '2020-08-20 10:07:55', '2020-08-20 10:07:55', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(59, 1, 17, 130, 'souma video', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-24 07:04:46', '2020-08-24 07:04:46', 'A0999', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(61, 0, 21, 132, 'Tuan rq', 'Tuan School', 'furi', 0, 'snsns', '016111111111', 'school.current', 'class current', '2020-08-26 09:13:19', '2020-08-27 09:20:03', '122', NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(62, 1, 16, 133, '学生 オンライン 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-27 09:16:33', '2020-08-27 09:16:33', 'EX011', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(63, 1, 16, 134, '学生 オンライン 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-27 09:17:32', '2020-08-27 09:17:32', 'EX012', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(64, 4, 7, 135, 'aaaa', 'トゥアン学校', 'aaaaa', 0, 'aa', '444444', 'truong', 'lop', '2020-08-27 11:41:50', '2020-08-27 11:44:14', '2222', NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(65, 0, 10, 136, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:01:11', '2020-08-28 03:01:11', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(66, 0, 10, 137, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:01:14', '2020-08-28 03:01:14', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(67, 0, 10, 138, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:05:02', '2020-08-28 03:05:02', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(68, 0, 16, 139, 'hdhdhd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:09:56', '2020-08-28 03:09:56', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(69, 0, NULL, 140, 'a', '日本橋校', 'a', 0, 'A', '7', 'A', 'z', '2020-08-28 03:16:02', '2020-08-28 03:16:02', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(70, 0, 10, 141, 'kiennd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:23:10', '2020-08-28 03:23:10', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(71, 0, 14, 142, 'kiennd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:23:25', '2020-08-28 03:23:25', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(72, 0, 14, 143, 'kiennd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:26:57', '2020-08-28 03:26:57', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(73, 0, 10, 144, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:26:58', '2020-08-28 03:26:58', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(74, 0, 22, 145, 'kiennd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 03:29:45', '2020-08-28 03:29:45', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(75, 3, 16, 146, '学生 オンライン 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-30 15:08:45', '2020-08-30 15:08:45', 'EX013', '1234', 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(76, 0, 16, 147, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-31 01:54:44', '2020-08-31 01:54:44', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(77, 0, 10, 148, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-03 04:11:40', '2020-09-03 04:11:40', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(78, 0, 22, 149, 'queytExternal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-03 04:12:42', '2020-09-03 04:12:42', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(79, 0, 15, 150, 'quyeExternal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-03 04:14:37', '2020-09-03 04:14:37', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(80, 0, NULL, 151, 'グエン　サン', '颯馬学校', 'グエン　サン', 0, NULL, NULL, '日本橋中学校', '2年生', '2020-09-03 09:01:37', '2020-09-03 09:01:37', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(81, 0, 16, 152, 'KienND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-04 04:25:24', '2020-09-04 04:25:24', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(83, 0, NULL, 154, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-09-04 12:34:48', '2020-09-04 12:34:48', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(84, 0, 10, 155, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 03:55:46', '2020-09-07 03:55:46', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(85, 0, NULL, 158, '0709 tuan', '颯馬学校', 'tuan', 0, 'Aaa', NULL, 'aaaa', 'aa', '2020-09-07 08:23:48', '2020-09-07 08:23:48', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(86, 0, 10, 160, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 10:35:33', '2020-09-08 10:35:33', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(87, 0, 10, 161, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 17:25:30', '2020-09-08 17:25:30', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(88, 0, 10, 162, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 01:31:27', '2020-09-09 01:31:27', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(89, 0, 16, 163, 'kienhaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 02:40:17', '2020-09-09 02:40:17', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(90, 0, 16, 164, 'kienhaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 02:44:51', '2020-09-09 02:44:51', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(91, 0, 10, 165, 'thucnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 08:44:49', '2020-09-09 08:44:49', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(92, 0, 20, 166, 'knd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 01:50:06', '2020-09-10 01:50:06', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(93, 0, 20, 167, 'kđa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 01:58:47', '2020-09-10 01:58:47', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(94, 0, 22, 168, 'Kien Nguyen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 02:00:50', '2020-09-10 02:00:50', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(95, 0, 20, 169, 'name1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 02:01:46', '2020-09-10 02:01:46', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(96, 0, 16, 170, 'Babel Kl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 08:42:49', '2020-09-14 08:42:49', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(97, 0, 20, 171, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-24 07:28:53', '2020-09-24 07:28:53', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(98, 0, 20, 172, 'haha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-24 07:31:25', '2020-09-24 07:31:25', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(99, 0, NULL, 173, 'a', '神田校', 'a', 1, 'A', '4', 'a', 'a', '2020-10-05 08:18:13', '2020-10-05 08:18:13', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(100, 0, NULL, 174, 'kien', '学校テスト', 'kien', 0, 'A', '1', 'a', 'a', '2020-10-05 08:31:56', '2020-10-05 08:31:56', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(101, 0, NULL, 175, 'a', '学校テスト', 'a', 0, 'A', '1', 'a', 'a', '2020-10-05 08:34:08', '2020-10-05 08:34:08', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(102, 0, NULL, 176, 'etty', 'sdf', 'fghh', 1, NULL, NULL, 'xvjj', 'rrgg', '2020-10-05 09:15:20', '2020-10-05 09:15:20', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(103, 0, NULL, 177, 'fhf', '颯馬学校', 'xvv', 1, NULL, NULL, 'dghh', 'ejjj', '2020-10-05 09:17:26', '2020-10-05 09:17:26', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(104, 0, NULL, 178, 'dffg', 'トゥアン学校', 'dxv', 1, NULL, NULL, 'dfg', 'tgh', '2020-10-05 09:24:17', '2020-10-05 09:24:17', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(105, 0, 3, 179, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-05 10:27:43', '2020-10-05 10:27:43', NULL, NULL, 1, 0, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(106, 0, NULL, 180, 'Nguyen Anh Tuan 1', '日本橋校', 'グエン　アン　トゥアン', 0, '千葉', '07083048588', 'newit', 'class current', '2020-10-06 08:57:14', '2020-10-06 08:57:14', NULL, NULL, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(108, 0, NULL, 182, 'Nguyen Anh Tuan 2', '日本橋校', 'グエンアントゥアン', 0, '千葉県', '01111111', 'aaaaaaa', 'bbbbbb', '2020-10-06 09:36:07', '2020-10-06 09:36:07', NULL, NULL, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(109, 0, NULL, 183, 'Nguyen Anh Tuan 3', '日本橋校', 'グエン', 0, 'ああああああ', '0292039203', 'school', 'class', '2020-10-06 10:10:54', '2020-10-06 10:10:54', NULL, NULL, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(110, 0, NULL, 184, 'Nguyen Anh Tuan 4', '日本橋校', 'Tuan', 1, NULL, '09034324324', 'aaa', 'bbbbb', '2020-10-06 10:44:55', '2020-10-06 10:44:55', NULL, NULL, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(111, 0, NULL, 185, 'Nguyen Anh Tuan 5\n', '日本橋校', 'Nguyen Anh Tuan 5', 0, 'Aaaaa', NULL, 'aaaaa', 'ccccc', '2020-10-06 11:17:40', '2020-10-06 11:17:40', NULL, NULL, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(112, 0, NULL, 186, 'a', 'トゥアン学校', 'a', 0, 'A', 'a', 'a', 'f', '2020-10-07 02:44:08', '2020-10-07 02:44:08', NULL, NULL, 0, 8, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(113, 0, NULL, 187, 'a', 'トゥアン学校', 'a', 0, 'A', 'a', 'a', 'f', '2020-10-07 02:44:32', '2020-10-07 02:44:32', NULL, NULL, 0, 8, 0, '0000-00-00 00:00:00', '', '', '', 0, NULL),
(114, 0, 3, 194, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:26:22', '2020-10-09 04:26:22', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(115, 0, 3, 195, 'Anh Tuan', 'Truong cap 2', 'フリガナ ddddd', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:26:45', '2020-10-09 04:26:45', NULL, NULL, 0, 2, 3, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(116, 0, 3, 196, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:27:47', '2020-10-09 04:27:47', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(117, 0, 3, 197, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:28:57', '2020-10-09 04:28:57', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(118, 0, 3, 198, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:30:58', '2020-10-09 04:30:58', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(119, 0, 3, 199, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:31:09', '2020-10-09 04:31:09', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(120, 0, 3, 200, 'Anh Tuan', 'Truong cap 2', 'フリガナ ddddd', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:31:12', '2020-10-09 04:31:12', NULL, NULL, 0, 2, 3, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(121, 0, 3, 201, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:32:51', '2020-10-09 04:32:51', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(122, 0, 3, 202, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:34:21', '2020-10-09 04:34:21', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(123, 0, 3, 203, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 04:36:28', '2020-10-09 04:36:28', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(124, 0, NULL, 205, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 04:46:18', '2020-10-09 04:46:18', NULL, NULL, 0, 1, 3, '2020-10-09 00:00:00', 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(125, 0, 3, 212, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 05:16:06', '2020-10-09 05:16:06', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(126, 0, NULL, 213, 'tuầnnsandasnddas', 'Truong cap 2', 'フリガナ', 1, NULL, NULL, 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 05:17:34', '2020-10-09 05:17:34', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(129, 0, 3, 218, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 05:35:39', '2020-10-09 05:35:39', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(130, 0, 3, 219, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 05:36:50', '2020-10-09 05:36:50', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(131, 0, NULL, 220, 'vvb', 'ghhhgg', 'cycuvu', 1, 'gugug', '0987456321', 'cyvuv', 'uufugy', '2020-10-09 06:09:57', '2020-10-09 06:09:57', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 0, NULL, 221, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:12:59', '2020-10-09 06:12:59', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 0, NULL, 222, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:13:28', '2020-10-09 06:13:28', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 0, NULL, 223, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:15:25', '2020-10-09 06:15:25', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 0, NULL, 224, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:26:30', '2020-10-09 06:26:30', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 0, NULL, 225, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:26:40', '2020-10-09 06:26:40', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 0, NULL, 226, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:26:49', '2020-10-09 06:26:49', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 0, NULL, 227, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:27:06', '2020-10-09 06:27:06', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 0, NULL, 228, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 06:27:31', '2020-10-09 06:27:31', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 0, NULL, 229, 'f', '学校テスト', 'a', 0, 'A', 'g', 'a', 'g', '2020-10-09 06:31:25', '2020-10-09 06:31:25', NULL, NULL, 0, 3, 0, NULL, NULL, NULL, NULL, 0, NULL),
(141, 0, NULL, 230, 'hdfhjf', 'hddh', 'jfjfj', 1, 'ndndn', '0987456321', 'bdhd', 'đjj', '2020-10-09 06:31:41', '2020-10-09 06:31:41', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 0, NULL, 231, 'kien', 'トゥアン学校', 'Nguyen', 1, 'He her', 'a', 'a', 'a', '2020-10-09 06:52:00', '2020-10-09 06:52:00', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, 0, NULL),
(143, 0, 3, 232, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:02:26', '2020-10-09 07:02:26', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(144, 0, 3, 233, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:03:36', '2020-10-09 07:03:36', NULL, NULL, 0, 1, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(145, 0, 3, 234, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:09:01', '2020-10-09 07:09:01', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(146, 0, NULL, 235, 'Tuan Test adddsada', '日本橋校', 'トゥアン　アン', 0, 'Dada', NULL, '在籍学校T', '学年T', '2020-10-09 07:09:20', '2020-10-09 07:09:20', NULL, NULL, 0, 1, 0, '2020-10-09 00:00:00', 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(147, 0, NULL, 236, 'a', 'さd', 'f', 0, 'A', 'a', 'a', 'dakda@gmail.com', '2020-10-09 07:20:52', '2020-10-09 07:20:52', NULL, NULL, 0, 9, 2, '2020-10-07 00:00:00', 'a', 'f', 'b', 0, NULL),
(148, 0, 3, 237, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:23:21', '2020-10-09 07:23:21', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(149, 0, NULL, 238, 'a', '学校テスト', 'a', 1, 'a', '0981287345', 'a', 'a', '2020-10-09 07:23:38', '2020-10-09 07:23:38', NULL, NULL, 0, 3, 1, '0000-00-00 00:00:00', 'a', 'a', 'd', 1, NULL),
(150, 0, 3, 239, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:24:26', '2020-10-09 07:24:26', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(151, 0, 3, 240, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:24:31', '2020-10-09 07:24:31', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(152, 0, NULL, 241, 'a', 'さd', 'f', 0, 'A', 'a', 'a', 'dakda@gmail.com', '2020-10-09 07:25:46', '2020-10-09 07:25:46', NULL, NULL, 0, 9, 2, '2020-10-07 00:00:00', 'a', 'f', 'b', 0, NULL),
(153, 0, NULL, 242, 'a', 'さd', 'f', 0, 'A', 'a', 'a', 'aaoajogjao', '2020-10-09 07:31:16', '2020-10-09 07:31:16', NULL, NULL, 0, 9, 2, '2020-10-07 00:00:00', 'a', 'f', 'b', 0, NULL),
(154, 0, 3, 243, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:32:06', '2020-10-09 07:32:06', NULL, NULL, 0, 2, 2, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(155, 0, 3, 244, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 07:33:09', '2020-10-09 07:33:09', NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(156, 0, NULL, 245, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 07:33:12', '2020-10-09 07:33:12', NULL, NULL, 0, 1, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(157, 0, NULL, 246, 'Tuan Test', '日本橋校', 'トゥアン アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 07:34:37', '2020-10-09 07:34:37', NULL, NULL, 0, 1, 2, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(158, 0, NULL, 247, 'f', 'affafaafa', 'a', 0, 'A', 'f', 'f', 'f', '2020-10-09 07:36:40', '2020-10-09 07:36:40', NULL, NULL, 0, 0, 2, '2020-10-05 00:00:00', 'a fast', 'a', 'f', 0, NULL),
(159, 0, NULL, 248, 'f', 'kien', 'a', 0, 'A', 'f', 'a', 'f', '2020-10-09 07:39:37', '2020-10-09 07:39:37', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL),
(160, 0, NULL, 249, 'Tuan Test', '日本橋校', 'トゥアン アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 07:59:01', '2020-10-09 07:59:01', NULL, NULL, 0, 1, 2, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(161, 0, 3, 250, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 08:02:17', '2020-10-09 08:02:17', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(162, 0, NULL, 251, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 08:42:27', '2020-10-09 08:42:27', NULL, NULL, 0, 1, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(163, 0, NULL, 252, 'Tuan Test sssss', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 09:47:58', '2020-10-09 09:47:58', NULL, NULL, 0, 1, 2, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(164, 0, NULL, 253, 'Tuan Test salads', '学校テスト', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 09:55:00', '2020-10-09 09:55:00', NULL, NULL, 0, 3, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(165, 0, NULL, 254, 'Tuan Test salads', '学校テスト', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 09:55:15', '2020-10-09 09:55:15', NULL, NULL, 0, 3, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(166, 0, NULL, 255, 'Tuan Test saladssadda', '学校テスト', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:01:37', '2020-10-09 10:01:37', NULL, NULL, 0, 3, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(167, 0, NULL, 256, 'Tuan Test saladssaddadas', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:02:40', '2020-10-09 10:02:40', NULL, NULL, 0, 1, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(168, 0, NULL, 257, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:05:52', '2020-10-09 10:05:52', NULL, NULL, 0, 1, 3, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(169, 0, NULL, 258, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:06:01', '2020-10-09 10:06:01', NULL, NULL, 0, 1, 3, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(170, 0, NULL, 259, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:06:22', '2020-10-09 10:06:22', NULL, NULL, 0, 1, 3, NULL, 'Dat09', 'Dat School', 'Dat Class', 1, NULL),
(171, 0, NULL, 260, 'Tuan Test seas', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:07:19', '2020-10-09 10:07:19', NULL, NULL, 0, 1, 3, NULL, 'Dat09', 'Dat School', 'Dat Class', 1, NULL),
(172, 0, NULL, 261, 'Tuan Test っっd', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:11:11', '2020-10-09 10:11:11', NULL, NULL, 0, 1, 3, '2020-10-09 00:00:00', 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(173, 0, NULL, 262, 'dsadsad', 'Truong cap 2', 'フリガナ', 1, NULL, NULL, 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 10:17:35', '2020-10-09 10:17:35', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 0, NULL, 263, 'dsadsad', 'Truong cap 2', 'フリガナ', 1, NULL, NULL, 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 10:17:39', '2020-10-09 10:17:39', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 0, 3, 264, 'dsadsad', 'Truong cap 2', 'フリガナ', 1, NULL, NULL, 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-09 10:18:10', '2020-10-09 10:18:10', NULL, NULL, 0, 2, 3, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(176, 0, NULL, 265, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:19:02', '2020-10-09 10:19:02', NULL, NULL, 0, 1, 1, '2020-10-08 00:00:00', 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(177, 0, NULL, 266, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:19:27', '2020-10-09 10:19:27', NULL, NULL, 0, 1, 0, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(178, 0, NULL, 267, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:37:40', '2020-10-09 10:37:40', NULL, NULL, 0, 1, 1, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(179, 0, NULL, 268, 'Tuan Test', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '在籍学校T', '学年T', '2020-10-09 10:41:35', '2020-10-09 10:41:35', NULL, NULL, 0, 1, 3, NULL, 'Dat09', 'Dat School', 'Dat Class', 0, NULL),
(180, 2000, 24, 271, 'スズキ タナカ2', NULL, 'スズキ タナカ2', NULL, NULL, NULL, NULL, NULL, '2020-10-12 13:04:42', '2020-10-12 13:04:42', '100001', '2332', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(181, 2000, 24, 272, 'スズキ タナカ2', NULL, 'スズキ タナカ2', NULL, NULL, NULL, NULL, NULL, '2020-10-12 13:05:47', '2020-10-12 13:05:47', '100011', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(182, 2001, 24, 273, 'スズキ タナカ3', NULL, 'スズキ タナカ3', NULL, NULL, NULL, NULL, NULL, '2020-10-12 13:05:47', '2020-10-12 13:05:47', '100012', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(183, 2002, 24, 274, 'スズキ タナカ4', NULL, 'スズキ タナカ4', NULL, NULL, NULL, NULL, NULL, '2020-10-12 13:05:47', '2020-10-12 13:05:47', '100013', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(184, 0, NULL, 275, '関', '船橋三咲校', 'セキ', 0, NULL, NULL, '日本橋小学校', '2年', '2020-10-13 02:00:18', '2020-10-13 02:00:18', NULL, NULL, 0, 9, 1, '2020-10-13 00:00:00', '田中', '三咲', '3年', 0, NULL),
(185, 0, 24, 276, 'グエン　アン　トゥアン', '日本橋校', 'トゥアン', 0, NULL, NULL, '妙典校', '中１', '2020-10-13 02:43:21', '2020-10-14 06:50:15', '3213166', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 0, NULL),
(186, 0, 24, 277, '長谷川', '船橋三咲校', 'ハセガワ', 0, NULL, NULL, '日本橋小学校', '2年生', '2020-10-13 02:50:33', '2020-10-20 05:21:21', '123456781234', '4321', 1, 9, 2, NULL, '田中', '三咲', '4', 0, NULL),
(187, 0, 23, 278, 'グエン　アン　トゥアン チラシ', '日本橋校', 'トゥアン　アン', 1, NULL, NULL, '妙典校', '中２', '2020-10-13 03:32:41', '2020-10-14 07:01:31', 'A09996', NULL, 1, 1, 0, NULL, 'ダット', 'ダット校舎', 'ダット学年', 0, NULL),
(188, 0, 23, 279, 'グエン　アン　トゥアン　ビデオ', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '妙典校', '中３', '2020-10-13 03:44:24', '2020-10-14 07:07:15', 'adsdsd', NULL, 1, 1, 0, '2020-10-05 00:00:00', 'ダット', 'ダット校舎', 'ダット学年', 0, NULL),
(189, 0, NULL, 280, 'グエン　アン　トゥアン　依頼', '日本橋校', 'トゥアン　アン', 0, NULL, NULL, '妙典校', '中３', '2020-10-13 03:52:20', '2020-10-13 03:52:20', NULL, NULL, 0, 1, 3, '2020-10-13 00:00:00', 'ダット', 'ダット校舎', 'ダット学年', 0, NULL),
(190, 0, 24, 281, 'セキ', '船橋三咲校', 'セキ　', 0, NULL, NULL, '日本橋小学校', '中1', '2020-10-13 08:11:07', '2020-10-13 08:15:41', '123456789', NULL, 1, 9, 0, NULL, '田中', '三咲', 'ちゅう3', 0, NULL),
(191, 2000, 24, 282, 'スズキ タナカ2１', NULL, 'スズキ タナカ2１', NULL, NULL, NULL, NULL, NULL, '2020-10-13 08:50:33', '2020-10-13 08:50:33', '1000111', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(192, 2001, 24, 283, 'スズキ タナカ22', NULL, 'スズキ タナカ22', NULL, NULL, NULL, NULL, NULL, '2020-10-13 08:50:33', '2020-10-13 08:50:33', '1000112', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(193, 2002, 24, 284, 'スズキ タナカ23', NULL, 'スズキ タナカ23', NULL, NULL, NULL, NULL, NULL, '2020-10-13 08:50:33', '2020-10-13 08:50:33', '1000113', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(194, 0, NULL, 285, 'a', '八千代緑が丘校', 'a', 1, 'A', 'a', 'g', 'f', '2020-10-14 07:14:51', '2020-10-14 07:14:51', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, 0, NULL),
(195, 0, NULL, 286, 'df', '八千代緑が丘校', 'ff', 1, NULL, NULL, 'dffc', 'cff', '2020-10-15 06:10:52', '2020-10-15 06:10:52', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 0, NULL, 287, 'df', '八千代緑が丘校', 'ff', 1, NULL, NULL, 'dffc', 'cff', '2020-10-15 06:15:54', '2020-10-15 06:15:54', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 0, 3, 288, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-15 06:20:11', '2020-10-15 06:20:11', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(198, 0, 3, 289, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-15 06:22:37', '2020-10-15 06:22:37', NULL, NULL, 0, 2, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(199, 0, NULL, 290, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-15 06:26:44', '2020-10-15 06:26:44', NULL, NULL, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 0, NULL, 291, 'df', '八千代緑が丘校', 'ff', 1, NULL, NULL, 'dffc', 'cff', '2020-10-15 06:28:00', '2020-10-15 06:28:00', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 0, NULL, 292, 'ff', 'dff', 'ffdc', 1, NULL, NULL, 'bdhd', 'đbb', '2020-10-15 06:44:20', '2020-10-15 06:44:20', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 0, 3, 293, 'thucnv', 'Truong cap 2', 'フリガナ', 1, 'Cau Giay - Ha noi', '84(01231313133)', 'Truong tiseu hoc dai nam', 'Lop 2A', '2020-10-15 06:46:46', '2020-10-15 06:46:46', NULL, NULL, 0, NULL, 1, '0000-00-00 00:00:00', 'dfsdd', 'dddd', 'dddd', 1, NULL),
(203, 0, NULL, 294, 'ff', '流山おおたかの森校', 'ffdc', 1, NULL, NULL, 'bdhd', 'đbb', '2020-10-15 06:51:38', '2020-10-15 06:51:38', NULL, NULL, 0, 8, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 0, 18, 297, 'dfgg', '船橋三咲校', 'dff', 1, NULL, NULL, '船橋三咲校', 'xcc', '2020-10-15 10:01:07', '2020-10-15 10:01:07', NULL, NULL, 1, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 0, NULL, 298, 'dcc', '八千代緑が丘校', 'xxx', 1, NULL, NULL, '八千代緑が丘校', 'zccv', '2020-10-15 10:26:19', '2020-10-15 10:26:19', NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 0, 19, 300, '鈴木　００１', NULL, 'スズキ　００１', NULL, NULL, NULL, NULL, NULL, '2020-10-19 02:38:26', '2020-10-19 02:38:26', 'S200000', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(207, 0, 19, 301, '関　００１', NULL, 'セキ　００１', NULL, NULL, NULL, NULL, NULL, '2020-10-19 02:46:23', '2020-10-19 02:46:23', 'S200001', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(208, 0, 19, 302, '山口　００１', NULL, 'セキ　００１', NULL, NULL, NULL, NULL, NULL, '2020-10-19 02:47:11', '2020-10-19 02:47:11', 'S200002', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(209, 0, 19, 303, 'NewIT 001', NULL, 'スズキ 001', NULL, NULL, NULL, NULL, NULL, '2020-10-19 07:09:09', '2020-10-19 07:09:09', 'N100001', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(210, 0, 19, 304, 'NewIT 002', NULL, 'タナカ　００２', NULL, NULL, NULL, NULL, NULL, '2020-10-19 07:10:01', '2020-10-19 07:10:01', 'N100002', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(211, 0, 19, 305, '山田　００１', NULL, 'ヤマダ　001', NULL, NULL, NULL, NULL, NULL, '2020-10-19 07:11:37', '2020-10-19 07:11:37', 'N100003', '1111', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(212, 0, 25, 306, '米澤志帆', NULL, '米澤志帆', NULL, '千葉県船橋市三咲５－３２－２栄光ビル１０２', '0474978220', NULL, NULL, '2020-10-20 05:17:37', '2020-10-20 05:17:37', '１２３４５６７８', '1234', 1, NULL, NULL, NULL, '', '', '', NULL, NULL),
(213, 0, 4, 307, 'dfff', '船橋三咲校', 'rrrr', 0, NULL, NULL, '船橋三咲校', 'vvg', '2020-10-22 06:55:35', '2020-10-23 07:06:33', 'S200077', '1111', 1, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 0, NULL, 308, 'a', '流山おおたかの森校', 'a', 1, 'A', 'ad', 'a', 'a', '2020-10-22 07:26:05', '2020-10-22 07:26:05', NULL, NULL, 0, 8, 0, NULL, NULL, NULL, NULL, 0, NULL),
(215, 0, NULL, 309, 'eeee', '入塾検討者校', 'thanks', 1, NULL, NULL, '入塾検討者校', 'hbbb', '2020-10-23 10:09:43', '2020-10-23 10:09:43', NULL, NULL, 0, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 0, NULL, 310, '犬塚', '入塾検討者校', '試男', 0, '千葉ニュータウン1-1-1', '08033107920', '颯馬中', '中２', '2020-10-23 14:21:40', '2020-10-23 14:21:40', NULL, NULL, 0, 10, 3, '2020-10-23 00:00:00', '池田', '緑が丘', '中２', 1, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sclasses`
--
ALTER TABLE `sclasses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sclasses_school_id_foreign` (`school_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_code_unique` (`student_code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sclasses`
--
ALTER TABLE `sclasses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=217;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sclasses`
--
ALTER TABLE `sclasses`
  ADD CONSTRAINT `sclasses_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
