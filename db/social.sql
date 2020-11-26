-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 08:47 AM
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
(1, 11, '', 'hey there sun', 'sun', '2020-11-24 13:06:42'),
(2, 10, '', 'hey jack', 'sun', '2020-11-24 13:06:59'),
(15, 5, 'bun', 'hi bun im sun', 'sun', '2020-11-26 07:38:23');

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
(4, 'sun', '', '2020-11-24 13:48:05'),
(3, 'sun', '', '2020-11-24 13:48:05'),
(5, 'sun', '', '2020-11-24 13:48:05'),
(8, 'sun', '', '2020-11-24 13:48:05'),
(10, 'sun', '', '2020-11-24 13:53:52'),
(0, 'sun', '', '2020-11-26 05:59:30'),
(0, 'sun', '', '2020-11-26 05:59:30'),
(0, 'sun', '', '2020-11-26 05:59:31'),
(0, 'sun', '', '2020-11-26 05:59:32'),
(0, 'sun', '', '2020-11-26 06:08:58'),
(0, 'sun', '', '2020-11-26 06:09:03'),
(11, 'sun', '', '2020-11-26 06:14:25'),
(11, 'sun', '', '2020-11-26 06:14:31'),
(11, 'sun', '', '2020-11-26 06:25:24'),
(10, 'sun', '', '2020-11-26 06:26:12'),
(5, 'sun', '', '2020-11-26 06:28:05'),
(11, 'sun', '', '2020-11-26 06:29:43'),
(10, 'sun', '', '2020-11-26 07:32:57'),
(5, 'sun', '', '2020-11-26 07:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `type` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `originator` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`type`, `username`, `originator`, `id`, `post_id`) VALUES
(1, '', 'sun', 1, 11),
(0, 'sun', 'sun', 2, 10),
(1, '', 'sun', 3, 11),
(0, 'sun', 'sun', 4, 5),
(1, '', 'sun', 5, 11),
(1, '', 'sun', 6, 11),
(1, 'bun', 'sun', 7, 5),
(1, 'bun', 'sun', 8, 5);

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
(3, 'alexander-popov-3InMDrsuYrk-unsplash.jpg', 'ssup', '2020-10-05 21:11:54', 30, 'sam'),
(4, 'dong-cheng-rLT8w_yYTZs-unsplash.jpg', 'wow', '2020-10-05 21:35:36', 32, 'sam'),
(5, 'erik-mclean-gbfqWoaTmdg-unsplash.jpg', 'hi im bun', '2020-10-05 21:46:49', 52, 'bun'),
(8, 'alexander-popov-9vDdkxSCAD4-unsplash.jpg', 'check 123', '2020-10-07 18:57:55', 57, 'sun'),
(10, 'karla-rivera-yFBdywTfwaQ-unsplash.jpg', 'yayy', '2020-10-09 12:56:23', 35, 'jack'),
(11, 'z.jpg', 'hello', '2020-11-04 18:42:52', 50, 'sun');

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
(4, 'sun', 'sun', 'sun@email.com', 1234666666, 'm', 'ebd556e6dfc99dbed29675ce1c6c68e5', '../profile-pics/sun.jpg', 'MIT', 'USA', 'hello', '', '', '', 1),
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
  ADD PRIMARY KEY (`comment_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

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
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `genchat`
--
ALTER TABLE `genchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
