-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2022 at 01:58 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `numberbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4gc6oiumw8n5hycjluoynrlng` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `number`, `country_id`) VALUES
(1, 'mohammed', '0762909156', 1),
(2, 'abdelghani', '0672335587', 1),
(3, 'achraf', '(054) 233-6651', 1),
(4, 'latifa', '(075) 411-2355', 1),
(5, 'benkhazra, mohammed', '076 290-9156', 1),
(6, 'spain', '3675998745\r\n', 3),
(7, 'benkhazra, mohammed', '076 290-9156', 1),
(8, 'sami', '(054) 233-6651', 1),
(9, 'latifa', '(075) 411-2355', 1),
(10, 'sami', '(054) 233-6651', 1),
(11, 'benkhazra, mohammed', '076 290-9156', 1),
(12, 'latifa', '(075) 411-2355', 1),
(13, 'sami', '(054) 233-6651', 1),
(14, 'benkhazra, mohammed', '076 290-9156', 1),
(15, 'latifa', '(075) 411-2355', 1),
(16, 'latifa', '(075) 411-2355', 1),
(17, 'sami', '(054) 233-6651', 1),
(18, 'benkhazra, mohammed', '076 290-9156', 1),
(19, 'sami', '(054) 233-6651', 1),
(20, 'latifa', '(075) 411-2355', 1),
(21, 'benkhazra, mohammed', '076 290-9156', 1),
(22, 'benkhazra, mohammed', '076 290-9156', 1),
(23, 'latifa', '(075) 411-2355', 1),
(24, 'sami', '(054) 233-6651', 1),
(25, 'benkhazra, mohammed', '076 290-9156', 1),
(26, 'latifa', '(075) 411-2355', 1),
(27, 'sami', '(054) 233-6651', 1),
(28, 'latifa', '(075) 411-2355', 1),
(29, 'sami', '(054) 233-6651', 1),
(30, 'benkhazra, mohammed', '076 290-9156', 1),
(31, 'latifa', '(075) 411-2355', 1),
(32, 'benkhazra, mohammed', '076 290-9156', 1),
(33, 'sami', '(054) 233-6651', 1),
(34, 'sami', '(054) 233-6651', 1),
(35, 'latifa', '(075) 411-2355', 1),
(36, 'benkhazra, mohammed', '076 290-9156', 1),
(37, 'benkhazra, mohammed', '076 290-9156', 1),
(38, 'sami', '(054) 233-6651', 1),
(39, 'latifa', '(075) 411-2355', 1),
(40, 'latifa', '(075) 411-2355', 1),
(41, 'sami', '(054) 233-6651', 1),
(42, 'benkhazra, mohammed', '076 290-9156', 1),
(43, 'latifa', '(075) 411-2355', 1),
(44, 'benkhazra, mohammed', '076 290-9156', 1),
(45, 'sami', '(054) 233-6651', 1),
(46, 'benkhazra, mohammed', '076 290-9156', 1),
(47, 'latifa', '(075) 411-2355', 1),
(48, 'sami', '(054) 233-6651', 1),
(49, 'latifa', '(075) 411-2355', 1),
(50, 'sami', '(054) 233-6651', 1),
(51, 'benkhazra, mohammed', '076 290-9156', 1),
(52, 'sami', '(054) 233-6651', 1),
(53, 'benkhazra, mohammed', '076 290-9156', 1),
(54, 'latifa', '(075) 411-2355', 1),
(55, 'benkhazra, mohammed', '076 290-9156', 1),
(56, 'sami', '(054) 233-6651', 1),
(57, 'latifa', '(075) 411-2355', 1),
(58, 'sami', '(054) 233-6651', 1),
(59, 'latifa', '(075) 411-2355', 1),
(60, 'benkhazra, mohammed', '076 290-9156', 1),
(61, 'sami', '(054) 233-6651', 1),
(62, 'benkhazra, mohammed', '076 290-9156', 1),
(63, 'latifa', '(075) 411-2355', 1),
(64, 'benkhazra, mohammed', '076 290-9156', 1),
(65, 'sami', '(054) 233-6651', 1),
(66, 'latifa', '(075) 411-2355', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `code`, `image_path`) VALUES
(1, '+212', 'https://cdn.countryflags.com/thumbs/morocco/flag-800.png'),
(2, '+351', 'https://www.countryflags.com/wp-content/uploads/portugal-flag-400.png'),
(3, '+34', 'https://www.countryflags.com/wp-content/uploads/spain-flag-png-large.png');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK4gc6oiumw8n5hycjluoynrlng` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
