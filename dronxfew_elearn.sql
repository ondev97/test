-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2020 at 06:06 AM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dronxfew_elearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `is_image` tinyint(2) NOT NULL DEFAULT 0,
  `img_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `email`, `is_image`, `img_name`, `password`) VALUES
(3, 'osada', 'osadamanohara100@gmail.com', 0, '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `enroll_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `course_img` tinyint(1) NOT NULL,
  `img_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `course_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `class_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `teacher_id`, `course_name`, `is_enrolled`, `enroll_key`, `course_img`, `img_name`, `description`, `course_type`, `class_type`, `date`) VALUES
(4, 1, 'Sinhala', 1, '123', 0, 'index.jpeg', 'asdasd', 'a/l', 'theory', '2020-07-14 00:00:00'),
(5, 1, 'Sinhala', 0, '', 0, 'index.jpeg', 'sadsadasdsada', 'a/l', 'theory', '2020-07-14 00:00:00'),
(6, 2, 'python', 0, '', 0, 'index.jpeg', '', 'a/l', 'theory', '2020-07-14 00:00:00'),
(7, 2, 'python', 1, 'py_2020', 1, 'index.jpeg', 'this is patta course', 'a/l', 'theory/rev', '2020-07-14 00:00:00'),
(8, 2, 'C for beiginners', 0, '', 0, 'index.jpeg', '', 'a/l', 'theory', '2020-07-14 00:00:00'),
(9, 2, 'C for beiginners', 0, '', 0, 'index.jpeg', '', 'a/l', 'theory', '2020-07-14 00:00:00'),
(10, 2, 'C for beiginners', 0, '', 0, 'index.jpeg', '', 'a/l', 'theory', '2020-07-14 00:00:00'),
(11, 2, 'amdage stories', 0, '', 0, 'index.jpeg', '', 'a/l', 'theory', '2020-07-14 15:40:13'),
(12, 2, 'Painting for life', 0, '', 0, '6.jpg', 'Oil paint for beginners', 'a/l', 'theory', '2020-07-15 13:20:34'),
(14, 3, 'java oop', 1, 'java_101', 0, '', '', 'a/l', 'theory', '2020-07-19 11:15:11'),
(15, 3, 'C for advance users', 0, '', 0, 'WhatsApp Image 2020-08-14 at 08.55.23.jpeg', 'This is a course', 'a/l', 'theory', '2020-08-14 09:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_enroll`
--

CREATE TABLE `course_enroll` (
  `enroll_no` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_enroll`
--

INSERT INTO `course_enroll` (`enroll_no`, `course_id`, `teacher_id`, `student_id`) VALUES
(7, 14, 3, 'st1'),
(8, 14, 3, 'st3'),
(9, 12, 2, 'st6'),
(10, 6, 2, 'st6'),
(11, 15, 3, 'st6');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `chapter` int(100) NOT NULL,
  `is_media` tinyint(1) NOT NULL,
  `media` varchar(1000) DEFAULT NULL,
  `text` varchar(10000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `teacher_id`, `course_id`, `chapter`, `is_media`, `media`, `text`, `date`) VALUES
(37, 1, 11, 1, 1, '11-1-about.html', '', '2020-07-18 22:57:57'),
(38, 1, 11, 1, 1, '11-1-contact.html', '', '2020-07-18 22:57:57'),
(39, 1, 11, 1, 1, '11-1-index.html', '', '2020-07-18 22:57:57'),
(40, 1, 11, 1, 1, '11-1-movies.html', '', '2020-07-18 22:57:57'),
(41, 1, 11, 1, 1, '11-1-signin.html', '', '2020-07-18 22:57:57'),
(42, 1, 11, 1, 1, '11-1-signup.html', '', '2020-07-18 22:57:57'),
(43, 1, 11, 2, 1, '11-2-about.html', '', '2020-07-18 22:58:01'),
(44, 1, 11, 2, 1, '11-2-contact.html', '', '2020-07-18 22:58:01'),
(45, 1, 11, 2, 1, '11-2-index.html', '', '2020-07-18 22:58:01'),
(46, 1, 11, 2, 1, '11-2-movies.html', '', '2020-07-18 22:58:01'),
(47, 1, 11, 2, 1, '11-2-signin.html', '', '2020-07-18 22:58:01'),
(48, 1, 11, 2, 1, '11-2-signup.html', '', '2020-07-18 22:58:01'),
(49, 1, 11, 3, 0, NULL, 'My Name IS OSADA', '2020-07-18 23:11:54'),
(51, 1, 11, 4, 1, '11-4-Need for Speedâ„¢ Payback 2020-01-02 16-36-58.mp4', 'NFS ', '2020-07-18 23:26:47'),
(52, 1, 11, 5, 1, '11-5-desktop black - Copy.jpg', '', '2020-07-18 23:33:12'),
(53, 1, 11, 6, 1, '11-6-desktop black - Copy.jpg', '', '2020-07-18 23:38:39'),
(54, 1, 11, 6, 1, '11-6-desktop black.png', '', '2020-07-18 23:38:39'),
(55, 1, 11, 7, 0, NULL, 'OSada Manohara', '2020-07-19 02:24:09'),
(56, 1, 11, 8, 0, NULL, 'OSada Manohara', '2020-07-19 02:27:25'),
(57, 1, 11, 9, 0, NULL, 'OSada Manohara', '2020-07-19 02:27:36'),
(87, 1, 11, 10, 1, '11-10-cssSvgAnimation.html', '', '2020-07-19 02:41:40'),
(88, 1, 11, 11, 1, '11-11-cssSvgAnimation.html', '', '2020-07-19 02:42:11'),
(89, 1, 11, 12, 1, '11-12-cssSvgAnimation.html', '', '2020-07-19 02:45:41'),
(90, 1, 11, 13, 1, '11-13-cssSvgAnimation.html', '', '2020-07-19 02:46:34'),
(91, 1, 11, 14, 1, '11-14-cssSvgAnimation.html', '', '2020-07-19 02:46:59'),
(92, 1, 11, 15, 1, '11-15-cssSvgAnimation.html', '', '2020-07-19 02:48:05'),
(93, 1, 11, 16, 1, '11-16-cssSvgAnimation.html', '', '2020-07-19 02:48:40'),
(94, 1, 11, 17, 1, '11-17-cssSvgAnimation.html', '', '2020-07-19 02:48:52'),
(95, 1, 11, 18, 1, '11-18-ITT-2016-2017-0012.pdf', '', '2020-07-19 03:10:31'),
(96, 1, 11, 19, 1, '11-19-ITT-2016-2017-0012.pdf', '', '2020-07-19 03:12:42'),
(97, 1, 11, 20, 1, '11-20-ITT-2016-2017-0012.pdf', '', '2020-07-19 03:14:04'),
(98, 1, 11, 21, 1, '11-21-ITT-2016-2017-0012.pdf', '', '2020-07-19 03:14:41'),
(99, 3, 14, 1, 1, '14-1-Tuition Class Management System Project Requirement.pdf', 'This is a pdf', '2020-07-19 11:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` varchar(200) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(90) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `is_image` tinyint(2) NOT NULL DEFAULT 0,
  `img_name` varchar(200) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `freez` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `first_name`, `last_name`, `user_name`, `email`, `phone_number`, `is_image`, `img_name`, `bio`, `password`, `freez`) VALUES
