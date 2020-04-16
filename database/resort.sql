-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 09:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `start_date`, `client_id`, `item_type`, `item_id`, `comment`) VALUES
(1, '2020-04-01 19:04:19', 1, 'restaurant', 1, 'AAA'),
(2, '2020-04-14 03:22:00', 1, 'restaurant', 1, 'Date test'),
(3, '2020-04-03 02:32:00', 1, 'restaurant', 1, ''),
(4, '2020-04-08 01:12:00', 1, 'restaurant', 1, 'TEST GET'),
(5, '2020-04-15 03:33:00', 1, 'restaurant', 1, 'URL Test');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`) VALUES
(1, 'John Bold', '647-00-01', 'john@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `descrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `position`, `image`, `name`, `descrip`) VALUES
(1, 'General Manager', '../../img/manager.png', 'Guzeppe Montelli.', 'Guzeppe Montelli. Gifted leader capable of dealing with any challenge and insuring that entire operation runs smoothly.\r\n'),
(2, 'Restaurants Manager', '../../img/waiter.jpg', 'Mauricio Jakkone.', 'Delicious person to stick around and have a chat with. Will get you meal in no time.'),
(3, 'Tours Manager ', '../../img/girl.png', 'Angelina Zlotopuzze.  ', 'Adventurous and energetic explorer. Travelling is her passion! '),
(13, 'Pool Manager', '../../img/swimmer.jpg', 'Petro.', 'Excellent swimmer.\r\nKeen to save lives.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `descrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `image`, `name`, `descrip`) VALUES
(1, '../../img/rest1.jpg', 'Delights on the beach', 'Enchanting open air venue right at the by the ocean offering variety of delicious see food and exquisite selection of wines. Get romantic feeling the ocean breeze. '),
(2, '../../img/rest2.jpg', 'Evening specials', 'Charming quiet place to dine and have a glass of wine.\r\n                Extraordinary talented Chef and friendly staff will help to make your evening memorable.'),
(3, '../../img/beer.jpg', 'Beer House!', 'There could never be too much of beer...');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `image`, `name`, `descrip`, `price`) VALUES
(1, '../../img/sky.jpg', 'Sky Diving', 'If at first you don\'t succeed better pass on this tour', 100),
(2, '../../img/shark.jpg', 'Diving with sharks', '', 100),
(24, '../../img/kajak.jpg', 'Spectacular Sailing', 'Enchanting getaway. Sail along natural wonders!', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_id` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
