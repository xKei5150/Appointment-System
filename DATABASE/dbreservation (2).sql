-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 02:28 AM
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
(1, 'angelo', 'acuzar', '2345', 'dictmacatangay@gmail.com', '0978765646', 'sport fest', 'angelo sdahfhs dshf dsfudsf dsfdsfhdsjf dshfds fdjshfjhs dfjdhsfksdf sdf\n', '2023-11-06', 'Morning', 'pending');

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
(0, 'sdf', 'dsfsdf');

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
(28, '2023-11-06', 'Morning', 0),
(29, '2023-11-06', 'Afternoon', 1),
(30, '2023-11-06', 'Night', 1),
(31, '2023-11-07', 'Morning', 1),
(32, '2023-11-07', 'Afternoon', 1),
(33, '2023-11-07', 'Night', 1),
(34, '2023-11-08', 'Morning', 0),
(35, '2023-11-08', 'Afternoon', 1),
(36, '2023-11-08', 'Night', 1),
(37, '2023-11-09', 'Morning', 1),
(38, '2023-11-09', 'Afternoon', 1),
(39, '2023-11-09', 'Night', 1),
(40, '2023-11-10', 'Morning', 1),
(41, '2023-11-10', 'Afternoon', 1),
(42, '2023-11-10', 'Night', 1),
(43, '2023-11-13', 'Morning', 1),
(44, '2023-11-13', 'Afternoon', 1),
(45, '2023-11-13', 'Night', 1),
(46, '2023-11-14', 'Morning', 1),
(47, '2023-11-14', 'Afternoon', 1),
(48, '2023-11-14', 'Night', 1),
(49, '2023-11-15', 'Morning', 1),
(50, '2023-11-15', 'Afternoon', 1),
(51, '2023-11-15', 'Night', 1),
(52, '2023-11-16', 'Morning', 1),
(53, '2023-11-16', 'Afternoon', 1),
(54, '2023-11-16', 'Night', 1),
(55, '2023-11-17', 'Morning', 1),
(56, '2023-11-17', 'Afternoon', 1),
(57, '2023-11-17', 'Night', 1),
(58, '2023-11-20', 'Morning', 1),
(59, '2023-11-20', 'Afternoon', 1),
(60, '2023-11-20', 'Night', 1),
(61, '2023-11-21', 'Morning', 1),
(62, '2023-11-21', 'Afternoon', 1),
(63, '2023-11-21', 'Night', 1),
(64, '2023-11-22', 'Morning', 1),
(65, '2023-11-22', 'Afternoon', 1),
(66, '2023-11-22', 'Night', 1),
(67, '2023-11-23', 'Morning', 1),
(68, '2023-11-23', 'Afternoon', 1),
(69, '2023-11-23', 'Night', 1),
(70, '2023-11-24', 'Morning', 1),
(71, '2023-11-24', 'Afternoon', 1),
(72, '2023-11-24', 'Night', 1),
(73, '2023-11-27', 'Morning', 1),
(74, '2023-11-27', 'Afternoon', 1),
(75, '2023-11-27', 'Night', 1),
(76, '2023-11-28', 'Morning', 1),
(77, '2023-11-28', 'Afternoon', 1),
(78, '2023-11-28', 'Night', 1),
(79, '2023-11-29', 'Morning', 1),
(80, '2023-11-29', 'Afternoon', 1),
(81, '2023-11-29', 'Night', 1),
(82, '2023-11-30', 'Morning', 1),
(83, '2023-11-30', 'Afternoon', 1),
(84, '2023-11-30', 'Night', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
