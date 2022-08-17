-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2022 at 04:34 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `password`) VALUES
('admi', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `roomNo` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `checkIn` date NOT NULL,
  `checkOut` date NOT NULL,
  `total_days` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `reserved_Status` varchar(20) NOT NULL DEFAULT 'Not Booked',
  PRIMARY KEY (`booking_id`),
  KEY `roomNo` (`roomNo`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `roomNo`, `date_time`, `checkIn`, `checkOut`, `total_days`, `price`, `reserved_Status`) VALUES
(1, 1, 1, '2022-08-07 09:56:58', '2022-08-08', '2022-08-10', 3, '4500.00', 'Booked'),
(2, 1, 17, '2022-08-07 09:56:58', '2022-08-10', '2022-08-15', 6, '12000.00', 'Booked'),
(3, 1, 7, '2022-08-07 09:56:58', '2022-08-10', '2022-08-15', 6, '30000.00', 'Booked'),
(4, 2, 2, '2022-08-07 10:01:14', '2022-08-10', '2022-08-14', 5, '12500.00', 'Booked'),
(5, 2, 6, '2022-08-07 10:01:14', '2022-08-12', '2022-08-16', 5, '20000.00', 'Booked'),
(6, 2, 19, '2022-08-07 10:01:14', '2022-08-17', '2022-08-20', 4, '19200.00', 'Booked'),
(7, 3, 15, '2022-08-07 10:03:39', '2022-08-11', '2022-08-15', 5, '16000.00', 'Booked'),
(8, 3, 22, '2022-08-07 10:03:39', '2022-08-12', '2022-08-15', 4, '13600.00', 'Booked'),
(9, 3, 25, '2022-08-07 10:03:39', '2022-08-12', '2022-08-15', 4, '14000.00', 'Booked'),
(10, 4, 15, '2022-08-07 10:05:26', '2022-08-16', '2022-08-20', 5, '16000.00', 'Booked'),
(11, 4, 22, '2022-08-07 10:05:26', '2022-08-16', '2022-08-20', 5, '17000.00', 'Booked'),
(12, 4, 25, '2022-08-07 10:05:26', '2022-08-16', '2022-08-20', 5, '17500.00', 'Booked'),
(13, 1, 14, '2022-08-07 10:08:51', '2022-09-08', '2022-09-10', 3, '14400.00', 'Booked'),
(14, 1, 19, '2022-08-07 10:08:51', '2022-09-27', '2022-09-29', 3, '14400.00', 'Booked'),
(15, 1, 6, '2022-08-07 10:08:51', '2022-09-27', '2022-09-29', 3, '12000.00', 'Booked'),
(17, 2, 10, '2022-08-07 10:14:35', '2022-08-10', '2022-08-12', 3, '14400.00', 'Booked'),
(18, 2, 26, '2022-08-07 10:14:35', '2022-08-24', '2022-08-26', 3, '13500.00', 'Booked'),
(19, 2, 22, '2022-08-07 10:14:35', '2022-08-24', '2022-08-26', 3, '10200.00', 'Booked'),
(20, 1, 4, '2022-08-07 11:59:04', '2022-08-11', '2022-08-17', 7, '31500.00', 'Booked'),
(21, 1, 3, '2022-08-07 11:59:04', '2022-08-13', '2022-08-17', 5, '17500.00', 'Booked'),
(22, 1, 37, '2022-08-07 11:59:04', '2022-08-13', '2022-08-17', 5, '9000.00', 'Booked'),
(27, 1, 2, '2022-08-07 15:24:43', '2022-08-07', '2022-08-07', 1, '2500.00', 'Booked'),
(28, 1, 25, '2022-08-07 15:24:43', '2022-08-07', '2022-08-07', 1, '3500.00', 'Booked'),
(29, 1, 1, '2022-08-07 15:42:39', '2022-08-07', '2022-08-07', 1, '1500.00', 'Booked'),
(30, 1, 5, '2022-08-07 15:42:39', '2022-08-07', '2022-08-07', 1, '3000.00', 'Booked'),
(33, 1, 15, '2022-08-07 17:03:39', '2022-08-07', '2022-08-07', 1, '3200.00', 'Booked'),
(34, 1, 22, '2022-08-07 17:03:39', '2022-08-07', '2022-08-07', 1, '3400.00', 'Booked'),
(35, 1, 35, '2022-08-07 17:03:39', '2022-08-07', '2022-08-07', 1, '4200.00', 'Booked'),
(36, 1, 26, '2022-08-07 17:03:39', '2022-08-07', '2022-08-07', 1, '4500.00', 'Booked'),
(37, 1, 18, '2022-08-07 17:06:41', '2022-08-07', '2022-08-07', 1, '1800.00', 'Booked'),
(38, 1, 17, '2022-08-07 17:06:41', '2022-08-07', '2022-08-07', 1, '2000.00', 'Booked'),
(39, 1, 16, '2022-08-07 17:06:41', '2022-08-07', '2022-08-07', 1, '2100.00', 'Booked'),
(42, 1, 16, '2022-08-07 17:58:09', '2022-09-09', '2022-09-10', 2, '4200.00', 'Booked'),
(43, 1, 16, '2022-08-07 17:58:09', '2022-10-04', '2022-10-07', 4, '8400.00', 'Booked'),
(44, 1, 17, '2022-08-07 17:58:09', '2022-10-04', '2022-10-07', 4, '8000.00', 'Booked'),
(46, 1, 18, '2022-08-07 18:05:51', '2022-09-10', '2022-09-13', 4, '7200.00', 'Booked'),
(50, 1, 15, '2022-08-07 18:26:54', '2022-09-09', '2022-09-10', 2, '6400.00', 'Booked'),
(51, 1, 6, '2022-08-07 18:26:54', '2022-09-09', '2022-09-10', 2, '8000.00', 'Booked'),
(52, 1, 22, '2022-08-07 18:26:54', '2022-09-09', '2022-09-10', 2, '6800.00', 'Booked'),
(54, 1, 5, '2022-08-07 18:34:00', '2022-12-29', '2023-01-03', 6, '18000.00', 'Booked'),
(55, 1, 18, '2022-08-07 18:34:00', '2022-12-29', '2023-01-04', 7, '12600.00', 'Booked'),
(56, 1, 16, '2022-08-07 18:34:00', '2022-12-29', '2023-01-04', 7, '14700.00', 'Booked'),
(59, 1, 5, '2022-08-08 01:57:12', '2022-08-10', '2022-08-13', 4, '12000.00', 'Booked'),
(60, 1, 24, '2022-08-08 01:57:12', '2022-08-17', '2022-08-22', 6, '48000.00', 'Booked'),
(61, 1, 11, '2022-08-08 01:57:12', '2022-08-15', '2022-08-20', 6, '18000.00', 'Booked'),
(63, 1, 2, '2022-08-08 08:20:57', '2022-08-08', '2022-08-08', 1, '2500.00', 'Not Booked'),
(64, 1, 7, '2022-08-08 08:21:06', '2022-08-08', '2022-08-08', 1, '5000.00', 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reserved_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `Customer_name` varchar(100) NOT NULL,
  `roomNumbers` varchar(300) NOT NULL,
  `totalBill` decimal(8,2) NOT NULL,
  `Paid_Status` varchar(20) NOT NULL DEFAULT 'Not Paid',
  PRIMARY KEY (`reserved_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserved_id`, `customer_id`, `Customer_name`, `roomNumbers`, `totalBill`, `Paid_Status`) VALUES
(1, 1, 'Laksana', 'RoomNo 1 (3 days) \n[CheckIn : 2022-08-08] [CheckOut : 2022-08-10]\n\nRoomNo 17 (6 days) \n[CheckIn : 2022-08-10] [CheckOut : 2022-08-15]\n\nRoomNo 7 (6 days) \n[CheckIn : 2022-08-10] [CheckOut : 2022-08-15]\n\n', '46500.00', 'Paid'),
(2, 2, 'Navarathan', 'RoomNo 2 (5 days) \n[CheckIn : 2022-08-10] [CheckOut : 2022-08-14]\n\nRoomNo 6 (5 days) \n[CheckIn : 2022-08-12] [CheckOut : 2022-08-16]\n\nRoomNo 19 (4 days) \n[CheckIn : 2022-08-17] [CheckOut : 2022-08-20]\n\n', '51700.00', 'Paid'),
(3, 3, 'Ajinthan', 'RoomNo 15 (5 days) \n[CheckIn : 2022-08-11] [CheckOut : 2022-08-15]\n\nRoomNo 22 (4 days) \n[CheckIn : 2022-08-12] [CheckOut : 2022-08-15]\n\nRoomNo 25 (4 days) \n[CheckIn : 2022-08-12] [CheckOut : 2022-08-15]\n\n', '43600.00', 'Paid'),
(4, 4, 'Shaayu', 'RoomNo 15 (5 days) \n[CheckIn : 2022-08-16] [CheckOut : 2022-08-20]\n\nRoomNo 22 (5 days) \n[CheckIn : 2022-08-16] [CheckOut : 2022-08-20]\n\nRoomNo 25 (5 days) \n[CheckIn : 2022-08-16] [CheckOut : 2022-08-20]\n\n', '50500.00', 'Paid'),
(5, 1, 'Laksana', 'RoomNo 14 (3 days) \n[CheckIn : 2022-09-08] [CheckOut : 2022-09-10]\n\nRoomNo 19 (3 days) \n[CheckIn : 2022-09-27] [CheckOut : 2022-09-29]\n\nRoomNo 6 (3 days) \n[CheckIn : 2022-09-27] [CheckOut : 2022-09-29]\n\n', '40800.00', 'Paid'),
(6, 2, 'Navarathan', 'RoomNo 10 (3 days) \n[CheckIn : 2022-08-10] [CheckOut : 2022-08-12]\n\nRoomNo 26 (3 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-26]\n\nRoomNo 22 (3 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-26]\n\n', '38100.00', 'Paid'),
(7, 1, 'Laksana', 'RoomNo 4 (7 days) \n[CheckIn : 2022-08-11] [CheckOut : 2022-08-17]\n\nRoomNo 3 (5 days) \n[CheckIn : 2022-08-13] [CheckOut : 2022-08-17]\n\nRoomNo 37 (5 days) \n[CheckIn : 2022-08-13] [CheckOut : 2022-08-17]\n\n', '58000.00', 'Paid'),
(8, 1, 'Laksana', 'RoomNo 6 (16 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-07]\n\nRoomNo 2 (7 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-30]\n\nRoomNo 10 (7 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-30]\n\n', '115100.00', 'Paid'),
(9, 1, 'Laksana', 'RoomNo 2 (7 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-30]\n\nRoomNo 10 (7 days) \n[CheckIn : 2022-08-24] [CheckOut : 2022-08-30]\n\n', '51100.00', 'Paid'),
(10, 1, 'Laksana', 'RoomNo 2 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 25 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '6000.00', 'Paid'),
(11, 1, 'Laksana', 'RoomNo 1 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 5 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '4500.00', 'Paid'),
(12, 1, 'Laksana', 'RoomNo 1 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 5 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '4500.00', 'Paid'),
(13, 1, 'Laksana', 'RoomNo 6 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 10 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '8800.00', 'Paid'),
(14, 1, 'Laksana', 'RoomNo 6 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 10 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '8800.00', 'Paid'),
(15, 1, 'Laksana', 'RoomNo 15 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 22 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 35 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 26 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '15300.00', 'Paid'),
(16, 1, 'Laksana', 'RoomNo 18 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 17 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\nRoomNo 16 (1 days) \n[CheckIn : 2022-08-07] [CheckOut : 2022-08-07]\n\n', '5900.00', 'Paid'),
(17, 1, 'Laksana', 'RoomNo 16 (2 days) \n[CheckIn : 2022-09-09] [CheckOut : 2022-09-10]\n\nRoomNo 16 (4 days) \n[CheckIn : 2022-10-04] [CheckOut : 2022-10-07]\n\nRoomNo 17 (4 days) \n[CheckIn : 2022-10-04] [CheckOut : 2022-10-07]\n\n', '20600.00', 'Paid'),
(18, 1, 'Laksana', 'RoomNo 18 (4 days) \n[CheckIn : 2022-09-10] [CheckOut : 2022-09-13]\n\n', '7200.00', 'Paid'),
(19, 1, 'Laksana', 'RoomNo 15 (2 days) \n[CheckIn : 2022-09-09] [CheckOut : 2022-09-10]\n\nRoomNo 6 (2 days) \n[CheckIn : 2022-09-09] [CheckOut : 2022-09-10]\n\nRoomNo 22 (2 days) \n[CheckIn : 2022-09-09] [CheckOut : 2022-09-10]\n\n', '21200.00', 'Paid'),
(20, 1, 'Laksana', 'RoomNo 5 (6 days) \n[CheckIn : 2022-12-29] [CheckOut : 2023-01-03]\n\nRoomNo 18 (7 days) \n[CheckIn : 2022-12-29] [CheckOut : 2023-01-04]\n\nRoomNo 16 (7 days) \n[CheckIn : 2022-12-29] [CheckOut : 2023-01-04]\n\n', '45300.00', 'Paid'),
(21, 1, 'Laksana', 'RoomNo 5 (4 days) \n[CheckIn : 2022-08-10] [CheckOut : 2022-08-13]\n\nRoomNo 24 (6 days) \n[CheckIn : 2022-08-17] [CheckOut : 2022-08-22]\n\nRoomNo 11 (6 days) \n[CheckIn : 2022-08-15] [CheckOut : 2022-08-20]\n\n', '78000.00', 'Paid'),
(22, 1, 'Laksana', 'RoomNo 2 (1 days) \n[CheckIn : 2022-08-08] [CheckOut : 2022-08-08]\n\nRoomNo 7 (1 days) \n[CheckIn : 2022-08-08] [CheckOut : 2022-08-08]\n\n', '7500.00', 'Not paid');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `roomNo` int(11) NOT NULL AUTO_INCREMENT,
  `acStatus` varchar(20) NOT NULL,
  `roomType` varchar(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `availability` varchar(10) NOT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomNo`, `acStatus`, `roomType`, `price`, `availability`) VALUES
(1, 'Non AC', 'Single', '1500.00', 'No'),
(2, 'Non AC', 'Double', '2500.00', 'No'),
(3, 'Non AC', 'Triple', '3500.00', 'YES'),
(4, 'Non AC', 'Quad', '4500.00', 'YES'),
(5, 'AC', 'Single', '3000.00', 'YES'),
(6, 'AC', 'Double', '4000.00', 'YES'),
(7, 'AC', 'Triple', '5000.00', 'No'),
(8, 'AC', 'Quad', '7500.00', 'YES'),
(10, 'AC', 'Double', '4800.00', 'YES'),
(11, 'AC', 'Double', '3000.00', 'YES'),
(13, 'Non AC', 'Quad', '5300.00', 'YES'),
(14, 'Non AC', 'Quad', '4800.00', 'YES'),
(15, 'Non AC', 'Double', '3200.00', 'YES'),
(16, 'Non AC', 'Single', '2100.00', 'YES'),
(17, 'AC', 'Single', '2000.00', 'YES'),
(18, 'Non AC', 'Single', '1800.00', 'YES'),
(19, 'Non AC', 'Triple', '4800.00', 'YES'),
(20, 'Non AC', 'Quad', '5200.00', 'YES'),
(21, 'AC', 'Single', '2300.00', 'YES'),
(22, 'AC', 'Double', '3400.00', 'YES'),
(23, 'Non AC', 'Triple', '6300.00', 'YES'),
(24, 'Non AC', 'Quad', '8000.00', 'YES'),
(25, 'Non AC', 'Double', '3500.00', 'YES'),
(26, 'AC', 'Double', '4500.00', 'YES'),
(27, 'AC', 'Single', '3000.00', 'YES'),
(28, 'Non AC', 'Triple', '4800.00', 'YES'),
(29, 'Non AC', 'Quad', '4600.00', 'YES'),
(30, 'Non AC', 'Triple', '5600.00', 'YES'),
(31, 'Non AC', 'Quad', '6400.00', 'YES'),
(32, 'AC', 'Single', '3000.00', 'YES'),
(33, 'AC', 'Single', '3000.00', 'YES'),
(34, 'AC', 'Single', '3500.00', 'YES'),
(35, 'AC', 'Double', '4200.00', 'YES'),
(36, 'AC', 'Quad', '4300.00', 'YES'),
(37, 'AC', 'Single', '1800.00', 'YES'),
(38, 'Non AC', 'Double', '4200.00', 'YES'),
(40, 'Non AC', 'Triple', '4200.00', 'YES'),
(44, 'AC', 'Quad', '6700.00', 'YES'),
(54, 'AC', 'Single', '4500.00', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `phone_no`, `username`, `password`) VALUES
(1, 'Laksana', 'Sivakumaran', 'luxsasiva@gmail.com', '0776668890', 'Laksana', '2119eb59afc81b22cf8a4298047f9723'),
(2, 'Uthayakumar', 'Navarathan', 'navaa@gmail.com', '0778865430', 'Navarathan', '2119eb59afc81b22cf8a4298047f9723'),
(3, 'Satkunarasa', 'Ajinthan', 'aji@gmail.com', '07788665544', 'Ajinthan', '2119eb59afc81b22cf8a4298047f9723'),
(4, 'Srishaayu', 'Balasurian', 'saayu@gmail.com', '0765432459', 'Shaayu', '2119eb59afc81b22cf8a4298047f9723'),
(5, 'Pooja', 'Sabesan', 'pooja@gmail.com', '0786545678', 'Pooja', '2119eb59afc81b22cf8a4298047f9723'),
(6, 'Balachandiran', 'Thinusan', 'thinu@gmail.com', '0712345678', 'Thinusan', '2119eb59afc81b22cf8a4298047f9723'),
(7, 'Duxsana', 'Saantharasa', 'dux@gmail.com', '0786545678', 'Duxsana', '2119eb59afc81b22cf8a4298047f9723'),
(9, 'Kiruthika', 'Mohan', 'kiru@gmail.com', '0776655443', 'Kiruthika', '2119eb59afc81b22cf8a4298047f9723'),
(10, 'Dhivya', 'Devaranjan', 'dhivya@gmail.com', '0778833224', 'Dhivya', '2119eb59afc81b22cf8a4298047f9723'),
(11, 'Arunan', 'Thavam', 'arun@gmail.com', '0776655434', 'Arunan1', '2119eb59afc81b22cf8a4298047f9723');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_details`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_details`;
CREATE TABLE IF NOT EXISTS `view_details` (
);

-- --------------------------------------------------------

--
-- Structure for view `view_details`
--
DROP TABLE IF EXISTS `view_details`;

DROP VIEW IF EXISTS `view_details`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_details`  AS SELECT `rooms`.`roomNo` AS `roomNo`, `rooms`.`acStatus` AS `acStatus`, `rooms`.`luxuryStatus` AS `luxuryStatus`, `rooms`.`price` AS `price`, `rooms`.`availability` AS `availability` FROM `rooms` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`roomNo`) REFERENCES `rooms` (`roomNo`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
