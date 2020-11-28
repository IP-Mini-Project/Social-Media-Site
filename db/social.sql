-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 09:31 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `artclub`
--

CREATE TABLE `artclub` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artclub`
--

INSERT INTO `artclub` (`id`, `username`) VALUES
(1, 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `arts_chat`
--

CREATE TABLE `arts_chat` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arts_chat`
--

INSERT INTO `arts_chat` (`id`, `username`, `message`, `time`) VALUES
(1, 'sun', 'hello', '2020-11-11 12:06:20'),
(2, 'sun', 'i love to draw', '2020-11-11 12:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `codeclub`
--

CREATE TABLE `codeclub` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `codeclub`
--

INSERT INTO `codeclub` (`id`, `username`) VALUES
(0, 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `code_chat`
--

CREATE TABLE `code_chat` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code_chat`
--

INSERT INTO `code_chat` (`id`, `username`, `message`, `time`) VALUES
(0, 'sun', 'hello\r\n', '2020-11-11 12:13:22'),
(0, 'sun', 'i love to code', '2020-11-11 12:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `username`, `comment`, `comment_author`, `date`) VALUES
(1, 11, 'sun', 'oh you guys went bowling!', 'bun', '2020-11-26 10:33:26'),
(2, 10, 'jack', 'another bowling session without me!!! :(', 'bun', '2020-11-26 10:34:02'),
(3, 8, 'sun', 'that looks fun sun', 'bun', '2020-11-26 10:34:24'),
(4, 5, 'bun', 'arcade is love <3', 'bun', '2020-11-26 10:34:54'),
(5, 4, 'sam', 'pretty lights for everyone', 'bun', '2020-11-26 10:35:13'),
(6, 3, 'sam', 'this is enchanting', 'bun', '2020-11-26 10:35:27'),
(36, 10, 'jack', 'i miss this!', 'sun', '2020-11-28 20:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `genchat`
--

CREATE TABLE `genchat` (
  `id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genchat`
--

INSERT INTO `genchat` (`id`, `msg`, `username`, `time`) VALUES
(1, 'he', 'ashwati', '2020-09-23 06:59:54'),
(2, 'waasup', 'ashwati', '2020-09-23 07:00:05'),
(3, 'hello', 'ashwati', '2020-09-23 07:03:12'),
(4, 'hello', 'ashwati', '2020-09-23 07:04:01'),
(5, 'hello', 'ashwati', '2020-09-23 07:05:04'),
(6, 'hello', 'ashwati', '2020-09-23 07:05:19'),
(7, 'hello', 'ashwati', '2020-09-23 07:06:50'),
(8, 'how', 'ashwati', '2020-09-23 07:19:53'),
(9, 'no', 'ashwati', '2020-09-23 07:20:28'),
(10, 'no', 'ashwati', '2020-09-23 07:21:35'),
(11, 'yes', 'ashwati', '2020-09-23 07:21:46'),
(12, 'yes', 'ashwati', '2020-09-23 07:22:56'),
(13, 'yes', 'ashwati', '2020-09-23 07:23:14'),
(14, 'yes', 'ashwati', '2020-09-23 07:23:36'),
(16, 'im bun', 'bun', '2020-09-23 07:26:12'),
(17, 'im bun', 'bun', '2020-09-23 07:28:51'),
(18, 'so', 'bun', '2020-09-23 07:31:23'),
(19, 'so', 'bun', '2020-09-23 07:35:25'),
(20, 'weird', 'bun', '2020-09-23 07:42:38'),
(21, 'weird', 'bun', '2020-09-23 07:42:44'),
(22, 'weird', 'bun', '2020-09-23 07:43:22'),
(23, 'two tim?', 'bun', '2020-09-23 07:43:29'),
(24, 'two tim?', 'bun', '2020-09-23 07:43:35'),
(25, 'now?', 'bun', '2020-09-23 07:47:22'),
(26, 'no?', 'bun', '2020-09-23 07:47:29'),
(27, 'one time?', 'bun', '2020-09-23 07:48:13'),
(28, 'one time?', 'bun', '2020-09-23 07:48:55'),
(29, 'one time?', 'bun', '2020-09-23 07:49:46'),
(30, 'again?', 'bun', '2020-09-23 07:49:52'),
(31, 'np', 'bun', '2020-09-23 07:49:57'),
(32, 'a', 'bun', '2020-09-23 11:11:31'),
(35, 'whos this', 'bun', '2020-09-23 11:13:06'),
(36, 'im sam', 'sam', '2020-09-23 11:19:21'),
(37, 'no', 'sam', '2020-09-23 15:20:11'),
(38, 'hi', 'sun', '2020-09-26 07:00:17'),
(39, 'hola', 'jack', '2020-10-09 07:25:45'),
(42, 'ssup', 'sun', '2020-11-03 07:18:23'),
(43, 'gg', 'sun', '2020-11-10 09:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `post_id` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `post_username` varchar(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`post_id`, `username`, `post_username`, `time`) VALUES
(5, 'bun', 'bun', '2020-11-26 11:22:23'),
(8, 'bun', 'sun', '2020-11-26 11:22:41'),
(11, 'jack', 'sun', '2020-11-26 11:24:35'),
(11, 'sun', 'sun', '2020-11-26 13:07:25'),
(11, 'sun', 'sun', '2020-11-26 13:07:27'),
(11, 'sun', 'sun', '2020-11-26 13:07:58'),
(11, 'sun', 'sun', '2020-11-26 13:38:08'),
(11, 'sun', 'sun', '2020-11-26 13:47:28'),
(11, 'sun', 'sun', '2020-11-26 13:47:32'),
(11, 'sun', 'sun', '2020-11-26 13:47:33'),
(11, 'sun', 'sun', '2020-11-26 13:47:35'),
(11, 'sun', 'sun', '2020-11-26 13:47:37'),
(11, 'sun', 'sun', '2020-11-26 13:47:40'),
(11, 'sun', 'sun', '2020-11-26 13:49:18'),
(11, 'sun', 'sun', '2020-11-26 13:49:36'),
(11, 'sun', 'sun', '2020-11-26 13:49:38'),
(11, 'sun', 'sun', '2020-11-26 13:49:42'),
(11, 'sun', 'sun', '2020-11-26 13:50:27'),
(11, 'sun', 'sun', '2020-11-26 13:50:31'),
(11, 'sun', 'sun', '2020-11-26 13:50:33'),
(11, 'sun', 'sun', '2020-11-26 13:50:35'),
(11, 'sun', 'sun', '2020-11-26 13:51:21'),
(11, 'sun', 'sun', '2020-11-26 13:51:36'),
(11, 'sun', 'sun', '2020-11-26 13:51:38'),
(11, 'sun', 'sun', '2020-11-26 13:52:03'),
(11, 'sun', 'sun', '2020-11-26 13:52:04'),
(11, 'sun', 'sun', '2020-11-26 13:52:26'),
(11, 'sun', 'sun', '2020-11-26 13:52:30'),
(11, 'sun', 'sun', '2020-11-26 13:54:16'),
(11, 'sun', 'sun', '2020-11-26 13:54:52'),
(11, 'sun', 'sun', '2020-11-26 13:55:16'),
(11, 'sun', 'sun', '2020-11-26 13:55:19'),
(11, 'sun', 'sun', '2020-11-26 13:55:27'),
(11, 'sun', 'sun', '2020-11-26 13:55:29'),
(11, 'sun', 'sun', '2020-11-26 13:56:18'),
(11, 'sun', 'sun', '2020-11-26 13:56:20'),
(11, 'sun', 'sun', '2020-11-26 13:56:39'),
(11, 'sun', 'sun', '2020-11-26 13:56:40'),
(10, 'sun', 'jack', '2020-11-26 13:57:07'),
(10, 'sun', 'jack', '2020-11-26 13:57:10'),
(10, 'sun', 'jack', '2020-11-26 13:57:12'),
(11, 'sun', 'sun', '2020-11-26 14:00:15'),
(11, 'sun', 'sun', '2020-11-26 14:00:17'),
(10, 'sun', 'jack', '2020-11-26 14:00:25'),
(10, 'sun', 'jack', '2020-11-26 14:00:28'),
(10, 'sun', 'jack', '2020-11-26 14:00:37'),
(10, 'sun', 'jack', '2020-11-26 14:00:41'),
(4, 'sun', 'sam', '2020-11-26 14:01:53'),
(4, 'sun', 'sam', '2020-11-26 14:01:54'),
(4, 'sun', 'sam', '2020-11-26 14:02:00'),
(4, 'sun', 'sam', '2020-11-26 14:02:03'),
(4, 'sun', 'sam', '2020-11-26 14:02:30'),
(4, 'sun', 'sam', '2020-11-26 14:02:31'),
(4, 'sun', 'sam', '2020-11-26 14:02:33'),
(3, 'sun', 'sam', '2020-11-26 14:03:39'),
(3, 'sun', 'sam', '2020-11-26 14:03:41'),
(5, 'sun', 'bun', '2020-11-26 14:03:48'),
(5, 'sun', 'bun', '2020-11-26 14:03:49'),
(5, 'sun', 'bun', '2020-11-26 14:03:51'),
(3, 'sun', 'sam', '2020-11-26 14:04:36'),
(3, 'sun', 'sam', '2020-11-26 14:04:38'),
(10, 'sun', 'jack', '2020-11-26 14:32:44'),
(10, 'sun', 'jack', '2020-11-26 14:33:11'),
(10, 'sun', 'jack', '2020-11-26 15:52:30'),
(10, 'sun', 'jack', '2020-11-27 16:27:49'),
(10, 'sun', 'jack', '2020-11-27 16:27:51'),
(8, 'sun', 'sun', '2020-11-27 16:28:21'),
(8, 'sun', 'sun', '2020-11-27 16:28:23'),
(8, 'sun', 'sun', '2020-11-27 16:28:29'),
(8, 'sun', 'sun', '2020-11-27 16:28:33'),
(8, 'sun', 'sun', '2020-11-27 16:28:33'),
(11, 'sun', 'sun', '2020-11-27 16:30:43'),
(8, 'sun', 'sun', '2020-11-28 15:08:53'),
(8, 'sun', 'sun', '2020-11-28 15:08:54'),
(8, 'sun', 'sun', '2020-11-28 15:08:58'),
(8, 'sun', 'sun', '2020-11-28 15:09:00'),
(8, 'sun', 'sun', '2020-11-28 15:11:33'),
(8, 'sun', 'sun', '2020-11-28 15:12:50'),
(8, 'sun', 'sun', '2020-11-28 15:13:19'),
(8, 'sun', 'sun', '2020-11-28 15:13:42'),
(11, 'sun', 'sun', '2020-11-28 15:13:50'),
(8, 'sun', 'sun', '2020-11-28 15:14:53'),
(8, 'sun', 'sun', '2020-11-28 15:14:58'),
(8, 'sun', 'sun', '2020-11-28 15:15:20'),
(8, 'sun', 'sun', '2020-11-28 15:15:24'),
(11, 'sun', 'sun', '2020-11-28 15:15:30'),
(8, 'sun', 'sun', '2020-11-28 15:15:39'),
(8, 'sun', 'sun', '2020-11-28 15:17:16'),
(11, 'sun', 'sun', '2020-11-28 15:17:23'),
(8, 'sun', 'sun', '2020-11-28 15:17:53'),
(8, 'sun', 'sun', '2020-11-28 15:32:54'),
(11, 'sun', 'sun', '2020-11-28 15:32:59'),
(8, 'sun', 'sun', '2020-11-28 15:33:04'),
(8, 'sun', 'sun', '2020-11-28 15:34:21'),
(11, 'sun', 'sun', '2020-11-28 15:34:38'),
(10, 'sun', 'jack', '2020-11-28 15:43:38'),
(10, 'sun', 'jack', '2020-11-28 15:44:17'),
(10, 'sun', 'jack', '2020-11-28 16:23:34'),
(10, 'sun', 'jack', '2020-11-28 18:10:43'),
(11, 'sun', 'sun', '2020-11-28 18:17:28'),
(10, 'sun', 'jack', '2020-11-28 18:17:32'),
(10, 'sun', 'jack', '2020-11-28 18:21:13'),
(10, 'sun', 'jack', '2020-11-28 18:21:14'),
(10, 'sun', 'jack', '2020-11-28 19:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `type` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `originator` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`type`, `username`, `originator`, `id`, `post_id`, `status`, `time`) VALUES
(0, 'sun', 'sun', 2, 10, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'sun', 4, 5, 1, '2020-11-26 11:29:34'),
(1, 'bun', 'sun', 7, 5, 1, '2020-11-26 11:29:34'),
(1, 'bun', 'sun', 8, 5, 1, '2020-11-26 11:29:34'),
(1, 'sun', 'bun', 9, 11, 1, '2020-11-26 11:29:34'),
(1, 'jack', 'bun', 10, 10, 1, '2020-11-26 11:29:34'),
(1, 'sun', 'bun', 11, 8, 1, '2020-11-26 11:29:34'),
(1, 'bun', 'bun', 12, 5, 1, '2020-11-26 11:29:34'),
(1, 'sam', 'bun', 13, 4, 1, '2020-11-26 11:29:34'),
(1, 'sam', 'bun', 14, 3, 1, '2020-11-26 11:29:34'),
(0, 'bun', 'bun', 15, 11, 1, '2020-11-26 11:29:34'),
(0, 'bun', 'bun', 16, 11, 1, '2020-11-26 11:29:34'),
(0, 'Array', 'bun', 17, 11, 1, '2020-11-26 11:29:34'),
(0, 'Array', 'bun', 18, 11, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'bun', 20, 11, 1, '2020-11-26 11:29:34'),
(0, 'jack', 'bun', 21, 10, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'bun', 22, 8, 1, '2020-11-26 11:29:34'),
(0, 'bun', 'bun', 23, 5, 1, '2020-11-26 11:29:34'),
(0, 'sam', 'bun', 24, 4, 1, '2020-11-26 11:29:34'),
(0, 'bun', 'bun', 25, 5, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'bun', 26, 8, 1, '2020-11-26 11:29:34'),
(1, 'sun', 'jack', 27, 11, 1, '2020-11-26 11:29:34'),
(1, 'bun', 'jack', 28, 5, 1, '2020-11-26 11:29:34'),
(1, 'sam', 'jack', 29, 4, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'jack', 30, 11, 1, '2020-11-26 11:29:34'),
(1, 'sam', 'jack', 31, 4, 1, '2020-11-26 11:29:34'),
(0, 'sun', 'sun', 32, 11, 1, '2020-11-26 13:07:25'),
(0, 'sun', 'sun', 33, 11, 1, '2020-11-26 13:07:27'),
(1, 'sun', 'sun', 34, 11, 1, '2020-11-26 13:07:41'),
(0, 'sun', 'sun', 35, 11, 1, '2020-11-26 13:07:58'),
(0, 'sun', 'sun', 36, 11, 1, '2020-11-26 13:38:08'),
(0, 'sun', 'sun', 37, 11, 1, '2020-11-26 13:47:28'),
(0, 'sun', 'sun', 38, 11, 1, '2020-11-26 13:47:32'),
(0, 'sun', 'sun', 39, 11, 1, '2020-11-26 13:47:34'),
(0, 'sun', 'sun', 40, 11, 1, '2020-11-26 13:47:35'),
(0, 'sun', 'sun', 41, 11, 1, '2020-11-26 13:47:37'),
(0, 'sun', 'sun', 42, 11, 1, '2020-11-26 13:47:40'),
(0, 'sun', 'sun', 43, 11, 1, '2020-11-26 13:49:18'),
(0, 'sun', 'sun', 44, 11, 1, '2020-11-26 13:49:36'),
(0, 'sun', 'sun', 45, 11, 1, '2020-11-26 13:49:38'),
(0, 'sun', 'sun', 46, 11, 1, '2020-11-26 13:49:42'),
(0, 'sun', 'sun', 47, 11, 1, '2020-11-26 13:50:27'),
(0, 'sun', 'sun', 48, 11, 1, '2020-11-26 13:50:31'),
(0, 'sun', 'sun', 49, 11, 1, '2020-11-26 13:50:33'),
(0, 'sun', 'sun', 50, 11, 1, '2020-11-26 13:50:35'),
(0, 'sun', 'sun', 51, 11, 1, '2020-11-26 13:51:21'),
(0, 'sun', 'sun', 52, 11, 1, '2020-11-26 13:51:36'),
(0, 'sun', 'sun', 53, 11, 1, '2020-11-26 13:51:38'),
(0, 'sun', 'sun', 54, 11, 1, '2020-11-26 13:52:03'),
(0, 'sun', 'sun', 55, 11, 1, '2020-11-26 13:52:05'),
(0, 'sun', 'sun', 56, 11, 1, '2020-11-26 13:52:26'),
(0, 'sun', 'sun', 57, 11, 1, '2020-11-26 13:52:30'),
(0, 'sun', 'sun', 58, 11, 1, '2020-11-26 13:54:16'),
(0, 'sun', 'sun', 59, 11, 1, '2020-11-26 13:54:52'),
(0, 'sun', 'sun', 60, 11, 1, '2020-11-26 13:55:16'),
(0, 'sun', 'sun', 61, 11, 1, '2020-11-26 13:55:19'),
(0, 'sun', 'sun', 62, 11, 1, '2020-11-26 13:55:27'),
(0, 'sun', 'sun', 63, 11, 1, '2020-11-26 13:55:29'),
(0, 'sun', 'sun', 64, 11, 1, '2020-11-26 13:56:18'),
(0, 'sun', 'sun', 65, 11, 1, '2020-11-26 13:56:20'),
(0, 'sun', 'sun', 66, 11, 1, '2020-11-26 13:56:39'),
(0, 'sun', 'sun', 67, 11, 1, '2020-11-26 13:56:40'),
(0, 'jack', 'sun', 68, 10, 1, '2020-11-26 13:57:07'),
(0, 'jack', 'sun', 69, 10, 1, '2020-11-26 13:57:10'),
(0, 'jack', 'sun', 70, 10, 1, '2020-11-26 13:57:12'),
(0, 'sun', 'sun', 71, 11, 1, '2020-11-26 14:00:15'),
(0, 'sun', 'sun', 72, 11, 1, '2020-11-26 14:00:17'),
(0, 'jack', 'sun', 73, 10, 1, '2020-11-26 14:00:25'),
(0, 'jack', 'sun', 74, 10, 1, '2020-11-26 14:00:28'),
(0, 'jack', 'sun', 75, 10, 1, '2020-11-26 14:00:37'),
(0, 'jack', 'sun', 76, 10, 1, '2020-11-26 14:00:41'),
(0, 'sam', 'sun', 77, 4, 1, '2020-11-26 14:01:53'),
(0, 'sam', 'sun', 78, 4, 1, '2020-11-26 14:01:55'),
(0, 'sam', 'sun', 79, 4, 1, '2020-11-26 14:02:00'),
(0, 'sam', 'sun', 80, 4, 1, '2020-11-26 14:02:03'),
(0, 'sam', 'sun', 81, 4, 1, '2020-11-26 14:02:30'),
(0, 'sam', 'sun', 82, 4, 1, '2020-11-26 14:02:31'),
(0, 'sam', 'sun', 83, 4, 1, '2020-11-26 14:02:33'),
(0, 'sam', 'sun', 84, 3, 1, '2020-11-26 14:03:39'),
(0, 'sam', 'sun', 85, 3, 1, '2020-11-26 14:03:41'),
(0, 'bun', 'sun', 86, 5, 1, '2020-11-26 14:03:48'),
(0, 'bun', 'sun', 87, 5, 1, '2020-11-26 14:03:49'),
(0, 'bun', 'sun', 88, 5, 1, '2020-11-26 14:03:51'),
(0, 'sam', 'sun', 89, 3, 1, '2020-11-26 14:04:36'),
(0, 'sam', 'sun', 90, 3, 1, '2020-11-26 14:04:38'),
(0, 'jack', 'sun', 91, 10, 1, '2020-11-26 14:32:44'),
(0, 'jack', 'sun', 92, 10, 1, '2020-11-26 14:33:11'),
(0, 'jack', 'sun', 93, 10, 1, '2020-11-26 15:52:30'),
(0, 'jack', 'sun', 94, 10, 1, '2020-11-27 16:27:49'),
(0, 'jack', 'sun', 95, 10, 1, '2020-11-27 16:27:51'),
(0, 'sun', 'sun', 96, 8, 1, '2020-11-27 16:28:21'),
(0, 'sun', 'sun', 97, 8, 1, '2020-11-27 16:28:23'),
(0, 'sun', 'sun', 98, 8, 1, '2020-11-27 16:28:29'),
(0, 'sun', 'sun', 99, 8, 1, '2020-11-27 16:28:33'),
(0, 'sun', 'sun', 100, 8, 1, '2020-11-27 16:28:33'),
(0, 'sun', 'sun', 101, 11, 1, '2020-11-27 16:30:43'),
(0, 'sun', 'sun', 102, 8, 1, '2020-11-28 15:08:53'),
(0, 'sun', 'sun', 103, 8, 1, '2020-11-28 15:08:54'),
(0, 'sun', 'sun', 104, 8, 1, '2020-11-28 15:08:58'),
(0, 'sun', 'sun', 105, 8, 1, '2020-11-28 15:09:00'),
(0, 'sun', 'sun', 106, 8, 1, '2020-11-28 15:11:33'),
(0, 'sun', 'sun', 107, 8, 1, '2020-11-28 15:12:51'),
(0, 'sun', 'sun', 108, 8, 1, '2020-11-28 15:13:19'),
(0, 'sun', 'sun', 109, 8, 1, '2020-11-28 15:13:42'),
(0, 'sun', 'sun', 110, 11, 1, '2020-11-28 15:13:50'),
(0, 'sun', 'sun', 111, 8, 1, '2020-11-28 15:14:53'),
(0, 'sun', 'sun', 112, 8, 1, '2020-11-28 15:14:58'),
(0, 'sun', 'sun', 113, 8, 1, '2020-11-28 15:15:21'),
(0, 'sun', 'sun', 114, 8, 1, '2020-11-28 15:15:24'),
(0, 'sun', 'sun', 115, 11, 1, '2020-11-28 15:15:30'),
(0, 'sun', 'sun', 116, 8, 1, '2020-11-28 15:15:39'),
(0, 'sun', 'sun', 117, 8, 1, '2020-11-28 15:17:17'),
(0, 'sun', 'sun', 118, 11, 1, '2020-11-28 15:17:23'),
(0, 'sun', 'sun', 119, 8, 1, '2020-11-28 15:17:53'),
(0, 'sun', 'sun', 120, 8, 1, '2020-11-28 15:32:54'),
(0, 'sun', 'sun', 121, 11, 1, '2020-11-28 15:32:59'),
(0, 'sun', 'sun', 122, 8, 1, '2020-11-28 15:33:04'),
(0, 'sun', 'sun', 123, 8, 1, '2020-11-28 15:34:21'),
(0, 'sun', 'sun', 124, 11, 1, '2020-11-28 15:34:38'),
(0, 'jack', 'sun', 125, 10, 1, '2020-11-28 15:43:38'),
(0, 'jack', 'sun', 126, 10, 1, '2020-11-28 15:44:17'),
(0, 'jack', 'sun', 127, 10, 1, '2020-11-28 16:23:35'),
(0, 'jack', 'sun', 128, 10, 1, '2020-11-28 18:10:43'),
(0, 'sun', 'sun', 129, 11, 1, '2020-11-28 18:17:28'),
(0, 'jack', 'sun', 130, 10, 1, '2020-11-28 18:17:32'),
(0, 'jack', 'sun', 131, 10, 1, '2020-11-28 18:21:13'),
(0, 'jack', 'sun', 132, 10, 1, '2020-11-28 18:21:14'),
(1, 'sun', 'sun', 133, 11, 1, '2020-11-28 18:39:02'),
(1, 'sun', 'sun', 134, 11, 1, '2020-11-28 18:46:48'),
(1, 'sun', 'sun', 135, 11, 1, '2020-11-28 18:47:17'),
(1, 'sun', 'sun', 136, 11, 1, '2020-11-28 18:47:25'),
(1, 'sun', 'sun', 137, 11, 1, '2020-11-28 18:50:35'),
(1, 'sun', 'sun', 138, 11, 1, '2020-11-28 18:51:34'),
(1, 'sun', 'sun', 139, 11, 1, '2020-11-28 18:52:31'),
(1, 'sun', 'sun', 140, 11, 1, '2020-11-28 18:54:06'),
(1, 'sun', 'sun', 141, 11, 1, '2020-11-28 18:54:12'),
(1, 'sun', 'sun', 142, 11, 1, '2020-11-28 18:54:43'),
(1, 'sun', 'sun', 143, 11, 1, '2020-11-28 18:54:50'),
(1, 'sun', 'sun', 144, 11, 1, '2020-11-28 18:55:28'),
(1, 'sun', 'sun', 145, 11, 1, '2020-11-28 19:01:06'),
(1, 'sun', 'sun', 146, 11, 1, '2020-11-28 19:01:11'),
(1, 'sun', 'sun', 147, 11, 1, '2020-11-28 19:01:47'),
(1, 'sun', 'sun', 148, 11, 1, '2020-11-28 19:04:31'),
(1, 'sun', 'sun', 149, 11, 1, '2020-11-28 19:04:39'),
(1, 'sun', 'sun', 150, 11, 1, '2020-11-28 19:05:11'),
(1, 'sun', 'sun', 151, 11, 1, '2020-11-28 19:07:45'),
(1, 'sun', 'sun', 152, 11, 1, '2020-11-28 19:09:39'),
(0, 'jack', 'sun', 153, 10, 1, '2020-11-28 19:36:29'),
(1, 'jack', 'sun', 154, 10, 1, '2020-11-28 20:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `image`, `text`, `time`, `likes`, `username`) VALUES
(3, 'alexander-popov-3InMDrsuYrk-unsplash.jpg', 'ssup', '2020-10-05 21:11:54', 2, 'sam'),
(4, 'dong-cheng-rLT8w_yYTZs-unsplash.jpg', 'wow', '2020-10-05 21:35:36', 1, 'sam'),
(5, 'erik-mclean-gbfqWoaTmdg-unsplash.jpg', 'hi im bun', '2020-10-05 21:46:49', 4, 'bun'),
(8, 'alexander-popov-9vDdkxSCAD4-unsplash.jpg', 'check 123', '2020-10-07 18:57:55', 3, 'sun'),
(10, 'karla-rivera-yFBdywTfwaQ-unsplash.jpg', 'yayy', '2020-10-09 12:56:23', 1, 'jack'),
(11, 'z.jpg', 'hello', '2020-11-04 18:42:52', 2, 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `roommate`
--

CREATE TABLE `roommate` (
  `username` varchar(255) NOT NULL,
  `accomodate` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `roomate` varchar(255) NOT NULL,
  `alarm` varchar(255) NOT NULL,
  `bedtime` varchar(255) NOT NULL,
  `tidiness` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `guests` varchar(255) NOT NULL,
  `weekends` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roommate`
--

INSERT INTO `roommate` (`username`, `accomodate`, `gender`, `roomate`, `alarm`, `bedtime`, `tidiness`, `noise`, `guests`, `weekends`, `relationship`, `status`) VALUES
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'Around midnight', 'I put most things away', 'Nothing', 'Usually fine; but inform first', 'Watch Netflix', 'I\'d like us to be friends', 1),
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'Around midnight', 'I put most things away', 'Nothing', 'Usually fine; but inform first', 'Watch Netflix', 'I\'d like us to be friends', 1),
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'Around midnight', 'I put most things away', 'Nothing', 'Usually fine; but inform first', 'Watch Netflix', 'I\'d like us to be friends', 1),
('sun', '', '', '', 'Before 8am', 'Before 10pm', 'Tidy AF', 'Anything', 'Usually fine; but inform first', 'Watch Netflix', 'Best Friends Forever!', 1),
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'After 2am', 'Where\'s the floor?', 'Anything', 'Usually fine; but inform first', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'After 2am', 'Where\'s the floor?', 'Anything', 'Usually fine; but inform first', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'On-campus', 'male', 'female', 'Before 8am', 'After 2am', 'Where\'s the floor?', 'Anything', 'Usually fine; but inform first', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'male', 'other', 'Around 10am', 'Before 10pm', 'Tidy AF', 'Some things', 'I\'d prefer no guests', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'male', 'other', 'Around 10am', 'Before 10pm', 'Tidy AF', 'Some things', 'I\'d prefer no guests', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'male', 'other', 'Around 10am', 'Before 10pm', 'Tidy AF', 'Some things', 'I\'d prefer no guests', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'male', 'other', 'Around 10am', 'Before 10pm', 'Tidy AF', 'Some things', 'I\'d prefer no guests', 'Go to a lit party', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', 'Off-campus', 'female', 'female', 'Around 10am', 'Around midnight', 'I put most things away', 'Anything', 'Usually fine; but inform first', 'Hangout with friends', 'Best Friends Forever!', 1),
('jack', '', '', '', '', '', 'I put most things away', '', '', '', '', 1),
('jack', '', '', '', '', '', 'I put most things away', '', '', '', '', 1),
('jack', 'Off-campus', 'female', 'male', 'Before 8am', 'Before 10pm', 'Where\'s the floor?', 'Some things', 'I\'d prefer no guests', 'Watch Netflix', 'Respectful but separate', 1),
('sun', 'On-campus', 'female', 'female', 'Before 8am', 'Before 10pm', 'I put most things away', 'Nothing', 'I\'d prefer no guests', 'Hangout with friends', 'Best Friends Forever!', 1),
('sun', 'On-campus', 'female', 'female', 'Before 8am', 'Before 10pm', 'I put most things away', 'Nothing', 'I\'d prefer no guests', 'Hangout with friends', 'Best Friends Forever!', 1),
('sun', 'On-campus', 'male', 'female', '', '', 'Tidy AF', '', 'I\'d prefer no guests', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'other', 'other', 'After 12pm', 'After 2am', 'Where\'s the floor?', 'Nothing', 'The more the merrier!', 'Go to a lit party', 'Best Friends Forever!', 1),
('sun', 'Off-campus', 'other', 'other', 'After 12pm', 'After 2am', 'Where\'s the floor?', 'Nothing', 'The more the merrier!', 'Go to a lit party', 'Best Friends Forever!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sportschat`
--

CREATE TABLE `sportschat` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sportschat`
--

INSERT INTO `sportschat` (`id`, `username`, `message`, `time`) VALUES
(1, 'bun', 'hi?', '2020-09-23 20:57:22'),
(2, 'bun', 'hi?', '2020-09-23 20:58:27'),
(3, 'bun', 'hi?', '2020-09-23 20:58:54'),
(4, 'sam', 'hello', '2020-09-23 21:15:40'),
(5, 'sun', 'sun here', '2020-09-26 12:47:34'),
(6, 'zendaya', 'oh hi\r\n', '2020-10-09 12:12:32'),
(7, 'sun', 'how r u??', '2020-11-10 14:50:35'),
(8, 'sun', 'how r u??', '2020-11-10 14:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `sportsclub`
--

CREATE TABLE `sportsclub` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sportsclub`
--

INSERT INTO `sportsclub` (`id`, `username`) VALUES
(2, 'bun'),
(3, 'sam'),
(5, 'sun'),
(6, 'zendaya');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `gender` char(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pfp` varchar(200) NOT NULL,
  `college` varchar(400) NOT NULL,
  `country` varchar(200) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `hob1` varchar(200) NOT NULL,
  `hob2` varchar(200) NOT NULL,
  `hob3` varchar(200) NOT NULL,
  `post_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `phone`, `gender`, `password`, `pfp`, `college`, `country`, `bio`, `hob1`, `hob2`, `hob3`, `post_count`) VALUES
(3, 'bun', 'bun', 'bun@gmail.com', 2147483647, 'm', '93aced76e8e70b113e0162fbe96788a6', '../profile-pics/hm.jpg', 'MIT', 'USA', '', '', '', '', 0),
(5, 'jack', 'jack', 'jack@email.com', 1234554321, 'm', '4ff9fc6e4e5d5f590c4f2134a8cc96d1', '../profile-pics/tom.jpg', '', '', '', '', '', '', 0),
(7, 'jay', 'jay', 'jay@gmail.com', 1234567888, 'm', 'baba327d241746ee0829e7e88117d4d5', '../profile-pics/pfp.png', 'MIT', 'USA', 'hello', '', '', '', 0),
(2, 'sam', 'sam', 'sam@gmail.com', 1234567890, 'f', '332532dcfaa1cbf61e2a266bd723612c', '../profile-pics/1Ye0m.png', '', '', '', '', '', '', 0),
(4, 'sun', 'sun', 'sun@email.com', 1234666666, 'm', 'ebd556e6dfc99dbed29675ce1c6c68e5', '../profile-pics/sun.jpg', 'MIT', 'USA', 'hello', 'Acting', 'Dancing', 'Singing', 1),
(6, 'zendaya', 'zendaya', 'zend@gmail.com', 1222222222, 'f', '8f3a01e2e3b200aaf980d8ea6abd2ae6', '../profile-pics/pfp.png', 'HT', 'US', 'hello', 'Acting', 'Dancing', 'Singing', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artclub`
--
ALTER TABLE `artclub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arts_chat`
--
ALTER TABLE `arts_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `genchat`
--
ALTER TABLE `genchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sportschat`
--
ALTER TABLE `sportschat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sportsclub`
--
ALTER TABLE `sportsclub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artclub`
--
ALTER TABLE `artclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arts_chat`
--
ALTER TABLE `arts_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `genchat`
--
ALTER TABLE `genchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sportschat`
--
ALTER TABLE `sportschat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sportsclub`
--
ALTER TABLE `sportsclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
