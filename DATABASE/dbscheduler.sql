-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 08:02 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblannouncement`
--

INSERT INTO `tblannouncement` (`id`, `title`, `announcement`) VALUES
(1, 'ACADEMIC SCHOLARSHIP APPLICATION FOR THE FIRST SEMESTER SY 2023-2024', 'Application for academic scholarships for the First Semester of the Academic Year 2023-2024 is NOW OPEN. The Office of the Registrar will be accepting scholarships applications from October 9 to October 13 at 8:00 a.m. - 4:00 p.m. ONLY. Applications for U'),
(8, 'ACADEMIC SCHOLARSHIP APPLICATION FOR THE FIRST SEMESTER SY 2023-2024', 'Application for academic scholarships for the First Semester of the Academic Year 2023-2024 is NOW OPEN. The Office of the Registrar will be accepting scholarships applications from October 9 to October 13 at 8:00 a.m. - 4:00 p.m. ONLY. Applications for U'),
(9, 'ACADEMIC SCHOLARSHIP APPLICATION FOR THE FIRST SEMESTER SY 2023-2024', 'Application for academic scholarships for the First Semester of the Academic Year 2023-2024 is NOW OPEN. The Office of the Registrar will be accepting scholarships applications from October 9 to October 13 at 8:00 a.m. - 4:00 p.m. ONLY. Applications for U'),
(10, '', 'Application for academic scholarships for the First Semester of the Academic Year 2023-2024 is NOW OPEN. The Office of the Registrar will be accepting scholarships applications from October 9 to October 13 at 8:00 a.m. - 4:00 p.m. ONLY. Applications for U');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`id`, `name`, `cellnum`, `address`, `email`, `date`, `timeslot`) VALUES
(57, 'angelo', '45665754', 'gfdsgjfghjshfs', 'dictmacatangay@gmail.com', '2023-10-25', '2pm-3pm'),
(58, '', '', '', '', '2023-10-25', '1pm-2pm'),
(59, '', '', '', '', '2023-10-24', '2pm-3pm'),
(60, '', '', '', '', '2023-10-26', '1pm-2pm'),
(61, '', '', '', '', '2023-10-26', '2pm-3pm'),
(62, '', '', '', '', '2023-10-25', '2pm-3pm'),
(63, '', '', '', '', '2023-10-27', '11am-12pm'),
(64, '', '', '', '', '2023-10-27', '9am-10am'),
(65, '', '', '', '', '2023-10-26', '1pm-2pm'),
(66, '', '', '', '', '2023-10-26', '2pm-3pm'),
(67, '', '', '', '', '2023-10-26', '2pm-3pm'),
(68, '', '', '', '', '2023-10-26', '1pm-2pm'),
(69, '', '', '', '', '2023-10-26', '2pm-3pm'),
(70, 'angelo', '', '', '', '2023-10-26', '2pm-3pm'),
(71, '', '', '', '', '2023-10-26', '11am-12pm'),
(72, 'angelo', '45756757', 'gfdsgjfghjshfs', 'angelo benedict acuzar', '2023-10-25', '11am-12pm'),
(73, '', '', '', '', '2023-10-27', '8am-9am'),
(74, '', '', '', '', '2023-10-26', '2pm-3pm'),
(75, '', '', '', '', '2023-10-25', '2pm-3pm'),
(76, '', '', '', '', '2023-10-24', '1pm-2pm'),
(77, '', '', '', '', '2023-10-25', '2pm-3pm'),
(78, '', '', '', '', '2023-10-24', '1pm-2pm'),
(79, '', '', '', '', '2023-10-26', '2pm-3pm'),
(80, '', '', '', '', '2023-10-27', '2pm-3pm'),
(81, '', '', '', '', '2023-10-25', '2pm-3pm'),
(82, '', '', '', '', '2023-10-25', '2pm-3pm'),
(83, '', '', '', '', '2023-10-26', '1pm-2pm'),
(84, '', '', '', '', '2023-10-26', '1pm-2pm'),
(85, '', '', '', '', '2023-10-26', '2pm-3pm'),
(86, '', '', '', '', '2023-10-26', '8am-9am'),
(87, '', '', '', '', '2023-10-26', '2pm-3pm'),
(88, '', '', '', '', '2023-10-25', '2pm-3pm'),
(89, '', '', '', '', '2023-10-25', '2pm-3pm'),
(90, '', '', '', '', '2023-10-31', '2pm-3pm'),
(91, '', '', '', '', '2023-10-25', '2pm-3pm'),
(92, '', '', '', '', '2023-10-25', '2pm-3pm'),
(93, '', '', '', '', '2023-10-25', '1pm-2pm'),
(94, '', '', '', '', '2023-10-25', '1pm-2pm'),
(95, '', '', '', '', '2023-10-26', '10am-11am'),
(96, 'angelo', '', '', '', '2023-10-25', '1pm-2pm'),
(97, '', '', '', '', '2023-10-26', '1pm-2pm'),
(98, '', '', '', '', '2023-10-25', '1pm-2pm'),
(99, '', '', '', '', '2023-10-24', '2pm-3pm'),
(100, '', '', '', '', '2023-10-24', '8am-9am'),
(101, '', '', '', '', '2023-10-25', '1pm-2pm'),
(102, 'angelo', '', '', '', '2023-10-24', '8am-9am'),
(103, '', '', '', '', '2023-10-24', '11am-12pm'),
(104, '', '', '', '', '2023-10-24', '8am-9am'),
(105, '', '', '', '', '2023-10-24', '8am-9am'),
(106, 'angelo', '', '', '', '2023-10-26', '1pm-2pm'),
(107, '', '', '', '', '2023-10-25', '11am-12pm'),
(108, '', '', '', '', '2023-10-25', '11am-12pm'),
(109, '', '', '', '', '2023-10-25', '11am-12pm'),
(110, '', '', '', '', '2023-10-25', '11am-12pm'),
(111, '', '', '', '', '2023-10-24', '2pm-3pm'),
(112, 'angelo', '43534566', 'gfdsgjfghjshfs', 'dictmacatangay@gmail.com', '2023-10-25', '10am-11am'),
(113, 'angelo', '53453534', 'gfdsgjfghjshfs', 'dictmacatangay@gmail.com', '2023-10-25', '8am-9am');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement`
--

