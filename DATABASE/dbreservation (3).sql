-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 11:26 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbreservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement`
--

CREATE TABLE `tblannouncement` (
  `id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `announcement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `eu_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`id`, `firstname`, `lastname`, `eu_id`, `email`, `phone`, `event`, `purpose`, `date`, `timeslot`, `status`) VALUES
(1, 'cx', 'zxczx', 'xzcxz', 'angelo@gmail.com', '099984938', 'sdfsdf', 'dsfdsfsfds', '2023-11-17', 'Afternoon', 'pending'),
(2, 'sdf', 'dsfsd', 'sdfsd', 'angelo@gmail.com', 'dfsdfsd', 'sdfsd', 'sdfdsf', '2023-11-20', 'Night', 'pending'),
(3, 'dsf', 'df', 'fdsfs', 'dfds', 'fdsfsd', 'dsfsd', 'dsfds', '2023-11-22', 'Whole Day', 'pending'),
(4, 'justine', 'anonuevo', 'a20-0135', 'justineanonuevo2@gmail.com', '09123456789', '', '', '2023-11-10', 'Afternoon', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment1`
--

CREATE TABLE `tblappointment1` (
  `id` int(25) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `eu_id` int(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment1`
--

INSERT INTO `tblappointment1` (`id`, `firstname`, `lastname`, `eu_id`, `email`, `phone`, `event`, `purpose`, `date`, `timeslot`, `status`) VALUES
(1, 'asdfs', 'dsfsd', 0, 'justineanonuevo2@gmail.com', '6797897897', 'dfgdf', 'dfgdfgd', '2023-11-10', 'Whole Day', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment2`
--

CREATE TABLE `tblappointment2` (
  `id` int(25) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `eu_id` int(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment2`
--

INSERT INTO `tblappointment2` (`id`, `firstname`, `lastname`, `eu_id`, `email`, `phone`, `event`, `purpose`, `date`, `timeslot`, `status`) VALUES
(2, 'Justino', 'Anonuevo', 0, 'justineanonuevo2@gmail.com', 2147483647, 'Pogi', 'pogi', '2023-11-17', 'Whole Day', 'approved'),
(3, 'justine', 'anonuevo', 0, 'justineanonuevo69@gmail.com', 2147483647, 'Awit', 'Awit', '2023-11-24', 'Night', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement`
--

CREATE TABLE `tblrequirement` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement`
--

INSERT INTO `tblrequirement` (`id`, `title`, `announcement`) VALUES
(1, 'Simple Reminders', 'Please have your student ID visible at all times.\n\nNo food or drink in the classrooms or computer la');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement1`
--

CREATE TABLE `tblrequirement1` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement1`
--

INSERT INTO `tblrequirement1` (`id`, `title`, `announcement`) VALUES
(1, 'dsfsdf', 'dsfdsf'),
(2, 'sadfs', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement2`
--

CREATE TABLE `tblrequirement2` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement2`
--

INSERT INTO `tblrequirement2` (`id`, `title`, `announcement`) VALUES
(1, 'asdsa', 'asdasdsfdsdsfdsfdsd'),
(2, 'wao', 'waoqweqw'),
(3, 'dsf', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `id` int(3) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `date`, `timeslot`, `availability`) VALUES
(37, '2023-11-09', 'Morning', 0),
(38, '2023-11-09', 'Afternoon', 0),
(39, '2023-11-09', 'Night', 0),
(40, '2023-11-10', 'Morning', 1),
(41, '2023-11-10', 'Afternoon', 0),
(42, '2023-11-10', 'Night', 1),
(43, '2023-11-13', 'Morning', 0),
(44, '2023-11-13', 'Afternoon', 0),
(45, '2023-11-13', 'Night', 0),
(46, '2023-11-14', 'Morning', 0),
(47, '2023-11-14', 'Afternoon', 0),
(48, '2023-11-14', 'Night', 0),
(49, '2023-11-15', 'Morning', 0),
(50, '2023-11-15', 'Afternoon', 0),
(51, '2023-11-15', 'Night', 0),
(52, '2023-11-16', 'Morning', 0),
(53, '2023-11-16', 'Afternoon', 0),
(54, '2023-11-16', 'Night', 0),
(55, '2023-11-17', 'Morning', 0),
(56, '2023-11-17', 'Afternoon', 0),
(57, '2023-11-17', 'Night', 1),
(58, '2023-11-20', 'Morning', 1),
(59, '2023-11-20', 'Afternoon', 0),
(60, '2023-11-20', 'Night', 0),
(61, '2023-11-21', 'Morning', 0),
(62, '2023-11-21', 'Afternoon', 0),
(63, '2023-11-21', 'Night', 1),
(64, '2023-11-22', 'Morning', 0),
(65, '2023-11-22', 'Afternoon', 0),
(66, '2023-11-22', 'Night', 0),
(67, '2023-11-23', 'Morning', 1),
(68, '2023-11-23', 'Afternoon', 0),
(69, '2023-11-23', 'Night', 0),
(70, '2023-11-24', 'Morning', 1),
(71, '2023-11-24', 'Afternoon', 1),
(72, '2023-11-24', 'Night', 1),
(73, '2023-11-27', 'Morning', 0),
(74, '2023-11-27', 'Afternoon', 0),
(75, '2023-11-27', 'Night', 1),
(76, '2023-11-28', 'Morning', 1),
(77, '2023-11-28', 'Afternoon', 1),
(78, '2023-11-28', 'Night', 1),
(79, '2023-11-29', 'Morning', 0),
(80, '2023-11-29', 'Afternoon', 0),
(81, '2023-11-29', 'Night', 0),
(82, '2023-11-30', 'Morning', 0),
(83, '2023-11-30', 'Afternoon', 1),
(84, '2023-11-30', 'Night', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule1`
--

CREATE TABLE `tblschedule1` (
  `id` int(6) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule1`
--

INSERT INTO `tblschedule1` (`id`, `date`, `timeslot`, `availability`) VALUES
(1, '2023-11-09', 'Morning', 1),
(2, '2023-11-09', 'Afternoon', 1),
(3, '2023-11-09', 'Night', 1),
(4, '2023-11-10', 'Morning', 1),
(5, '2023-11-10', 'Afternoon', 1),
(6, '2023-11-10', 'Night', 1),
(7, '2023-11-13', 'Morning', 1),
(8, '2023-11-13', 'Afternoon', 1),
(9, '2023-11-13', 'Night', 1),
(10, '2023-11-14', 'Morning', 1),
(11, '2023-11-14', 'Afternoon', 1),
(12, '2023-11-14', 'Night', 1),
(13, '2023-11-15', 'Morning', 1),
(14, '2023-11-15', 'Afternoon', 0),
(15, '2023-11-15', 'Night', 1),
(16, '2023-11-16', 'Morning', 1),
(17, '2023-11-16', 'Afternoon', 1),
(18, '2023-11-16', 'Night', 1),
(19, '2023-11-17', 'Morning', 1),
(20, '2023-11-17', 'Afternoon', 1),
(21, '2023-11-17', 'Night', 1),
(22, '2023-11-20', 'Morning', 1),
(23, '2023-11-20', 'Afternoon', 1),
(24, '2023-11-20', 'Night', 1),
(25, '2023-11-21', 'Morning', 1),
(26, '2023-11-21', 'Afternoon', 1),
(27, '2023-11-21', 'Night', 1),
(28, '2023-11-22', 'Morning', 1),
(29, '2023-11-22', 'Afternoon', 0),
(30, '2023-11-22', 'Night', 0),
(31, '2023-11-23', 'Morning', 1),
(32, '2023-11-23', 'Afternoon', 0),
(33, '2023-11-23', 'Night', 1),
(34, '2023-11-24', 'Morning', 1),
(35, '2023-11-24', 'Afternoon', 1),
(36, '2023-11-24', 'Night', 1),
(37, '2023-11-27', 'Morning', 1),
(38, '2023-11-27', 'Afternoon', 1),
(39, '2023-11-27', 'Night', 1),
(40, '2023-11-28', 'Morning', 1),
(41, '2023-11-28', 'Afternoon', 1),
(42, '2023-11-28', 'Night', 1),
(43, '2023-11-29', 'Morning', 1),
(44, '2023-11-29', 'Afternoon', 1),
(45, '2023-11-29', 'Night', 1),
(46, '2023-11-30', 'Morning', 1),
(47, '2023-11-30', 'Afternoon', 1),
(48, '2023-11-30', 'Night', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule2`
--

CREATE TABLE `tblschedule2` (
  `id` int(6) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule2`
--

INSERT INTO `tblschedule2` (`id`, `date`, `timeslot`, `availability`) VALUES
(1, '2023-11-09', 'Morning', 0),
(2, '2023-11-09', 'Afternoon', 0),
(3, '2023-11-09', 'Night', 0),
(4, '2023-11-10', 'Morning', 1),
(5, '2023-11-10', 'Afternoon', 1),
(6, '2023-11-10', 'Night', 1),
(7, '2023-11-13', 'Morning', 1),
(8, '2023-11-13', 'Afternoon', 1),
(9, '2023-11-13', 'Night', 1),
(10, '2023-11-14', 'Morning', 1),
(11, '2023-11-14', 'Afternoon', 1),
(12, '2023-11-14', 'Night', 1),
(13, '2023-11-15', 'Morning', 1),
(14, '2023-11-15', 'Afternoon', 1),
(15, '2023-11-15', 'Night', 1),
(16, '2023-11-16', 'Morning', 1),
(17, '2023-11-16', 'Afternoon', 1),
(18, '2023-11-16', 'Night', 1),
(19, '2023-11-17', 'Morning', 1),
(20, '2023-11-17', 'Afternoon', 1),
(21, '2023-11-17', 'Night', 1),
(22, '2023-11-20', 'Morning', 1),
(23, '2023-11-20', 'Afternoon', 1),
(24, '2023-11-20', 'Night', 1),
(25, '2023-11-21', 'Morning', 1),
(26, '2023-11-21', 'Afternoon', 1),
(27, '2023-11-21', 'Night', 1),
(28, '2023-11-22', 'Morning', 1),
(29, '2023-11-22', 'Afternoon', 1),
(30, '2023-11-22', 'Night', 1),
(31, '2023-11-23', 'Morning', 0),
(32, '2023-11-23', 'Afternoon', 0),
(33, '2023-11-23', 'Night', 0),
(34, '2023-11-24', 'Morning', 0),
(35, '2023-11-24', 'Afternoon', 1),
(36, '2023-11-24', 'Night', 0),
(37, '2023-11-27', 'Morning', 1),
(38, '2023-11-27', 'Afternoon', 1),
(39, '2023-11-27', 'Night', 1),
(40, '2023-11-28', 'Morning', 1),
(41, '2023-11-28', 'Afternoon', 1),
(42, '2023-11-28', 'Night', 1),
(43, '2023-11-29', 'Morning', 1),
(44, '2023-11-29', 'Afternoon', 1),
(45, '2023-11-29', 'Night', 1),
(46, '2023-11-30', 'Morning', 1),
(47, '2023-11-30', 'Afternoon', 1),
(48, '2023-11-30', 'Night', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment1`
--
ALTER TABLE `tblappointment1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment2`
--
ALTER TABLE `tblappointment2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequirement1`
--
ALTER TABLE `tblrequirement1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequirement2`
--
ALTER TABLE `tblrequirement2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule1`
--
ALTER TABLE `tblschedule1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule2`
--
ALTER TABLE `tblschedule2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblappointment1`
--
ALTER TABLE `tblappointment1`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment2`
--
ALTER TABLE `tblappointment2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblrequirement1`
--
ALTER TABLE `tblrequirement1`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrequirement2`
--
ALTER TABLE `tblrequirement2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tblschedule1`
--
ALTER TABLE `tblschedule1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblschedule2`
--
ALTER TABLE `tblschedule2`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
