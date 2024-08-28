-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2024 at 09:38 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', '2024-01-01 10:00:00', '2024-01-01 10:00:00'),
(2, 'Product 2', '2024-01-02 11:00:00', '2024-01-02 11:00:00'),
(3, 'Product 3', '2024-01-03 12:00:00', '2024-01-03 12:00:00'),
(4, 'Product 4', '2024-01-04 13:00:00', '2024-01-04 13:00:00'),
(5, 'Product 5', '2024-01-05 14:00:00', '2024-01-05 14:00:00'),
(6, 'Product 6', '2024-01-06 15:00:00', '2024-01-06 15:00:00'),
(7, 'Product 7', '2024-01-07 16:00:00', '2024-01-07 16:00:00'),
(8, 'Product 8', '2024-01-08 17:00:00', '2024-01-08 17:00:00'),
(9, 'Product 9', '2024-01-09 18:00:00', '2024-01-09 18:00:00'),
(10, 'Product 10', '2024-01-10 19:00:00', '2024-01-10 19:00:00'),
(11, 'Product 11', '2024-01-11 20:00:00', '2024-01-11 20:00:00'),
(12, 'Product 12', '2024-01-12 21:00:00', '2024-01-12 21:00:00'),
(13, 'Product 13', '2024-01-13 22:00:00', '2024-01-13 22:00:00'),
(14, 'Product 14', '2024-01-14 23:00:00', '2024-01-14 23:00:00'),
(15, 'Product 15', '2024-01-15 00:00:00', '2024-01-15 00:00:00'),
(16, 'Product 16', '2024-01-16 01:00:00', '2024-01-16 01:00:00'),
(17, 'Product 17', '2024-01-17 02:00:00', '2024-01-17 02:00:00'),
(18, 'Product 18', '2024-01-18 03:00:00', '2024-01-18 03:00:00'),
(19, 'Product 19', '2024-01-19 04:00:00', '2024-01-19 04:00:00'),
(20, 'Product 20', '2024-01-20 05:00:00', '2024-01-20 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) DEFAULT NULL,
  `email` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(120) DEFAULT NULL,
  `permission` varchar(120) DEFAULT NULL,
  `dp_id` int DEFAULT '0',
  `is_deleted` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `permission`, `dp_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(3, 'Ally Bakari', 'ally@vusha.co.tz', '255742701010', '$2y$12$77VtzGZHnkWiMvZ9H5xjQOjYm2q2eZjLm8eSWbO0TG1VpUylO9.3a', 'root', 'root', 0, 0, '2024-08-28 09:18:42', '2024-08-28 09:18:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
