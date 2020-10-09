-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 07:38 PM
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
(38, 'hi', 'sun', '2020-09-26 07:00:17');

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
(3, 'alexander-popov-3InMDrsuYrk-unsplash.jpg', 'ssup', '2020-10-05 21:11:54', 4, 'sam'),
(4, 'dong-cheng-rLT8w_yYTZs-unsplash.jpg', 'wow', '2020-10-05 21:35:36', 0, 'sam'),
(5, 'erik-mclean-gbfqWoaTmdg-unsplash.jpg', 'hi im bun', '2020-10-05 21:46:49', 0, 'bun'),
(8, 'alexander-popov-9vDdkxSCAD4-unsplash.jpg', 'check 123', '2020-10-07 18:57:55', 0, 'sun');

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
(5, 'sun', 'sun here', '2020-09-26 12:47:34');

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
(5, 'sun');

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
  `pfp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `phone`, `gender`, `password`, `pfp`) VALUES
(1, 'ashwati', 'Ashwati Rao', 'ashwatisrao@gmail.com', 2147483647, 'f', '2852f697a9f8581725c6fc6a5472a2e5', '../profile-pics/pfp.png'),
(2, 'sam', 'sam', 'sam@gmail.com', 1234567890, 'f', '332532dcfaa1cbf61e2a266bd723612c', ''),
(3, 'bun', 'bun', 'bun@gmail.com', 2147483647, 'm', '93aced76e8e70b113e0162fbe96788a6', ''),
(4, 'sun', 'sun', 'sun@email.com', 1234666666, 'm', 'ebd556e6dfc99dbed29675ce1c6c68e5', ''),
(5, 'jack', 'jack', 'jack@email.com', 1234554321, 'm', '4ff9fc6e4e5d5f590c4f2134a8cc96d1', '../profile-pics/pfp.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genchat`
--
ALTER TABLE `genchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genchat`
--
ALTER TABLE `genchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sportschat`
--
ALTER TABLE `sportschat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sportsclub`
--
ALTER TABLE `sportsclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;