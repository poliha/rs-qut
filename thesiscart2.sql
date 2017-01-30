-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2017 at 09:32 AM
-- Server version: 5.5.53
-- PHP Version: 5.5.30-1+deb.sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thesiscart2`
--

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE IF NOT EXISTS `letters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Loss II Letter Group', '<p>Dear Shopper Rewards Member<p>\r\n\r\n<p>When you signed up to Your Grocer''s customer loyalty programme, the Shopper Rewards programme, you did so at a time where we were offering an all-expenses paid holiday, to the total prize value of AU$10,000, consisting of flights, hotel and activity vouchers, to a destination of your choice. \r\n</p>\r\n<p>\r\n<span class="make-blue">IF YOU DO NOT EARN 500 POINTS IN THE NEXT 5 MINUTES YOU WILL NOT BE able to claim your holiday prize.</span> To claim your prize..,</p>\r\n\r\n<p>\r\nIf you follow this link and then make 500 points worth of purchases within 5 minutes you will achieve the rewards points that you need to earn your holiday.</p>\r\n\r\n<p>\r\nYou have $100 to spend. What are you waiting for? Get started!\r\n</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Loss GI Letter Group', '<p>Dear Shopper Rewards Member<p>\r\n\r\n<p>When you signed up to Your Grocer’s customer loyalty programme, the Shopper Rewards programme, you did so at a time where we were offering an all-expenses paid holiday, to the total prize value of AU$10,000, consisting of flights, hotel and activity vouchers, to a destination of your choice. \r\n</p>\r\n<p>\r\n<span class="make-blue">IF YOU DO NOT EARN 500 points IN THE NEXT 5 MINUTES YOU WILL NOT BE able to claim your holiday prize. YOU HAVE $100 TO SPEND.</span>\r\n</p>\r\n<p>\r\n\r\nWhat are you waiting for? Get started! \r\n</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Win II Letter Group', '<p>Dear Shopper Rewards Member<p>\r\n\r\n<p>When you signed up to Your Grocer’s customer loyalty programme, the Shopper Rewards programme, you did so at a time where we were offering an all-expenses paid holiday, to the total prize value of AU$10,000, consisting of flights, hotel and activity vouchers, to a destination of your choice. </p>\r\n<p>\r\n<span class="make-blue">IF YOU EARN 500 points IN THE NEXT 5 MINUTES YOU WILL BE able to claim your holiday prize. </span> Here''s how...\r\n</p>\r\n<p>\r\nIf you follow this link and then make 500 points worth of purchases within 5 minutes you will achieve the rewards points that you need to earn your holiday.\r\n</p>\r\n<p>\r\nYou have $100 to spend. What are you waiting for? Get started! \r\n</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Win GI Letter Group', '<p>Dear Shopper Rewards Member<p>\r\n\r\n<p>When you signed up to Your Grocer’s customer loyalty programme, the Shopper Rewards programme, you did so at a time where we were offering an all-expenses paid holiday, to the total prize value of AU$10,000, consisting of flights, hotel and activity vouchers, to a destination of your choice. </p>\r\n<p>\r\n<span class="make-blue"> IF YOU EARN 500 points IN THE NEXT MINUTE YOU WILL BE able to claim your holiday prize. YOU HAVE $100 TO SPEND. </span>\r\n</p>\r\n<p>\r\nDon''t forget to go to the checkout once you have finished to complete your transaction.\r\n</p>\r\n<p>\r\n\r\nWhat are you waiting for? Get started! \r\n</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_06_07_130150_create_products_table', 1),
('2015_06_11_210334_create_surveys_table', 2),
('2015_06_15_231338_create_letters_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subcat` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `subcat`, `description`, `image`, `price`, `point`, `created_at`, `updated_at`) VALUES
(1, 'Agadir Argan Oil Conditioner Moisturising 366ml\n', 'Toiletries', 1, 'Agadir Argan Oil Conditioner Moisturising 366ml\n', 'images/shampoo/agadir.JPG', 23.95, 5, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(2, 'Agadir Argan Oil Shampoo Moisturising 366ml\r\n', 'Toiletries', 2, 'Agadir Argan Oil Shampoo Moisturising 366ml\r\n', 'images/shampoo/agadir2.JPG', 23.95, 5, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(3, 'Alpecin Caffeine C1 Shampoo 250ml \r\n', 'Toiletries', 3, 'Alpecin Caffeine C1 Shampoo 250ml \r\n', 'images/shampoo/alpecin.JPG', 10.19, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(4, 'Batiste Dry Medium 200ml\r\n', 'Toiletries', 4, 'Batiste Dry Medium 200ml\r\n\r\n', 'images/shampoo/batiste.JPG', 12.99, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(5, 'Batiste Dry Dry Blush 200ml\r\n', 'Toiletries', 4, 'Batiste Dry Dry Blush 200ml\r\n', 'images/shampoo/batiste2.JPG', 10.00, 50, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(6, 'Batiste Dry Dry Mamba 200ml\r\n\r\n', 'Toiletries', 4, 'Batiste Dry Dry Mamba 200ml\r\n', 'images/shampoo/batiste3.JPG', 10.00, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(7, 'Batiste Dry Dry Tropical 200ml\r\n', 'Toiletries', 4, 'Batiste Dry Dry Tropical 200ml\r\n\r\n', 'images/shampoo/batiste4.JPG', 10.00, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(8, 'Brite Organix Pink Shampoo 280ml\r\n', 'Toiletries', 5, 'Brite Organix Pink Shampoo 280ml\r\n', 'images/shampoo/brite.JPG', 14.99, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(9, 'Cedel Anit Dandruff Shampoo Foam 250ml\r\n', 'Toiletries', 6, 'Cedel Anit Dandruff Shampoo Foam 250ml\r\n', 'images/shampoo/cedel.jpg', 5.15, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(10, 'Clear for Men 2 in 1 Hair Shampoo & Conditioner Complete 700ml \n', 'Toiletries', 7, 'Clear for Men 2 in 1 Hair Shampoo & Conditioneer Complete 700ml \r\n', 'images/shampoo/clear.jpg', 17.25, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(11, 'Clear for Men 2 in 1 A/dandruff Hair Shampoo & Conditioner Dry 350ml\r\n', 'Toiletries', 7, 'Clear for Men 2 in 1 A/dandruff Hair Shampoo & Conditioner Dry 350ml\r\n', 'images/shampoo/clear2.jpg', 10.70, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(12, 'Curash Hair Care Soothing Oatmeal Shampoo 300ml\r\n', 'Toiletries', 8, 'Curash Hair Care Soothing Oatmeal Shampoo 300ml\r\n', 'images/shampoo/curash.jpg', 8.00, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(13, 'Curash Shampoo and Conditioner 2 in 1  400ml\r\n', 'Toiletries', 8, 'Curash Shampoo and Conditioner 2 in 1  400ml\r\n', 'images/shampoo/curash2.jpg', 6.80, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(14, 'Dermaveen Conditioner Oatmeal 500ml\r\n', 'Toiletries', 9, 'Dermaveen Conditioner Oatmeal 500ml\r\n', 'images/shampoo/dermaveen.jpg', 16.99, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(15, 'Dermaveen Shampoo Oatmeal 500ml\r\n', 'Toiletries', 9, 'Dermaveen Shampoo Oatmeal 500ml\r\n', 'images/shampoo/dermaveen2.jpg', 16.99, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(16, 'Dermaveen Baby Hair Care Shampoo  250ml\r\n', 'Toiletries', 9, 'Dermaveen Baby Hair Care Shampoo  250ml\r\n', 'images/shampoo/dermaveen3.JPG', 10.99, 10, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(17, 'Dove Conditioner Colour Radiance 320ml\r\n', 'Toiletries', 10, 'Dove Conditioner Colour Radiance 320ml\r\n', 'images/shampoo/dove.JPG', 6.99, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(18, 'Dove Conditioner Daily Moisture 320ml\r\n', 'Toiletries', 10, 'Dove Conditioner Daily Moisture 320ml\r\n', 'images/shampoo/dove2.JPG', 6.99, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(19, 'Dove Conditioner Intensive Repair 640ml\r\n', 'Toiletries', 10, 'Dove Conditioner Intensive Repair 640ml\r\n', 'images/shampoo/dove3.JPG', 11.99, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(20, 'Dove Conditioner Nourishing Oil Care 320ml\r\n', 'Toiletries', 10, 'Dove Conditioner Nourishing Oil Care 320ml\r\n', 'images/shampoo/dove4.jpg', 6.99, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(21, 'Cedel Toothpaste Sensitive 110g\r\n', 'Toiletries', 11, 'Cedel Toothpaste Sensitive 110g\r\n', 'images/toothpaste/cedel.jpg', 4.95, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(22, 'Cedel Toothpaste Spearmint 110g\r\n', 'Toiletries', 11, 'Cedel Toothpaste Spearmint 110g\r\n', 'images/toothpaste/cedel2.jpg', 2.60, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(23, 'Colgate Toothpaste Cool Mint 110g\r\n', 'Toiletries', 12, 'Colgate Toothpaste Cool Mint 110g\r\n', 'images/toothpaste/colgate.JPG', 3.59, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(24, 'Colgate Toothpaste Cool Mint 175g\r\n', 'Toiletries', 12, 'Colgate Toothpaste Cool Mint 175g\r\n', 'images/toothpaste/colgate2.jpg', 2.99, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(25, 'Colgate Toothpaste Flouride Great 175g\r\n', 'Toiletries', 12, 'Colgate Toothpaste Flouride Great 175g\r\n', 'images/toothpaste/colgate3.jpg', 2.99, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(26, 'Macleans Toothpaste Extreme Clean Fresh 170g\r\n', 'Toiletries', 13, 'Macleans Toothpaste Extreme Clean Fresh 170g\r\n', 'images/toothpaste/macleans.jpg', 5.00, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(27, 'Macleans Toothpaste Extreme Clean White 170g\r\n', 'Toiletries', 13, 'Macleans Toothpaste Extreme Clean White 170g\r\n', 'images/toothpaste/macleans2.jpg', 5.00, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(28, 'Macleans Toothpaste Sensitive 100g\r\n', 'Toiletries', 13, 'Macleans Toothpaste Sensitive 100g\r\n', 'images/toothpaste/macleans3.jpg', 5.29, 90, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(29, 'Oral-b Toothpaste 1-2-3 Fresh Mint 160g\r\n', 'Toiletries', 14, 'Oral-b Toothpaste 1-2-3 Fresh Mint 160g\r\n', 'images/toothpaste/oralb.JPG', 2.99, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(30, 'Oral-b Toothpaste 1-2-3 Mint 175g\r\n', 'Toiletries', 14, 'Oral-b Toothpaste 1-2-3 Mint 175g\r\n', 'images/toothpaste/oralb2.JPG', 2.99, 20, '2015-06-07 23:00:00', '2015-06-07 23:00:00'),
(31, 'Alon Plas Car Care Large Chamols each', 'Home and Outdoor', 15, 'Alon Plas Car Care Large Chamols each', 'images/automotive/alon.JPG', 18.99, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Alon Plas Car Care Synthetic Chamols each\r\n', 'Home and Outdoor', 15, 'Alon Plas Car Care Synthetic Chamols each\r\n', 'images/automotive/alon2.jpg', 9.99, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Air Wick Flip & Fresh Car Freshener Crisp Vanilla each', 'Home and Outdoor', 16, 'Air Wick Flip & Fresh Car Freshener Crisp Vanilla each\r\n', 'images/automotive/awick.JPG', 7.29, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Air Wick Flip & Fresh Car Freshener New Car and Ocean Drive each', 'Home and Outdoor', 16, 'Air Wick Flip & Fresh Car Freshener New Car and Ocean Drive each', 'images/automotive/awick2.JPG', 7.29, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Ambi Pur Mini Car Air Freshner Light Citrus 2ml', 'Home and Outdoor', 17, 'Ambi Pur Mini Car Air Freshner Light Citrus 2ml\r\n', 'images/automotive/ambi.JPG', 5.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Ambi Pur Mini Car Air Freshner New Zealand Springs 2ml', 'Home and Outdoor', 17, 'Ambi Pur Mini Car Air Freshner New Zealand Springs 2ml', 'images/automotive/ambi2.JPG', 5.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Armor All Air Freshener Pure Fresh Linen 7ml', 'Home and Outdoor', 18, 'Armor All Air Freshener Pure Fresh Linen 7ml\r\n', 'images/automotive/armor.JPG', 8.39, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Armor All Air Freshener Island Retreat 7ml', 'Home and Outdoor', 18, 'Armor All Air Freshener Island Retreat 7ml', 'images/automotive/armor2.JPG', 8.39, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Aromadrive Air Freshener Indegenous each', 'Home and Outdoor', 19, 'Aromadrive Air Freshener Indegenous each', 'images/automotive/aromadrive.JPG', 2.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Aromadrive Air Freshener Scented Oil Vent each', 'Home and Outdoor', 19, 'Aromadrive Air Freshener Scented Oil Vent each', 'images/automotive/aromadrive2.JPG', 3.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Finish All in One Dishwashing Liquid Value Pack 84pk', 'Home and Outdoor', 20, 'Finish All in One Dishwashing Liquid Value Pack 84pk', 'images/detergent/finish.JPG', 34.99, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Morning Fresh Dishwashing Auto Liquid Caps Lemon 42pk', 'Home and Outdoor', 21, 'Morning Fresh Dishwashing Auto Liquid Caps Lemon 42pk', 'images/detergent/mf.JPG', 26.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Morning Fresh Dishwashing Auto Liquid Caps Apple 42pk', 'Home and Outdoor', 21, 'Morning Fresh Dishwashing Auto Liquid Caps Apple 42pk', 'images/detergent/mf2.JPG', 26.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Morning Fresh Dishwashing Auto Liquid Caps Lemon 24pk', 'Home and Outdoor', 21, 'Morning Fresh Dishwashing Auto Liquid Caps Lemon 24pk', 'images/detergent/mf3.JPG', 15.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Morning Fresh Dishwashing Auto Liquid Caps Apple 24pk', 'Home and Outdoor', 21, 'Morning Fresh Dishwashing Auto Liquid Caps Apple 24pk', 'images/detergent/mf4.JPG', 15.99, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Finish Dishwashing Cleaner Liquid 250ml', 'Home and Outdoor', 20, 'Finish Dishwashing Cleaner Liquid 250ml', 'images/detergent/finish2.jpg', 6.99, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Morning Fresh Diswashing Liquid value Pack 1.25l', 'Home and Outdoor', 21, 'Morning Fresh Diswashing Liquid value Pack 1.25l', 'images/detergent/mf5.jpg', 5.00, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Palmolive Dishwashing Liquid Antibacterial Lemon 400ml\r\n', 'Home and Outdoor', 22, 'Palmolive Dishwashing Liquid Antibacterial Lemon 400ml\r\n', 'images/detergent/palm.jpg', 2.99, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Palmolive Dishwashing Liquid Antibacterial Lemon 750ml', 'Home and Outdoor', 22, 'Palmolive Dishwashing Liquid Antibacterial Lemon 750ml', 'images/detergent/palm2.jpg', 5.49, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Palmolive Dishwashing Liquid Ultra Original 400ml', 'Home and Outdoor', 22, 'Palmolive Dishwashing Liquid Ultra Original 400ml', 'images/detergent/palm3.jpg', 2.99, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Palmolive Dishwashing Liquid Ultra Original 750ml\r\n', 'Home and Outdoor', 22, 'Palmolive Dishwashing Liquid Ultra Original 750ml\r\n', 'images/detergent/palm4.jpg', 5.49, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Earth choice Dishwashing liquid 900ml', 'Home and Outdoor', 23, 'Earth choice Dishwashing liquid 900ml', 'images/detergent/earth.JPG', 5.35, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Morning Fresh Diswashing Liquid Original Fresh 400ml\r\n', 'Home and Outdoor', 21, 'Morning Fresh Diswashing Liquid Original Fresh 400ml\r\n', 'images/detergent/mf6.JPG', 3.95, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Morning Fresh Diswashing Liquid Advanced 400ml\r\n', 'Home and Outdoor', 21, 'Morning Fresh Diswashing Liquid Advanced 400ml\r\n', 'images/detergent/mf7.JPG', 3.95, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Morning Fresh Diswashing Liquid Lemon Fresh 400ml', 'Home and Outdoor', 21, 'Morning Fresh Diswashing Liquid Lemon Fresh 400ml', 'images/detergent/mf8.JPG', 3.95, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Pauls Full Cream Milk 2l', 'Chilled', 24, 'Pauls Full Cream Milk 2l', 'images/milk/paul.JPG', 4.89, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Farmers'' Own Unhomogenised Full Cream Milk 3l', 'Chilled', 25, 'Farmers'' Own Unhomogenised Full Cream Milk 3l', 'images/milk/farm.JPG', 4.79, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'A2 Full Cream Milk 1l', 'Chilled', 26, 'A2 Full Cream Milk 1l', 'images/milk/a2.jpg', 2.79, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Paul Full Cream Milk 300ml', 'Chilled', 24, 'Paul Full Cream Milk 300ml', 'images/milk/paul2.jpg', 0.99, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Farmers'' Own Full Cream Milk 3l', 'Chilled', 25, 'Farmers'' Own Full Cream Milk 3l', 'images/milk/farm2.jpg', 4.49, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Twinings Tea Bag 100pk', 'Chilled', 27, 'Twinings Tea Bag 100pk', 'images/milk/twinings.jpg', 6.00, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Dairy Farmers Permeate Free Full Cream Milk 1l', 'Chilled', 28, 'Dairy Farmers Permeate Free Full Cream Milk 1l', 'images/milk/dairy.jpg', 2.15, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Farmers'' Own Full Cream Milk Unhomogenised 2l', 'Chilled', 25, 'Farmers'' Own Full Cream Milk Unhomogenised 2l', 'images/milk/farm3.jpg', 3.45, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Farmers'' Own Full Cream Milk Homogenised 2l', 'Chilled', 25, 'Farmers'' Own Full Cream Milk Homogenised 2l', 'images/milk/farm4.JPG', 3.29, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Riverina Full Cream Milk 2l', 'Chilled', 29, 'Riverina Full Cream Milk 2l', 'images/milk/rive.jpg', 2.99, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Golden Pasta Gnocchi Potato 500g', 'Chilled', 30, 'Golden Pasta Gnocchi Potato 500g', 'images/pasta/gnochi.jpg', 5.30, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Golden Pasta Gnocchi Potato Wholemeal 500g', 'Chilled', 30, 'Golden Pasta Gnocchi Potato Wholemeal 500g', 'images/pasta/gnochi2.jpg', 5.27, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Latina Fresh Agnolotti Spinach & Ricotta 375g', 'Chilled', 31, 'Latina Fresh Agnolotti Spinach & Ricotta 375g', 'images/pasta/latina.jpg', 6.00, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Latina Fresh Capeletti Mushroom, Onion & Feta 280g', 'Chilled', 31, 'Latina Fresh Capeletti Mushroom, Onion & Feta 280g', 'images/pasta/latina2.JPG', 6.05, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Latina Fresh Capelletti Prosciutto Ricotta 280g', 'Chilled', 31, 'Latina Fresh Capelletti Prosciutto Ricotta 280g', 'images/pasta/latina3.JPG', 6.05, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Latina Fresh Pasta Pumpkin Capelletti  280g', 'Chilled', 31, 'Latina Fresh Pasta Pumpkin Capelletti 280g', 'images/pasta/latina4.JPG', 6.05, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Latina Fresh Pasta Sauce Cheese, Bacon & Mushroom 425g', 'Chilled', 32, 'Latina Fresh Pasta Sauce Cheese, Bacon & Mushroom 425g', 'images/pasta/latina5.jpg', 5.45, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Latina Fresh Pasta Sauce Creamy Carbonara 425g', 'Chilled', 32, 'Latina Fresh Pasta Sauce Creamy Carbonara 425g', 'images/pasta/latina6.jpg', 5.45, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Leggos Fresh Ravioli Roasted Pumpkin 360g', 'Chilled', 33, 'Leggos Fresh Ravioli Roasted Pumpkin 360g', 'images/pasta/leggo.jpg', 5.30, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Leggos Pasta Sauce Bolognese 340g', 'Chilled', 34, 'Leggos Pasta Sauce Bolognese 340g', 'images/pasta/leggo2.jpg', 4.15, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `is_valid` int(11) NOT NULL,
  `shopping_letter` int(11) NOT NULL DEFAULT '0',
  `total_time` int(11) NOT NULL,
  `timer` int(11) NOT NULL,
  `total_purchase` decimal(10,2) NOT NULL,
  `total_point` int(11) NOT NULL,
  `shopping_complete` int(11) NOT NULL,
  `question1` int(11) NOT NULL,
  `question2` int(11) NOT NULL,
  `question3` int(11) NOT NULL,
  `question4a` int(11) NOT NULL,
  `question4b` int(11) NOT NULL,
  `question4c` int(11) NOT NULL,
  `question4d` int(11) NOT NULL,
  `question5a` int(11) NOT NULL,
  `question5b` int(11) NOT NULL,
  `question5c` int(11) NOT NULL,
  `question5d` int(11) NOT NULL,
  `question5e` int(11) NOT NULL,
  `question5f` int(11) NOT NULL,
  `question5g` int(11) NOT NULL,
  `question5h` int(11) NOT NULL,
  `question5i` int(11) NOT NULL,
  `question5j` int(11) NOT NULL,
  `question5k` int(11) NOT NULL,
  `question5l` int(11) NOT NULL,
  `question5m` int(11) NOT NULL,
  `question5n` int(11) NOT NULL,
  `question5o` int(11) NOT NULL,
  `question5p` int(11) NOT NULL,
  `question5q` int(11) NOT NULL,
  `question5r` int(11) NOT NULL,
  `question5s` int(11) NOT NULL,
  `question5t` int(11) NOT NULL,
  `question6a` int(11) NOT NULL,
  `question6b` int(11) NOT NULL,
  `question6c` int(11) NOT NULL,
  `question6d` int(11) NOT NULL,
  `question6e` int(11) NOT NULL,
  `question6f` int(11) NOT NULL,
  `question7a` int(11) NOT NULL,
  `question7b` int(11) NOT NULL,
  `question7c` int(11) NOT NULL,
  `question7d` int(11) NOT NULL,
  `question8a` int(11) NOT NULL,
  `question8b` int(11) NOT NULL,
  `question8c` int(11) NOT NULL,
  `question8d` int(11) NOT NULL,
  `question8e` int(11) NOT NULL,
  `question8f` int(11) NOT NULL,
  `question9a1` int(11) NOT NULL,
  `question9a2` int(11) NOT NULL,
  `question9a3` int(11) NOT NULL,
  `question9b` int(11) NOT NULL,
  `question9c` int(11) NOT NULL,
  `question9d` int(11) NOT NULL,
  `question9e` int(11) NOT NULL,
  `question9f` int(11) NOT NULL,
  `question9g` int(11) NOT NULL,
  `question10` int(11) NOT NULL,
  `question11` int(11) NOT NULL,
  `question12` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=244 ;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `user_id`, `is_valid`, `shopping_letter`, `total_time`, `timer`, `total_purchase`, `total_point`, `shopping_complete`, `question1`, `question2`, `question3`, `question4a`, `question4b`, `question4c`, `question4d`, `question5a`, `question5b`, `question5c`, `question5d`, `question5e`, `question5f`, `question5g`, `question5h`, `question5i`, `question5j`, `question5k`, `question5l`, `question5m`, `question5n`, `question5o`, `question5p`, `question5q`, `question5r`, `question5s`, `question5t`, `question6a`, `question6b`, `question6c`, `question6d`, `question6e`, `question6f`, `question7a`, `question7b`, `question7c`, `question7d`, `question8a`, `question8b`, `question8c`, `question8d`, `question8e`, `question8f`, `question9a1`, `question9a2`, `question9a3`, `question9b`, `question9c`, `question9d`, `question9e`, `question9f`, `question9g`, `question10`, `question11`, `question12`, `created_at`, `updated_at`) VALUES
(144, 166, 1, 4, 23, 1, 101.29, 465, 1, 1, 1, 1985, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 06:15:03', '2016-07-08 06:16:29'),
(145, 167, 1, 4, 1, 2, 0.00, 0, 1, 1, 1, 1985, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 06:15:38', '2016-07-08 06:17:56'),
(146, 168, 2, 0, 0, 0, 0.00, 0, 0, 1, 1, 1991, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 06:54:51', '2016-07-08 06:54:51'),
(147, 169, 1, 4, 3, 1, 14.92, 145, 1, 1, 1, 1971, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 06:58:14', '2016-07-08 06:59:57'),
(148, 170, 1, 4, 0, 2, 0.00, 0, 1, 1, 1, 1991, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 06:59:26', '2016-07-08 07:00:57'),
(149, 171, 2, 0, 0, 0, 0.00, 0, 0, 1, 2, 1987, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 07:29:28', '2016-07-08 07:29:28'),
(150, 172, 1, 4, 1, 2, 10.19, 10, 1, 2, 1, 1973, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 10:53:06', '2016-07-08 10:54:31'),
(151, 173, 1, 4, 0, 2, 0.00, 0, 1, 1, 2, 1978, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 11:05:21', '2016-07-08 11:07:58'),
(152, 174, 1, 4, 1, 2, 74.65, 335, 1, 1, 2, 1980, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 11:05:33', '2016-07-08 11:09:06'),
(153, 175, 1, 4, 0, 2, 46.65, 200, 1, 1, 2, 1983, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 11:10:33', '2016-07-08 11:12:30'),
(154, 176, 1, 4, 0, 2, 23.18, 30, 1, 1, 1, 1946, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 13:36:39', '2016-07-08 13:39:35'),
(155, 177, 1, 0, 0, 0, 0.00, 0, 0, 2, 2, 1977, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 14:00:04', '2016-07-08 14:00:04'),
(156, 178, 1, 4, 0, 2, 21.95, 70, 1, 2, 1, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 14:44:36', '2016-07-08 14:46:01'),
(157, 179, 1, 4, 1, 2, 55.00, 90, 1, 2, 1, 1974, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 16:02:23', '2016-07-08 16:04:29'),
(158, 180, 1, 4, 0, 0, 0.00, 0, 0, 2, 2, 1991, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 16:09:05', '2016-07-08 16:09:11'),
(159, 181, 1, 4, 0, 0, 0.00, 0, 0, 2, 2, 1968, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 16:23:08', '2016-07-08 16:23:51'),
(160, 182, 1, 4, 1, 2, 82.89, 110, 1, 1, 2, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-08 18:25:45', '2016-07-08 18:27:18'),
(161, 183, 1, 4, 12, 1, 114.20, 165, 1, 2, 2, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-09 02:17:49', '2016-07-09 02:20:45'),
(162, 184, 1, 4, 0, 0, 0.00, 0, 0, 1, 1, 1970, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-09 05:27:55', '2016-07-09 05:28:35'),
(163, 185, 1, 4, 15, 1, 101.03, 50, 1, 1, 1, 1983, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-09 08:18:42', '2016-07-09 08:19:58'),
(164, 186, 1, 4, 0, 2, 96.20, 155, 1, 2, 1, 1990, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-09 09:11:15', '2016-07-09 09:13:10'),
(165, 187, 1, 4, 0, 2, 10.00, 50, 1, 2, 2, 1996, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-09 14:10:21', '2016-07-09 14:11:52'),
(166, 188, 1, 4, 0, 2, 17.25, 10, 1, 2, 1, 1966, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-10 03:48:44', '2016-07-10 03:53:26'),
(167, 189, 1, 4, 0, 2, 0.00, 0, 1, 1, 2, 1977, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-10 05:11:01', '2016-07-10 05:13:22'),
(168, 190, 1, 4, 0, 2, 69.75, 400, 1, 2, 1, 1988, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-10 10:57:04', '2016-07-10 10:59:42'),
(169, 191, 1, 4, 0, 0, 0.00, 0, 0, 2, 2, 1987, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-10 21:16:12', '2016-07-10 21:16:30'),
(170, 192, 1, 4, 0, 2, 47.90, 10, 1, 2, 2, 1987, 0, 0, 0, 4, 5, 1, 5, 1, 4, 3, 1, 5, 1, 1, 2, 1, 1, 5, 1, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 1, 3, 4, 4, 1, 2, 3, 4, 3, 2, 1, 1, 6, 1, 2, 2, 3, 3, 6, 2, 71, 2131, 7, '2016-07-11 04:37:34', '2016-07-11 05:03:10'),
(171, 193, 1, 4, 18, 1, 64.55, 210, 1, 2, 1, 1978, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 05:08:43', '2016-07-11 05:10:19'),
(172, 194, 1, 4, 1, 2, 12.14, 100, 1, 2, 2, 1984, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 05:36:45', '2016-07-11 05:38:35'),
(173, 195, 1, 4, 1, 2, 0.00, 0, 1, 1, 1, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 07:19:32', '2016-07-11 07:32:13'),
(174, 196, 1, 4, 0, 2, 76.95, 85, 1, 2, 2, 1989, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 07:21:46', '2016-07-11 07:23:24'),
(175, 197, 2, 0, 0, 0, 0.00, 0, 0, 1, 1, 1971, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 07:48:30', '2016-07-11 07:48:30'),
(176, 198, 1, 4, 0, 0, 0.00, 0, 0, 2, 1, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 07:48:44', '2016-07-11 07:49:22'),
(177, 199, 1, 4, 0, 2, 50.89, 30, 1, 1, 2, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 09:12:25', '2016-07-11 09:13:56'),
(178, 200, 1, 4, 23, 1, 87.81, 510, 1, 1, 1, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 10:59:11', '2016-07-11 11:00:20'),
(179, 201, 1, 4, 6, 1, 102.30, 290, 1, 1, 2, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:01:45', '2016-07-11 11:05:26'),
(180, 202, 1, 4, 0, 2, 53.05, 20, 1, 1, 2, 1968, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:09:28', '2016-07-11 11:11:11'),
(181, 203, 1, 4, 0, 2, 15.85, 20, 1, 1, 2, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:11:45', '2016-07-11 11:13:12'),
(182, 204, 1, 4, 0, 2, 50.00, 50, 1, 1, 1, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:29:58', '2016-07-11 11:33:06'),
(183, 205, 1, 4, 0, 2, 72.63, 135, 1, 2, 1, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:30:27', '2016-07-11 11:32:20'),
(184, 206, 1, 4, 0, 2, 0.00, 0, 1, 1, 2, 1986, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:31:22', '2016-07-11 11:33:38'),
(185, 207, 1, 4, 0, 2, 35.97, 140, 1, 1, 1, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 11:45:58', '2016-07-11 11:47:53'),
(186, 208, 1, 4, 0, 1, 0.00, 0, 1, 1, 2, 1989, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 12:20:07', '2016-07-11 12:21:57'),
(187, 209, 1, 4, 1, 2, 34.02, 30, 1, 1, 2, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 16:34:05', '2016-07-11 16:35:46'),
(188, 210, 1, 4, 0, 2, 8.28, 95, 1, 1, 2, 1976, 0, 0, 0, 4, 2, 2, 2, 2, 4, 2, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 2, 5, 5, 2, 6, 6, 5, 6, 4, 2, 3, 4, 4, 4, 3, 4, 2, 2, 7, 21, 4118, 7, '2016-07-11 19:40:02', '2016-07-11 19:48:12'),
(189, 211, 1, 4, 0, 2, 47.96, 140, 1, 1, 2, 1989, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 20:38:09', '2016-07-11 20:39:43'),
(190, 212, 1, 4, 24, 1, 0.00, 0, 1, 1, 3, 1956, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 21:36:10', '2016-07-11 21:37:37'),
(191, 213, 1, 4, 29, 1, 100.00, 50, 1, 2, 2, 1993, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-11 21:49:10', '2016-07-11 21:50:44'),
(192, 214, 1, 4, 0, 2, 69.57, 135, 1, 1, 2, 1983, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 02:09:51', '2016-07-12 02:11:21'),
(193, 215, 1, 4, 0, 0, 0.00, 0, 0, 1, 2, 1968, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 02:39:48', '2016-07-12 02:40:10'),
(194, 216, 1, 4, 0, 0, 0.00, 0, 0, 1, 1, 1983, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 05:16:51', '2016-07-12 05:17:07'),
(195, 217, 1, 4, 43, 1, 0.00, 0, 1, 2, 1, 1929, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 06:46:58', '2016-07-12 06:47:35'),
(196, 218, 1, 4, 0, 0, 0.00, 0, 0, 1, 2, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 08:33:30', '2016-07-12 08:33:47'),
(197, 219, 2, 0, 0, 0, 0.00, 0, 0, 2, 2, 1981, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 10:04:24', '2016-07-12 10:04:24'),
(198, 220, 1, 4, 1, 2, 93.47, 270, 1, 2, 1, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-12 12:20:20', '2016-07-12 12:21:49'),
(199, 221, 1, 4, 0, 0, 0.00, 0, 0, 1, 2, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-13 10:30:58', '2016-07-13 10:31:22'),
(200, 222, 1, 4, 0, 2, 22.58, 50, 1, 1, 2, 1990, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-22 06:15:49', '2016-07-22 06:17:31'),
(201, 223, 1, 4, 25, 1, 100.89, 175, 1, 2, 2, 1996, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 10:21:29', '2016-07-26 10:22:28'),
(202, 224, 1, 4, 0, 2, 36.03, 95, 1, 1, 2, 1997, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 10:22:17', '2016-07-26 10:24:36'),
(203, 225, 1, 4, 0, 2, 0.00, 0, 1, 1, 2, 1997, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 10:35:42', '2016-07-26 10:37:31'),
(204, 226, 1, 4, 0, 2, 81.78, 270, 1, 1, 2, 1977, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 11:24:13', '2016-07-26 11:25:31'),
(205, 227, 1, 4, 15, 1, 125.29, 350, 1, 1, 2, 1998, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 11:46:30', '2016-07-26 11:48:10'),
(206, 228, 1, 4, 0, 2, 61.84, 310, 1, 1, 1, 1985, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 11:59:12', '2016-07-26 12:00:31'),
(207, 229, 1, 4, 1, 2, 61.14, 210, 1, 1, 2, 1997, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 12:30:24', '2016-07-26 12:32:43'),
(208, 230, 2, 0, 0, 0, 0.00, 0, 0, 1, 2, 1993, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 13:44:53', '2016-07-26 13:44:53'),
(209, 231, 1, 4, 1, 2, 44.81, 365, 1, 2, 2, 1995, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 22:56:00', '2016-07-26 22:57:41'),
(210, 232, 1, 4, 0, 2, 2.99, 20, 1, 1, 2, 1996, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-26 22:56:03', '2016-07-26 22:57:39'),
(211, 233, 1, 4, 0, 2, 31.31, 190, 1, 1, 1, 1998, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-27 01:17:14', '2016-07-27 01:18:52'),
(212, 234, 1, 0, 0, 0, 0.00, 0, 0, 2, 2, 1997, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-27 06:33:10', '2016-07-27 06:33:10'),
(213, 235, 2, 0, 0, 0, 0.00, 0, 0, 2, 1, 1994, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-27 08:14:57', '2016-07-27 08:14:57'),
(214, 236, 1, 4, 24, 1, 103.92, 20, 1, 1, 2, 1994, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-27 09:05:57', '2016-07-27 09:07:11'),
(215, 237, 1, 4, 21, 1, 101.84, 380, 1, 2, 1, 1996, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-27 10:04:55', '2016-07-27 10:06:01'),
(216, 238, 1, 4, 0, 2, 30.92, 165, 1, 1, 2, 1997, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-28 02:50:43', '2016-07-28 02:53:01'),
(217, 239, 1, 4, 6, 1, 109.84, 350, 1, 2, 2, 1998, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-28 02:56:30', '2016-07-28 02:58:22'),
(218, 240, 1, 4, 25, 1, 105.20, 285, 1, 1, 2, 1997, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-28 04:22:17', '2016-07-28 04:23:23'),
(219, 241, 2, 0, 0, 0, 0.00, 0, 0, 1, 1, 1987, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-28 10:53:08', '2016-07-28 10:53:08'),
(220, 242, 1, 4, 0, 0, 0.00, 0, 0, 2, 2, 1996, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-29 04:29:05', '2016-07-29 04:29:12'),
(221, 243, 2, 0, 0, 0, 0.00, 0, 0, 2, 2, 1997, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-29 05:33:02', '2016-07-29 05:33:02'),
(222, 244, 2, 0, 0, 0, 0.00, 0, 0, 1, 2, 1994, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-29 07:11:24', '2016-07-29 07:11:24'),
(223, 245, 1, 4, 0, 1, 0.00, 0, 1, 1, 2, 1996, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-07-31 01:21:58', '2016-07-31 01:24:41'),
(224, 246, 2, 0, 0, 0, 0.00, 0, 0, 1, 2, 1997, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-08-01 09:27:28', '2016-08-01 09:27:28'),
(225, 247, 1, 0, 0, 0, 0.00, 0, 0, 1, 2, 1995, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-08-02 04:04:07', '2016-08-02 04:04:07'),
(226, 248, 1, 4, 35, 1, 0.00, 0, 1, 1, 2, 1925, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-01 07:00:04', '2016-12-01 07:10:35'),
(227, 249, 1, 4, 0, 1, 0.00, 0, 1, 1, 2, 1978, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 09:22:34', '2016-12-03 09:40:57'),
(228, 250, 1, 4, 0, 2, 67.22, 125, 1, 2, 2, 1971, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:20:10', '2016-12-03 11:22:04'),
(229, 251, 1, 4, 0, 2, 71.61, 420, 1, 1, 2, 1989, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:21:34', '2016-12-03 11:23:06'),
(230, 252, 1, 4, 0, 2, 10.70, 10, 1, 1, 2, 1972, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:22:48', '2016-12-03 11:24:46'),
(231, 253, 1, 4, 0, 2, 26.99, 190, 1, 1, 2, 1993, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:25:24', '2016-12-03 11:26:56'),
(232, 254, 1, 4, 0, 2, 41.94, 90, 1, 1, 2, 1987, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:36:14', '2016-12-03 11:38:50'),
(233, 255, 1, 4, 0, 2, 54.84, 300, 1, 1, 2, 1995, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:39:10', '2016-12-03 11:41:54'),
(234, 256, 1, 4, 1, 2, 28.28, 110, 1, 1, 2, 1978, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 11:50:04', '2016-12-03 11:51:50'),
(235, 257, 1, 4, 0, 2, 32.99, 20, 1, 2, 2, 1981, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 12:19:11', '2016-12-03 12:24:39'),
(236, 258, 1, 4, 8, 1, 115.21, 420, 1, 1, 2, 1984, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 12:37:18', '2016-12-03 12:38:55'),
(237, 259, 1, 4, 0, 2, 96.46, 60, 1, 1, 2, 1985, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 12:57:54', '2016-12-03 12:59:51'),
(238, 260, 1, 4, 0, 2, 0.00, 0, 1, 1, 2, 1960, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 14:15:12', '2016-12-03 14:19:27'),
(239, 261, 1, 4, 0, 0, 0.00, 0, 0, 1, 3, 1951, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 14:52:12', '2016-12-03 14:52:24'),
(240, 262, 1, 4, 0, 2, 0.00, 0, 1, 2, 2, 1979, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 15:56:09', '2016-12-03 15:58:07'),
(241, 263, 1, 4, 0, 2, 76.92, 205, 1, 1, 2, 1985, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 21:56:14', '2016-12-03 21:58:02'),
(242, 264, 1, 4, 0, 2, 36.89, 290, 1, 1, 3, 1978, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 02:06:57', '2016-12-04 02:08:53'),
(243, 265, 1, 4, 0, 0, 0.00, 0, 0, 1, 2, 1974, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-21 10:09:50', '2016-12-21 10:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `consent` tinyint(1) NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `loyalty_program` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthyear` int(11) NOT NULL,
  `related_industry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_valid` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `total_purchase` int(11) NOT NULL,
  `total_point` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=266 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `consent`, `firstname`, `lastname`, `email`, `password`, `loyalty_program`, `gender`, `birthyear`, `related_industry`, `is_valid`, `total_time`, `total_purchase`, `total_point`, `remember_token`, `created_at`, `updated_at`) VALUES
(166, 1, '', '', '', '', '1', '1', 1985, '', 1, 23, 101, 465, NULL, '2016-07-08 06:15:03', '2016-07-08 06:16:29'),
(167, 1, '', '', '', '', '1', '1', 1985, '', 1, 1, 0, 0, NULL, '2016-07-08 06:15:38', '2016-07-08 06:17:56'),
(168, 1, '', '', '', '', '1', '1', 1991, '', 2, 0, 0, 0, NULL, '2016-07-08 06:54:51', '2016-07-08 06:54:51'),
(169, 1, '', '', '', '', '1', '1', 1971, '', 1, 3, 15, 145, NULL, '2016-07-08 06:58:14', '2016-07-08 06:59:57'),
(170, 1, '', '', '', '', '1', '1', 1991, '', 1, 0, 0, 0, NULL, '2016-07-08 06:59:26', '2016-07-08 07:00:57'),
(171, 1, '', '', '', '', '1', '2', 1987, '', 2, 0, 0, 0, NULL, '2016-07-08 07:29:28', '2016-07-08 07:29:28'),
(172, 1, '', '', '', '', '2', '1', 1973, '', 1, 1, 10, 10, NULL, '2016-07-08 10:53:06', '2016-07-08 10:54:31'),
(173, 1, '', '', '', '', '1', '2', 1978, '', 1, 0, 0, 0, NULL, '2016-07-08 11:05:21', '2016-07-08 11:05:21'),
(174, 1, '', '', '', '', '1', '2', 1980, '', 1, 1, 75, 335, NULL, '2016-07-08 11:05:33', '2016-07-08 11:09:06'),
(175, 1, '', '', '', '', '1', '2', 1983, '', 1, 0, 47, 200, NULL, '2016-07-08 11:10:33', '2016-07-08 11:12:30'),
(176, 1, '', '', '', '', '1', '1', 1946, '', 1, 0, 23, 30, NULL, '2016-07-08 13:36:39', '2016-07-08 13:39:35'),
(177, 1, '', '', '', '', '2', '2', 1977, '', 1, 0, 0, 0, NULL, '2016-07-08 14:00:04', '2016-07-08 14:00:04'),
(178, 1, '', '', '', '', '2', '1', 1972, '', 1, 0, 22, 70, NULL, '2016-07-08 14:44:36', '2016-07-08 14:46:01'),
(179, 1, '', '', '', '', '2', '1', 1974, '', 1, 1, 55, 90, NULL, '2016-07-08 16:02:23', '2016-07-08 16:04:29'),
(180, 1, '', '', '', '', '2', '2', 1991, '', 1, 0, 0, 0, NULL, '2016-07-08 16:09:05', '2016-07-08 16:09:05'),
(181, 1, '', '', '', '', '2', '2', 1968, '', 1, 0, 0, 0, NULL, '2016-07-08 16:23:08', '2016-07-08 16:23:08'),
(182, 1, '', '', '', '', '1', '2', 1979, '', 1, 1, 83, 110, NULL, '2016-07-08 18:25:45', '2016-07-08 18:27:18'),
(183, 1, '', '', '', '', '2', '2', 1981, '', 1, 12, 114, 165, NULL, '2016-07-09 02:17:49', '2016-07-09 02:20:45'),
(184, 1, '', '', '', '', '1', '1', 1970, '', 1, 0, 0, 0, NULL, '2016-07-09 05:27:55', '2016-07-09 05:27:55'),
(185, 1, '', '', '', '', '1', '1', 1983, '', 1, 15, 101, 50, NULL, '2016-07-09 08:18:42', '2016-07-09 08:19:58'),
(186, 1, '', '', '', '', '2', '1', 1990, '', 1, 0, 96, 155, NULL, '2016-07-09 09:11:15', '2016-07-09 09:13:10'),
(187, 1, '', '', '', '', '2', '2', 1996, '', 1, 0, 10, 50, NULL, '2016-07-09 14:10:21', '2016-07-09 14:11:52'),
(188, 1, '', '', '', '', '2', '1', 1966, '', 1, 0, 17, 10, NULL, '2016-07-10 03:48:44', '2016-07-10 03:53:26'),
(189, 1, '', '', '', '', '1', '2', 1977, '', 1, 0, 0, 0, NULL, '2016-07-10 05:11:01', '2016-07-10 05:13:22'),
(190, 1, '', '', '', '', '2', '1', 1988, '', 1, 0, 70, 400, NULL, '2016-07-10 10:57:04', '2016-07-10 10:59:42'),
(191, 1, '', '', '', '', '2', '2', 1987, '', 1, 0, 0, 0, NULL, '2016-07-10 21:16:12', '2016-07-10 21:16:12'),
(192, 1, '', '', '', '', '2', '2', 1987, '', 1, 0, 48, 10, 'BshDohTDtmO93kdJrhpWNwRQZkM7Kb1IYwD98pwr6pdpBAaqru17SCUXHl04', '2016-07-11 04:37:34', '2016-07-11 05:03:10'),
(193, 1, '', '', '', '', '2', '1', 1978, '', 1, 18, 65, 210, NULL, '2016-07-11 05:08:43', '2016-07-11 05:10:19'),
(194, 1, '', '', '', '', '2', '2', 1984, '', 1, 1, 12, 100, NULL, '2016-07-11 05:36:45', '2016-07-11 05:38:35'),
(195, 1, '', '', '', '', '1', '1', 1979, '', 1, 1, 0, 0, NULL, '2016-07-11 07:19:32', '2016-07-11 07:32:13'),
(196, 1, '', '', '', '', '2', '2', 1989, '', 1, 0, 77, 85, NULL, '2016-07-11 07:21:46', '2016-07-11 07:23:24'),
(197, 1, '', '', '', '', '1', '1', 1971, '', 2, 0, 0, 0, NULL, '2016-07-11 07:48:30', '2016-07-11 07:48:30'),
(198, 1, '', '', '', '', '2', '1', 1979, '', 1, 0, 0, 0, NULL, '2016-07-11 07:48:44', '2016-07-11 07:48:44'),
(199, 1, '', '', '', '', '1', '2', 1981, '', 1, 0, 51, 30, NULL, '2016-07-11 09:12:25', '2016-07-11 09:13:56'),
(200, 1, '', '', '', '', '1', '1', 1981, '', 1, 23, 88, 510, NULL, '2016-07-11 10:59:11', '2016-07-11 11:00:20'),
(201, 1, '', '', '', '', '1', '2', 1981, '', 1, 6, 102, 290, NULL, '2016-07-11 11:01:45', '2016-07-11 11:05:26'),
(202, 1, '', '', '', '', '1', '2', 1968, '', 1, 0, 53, 20, NULL, '2016-07-11 11:09:28', '2016-07-11 11:11:11'),
(203, 1, '', '', '', '', '1', '2', 1981, '', 1, 0, 16, 20, NULL, '2016-07-11 11:11:45', '2016-07-11 11:13:12'),
(204, 1, '', '', '', '', '1', '1', 1972, '', 1, 0, 50, 50, NULL, '2016-07-11 11:29:58', '2016-07-11 11:33:06'),
(205, 1, '', '', '', '', '2', '1', 1981, '', 1, 0, 73, 135, NULL, '2016-07-11 11:30:27', '2016-07-11 11:32:20'),
(206, 1, '', '', '', '', '1', '2', 1986, '', 1, 0, 0, 0, NULL, '2016-07-11 11:31:22', '2016-07-11 11:31:22'),
(207, 1, '', '', '', '', '1', '1', 1979, '', 1, 0, 36, 140, NULL, '2016-07-11 11:45:58', '2016-07-11 11:47:53'),
(208, 1, '', '', '', '', '1', '2', 1989, '', 1, 0, 0, 0, NULL, '2016-07-11 12:20:07', '2016-07-11 12:21:57'),
(209, 1, '', '', '', '', '1', '2', 1972, '', 1, 1, 34, 30, NULL, '2016-07-11 16:34:05', '2016-07-11 16:35:46'),
(210, 1, '', '', '', '', '1', '2', 1976, '', 1, 0, 8, 95, 'gw7Io8urTaeWwIDa3X5sM0j72HznJlPrEJ5PgkovlnBETdc1wBJ6sOSa4Rzb', '2016-07-11 19:40:02', '2016-07-11 19:48:12'),
(211, 1, '', '', '', '', '1', '2', 1989, '', 1, 0, 48, 140, NULL, '2016-07-11 20:38:09', '2016-07-11 20:39:43'),
(212, 1, '', '', '', '', '1', '3', 1956, '', 1, 24, 0, 0, NULL, '2016-07-11 21:36:10', '2016-07-11 21:37:37'),
(213, 1, '', '', '', '', '2', '2', 1993, '', 1, 29, 100, 50, NULL, '2016-07-11 21:49:10', '2016-07-11 21:50:44'),
(214, 1, '', '', '', '', '1', '2', 1983, '', 1, 0, 70, 135, NULL, '2016-07-12 02:09:51', '2016-07-12 02:11:21'),
(215, 1, '', '', '', '', '1', '2', 1968, '', 1, 0, 0, 0, NULL, '2016-07-12 02:39:48', '2016-07-12 02:39:48'),
(216, 1, '', '', '', '', '1', '1', 1983, '', 1, 0, 0, 0, NULL, '2016-07-12 05:16:51', '2016-07-12 05:16:51'),
(217, 1, '', '', '', '', '2', '1', 1929, '', 1, 43, 0, 0, NULL, '2016-07-12 06:46:58', '2016-07-12 06:47:35'),
(218, 1, '', '', '', '', '1', '2', 1972, '', 1, 0, 0, 0, NULL, '2016-07-12 08:33:30', '2016-07-12 08:33:30'),
(219, 1, '', '', '', '', '2', '2', 1981, '', 2, 0, 0, 0, NULL, '2016-07-12 10:04:24', '2016-07-12 10:04:24'),
(220, 1, '', '', '', '', '2', '1', 1972, '', 1, 1, 93, 270, NULL, '2016-07-12 12:20:20', '2016-07-12 12:21:49'),
(221, 1, '', '', '', '', '1', '2', 1979, '', 1, 0, 0, 0, NULL, '2016-07-13 10:30:58', '2016-07-13 10:30:58'),
(222, 1, '', '', '', '', '1', '2', 1990, '', 1, 0, 23, 50, NULL, '2016-07-22 06:15:49', '2016-07-22 06:17:31'),
(223, 1, '', '', '', '', '2', '2', 1996, '', 1, 25, 101, 175, NULL, '2016-07-26 10:21:29', '2016-07-26 10:22:28'),
(224, 1, '', '', '', '', '1', '2', 1997, '', 1, 0, 36, 95, NULL, '2016-07-26 10:22:17', '2016-07-26 10:24:36'),
(225, 1, '', '', '', '', '1', '2', 1997, '', 1, 0, 0, 0, NULL, '2016-07-26 10:35:42', '2016-07-26 10:35:42'),
(226, 1, '', '', '', '', '1', '2', 1977, '', 1, 0, 82, 270, NULL, '2016-07-26 11:24:13', '2016-07-26 11:25:31'),
(227, 1, '', '', '', '', '1', '2', 1998, '', 1, 15, 125, 350, NULL, '2016-07-26 11:46:30', '2016-07-26 11:48:10'),
(228, 1, '', '', '', '', '1', '1', 1985, '', 1, 0, 62, 310, NULL, '2016-07-26 11:59:12', '2016-07-26 12:00:31'),
(229, 1, '', '', '', '', '1', '2', 1997, '', 1, 1, 61, 210, NULL, '2016-07-26 12:30:24', '2016-07-26 12:32:43'),
(230, 1, '', '', '', '', '1', '2', 1993, '', 2, 0, 0, 0, NULL, '2016-07-26 13:44:53', '2016-07-26 13:44:53'),
(231, 1, '', '', '', '', '2', '2', 1995, '', 1, 1, 45, 365, NULL, '2016-07-26 22:56:00', '2016-07-26 22:57:41'),
(232, 1, '', '', '', '', '1', '2', 1996, '', 1, 0, 3, 20, NULL, '2016-07-26 22:56:03', '2016-07-26 22:57:39'),
(233, 1, '', '', '', '', '1', '1', 1998, '', 1, 0, 31, 190, NULL, '2016-07-27 01:17:14', '2016-07-27 01:18:52'),
(234, 1, '', '', '', '', '2', '2', 1997, '', 1, 0, 0, 0, NULL, '2016-07-27 06:33:10', '2016-07-27 06:33:10'),
(235, 1, '', '', '', '', '2', '1', 1994, '', 2, 0, 0, 0, NULL, '2016-07-27 08:14:57', '2016-07-27 08:14:57'),
(236, 1, '', '', '', '', '1', '2', 1994, '', 1, 24, 104, 20, NULL, '2016-07-27 09:05:57', '2016-07-27 09:07:11'),
(237, 1, '', '', '', '', '2', '1', 1996, '', 1, 21, 102, 380, NULL, '2016-07-27 10:04:55', '2016-07-27 10:06:01'),
(238, 1, '', '', '', '', '1', '2', 1997, '', 1, 0, 31, 165, NULL, '2016-07-28 02:50:43', '2016-07-28 02:53:01'),
(239, 1, '', '', '', '', '2', '2', 1998, '', 1, 6, 110, 350, NULL, '2016-07-28 02:56:30', '2016-07-28 02:58:22'),
(240, 1, '', '', '', '', '1', '2', 1997, '', 1, 25, 105, 285, NULL, '2016-07-28 04:22:17', '2016-07-28 04:23:23'),
(241, 1, '', '', '', '', '1', '1', 1987, '', 2, 0, 0, 0, NULL, '2016-07-28 10:53:08', '2016-07-28 10:53:08'),
(242, 1, '', '', '', '', '2', '2', 1996, '', 1, 0, 0, 0, NULL, '2016-07-29 04:29:05', '2016-07-29 04:29:05'),
(243, 1, '', '', '', '', '2', '2', 1997, '', 2, 0, 0, 0, NULL, '2016-07-29 05:33:02', '2016-07-29 05:33:02'),
(244, 1, '', '', '', '', '1', '2', 1994, '', 2, 0, 0, 0, NULL, '2016-07-29 07:11:24', '2016-07-29 07:11:24'),
(245, 1, '', '', '', '', '1', '2', 1996, '', 1, 0, 0, 0, NULL, '2016-07-31 01:21:58', '2016-07-31 01:23:48'),
(246, 1, '', '', '', '', '1', '2', 1997, '', 2, 0, 0, 0, NULL, '2016-08-01 09:27:28', '2016-08-01 09:27:28'),
(247, 1, '', '', '', '', '1', '2', 1995, '', 1, 0, 0, 0, NULL, '2016-08-02 04:04:07', '2016-08-02 04:04:07'),
(248, 1, '', '', '', '', '1', '2', 1925, '', 1, 35, 0, 0, NULL, '2016-12-01 07:00:04', '2016-12-01 07:10:35'),
(249, 1, '', '', '', '', '1', '2', 1978, '', 1, 0, 0, 0, NULL, '2016-12-03 09:22:34', '2016-12-03 09:39:57'),
(250, 1, '', '', '', '', '2', '2', 1971, '', 1, 0, 67, 125, NULL, '2016-12-03 11:20:10', '2016-12-03 11:22:04'),
(251, 1, '', '', '', '', '1', '2', 1989, '', 1, 0, 72, 420, NULL, '2016-12-03 11:21:34', '2016-12-03 11:23:06'),
(252, 1, '', '', '', '', '1', '2', 1972, '', 1, 0, 11, 10, NULL, '2016-12-03 11:22:48', '2016-12-03 11:24:46'),
(253, 1, '', '', '', '', '1', '2', 1993, '', 1, 0, 27, 190, NULL, '2016-12-03 11:25:24', '2016-12-03 11:26:56'),
(254, 1, '', '', '', '', '1', '2', 1987, '', 1, 0, 42, 90, NULL, '2016-12-03 11:36:14', '2016-12-03 11:38:50'),
(255, 1, '', '', '', '', '1', '2', 1995, '', 1, 0, 55, 300, NULL, '2016-12-03 11:39:10', '2016-12-03 11:41:54'),
(256, 1, '', '', '', '', '1', '2', 1978, '', 1, 1, 28, 110, NULL, '2016-12-03 11:50:04', '2016-12-03 11:51:50'),
(257, 1, '', '', '', '', '2', '2', 1981, '', 1, 0, 33, 20, NULL, '2016-12-03 12:19:11', '2016-12-03 12:24:39'),
(258, 1, '', '', '', '', '1', '2', 1984, '', 1, 8, 115, 420, NULL, '2016-12-03 12:37:18', '2016-12-03 12:38:55'),
(259, 1, '', '', '', '', '1', '2', 1985, '', 1, 0, 96, 60, NULL, '2016-12-03 12:57:54', '2016-12-03 12:59:51'),
(260, 1, '', '', '', '', '1', '2', 1960, '', 1, 0, 0, 0, NULL, '2016-12-03 14:15:12', '2016-12-03 14:15:12'),
(261, 1, '', '', '', '', '1', '3', 1951, '', 1, 0, 0, 0, NULL, '2016-12-03 14:52:12', '2016-12-03 14:52:12'),
(262, 1, '', '', '', '', '2', '2', 1979, '', 1, 0, 0, 0, NULL, '2016-12-03 15:56:09', '2016-12-03 15:56:09'),
(263, 1, '', '', '', '', '1', '2', 1985, '', 1, 0, 77, 205, NULL, '2016-12-03 21:56:14', '2016-12-03 21:58:02'),
(264, 1, '', '', '', '', '1', '3', 1978, '', 1, 0, 37, 290, NULL, '2016-12-04 02:06:57', '2016-12-04 02:08:53'),
(265, 1, '', '', '', '', '1', '2', 1974, '', 1, 0, 0, 0, NULL, '2016-12-21 10:09:50', '2016-12-21 10:09:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
