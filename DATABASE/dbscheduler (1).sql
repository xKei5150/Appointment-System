-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 11:27 PM
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
(6, 'NO OFFICE TRANSACTIONS AND CLASSES', 'The teaching and non – teaching staff will be having a whole day recollection on \n“April 3, 2023” (Monday) Thus, there will be NO OFFICE TRANSACTIONS and NO CLASSES IN ALL LEVELS.\nRegular classes and office transactions resume on April 4, 2023.\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement1`
--

CREATE TABLE `tblannouncement1` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblannouncement1`
--

INSERT INTO `tblannouncement1` (`id`, `title`, `announcement`) VALUES
(4, 'ACADEMIC SCHOLARSHIP', 'Application for academic scholarships for the Second Semester of the academic year 2022 – 2023 is no');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement2`
--

CREATE TABLE `tblannouncement2` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblannouncement2`
--

INSERT INTO `tblannouncement2` (`id`, `title`, `announcement`) VALUES
(5, 'ANNOUNCEMENT', 'Good day! Please be informed that the last of the releasing of books will be tomorrow, September 15, 2023.\nThank you and have a great day everyone!\n'),
(6, 'ACADEMIC SCHOLARSHIP', 'Application for academic scholarships for the Second Semester of the academic year 2022 – 2023 is now open. The office of the registrar will be accepting scholarship applications from March 6 to March 10 from 8:00 a.m – 5:00 p.m only.\nApplications for uni');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncement3`
--

CREATE TABLE `tblannouncement3` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `announcement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblannouncement3`
--

INSERT INTO `tblannouncement3` (`id`, `title`, `announcement`) VALUES
(3, 'dgedgfer', 'erferfgvregtetger');

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
(1, 'MARAKUN', '09787878877', 'Concepcion 1', 'marcopaoloilagan9@gmail.com', '2023-11-09', '8am-9am'),
(2, 'Justine Anonuevo', '09635132444', 'Mas 1', 'justineanonuevo2@gmail.com', '2023-11-10', '1pm-2pm'),
(3, 'angelo acuzar', '09787878877', 'Mas 1', 'justineanonuevo2@gmail.com', '2023-11-22', '11am-12pm'),
(4, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-23', '10am-11am');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment1`
--

CREATE TABLE `tblappointment1` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cellnum` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment1`
--

INSERT INTO `tblappointment1` (`id`, `name`, `cellnum`, `address`, `email`, `date`, `timeslot`) VALUES
(0, 'angelo ', 2147483647, 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '8am-9am'),
(0, 'angelo acuzar', 2147483647, 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-09', '8am-9am'),
(0, 'angelo acuzar', 2147483647, 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-23', '10am-11am'),
(0, 'angelo acuzar', 2147483647, 'Concepcion 1', 'justineanonuevo2@gmail.com', '2023-11-09', '8am-9am'),
(0, 'angelo acuzar', 2147483647, 'Concepcion 1', 'justineanonuevo2@gmail.com', '2023-11-09', '8am-9am');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment2`
--

CREATE TABLE `tblappointment2` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cellnum` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment2`
--

INSERT INTO `tblappointment2` (`id`, `name`, `cellnum`, `address`, `email`, `date`, `timeslot`) VALUES
(0, 'angelo ', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-09', '8am-9am'),
(0, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '8am-9am'),
(0, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '9am-10am'),
(0, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '8am-9am'),
(0, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '8am-9am'),
(0, 'xdvd', '09787878877', 'dfxvd', 'dsfdsds', '2023-11-09', '9am-10am'),
(0, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '2pm-3pm'),
(0, 'angelo acuzar', '09787878877', 'Mas 1', 'justineanonuevo2@gmail.com', '2023-11-09', '8am-9am'),
(0, 'angelo acuzar', '09787878877', 'shakeys', 'justineanonuevo2@gmail.com', '2023-11-14', '8am-9am');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment3`
--

CREATE TABLE `tblappointment3` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cellnum` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment3`
--

INSERT INTO `tblappointment3` (`id`, `name`, `cellnum`, `address`, `email`, `date`, `timeslot`) VALUES
(1, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-15', '8am-9am'),
(2, 'angelo acuzar', '09787878877', 'Mas 1', 'justineanonuevo2@gmail.com', '2023-11-16', '2pm-3pm'),
(3, 'justino', '09787878877', 'Mas 1', 'justineanonuevo2@gmail.com', '2023-11-23', '9am-10am'),
(4, 'angelo acuzar', '09787878877', 'Concepcion 1', 'justineanonuevo2@gmail.com', '2023-11-17', '10am-11am'),
(5, 'angelo acuzar', '09787878877', 'Concepcion 1', 'dictmacatangay@gmail.com', '2023-11-10', '8am-9am'),
(6, 'angelo acuzar', '09787878877', 'Concepcion 1', 'justineanonuevo2@gmail.com', '2023-11-10', '8am-9am'),
(7, 'angelo acuzar', '09787878877', 'Concepcion 1', 'justineanonuevo2@gmail.com', '2023-11-10', '9am-10am'),
(8, 'angelo acuzar', '09787878877', 'Mas 1', 'dictmacatangay@gmail.com', '2023-11-16', '11am-12pm');

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
(27, 'Proof of Enrollment or Graduation', 'Letter of acceptance'),
(28, 'Proof of Enrollment or Graduation', 'Enrollment Verification'),
(29, 'Proof of Enrollment or Graduation', 'Diploma (For Graduate Students Only)'),
(30, 'Proof of Enrollment or Graduation', 'Graduation Certificate (For Graduating Students)'),
(31, 'Completion Request Form', 'Full Name of the Requester'),
(32, 'Completion Request Form', 'Identification Number (e.g., Student ID or Employee ID)'),
(33, 'Completion Request Form', 'Contact Information (e.g., phone number, email address)'),
(34, 'Completion Request Form', 'Name of the Course/Project/Task'),
(35, 'Completion Request Form', 'Course/Project/Task Code or Identifier');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement1`
--

CREATE TABLE `tblrequirement1` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `requirement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement1`
--

INSERT INTO `tblrequirement1` (`id`, `title`, `requirement`) VALUES
(17, 'Clearance from Other Departments', 'List all departments requiring clearance (e.g., Library, Finance, Laboratory, Sports, Hostel)'),
(18, 'Clearance from Other Departments', 'Department Name'),
(19, 'Clearance from Other Departments', 'Signature of Authorized Personnel'),
(20, 'Clearance from Other Departments', 'Date Cleared');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement2`
--

CREATE TABLE `tblrequirement2` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `requirement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirement3`
--

CREATE TABLE `tblrequirement3` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `requirement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequirement3`
--

INSERT INTO `tblrequirement3` (`id`, `title`, `requirement`) VALUES
(5, 'Clearance from Other Departments', 'Signature of Authorized Personnel'),
(6, 'Clearance from Other Departments', 'List all departments requiring clearance (e.g., Library, Finance, Laboratory, Sports, Hostel)'),
(7, 'Clearance from Other Departments', 'Department Name'),
(8, 'Clearance from Other Departments', 'Date Cleared');

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
(103, '2023-11-09', '8am-9am', 9),
(104, '2023-11-09', '9am-10am', 10),
(105, '2023-11-09', '10am-11am', 10),
(106, '2023-11-09', '11am-12pm', 10),
(107, '2023-11-09', '1pm-2pm', 10),
(108, '2023-11-09', '2pm-3pm', 10),
(109, '2023-11-10', '8am-9am', 10),
(110, '2023-11-10', '9am-10am', 10),
(111, '2023-11-10', '10am-11am', 10),
(112, '2023-11-10', '11am-12pm', 10),
(113, '2023-11-10', '1pm-2pm', 10),
(114, '2023-11-10', '2pm-3pm', 9),
(115, '2023-11-13', '8am-9am', 10),
(116, '2023-11-13', '9am-10am', 10),
(117, '2023-11-13', '10am-11am', 10),
(118, '2023-11-13', '11am-12pm', 10),
(119, '2023-11-13', '1pm-2pm', 10),
(120, '2023-11-13', '2pm-3pm', 10),
(121, '2023-11-14', '8am-9am', 10),
(122, '2023-11-14', '9am-10am', 10),
(123, '2023-11-14', '10am-11am', 10),
(124, '2023-11-14', '11am-12pm', 10),
(125, '2023-11-14', '1pm-2pm', 10),
(126, '2023-11-14', '2pm-3pm', 10),
(127, '2023-11-15', '8am-9am', 10),
(128, '2023-11-15', '9am-10am', 10),
(129, '2023-11-15', '10am-11am', 10),
(130, '2023-11-15', '11am-12pm', 10),
(131, '2023-11-15', '1pm-2pm', 10),
(132, '2023-11-15', '2pm-3pm', 10),
(133, '2023-11-16', '8am-9am', 10),
(134, '2023-11-16', '9am-10am', 10),
(135, '2023-11-16', '10am-11am', 10),
(136, '2023-11-16', '11am-12pm', 10),
(137, '2023-11-16', '1pm-2pm', 10),
(138, '2023-11-16', '2pm-3pm', 10),
(139, '2023-11-17', '8am-9am', 10),
(140, '2023-11-17', '9am-10am', 10),
(141, '2023-11-17', '10am-11am', 10),
(142, '2023-11-17', '11am-12pm', 10),
(143, '2023-11-17', '1pm-2pm', 10),
(144, '2023-11-17', '2pm-3pm', 10),
(145, '2023-11-20', '8am-9am', 10),
(146, '2023-11-20', '9am-10am', 10),
(147, '2023-11-20', '10am-11am', 10),
(148, '2023-11-20', '11am-12pm', 10),
(149, '2023-11-20', '1pm-2pm', 10),
(150, '2023-11-20', '2pm-3pm', 10),
(151, '2023-11-21', '8am-9am', 10),
(152, '2023-11-21', '9am-10am', 10),
(153, '2023-11-21', '10am-11am', 10),
(154, '2023-11-21', '11am-12pm', 10),
(155, '2023-11-21', '1pm-2pm', 10),
(156, '2023-11-21', '2pm-3pm', 10),
(157, '2023-11-22', '8am-9am', 10),
(158, '2023-11-22', '9am-10am', 10),
(159, '2023-11-22', '10am-11am', 10),
(160, '2023-11-22', '11am-12pm', 9),
(161, '2023-11-22', '1pm-2pm', 10),
(162, '2023-11-22', '2pm-3pm', 10),
(163, '2023-11-23', '8am-9am', 10),
(164, '2023-11-23', '9am-10am', 10),
(165, '2023-11-23', '10am-11am', 9),
(166, '2023-11-23', '11am-12pm', 10),
(167, '2023-11-23', '1pm-2pm', 10),
(168, '2023-11-23', '2pm-3pm', 10),
(169, '2023-11-24', '8am-9am', 10),
(170, '2023-11-24', '9am-10am', 10),
(171, '2023-11-24', '10am-11am', 10),
(172, '2023-11-24', '11am-12pm', 10),
(173, '2023-11-24', '1pm-2pm', 10),
(174, '2023-11-24', '2pm-3pm', 10),
(175, '2023-11-27', '8am-9am', 10),
(176, '2023-11-27', '9am-10am', 10),
(177, '2023-11-27', '10am-11am', 10),
(178, '2023-11-27', '11am-12pm', 10),
(179, '2023-11-27', '1pm-2pm', 10),
(180, '2023-11-27', '2pm-3pm', 10),
(181, '2023-11-28', '8am-9am', 10),
(182, '2023-11-28', '9am-10am', 10),
(183, '2023-11-28', '10am-11am', 10),
(184, '2023-11-28', '11am-12pm', 10),
(185, '2023-11-28', '1pm-2pm', 10),
(186, '2023-11-28', '2pm-3pm', 10),
(187, '2023-11-29', '8am-9am', 10),
(188, '2023-11-29', '9am-10am', 10),
(189, '2023-11-29', '10am-11am', 10),
(190, '2023-11-29', '11am-12pm', 10),
(191, '2023-11-29', '1pm-2pm', 10),
(192, '2023-11-29', '2pm-3pm', 10),
(193, '2023-11-30', '8am-9am', 10),
(194, '2023-11-30', '9am-10am', 10),
(195, '2023-11-30', '10am-11am', 10),
(196, '2023-11-30', '11am-12pm', 10),
(197, '2023-11-30', '1pm-2pm', 10),
(198, '2023-11-30', '2pm-3pm', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule1`
--

CREATE TABLE `tblschedule1` (
  `id` int(6) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `slots` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule1`
--

INSERT INTO `tblschedule1` (`id`, `date`, `timeslot`, `slots`) VALUES
(13, '2023-11-09', '8am-9am', 8),
(14, '2023-11-09', '9am-10am', 9),
(15, '2023-11-09', '10am-11am', 10),
(16, '2023-11-09', '11am-12pm', 10),
(17, '2023-11-09', '1pm-2pm', 10),
(18, '2023-11-09', '2pm-3pm', 10),
(19, '2023-11-10', '8am-9am', 9),
(20, '2023-11-10', '9am-10am', 10),
(21, '2023-11-10', '10am-11am', 10),
(22, '2023-11-10', '11am-12pm', 10),
(23, '2023-11-10', '1pm-2pm', 10),
(24, '2023-11-10', '2pm-3pm', 10),
(25, '2023-11-13', '8am-9am', 10),
(26, '2023-11-13', '9am-10am', 10),
(27, '2023-11-13', '10am-11am', 10),
(28, '2023-11-13', '11am-12pm', 10),
(29, '2023-11-13', '1pm-2pm', 10),
(30, '2023-11-13', '2pm-3pm', 10),
(31, '2023-11-14', '8am-9am', 10),
(32, '2023-11-14', '9am-10am', 10),
(33, '2023-11-14', '10am-11am', 10),
(34, '2023-11-14', '11am-12pm', 10),
(35, '2023-11-14', '1pm-2pm', 10),
(36, '2023-11-14', '2pm-3pm', 10),
(37, '2023-11-15', '8am-9am', 10),
(38, '2023-11-15', '9am-10am', 10),
(39, '2023-11-15', '10am-11am', 10),
(40, '2023-11-15', '11am-12pm', 10),
(41, '2023-11-15', '1pm-2pm', 10),
(42, '2023-11-15', '2pm-3pm', 10),
(43, '2023-11-16', '8am-9am', 10),
(44, '2023-11-16', '9am-10am', 10),
(45, '2023-11-16', '10am-11am', 10),
(46, '2023-11-16', '11am-12pm', 10),
(47, '2023-11-16', '1pm-2pm', 10),
(48, '2023-11-16', '2pm-3pm', 10),
(49, '2023-11-17', '8am-9am', 10),
(50, '2023-11-17', '9am-10am', 10),
(51, '2023-11-17', '10am-11am', 10),
(52, '2023-11-17', '11am-12pm', 10),
(53, '2023-11-17', '1pm-2pm', 10),
(54, '2023-11-17', '2pm-3pm', 10),
(55, '2023-11-20', '8am-9am', 10),
(56, '2023-11-20', '9am-10am', 10),
(57, '2023-11-20', '10am-11am', 10),
(58, '2023-11-20', '11am-12pm', 10),
(59, '2023-11-20', '1pm-2pm', 10),
(60, '2023-11-20', '2pm-3pm', 10),
(61, '2023-11-21', '8am-9am', 10),
(62, '2023-11-21', '9am-10am', 10),
(63, '2023-11-21', '10am-11am', 10),
(64, '2023-11-21', '11am-12pm', 10),
(65, '2023-11-21', '1pm-2pm', 10),
(66, '2023-11-21', '2pm-3pm', 10),
(67, '2023-11-22', '8am-9am', 10),
(68, '2023-11-22', '9am-10am', 10),
(69, '2023-11-22', '10am-11am', 10),
(70, '2023-11-22', '11am-12pm', 10),
(71, '2023-11-22', '1pm-2pm', 10),
(72, '2023-11-22', '2pm-3pm', 10),
(73, '2023-11-23', '8am-9am', 10),
(74, '2023-11-23', '9am-10am', 8),
(75, '2023-11-23', '10am-11am', 9),
(76, '2023-11-23', '11am-12pm', 10),
(77, '2023-11-23', '1pm-2pm', 10),
(78, '2023-11-23', '2pm-3pm', 10),
(79, '2023-11-24', '8am-9am', 10),
(80, '2023-11-24', '9am-10am', 10),
(81, '2023-11-24', '10am-11am', 10),
(82, '2023-11-24', '11am-12pm', 10),
(83, '2023-11-24', '1pm-2pm', 10),
(84, '2023-11-24', '2pm-3pm', 10),
(85, '2023-11-27', '8am-9am', 10),
(86, '2023-11-27', '9am-10am', 10),
(87, '2023-11-27', '10am-11am', 10),
(88, '2023-11-27', '11am-12pm', 10),
(89, '2023-11-27', '1pm-2pm', 10),
(90, '2023-11-27', '2pm-3pm', 10),
(91, '2023-11-28', '8am-9am', 10),
(92, '2023-11-28', '9am-10am', 10),
(93, '2023-11-28', '10am-11am', 10),
(94, '2023-11-28', '11am-12pm', 10),
(95, '2023-11-28', '1pm-2pm', 10),
(96, '2023-11-28', '2pm-3pm', 10),
(97, '2023-11-29', '8am-9am', 10),
(98, '2023-11-29', '9am-10am', 10),
(99, '2023-11-29', '10am-11am', 10),
(100, '2023-11-29', '11am-12pm', 10),
(101, '2023-11-29', '1pm-2pm', 10),
(102, '2023-11-29', '2pm-3pm', 10),
(103, '2023-11-30', '8am-9am', 10),
(104, '2023-11-30', '9am-10am', 10),
(105, '2023-11-30', '10am-11am', 10),
(106, '2023-11-30', '11am-12pm', 10),
(107, '2023-11-30', '1pm-2pm', 10),
(108, '2023-11-30', '2pm-3pm', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule2`
--

CREATE TABLE `tblschedule2` (
  `id` int(6) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `slots` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule2`
--

INSERT INTO `tblschedule2` (`id`, `date`, `timeslot`, `slots`) VALUES
(13, '2023-11-09', '8am-9am', 10),
(14, '2023-11-09', '9am-10am', 0),
(15, '2023-11-09', '10am-11am', 0),
(16, '2023-11-09', '11am-12pm', 0),
(17, '2023-11-09', '1pm-2pm', 0),
(18, '2023-11-09', '2pm-3pm', 0),
(19, '2023-11-10', '8am-9am', 0),
(20, '2023-11-10', '9am-10am', 0),
(21, '2023-11-10', '10am-11am', 0),
(22, '2023-11-10', '11am-12pm', 0),
(23, '2023-11-10', '1pm-2pm', 0),
(24, '2023-11-10', '2pm-3pm', 0),
(25, '2023-11-13', '8am-9am', 0),
(26, '2023-11-13', '9am-10am', 0),
(27, '2023-11-13', '10am-11am', 0),
(28, '2023-11-13', '11am-12pm', 0),
(29, '2023-11-13', '1pm-2pm', 0),
(30, '2023-11-13', '2pm-3pm', 0),
(31, '2023-11-14', '8am-9am', 10),
(32, '2023-11-14', '9am-10am', 0),
(33, '2023-11-14', '10am-11am', 0),
(34, '2023-11-14', '11am-12pm', 0),
(35, '2023-11-14', '1pm-2pm', 0),
(36, '2023-11-14', '2pm-3pm', 0),
(37, '2023-11-15', '8am-9am', 0),
(38, '2023-11-15', '9am-10am', 0),
(39, '2023-11-15', '10am-11am', 0),
(40, '2023-11-15', '11am-12pm', 0),
(41, '2023-11-15', '1pm-2pm', 0),
(42, '2023-11-15', '2pm-3pm', 0),
(43, '2023-11-16', '8am-9am', 0),
(44, '2023-11-16', '9am-10am', 0),
(45, '2023-11-16', '10am-11am', 0),
(46, '2023-11-16', '11am-12pm', 0),
(47, '2023-11-16', '1pm-2pm', 0),
(48, '2023-11-16', '2pm-3pm', 0),
(49, '2023-11-17', '8am-9am', 0),
(50, '2023-11-17', '9am-10am', 0),
(51, '2023-11-17', '10am-11am', 0),
(52, '2023-11-17', '11am-12pm', 0),
(53, '2023-11-17', '1pm-2pm', 0),
(54, '2023-11-17', '2pm-3pm', 0),
(55, '2023-11-20', '8am-9am', 0),
(56, '2023-11-20', '9am-10am', 0),
(57, '2023-11-20', '10am-11am', 0),
(58, '2023-11-20', '11am-12pm', 0),
(59, '2023-11-20', '1pm-2pm', 0),
(60, '2023-11-20', '2pm-3pm', 0),
(61, '2023-11-21', '8am-9am', 0),
(62, '2023-11-21', '9am-10am', 0),
(63, '2023-11-21', '10am-11am', 0),
(64, '2023-11-21', '11am-12pm', 0),
(65, '2023-11-21', '1pm-2pm', 0),
(66, '2023-11-21', '2pm-3pm', 0),
(67, '2023-11-22', '8am-9am', 0),
(68, '2023-11-22', '9am-10am', 0),
(69, '2023-11-22', '10am-11am', 0),
(70, '2023-11-22', '11am-12pm', 0),
(71, '2023-11-22', '1pm-2pm', 0),
(72, '2023-11-22', '2pm-3pm', 0),
(73, '2023-11-23', '8am-9am', 0),
(74, '2023-11-23', '9am-10am', 0),
(75, '2023-11-23', '10am-11am', 0),
(76, '2023-11-23', '11am-12pm', 0),
(77, '2023-11-23', '1pm-2pm', 0),
(78, '2023-11-23', '2pm-3pm', 0),
(79, '2023-11-24', '8am-9am', 10),
(80, '2023-11-24', '9am-10am', 10),
(81, '2023-11-24', '10am-11am', 10),
(82, '2023-11-24', '11am-12pm', 10),
(83, '2023-11-24', '1pm-2pm', 10),
(84, '2023-11-24', '2pm-3pm', 10),
(85, '2023-11-27', '8am-9am', 10),
(86, '2023-11-27', '9am-10am', 10),
(87, '2023-11-27', '10am-11am', 10),
(88, '2023-11-27', '11am-12pm', 10),
(89, '2023-11-27', '1pm-2pm', 10),
(90, '2023-11-27', '2pm-3pm', 10),
(91, '2023-11-28', '8am-9am', 10),
(92, '2023-11-28', '9am-10am', 10),
(93, '2023-11-28', '10am-11am', 10),
(94, '2023-11-28', '11am-12pm', 10),
(95, '2023-11-28', '1pm-2pm', 10),
(96, '2023-11-28', '2pm-3pm', 10),
(97, '2023-11-29', '8am-9am', 10),
(98, '2023-11-29', '9am-10am', 10),
(99, '2023-11-29', '10am-11am', 10),
(100, '2023-11-29', '11am-12pm', 10),
(101, '2023-11-29', '1pm-2pm', 10),
(102, '2023-11-29', '2pm-3pm', 10),
(103, '2023-11-30', '8am-9am', 10),
(104, '2023-11-30', '9am-10am', 10),
(105, '2023-11-30', '10am-11am', 10),
(106, '2023-11-30', '11am-12pm', 10),
(107, '2023-11-30', '1pm-2pm', 10),
(108, '2023-11-30', '2pm-3pm', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule3`
--

CREATE TABLE `tblschedule3` (
  `id` int(3) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `slots` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule3`
--

INSERT INTO `tblschedule3` (`id`, `date`, `timeslot`, `slots`) VALUES
(1, '2023-11-09', '8am-9am', 10),
(2, '2023-11-09', '9am-10am', 10),
(3, '2023-11-09', '10am-11am', 10),
(4, '2023-11-09', '11am-12pm', 10),
(5, '2023-11-09', '1pm-2pm', 10),
(6, '2023-11-09', '2pm-3pm', 10),
(7, '2023-11-10', '8am-9am', 8),
(8, '2023-11-10', '9am-10am', 9),
(9, '2023-11-10', '10am-11am', 10),
(10, '2023-11-10', '11am-12pm', 10),
(11, '2023-11-10', '1pm-2pm', 10),
(12, '2023-11-10', '2pm-3pm', 10),
(13, '2023-11-13', '8am-9am', 10),
(14, '2023-11-13', '9am-10am', 10),
(15, '2023-11-13', '10am-11am', 10),
(16, '2023-11-13', '11am-12pm', 10),
(17, '2023-11-13', '1pm-2pm', 10),
(18, '2023-11-13', '2pm-3pm', 10),
(19, '2023-11-14', '8am-9am', 10),
(20, '2023-11-14', '9am-10am', 10),
(21, '2023-11-14', '10am-11am', 10),
(22, '2023-11-14', '11am-12pm', 10),
(23, '2023-11-14', '1pm-2pm', 10),
(24, '2023-11-14', '2pm-3pm', 10),
(25, '2023-11-15', '8am-9am', 9),
(26, '2023-11-15', '9am-10am', 10),
(27, '2023-11-15', '10am-11am', 10),
(28, '2023-11-15', '11am-12pm', 10),
(29, '2023-11-15', '1pm-2pm', 10),
(30, '2023-11-15', '2pm-3pm', 10),
(31, '2023-11-16', '8am-9am', 10),
(32, '2023-11-16', '9am-10am', 10),
(33, '2023-11-16', '10am-11am', 10),
(34, '2023-11-16', '11am-12pm', 9),
(35, '2023-11-16', '1pm-2pm', 10),
(36, '2023-11-16', '2pm-3pm', 9),
(37, '2023-11-17', '8am-9am', 10),
(38, '2023-11-17', '9am-10am', 10),
(39, '2023-11-17', '10am-11am', 9),
(40, '2023-11-17', '11am-12pm', 10),
(41, '2023-11-17', '1pm-2pm', 10),
(42, '2023-11-17', '2pm-3pm', 10),
(43, '2023-11-20', '8am-9am', 10),
(44, '2023-11-20', '9am-10am', 10),
(45, '2023-11-20', '10am-11am', 10),
(46, '2023-11-20', '11am-12pm', 10),
(47, '2023-11-20', '1pm-2pm', 10),
(48, '2023-11-20', '2pm-3pm', 10),
(49, '2023-11-21', '8am-9am', 10),
(50, '2023-11-21', '9am-10am', 10),
(51, '2023-11-21', '10am-11am', 10),
(52, '2023-11-21', '11am-12pm', 10),
(53, '2023-11-21', '1pm-2pm', 10),
(54, '2023-11-21', '2pm-3pm', 10),
(55, '2023-11-22', '8am-9am', 10),
(56, '2023-11-22', '9am-10am', 10),
(57, '2023-11-22', '10am-11am', 10),
(58, '2023-11-22', '11am-12pm', 10),
(59, '2023-11-22', '1pm-2pm', 10),
(60, '2023-11-22', '2pm-3pm', 10),
(61, '2023-11-23', '8am-9am', 10),
(62, '2023-11-23', '9am-10am', 9),
(63, '2023-11-23', '10am-11am', 10),
(64, '2023-11-23', '11am-12pm', 10),
(65, '2023-11-23', '1pm-2pm', 10),
(66, '2023-11-23', '2pm-3pm', 10),
(67, '2023-11-24', '8am-9am', 10),
(68, '2023-11-24', '9am-10am', 10),
(69, '2023-11-24', '10am-11am', 10),
(70, '2023-11-24', '11am-12pm', 10),
(71, '2023-11-24', '1pm-2pm', 10),
(72, '2023-11-24', '2pm-3pm', 10),
(73, '2023-11-27', '8am-9am', 10),
(74, '2023-11-27', '9am-10am', 10),
(75, '2023-11-27', '10am-11am', 10),
(76, '2023-11-27', '11am-12pm', 10),
(77, '2023-11-27', '1pm-2pm', 10),
(78, '2023-11-27', '2pm-3pm', 10),
(79, '2023-11-28', '8am-9am', 10),
(80, '2023-11-28', '9am-10am', 10),
(81, '2023-11-28', '10am-11am', 10),
(82, '2023-11-28', '11am-12pm', 10),
(83, '2023-11-28', '1pm-2pm', 10),
(84, '2023-11-28', '2pm-3pm', 10),
(85, '2023-11-29', '8am-9am', 10),
(86, '2023-11-29', '9am-10am', 10),
(87, '2023-11-29', '10am-11am', 10),
(88, '2023-11-29', '11am-12pm', 10),
(89, '2023-11-29', '1pm-2pm', 10),
(90, '2023-11-29', '2pm-3pm', 10),
(91, '2023-11-30', '8am-9am', 10),
(92, '2023-11-30', '9am-10am', 10),
(93, '2023-11-30', '10am-11am', 10),
(94, '2023-11-30', '11am-12pm', 10),
(95, '2023-11-30', '1pm-2pm', 10),
(96, '2023-11-30', '2pm-3pm', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncement1`
--
ALTER TABLE `tblannouncement1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncement2`
--
ALTER TABLE `tblannouncement2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncement3`
--
ALTER TABLE `tblannouncement3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment3`
--
ALTER TABLE `tblappointment3`
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
-- Indexes for table `tblrequirement3`
--
ALTER TABLE `tblrequirement3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`,`timeslot`);

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
-- Indexes for table `tblschedule3`
--
ALTER TABLE `tblschedule3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblannouncement`
--
ALTER TABLE `tblannouncement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblannouncement1`
--
ALTER TABLE `tblannouncement1`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblannouncement2`
--
ALTER TABLE `tblannouncement2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblannouncement3`
--
ALTER TABLE `tblannouncement3`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblappointment3`
--
ALTER TABLE `tblappointment3`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblrequirement`
--
ALTER TABLE `tblrequirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblrequirement1`
--
ALTER TABLE `tblrequirement1`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblrequirement2`
--
ALTER TABLE `tblrequirement2`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequirement3`
--
ALTER TABLE `tblrequirement3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `tblschedule1`
--
ALTER TABLE `tblschedule1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblschedule2`
--
ALTER TABLE `tblschedule2`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblschedule3`
--
ALTER TABLE `tblschedule3`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
