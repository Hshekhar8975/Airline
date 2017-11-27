-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2017 at 10:00 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

DROP TABLE IF EXISTS `flight_details`;
CREATE TABLE IF NOT EXISTS `flight_details` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `fare` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`Id`, `Name`, `origin`, `destination`, `date`, `fare`) VALUES
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-12-01', 4500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-12-01', 5600),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-12-01', 7850),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-22', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-23', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-24', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-25', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-26', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-27', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-28', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-29', 4500),
(1001, 'Spice Jet', 'Hyderabad', 'Patna', '2017-11-30', 4500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-23', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-24', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-25', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-26', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-27', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-28', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-29', 5500),
(1002, 'Indigo', 'Hyderabad', 'Patna', '2017-11-30', 5500),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-23', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-24', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-25', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-26', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-27', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-28', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-29', 7850),
(1003, 'Air India', 'Hyderabad', 'Patna', '2017-11-30', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-23', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-24', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-25', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-26', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-27', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-28', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-29', 7850),
(1001, 'Spice Jet', 'Hyderabad', 'Mumbai', '2017-11-30', 7850),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-23', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-24', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-25', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-26', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-27', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-28', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-29', 8250),
(1002, 'Indigo', 'Hyderabad', 'Mumbai', '2017-11-30', 8250),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-23', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-24', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-25', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-26', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-27', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-28', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-29', 9000),
(1003, 'Air India', 'Hyderabad', 'Mumbai', '2017-11-30', 9000),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Hyderabad', 'Delhi', '2017-11-30', 6890),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-23', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-24', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-25', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-26', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-27', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-28', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-29', 7560),
(1002, 'Indigo', 'Hyderabad', 'Delhi', '2017-11-30', 7560),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-23', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-24', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-25', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-26', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-27', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-28', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-29', 8650),
(1003, 'Air India', 'Hyderabad', 'Delhi', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Patna', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Patna', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Patna', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Mumbai', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Mumbai', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Mumbai', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Delhi', 'Hyderabad', '2017-11-30', 6890),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-23', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-24', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-25', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-26', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-27', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-28', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-29', 7560),
(1002, 'Indigo', 'Delhi', 'Hyderabad', '2017-11-30', 7560),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-23', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-24', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-25', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-26', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-27', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-28', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-29', 8650),
(1003, 'Air India', 'Delhi', 'Hyderabad', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Hyderabad', '2017-11-30', 6890),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-23', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-24', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-25', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-26', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-27', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-28', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-29', 7560),
(1002, 'Indigo', 'Mumbai', 'Hyderabad', '2017-11-30', 7560),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-23', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-24', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-25', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-26', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-27', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-28', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-29', 8650),
(1003, 'Air India', 'Mumbai', 'Hyderabad', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Patna', '2017-11-30', 6890),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-23', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-24', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-25', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-26', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-27', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-28', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-29', 7560),
(1002, 'Indigo', 'Mumbai', 'Patna', '2017-11-30', 7560),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-23', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-24', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-25', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-26', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-27', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-28', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-29', 8650),
(1003, 'Air India', 'Mumbai', 'Patna', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Mumbai', 'Delhi', '2017-11-30', 6890),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-23', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-24', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-25', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-26', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-27', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-28', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-29', 7560),
(1002, 'Indigo', 'Mumbai', 'Delhi', '2017-11-30', 7560),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-23', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-24', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-25', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-26', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-27', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-28', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-29', 8650),
(1003, 'Air India', 'Mumbai', 'Delhi', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Patna', 'Delhi', '2017-11-30', 6890),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-23', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-24', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-25', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-26', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-27', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-28', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-29', 7560),
(1002, 'Indigo', 'Patna', 'Delhi', '2017-11-30', 7560),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-23', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-24', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-25', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-26', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-27', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-28', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-29', 8650),
(1003, 'Air India', 'Patna', 'Delhi', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Patna', 'Mumbai', '2017-11-30', 6890),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-23', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-24', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-25', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-26', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-27', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-28', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-29', 7560),
(1002, 'Indigo', 'Patna', 'Mumbai', '2017-11-30', 7560),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-23', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-24', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-25', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-26', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-27', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-28', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-29', 8650),
(1003, 'Air India', 'Patna', 'Mumbai', '2017-11-30', 8650),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-23', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-24', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-25', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-26', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-27', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-28', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-29', 6890),
(1001, 'Spice Jet', 'Patna', 'Hyderabad', '2017-11-30', 6890),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-23', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-24', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-25', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-26', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-27', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-28', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-29', 7560),
(1002, 'Indigo', 'Patna', 'Hyderabad', '2017-11-30', 7560),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-23', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-24', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-25', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-26', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-27', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-28', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-29', 8650),
(1003, 'Air India', 'Patna', 'Hyderabad', '2017-11-30', 8650),
(1005, 'emirates', 'Hyderabad', 'abu dabhi', '2017-11-29', 25000),
(2501, 'air asia', 'Delhi', 'bejing', '2017-11-30', 50000),
(2011, 'abcd', 'delhi', 'kolkata', '2017-11-24', 1500),
(2015, 'xyz', 'mumbai', 'abc', '2017-11-24', 1500),
(2011, 'fgv', 'hyderabad', 'mumbai', '2017-11-24', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  UNIQUE KEY `UserName` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('nayan', '5132'),
('Yoothika', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;