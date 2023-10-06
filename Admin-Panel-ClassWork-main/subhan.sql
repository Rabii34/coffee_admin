-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 12:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `Ctype` varchar(255) NOT NULL,
  `Cdescription` text NOT NULL,
  `Cstatus` tinyint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cid`, `Cname`, `Ctype`, `Cdescription`, `Cstatus`) VALUES
(1001, 'Sports', 'Football', 'Pakistan ka qomi khel IN SHA ALLAH', 1),
(1002, 'Garments', 'Mens', 'Jeans and T-Shirts', 2),
(1003, 'Gym', 'Fitness', 'BodyBuilding, cardio... . ', 1),
(1004, 'skin care', 'herbal products', 'skincare products for face', 1),
(1005, 'Fashion', 'hollywood ', 'hollywood fashion', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pcategory` int(11) NOT NULL,
  `pdescription` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pstatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pcategory`, `pdescription`, `price`, `image`, `pstatus`) VALUES
(1, 'Football', 1001, 'Football Khelo cricket ink bas ki bt nh hai', '4400', '', 1),
(2, 'BaseBall', 1001, 'Baseball khelny k liye hota hai marny k liye nh ', '22', '', 1),
(3, 'Jeans', 1002, 'Hanzala Garments bekar pents sell krny wala', '55', '', 1),
(4, 'Whey Protein', 1003, 'Protein liya kro lekin bahar se Pakistan mai nakli milta hai', '30000', '', 1),
(5, 'Moiz Care Center', 1004, 'Hamary Pas Face washes Dastiyab hen', '6600', '', 1),
(6, 'tennis', 1001, 'asdfas', '', 'tenis.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `syed`
--

CREATE TABLE `syed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syed`
--

INSERT INTO `syed` (`id`, `name`, `email`, `Password`, `phone`, `status`) VALUES
(1, 'Zain Sarfraz', 'zainsarfraz82@gmail.com', '$2y$10$za3F8O1WGLfkf6M/6sd9c.Ozd.FxaEshQ9n5pcIZiOXOQqUJ97hjC', '03172667345', 1),
(2, 'Mahrukh Bilal', 'mahrukhbilal2001@gmail.com', '$2y$10$g8mTIyGfmkd67kw9QOKVvePKo.HZJQCq6UmIrXpIoPaHfI7BH1ji.', '03495758138', 1),
(3, 'Sohaib Sarfraz', 'sohaibsarfraz8@gmail.com', '$2y$10$Fon084t1HV3bYR3DldCLiuBtuU69JlRo6BSGNi6V.ZP673HgMeBqC', '03324455678', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cat_fk` (`pcategory`);

--
-- Indexes for table `syed`
--
ALTER TABLE `syed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `syed`
--
ALTER TABLE `syed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cat_fk` FOREIGN KEY (`pcategory`) REFERENCES `category` (`Cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
