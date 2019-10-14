-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 08:51 AM
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
-- Database: `easycart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 3, 1, 80000),
(2, 1, 3, 1, 80000),
(3, 1, 28, 1, 0),
(4, 1, 29, 1, 54000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'electronics'),
(2, 'clothing');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_detail` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment_detail`, `product_id`, `user_id`) VALUES
(1, 'best mobile phone', 3, 1),
(2, 'need to fix some bugs', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE `icon` (
  `id` int(11) NOT NULL,
  `small` varchar(100) NOT NULL,
  `medium` varchar(100) NOT NULL,
  `large` varchar(100) NOT NULL,
  `xlarge` varchar(100) NOT NULL,
  `xxlarge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icon`
--

INSERT INTO `icon` (`id`, `small`, `medium`, `large`, `xlarge`, `xxlarge`) VALUES
(1, 'images/ph1.png', 'images/ph1.png', 'images/ph1.png', 'images/ph1.png', 'images/ph1.png'),
(2, 'images/ph2.png', 'images/ph2.png', 'images/ph2.png', 'images/ph2.png', 'images/ph2.png'),
(3, 'images/ph3.png', 'images/ph3.png', 'images/ph3.png', 'images/ph3.png', 'images/ph3.png'),
(4, 'images/ph4.png', 'images/ph4.png', 'images/ph4.png', 'images/ph4.png', 'images/ph4.png'),
(5, 'images/nike.jpg', 'images/nike.jpg', 'images/nike.jpg', 'images/nike.jpg', 'images/nike.jpg'),
(6, 'images/ribbedknitcollar.jpg', 'images/ribbedknitcollar.jpg', 'images/ribbedknitcollar.jpg', 'images/ribbedknitcollar.jpg', 'images/ribbedknitcollar.jpg'),
(7, 'images/chevorlet.jpg', 'images/chevorlet.jpg', 'images/chevorlet.jpg', 'images/chevorlet.jpg', 'images/chevorlet.jpg'),
(8, 'images/crinkleshirt.jpg', 'images/crinkleshirt.jpg', 'images/crinkleshirt.jpg', 'images/crinkleshirt.jpg', 'images/crinkleshirt.jpg'),
(9, 'images/pakistan.jpg', 'images/pakistan.jpg', 'images/pakistan.jpg', 'images/pakistan.jpg', 'images/pakistan.jpg'),
(10, 'images/sports_hub.jpg', 'images/sports_hub.jpg', 'images/sports_hub.jpg', 'images/sports_hub.jpg', 'images/sports_hub.jpg'),
(11, 'images/womenclothing1.jpg', 'images/womenclothing1.jpg', 'images/womenclothing1.jpg', 'images/womenclothing1.jpg', 'images/womenclothing1.jpg'),
(12, 'images/womenclothing2.jpg', 'images/womenclothing2.jpg', 'images/womenclothing2.jpg', 'images/womenclothing2.jpg', 'images/womenclothing2.jpg'),
(13, 'images/womenclothing3.jpg', 'images/womenclothing3.jpg', 'images/womenclothing3.jpg', 'images/womenclothing3.jpg', 'images/womenclothing3.jpg'),
(14, 'images/womenclothing4.jpg', 'images/womenclothing4.jpg', 'images/womenclothing4.jpg', 'images/womenclothing4.jpg', 'images/womenclothing4.jpg'),
(15, 'images/womenclothing5.jpg', 'images/womenclothing5.jpg', 'images/womenclothing5.jpg', 'images/womenclothing5.jpg', 'images/womenclothing5.jpg'),
(16, 'images/menswatches1.jpg', 'images/menswatches1.jpg', 'images/menswatches1.jpg', 'images/menswatches1.jpg', 'images/menswatches1.jpg'),
(17, 'images/menswatches2.jpg', 'images/menswatches2.jpg', 'images/menswatches2.jpg', 'images/menswatches2.jpg', 'images/menswatches2.jpg'),
(18, 'images/menswatches3.jpg', 'images/menswatches3.jpg', 'images/menswatches3.jpg', 'images/menswatches3.jpg', 'images/menswatches3.jpg'),
(19, 'images/menswatches4.jpg', 'images/menswatches4.jpg', 'images/menswatches4.jpg', 'images/menswatches4.jpg', 'images/menswatches4.jpg'),
(20, 'images/menswatches5.jpg', 'images/menswatches5.jpg', 'images/menswatches5.jpg', 'images/menswatches5.jpg', 'images/menswatches5.jpg'),
(21, 'images/shoes1.jpg', 'images/shoes1.jpg', 'images/shoes1.jpg', 'images/shoes1.jpg', 'images/shoes1.jpg'),
(22, 'images/shoes2.jpg', 'images/shoes2.jpg', 'images/shoes2.jpg', 'images/shoes2.jpg', 'images/shoes2.jpg'),
(23, 'images/shoes3.jpg', 'images/shoes3.jpg', 'images/shoes3.jpg', 'images/shoes3.jpg', 'images/shoes3.jpg'),
(24, 'images/shoes4.jpg', 'images/shoes4.jpg', 'images/shoes4.jpg', 'images/shoes4.jpg', 'images/shoes4.jpg'),
(25, 'images/shoes5.jpg', 'images/shoes5.jpg', 'images/shoes5.jpg', 'images/shoes5.jpg', 'images/shoes5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `total_products` int(11) DEFAULT NULL,
  `in_stock_products` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `parent_id`, `description`, `type_id`, `icon_id`, `promotion_id`, `total_products`, `in_stock_products`, `price`) VALUES
(1, 'electronics', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(2, 'mobile phones', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(3, 'iphone 8', 2, 'best selling mobile phone available in the market', 1, 1, 1, 100, 100, 80000),
(5, 'home appliances', 1, NULL, 3, NULL, NULL, NULL, NULL, 0),
(7, 'Men\'s Wear', NULL, NULL, 2, NULL, NULL, NULL, NULL, 0),
(8, 'Women\'s Wear', NULL, NULL, 2, NULL, NULL, NULL, NULL, 0),
(9, 'Accessories', NULL, NULL, 2, NULL, NULL, NULL, NULL, 0),
(10, 'T-Shirts', 7, NULL, 3, NULL, NULL, NULL, NULL, 0),
(11, 'Jeans', 7, NULL, 3, NULL, NULL, NULL, NULL, 0),
(12, 'Shalwar Kameez', 7, NULL, 3, NULL, NULL, NULL, NULL, 0),
(13, 'Shoes', 7, NULL, 3, NULL, NULL, NULL, NULL, 0),
(14, 'Jackets', 7, NULL, 3, NULL, NULL, NULL, NULL, 0),
(15, 'Tops', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(16, 'Dresses & Skirts', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(17, 'Bags', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(18, 'Shoes', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(19, 'Traditional Clothing', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(20, 'Jeans & Leggings', 8, NULL, 3, NULL, NULL, NULL, NULL, 0),
(21, 'Men\'s Watches', 9, NULL, 3, NULL, NULL, NULL, NULL, 0),
(22, 'Women\'s Watches', 9, NULL, 3, NULL, NULL, NULL, NULL, 0),
(24, 'Jewellery', 9, NULL, 3, NULL, NULL, NULL, NULL, 0),
(25, 'glasses', 9, NULL, 3, NULL, NULL, NULL, NULL, 0),
(26, 'travel bags', 9, NULL, 3, NULL, NULL, NULL, NULL, 0),
(27, 'iphone 7', 2, 'best selling mobile phone available in the market', 1, 2, 1, 100, 100, 50000),
(28, 'Huawie P10', 2, 'best selling mobile phone available in the market', 1, 3, 1, 100, 100, 24000),
(29, 'Samsung S9', 2, 'best selling mobile phone available in the market', 1, 3, 1, 100, 100, 54000),
(30, 'Iphone 8', 2, 'best selling mobile phone available in the market', 1, 4, 1, 100, 100, 54000),
(31, 'HTC 1X', 2, 'best selling mobile phone available in the market', 1, 2, 1, 100, 100, 24000),
(32, 'Google Nexus', 2, 'best selling mobile phone available in the market', 1, 4, 1, 100, 100, 35000),
(33, 'Manchester Home T-Shirt For Me', 10, '• Manchester Home T-Shirt\r\n• For Men\r\n• Perfect Fit\r\n• Comfortable Wear\r\n• High Quality Jersey', 1, 7, 1, 100, 100, 700),
(34, 'IGNITE Classic Polo T-Shirt Fo', 10, '• Ribbed -knit collar attached with 3-button placket\r\n• Banded sleeves fits best around the bicep ar', 1, 6, 1, 100, 100, 650),
(35, 'Just Do It Printed T-Shirt For', 10, '• Just Do It Printed T-Shirt\r\n• Round Neck T-Shirt\r\n• Comfortable Wear\r\n• Perfect Fit\r\n• Best Qualit', 1, 5, 1, 100, 100, 550),
(36, 'Sports Hub Fasilite Roadster T', 10, '• Color: Blue, Grey, Green & Maroon\r\n• Material: Polyester / Spandex\r\n• Type: Sports Shirt\r\n• Occass', 1, 10, 1, 100, 100, 1150),
(37, 'Pakistan Flag T-Shirt', 10, '• Boski Fabric\r\n• Comfortable Wear\r\n• Good Quality\r\n• Independence T-Shirt', 1, 9, 1, 100, 100, 500),
(39, 'Gul Ahmed Winter Collection 3 ', 16, '• MOURA PASHMINA\r\n• Digital Printed Shirt\r\n• Pashmina Shawl\r\n• Dyed Bottom', 1, 11, 1, 100, 100, 5375),
(40, 'Maria.B M.Prints Fall/Winter Collection', 16, '• Printed khaddar shirt\r\n• Printed chiffon dupatta\r\n• Embroidered velvet ghera patti\r\n• Embroidered ', 1, 12, 1, 100, 100, 4250),
(41, 'RajBari LUXIA 3 Piece (05)', 16, '• Embroidered & Sequined Front on Chiffon\r\n• Embroidered & Sequined Back on Chiffon\r\n• Katan Silk Ja', 1, 13, 1, 100, 100, 8990),
(42, 'Charizma Embroidered Chiffon 3 Pc.', 16, '• Embroidered Front Chiffon 1 Meter\r\n• Back Chiffon Plain 1.25 Meter\r\n• Embroidered Back Hem Line Or', 1, 14, 1, 100, 100, 7250),
(43, 'GulAhmed Winter 3 Piece (SWM01', 16, '• Nawfer\r\n• Silk Woolen SHAWL\r\n• Printed Shirt\r\n• Printed Sleeves\r\n• Silk Woolen Shawl\r\n• Dyed Botto', 1, 15, 1, 100, 100, 7795),
(44, 'Waks Pk Analog Watch For Men Two Tone (0825)', 21, '• MoveMen Two Tonet: Quartz\r\n• Case Material: Stainless Steel\r\n• Clasp Type: Hidden Clasp\r\n• Dial Window Material Type: Glass', 1, 16, 1, 100, 100, 1497),
(45, 'Worbax Inc Analog Watch For Men (0011)', 21, '• Analog Watch\r\n• Leather Strap\r\n• For Men\r\n• Elegant Design\r\n• High Quality\r\n• Slim Design', 1, 17, 1, 100, 100, 5500),
(46, 'Click Shop Analog Watch For Men Silver', 21, '• Item Type: Quartz Wristwatches\r\n• Water Resistance Depth: 3Bar\r\n• Style: Fashion & Casual\r\n• Gender: Men\r\n• Dial Window Material Type: Hardlex', 1, 18, 1, 100, 100, 2599),
(47, 'Chronograph Watch For Men (0086)', 21, '• Analog Display\r\n• Japanese Quartz Movement\r\n• Premium Quality\r\n• Attractive Watch\r\n• For Men\r\n• Ideal For Gift', 1, 19, 1, 100, 100, 2999),
(48, 'Obaku Papir Onyx Men\'s Watch Silver (V230GXCBMC)', 21, '• Water Resistance : 30 M\r\n• Movement: Quartz\r\n• Brand: Obaku\r\n• Display Type: Analogue', 1, 20, 1, 100, 100, 26200),
(49, 'The Smart Shop Casual Sneaker For Unisex (0525)', 13, '• Light,Anti-Slippery, \r\n• Comfortable Fitness\r\n• Shock Absorption\r\n• High Quality\r\n• Casual Wear\r\n• Trendy Design', 1, 21, 1, 100, 100, 3500),
(50, 'The Smart Shop Casual Sneaker For Unisex (0510)', 13, '• Light,Anti-Slippery, \r\n• Comfortable Fitness\r\n• Shock Absorption\r\n• High Quality\r\n• Casual Wear\r\n• Trendy Design', 1, 22, 1, 100, 100, 4500),
(51, 'NOVADO Leather Peshawari Sandal For Men Dark Brown (0034)', 13, '• Color:  Dark Brown\r\n• Upper Material: 100% Genuine Buffalo Leather\r\n• Lining Material: Goat Leather Lining\r\n• Sole: NBR (Tyre Sole)\r\n• In Sole: Leather With Memory Foam', 1, 23, 1, 100, 100, 7449),
(52, 'The Smart Shop Casual Loafers For Men Black (0476)', 13, '• PU Leather Upper\r\n• PU Leather Lining And Socks\r\n• Comfort Insole\r\n• Rubber Sole\r\n• Size 40 To 44', 1, 24, 1, 100, 100, 2800),
(53, 'The Smart Shop Casual Sneaker For Men Red (0422)', 13, '• High Quality\r\n• Casual Wear\r\n• Comfortable Wear\r\n• Light Weight\r\n• Trendy Design', 1, 25, 1, 100, 100, 3300);

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `promotion_name` varchar(30) NOT NULL,
  `percentage` int(11) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `promotion_name`, `percentage`, `start_date`, `end_date`, `created_date`, `updated_date`, `deleted_date`, `status`) VALUES
(1, 'summer sale', 40, '2019-10-08 19:00:00', '2019-10-15 19:00:00', '2019-10-08 06:45:15', NULL, NULL, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratting`
--

INSERT INTO `ratting` (`id`, `rate`, `product_id`, `user_id`) VALUES
(1, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type_name`) VALUES
(1, 'product'),
(2, 'category'),
(3, 'sub_category'),
(4, 'domain');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `number`, `address`, `password`) VALUES
(1, 'ayaz', 'ali', 'ayaz@gmail.com', '03248557483', 'rawalpindi', '786');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icon_id` (`icon_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `promotion_id` (`promotion_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_`
--
ALTER TABLE `order_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `order__ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`icon_id`) REFERENCES `icon` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Constraints for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `product_rating_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ratting`
--
ALTER TABLE `ratting`
  ADD CONSTRAINT `ratting_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `ratting_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
