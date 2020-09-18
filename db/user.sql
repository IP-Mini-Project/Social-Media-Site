-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 01:02 PM
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'victim1', 'kamleshredij@rediffmail.com', '123'),
(2, 'hs', 'jgg@gmail.com', '123'),
(4, 'salonii', 'sa829@gmail.com', '159'),
(7, 's', 'S@gh.com', '123'),
(8, 's', 'S@gh.com', '123'),
(9, 's', 'S@gh.com', '123'),
(10, 's', 'S@gh.com', '123'),
(11, 'h', 's@gh.com', '123'),
(12, 's', 'saloni1829@gmail.com', '123'),
(13, 'Mhealth', 'hfr@gmail.com', '202cb962ac59075b964b07152d234b70'),
(14, 'sall', 'ffg@jbhv.com', '202cb962ac59075b964b07152d234b70'),
(15, 'asdf', 'njbb@fgf.com', '202cb962ac59075b964b07152d234b70'),
(16, 'salo', 'cd@hgh.com', '202cb962ac59075b964b07152d234b70'),
(17, 'sss', 'tf@RD.COM', '250cf8b51c773f3f8dc8b4be867a9a02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
