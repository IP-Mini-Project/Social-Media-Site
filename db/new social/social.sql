-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 09:39 AM
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
(15, 'whos this?\r\nwhos this', 'sam', '2020-09-23 07:24:58'),
(16, 'im bun', 'bun', '2020-09-23 07:26:12'),
(17, 'im bun', 'bun', '2020-09-23 07:28:51'),
(18, 'so', 'bun', '2020-09-23 07:31:23'),
(19, 'so', 'bun', '2020-09-23 07:35:25');

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
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `phone`, `gender`, `password`) VALUES
(1, 'ashwati', 'Ashwati Rao', 'ashwatisrao@gmail.com', 2147483647, 'f', '2852f697a9f8581725c6fc6a5472a2e5'),
(2, 'sam', 'sam', 'sam@gmail.com', 1234567890, 'f', '332532dcfaa1cbf61e2a266bd723612c'),
(3, 'bun', 'bun', 'bun@gmail.com', 2147483647, 'm', '93aced76e8e70b113e0162fbe96788a6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genchat`
--
ALTER TABLE `genchat`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
