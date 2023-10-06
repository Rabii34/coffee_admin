-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 10:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup`
--

CREATE TABLE `admin_signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_signup`
--

INSERT INTO `admin_signup` (`id`, `name`, `email`, `password`) VALUES
(7, 'umaima', 'umaima@gmail.com', '$2y$10$sIda034X7eC/CtaV11TpXuNsqwd/weGp9TMAi8xUMjjRQ4UIMU4GW'),
(8, 'ifrah', 'ifrah@gmail.com', '$2y$10$BbxIqOINKF4/JgcfRH0t5OuuD4OZw/TKBZQzFaShb1WN3Xs8Troj2'),
(9, 'hamza', 'hamza@gmail.com', '$2y$10$aqTcXPBoxhAkeZU/v4U6j.dwhtAjRovWWv/lpT2XKQoAvt15L/rLC'),
(10, 'osama', 'osama@gmail.com', '$2y$10$o08GT4m6AdZHeJw2I6nbROTAKHg6HULIH41tusR8ItBkfASOcPj1O'),
(11, 'rabia', 'rabia@gmail.com', '$2y$10$LWf2PA993UXFz8sQNeebROXc1AsuQJc//xZyuF2fztm4VuzU.hzMm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_signup`
--
ALTER TABLE `admin_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_signup`
--
ALTER TABLE `admin_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
