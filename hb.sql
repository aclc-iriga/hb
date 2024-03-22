-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 01:45 AM
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
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, '2024-03-22 00:07:54', '2023-02-19 07:36:32', '2024-03-22 00:07:54');

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
(4, 6, 'Beauty of the Face', 20, '2024-03-21 23:39:44', '2024-03-21 23:39:44'),
(5, 6, 'Physical fitness, Appearance, Confidence, & Stage Presence', 40, '2024-03-21 23:39:54', '2024-03-21 23:39:54'),
(6, 6, 'Performance & Presentation, Audience Engagement & Personality, & Charm', 40, '2024-03-21 23:40:03', '2024-03-21 23:40:03'),
(7, 2, 'Beauty of the Face', 40, '2024-03-21 23:40:40', '2024-03-21 23:40:40'),
(8, 2, 'Poise, Bearing & Figure', 30, '2024-03-21 23:40:50', '2024-03-21 23:40:50'),
(9, 2, 'Body Figure & Symmetry', 30, '2024-03-21 23:41:14', '2024-03-21 23:41:14'),
(10, 7, 'Beauty of the Face', 40, '2024-03-21 23:42:18', '2024-03-21 23:42:18'),
(11, 7, 'Poise, Bearing & Figure', 30, '2024-03-21 23:42:28', '2024-03-21 23:42:28'),
(12, 7, 'Body Figure & Symmetry', 30, '2024-03-21 23:42:43', '2024-03-21 23:42:43'),
(13, 3, 'Beauty of the Face', 40, '2024-03-21 23:43:05', '2024-03-21 23:43:05'),
(14, 3, 'Body Figure & Symmetry', 40, '2024-03-21 23:43:14', '2024-03-21 23:43:14'),
(15, 3, 'Poise, Bearing & Stance', 20, '2024-03-21 23:43:22', '2024-03-21 23:43:22'),
(16, 8, 'Beauty of the Face', 40, '2024-03-21 23:43:34', '2024-03-21 23:43:34'),
(17, 8, 'Body Figure & Symmetry', 40, '2024-03-21 23:43:42', '2024-03-21 23:43:42'),
(18, 8, 'Poise, Bearing & Stance', 20, '2024-03-21 23:43:52', '2024-03-21 23:43:52'),
(19, 4, 'Execution and Design', 40, '2024-03-21 23:44:14', '2024-03-21 23:44:14'),
(20, 4, 'Beauty of the Face', 30, '2024-03-21 23:44:26', '2024-03-21 23:44:26'),
(21, 4, 'Creativity, Poise & Bearing', 30, '2024-03-21 23:44:37', '2024-03-21 23:44:37'),
(22, 9, 'Execution and Design', 40, '2024-03-21 23:44:58', '2024-03-21 23:44:58'),
(23, 9, 'Beauty of the Face', 30, '2024-03-21 23:45:06', '2024-03-21 23:45:06'),
(24, 9, 'Creativity, Poise & Bearing', 30, '2024-03-21 23:45:15', '2024-03-21 23:45:15'),
(25, 5, 'Beauty of the Face', 40, '2024-03-21 23:46:43', '2024-03-21 23:46:43'),
(26, 5, 'Poise, Bearing & Stance', 30, '2024-03-21 23:46:53', '2024-03-21 23:46:53'),
(27, 5, 'Body Figure & Symmetry', 30, '2024-03-21 23:47:04', '2024-03-21 23:47:04'),
(28, 10, 'Beauty of the Face', 40, '2024-03-21 23:47:20', '2024-03-21 23:47:20'),
(29, 10, 'Poise, Bearing & Stance', 30, '2024-03-21 23:47:28', '2024-03-21 23:47:28'),
(30, 10, 'Body Figure & Symmetry', 30, '2024-03-21 23:47:37', '2024-03-21 23:47:37');

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
(1, 'production', 'PRODUCTION', 1, 6, '2023-04-24 01:29:03', '2023-04-24 01:29:03'),
(2, 'swimwear', 'SWIMWEAR', 2, 7, '2023-04-24 01:29:37', '2023-04-24 01:29:37'),
(3, 'mm-body-beautiful', 'MR. & MS. BODY BEAUTIFUL', 3, 8, '2023-04-24 01:30:43', '2024-03-22 00:15:31'),
(4, 'mm-festival-bikini', 'FESTIVAL BIKINI', 4, 9, '2023-04-24 01:31:18', '2024-03-22 00:16:22'),
(5, 'major', 'MAJOR', 5, 10, '2023-04-24 01:31:44', '2024-03-22 00:16:13');

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
(21, 3, 11, '2024-03-22 00:05:53', '2024-03-22 00:05:53'),
(22, 3, 12, '2024-03-22 00:05:54', '2024-03-22 00:05:54'),
(23, 3, 13, '2024-03-22 00:05:55', '2024-03-22 00:05:55'),
(24, 3, 14, '2024-03-22 00:05:55', '2024-03-22 00:05:55'),
(25, 3, 15, '2024-03-22 00:05:56', '2024-03-22 00:05:56'),
(26, 3, 16, '2024-03-22 00:05:57', '2024-03-22 00:05:57'),
(27, 3, 17, '2024-03-22 00:05:58', '2024-03-22 00:05:58'),
(28, 3, 18, '2024-03-22 00:06:00', '2024-03-22 00:06:00'),
(29, 3, 19, '2024-03-22 00:06:01', '2024-03-22 00:06:01'),
(30, 3, 20, '2024-03-22 00:06:01', '2024-03-22 00:06:01'),
(31, 4, 11, '2024-03-22 00:06:04', '2024-03-22 00:06:04'),
(32, 4, 12, '2024-03-22 00:06:05', '2024-03-22 00:06:05'),
(33, 4, 13, '2024-03-22 00:06:07', '2024-03-22 00:06:07'),
(34, 4, 14, '2024-03-22 00:06:08', '2024-03-22 00:06:08'),
(35, 4, 15, '2024-03-22 00:06:10', '2024-03-22 00:06:10'),
(36, 4, 16, '2024-03-22 00:06:11', '2024-03-22 00:06:11'),
(37, 4, 17, '2024-03-22 00:06:12', '2024-03-22 00:06:12'),
(38, 4, 18, '2024-03-22 00:06:13', '2024-03-22 00:06:13'),
(39, 4, 19, '2024-03-22 00:06:15', '2024-03-22 00:06:15'),
(40, 4, 20, '2024-03-22 00:06:16', '2024-03-22 00:06:16'),
(41, 5, 11, '2024-03-22 00:06:17', '2024-03-22 00:06:17'),
(42, 5, 12, '2024-03-22 00:06:18', '2024-03-22 00:06:18'),
(43, 5, 13, '2024-03-22 00:06:19', '2024-03-22 00:06:19'),
(44, 5, 14, '2024-03-22 00:06:20', '2024-03-22 00:06:20'),
(45, 5, 15, '2024-03-22 00:06:21', '2024-03-22 00:06:21'),
(46, 5, 16, '2024-03-22 00:06:22', '2024-03-22 00:06:22'),
(47, 5, 17, '2024-03-22 00:06:24', '2024-03-22 00:06:24'),
(48, 5, 18, '2024-03-22 00:06:24', '2024-03-22 00:06:24'),
(49, 5, 19, '2024-03-22 00:06:25', '2024-03-22 00:06:25'),
(50, 5, 20, '2024-03-22 00:06:26', '2024-03-22 00:06:26'),
(51, 6, 1, '2024-03-22 00:06:31', '2024-03-22 00:06:31'),
(52, 6, 2, '2024-03-22 00:06:32', '2024-03-22 00:06:32'),
(53, 6, 3, '2024-03-22 00:06:33', '2024-03-22 00:06:33'),
(54, 6, 4, '2024-03-22 00:06:34', '2024-03-22 00:06:34'),
(55, 6, 5, '2024-03-22 00:06:37', '2024-03-22 00:06:37'),
(56, 6, 6, '2024-03-22 00:06:38', '2024-03-22 00:06:38'),
(57, 6, 7, '2024-03-22 00:06:40', '2024-03-22 00:06:40'),
(58, 6, 8, '2024-03-22 00:06:40', '2024-03-22 00:06:40'),
(59, 6, 9, '2024-03-22 00:06:41', '2024-03-22 00:06:41'),
(60, 6, 10, '2024-03-22 00:06:43', '2024-03-22 00:06:43'),
(61, 7, 1, '2024-03-22 00:06:45', '2024-03-22 00:06:45'),
(62, 7, 2, '2024-03-22 00:06:46', '2024-03-22 00:06:46'),
(63, 7, 3, '2024-03-22 00:06:46', '2024-03-22 00:06:46'),
(64, 7, 4, '2024-03-22 00:06:47', '2024-03-22 00:06:47'),
(65, 7, 5, '2024-03-22 00:06:48', '2024-03-22 00:06:48'),
(66, 7, 6, '2024-03-22 00:06:49', '2024-03-22 00:06:49'),
(67, 7, 7, '2024-03-22 00:06:50', '2024-03-22 00:06:50'),
(68, 7, 8, '2024-03-22 00:06:51', '2024-03-22 00:06:51'),
(69, 7, 9, '2024-03-22 00:06:52', '2024-03-22 00:06:52'),
(70, 7, 10, '2024-03-22 00:06:53', '2024-03-22 00:06:53'),
(71, 8, 1, '2024-03-22 00:06:55', '2024-03-22 00:06:55'),
(72, 8, 2, '2024-03-22 00:06:56', '2024-03-22 00:06:56'),
(73, 8, 3, '2024-03-22 00:06:57', '2024-03-22 00:06:57'),
(74, 8, 4, '2024-03-22 00:06:58', '2024-03-22 00:06:58'),
(75, 8, 5, '2024-03-22 00:06:59', '2024-03-22 00:06:59'),
(76, 8, 6, '2024-03-22 00:07:02', '2024-03-22 00:07:02'),
(77, 8, 7, '2024-03-22 00:07:02', '2024-03-22 00:07:02'),
(78, 8, 8, '2024-03-22 00:07:03', '2024-03-22 00:07:03'),
(79, 8, 9, '2024-03-22 00:07:05', '2024-03-22 00:07:05'),
(80, 8, 10, '2024-03-22 00:07:05', '2024-03-22 00:07:05'),
(81, 9, 1, '2024-03-22 00:07:08', '2024-03-22 00:07:08'),
(82, 9, 2, '2024-03-22 00:07:09', '2024-03-22 00:07:09'),
(83, 9, 3, '2024-03-22 00:07:11', '2024-03-22 00:07:11'),
(84, 9, 4, '2024-03-22 00:07:12', '2024-03-22 00:07:12'),
(85, 9, 5, '2024-03-22 00:07:13', '2024-03-22 00:07:13'),
(86, 9, 6, '2024-03-22 00:07:14', '2024-03-22 00:07:14'),
(87, 9, 7, '2024-03-22 00:07:15', '2024-03-22 00:07:15'),
(88, 9, 8, '2024-03-22 00:07:17', '2024-03-22 00:07:17'),
(89, 9, 9, '2024-03-22 00:07:17', '2024-03-22 00:07:17'),
(90, 9, 10, '2024-03-22 00:07:18', '2024-03-22 00:07:18'),
(91, 10, 1, '2024-03-22 00:07:23', '2024-03-22 00:07:23'),
(92, 10, 2, '2024-03-22 00:07:24', '2024-03-22 00:07:24'),
(93, 10, 3, '2024-03-22 00:07:24', '2024-03-22 00:07:24'),
(94, 10, 4, '2024-03-22 00:07:25', '2024-03-22 00:07:25'),
(95, 10, 5, '2024-03-22 00:07:26', '2024-03-22 00:07:26'),
(96, 10, 6, '2024-03-22 00:07:28', '2024-03-22 00:07:28'),
(97, 10, 7, '2024-03-22 00:07:29', '2024-03-22 00:07:29'),
(98, 10, 8, '2024-03-22 00:07:30', '2024-03-22 00:07:30'),
(99, 10, 9, '2024-03-22 00:07:31', '2024-03-22 00:07:31'),
(100, 10, 10, '2024-03-22 00:07:32', '2024-03-22 00:07:32');

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
(2, 1, 'swimwear-1', '(M) SWIMWEAR', '2023-04-23 09:28:36', '2023-05-03 06:09:13'),
(3, 1, 'mr-body-beautiful', '(M) MR. BODY BEAUTIFUL', '2023-04-23 09:29:12', '2024-03-21 23:26:59'),
(4, 1, 'festival-bikini-1', '(M) FESTIVAL BIKINI', '2023-04-23 09:29:44', '2024-03-21 23:34:19'),
(5, 1, 'major', '(M) Major', '2023-04-23 09:30:11', '2024-03-21 23:45:45'),
(6, 2, 'production-2', '(F) PRODUCTION', '2023-04-23 10:08:26', '2023-05-03 06:09:52'),
(7, 2, 'swimwear-2', '(F) SWIMWEAR', '2023-04-23 10:08:43', '2023-05-03 06:10:12'),
(8, 2, 'ms-body-beautiful', '(F) MS. BODY BEAUTIFUL', '2023-04-23 10:09:14', '2024-03-21 23:27:33'),
(9, 2, 'festival-bikini-2', '(F) FESTIVAL BIKINI', '2023-04-23 10:09:48', '2024-03-21 23:34:43'),
(10, 2, 'major-2', '(F) Major', '2023-04-23 10:10:04', '2024-03-21 23:46:08');

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
(3, 1, 3, 0, '2023-04-23 09:46:12', '2023-04-23 09:46:12'),
(4, 1, 4, 0, '2023-04-23 09:46:15', '2023-04-23 09:46:15'),
(5, 1, 5, 0, '2023-04-23 09:46:18', '2023-04-23 09:46:18'),
(6, 2, 1, 0, '2023-04-23 09:46:27', '2023-04-23 09:46:27'),
(7, 2, 2, 0, '2023-04-23 09:46:29', '2023-04-23 09:46:29'),
(8, 2, 3, 0, '2023-04-23 09:46:32', '2023-04-23 09:46:32'),
(9, 2, 4, 0, '2023-04-23 09:46:34', '2023-04-23 09:46:34'),
(10, 2, 5, 0, '2023-04-23 09:46:37', '2023-04-23 09:46:37'),
(11, 3, 1, 0, '2023-04-23 09:46:50', '2023-04-23 09:46:50'),
(12, 3, 2, 0, '2023-04-23 09:46:53', '2023-04-23 09:46:53'),
(13, 3, 3, 0, '2023-04-23 09:46:57', '2023-04-23 09:46:57'),
(14, 3, 4, 0, '2023-04-23 09:46:59', '2023-04-23 09:46:59'),
(15, 3, 5, 0, '2023-04-23 09:47:02', '2023-04-23 09:47:02'),
(16, 4, 1, 0, '2023-04-23 09:47:13', '2023-04-23 09:47:13'),
(17, 4, 2, 0, '2023-04-23 09:47:18', '2023-04-23 09:47:18'),
(18, 4, 3, 0, '2023-04-23 09:47:22', '2023-04-23 09:47:22'),
(19, 4, 4, 0, '2023-04-23 09:47:26', '2023-04-23 09:47:26'),
(20, 4, 5, 0, '2023-04-23 09:47:29', '2023-04-23 09:47:29'),
(21, 5, 1, 0, '2023-04-23 09:47:39', '2023-04-23 09:47:39'),
(22, 5, 2, 0, '2023-04-23 09:47:41', '2023-04-23 09:47:41'),
(23, 5, 3, 0, '2023-04-23 09:47:44', '2023-04-23 09:47:44'),
(24, 5, 4, 0, '2023-04-23 09:47:46', '2023-04-23 09:47:46'),
(25, 5, 5, 0, '2023-04-23 09:47:48', '2023-04-23 09:47:48'),
(26, 1, 6, 0, '2023-04-23 10:42:30', '2023-04-23 10:42:30'),
(27, 1, 7, 0, '2023-04-23 10:42:33', '2023-04-23 10:42:33'),
(28, 1, 8, 0, '2023-04-23 10:42:36', '2023-04-23 10:42:36'),
(29, 1, 9, 0, '2023-04-23 10:42:39', '2023-04-23 10:42:39'),
(30, 1, 10, 0, '2023-04-23 10:42:42', '2023-04-23 10:42:42'),
(31, 2, 6, 0, '2023-04-23 10:42:50', '2023-04-23 10:42:50'),
(32, 2, 7, 0, '2023-04-23 10:42:53', '2023-04-23 10:42:53'),
(33, 2, 8, 0, '2023-04-23 10:42:55', '2023-04-23 10:42:55'),
(34, 2, 9, 0, '2023-04-23 10:42:58', '2023-04-23 10:42:58'),
(35, 2, 10, 0, '2023-04-23 10:43:02', '2023-04-23 10:43:02'),
(36, 3, 6, 0, '2023-04-23 10:43:09', '2023-04-23 10:43:09'),
(37, 3, 7, 0, '2023-04-23 10:43:11', '2023-04-23 10:43:11'),
(38, 3, 8, 0, '2023-04-23 10:43:14', '2023-04-23 10:43:14'),
(39, 3, 9, 0, '2023-04-23 10:43:17', '2023-04-23 10:43:17'),
(40, 3, 10, 0, '2023-04-23 10:43:19', '2023-04-23 10:43:19'),
(41, 4, 6, 0, '2023-04-23 10:43:27', '2023-04-23 10:43:27'),
(42, 4, 7, 0, '2023-04-23 10:43:30', '2023-04-23 10:43:30'),
(43, 4, 8, 0, '2023-04-23 10:43:33', '2023-04-23 10:43:33'),
(44, 4, 9, 0, '2023-04-23 10:43:35', '2023-04-23 10:43:35'),
(45, 4, 10, 0, '2023-04-23 10:43:38', '2023-04-23 10:43:38'),
(46, 5, 6, 0, '2023-04-23 10:43:45', '2023-04-23 10:43:45'),
(47, 5, 7, 0, '2023-04-23 10:43:47', '2023-04-23 10:43:47'),
(48, 5, 8, 0, '2023-04-23 10:43:51', '2023-04-23 10:43:51'),
(49, 5, 9, 0, '2023-04-23 10:43:54', '2023-04-23 10:43:54'),
(50, 5, 10, 0, '2023-04-23 10:43:56', '2023-04-23 10:43:56'),
(51, 6, 1, 0, '2024-03-22 00:11:39', '2024-03-22 00:11:39'),
(52, 6, 2, 0, '2024-03-22 00:11:43', '2024-03-22 00:11:43'),
(53, 6, 3, 0, '2024-03-22 00:11:46', '2024-03-22 00:11:46'),
(54, 6, 4, 0, '2024-03-22 00:11:51', '2024-03-22 00:11:51'),
(55, 6, 5, 0, '2024-03-22 00:11:55', '2024-03-22 00:11:55'),
(56, 6, 6, 0, '2024-03-22 00:12:00', '2024-03-22 00:12:00'),
(57, 6, 7, 0, '2024-03-22 00:12:04', '2024-03-22 00:12:04'),
(58, 6, 8, 0, '2024-03-22 00:12:07', '2024-03-22 00:12:07'),
(59, 6, 9, 0, '2024-03-22 00:12:11', '2024-03-22 00:12:11'),
(60, 6, 10, 0, '2024-03-22 00:12:15', '2024-03-22 00:12:15');

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
(33, 3, 1, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(34, 3, 2, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(35, 3, 3, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(36, 3, 4, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(37, 3, 5, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(38, 3, 6, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(39, 3, 7, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(40, 3, 8, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(41, 3, 9, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(42, 3, 10, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(43, 3, 11, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(44, 3, 12, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(45, 3, 13, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(46, 3, 14, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(47, 3, 15, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(48, 3, 16, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(49, 4, 1, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(50, 4, 2, 0, '2023-04-23 09:44:08', '2023-04-23 09:44:08'),
(51, 4, 3, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(52, 4, 4, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(53, 4, 5, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(54, 4, 6, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(55, 4, 7, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(56, 4, 8, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(57, 4, 9, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(58, 4, 10, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(59, 4, 11, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(60, 4, 12, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(61, 4, 13, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(62, 4, 14, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(63, 4, 15, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(64, 4, 16, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(65, 5, 1, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(66, 5, 2, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(67, 5, 3, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(68, 5, 4, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(69, 5, 5, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(70, 5, 6, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(71, 5, 7, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(72, 5, 8, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(73, 5, 9, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(74, 5, 10, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(75, 5, 11, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(76, 5, 12, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(77, 5, 13, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(78, 5, 14, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(79, 5, 15, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09'),
(80, 5, 16, 0, '2023-04-23 09:44:09', '2023-04-23 09:44:09');

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
(1, 1, 'Marco Nolledo', 'Legaspi City, Albay', 'no-avatar.jpg', '2024-03-21 23:53:44', '2024-03-21 23:53:44'),
(2, 2, 'Renz Carl Niebla', 'Sta. Rosa, Laguna', 'no-avatar.jpg', '2024-03-21 23:55:51', '2024-03-21 23:55:51'),
(3, 3, 'Kenjie Mendoza', 'Pampanga', 'no-avatar.jpg', '2024-03-21 23:58:03', '2024-03-21 23:58:03'),
(4, 4, 'Lie Luca', 'Baao, Cam. Sur', 'no-avatar.jpg', '2024-03-21 23:58:29', '2024-03-21 23:58:29'),
(5, 5, 'Cedrick Oximina', 'Tabaco City, Albay', 'no-avatar.jpg', '2024-03-21 23:58:57', '2024-03-21 23:59:27'),
(6, 6, 'Ronnel Macasinag', 'Daraga, Albay', 'no-avatar.jpg', '2024-03-21 23:59:22', '2024-03-21 23:59:22'),
(7, 7, 'Jayvee Garcia', 'Legaspi City, Albay', 'no-avatar.jpg', '2024-03-21 23:59:49', '2024-03-21 23:59:49'),
(8, 8, 'Zack Smith', 'Tanay, Rizal', 'no-avatar.jpg', '2024-03-22 00:00:16', '2024-03-22 00:00:16'),
(9, 9, 'JD Cañeta', 'Lucban, Quezon', 'no-avatar.jpg', '2024-03-22 00:00:51', '2024-03-22 00:00:51'),
(10, 10, 'Axl Jay', 'Guinobatan, Albay', 'no-avatar.jpg', '2024-03-22 00:01:12', '2024-03-22 00:01:12'),
(11, 1, 'Ashley Hammer', 'Quezon Province', 'no-avatar.jpg', '2024-03-22 00:01:38', '2024-03-22 00:01:38'),
(12, 2, 'Jaki Villarin', 'Catanduanes', 'no-avatar.jpg', '2024-03-22 00:01:54', '2024-03-22 00:01:54'),
(13, 3, 'Louiella Maureen', 'Masbate City', 'no-avatar.jpg', '2024-03-22 00:02:19', '2024-03-22 00:02:19'),
(14, 4, 'Bella Gray', 'Metro, Manila', 'no-avatar.jpg', '2024-03-22 00:02:35', '2024-03-22 00:02:35'),
(15, 5, 'Luna Venice', 'Iriga City', 'no-avatar.jpg', '2024-03-22 00:02:59', '2024-03-22 00:02:59'),
(16, 6, 'Eva Isabel Carter', 'Cebu City', 'no-avatar.jpg', '2024-03-22 00:03:20', '2024-03-22 00:03:20'),
(17, 7, 'Andrea Yvonne', 'Mercedes, Cam. Norte', 'no-avatar.jpg', '2024-03-22 00:03:46', '2024-03-22 00:03:46'),
(18, 8, 'Stephanie Veil', 'Naga City', 'no-avatar.jpg', '2024-03-22 00:04:13', '2024-03-22 00:04:13'),
(19, 9, 'Rica Ashbel', 'Daet, Cam. Norte', 'no-avatar.jpg', '2024-03-22 00:04:45', '2024-03-22 00:04:45'),
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
(2, 2, 1, 'Best in Swimwear (Male)', '2023-04-23 10:32:05', '2023-04-23 10:33:54'),
(3, 3, 1, 'Best in Body Beautiful (Male)', '2023-04-23 10:32:24', '2024-03-22 00:18:12'),
(9, 6, 1, 'Best in Production (Female)', '2023-04-23 10:32:42', '2023-04-23 10:35:37'),
(10, 7, 1, 'Best in Swimwear (Female)', '2023-04-23 10:32:58', '2023-04-23 10:35:41'),
(11, 8, 1, 'Best in Body Beautiful (Female)', '2023-04-23 10:33:12', '2024-03-22 00:23:28'),
(131, 4, 1, 'Best in Festival Bikini (Male)', '2024-03-22 00:15:36', '2024-03-22 00:22:03'),
(151, 9, 1, 'Best in Festival Bikini (Female)', '2024-03-22 00:15:38', '2024-03-22 00:25:04');

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

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
