-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 05:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbscheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement`
--

CREATE TABLE `tblannouncement` (
  `id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `announcement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblannouncement`
--

INSERT INTO `tblannouncement` (`id`, `title`, `announcement`) VALUES
(3, 'hahahah', 'ahahaha'),
(4, 'test', 'talkdsakwndsa'),
(5, 'EWRRT', 'RETERTTE');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cellnum` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`id`, `name`, `cellnum`, `address`, `email`, `date`, `timeslot`) VALUES
(5, 'Kei', '9824598435', 'concepcion', 'vmaverick22@gmail.com', '2023-10-19', '9am-10am'),
(6, 'Test', '869978988', '809 Phase 3 Villa Macaria Subd. Brgy. Masalukot I', 'xkei5150@gmail.com', '2023-10-18', '9am-10am');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement`
--

CREATE TABLE `tblrequirement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `requirement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrequirement`
--

INSERT INTO `tblrequirement` (`id`, `title`, `requirement`) VALUES
(19, 'teasda', 'testting'),
(20, 'teasda', 'teads'),
(21, 'test', 'aeads'),
(22, 'test', 'try'),
(23, 'test', 'teasd'),
(24, 'test3', 'teasd'),
(25, 'test3', 'teads');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `slots` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `date`, `timeslot`, `slots`) VALUES
(19, '2023-10-20', '8am-9am', 10),
(20, '2023-10-20', '9am-10am', 10),
(21, '2023-10-20', '10am-11am', 10),
(22, '2023-10-20', '11am-12pm', 10),
(23, '2023-10-20', '1pm-2pm', 10),
(24, '2023-10-20', '2pm-3pm', 10),
(25, '2023-10-23', '8am-9am', 10),
(26, '2023-10-23', '9am-10am', 10),
(27, '2023-10-23', '10am-11am', 10),
(28, '2023-10-23', '11am-12pm', 10),
(29, '2023-10-23', '1pm-2pm', 10),
(30, '2023-10-23', '2pm-3pm', 10),
(31, '2023-10-24', '8am-9am', 10),
(32, '2023-10-24', '9am-10am', 10),
(33, '2023-10-24', '10am-11am', 10),
(34, '2023-10-24', '11am-12pm', 10),
(35, '2023-10-24', '1pm-2pm', 10),
(36, '2023-10-24', '2pm-3pm', 10),
(37, '2023-10-25', '8am-9am', 10),
(38, '2023-10-25', '9am-10am', 10),
(39, '2023-10-25', '10am-11am', 10),
(40, '2023-10-25', '11am-12pm', 10),
(41, '2023-10-25', '1pm-2pm', 10),
(42, '2023-10-25', '2pm-3pm', 10),
(43, '2023-10-26', '8am-9am', 10),
(44, '2023-10-26', '9am-10am', 10),
(45, '2023-10-26', '10am-11am', 10),
(46, '2023-10-26', '11am-12pm', 10),
(47, '2023-10-26', '1pm-2pm', 10),
(48, '2023-10-26', '2pm-3pm', 10),
(49, '2023-10-27', '8am-9am', 10),
(50, '2023-10-27', '9am-10am', 10),
(51, '2023-10-27', '10am-11am', 10),
(52, '2023-10-27', '11am-12pm', 10),
(53, '2023-10-27', '1pm-2pm', 10),
(54, '2023-10-27', '2pm-3pm', 10),
(55, '2023-10-30', '8am-9am', 10),
(56, '2023-10-30', '9am-10am', 10),
(57, '2023-10-30', '10am-11am', 10),
(58, '2023-10-30', '11am-12pm', 10),
(59, '2023-10-30', '1pm-2pm', 10),
(60, '2023-10-30', '2pm-3pm', 10),
(61, '2023-10-31', '8am-9am', 10),
(62, '2023-10-31', '9am-10am', 10),
(63, '2023-10-31', '10am-11am', 10),
(64, '2023-10-31', '11am-12pm', 10),
(65, '2023-10-31', '1pm-2pm', 10),
(66, '2023-10-31', '2pm-3pm', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`,`timeslot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
