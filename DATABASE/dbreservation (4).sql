-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 06:28 PM
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
  `org` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `eu_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `Ntable` int(25) NOT NULL,
  `Nchair` int(100) NOT NULL,
  `other` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'asdfs', 'dsfsd', 0, 'justineanonuevo2@gmail.com', '6797897897', 'dfgdf', 'dfgdfgd', '2023-11-10', 'Whole Day', 'approved'),
(5, 'dfg', 'dfg', 0, 'dictmacatangay@gmail.com', '94500483', 'fddgdf', 'dfgdg', '2023-12-07', 'Whole Day', 'approved');

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
(1, 'Simple Reminders', 'Please have your student ID visible at all times.\n'),
(2, 'always maintain claygo', 'Clean as you Go');

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
(85, '2023-12-04', 'Morning', 1),
(86, '2023-12-04', 'Afternoon', 1),
(87, '2023-12-04', 'Night', 1),
(88, '2023-12-05', 'Morning', 1),
(89, '2023-12-05', 'Afternoon', 1),
(90, '2023-12-05', 'Night', 1),
(91, '2023-12-06', 'Morning', 0),
(92, '2023-12-06', 'Afternoon', 0),
(93, '2023-12-06', 'Night', 0),
(94, '2023-12-07', 'Morning', 0),
(95, '2023-12-07', 'Afternoon', 0),
(96, '2023-12-07', 'Night', 0),
(97, '2023-12-08', 'Morning', 1),
(98, '2023-12-08', 'Afternoon', 1),
(99, '2023-12-08', 'Night', 1),
(100, '2023-12-09', 'Morning', 1),
(101, '2023-12-09', 'Afternoon', 1),
(102, '2023-12-09', 'Night', 1),
(103, '2023-12-11', 'Morning', 1),
(104, '2023-12-11', 'Afternoon', 1),
(105, '2023-12-11', 'Night', 1),
(106, '2023-12-12', 'Morning', 1),
(107, '2023-12-12', 'Afternoon', 1),
(108, '2023-12-12', 'Night', 1),
(109, '2023-12-13', 'Morning', 1),
(110, '2023-12-13', 'Afternoon', 1),
(111, '2023-12-13', 'Night', 1),
(112, '2023-12-14', 'Morning', 1),
(113, '2023-12-14', 'Afternoon', 1),
(114, '2023-12-14', 'Night', 1),
(115, '2023-12-15', 'Morning', 1),
(116, '2023-12-15', 'Afternoon', 1),
(117, '2023-12-15', 'Night', 1),
(118, '2023-12-16', 'Morning', 1),
(119, '2023-12-16', 'Afternoon', 1),
(120, '2023-12-16', 'Night', 1),
(121, '2023-12-18', 'Morning', 1),
(122, '2023-12-18', 'Afternoon', 1),
(123, '2023-12-18', 'Night', 1),
(124, '2023-12-19', 'Morning', 0),
(125, '2023-12-19', 'Afternoon', 1),
(126, '2023-12-19', 'Night', 1),
(127, '2023-12-20', 'Morning', 1),
(128, '2023-12-20', 'Afternoon', 1),
(129, '2023-12-20', 'Night', 1),
(130, '2023-12-21', 'Morning', 1),
(131, '2023-12-21', 'Afternoon', 1),
(132, '2023-12-21', 'Night', 1),
(133, '2023-12-22', 'Morning', 1),
(134, '2023-12-22', 'Afternoon', 1),
(135, '2023-12-22', 'Night', 1),
(136, '2023-12-23', 'Morning', 1),
(137, '2023-12-23', 'Afternoon', 1),
(138, '2023-12-23', 'Night', 1),
(139, '2023-12-25', 'Morning', 1),
(140, '2023-12-25', 'Afternoon', 1),
(141, '2023-12-25', 'Night', 1),
(142, '2023-12-26', 'Morning', 1),
(143, '2023-12-26', 'Afternoon', 1),
(144, '2023-12-26', 'Night', 1),
(145, '2023-12-27', 'Morning', 1),
(146, '2023-12-27', 'Afternoon', 1),
(147, '2023-12-27', 'Night', 1),
(148, '2023-12-28', 'Morning', 1),
(149, '2023-12-28', 'Afternoon', 1),
(150, '2023-12-28', 'Night', 1),
(151, '2023-12-29', 'Morning', 1),
(152, '2023-12-29', 'Afternoon', 1),
(153, '2023-12-29', 'Night', 1),
(154, '2023-12-30', 'Morning', 1),
(155, '2023-12-30', 'Afternoon', 1),
(156, '2023-12-30', 'Night', 1);

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
(49, '2023-12-04', 'Morning', 1),
(50, '2023-12-04', 'Afternoon', 1),
(51, '2023-12-04', 'Night', 1),
(52, '2023-12-05', 'Morning', 1),
(53, '2023-12-05', 'Afternoon', 1),
(54, '2023-12-05', 'Night', 1),
(55, '2023-12-06', 'Morning', 1),
(56, '2023-12-06', 'Afternoon', 1),
(57, '2023-12-06', 'Night', 1),
(58, '2023-12-07', 'Morning', 1),
(59, '2023-12-07', 'Afternoon', 1),
(60, '2023-12-07', 'Night', 1),
(61, '2023-12-08', 'Morning', 1),
(62, '2023-12-08', 'Afternoon', 1),
(63, '2023-12-08', 'Night', 1),
(64, '2023-12-11', 'Morning', 1),
(65, '2023-12-11', 'Afternoon', 1),
(66, '2023-12-11', 'Night', 1),
(67, '2023-12-12', 'Morning', 1),
(68, '2023-12-12', 'Afternoon', 1),
(69, '2023-12-12', 'Night', 1),
(70, '2023-12-13', 'Morning', 1),
(71, '2023-12-13', 'Afternoon', 1),
(72, '2023-12-13', 'Night', 1),
(73, '2023-12-14', 'Morning', 1),
(74, '2023-12-14', 'Afternoon', 1),
(75, '2023-12-14', 'Night', 1),
(76, '2023-12-15', 'Morning', 1),
(77, '2023-12-15', 'Afternoon', 1),
(78, '2023-12-15', 'Night', 1),
(79, '2023-12-18', 'Morning', 1),
(80, '2023-12-18', 'Afternoon', 1),
(81, '2023-12-18', 'Night', 1),
(82, '2023-12-19', 'Morning', 1),
(83, '2023-12-19', 'Afternoon', 1),
(84, '2023-12-19', 'Night', 1),
(85, '2023-12-20', 'Morning', 1),
(86, '2023-12-20', 'Afternoon', 1),
(87, '2023-12-20', 'Night', 1),
(88, '2023-12-21', 'Morning', 1),
(89, '2023-12-21', 'Afternoon', 1),
(90, '2023-12-21', 'Night', 1),
(91, '2023-12-22', 'Morning', 1),
(92, '2023-12-22', 'Afternoon', 1),
(93, '2023-12-22', 'Night', 1),
(94, '2023-12-25', 'Morning', 1),
(95, '2023-12-25', 'Afternoon', 1),
(96, '2023-12-25', 'Night', 1),
(97, '2023-12-26', 'Morning', 1),
(98, '2023-12-26', 'Afternoon', 1),
(99, '2023-12-26', 'Night', 1),
(100, '2023-12-27', 'Morning', 1),
(101, '2023-12-27', 'Afternoon', 1),
(102, '2023-12-27', 'Night', 1),
(103, '2023-12-28', 'Morning', 1),
(104, '2023-12-28', 'Afternoon', 1),
(105, '2023-12-28', 'Night', 1),
(106, '2023-12-29', 'Morning', 1),
(107, '2023-12-29', 'Afternoon', 1),
(108, '2023-12-29', 'Night', 1);

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
(49, '2023-12-04', 'Morning', 1),
(50, '2023-12-04', 'Afternoon', 1),
(51, '2023-12-04', 'Night', 1),
(52, '2023-12-05', 'Morning', 1),
(53, '2023-12-05', 'Afternoon', 1),
(54, '2023-12-05', 'Night', 1),
(55, '2023-12-06', 'Morning', 1),
(56, '2023-12-06', 'Afternoon', 1),
(57, '2023-12-06', 'Night', 1),
(58, '2023-12-07', 'Morning', 1),
(59, '2023-12-07', 'Afternoon', 1),
(60, '2023-12-07', 'Night', 1),
(61, '2023-12-08', 'Morning', 1),
(62, '2023-12-08', 'Afternoon', 1),
(63, '2023-12-08', 'Night', 1),
(64, '2023-12-09', 'Morning', 1),
(65, '2023-12-09', 'Afternoon', 1),
(66, '2023-12-09', 'Night', 1),
(67, '2023-12-11', 'Morning', 1),
(68, '2023-12-11', 'Afternoon', 1),
(69, '2023-12-11', 'Night', 1),
(70, '2023-12-12', 'Morning', 1),
(71, '2023-12-12', 'Afternoon', 1),
(72, '2023-12-12', 'Night', 1),
(73, '2023-12-13', 'Morning', 1),
(74, '2023-12-13', 'Afternoon', 1),
(75, '2023-12-13', 'Night', 1),
(76, '2023-12-14', 'Morning', 1),
(77, '2023-12-14', 'Afternoon', 1),
(78, '2023-12-14', 'Night', 1),
(79, '2023-12-15', 'Morning', 1),
(80, '2023-12-15', 'Afternoon', 1),
(81, '2023-12-15', 'Night', 1),
(82, '2023-12-16', 'Morning', 1),
(83, '2023-12-16', 'Afternoon', 1),
(84, '2023-12-16', 'Night', 1),
(85, '2023-12-18', 'Morning', 1),
(86, '2023-12-18', 'Afternoon', 1),
(87, '2023-12-18', 'Night', 1),
(88, '2023-12-19', 'Morning', 1),
(89, '2023-12-19', 'Afternoon', 1),
(90, '2023-12-19', 'Night', 1),
(91, '2023-12-20', 'Morning', 1),
(92, '2023-12-20', 'Afternoon', 1),
(93, '2023-12-20', 'Night', 1),
(94, '2023-12-21', 'Morning', 1),
(95, '2023-12-21', 'Afternoon', 1),
(96, '2023-12-21', 'Night', 1),
(97, '2023-12-22', 'Morning', 1),
(98, '2023-12-22', 'Afternoon', 1),
(99, '2023-12-22', 'Night', 1),
(100, '2023-12-23', 'Morning', 1),
(101, '2023-12-23', 'Afternoon', 1),
(102, '2023-12-23', 'Night', 1),
(103, '2023-12-25', 'Morning', 1),
(104, '2023-12-25', 'Afternoon', 1),
(105, '2023-12-25', 'Night', 1),
(106, '2023-12-26', 'Morning', 1),
(107, '2023-12-26', 'Afternoon', 1),
(108, '2023-12-26', 'Night', 1),
(109, '2023-12-27', 'Morning', 1),
(110, '2023-12-27', 'Afternoon', 1),
(111, '2023-12-27', 'Night', 1),
(112, '2023-12-28', 'Morning', 1),
(113, '2023-12-28', 'Afternoon', 1),
(114, '2023-12-28', 'Night', 1),
(115, '2023-12-29', 'Morning', 1),
(116, '2023-12-29', 'Afternoon', 1),
(117, '2023-12-29', 'Night', 1),
(118, '2023-12-30', 'Morning', 1),
(119, '2023-12-30', 'Afternoon', 1),
(120, '2023-12-30', 'Night', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblappointment1`
--
ALTER TABLE `tblappointment1`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblappointment2`
--
ALTER TABLE `tblappointment2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tblschedule1`
--
ALTER TABLE `tblschedule1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblschedule2`
--
ALTER TABLE `tblschedule2`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
