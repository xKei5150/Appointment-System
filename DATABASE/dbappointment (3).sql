-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 11:24 PM
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
-- Database: `dbappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladminaccounts`
--

CREATE TABLE `tbladminaccounts` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `number` int(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladminaccounts`
--

INSERT INTO `tbladminaccounts` (`email`, `password`, `id`, `name`, `image`, `usertype`, `number`, `address`, `username`) VALUES
('angelo@gmail.com', ' 1234 ', 9876, 'Justine Pier', '', 'registrar', 2147483647, 'Concepcion 1 Sariaya ', ' User  '),
('', '123456', 7656, '', '', 'gym', 0, '', '  '),
('admin101@gmail.com', 'registrar101', 111111, 'registrar', '', 'registrar', 987876765, 'Candelaria', 'registraroffice'),
('admin102@gmail.com', 'jhregistrar102', 222222, 'jhregistrar', '', 'jhregistrar', 987676767, 'Candelaria, Quezon', 'jhregistraroffice'),
('admin103@gmail.com', 'dean102', 333333, 'dean', '', 'deanoffice', 987126767, 'Candelaria, Quezon', 'deanoffices'),
('admin104@gmail.com', 'jhprincipal104', 444444, 'jhprincipal', '', 'jhprincipal', 987676767, 'Candelaria, Quezon', 'jhprincipaloffice'),
('reservation101@gmail.com', 'gymnasium101', 555555, 'gym', '', 'gymnasium', 987676767, 'Candelaria, Quezon', 'gymfacility'),
('reservation102@gmail.com', 'emrc102', 666666, 'emrcentre', '', 'emrc', 987676767, 'Candelaria, Quezon', 'emrcfacility'),
('reservation103@gmail.com', 'functionhall103', 7777777, 'functionhall', '', 'fhall', 987676767, 'Candelaria, Quezon', 'fhallfacility');

-- --------------------------------------------------------

--
-- Table structure for table `tblcode`
--

CREATE TABLE `tblcode` (
  `code` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcode`
--

INSERT INTO `tblcode` (`code`) VALUES
(123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblcode2`
--

CREATE TABLE `tblcode2` (
  `code2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcode2`
--

INSERT INTO `tblcode2` (`code2`) VALUES
('123456789'),
('11111111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
