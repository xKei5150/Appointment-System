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
-- Database: `dbappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladminaccounts`
--

CREATE TABLE `tbladminaccounts` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladminaccounts`
--

INSERT INTO `tbladminaccounts` (`email`, `password`) VALUES
('A20-0366', '54321'),
('dictmacatangay@gmail.com', '222222'),
('luhhhhh', '222222'),
('luhhhhh@gmail.com', '2222222'),
('angelo@gmail.com', '12345678');

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