CREATE TABLE `tblrequirement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `requirement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement`
--

INSERT INTO `tblrequirement` (`id`, `title`, `requirement`) VALUES
(21, 'Unifast', 'aeads'),
(22, 'Unifast', 'try'),
(23, 'Unifast', 'teasd'),
(36, 'Enrollment', 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `slots` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `date`, `timeslot`, `slots`) VALUES
(25, '2023-10-23', '8am-9am', 10),
(26, '2023-10-23', '9am-10am', 10),
(27, '2023-10-23', '10am-11am', 10),
(28, '2023-10-23', '11am-12pm', 0),
(29, '2023-10-23', '1pm-2pm', 0),
(30, '2023-10-23', '2pm-3pm', 0),
(31, '2023-10-24', '8am-9am', 0),
(32, '2023-10-24', '9am-10am', 10),
(33, '2023-10-24', '10am-11am', 10),
(34, '2023-10-24', '11am-12pm', 9),
(35, '2023-10-24', '1pm-2pm', 8),
(36, '2023-10-24', '2pm-3pm', 7),
(37, '2023-10-25', '8am-9am', 3),
(38, '2023-10-25', '9am-10am', 2),
(39, '2023-10-25', '10am-11am', 4),
(40, '2023-10-25', '11am-12pm', 2),
(41, '2023-10-25', '1pm-2pm', 4),
(42, '2023-10-25', '2pm-3pm', 0),
(43, '2023-10-26', '8am-9am', 8),
(44, '2023-10-26', '9am-10am', 8),
(45, '2023-10-26', '10am-11am', 5),
(46, '2023-10-26', '11am-12pm', 6),
(47, '2023-10-26', '1pm-2pm', 3),
(48, '2023-10-26', '2pm-3pm', 1),
(49, '2023-10-27', '8am-9am', 9),
(50, '2023-10-27', '9am-10am', 9),
(51, '2023-10-27', '10am-11am', 10),
(52, '2023-10-27', '11am-12pm', 8),
(53, '2023-10-27', '1pm-2pm', 10),
(54, '2023-10-27', '2pm-3pm', 9),
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
(66, '2023-10-31', '2pm-3pm', 9);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
