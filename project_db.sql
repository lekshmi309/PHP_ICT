-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 03:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `Name`) VALUES
(1, 'Thiruvananthapuram'),
(2, 'Kollam'),
(3, 'Pathanamthitta'),
(4, 'Alappuzha'),
(5, 'Kottayam'),
(6, 'Idukki'),
(7, 'Ernakulam'),
(8, 'Thrissur'),
(9, 'Palakkad'),
(10, 'Malappuram'),
(11, 'Kozhikode'),
(12, 'Wayanad'),
(13, 'Kannur'),
(14, 'Kasargod');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `Institution` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `localbodytype` varchar(100) NOT NULL,
  `localbodyname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `pin` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`Institution`, `district`, `localbodytype`, `localbodyname`, `address`, `pin`) VALUES
('lbs', 'trivandrum', 'corporation', 'trivandrum', 'poojapura', 695001),
('kll', 'sdsdsd', 'sdsdsd', 'sdsdsd', 'dgrtytrytryt', 55656),
('sdsdsd', 'volvo', 'Panchayath', 'sdsdsd', 'sdsd', 8899),
('hsgdsdgs', 'volvo', 'Panchayath', 'niramankara', 'sfsfs', 695523),
('nss', '', 'Panchayath', 'niramankara', 'dfdfdf', 54454),
('hhh', 'Select District', 'Panchayath', 'niramankara', 'sfsfs', 3344),
('hsgdsdgs', 'Select District', 'Panchayath', 'dsds', 'dsdsd', 2147483647),
('sdsdsd', 'Select District', 'Panchayath', 'sdsdsd', 'sdsd', 9000),
('nss', 'Select District', 'Panchayath', 'niramankara', 'dsdsdsd', 3434343),
('nss', 'Select District', 'Panchayath', 'sdsdsd', 'dfdfdf', 89999),
('hsgdsdgs', 'Select District', 'Panchayath', 'sdsdsd', 'sddsd', 88999),
('hsgdsdgs', 'Select District', 'Corporation', 'sdsdsd', 'jj', 23232),
('sdsdsd', 'Select District', 'Panchayath', 'niramankara', 'cvfgf', 0),
('tytyty', 'Kollam', 'Panchayath', 'sdsdsd', 'sfsfs', 343434),
('aaaaaaaaaaa', 'Kollam', 'Panchayath', 'kkkkkkkkkkkkk', '333333333', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
