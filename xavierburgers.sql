-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 06:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xavierburgers`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodxavierburgers`
--

CREATE TABLE `foodxavierburgers` (
  `FoodName` varchar(100) NOT NULL,
  `FoodImage` blob NOT NULL,
  `Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '''User''',
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` int(20) NOT NULL,
  `dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `type`, `firstname`, `lastname`, `email`, `phonenumber`, `dateofbirth`) VALUES
(1, 'test ', '1234', '\'User\'', 'test', 'test', 'kxavierk2000@gmail.com', 789898989, '2020-07-23'),
(8, 'client1', 'a165dd3c2e98d5d607181d0b87a4c66b', 'User', 'client1', 'client1', 'client1@gmail.com', 789898989, '2020-07-22'),
(9, 'client2', '2c66045d4e4a90814ce9280272e510ec', 'User', 'client2', 'client2', 'client2@gmail.com', 1234567, '2020-07-03'),
(10, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Admin', 'admin1', 'admin1', 'admin1@gmail.com', 789898989, '2020-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `id` int(8) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unitprice` double(10,2) NOT NULL,
  `totalprice` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`id`, `code`, `quantity`, `unitprice`, `totalprice`) VALUES
(1, '3DcAM01', 6, 15.00, 90.00),
(47, '3DcAM01', 2, 15.00, 30.00),
(48, '3DcAM01', 2, 15.00, 30.00),
(49, '3DcAM01', 2, 15.00, 30.00),
(50, 'bgdf', 1, 10.00, 10.00),
(51, '3DcAM01', 2, 15.00, 30.00),
(52, 'bgdf', 1, 10.00, 10.00),
(53, '3DcAM01', 2, 15.00, 30.00),
(54, 'bgdf', 1, 10.00, 10.00),
(55, 'baab', 1, 14.00, 14.00),
(56, '3DcAM01', 2, 15.00, 30.00),
(57, 'bgdf', 1, 10.00, 10.00),
(58, 'baab', 1, 14.00, 14.00),
(59, '3DcAM01', 2, 15.00, 30.00),
(60, 'bgdf', 1, 10.00, 10.00),
(61, 'baab', 1, 14.00, 14.00),
(62, 'MACB', 1, 9.00, 9.00),
(63, '3DcAM01', 2, 15.00, 30.00),
(64, 'bgdf', 1, 10.00, 10.00),
(65, 'baab', 1, 14.00, 14.00),
(66, 'MACB', 1, 9.00, 9.00),
(67, '3DcAM01', 2, 15.00, 30.00),
(68, 'bgdf', 1, 10.00, 10.00),
(69, 'baab', 1, 14.00, 14.00),
(70, '3DcAM01', 2, 15.00, 30.00),
(71, 'bgdf', 1, 10.00, 10.00),
(72, 'baab', 1, 14.00, 14.00),
(73, '3DcAM01', 2, 15.00, 30.00),
(74, 'bgdf', 1, 10.00, 10.00),
(75, '3DcAM01', 2, 15.00, 30.00),
(76, 'bgdf', 1, 10.00, 10.00),
(77, '3DcAM01', 2, 15.00, 30.00),
(78, '3DcAM01', 2, 15.00, 30.00),
(79, '3DcAM01', 2, 15.00, 30.00),
(80, 'bgdf', 1, 10.00, 10.00),
(81, '3DcAM01', 2, 15.00, 30.00),
(82, 'bgdf', 1, 10.00, 10.00),
(83, '3DcAM01', 2, 15.00, 30.00),
(84, 'bgdf', 1, 10.00, 10.00),
(85, 'baab', 1, 14.00, 14.00),
(86, '3DcAM01', 2, 15.00, 30.00),
(87, 'bgdf', 1, 10.00, 10.00),
(88, 'baab', 1, 14.00, 14.00),
(89, '3DcAM01', 2, 15.00, 30.00),
(90, 'bgdf', 1, 10.00, 10.00),
(91, 'baab', 1, 14.00, 14.00),
(92, 'MACB', 1, 9.00, 9.00),
(93, '3DcAM01', 2, 15.00, 30.00),
(94, 'bgdf', 1, 10.00, 10.00),
(95, 'baab', 1, 14.00, 14.00),
(96, 'MACB', 1, 9.00, 9.00),
(97, '3DcAM01', 3, 15.00, 45.00),
(98, 'bgdf', 1, 10.00, 10.00),
(99, 'baab', 1, 14.00, 14.00),
(100, 'MACB', 1, 9.00, 9.00),
(101, '3DcAM01', 3, 15.00, 45.00),
(102, 'bgdf', 1, 10.00, 10.00),
(103, 'baab', 1, 14.00, 14.00),
(104, 'MACB', 1, 9.00, 9.00),
(105, '3DcAM01', 3, 15.00, 45.00),
(106, 'bgdf', 2, 10.00, 20.00),
(107, 'baab', 1, 14.00, 14.00),
(108, 'MACB', 1, 9.00, 9.00),
(109, '3DcAM01', 3, 15.00, 45.00),
(110, 'bgdf', 2, 10.00, 20.00),
(111, 'baab', 1, 14.00, 14.00),
(112, 'MACB', 1, 9.00, 9.00),
(113, '3DcAM01', 3, 15.00, 45.00),
(114, 'bgdf', 2, 10.00, 20.00),
(115, 'baab', 1, 14.00, 14.00),
(116, 'MACB', 1, 9.00, 9.00),
(117, '3DcAM01', 3, 15.00, 45.00),
(118, 'bgdf', 2, 10.00, 20.00),
(119, 'baab', 1, 14.00, 14.00),
(120, 'MACB', 1, 9.00, 9.00),
(121, '3DcAM01', 4, 15.00, 60.00),
(122, 'bgdf', 2, 10.00, 20.00),
(123, 'baab', 1, 14.00, 14.00),
(124, 'MACB', 1, 9.00, 9.00),
(125, '3DcAM01', 4, 15.00, 60.00),
(126, 'bgdf', 2, 10.00, 20.00),
(127, 'baab', 1, 14.00, 14.00),
(128, 'MACB', 1, 9.00, 9.00),
(129, '3DcAM01', 4, 15.00, 60.00),
(130, 'bgdf', 2, 10.00, 20.00),
(131, 'baab', 2, 14.00, 28.00),
(132, 'MACB', 1, 9.00, 9.00),
(133, '3DcAM01', 4, 15.00, 60.00),
(134, 'bgdf', 2, 10.00, 20.00),
(135, 'baab', 2, 14.00, 28.00),
(136, 'MACB', 2, 9.00, 18.00),
(137, '3DcAM01', 4, 15.00, 60.00),
(138, 'bgdf', 2, 10.00, 20.00),
(139, 'baab', 2, 14.00, 28.00),
(140, 'MACB', 2, 9.00, 18.00),
(141, '3DcAM01', 1, 15.00, 15.00),
(142, '3DcAM01', 1, 15.00, 15.00),
(143, '3DcAM01', 1, 15.00, 15.00),
(144, 'bgdf', 1, 10.00, 10.00),
(145, '3DcAM01', 1, 15.00, 15.00),
(146, 'bgdf', 1, 10.00, 10.00),
(147, 'baab', 1, 14.00, 14.00),
(148, '3DcAM01', 1, 15.00, 15.00),
(149, 'bgdf', 1, 10.00, 10.00),
(150, 'baab', 1, 14.00, 14.00),
(151, '3DcAM01', 1, 15.00, 15.00),
(152, 'bgdf', 1, 10.00, 10.00),
(153, 'baab', 1, 14.00, 14.00),
(154, 'MACB', 1, 9.00, 9.00),
(155, '3DcAM01', 1, 15.00, 15.00),
(156, 'bgdf', 1, 10.00, 10.00),
(157, 'baab', 1, 14.00, 14.00),
(158, 'MACB', 1, 9.00, 9.00),
(159, '3DcAM01', 1, 15.00, 15.00),
(160, 'baab', 1, 14.00, 14.00),
(161, 'MACB', 1, 9.00, 9.00),
(162, '3DcAM01', 1, 15.00, 15.00),
(163, 'baab', 1, 14.00, 14.00),
(164, 'MACB', 1, 9.00, 9.00),
(165, 'bgdf', 1, 10.00, 10.00),
(166, 'bgdf', 1, 10.00, 10.00),
(167, 'bgdf', 1, 10.00, 10.00),
(168, '3DcAM01', 1, 15.00, 15.00),
(169, 'bgdf', 1, 10.00, 10.00),
(170, '3DcAM01', 1, 15.00, 15.00),
(171, 'bgdf', 1, 10.00, 10.00),
(172, '3DcAM01', 1, 15.00, 15.00),
(173, 'baab', 1, 14.00, 14.00),
(174, 'bgdf', 1, 10.00, 10.00),
(175, '3DcAM01', 1, 15.00, 15.00),
(176, 'baab', 1, 14.00, 14.00),
(177, 'bgdf', 1, 10.00, 10.00),
(178, '3DcAM01', 1, 15.00, 15.00),
(179, 'baab', 1, 14.00, 14.00),
(180, 'MACB', 1, 9.00, 9.00),
(181, 'bgdf', 1, 10.00, 10.00),
(182, '3DcAM01', 1, 15.00, 15.00),
(183, 'baab', 1, 14.00, 14.00),
(184, 'MACB', 1, 9.00, 9.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Avocado Burger', '3DcAM01', '4.jpg', 15.00),
(2, 'Burger and fries', 'bgdf', '5.jpg', 10.00),
(3, 'Burger and a beer', 'baab', '3.jpg', 14.00),
(4, 'Mushroom and Cheese Burger', 'MACB', '8.jpg', 9.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
