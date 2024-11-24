-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2024 at 03:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preorder_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `nic`, `food`, `quantity`, `total_price`, `cancellation_reason`, `confirmed`) VALUES
(29, 'Movindu Perera', '200229700904', 'Vegetable Kottu', 1, 800.00, 'Cancelled', 0),
(30, 'Movindu Perera', '200229700904', 'Cheese Kottu', 2, 2600.00, NULL, 0),
(31, 'Movindu Perera', '200229700904', 'Cheese Kottu', 2, 2600.00, NULL, 0),
(32, 'Movindu Perera', '200229700904', 'Coke', 2, 300.00, NULL, 0),
(33, 'sumith', '197125689523', 'Chicken Fried Rice', 2, 2400.00, NULL, 0),
(34, 'uu', '200229700904', 'Cheese Kottu', 2, 2600.00, 'Cancelled', 0),
(35, 'Movindu Perera', '200229700904', 'Vegetable Kottu', 1, 800.00, NULL, 0),
(36, 'Movindu Perera', '200229700904', 'Chicken Kottu', 1, 1000.00, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
