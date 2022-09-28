-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 07:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(50) NOT NULL,
  `cn` varchar(12) NOT NULL,
  `ccn` varchar(20) NOT NULL,
  `cvv` varchar(5) NOT NULL,
  `pdetail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `address`, `cn`, `ccn`, `cvv`, `pdetail`) VALUES
(1, 'ronit', 'morbi', '1212121212', '123123123123', '123', 'Realme 3 pro  4gb RAM & 64gb ROM  Rs = 15,000'),
(2, 'parful', 'bihar', '123456796', '12345678910', '321', 'Realme 5 pro  4gb RAM & 128gb ROM Rs = 20,000'),
(3, 'parful', 'bihar', '123456796', '12345678910', '321', 'Realme 5 pro  4gb RAM & 128gb ROM Rs = 20,000'),
(4, 'farhan', 'rajkot', '1596324568', '156324567812', '132', 'Realme 7 pro  6gb RAM & 64gb ROM Rs = 25,000'),
(5, 'harsh', 'rj', '123546256', '13461523', '126', 'Realme 7 pro  6gb RAM & 64gb ROM Rs = 25,000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
