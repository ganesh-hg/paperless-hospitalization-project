-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 08:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'admin', 'admin', '123456789', 'Active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `roomid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(1, '', 2, 0, 13, '2021-06-21', '14:03:00', 37, 'Approved', 'Need medicine on diabetes'),
(2, '', 3, 0, 11, '2021-06-13', '03:49:00', 45, 'Approved', 'rr'),
(3, 'ONLINE', 4, 0, 11, '2021-06-18', '14:10:00', 35, 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`, `discharge_time`, `discharge_date`) VALUES
(5, 47, 94, '2016-03-23', '10:12:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(6, 7, 78, '2016-03-23', '08:21:22', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(7, 7, 95, '2016-03-23', '08:54:33', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(8, 45, 96, '2016-03-23', '08:56:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(9, 22, 61, '2016-03-23', '09:57:39', 0.00, 0.00, '0 , 0 ,  ,  , ', '09:48:21', '2016-03-27'),
(10, 48, 97, '2016-03-25', '10:06:57', 1370.00, 0.00, 'Test discount reason , test bal amt , test bal amt , test bal amt , test bal amt , test reason , test reason0', '02:59:17', '2016-03-25'),
(11, 42, 90, '2016-03-25', '10:11:59', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(12, 0, 0, '0000-00-00', '00:00:00', 100.00, 0.00, 'kkkk , ', '04:13:27', '2018-04-03'),
(13, 0, 0, '0000-00-00', '00:00:00', 100.00, 0.00, 'kkkk , ', '04:13:27', '2018-04-03'),
(14, 7, 105, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(15, 53, 106, '0000-00-00', '00:00:00', 0.00, 0.00, 'l , ', '07:46:14', '2018-04-03'),
(16, 50, 101, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(17, 22, 76, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(18, 9, 107, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(19, 7, 108, '0000-00-00', '00:00:00', 0.00, 0.00, ' ,  , patient died ,  , ', '01:46:41', '2018-03-17'),
(20, 54, 109, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(21, 23, 65, '2018-03-24', '13:29:51', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(22, 22, 77, '2018-03-24', '14:53:12', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(23, 0, 103, '2018-03-24', '14:53:45', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(24, 43, 91, '2018-03-24', '15:19:16', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(25, 56, 110, '2018-03-27', '09:44:13', 0.00, 0.00, 'lll , ', '04:14:13', '2018-04-03'),
(26, 40, 79, '2018-03-30', '15:12:42', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(27, 22, 80, '2018-04-03', '09:44:21', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(28, 22, 81, '2018-04-03', '09:52:34', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(29, 22, 82, '2018-04-03', '15:10:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(30, 44, 111, '2018-04-04', '09:06:39', 0.00, 0.00, ' ,  ,  ,  , ', '00:00:00', '0000-00-00'),
(31, 44, 112, '2018-04-04', '09:47:26', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(32, 7, 113, '2018-04-04', '09:57:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(33, 7, 114, '2018-04-04', '10:02:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(34, 7, 116, '2018-04-04', '10:11:49', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(35, 7, 117, '2018-04-04', '12:03:12', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(36, 9, 118, '2018-04-04', '13:20:28', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(37, 56, 119, '2018-04-06', '03:26:19', 0.00, 0.00, ' ,  , ', '00:00:00', '0000-00-00'),
(38, 57, 120, '2018-07-12', '21:13:33', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(39, 22, 83, '2021-06-09', '07:02:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(40, 41, 87, '2021-06-09', '09:00:31', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(41, 59, 123, '2021-06-09', '19:33:05', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(42, 60, 122, '2021-06-09', '19:44:24', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(43, 58, 121, '2021-06-09', '21:29:14', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(44, 2, 1, '2021-06-13', '19:38:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(45, 3, 2, '2021-06-13', '20:15:49', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE `billing_records` (
  `billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 6, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(2, 6, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(3, 6, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(4, 6, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(5, 6, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(6, 7, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(7, 7, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(8, 7, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(9, 7, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(10, 7, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(11, 8, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(12, 8, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(13, 8, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(14, 8, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(15, 8, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(16, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(17, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(18, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(19, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(20, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(21, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(22, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(23, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(24, 10, 15, 'Room Rent', 500.00, '2016-03-25', 'Active'),
(25, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(26, 10, 35, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(27, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(28, 10, 13, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(30, 10, 28, 'Prescription Charge for Treatment for Malaria', 1190.00, '2016-03-25', 'Active'),
(31, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(32, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(33, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(34, 10, 12, 'Service Charge', 300.00, '2016-03-25', 'Active'),
(35, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(36, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(37, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(38, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(39, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(40, 9, 36, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(41, 9, 37, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(42, 9, 38, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(43, 7, 39, 'Prescription Charge', 100.00, '0000-00-00', 'Active'),
(44, 7, 40, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(45, 9, 41, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(46, 9, 42, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(47, 9, 43, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(48, 9, 44, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(49, 9, 45, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(50, 9, 46, 'Prescription Charge', 11111.00, '0000-00-00', 'Active'),
(51, 15, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(52, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(53, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(54, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(55, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(56, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(57, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(58, 15, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(59, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(60, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(61, 16, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(62, 16, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(63, 16, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(64, 17, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(65, 14, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(66, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(67, 17, 47, 'Prescription Charge', 231.00, '0000-00-00', 'Active'),
(68, 18, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(69, 14, 48, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(70, 14, 49, 'Prescription Charge', 70.00, '0000-00-00', 'Active'),
(71, 19, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(72, 19, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(73, 19, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(74, 17, 50, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(75, 17, 51, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(76, 19, 52, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(77, 5, 53, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(78, 19, 54, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(79, 5, 55, 'Prescription Charge', 45.00, '0000-00-00', 'Active'),
(80, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(81, 19, 15, 'Treatment', 554.00, '0000-00-00', 'Active'),
(82, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(83, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(84, 12, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(85, 20, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(86, 20, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(87, 20, 11, 'Service Charge', 1000.00, '2018-03-17', 'Active'),
(88, 20, 57, 'Prescription Charge', 80.00, '0000-00-00', 'Active'),
(89, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(90, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(91, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(92, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(93, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(94, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(95, 19, 38, 'Consultancy Charge', 200.00, '2014-11-13', 'Active'),
(96, 19, 14, 'Treatment', 20000.00, '2014-11-13', 'Active'),
(97, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(98, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(99, 19, 38, 'Consultancy Charge', 200.00, '2018-03-17', 'Active'),
(100, 19, 14, 'Treatment', 20000.00, '2018-03-17', 'Active'),
(101, 21, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(102, 21, 13, 'Treatment', 450.00, '2018-03-24', 'Active'),
(103, 24, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(104, 24, 14, 'Treatment', 20000.00, '2018-03-24', 'Active'),
(105, 21, 60, 'Prescription Charge', 75.00, '2018-03-24', 'Active'),
(106, 24, 35, 'Consultancy Charge', 700.00, '2018-03-26', 'Active'),
(107, 24, 13, 'Treatment', 450.00, '2018-03-26', 'Active'),
(108, 24, 37, 'Prescription Charge', 20.00, '2018-03-26', 'Active'),
(109, 25, 16, 'Room Rent', 100.00, '2018-03-27', 'Active'),
(110, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(111, 25, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(112, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(113, 25, 19, 'Treatment', 4000.00, '2018-03-27', 'Active'),
(114, 8, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(115, 8, 15, 'Treatment', 554.00, '2018-03-27', 'Active'),
(116, 19, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(117, 19, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(118, 5, 38, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(119, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(120, 18, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(121, 18, 39, 'Prescription Charge', 100.00, '2018-03-27', 'Active'),
(122, 18, 40, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(123, 18, 41, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(124, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(125, 18, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(126, 18, 42, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(127, 5, 36, 'Consultancy Charge', 500.00, '2018-03-27', 'Active'),
(128, 5, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(129, 5, 43, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(130, 19, 46, 'Prescription Charge', 0.00, '2018-03-28', 'Active'),
(131, 19, 48, 'Prescription Charge', 0.00, '2018-03-30', 'Active'),
(132, 19, 49, 'Prescription Charge', 70.00, '2018-03-30', 'Active'),
(133, 19, 50, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(134, 19, 51, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(135, 19, 52, 'Prescription Charge', 20.00, '2018-03-30', 'Active'),
(136, 19, 53, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(137, 19, 54, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(138, 12, 55, 'Prescription Charge', 45.00, '2018-03-31', 'Active'),
(139, 12, 56, 'Prescription Charge', 50.00, '2018-03-31', 'Active'),
(140, 12, 57, 'Prescription Charge', 80.00, '2018-03-31', 'Active'),
(141, 25, 58, 'Prescription Charge', 70.00, '2018-03-31', 'Active'),
(142, 25, 59, 'Prescription Charge', 100.00, '2018-03-31', 'Active'),
(143, 20, 60, 'Prescription Charge', 75.00, '2018-03-31', 'Active'),
(144, 19, 61, 'Prescription Charge', 20.00, '2018-03-31', 'Active'),
(145, 19, 63, 'Prescription Charge', 20.00, '2018-04-03', 'Active'),
(146, 10, 64, 'Prescription Charge', 25.00, '2018-04-03', 'Active'),
(147, 19, 68, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(148, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(149, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(150, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(151, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(152, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(153, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(154, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(155, 29, 69, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(156, 19, 70, 'Prescription Charge', 75.00, '2018-04-03', 'Active'),
(157, 19, 71, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(158, 19, 74, 'Prescription Charge', 0.00, '2018-04-03', 'Active'),
(159, 19, 75, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(160, 23, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(161, 18, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(162, 18, 15, 'Treatment', 554.00, '2018-04-03', 'Active'),
(163, 19, 76, 'Prescription Charge', 225.00, '2018-04-03', 'Active'),
(164, 19, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(165, 19, 13, 'Treatment', 450.00, '2018-04-03', 'Active'),
(166, 5, 77, 'Prescription Charge', 965.00, '2018-04-04', 'Active'),
(167, 30, 16, 'Room Rent', 100.00, '2018-04-04', 'Active'),
(168, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(169, 30, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(170, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(171, 30, 17, 'Treatment', 5653.00, '2018-04-04', 'Active'),
(172, 30, 78, 'Prescription Charge', 320.00, '2018-04-04', 'Active'),
(173, 30, 79, 'Prescription Charge', 0.00, '2018-04-04', 'Active'),
(174, 31, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(175, 31, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(176, 31, 10, 'Service Charge', 250.00, '2018-04-04', 'Active'),
(177, 34, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(178, 34, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(179, 34, 80, 'Prescription Charge', 250.00, '2018-04-04', 'Active'),
(180, 35, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(181, 35, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(182, 37, 35, 'Consultancy Charge', 700.00, '2018-04-06', 'Active'),
(183, 37, 13, 'Treatment', 450.00, '2018-04-06', 'Active'),
(184, 37, 81, 'Prescription Charge', 100.00, '2018-04-06', 'Active'),
(185, 35, 82, 'Prescription Charge', 0.00, '2018-04-06', 'Active'),
(186, 35, 83, 'Prescription Charge', 50.00, '2018-04-06', 'Active'),
(187, 35, 84, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(188, 12, 85, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(189, 15, 86, 'Prescription Charge', 325.00, '2018-04-07', 'Active'),
(190, 15, 87, 'Prescription Charge', 800.00, '2018-04-07', 'Active'),
(191, 12, 88, 'Prescription Charge', 150.00, '2018-04-07', 'Active'),
(192, 29, 89, 'Prescription Charge', 550.00, '2018-04-07', 'Active'),
(193, 35, 90, 'Prescription Charge', 0.00, '2018-04-07', 'Active'),
(194, 29, 91, 'Prescription Charge', 450.00, '2018-04-08', 'Active'),
(195, 29, 92, 'Prescription Charge', 1125.00, '2018-04-08', 'Active'),
(196, 29, 93, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(197, 29, 94, 'Prescription Charge', 1700.00, '2018-04-08', 'Active'),
(198, 29, 95, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(199, 29, 96, 'Prescription Charge', 1450.00, '2018-04-08', 'Active'),
(200, 29, 97, 'Prescription Charge', 650.00, '2018-04-08', 'Active'),
(201, 38, 35, 'Consultancy Charge', 700.00, '2018-07-12', 'Active'),
(202, 38, 14, 'Treatment', 20000.00, '2018-07-12', 'Active'),
(203, 38, 98, 'Prescription Charge', 0.00, '2018-07-12', 'Active'),
(204, 38, 99, 'Prescription Charge', 350.00, '2018-07-12', 'Active'),
(205, 39, 36, 'Consultancy Charge', 500.00, '2021-06-09', 'Active'),
(206, 39, 14, 'Treatment', 20000.00, '2021-06-09', 'Active'),
(207, 23, 100, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(208, 23, 101, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(209, 23, 102, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(210, 23, 103, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(211, 40, 36, 'Consultancy Charge', 500.00, '2021-06-09', 'Active'),
(212, 40, 14, 'Treatment', 20000.00, '2021-06-09', 'Active'),
(213, 23, 104, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(214, 23, 105, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(215, 41, 106, 'Prescription Charge', 0.00, '2021-06-09', 'Active'),
(216, 42, 36, 'Consultancy Charge', 500.00, '2021-06-09', 'Active'),
(217, 42, 13, 'Treatment', 450.00, '2021-06-09', 'Active'),
(218, 43, 36, 'Consultancy Charge', 500.00, '2021-06-09', 'Active'),
(219, 43, 15, 'Treatment', 554.00, '2021-06-09', 'Active'),
(220, 43, 13, 'Treatment', 450.00, '2021-06-09', 'Active'),
(221, 44, 37, 'Consultancy Charge', 300.00, '2021-06-13', 'Active'),
(222, 44, 20, 'Treatment', 3000.00, '2021-06-13', 'Active'),
(223, 45, 36, 'Consultancy Charge', 500.00, '2021-06-13', 'Active'),
(224, 45, 21, 'Treatment', 500.00, '2021-06-13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(11, 'Physician', 'All type of disease', 'Active'),
(12, 'Children doctor', 'All kinds of disease', 'Active'),
(13, 'General Medicine', 'General doctor', 'Active'),
(14, 'ENT Specialist', 'Ear, Nose and Tongue Doctor', 'Active'),
(15, 'Neurologist', 'Related neurons, bones', 'Active'),
(16, 'Surgery', 'Includes plastic surgery, brain and neurology surgery', 'Active'),
(17, 'Pediatrics(Child)', 'Pediatrics doctor', 'Active'),
(18, 'Pharmacy', 'Providing patients with medicines prescribed by specialist physicians', 'Active'),
(19, 'Laboratory and Blood bank', 'Includes detailed lab investigations and blood bank are developing considerably as per international standards  ', 'Active'),
(20, 'Physiotherapy', 'Includes services to specialized clinic inpatients who are referred by hospital physicians or primary health care clinics.', 'Active'),
(45, 'Radiologist(MRI)', 'Body MRI Scan and other Scans', 'Active'),
(46, 'Opthalmologist(Eye Spc)', 'Eye Specialist', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(35, 'Lokesh Yadav', '9812453678', 11, 'doctor', '123456789', 'Active', 'MBBS,MD,IDCCM', 7.0, 700.00),
(36, 'Sandeep H S', '8966643980', 12, 'doctor1', '123456789', 'Active', 'MBBS,MD', 5.0, 500.00),
(37, 'Shivam Bhat', '7894561230', 13, 'doctor2', '123456789', 'Active', 'MBBS,DNB(ORTHO)', 9.0, 300.00),
(39, 'Divya Wagh', '8756332456', 15, 'doctor4', '123456789', 'Active', 'MBBS,DNB', 5.0, 250.00),
(40, 'Rashmika Pawar', '9876543210', 16, 'doctor5', '123456789', 'Active', 'MBBS,MD', 7.0, 150.00),
(41, 'chaitanya Pawar', '8785674654', 17, 'doctor6', '123456789', 'Active', 'MBBS,DA', 5.0, 100.00),
(42, 'kamala bhat', '9216549870', 18, 'doctor7', '123456789', 'Active', 'MBBS', 4.0, 250.00),
(43, 'Raam Kadam', '9008713415', 19, 'doctor8', '123456789', 'Active', 'MBBS', 5.0, 122.00),
(44, 'Sai kiran', '8548874216', 20, 'doctor9', '123456789', 'Active', 'BAMS', 5.0, 50.00),
(45, 'Mahesh Gupta', '9985633225', 11, 'maheshkrishna', '123456789', 'Active', 'MBBS', 5.0, 200.00),
(46, 'Rupesh Patil', '889655884', 12, 'rupesh', '123456789', 'Active', 'MBBS', 5.0, 250.00),
(62, 'Amir Pawar', '7745890811', 17, 'amir', 'amirpawar123', 'Active', 'Pediatrics', 3.0, 200.00),
(63, 'Ganesh Hale', '9112369139', 15, 'ganesh', 'ganesh123', 'Active', 'Neurologist', 6.0, 800.00),
(64, 'Mayur Bahiram', '9168996816', 19, 'mayur', 'mayur123', 'Active', 'BLMT', 3.0, 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '', 'Active'),
(18, 36, '13:30:00', '17:00:00', '', 'Active'),
(20, 38, '17:00:00', '21:00:00', '', 'Active'),
(21, 39, '13:00:00', '19:00:00', '', 'Active'),
(22, 40, '07:00:00', '11:00:00', '', 'Active'),
(23, 41, '13:30:00', '16:30:00', '', 'Active'),
(24, 42, '11:30:00', '14:30:00', '', 'Active'),
(25, 43, '12:30:00', '16:30:00', '', 'Active'),
(26, 44, '21:30:00', '12:30:00', '', 'Active'),
(27, 36, '01:03:00', '13:03:00', '', 'Active'),
(28, 61, '11:11:00', '19:07:00', '', 'Active'),
(29, 35, '11:11:00', '16:44:00', '', 'Active'),
(30, 35, '01:10:00', '16:11:00', '', 'Active'),
(31, 35, '01:02:00', '15:04:00', '2018-03-26', 'Active'),
(32, 37, '10:00:00', '17:00:00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'ABC', 20.00, 'test abc', 'Active'),
(3, 'xtz', 25.00, 'test abc', 'Active'),
(4, 'NYX', 50.00, 'test abc', 'Active'),
(5, 'Colpol', 30.00, 'test abc', 'Active'),
(7, 'Dolo 650', 120.00, 'High Fever', 'Active'),
(8, 'Paracitomol', 10.00, 'Fever, Cold & headache', 'Active'),
(9, 'Azithromycin', 15.00, 'Throat infection ', 'Active'),
(10, 'amox 500mg', 21.00, 'Antibiotic', 'Active'),
(11, 'Citrisin', 10.00, 'Cold', 'Active'),
(12, 'Diclofenac', 20.00, 'Pain killer', 'Active'),
(13, 'Zincobit', 35.00, 'Vitamin', 'Active'),
(14, 'Prazaloe', 10.00, 'Acidity', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `prescriptionid` int(10) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv_no` varchar(5) NOT NULL,
  `expdate` date NOT NULL,
  `card_holder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `patientid`, `doctorid`, `prescriptionid`, `orderdate`, `deliverydate`, `address`, `mobileno`, `note`, `status`, `payment_type`, `card_no`, `cvv_no`, `expdate`, `card_holder`) VALUES
(17, 7, 0, 0, '2016-03-01', '2016-03-05', ' shivajinagar, Ujire', '9874561230', '', 'Active', '', '', '', '0000-00-00', ''),
(18, 9, 0, 0, '2016-03-03', '2016-03-25', ' Bajpe', '8785674625', '', 'Active', '', '', '', '0000-00-00', ''),
(19, 22, 0, 0, '2016-03-15', '2016-03-26', ' Kadri, Mangalore', '8756332456', '', 'Active', '', '', '', '0000-00-00', ''),
(20, 23, 0, 0, '2016-03-07', '2016-03-10', ' Perla, Ujire', '9449443117', '', 'Active', '', '', '', '0000-00-00', ''),
(21, 36, 0, 0, '2016-03-16', '2016-03-22', ' Ujire', '9449678831', '', 'Active', '', '', '', '0000-00-00', ''),
(22, 36, 0, 72, '0000-00-00', '2018-04-03', '3rd floor, city light buildin ', '8874563210', '', 'Active', '', '', '', '0000-00-00', ''),
(23, 48, 0, 73, '0000-00-00', '2018-03-27', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Active', '', '', '', '0000-00-00', ''),
(24, 48, 0, 0, '2016-03-27', '2018-03-17', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Pending', '', '', '', '0000-00-00', ''),
(25, 48, 37, 32, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(26, 48, 37, 33, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(27, 48, 37, 35, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(28, 7, 35, 56, '0000-00-00', '2018-03-17', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' xxx', 'Active', '', '', '', '0000-00-00', ''),
(29, 7, 35, 58, '2018-03-19', '2018-03-21', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' xxx', 'Active', '', '', '', '0000-00-00', ''),
(30, 7, 35, 59, '2018-03-21', '2018-03-27', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' trfrbgb', 'Active', '', '', '', '0000-00-00', ''),
(31, 22, 35, 44, '2018-03-27', '2018-03-28', '  kuvempu nagar ', '8756332456', ' hhhhh', 'Active', '', '', '', '0000-00-00', ''),
(32, 7, 35, 45, '2018-03-28', '2018-03-28', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' fffff', 'Active', '', '', '', '0000-00-00', ''),
(33, 41, 35, 47, '2018-03-30', '2018-03-31', '34rd floor ', '78978978979', ' hiiiii', 'Delivered', '', '', '', '0000-00-00', ''),
(34, 41, 35, 67, '2018-03-31', '0000-00-00', '34rd floor ', '78978978979', ' Kindly provide prescription', 'Active', '', '', '', '0000-00-00', ''),
(35, 41, 36, 57, '2018-03-31', '2018-03-31', '34rd floor ', '78978978979', ' tt', 'Delivered', '', '', '', '0000-00-00', ''),
(36, 7, 35, 62, '2018-03-31', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' mmmm', 'Active', '', '', '', '0000-00-00', ''),
(37, 7, 35, 65, '2018-04-03', '2018-04-03', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvv', 'Delivered', '', '', '', '0000-00-00', ''),
(38, 7, 0, 71, '2018-04-03', '2018-04-03', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' ddd', 'Delivered', '', '', '', '0000-00-00', ''),
(39, 7, 0, 0, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvvv', 'Pending', '', '', '', '0000-00-00', ''),
(40, 7, 0, 75, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' kkkk', 'Pending', '', '', '', '0000-00-00', ''),
(41, 7, 0, 74, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' lbbnbjbj', 'Pending', '', '', '', '0000-00-00', ''),
(42, 7, 0, 90, '2018-04-06', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' gggg', 'Pending', '', '', '', '0000-00-00', ''),
(43, 7, 0, 83, '2018-04-06', '2018-04-06', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' zzzzzz', 'Delivered', '', '', '', '0000-00-00', ''),
(44, 7, 0, 82, '2018-04-06', '2018-04-06', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvvvvvvvv', 'Delivered', '', '', '', '0000-00-00', ''),
(45, 7, 35, 84, '2018-04-06', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' nmmmm', 'Pending', '', '', '', '0000-00-00', ''),
(46, 52, 35, 85, '2018-04-06', '2018-04-07', 'sachin ', '966555665', ' zz', 'Delivered', '', '', '', '0000-00-00', ''),
(47, 53, 35, 87, '2018-04-07', '2018-04-07', 'puttur ', '1234512345', ' Kindly send me prescription', 'Delivered', '', '', '', '0000-00-00', ''),
(48, 52, 35, 88, '2018-04-07', '2018-04-07', 'sachin ', '966555665', ' ffff', 'Delivered', '', '', '', '0000-00-00', ''),
(50, 22, 35, 91, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' test', 'Delivered', 'CREDIT CARD', '1231231231231231', '254', '2018-05-01', 'Raj kiran'),
(51, 22, 35, 92, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' please deliver it', 'Paid', 'VISA', '1231231231231232', '232', '2018-04-01', 'Raj kiran'),
(52, 22, 35, 94, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' te', 'Pending', '', '', '', '0000-00-00', ''),
(53, 22, 35, 95, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' test', 'Pending', '', '', '', '0000-00-00', ''),
(54, 22, 35, 96, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' ttest', 'Delivered', 'VISA', '1234567890123456', '122', '2018-04-01', 'Raj kiran'),
(55, 22, 35, 97, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' helllo', 'Delivered', 'DEBIT CARD', '2178945612345678', '457', '2019-01-01', 'Raj kiran');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(1, 'Ravi Shinde', '2021-06-13', '19:12:07', 'at.post. Pune, agarwadi', '9422667217', 'Pune', '406301', 'Ravi', 'ravi1234', 'B+', 'MALE', '1995-10-03', 'Active'),
(2, 'kalpesh chaudhari', '2021-06-13', '19:37:24', 'jawhar', '9096978032', 'jawhar', '', 'kalpesh', 'kalpesh123', '', 'Male', '1997-08-11', 'Active'),
(3, 'kalpesh chaudhari', '2021-06-13', '20:15:24', 'jawhar', '9096978032', 'jawhar', '', 'kalpesh', 'kalpesh123', '', 'Male', '1997-08-11', 'Active'),
(4, 'kalpesh chaudhari', '2021-06-16', '20:47:40', 'jawhar', '9096978032', 'jawhar', '', 'kalpesh', 'kalpesh123', '', 'Male', '1997-08-11', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `cvvno` int(5) NOT NULL,
  `expdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(26, 15, 'Arthopan', 30.00, 10, '1-0-1', 'Active'),
(27, 16, 'Ecospirin', 11.00, 10, '1-1-1', 'Active'),
(28, 17, 'Dolo-60', 15.00, 5, '0-0-1', 'Active'),
(29, 18, 'Fenon-650', 500.00, 20, '0-1-1', 'Active'),
(30, 19, 'Rantac', 10.00, 10, '0-1-0', 'Active'),
(31, 20, 'Colpol', 25.00, 6, '1-1-1', ''),
(32, 20, 'Cinox', 85.00, 5, '1-1-1', ''),
(33, 21, 'Crosin DS', 45.00, 10, '0-1-1', ''),
(34, 23, 'glocu', 500.00, 6, '1-0-1', ''),
(35, 23, 'diodine', 60.00, 10, '1-1-1', ''),
(36, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(40, 24, 'glocu', 500.00, 4, '1-0-1', ''),
(41, 24, 'diodine', 500.00, 34, '1-0-1', ''),
(43, 22, 'tin', 3.00, 5, '1-1-1', ''),
(44, 28, 'appsa', 500.00, 3, '1-0-1', ''),
(45, 28, 'novas', 30.00, 4, '1-1-1', ''),
(51, 32, 'ppr', 900.00, 4, '1-1-0', ''),
(52, 33, 'abc', 90.00, 3, '1-0-1', ''),
(53, 33, 'xyz', 500.00, 90, '1-1-1', ''),
(54, 35, 'omani', 900.00, 3, '1-0-1', ''),
(62, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(63, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(64, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(65, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(66, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(67, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(68, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(69, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(70, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(71, 37, '1', 20.00, 5, '0-1-0', 'Active'),
(72, 39, '1', 20.00, 1, '1-1-1', 'Active'),
(73, 39, '5', 30.00, 4, '1-1-0', 'Active'),
(74, 39, '4', 50.00, 1, '1-1-1', 'Active'),
(75, 40, '1', 20.00, 9, '1-1-0', 'Active'),
(76, 42, '1', 20.00, 1, '1-1-0', 'Active'),
(77, 43, '1', 20.00, 12, '0-1-1', 'Active'),
(78, 44, 'eeee', 55.00, 3, '1-1-1', ''),
(79, 45, 'ddd', 33.00, 2, '1-1-1', ''),
(80, 49, '1', 20.00, 3, '1-1-0', 'Active'),
(81, 49, '6', 50.00, 8, '1-0-1', 'Active'),
(82, 50, '1', 20.00, 8, '', 'Active'),
(83, 50, '5', 30.00, 7, '', 'Active'),
(84, 51, '5', 30.00, 7, '1-1-1', 'Active'),
(85, 52, '1', 20.00, 2, '0-0-1', 'Active'),
(86, 53, '6', 50.00, 3, '1-1-1', 'Active'),
(87, 54, '5', 30.00, 4, '1-1-1', 'Active'),
(88, 55, '1', 20.00, 10, '0-0-1', 'Active'),
(89, 55, '3', 25.00, 4, '1-0-1', 'Active'),
(92, 57, '4', 50.00, 1, '0-1-1', 'Active'),
(93, 57, '5', 30.00, 10, '0-1-1', 'Active'),
(94, 58, '1', 20.00, 1, '0-1-1', 'Active'),
(95, 58, '4', 50.00, 1, '1-1-1', 'Active'),
(96, 59, '4', 50.00, 3, '1-1-0', 'Active'),
(97, 59, '6', 50.00, 4, '1-0-1', 'Active'),
(98, 60, '4', 50.00, 3, '0-1-1', 'Active'),
(99, 60, '3', 25.00, 4, '0-1-1', 'Active'),
(100, 61, '1', 20.00, 3, '1-1-1', 'Active'),
(101, 63, '1', 20.00, 2, '1-1-0', 'Active'),
(102, 64, '3', 25.00, 1, '0-1-1', 'Active'),
(103, 66, 'eeee', 20.00, 5, '0-1-1', ''),
(104, 68, '1', 20.00, 2, '1-1-0', 'Active'),
(105, 69, '1', 20.00, 10, '0-0-1', 'Active'),
(106, 69, '4', 50.00, 1, '1-1-1', 'Active'),
(107, 68, '4', 50.00, 13, '1-0-1', 'Active'),
(108, 70, '4', 50.00, 1, '1-1-0', 'Active'),
(109, 70, '3', 25.00, 3, '0-1-1', 'Active'),
(110, 71, '6', 50.00, 2, '1-1-0', 'Active'),
(111, 75, '6', 50.00, 2, '0-1-1', 'Active'),
(112, 76, '3', 25.00, 2, '0-1-0', 'Active'),
(113, 77, '1', 20.00, 10, '0-1-1', 'Active'),
(114, 77, '6', 50.00, 10, '1-1-0', 'Active'),
(115, 77, '3', 25.00, 3, '1-1-1', 'Active'),
(116, 77, '5', 30.00, 3, '1-1-0', 'Active'),
(117, 77, '6', 50.00, 2, '0-1-1', 'Active'),
(118, 78, '1', 20.00, 1, '0-1-1', 'Active'),
(119, 78, '5', 30.00, 10, '0-1-1', 'Active'),
(120, 76, '3', 25.00, 7, '1-1-0', 'Active'),
(121, 80, '4', 50.00, 5, '1-0-1', 'Active'),
(122, 81, '3', 25.00, 4, '1-1-0', 'Active'),
(123, 83, '3', 25.00, 2, '0-1-1', 'Active'),
(124, 84, '1', 20.00, 2, '1-0-1', 'Active'),
(125, 85, '1', 20.00, 2, '1-0-1', 'Active'),
(126, 86, '3', 25.00, 1, '0-1-1', 'Active'),
(127, 86, '4', 50.00, 5, '1-1-1', 'Active'),
(128, 86, '6', 50.00, 1, '1-0-0', 'Active'),
(129, 87, '5', 30.00, 10, '0-1-1', 'Active'),
(130, 87, '6', 50.00, 10, '1-1-0', 'Active'),
(131, 88, '3', 25.00, 6, '1-0-1', 'Active'),
(132, 89, '6', 50.00, 6, '0-1-1', 'Active'),
(133, 89, '6', 50.00, 5, '0-1-0', 'Active'),
(134, 91, '1', 20.00, 10, '0-1-1', 'Active'),
(135, 91, '4', 50.00, 2, '1-1-0', 'Active'),
(136, 91, '6', 50.00, 3, '1-1-1', 'Active'),
(137, 92, '1', 20.00, 10, '0-1-1', 'Active'),
(138, 92, '4', 50.00, 10, '1-1-1', 'Active'),
(139, 92, '6', 50.00, 2, '0-1-1', 'Active'),
(140, 92, '3', 25.00, 13, '1-0-1', 'Active'),
(141, 94, '1', 20.00, 10, '0-1-1', 'Active'),
(142, 94, '6', 50.00, 15, '1-1-0', 'Active'),
(143, 94, '6', 50.00, 15, '0-1-0', 'Active'),
(144, 96, '1', 20.00, 10, '0-1-1', 'Active'),
(145, 96, '4', 50.00, 10, '1-1-1', 'Active'),
(146, 96, '6', 50.00, 15, '0-1-0', 'Active'),
(147, 97, '1', 20.00, 10, '0-1-1', 'Active'),
(148, 97, '5', 30.00, 15, '1-1-0', 'Active'),
(149, 99, '1', 20.00, 10, '1-0-1', 'Active'),
(150, 99, '4', 50.00, 3, '1-1-0', 'Active'),
(151, 103, '', 0.00, 0, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(13, 'Treatment for Malaria', '450.00', ' Providing medicine and tonic with injection  ', 'Active'),
(14, 'Treatment for Dengue', '20000.00', ' Providing medicine and home made tips', 'Active'),
(19, 'Dengue', '4000.00', 'Dengue treatment', 'Active'),
(20, 'Diabetes', '3000.00', 'Diabetes is a disease that occurs when your blood glucose, also called blood sugar, is too high. this treatment include with medicine.', 'Active'),
(21, 'Dental Checkup', '500.00', 'Regular Dental health and cleanup treatment', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(1, 21, 2, 3, 36, 'k,jk,', '794356538', '2021-06-13', '01:46:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `loginname` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createddateandtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `loginname`, `password`, `patientname`, `mobileno`, `email`, `createddateandtime`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '2017-12-14 11:21:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
  ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
  MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
