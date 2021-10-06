-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 06:27 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(2, 'YEEZY BOOST 700 V2 MAUVE', '<p>This product is a special edition of adidas and return/exchange is not applicable.</p>', '456.99', '0.00', 100, 'yeezy.jpg', '2021-09-25 19:41:40'),
(3, 'HUMAN MADE QUESTAR SHOES', '<p>A grand influence on culture, Human Made touches all corners in the world of art. Here, in collaboration with adidas, the Japanese label lends their vision to these Questar shoes. Contrast colours pop from the leather upper, all playing together to make a bold impression. Plush Boost cushioning steps up the comfort and stands out with an aged appearance.</p>\r\n<ul><li>Leather upper</li><li>Textile lining</li><li>Boost midsole</li><li><li>Rubber outsole</li></ul>', '1499.00', '0.00', 20, 'human.jpg', '2021-09-25 19:47:01'),
(4, 'D ROSE SON OF CHI SHOES - GODSPEED', '<p>City ready. Trail approved. Inspired by archival outdoor gear, this adidas cap keeps things comfortable whether you\'re exploring a new neighbourhood or a new trail system. Made of smooth dobby fabric with mesh side panels and a comfy sweatband, it helps keep you cool on active outings. A bungee-adjustable back makes it easy to customise the fit on the fly. This product is made with recycled content as part of our ambition to end plastic waste.</p>', '899.00', '0.00', 150, 'drose.jpg', '2021-09-25 19:49:38'),
(5, 'HUMANRACE SICHONA SHOES', '<p>Everything Pharrell touches is an exploration and celebration of humanity. In his latest collaboration with adidas, the Humanrace Sichona Shoes are a canvas for self-expression. They have an ultraflexible and seamless adidas Primeknit upper with Futurenatural, which allows you to move freely in any direction in comfort. Distinctive knit patterns decorate the toe, heel and sides and a \"Humanrace\" signoff completes the look.</p>', '1499.00', '0.00', 20, 'race.jpg', '2021-09-25 19:51:32'),
(6, 'Badminton Bag For Kids', '<p> This is specially for kids, We offer some discount if you buy 2 or more pairs from us. Thank you !</P>', '29.99', '34.99', 10, 'badminton_bag (3).jpg', '2019-03-13 17:55:22'),
(7, 'Badminton racket', '<p>This product is a special edition of Kingjs and return/exchange is not applicable.</p>', '59.00', '64.99', 100, 'badminton_racket (1).jpg', '2021-09-25 19:41:40'),
(8, 'Cricket bat special', '<p>This is specially for soft bawling, We reccomend 16-19 age childerens is good, We accept all payment methods And fast shipping services </p>', '99.00', '0.00', 20, 'bat (3).jpg', '2021-09-25 19:47:01'),
(9, 'TON Cricket bat For Hard Plays', '<p>City ready. Trail approved. Inspired by archival outdoor gear, this Ton Bat keeps things comfortable whether you\'re exploring a new neighbourhood or a new trail system.</p>', '89.00', '0.00', 150, 'bat (4).jpg', '2021-09-25 19:49:38'),
(10, 'kids toys Foot ball for Ground usage', '<p>Everything Pharrell touches is an exploration and celebration of humanity.We accept all payment methods And fast shipping services</p>', '19.00', '29.00', 20, 'football-soccer-ball (1).jpg', '2021-09-25 19:51:32'),
(11, 'Apache leather ball', '<p> This is specially for kids, We offer some discount if you buy 2 or more pairs from us. Thank you !</P>', '59.99', '64.99', 10, 'leather_ball (4).jpg', '2019-03-13 17:55:22'),
(12, 'Mikasa volley Ball', '<p>This product is a special edition of mikasa and return/exchange is not applicable.</p>', '59.00', '64.99', 100, 'mikasa_vollyball (4).jpg', '2021-09-25 19:41:40'),
(13, 'Tennis cricket ball', '<p>This is specially for soft bawling, We reccomend 16-19 age childerens is good, We accept all payment methods And fast shipping services </p>', '99.00', '0.00', 20, 'tennis_ball (1).jpg', '2021-09-25 19:47:01'),
(14, 'Table tennis racket for kids', '<p>this item is best products from all suppliers in the world, We offer some discounts, Trail approved. Inspired by archival outdoor gear.</p>', '69.00', '90.00', 150, 'tt_racket (3).jpg', '2021-09-25 19:49:38'),
(15, 'Adidas sport shoes coll 1', '<p>Original adidas shoes ,Everything Pharrell touches is an exploration and celebration of humanity.We accept all payment methods And fast shipping services</p>', '69.00', '99.00', 20, 'tu_shoe1 (3).jpg', '2021-09-25 19:51:32'),
(16, 'Adidas sport shoes coll 2', '<p>  Original adidas shoes, We offer some discount if you buy 2 or more pairs from us. Thank you !</P>', '49.99', '64.99', 10, 'tu_shoe2 (1).jpg', '2019-03-13 17:55:22'),
(17, 'Bravo shoe Proffesional', '<p>This product is a special edition of Bravo and return/exchange is not applicable.</p>', '59.99', '64.99', 100, 'tu_shoe3 (2).jpg', '2021-09-25 19:41:40'),
(18, 'Nike shoe collection pr 223654', '<p>This is specially for soft bawling, We reccomend 16-19 age childerens is good, We accept all payment methods And fast shipping services </p>', '99.00', '0.00', 20, 'tu_shoe5 (3).jpg', '2021-09-25 19:47:01'),
(19, 'Sport sneakers comfortable', '<p>Very comfortable product, this item is best products from all suppliers in the world, We offer some discounts, Trail approved. Inspired by archival outdoor gear.</p>', '69.00', '90.00', 150, 'tu_shoe6 (1).jpg', '2021-09-25 19:49:38'),
(20, 'Sport Bottom Universal', '<p>Original Product ,Everything Pharrell touches is an exploration and celebration of humanity.We accept all payment methods And fast shipping services</p>', '69.00', '99.00', 20, 'tu_tsbottom (1).JPEG', '2021-09-25 19:51:32'),
(21, 'High Quality Sport jersey Tshirt', '<p>  Original Kingsus shoes, We offer some discount if you buy 2 or more pairs from us. Thank you !</P>', '29.99', '34.99', 10, 'tu_tshirt1 (1).jpg', '2019-03-13 17:55:22'),
(22, 'Comfortable Sport Short', '<p>This product is a special edition of Bravo and return/exchange is not applicable.</p>', '19.99', '24.99', 100, 'tu_tsshort (2).JPEG', '2021-09-25 19:41:40'),
(23, 'Full Kit For outdoor plays', '<p>This is specially for soft bawling, We reccomend 16-19 age childerens is good, We accept all payment methods And fast shipping services </p>', '39.00', '0.00', 20, 'tu_tszullkit (2).JPEG', '2021-09-25 19:47:01'),
(24, 'Luxury Mens T-Shirt', '<p>Very comfortable product, this item is best products from all suppliers in the world, We offer some discounts, Trail approved. Inspired by archival outdoor gear.</p>', '49.00', '60.00', 150, 'tu_tzwshirt (1).jpg', '2021-09-25 19:49:38'),
(25, 'Luxury Sport Waer Bottle', '<p>Original Product ,Everything Pharrell touches is an exploration and celebration of humanity.We accept all payment methods And fast shipping services</p>', '19.00', '29.00', 20, 'H3.jpg', '2021-09-25 19:51:32'),
(26, 'Emergency Water Bottle', '<p>  Original Kingsus shoes, We offer some discount if you buy 2 or more pairs from us. Thank you !</P>', '29.99', '34.99', 10, 'tu_tzxq (1).jpg', '2019-03-13 17:55:22'),
(27, 'Outdoor tool Kit', '<p>This product is a special edition of Bravo and return/exchange is not applicable.</p>', '19.99', '24.99', 100, 'tu_tzxr (1).jpg', '2021-09-25 19:41:40'),
(28, 'Sport water bottle', '<p>This is specially for soft bawling, We reccomend 16-19 age childerens is good, We accept all payment methods And fast shipping services </p>', '39.00', '0.00', 20, 'tu_tzxs (1).jpg', '2021-09-25 19:47:01'),
(29, 'Emergency First aid box', '<p>Very comfortable product, this item is best products from all suppliers in the world, We offer some discounts, Trail approved. Inspired by archival outdoor gear.</p>', '49.00', '60.00', 150, 'tu_tzxt (3).jpg', '2021-09-25 19:49:38'),
(30, 'Military water bottle', '<p>Original Product ,Everything Pharrell touches is an exploration and celebration of humanity.We accept all payment methods And fast shipping services</p>', '19.00', '29.00', 20, 'tu_tzxu (3).jpg', '2021-09-25 19:51:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