('st1', 'Osada', 'Man', 'ozka', 'osadamanohara55@gmail.com', '0768597090', 0, '', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('st10', 'mano', 'mn', 'mnmn', 'osadamanohara789@gmail.com', '02146532', 0, '', NULL, '123', 0),
('st11', 'mano', 'mn', 'mnmn', 'osadamanohara789@gmail.com', '02146532', 0, '', NULL, '123', 0),
('st3', 'Osada', 'Man', 'admin', 'osadamanohara55@gmail.com', '0768597090', 0, '', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('st4', 'Osada', 'Man', 'admin', 'osadamanohara55@gmail.com', '0768597090', 0, '', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('st5', 'Osada', 'Manohara', 'Osada', 'osadamanohara555@gmail.com', '0768597090', 0, '', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('st6', 'Navanjane', 'Kindelpitiya', 'nava', 'test@test.com', '0552229224', 0, NULL, NULL, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 0),
('st7', 'navanjane', 'Kindelpitiya', 'nava2', 'nava@nava.com', '0552229224', 0, NULL, NULL, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 0),
('st8', 'Sahan', 'Pasindu', 'ThuDu', 'itsthudu@gmail.com', '0000112345678', 0, NULL, NULL, '81fe8bfe87576c3ecb22426f8e57847382917acf', 0),
('st9', 'frank', 'Morgan', 'frank', 'info@lankabeachholidays.com', '0112256487', 0, NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `image_name` varchar(200) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `password` varchar(200) NOT NULL,
  `freez` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `email`, `bio`, `is_image`, `image_name`, `skills`, `phone_number`, `password`, `freez`) VALUES
(1, 'Osada', 'Man', 'osadamanohara57@gmail.com', '', 1, 'WIN_20200117_19_45_58_Pro.jpg', 'html/css/php', '07697090', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
(2, 'Osada', 'Manohara', 'osadamanohara58@gmail.com', '', 1, 'csd.jpg', 'php/sql/java', '0768597090', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
(3, 'Sumudu', 'Sumudu', 'teacher1@test.com', 'This is my Bio', 0, '', 'Java/Html/Django', '0552229224', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `Course to teacher` (`teacher_id`);

--
-- Indexes for table `course_enroll`
--
ALTER TABLE `course_enroll`
  ADD PRIMARY KEY (`enroll_no`),
  ADD KEY `fk_en_tc_id` (`teacher_id`),
  ADD KEY `fk_en_course_id` (`course_id`),
  ADD KEY `fk_en_st_id` (`student_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_tc_id` (`teacher_id`),
  ADD KEY `fk_course_id` (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course_enroll`
--
ALTER TABLE `course_enroll`
  MODIFY `enroll_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
