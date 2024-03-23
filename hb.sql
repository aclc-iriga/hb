-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 04:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, '2024-03-22 22:42:38', '2023-02-19 07:36:32', '2024-03-22 22:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'mr-hb-2024', 'Mr. Hunk 2024', '2023-04-06 13:25:10', '2024-03-21 23:25:35'),
(2, 1, 'ms-hb-2024', 'Ms. Babe 2024', '2023-04-23 09:59:52', '2024-03-21 23:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'hb-2024', 'Hunk and Babe 2024', '2023-04-06 13:24:04', '2024-03-21 23:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Beauty of the Face', 20, '2024-03-21 23:38:22', '2024-03-21 23:38:22'),
(2, 1, 'Physical fitness, Appearance, Confidence, & Stage Presence', 40, '2024-03-21 23:39:16', '2024-03-21 23:39:16'),
(3, 1, 'Performance & Presentation, Audience Engagement & Personality, & Charm', 40, '2024-03-21 23:39:27', '2024-03-21 23:39:27'),
(4, 5, 'Beauty of the Face', 20, '2024-03-21 23:39:44', '2024-03-21 23:39:44'),
(5, 5, 'Physical fitness, Appearance, Confidence, & Stage Presence', 40, '2024-03-21 23:39:54', '2024-03-21 23:39:54'),
(6, 5, 'Performance & Presentation, Audience Engagement & Personality, & Charm', 40, '2024-03-21 23:40:03', '2024-03-21 23:40:03'),
(7, 2, 'Beauty of the Face', 20, '2024-03-21 23:40:40', '2024-03-22 23:16:08'),
(8, 2, 'Physical fitness, Appearance, Confidence, & Stage Presence', 40, '2024-03-21 23:40:50', '2024-03-22 23:16:25'),
(9, 2, 'Performance & Presentation, Audience Engagement & Personality, & Charm', 40, '2024-03-21 23:41:14', '2024-03-22 23:16:35'),
(10, 6, 'Beauty of the Face', 20, '2024-03-21 23:42:18', '2024-03-22 23:16:55'),
(11, 6, 'Physical fitness, Appearance, Confidence, & Stage Presence', 40, '2024-03-21 23:42:28', '2024-03-22 23:17:04'),
(12, 6, 'Performance & Presentation, Audience Engagement & Personality, & Charm', 40, '2024-03-21 23:42:43', '2024-03-22 23:17:15'),
(19, 3, 'Execution and Design', 40, '2024-03-21 23:44:14', '2024-03-21 23:44:14'),
(20, 3, 'Beauty of the Face', 30, '2024-03-21 23:44:26', '2024-03-21 23:44:26'),
(21, 3, 'Creativity, Poise & Bearing', 30, '2024-03-21 23:44:37', '2024-03-21 23:44:37'),
(22, 7, 'Execution and Design', 40, '2024-03-21 23:44:58', '2024-03-21 23:44:58'),
(23, 7, 'Beauty of the Face', 30, '2024-03-21 23:45:06', '2024-03-21 23:45:06'),
(24, 7, 'Creativity, Poise & Bearing', 30, '2024-03-21 23:45:15', '2024-03-21 23:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duos`
--

CREATE TABLE `duos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_id_1` smallint(5) UNSIGNED NOT NULL,
  `event_id_2` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duos`
--

INSERT INTO `duos` (`id`, `slug`, `title`, `event_id_1`, `event_id_2`, `created_at`, `updated_at`) VALUES
(1, 'production', 'PRODUCTION', 1, 5, '2023-04-24 01:29:03', '2023-04-24 01:29:03'),
(2, 'white-bikini', 'WHITE BIKINI PARADE', 2, 6, '2023-04-24 01:29:37', '2024-03-23 03:03:51'),
(3, 'mm-festival-bikini', 'AQUATIC FESTIVAL BIKINI', 3, 7, '2023-04-24 01:31:18', '2024-03-23 03:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '2024-03-22 00:05:29', '2024-03-22 00:05:29'),
(2, 1, 12, '2024-03-22 00:05:30', '2024-03-22 00:05:30'),
(3, 1, 13, '2024-03-22 00:05:31', '2024-03-22 00:05:31'),
(4, 1, 14, '2024-03-22 00:05:32', '2024-03-22 00:05:32'),
(5, 1, 15, '2024-03-22 00:05:34', '2024-03-22 00:05:34'),
(6, 1, 16, '2024-03-22 00:05:35', '2024-03-22 00:05:35'),
(7, 1, 17, '2024-03-22 00:05:36', '2024-03-22 00:05:36'),
(8, 1, 18, '2024-03-22 00:05:37', '2024-03-22 00:05:37'),
(9, 1, 19, '2024-03-22 00:05:38', '2024-03-22 00:05:38'),
(10, 1, 20, '2024-03-22 00:05:39', '2024-03-22 00:05:39'),
(11, 2, 11, '2024-03-22 00:05:41', '2024-03-22 00:05:41'),
(12, 2, 12, '2024-03-22 00:05:42', '2024-03-22 00:05:42'),
(13, 2, 13, '2024-03-22 00:05:43', '2024-03-22 00:05:43'),
(14, 2, 14, '2024-03-22 00:05:44', '2024-03-22 00:05:44'),
(15, 2, 15, '2024-03-22 00:05:45', '2024-03-22 00:05:45'),
(16, 2, 16, '2024-03-22 00:05:45', '2024-03-22 00:05:45'),
(17, 2, 17, '2024-03-22 00:05:48', '2024-03-22 00:05:48'),
(18, 2, 18, '2024-03-22 00:05:49', '2024-03-22 00:05:49'),
(19, 2, 19, '2024-03-22 00:05:50', '2024-03-22 00:05:50'),
(20, 2, 20, '2024-03-22 00:05:51', '2024-03-22 00:05:51'),
(31, 3, 11, '2024-03-22 00:06:04', '2024-03-22 00:06:04'),
(32, 3, 12, '2024-03-22 00:06:05', '2024-03-22 00:06:05'),
(33, 3, 13, '2024-03-22 00:06:07', '2024-03-22 00:06:07'),
(34, 3, 14, '2024-03-22 00:06:08', '2024-03-22 00:06:08'),
(35, 3, 15, '2024-03-22 00:06:10', '2024-03-22 00:06:10'),
(36, 3, 16, '2024-03-22 00:06:11', '2024-03-22 00:06:11'),
(37, 3, 17, '2024-03-22 00:06:12', '2024-03-22 00:06:12'),
(38, 3, 18, '2024-03-22 00:06:13', '2024-03-22 00:06:13'),
(39, 3, 19, '2024-03-22 00:06:15', '2024-03-22 00:06:15'),
(40, 3, 20, '2024-03-22 00:06:16', '2024-03-22 00:06:16'),
(51, 5, 1, '2024-03-22 00:06:31', '2024-03-22 00:06:31'),
(52, 5, 2, '2024-03-22 00:06:32', '2024-03-22 00:06:32'),
(53, 5, 3, '2024-03-22 00:06:33', '2024-03-22 00:06:33'),
(54, 5, 4, '2024-03-22 00:06:34', '2024-03-22 00:06:34'),
(55, 5, 5, '2024-03-22 00:06:37', '2024-03-22 00:06:37'),
(56, 5, 6, '2024-03-22 00:06:38', '2024-03-22 00:06:38'),
(57, 5, 7, '2024-03-22 00:06:40', '2024-03-22 00:06:40'),
(58, 5, 8, '2024-03-22 00:06:40', '2024-03-22 00:06:40'),
(59, 5, 9, '2024-03-22 00:06:41', '2024-03-22 00:06:41'),
(60, 5, 10, '2024-03-22 00:06:43', '2024-03-22 00:06:43'),
(61, 6, 1, '2024-03-22 00:06:45', '2024-03-22 00:06:45'),
(62, 6, 2, '2024-03-22 00:06:46', '2024-03-22 00:06:46'),
(63, 6, 3, '2024-03-22 00:06:46', '2024-03-22 00:06:46'),
(64, 6, 4, '2024-03-22 00:06:47', '2024-03-22 00:06:47'),
(65, 6, 5, '2024-03-22 00:06:48', '2024-03-22 00:06:48'),
(66, 6, 6, '2024-03-22 00:06:49', '2024-03-22 00:06:49'),
(67, 6, 7, '2024-03-22 00:06:50', '2024-03-22 00:06:50'),
(68, 6, 8, '2024-03-22 00:06:51', '2024-03-22 00:06:51'),
(69, 6, 9, '2024-03-22 00:06:52', '2024-03-22 00:06:52'),
(70, 6, 10, '2024-03-22 00:06:53', '2024-03-22 00:06:53'),
(81, 7, 1, '2024-03-22 00:07:08', '2024-03-22 00:07:08'),
(82, 7, 2, '2024-03-22 00:07:09', '2024-03-22 00:07:09'),
(83, 7, 3, '2024-03-22 00:07:11', '2024-03-22 00:07:11'),
(84, 7, 4, '2024-03-22 00:07:12', '2024-03-22 00:07:12'),
(85, 7, 5, '2024-03-22 00:07:13', '2024-03-22 00:07:13'),
(86, 7, 6, '2024-03-22 00:07:14', '2024-03-22 00:07:14'),
(87, 7, 7, '2024-03-22 00:07:15', '2024-03-22 00:07:15'),
(88, 7, 8, '2024-03-22 00:07:17', '2024-03-22 00:07:17'),
(89, 7, 9, '2024-03-22 00:07:17', '2024-03-22 00:07:17'),
(90, 7, 10, '2024-03-22 00:07:18', '2024-03-22 00:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'production-1', '(M) PRODUCTION', '2023-04-23 09:27:10', '2023-05-03 06:09:03'),
(2, 1, 'white-bikini-1', '(M) WHITE BIKINI PARADE', '2023-04-23 09:28:36', '2024-03-22 23:12:10'),
(3, 1, 'festival-bikini-1', '(M) AQUATIC FESTIVAL BIKINI', '2023-04-23 09:29:44', '2024-03-23 03:04:31'),
(5, 2, 'production-2', '(F) PRODUCTION', '2023-04-23 10:08:26', '2024-03-22 23:23:33'),
(6, 2, 'white-bikini-2', '(F) WHITE BIKINI PARADE', '2023-04-23 10:08:43', '2024-03-22 23:23:34'),
(7, 2, 'festival-bikini-2', '(F) AQUATIC FESTIVAL BIKINI', '2023-04-23 10:09:48', '2024-03-23 03:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2024-03-21 23:49:45'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2024-03-21 23:49:45'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2024-03-21 23:49:45'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2023-04-06 13:59:26', '2024-03-21 23:49:45'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2023-04-06 14:00:00', '2024-03-21 23:49:45'),
(6, 6, 'Judge 06', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, NULL, '2024-03-22 00:11:17', '2024-03-22 00:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2023-04-23 09:46:00', '2023-04-23 09:46:00'),
(2, 1, 2, 0, '2023-04-23 09:46:07', '2023-04-23 09:46:07'),
(4, 1, 3, 0, '2023-04-23 09:46:15', '2023-04-23 09:46:15'),
(6, 2, 1, 0, '2023-04-23 09:46:27', '2023-04-23 09:46:27'),
(7, 2, 2, 0, '2023-04-23 09:46:29', '2023-04-23 09:46:29'),
(9, 2, 3, 0, '2023-04-23 09:46:34', '2023-04-23 09:46:34'),
(11, 3, 1, 0, '2023-04-23 09:46:50', '2023-04-23 09:46:50'),
(12, 3, 2, 0, '2023-04-23 09:46:53', '2023-04-23 09:46:53'),
(14, 3, 3, 0, '2023-04-23 09:46:59', '2023-04-23 09:46:59'),
(16, 4, 1, 0, '2023-04-23 09:47:13', '2023-04-23 09:47:13'),
(17, 4, 2, 0, '2023-04-23 09:47:18', '2023-04-23 09:47:18'),
(19, 4, 3, 0, '2023-04-23 09:47:26', '2023-04-23 09:47:26'),
(21, 5, 1, 0, '2023-04-23 09:47:39', '2023-04-23 09:47:39'),
(22, 5, 2, 0, '2023-04-23 09:47:41', '2023-04-23 09:47:41'),
(24, 5, 3, 0, '2023-04-23 09:47:46', '2023-04-23 09:47:46'),
(26, 1, 5, 0, '2023-04-23 10:42:30', '2023-04-23 10:42:30'),
(27, 1, 6, 0, '2023-04-23 10:42:33', '2023-04-23 10:42:33'),
(29, 1, 7, 0, '2023-04-23 10:42:39', '2023-04-23 10:42:39'),
(31, 2, 5, 0, '2023-04-23 10:42:50', '2023-04-23 10:42:50'),
(32, 2, 6, 0, '2023-04-23 10:42:53', '2023-04-23 10:42:53'),
(34, 2, 7, 0, '2023-04-23 10:42:58', '2023-04-23 10:42:58'),
(36, 3, 5, 0, '2023-04-23 10:43:09', '2023-04-23 10:43:09'),
(37, 3, 6, 0, '2023-04-23 10:43:11', '2023-04-23 10:43:11'),
(39, 3, 7, 0, '2023-04-23 10:43:17', '2023-04-23 10:43:17'),
(41, 4, 5, 0, '2023-04-23 10:43:27', '2023-04-23 10:43:27'),
(42, 4, 6, 0, '2023-04-23 10:43:30', '2023-04-23 10:43:30'),
(44, 4, 7, 0, '2023-04-23 10:43:35', '2023-04-23 10:43:35'),
(46, 5, 5, 0, '2023-04-23 10:43:45', '2023-04-23 10:43:45'),
(47, 5, 6, 0, '2023-04-23 10:43:47', '2023-04-23 10:43:47'),
(49, 5, 7, 0, '2023-04-23 10:43:54', '2023-04-23 10:43:54'),
(51, 6, 1, 0, '2024-03-22 00:11:39', '2024-03-22 00:11:39'),
(52, 6, 2, 0, '2024-03-22 00:11:43', '2024-03-22 00:11:43'),
(54, 6, 3, 0, '2024-03-22 00:11:51', '2024-03-22 00:11:51'),
(56, 6, 5, 0, '2024-03-22 00:12:00', '2024-03-22 00:12:00'),
(57, 6, 6, 0, '2024-03-22 00:12:04', '2024-03-22 00:12:04'),
(59, 6, 7, 0, '2024-03-22 00:12:11', '2024-03-22 00:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `event_id`, `rank`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(2, 1, 2, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(3, 1, 3, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(4, 1, 4, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(5, 1, 5, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(6, 1, 6, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(7, 1, 7, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(8, 1, 8, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(9, 1, 9, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(10, 1, 10, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(11, 1, 11, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(12, 1, 12, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(13, 1, 13, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(14, 1, 14, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(15, 1, 15, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(16, 1, 16, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(17, 2, 1, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(18, 2, 2, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(19, 2, 3, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(20, 2, 4, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(21, 2, 5, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(22, 2, 6, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(23, 2, 7, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(24, 2, 8, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(25, 2, 9, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(26, 2, 10, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(27, 2, 11, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(28, 2, 12, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(29, 2, 13, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(30, 2, 14, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(31, 2, 15, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(32, 2, 16, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(49, 3, 1, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(50, 3, 2, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(51, 3, 3, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(52, 3, 4, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(53, 3, 5, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(54, 3, 6, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(55, 3, 7, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(56, 3, 8, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(57, 3, 9, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(58, 3, 10, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(59, 3, 11, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(60, 3, 12, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(61, 3, 13, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(62, 3, 14, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(63, 3, 15, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(64, 3, 16, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marco Nolledo', 'Legaspi City, Albay', 'mr-01-marco-nolledo.jpg', '2024-03-21 23:53:44', '2024-03-23 03:00:33'),
(2, 2, 'Renz Carl Niebla', 'Sta. Rosa, Laguna', 'mr-02-renz-carl-niebla.jpg', '2024-03-21 23:55:51', '2024-03-23 03:00:37'),
(3, 3, 'Kenjie Mendoza', 'Pampanga', 'mr-03-kenjie-mendoza.jpg', '2024-03-21 23:58:03', '2024-03-23 03:00:41'),
(4, 4, 'Lie Luca', 'Baao, Cam. Sur', 'mr-04-lie-luca.jpg', '2024-03-21 23:58:29', '2024-03-23 03:00:44'),
(5, 5, 'Cedrick Oximina', 'Tabaco City, Albay', 'mr-05-cedrick-oximina.jpg', '2024-03-21 23:58:57', '2024-03-23 03:00:49'),
(6, 6, 'Ronnel Macasinag', 'Daraga, Albay', 'mr-06-ronnel-macasinag.jpg', '2024-03-21 23:59:22', '2024-03-23 03:00:52'),
(7, 7, 'Jayvee Garcia', 'Legaspi City, Albay', 'mr-07-jayvee-garcia.jpg', '2024-03-21 23:59:49', '2024-03-23 03:00:57'),
(8, 8, 'Zack Smith', 'Tanay, Rizal', 'mr-08-zack-smith.jpg', '2024-03-22 00:00:16', '2024-03-23 03:01:00'),
(9, 9, 'JD Cañeta', 'Lucban, Quezon', 'mr-09-jd-caneta.jpg', '2024-03-22 00:00:51', '2024-03-23 03:01:04'),
(10, 10, 'Axl Jay', 'Guinobatan, Albay', 'mr-10-axl-jay.jpg', '2024-03-22 00:01:12', '2024-03-23 03:01:07'),
(11, 1, 'Ashley Hammer', 'Quezon Province', 'ms-01-ashley-hammer.jpg', '2024-03-22 00:01:38', '2024-03-23 03:01:11'),
(12, 2, 'Jaki Villarin', 'Catanduanes', 'ms-02-jaki-villarin.jpg', '2024-03-22 00:01:54', '2024-03-23 03:01:14'),
(13, 3, 'Louiella Maureen', 'Masbate City', 'ms-03-louiella-maureen.jpg', '2024-03-22 00:02:19', '2024-03-23 03:01:18'),
(14, 4, 'Bella Gray', 'Metro, Manila', 'ms-04-bella-gray.jpg', '2024-03-22 00:02:35', '2024-03-23 03:01:21'),
(15, 5, 'Luna Venice', 'Iriga City', 'ms-05-luna-venice.jpg', '2024-03-22 00:02:59', '2024-03-23 03:01:24'),
(16, 6, 'Eva Isabel Carter', 'Cebu City', 'no-avatar.jpg', '2024-03-22 00:03:20', '2024-03-22 00:03:20'),
(17, 7, 'Andrea Yvonne', 'Mercedes, Cam. Norte', 'ms-07-andrea-yvonne.jpg', '2024-03-22 00:03:46', '2024-03-23 03:01:31'),
(18, 8, 'Stephanie Veil', 'Naga City', 'ms-08-stephanie-veil.jpg', '2024-03-22 00:04:13', '2024-03-23 03:01:36'),
(19, 9, 'Rica Ashbel', 'Daet, Cam. Norte', 'ms-09-rica-ashbel.jpg', '2024-03-22 00:04:45', '2024-03-23 03:01:40'),
(20, 10, 'Lupita Jones', 'Benguet', 'no-avatar.jpg', '2024-03-22 00:04:59', '2024-03-22 00:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Best in Production (Male)', '2023-04-23 10:31:50', '2023-04-23 10:33:52'),
(2, 2, 1, 'Best in White Bikini Parade (Male)', '2023-04-23 10:32:05', '2024-03-23 00:53:59'),
(3, 5, 1, 'Best in Production (Female)', '2023-04-23 10:32:42', '2024-03-23 03:03:06'),
(4, 6, 1, 'Best in White Bikini Parade (Female)', '2023-04-23 10:32:58', '2024-03-23 03:03:08'),
(5, 3, 1, 'Best in Aquatic Festival Bikini (Male)', '2024-03-22 00:15:36', '2024-03-23 03:04:59'),
(6, 7, 1, 'Best in Aquatic Festival Bikini (Female)', '2024-03-22 00:15:38', '2024-03-23 03:05:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `duos`
--
ALTER TABLE `duos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event1` (`event_id_1`),
  ADD KEY `event2` (`event_id_2`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duos`
--
ALTER TABLE `duos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duos`
--
ALTER TABLE `duos`
  ADD CONSTRAINT `duos_ibfk_1` FOREIGN KEY (`event_id_1`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `duos_ibfk_2` FOREIGN KEY (`event_id_2`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
