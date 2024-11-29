-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 10:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aj_engineering`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(1, 'SPM Autocomp', 'spmautopune@gmail.com', '9029382990', 'F-32 MIDC Indl. Area, Nagar Road Ranjangaon, Shirur, Maharashtra 412220', '', 'L-Housing Shaft(10), Press Die(2), Manual Gantry Crane(1)', '433000'),
(2, 'BTSL ', 'btslcompany@gmail.com', '9483872271', 'MH SH 27, Koregaon Bhima, Maharashtra 412216', '', 'Pneumatic Cylinder(1)', '13609'),
(3, 'Advent ToolTech', 'adventofficalspain@gmail.com', '7832137812', 'Advent ToolTech, spain', '', 'Guide Pin(20), Mechanical Bush(56)', '49312'),
(4, 'HYT ', 'htyengineering@gmail.com', '98218719182', 'D- II Block, Behind KSB Pumps, M I D C Chinchwad, MIDC, Pimpri Colony, Pune, Maharashtra 411019', '', 'Guide Pin(20), Mechanical Bush(56)', '49312'),
(5, 'test', 'test@gmail.com', '9029382990', 'test yevswyws ', 'cod', 'Hinges pin(10), Guide Pin(5)', '7000'),
(6, 'SPM auto', 'spmautopune@gmail.com', '9028190291', 'ndejknd  nw diun iuwsn iuwdn wiu', 'netbanking', 'Mechanical Bush(390)', '176280'),
(7, 'SPM Auto', 'spmautopune123@gmail.com', '9847437492', 'MIDC Ranjangaon', 'cod', 'Hinges pin(63), Guide Pin(17), Mechanical Bush(2), Mechanical Bearing(2)', '28504'),
(8, 'SPM AUto', 'spmautopune123@gmail.com', '9873937473', 'MiDC Ranajangaon', 'cards', 'Hinges pin(3), Guide Pin(1)', '1500'),
(9, 'sparkle Engineering', 'sparkleeng@gmail.com', '9838726334', 'Shivagingar,Pune', 'netbanking', 'Mechanical Bush(1), Press Die(1)', '10852');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'L-Housing Shaft', '361', 1, 'img/pro1.webp', 'p1000'),
(2, 'Hinges pin', '100', 1, 'img/pro2_hinges_pin.jpg', 'p1001'),
(3, 'Press Tools', '25000', 1, 'img/pro3.press_tools.jpg', 'p1002'),
(4, 'Guide Pin', '1200', 1, 'img/pro4_guide_pin.jpeg', 'p1003'),
(5, 'Mechanical Gear', '1250', 1, 'img/pro5_mechanical_gear.png', 'p1005'),
(7, 'Pneumatic Cylinder', '13609', 1, 'img/pro6_Pneumatic-Cylinder.jpg', 'p1006'),
(8, 'Mechanical Bush', '452', 1, 'img/pro7_mechanical-bush.jpg', 'p1007'),
(9, 'Motor Shaft', '270', 1, 'img/pro8_motor-shaft.jpg', 'p1008'),
(10, 'Slider', '520', 1, 'img/pro9_slider.jpg', 'p1009'),
(11, 'Flanges', '795', 1, 'img/pro10_flanges.jpg', 'p1010'),
(12, 'Mechanical Bearing', '450', 1, 'img/pro11_mechanical-bearing.jpg', 'p1011'),
(13, 'Jig and Fixture', '65940', 1, 'img/pro12_jig-fixture.jpg', 'p1012'),
(14, 'Stainless-Steel Trolley', '1595', 1, 'img/p13_stainless-steel-trolley.jpg', 'p1013'),
(15, 'Moulding Box', '100000', 1, 'img/p14_moulding-box.jpg', 'p1014'),
(16, 'Manual Gantry Crane', '350000', 1, 'img/p15_manual-gantry-crane.jpg', 'p1015'),
(17, 'Press Die', '10400', 1, 'img/p16_press-die.jpg', 'p1016');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'SPM Auto', 'spmautopune@gmail.com', '6681459bc2a017b03e2f710f53d7b8c3'),
(2, 'Gruopo Antolin', 'grupoantolinpune@gmail.com', '6e2715bbb966932a1a9be58c08a143ea'),
(3, 'abshar fatima ', 'abshar123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Tejas', 'tejasnarawade123@gmail.com', '65ac0f50ab8881923bd1706b4ca76e78'),
(5, 'sandip', 'sandipmundhe22@gmail.com', 'aabd333347567f016d0b431391006459'),
(6, 'SPM Auto', 'spmautopune123@gmail.com', '6681459bc2a017b03e2f710f53d7b8c3'),
(7, 'BTSl', 'btslcompany@gmail.com', 'db3b02d5f7833e1ff0cd5b55c3ac223a'),
(8, 'Sparkle Engineering', 'sparkleeng@gmail.com', 'b7e95ea9450b09d46706acb9ec7b212b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
