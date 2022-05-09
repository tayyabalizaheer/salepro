-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 09, 2022 at 01:35 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salepropos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 04:58:02', '2019-01-20 11:59:06'),
(3, '21211', 'Sa', 0, 0, '', 0, 1, '2018-12-18 04:58:56', '2019-01-20 11:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

DROP TABLE IF EXISTS `adjustments`;
CREATE TABLE IF NOT EXISTS `adjustments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, '', '2019-01-02 05:30:50', '2019-01-02 05:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, '', '2019-01-02 05:57:12', '2019-01-02 05:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, '', '2020-02-03 11:57:30', '2020-02-03 11:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

DROP TABLE IF EXISTS `billers`;
CREATE TABLE IF NOT EXISTS `billers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'yousuf', 'aks.jpg', 'aks', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'chittagong', '', '', 'sdgs', 1, '2018-05-12 23:49:30', '2019-03-02 07:20:38'),
(2, 'tariq', '', 'big tree', '', 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', '', '', '', 1, '2018-05-12 23:57:54', '2018-06-15 02:07:11'),
(3, 'test', '', 'test', '', 'test@test.com', '3211', 'erewrwqre', 'afsf', '', '', '', 0, '2018-05-30 04:38:58', '2018-05-30 04:39:57'),
(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 1, '2018-09-01 05:59:54', '2018-10-07 04:35:51'),
(6, 'a', '', 'a', '', 'a@a.com', 'q', 'q', 'q', '', '', '', 0, '2018-10-07 04:33:39', '2018-10-07 04:34:18'),
(7, 'a', '', 'a', '', 'a@a.com', 'a', 'a', 'a', '', '', '', 0, '2018-10-07 04:34:36', '2018-10-07 04:36:07'),
(8, 'x', 'x.png', 'x', '', 'x@x.com', 'x', 'x', 'x', '', '', '', 1, '2019-03-18 13:02:42', '2019-12-21 13:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HP', 'HP.jpg', 1, '2018-05-12 11:06:14', '2019-03-02 07:32:21'),
(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 11:08:41', '2018-07-04 05:38:37'),
(5, 'Apple', 'Apple.jpg', 1, '2018-09-01 01:34:49', '2018-12-06 05:05:38'),
(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 17:33:52', '2020-10-19 17:35:58'),
(7, 'Lotto', '', 1, '2020-11-16 06:13:41', '2020-11-16 06:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

DROP TABLE IF EXISTS `cash_registers`;
CREATE TABLE IF NOT EXISTS `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 100, 9, 1, 0, '2020-10-13 09:32:54', '2020-10-24 02:27:42'),
(2, 50, 9, 1, 0, '2020-10-13 17:25:26', '2022-04-25 11:57:20'),
(3, 200, 1, 1, 0, '2020-10-22 09:53:07', '2021-06-19 06:52:48'),
(4, 100, 1, 2, 1, '2020-10-24 03:04:39', '2020-10-24 03:04:39'),
(5, 1000, 1, 1, 1, '2021-06-19 06:53:22', '2021-06-19 06:53:22'),
(6, 5000, 9, 1, 1, '2022-04-25 11:57:46', '2022-04-25 11:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', '', 9, 1, '2018-05-12 05:27:25', '2019-03-01 17:07:21'),
(2, 'electronics', '', 0, 1, '2018-05-12 05:35:57', '2019-03-01 17:07:21'),
(3, 'computer', '20200701093146.jpg', 2, 1, '2018-05-12 05:36:08', '2020-07-01 17:31:46'),
(4, 'toy', '', 0, 1, '2018-05-24 00:57:48', '2019-03-01 17:09:27'),
(7, 'jacket', '', 0, 0, '2018-05-28 00:39:51', '2018-05-28 00:40:48'),
(9, 'food', '', 0, 1, '2018-06-25 03:21:40', '2018-09-03 05:41:28'),
(10, 'anda', '', 0, 0, '2018-08-29 01:36:31', '2018-08-29 01:37:34'),
(11, 'anda', '', 0, 0, '2018-08-29 01:48:06', '2018-08-29 01:53:22'),
(12, 'accessories', '', 0, 1, '2018-12-05 01:28:53', '2019-04-10 06:17:03'),
(14, 'nn', '', 0, 0, '2019-04-10 06:22:30', '2019-04-10 07:38:47'),
(15, 'nm', '', 0, 0, '2019-04-10 06:22:36', '2019-04-10 07:41:43'),
(16, 'desktop', '', 3, 1, '2020-03-11 12:42:33', '2020-03-11 12:42:33'),
(17, 'tostos', '20200701080042.png', 0, 0, '2020-07-01 16:00:42', '2020-07-01 17:35:34'),
(19, 'Paracetamol', '', 0, 1, '2021-03-07 09:16:01', '2021-03-07 09:16:01'),
(20, 'Automobile', '', 0, 1, '2021-07-15 14:35:12', '2021-07-15 14:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-26 00:38:50', '2020-11-18 02:52:39'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 04:59:26', '2019-03-02 07:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', 1, '2020-11-01 02:22:58', '2020-11-01 02:34:55'),
(2, 'Euro', 'Euro', 0.85, '2020-11-01 03:29:12', '2020-11-11 01:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', '', 'kajir deuri', 'chittagong', '', '', 'bd', 11, 190, 20, 1, '2018-05-12 12:00:48', '2021-08-08 16:39:20'),
(2, 2, 0, 'moinul', 'lioncoders', '', '+8801200000001', '', 'jamalkhan', 'chittagong', '', '', 'bd', 0, 100, 20, 1, '2018-05-12 12:04:51', '2019-02-22 07:38:08'),
(3, 3, 0, 'tariq', 'big tree', '', '3424', '', 'khulshi', 'chittagong', '', '', 'bd', 0, 0, 0, 1, '2018-05-12 12:07:52', '2019-03-02 07:54:07'),
(4, 1, 0, 'test', '', '', '4234', '', 'frwerw', 'qwerwqr', '', '', '', 0, 0, 0, 0, '2018-05-30 03:35:28', '2018-05-30 03:37:38'),
(8, 1, 0, 'anwar', 'smart it', 'anwar@smartit.com', '32321', '', 'nasirabad', 'chittagong', '', '', 'bd', 0, 0, 0, 0, '2018-09-01 05:26:13', '2018-09-01 05:29:55'),
(11, 1, 0, 'walk-in-customer', '', '', '01923000001', '11111', 'mohammadpur', 'dhaka', '', '', '', 251, 0, 0, 1, '2018-09-02 03:30:54', '2021-12-07 15:13:46'),
(15, 1, 0, 's', '', '', '2', '', 's', '3e', '', '', '', 0, 0, 0, 0, '2018-11-05 06:00:39', '2018-11-08 05:37:08'),
(16, 1, 0, 'asas', '', '', '2121', '', 'dasd', 'asdd', '', '', '', 0, 0, 0, 0, '2018-12-01 02:07:53', '2018-12-03 23:55:46'),
(17, 1, 0, 'sadman', '', '', '312312', '', 'khulshi', 'ctg', '', '', '', 0, 0, 0, 0, '2020-06-22 11:45:35', '2020-06-22 11:45:51'),
(19, 1, 19, 'Ashfaq', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Andorkillah', 'Chittagong', 'Chittagong', '1234', 'Bangladesh', 6, 0, 0, 1, '2020-11-09 02:07:16', '2021-10-14 11:58:20'),
(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', '', 'kuril road', 'Dhaka', '', '', '', 0, 0, 0, 1, '2020-11-13 09:12:11', '2020-11-13 09:12:11'),
(25, 1, 28, 'Imran miya', '', 'imran@gmail.com', '01923000001', '', 'kljkj', 'hhjhh', '', '', '', 0, 0, 0, 0, '2021-02-04 08:26:47', '2021-02-04 08:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 10:09:36', '2019-03-02 08:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 10:12:14', '2019-03-02 08:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 10:12:26', '2018-05-30 03:18:14'),
(4, 'test', '12', 0, '2018-05-30 03:17:16', '2018-05-30 03:17:57'),
(5, 'test', '0', 0, '2018-08-03 11:10:27', '2018-08-03 11:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', '', 'Instrument 1', '3', '2018-08-08 12:44:55', '2020-09-26 14:25:39'),
(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', '', '', '', '', '2', '2018-11-06 06:59:43', '2018-11-06 07:10:38'),
(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', '', '', '3', '2018-11-06 07:13:25', '2020-09-26 15:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 07:16:47', '2018-12-27 12:40:23'),
(2, 'xyz', 1, '2018-12-27 12:28:47', '2018-12-27 12:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-26 00:48:23', '2018-08-26 03:18:55'),
(3, 100, 2, 1, '', '2018-08-26 02:53:16', '2018-08-26 23:42:39'),
(4, 50, 1, 1, '', '2018-09-05 00:56:19', '2018-09-05 00:56:19'),
(5, 50, 1, 1, '', '2018-09-10 02:08:40', '2018-09-10 02:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
CREATE TABLE IF NOT EXISTS `device_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_tokens`
--

INSERT INTO `device_tokens` (`id`, `name`, `token`, `created_at`, `updated_at`) VALUES
(5, 'Admin Google Chrome', 'qavZrvL1E64JS9jql13TBsuJpkmOrpIfQNqYwcLNVB6yx368Hv', '2022-04-25 11:09:21', '2022-04-25 11:09:21'),
(7, 'Shop', 'A40Z41C59GUVbA6QDkcEk8FH7vdwnpmxDfMzCBTIbv9Wazu0N2', '2022-04-25 11:26:55', '2022-04-25 11:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 02:48:37', '2019-03-02 08:50:23'),
(3, 'tests', 'test@test.com', '111', 1, 0, '', '', '', '', 1, '2018-12-31 00:20:51', '2019-01-03 02:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, 0, 150, 'first expense...', '2018-08-17 09:22:54', '2018-08-17 09:44:13'),
(3, 'er-20180817-014241', 1, 1, 1, 1, 0, 125, 'second expense...', '2018-08-17 09:42:41', '2018-08-17 09:43:50'),
(4, 'er-20181022-043609', 2, 1, 1, 1, 0, 1000, '', '2018-10-22 12:36:09', '2018-10-22 12:36:09'),
(5, 'er-20181101-050207', 2, 2, 1, 1, 0, 1000, '', '2018-11-01 01:02:07', '2018-11-01 01:02:07'),
(6, 'er-20181101-050231', 2, 1, 1, 1, 0, 550, '', '2018-11-01 01:02:31', '2018-11-01 01:02:31'),
(7, 'er-20181105-091913', 1, 1, 1, 1, 0, 2000, '', '2018-11-05 05:19:13', '2018-11-05 05:19:13'),
(8, 'er-20181105-091929', 2, 2, 1, 1, 0, 1000, '', '2018-11-05 05:19:29', '2018-11-05 05:19:29'),
(9, 'er-20190101-063342', 2, 1, 1, 1, 0, 100, '', '2019-01-01 02:33:42', '2019-01-01 02:33:42'),
(10, 'er-20190103-070018', 2, 2, 1, 9, 0, 2000, '', '2019-01-03 03:00:18', '2019-01-03 03:00:18'),
(11, 'er-20190209-104656', 2, 2, 1, 1, 0, 500, '', '2019-02-09 06:46:56', '2019-02-09 06:46:56'),
(12, 'er-20190209-104716', 2, 1, 1, 1, 0, 400, '', '2019-02-09 06:47:16', '2019-02-09 06:47:16'),
(14, 'er-20190303-104142', 2, 2, 1, 1, 0, 250, 'jjj', '2019-03-03 06:41:42', '2019-03-20 11:17:16'),
(15, 'er-20190404-095645', 2, 1, 1, 1, 0, 200, '', '2019-04-04 05:56:45', '2019-04-04 05:56:45'),
(16, 'er-20190528-103306', 2, 1, 1, 1, 0, 560, '', '2019-05-28 06:33:06', '2019-05-28 06:33:06'),
(17, 'er-20190528-103325', 2, 2, 1, 1, 0, 600, '', '2019-05-28 06:33:25', '2019-05-28 06:33:25'),
(19, 'er-20190613-101955', 2, 2, 1, 1, 0, 800, '', '2019-06-13 06:19:55', '2019-06-13 06:19:55'),
(20, 'er-20191019-033149', 2, 1, 1, 1, 0, 300, '', '2019-10-19 11:31:49', '2019-10-19 11:31:49'),
(21, 'er-20191222-023508', 2, 1, 1, 1, 0, 550, '', '2019-12-22 10:35:08', '2019-12-22 10:35:08'),
(22, 'er-20200101-022304', 2, 2, 1, 1, 0, 500, '', '2020-01-01 10:23:04', '2020-01-01 10:23:04'),
(23, 'er-20200204-105938', 1, 1, 1, 1, 0, 400, '', '2020-02-04 18:59:38', '2020-02-04 18:59:38'),
(24, 'er-20200204-105957', 1, 2, 1, 1, 0, 350, '', '2020-02-04 18:59:57', '2020-02-04 18:59:57'),
(25, 'er-20200406-075239', 2, 2, 1, 1, 0, 750, '', '2020-04-06 15:52:39', '2020-04-06 15:52:39'),
(26, 'er-20200506-110112', 2, 2, 1, 1, 0, 1260, '', '2020-05-06 19:01:12', '2020-05-06 19:01:12'),
(27, 'er-20200609-124344', 2, 1, 1, 1, 0, 500, '', '2020-06-09 08:43:44', '2020-06-09 08:43:44'),
(28, 'er-20200609-124406', 2, 2, 1, 1, 0, 1000, '', '2020-06-09 08:44:06', '2020-06-09 08:44:06'),
(29, 'er-20200703-064005', 2, 2, 1, 1, 0, 630, '', '2020-07-03 14:40:05', '2020-07-03 14:40:05'),
(30, 'er-20200812-062947', 1, 2, 1, 1, 0, 320, '', '2020-08-12 14:29:47', '2020-08-12 14:29:47'),
(31, 'er-20200812-063010', 2, 2, 1, 1, 0, 730, '', '2020-08-12 14:30:10', '2020-08-12 14:30:10'),
(32, 'er-20201018-124438', 2, 1, 1, 9, 2, 100, '', '2020-10-18 08:44:38', '2020-10-18 08:44:38'),
(33, 'er-20201101-072257', 1, 2, 1, 1, 4, 50, '', '2020-11-01 03:22:57', '2020-11-01 03:22:57'),
(34, 'er-20201118-062500', 4, 1, 1, 1, 3, 200, '', '2020-11-18 02:25:00', '2020-11-18 02:25:00'),
(37, 'er-20210114-065938', 2, 2, 1, 1, 4, 25.5, '', '2021-01-14 02:59:38', '2021-01-14 02:59:38'),
(38, 'er-20210601-075909', 2, 1, 1, 1, 3, 100, '', '2021-06-01 15:59:09', '2021-06-01 15:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'washing', 1, '2018-08-16 02:32:48', '2019-03-02 09:02:07'),
(2, '60128975', 'electric bill', 1, '2018-08-16 02:39:18', '2018-08-16 02:39:18'),
(3, '83954970', 'test', 0, '2018-08-16 02:50:28', '2018-08-16 02:51:40'),
(4, '1234', 'snacks', 1, '2018-09-01 04:40:04', '2018-09-01 04:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'SalePro', '20210530062516.png', 0, '1', 'own', 'd/m/Y', 'LionCoders', 'standard', 1, 'default.css', '2018-07-06 08:13:11', '2021-11-14 09:22:32', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

DROP TABLE IF EXISTS `gift_cards`;
CREATE TABLE IF NOT EXISTS `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 450, 1, 0, '2020-12-31', 1, 1, '2018-08-18 03:57:40', '2020-10-18 07:14:26'),
(2, '0452297501931931', 500, 100, 2, 0, '2021-12-31', 1, 1, '2018-08-18 04:46:43', '2021-02-11 09:36:01'),
(3, '123', 13123, 0, 1, 0, '2018-08-19', 1, 0, '2018-08-19 00:38:21', '2018-08-19 00:38:28'),
(4, '1862381252690499', 100, 0, 0, 1, '2018-10-04', 1, 0, '2018-09-30 02:16:28', '2018-09-30 02:17:21'),
(5, '2300813717254199', 143, 0, 0, 1, '2018-10-04', 1, 0, '2018-09-30 02:18:49', '2018-09-30 02:20:20'),
(6, '8327019475026421', 1, 0, 1, 0, '2018-10-07', 1, 0, '2018-10-07 05:12:41', '2018-10-07 05:12:55'),
(7, '2063379780590151', 1, 0, 1, 0, '2018-10-23', 1, 0, '2018-10-23 02:23:22', '2018-10-23 02:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

DROP TABLE IF EXISTS `gift_card_recharges`;
CREATE TABLE IF NOT EXISTS `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-25 01:08:29', '2018-08-25 01:08:29'),
(2, 1, 200, 1, '2018-08-25 01:08:50', '2018-08-25 01:08:50'),
(3, 1, 100, 1, '2018-09-05 01:50:41', '2018-09-05 01:50:41'),
(4, 1, 50, 1, '2018-09-05 01:51:38', '2018-09-05 01:51:38'),
(5, 1, 50, 1, '2018-09-05 01:53:36', '2018-09-05 01:53:36'),
(6, 2, 50, 1, '2018-09-05 01:54:34', '2018-09-05 01:54:34'),
(7, 5, 10, 1, '2018-09-30 02:19:48', '2018-09-30 02:19:48'),
(8, 5, 10, 1, '2018-09-30 02:20:04', '2018-09-30 02:20:04'),
(9, 2, 100, 1, '2018-10-07 05:13:05', '2018-10-07 05:13:05'),
(10, 1, 200, 1, '2018-10-07 05:13:39', '2018-10-07 05:13:39'),
(11, 1, 300, 1, '2018-10-23 02:22:49', '2018-10-23 02:22:49'),
(12, 2, 130, 1, '2021-02-11 09:36:01', '2021-02-11 09:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

DROP TABLE IF EXISTS `hrm_settings`;
CREATE TABLE IF NOT EXISTS `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 04:20:08', '2019-01-02 06:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-08 00:59:17', '2019-12-24 19:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

DROP TABLE IF EXISTS `money_transfers`;
CREATE TABLE IF NOT EXISTS `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 15:18:52', '2020-02-28 15:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, 0, 2, 0, 1, 1000, 0, 0, 'Cash', '', '2018-08-09 01:54:53', '2018-08-09 01:54:53'),
(34, 'spr-20180809-055553', 1, 0, 2, 0, 1, 1200, 0, 0, 'Cheque', '', '2018-08-09 01:55:53', '2018-08-09 01:56:36'),
(35, 'spr-20180809-063214', 1, 0, 3, 0, 1, 897, 0, 0, 'Cheque', '', '2018-08-09 02:32:14', '2018-08-09 02:32:14'),
(36, 'spr-20180825-034836', 1, 0, 4, 0, 1, 100, 0, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 23:48:36', '2018-08-25 02:57:35'),
(39, 'spr-20180825-083634', 1, 0, 4, 0, 1, 200, 0, 0, 'Gift Card', '', '2018-08-25 04:36:34', '2018-08-25 04:36:34'),
(41, 'spr-20180826-094836', 1, 0, 6, 0, 1, 20, 0, 0, 'Deposit', '20 bucks paid', '2018-08-26 05:48:36', '2018-08-26 23:42:13'),
(42, 'spr-20180827-073545', 1, 0, 7, 0, 1, 880, 0, 0, 'Cash', '', '2018-08-27 03:35:45', '2018-08-27 03:35:45'),
(43, 'ppr-20180830-071637', 1, 13, 0, 0, 1, 100, 0, 0, 'Cash', '100 bucks paid...', '2018-08-30 03:16:37', '2018-08-30 03:16:37'),
(44, 'ppr-20180830-090718', 1, 13, 0, 0, 1, 200, 0, 0, 'Cheque', '', '2018-08-30 05:07:18', '2018-08-30 05:07:18'),
(46, 'spr-20180902-053954', 1, 0, 8, 0, 1, 3529.8, 0, 0, 'Cash', 'fully paid', '2018-09-02 01:39:54', '2018-09-02 01:39:54'),
(49, 'spr-20180903-033314', 1, 0, 9, 0, 1, 20, 0, 0, 'Deposit', 'fully paid', '2018-09-02 23:33:14', '2018-09-02 23:33:14'),
(50, 'spr-20180903-050138', 1, 0, 10, 0, 1, 200, 0, 0, 'Gift Card', '50 bucks due...', '2018-09-03 01:01:38', '2018-09-09 23:40:28'),
(51, 'spr-20180903-100821', 1, 0, 11, 0, 1, 5500, 0, 0, 'Cheque', '', '2018-09-03 06:08:21', '2018-09-03 06:08:21'),
(53, 'ppr-20180903-101524', 1, 16, 0, 0, 1, 1750, 0, 0, 'Cheque', '', '2018-09-03 06:15:24', '2018-10-06 03:09:20'),
(78, 'spr-20180926-092105', 1, 0, 31, 0, 1, 560, 0, 0, 'Cash', '', '2018-09-26 05:21:05', '2018-09-26 05:21:05'),
(79, 'spr-20181006-065017', 1, 0, 30, 0, 1, 100, 0, 0, 'Cheque', '', '2018-10-06 02:50:17', '2018-10-06 02:51:55'),
(80, 'spr-20181006-065222', 1, 0, 30, 0, 1, 20, 0, 0, 'Cash', '', '2018-10-06 02:52:22', '2018-10-06 02:52:22'),
(82, 'ppr-20181006-070935', 1, 16, 0, 0, 1, 1600, 0, 0, 'Cash', '', '2018-10-06 03:09:35', '2018-10-06 03:09:35'),
(83, 'spr-20181010-041636', 1, 0, 41, 0, 1, 461, 0, 0, 'Cash', '', '2018-10-10 00:16:36', '2018-10-10 00:16:36'),
(84, 'spr-20181010-053456', 1, 0, 42, 0, 1, 440, 0, 0, 'Cash', '', '2018-10-10 01:34:56', '2018-10-10 01:34:56'),
(91, 'spr-20181021-065338', 1, 0, 55, 0, 1, 250, 0, 0, 'Cash', '', '2018-10-21 02:53:38', '2018-10-21 02:53:38'),
(92, 'spr-20181021-082618', 1, 0, 57, 0, 1, 575.2, 0, 0, 'Cash', '', '2018-10-21 04:26:18', '2018-10-21 04:26:18'),
(93, 'spr-20181022-032730', 1, 0, 58, 0, 1, 1220, 0, 0, 'Cash', '', '2018-10-22 11:27:30', '2018-10-22 11:27:30'),
(104, 'spr-20181023-071548', 11, 0, 73, 0, 1, 5500, 0, 0, 'Cash', '', '2018-10-23 03:15:48', '2018-10-23 03:15:48'),
(105, 'spr-20181023-071648', 1, 0, 74, 0, 1, 2320, 0, 0, 'Cash', '', '2018-10-23 03:16:48', '2018-10-23 03:16:48'),
(126, 'spr-20181101-050033', 1, 0, 75, 0, 1, 7678, 0, 0, 'Cash', '', '2018-11-01 01:00:33', '2018-11-01 01:00:33'),
(127, 'spr-20181101-050130', 1, 0, 76, 0, 1, 1424, 0, 0, 'Cash', '', '2018-11-01 01:01:30', '2018-11-08 05:44:51'),
(129, 'spr-20181105-091523', 1, 0, 79, 0, 1, 14454, 0, 0, 'Cash', '', '2018-11-05 05:15:23', '2018-11-05 05:15:23'),
(130, 'spr-20181105-092002', 1, 0, 80, 0, 1, 2500, 0, 0, 'Cash', '', '2018-11-05 05:20:02', '2018-11-05 05:20:02'),
(131, 'ppr-20181105-092128', 1, 24, 0, 0, 1, 15950, 0, 0, 'Cash', '', '2018-11-05 05:21:28', '2018-11-05 05:21:28'),
(137, 'spr-20181105-095952', 1, 0, 86, 0, 1, 1100, 0, 0, 'Cash', '', '2018-11-05 05:59:52', '2018-11-05 05:59:52'),
(138, 'spr-20181105-100310', 1, 0, 88, 0, 1, 1100, 0, 0, 'Cash', '', '2018-11-05 06:03:10', '2018-11-05 06:03:10'),
(139, 'spr-20181126-020534', 1, 0, 94, 0, 1, 120, 0, 0, 'Cash', '', '2018-11-26 10:05:34', '2018-11-26 10:05:34'),
(140, 'spr-20181128-071515', 1, 0, 96, 0, 1, 132, 0, 0, 'Cash', '', '2018-11-28 03:15:15', '2018-11-28 03:15:15'),
(141, 'spr-20181201-060524', 1, 0, 97, 0, 1, 200, 0, 300, 'Cash', '', '2018-12-01 02:05:24', '2018-12-04 02:21:05'),
(148, 'ppr-20181204-065932', 1, 23, 0, 0, 1, 500, 0, 500, 'Cash', '', '2018-12-04 02:59:32', '2018-12-04 02:59:44'),
(149, 'ppr-20181205-053443', 1, 25, 0, 0, 1, 4450, 0, 550, 'Cash', '', '2018-12-05 01:34:43', '2018-12-05 01:34:43'),
(150, 'spr-20181205-053608', 1, 0, 98, 0, 1, 800, 0, 200, 'Cash', '', '2018-12-05 01:36:08', '2018-12-05 01:36:08'),
(151, 'spr-20181205-053724', 1, 0, 99, 0, 1, 800, 0, 0, 'Cash', '', '2018-12-05 01:37:24', '2018-12-05 01:37:24'),
(152, 'spr-20181208-062032', 1, 0, 101, 0, 1, 100, 0, 400, 'Cash', '', '2018-12-08 02:20:32', '2018-12-11 05:19:39'),
(157, 'ppr-20181220-063439', 1, 27, 0, 0, 1, 10, 0, 0, 'Cash', '', '2018-12-20 02:34:39', '2018-12-20 02:35:01'),
(159, 'spr-20181224-045832', 1, 0, 103, 0, 1, 120, 0, 0, 'Cash', '', '2018-12-24 00:58:32', '2018-12-24 00:58:32'),
(160, 'spr-20190101-054544', 1, 0, 105, 0, 1, 21, 0, 0, 'Cash', '', '2019-01-01 01:45:44', '2019-01-01 01:45:44'),
(161, 'spr-20190101-091040', 1, 0, 106, 0, 1, 860, 0, 0, 'Cash', '', '2019-01-01 05:10:40', '2019-01-01 05:10:40'),
(162, 'spr-20190103-065627', 1, 0, 107, 0, 1, 5040, 0, 960, 'Cash', '', '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(163, 'spr-20190120-035824', 1, 0, 108, 0, 1, 120, 0, 0, 'Cash', '', '2019-01-20 11:58:24', '2019-01-20 11:58:24'),
(164, 'ppr-20190129-100302', 9, 36, 0, 0, 1, 650, 0, 350, 'Cash', '', '2019-01-29 06:03:02', '2019-01-29 06:03:02'),
(165, 'ppr-20190129-100324', 9, 34, 0, 0, 1, 2860, 0, 140, 'Cash', '', '2019-01-29 06:03:24', '2019-01-29 06:03:24'),
(166, 'spr-20190129-101451', 9, 0, 109, 0, 1, 540, 0, 460, 'Cash', '', '2019-01-29 06:14:51', '2019-01-29 06:14:51'),
(167, 'spr-20190129-115048', 9, 0, 110, 0, 1, 1700, 0, 300, 'Cash', '', '2019-01-29 07:50:48', '2019-01-29 07:50:48'),
(168, 'spr-20190131-110839', 9, 0, 111, 0, 1, 271, 0, 0, 'Cash', '', '2019-01-31 07:08:39', '2019-01-31 07:08:39'),
(169, 'spr-20190202-104045', 1, 0, 112, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-02 06:40:45', '2019-02-02 06:40:45'),
(170, 'spr-20190202-114117', 1, 0, 113, 0, 1, 350, 0, 0, 'Cash', '', '2019-02-02 07:41:17', '2019-02-02 07:41:17'),
(171, 'spr-20190205-030454', 1, 0, 114, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-05 11:04:54', '2019-02-05 11:04:54'),
(176, 'ppr-20190207-125418', 1, 35, 0, 0, 1, 50, 0, 50, 'Cash', '', '2019-02-07 08:54:18', '2019-02-07 09:05:23'),
(178, 'ppr-20190207-010640', 1, 35, 0, 0, 1, 50, 0, 50, 'Cheque', '', '2019-02-07 09:06:40', '2019-02-07 09:07:04'),
(179, 'spr-20190207-010915', 1, 0, 120, 0, 1, 50, 0, 50, 'Cash', '', '2019-02-07 09:09:15', '2019-02-07 09:09:15'),
(180, 'spr-20190209-104816', 1, 0, 121, 0, 1, 1272, 0, 728, 'Cash', '', '2019-02-09 06:48:16', '2019-02-09 06:48:16'),
(181, 'ppr-20190209-104940', 1, 38, 0, 0, 1, 1660, 0, 0, 'Cash', '', '2019-02-09 06:49:40', '2019-02-09 06:49:40'),
(182, 'ppr-20190209-104959', 1, 39, 0, 0, 1, 973.5, 0, 0, 'Cash', '', '2019-02-09 06:49:59', '2019-02-09 06:49:59'),
(183, 'spr-20190219-023214', 1, 0, 123, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-19 10:32:14', '2019-02-19 10:32:14'),
(189, 'spr-20190303-104010', 1, 0, 127, 0, 1, 2500, 0, 0, 'Cash', '', '2019-03-03 06:40:10', '2019-03-03 06:40:10'),
(190, 'ppr-20190303-104046', 1, 40, 0, 0, 1, 100, 0, 0, 'Cash', '', '2019-03-03 06:40:46', '2019-03-03 06:40:46'),
(191, 'ppr-20190303-104222', 1, 37, 0, 0, 1, 4000, 0, 0, 'Cash', '', '2019-03-03 06:42:22', '2019-03-03 06:42:22'),
(192, 'ppr-20190303-104414', 1, 41, 0, 0, 1, 1000, 0, 0, 'Cash', '', '2019-03-03 06:44:14', '2019-03-03 06:44:14'),
(193, 'spr-20190404-095555', 1, 0, 128, 0, 1, 560, 0, 0, 'Cash', '', '2019-04-04 05:55:55', '2019-04-04 05:55:55'),
(194, 'ppr-20190404-095910', 1, 42, 0, 0, 1, 300, 0, 200, 'Cash', '', '2019-04-04 05:59:10', '2019-04-13 12:52:38'),
(195, 'spr-20190404-095937', 1, 0, 129, 0, 1, 120, 0, 0, 'Cash', '', '2019-04-04 05:59:37', '2019-04-04 05:59:37'),
(196, 'spr-20190421-122124', 1, 0, 130, 0, 1, 586, 0, 0, 'Cash', '', '2019-04-21 08:21:24', '2019-04-21 08:21:24'),
(197, 'spr-20190528-103229', 1, 0, 131, 0, 1, 2890, 0, 0, 'Cash', '', '2019-05-28 06:32:29', '2019-05-28 06:32:29'),
(198, 'ppr-20190613-101351', 1, 37, 0, 0, 1, 2390, 0, 0, 'Cash', '', '2019-06-13 06:13:51', '2019-06-13 06:13:51'),
(199, 'spr-20190613-101637', 1, 0, 132, 0, 1, 840, 0, 0, 'Cash', '', '2019-06-13 06:16:37', '2019-06-13 06:16:37'),
(200, 'ppr-20190613-101713', 1, 43, 0, 0, 1, 1000, 0, 0, 'Cash', '', '2019-06-13 06:17:13', '2019-06-13 06:17:13'),
(201, 'spr-20190613-101752', 1, 0, 133, 0, 1, 2700, 0, 0, 'Cash', '', '2019-06-13 06:17:52', '2019-06-13 06:17:52'),
(202, 'ppr-20191019-032925', 1, 43, 0, 0, 1, 3290, 0, 710, 'Cash', '', '2019-10-19 11:29:25', '2019-10-19 11:29:25'),
(203, 'spr-20191019-033028', 1, 0, 134, 0, 1, 2940, 0, 60, 'Cash', '', '2019-10-19 11:30:28', '2019-10-19 11:30:28'),
(205, 'spr-20191103-114044', 1, 0, 139, 0, 1, 488, 0, 12, 'Cash', '', '2019-11-03 07:40:44', '2019-11-03 07:40:44'),
(206, 'ppr-20191103-114222', 1, 46, 0, 0, 1, 200, 0, 0, 'Cash', '', '2019-11-03 07:42:22', '2019-11-03 07:42:22'),
(211, 'spr-20191109-074131', 1, 0, 144, 0, 1, 1220, 0, 0, 'Cash', '', '2019-11-09 15:41:31', '2019-11-09 15:41:31'),
(216, 'ppr-20191111-103911', 1, 49, 0, 0, 1, 5000, 0, 0, 'Cheque', '', '2019-11-11 06:39:11', '2019-11-11 06:39:11'),
(217, 'spr-20191111-104008', 1, 0, 147, 0, 1, 2220, 0, 780, 'Cash', '', '2019-11-11 06:40:08', '2019-11-11 06:40:08'),
(222, 'spr-20191203-115128', 1, 0, 163, 0, 1, 3, 0, 0, 'Cash', '', '2019-12-03 07:51:28', '2019-12-03 07:51:28'),
(227, 'ppr-20191204-111124', 1, 57, 0, 0, 1, 220, 0, 280, 'Cash', '', '2019-12-04 19:11:24', '2019-12-04 19:11:24'),
(228, 'spr-20191205-092712', 1, 0, 173, 0, 1, 621, 0, 0, 'Cash', '', '2019-12-05 05:27:12', '2019-12-05 05:27:12'),
(239, 'spr-20191222-104058', 1, 0, 187, 0, 1, 288, 0, 212, 'Cash', '', '2019-12-22 06:40:58', '2019-12-22 06:40:58'),
(241, 'spr-20191223-125946', 1, 0, 190, 0, 1, 1100, 0, 400, 'Cash', '', '2019-12-23 08:59:46', '2019-12-23 08:59:46'),
(244, 'ppr-20200101-010750', 1, 61, 0, 0, 1, 60, 0, 0, 'Cash', '', '2020-01-01 09:07:50', '2020-01-01 09:07:50'),
(246, 'spr-20200101-022028', 1, 0, 193, 0, 1, 1100, 0, 400, 'Cash', '', '2020-01-01 10:20:28', '2020-01-01 10:20:28'),
(247, 'ppr-20200101-022131', 1, 59, 0, 0, 1, 6, 0, 0, 'Cash', '', '2020-01-01 10:21:31', '2020-01-01 10:21:31'),
(248, 'ppr-20200101-022137', 1, 58, 0, 0, 1, 4, 0, 0, 'Cash', '', '2020-01-01 10:21:37', '2020-01-01 10:21:37'),
(249, 'ppr-20200101-022144', 1, 56, 0, 0, 1, 2, 0, 0, 'Cash', '', '2020-01-01 10:21:44', '2020-01-01 10:21:44'),
(250, 'ppr-20200101-022152', 1, 55, 0, 0, 1, 4, 0, 0, 'Cash', '', '2020-01-01 10:21:52', '2020-01-01 10:21:52'),
(251, 'ppr-20200101-022225', 1, 49, 0, 0, 1, 2000, 0, 0, 'Cash', '', '2020-01-01 10:22:25', '2020-01-01 10:22:25'),
(252, 'spr-20200102-043947', 1, 0, 194, 0, 1, 892, 0, 108, 'Cash', '', '2020-01-02 12:39:47', '2020-01-02 12:39:47'),
(258, 'spr-20200203-035256', 1, 0, 201, 0, 1, 120, 0, 880, 'Cash', '', '2020-02-03 11:52:56', '2020-02-03 11:52:56'),
(259, 'spr-20200204-105853', 1, 0, 202, 0, 1, 1400, 0, 100, 'Cash', '', '2020-02-04 18:58:53', '2020-02-04 18:58:53'),
(260, 'ppr-20200204-110050', 1, 67, 0, 0, 1, 300, 0, 0, 'Cash', '', '2020-02-04 19:00:50', '2020-02-04 19:00:50'),
(261, 'spr-20200302-115414', 1, 0, 203, 0, 1, 350, 0, 150, 'Cash', '', '2020-03-02 07:54:14', '2020-03-02 07:54:14'),
(262, 'spr-20200302-115741', 1, 0, 204, 0, 1, 40, 0, 10, 'Cash', '', '2020-03-02 07:57:41', '2020-03-02 07:57:41'),
(263, 'ppr-20200302-115811', 1, 70, 0, 0, 1, 50, 0, 0, 'Cash', '', '2020-03-02 07:58:11', '2020-03-02 07:58:11'),
(264, 'ppr-20200302-115820', 1, 69, 0, 0, 1, 50, 0, 0, 'Cash', '', '2020-03-02 07:58:20', '2020-03-02 07:58:20'),
(265, 'spr-20200311-044642', 1, 0, 205, 0, 1, 352, 0, 148, 'Cash', '', '2020-03-11 12:46:42', '2020-03-11 12:46:42'),
(266, 'ppr-20200406-073823', 1, 71, 0, 0, 1, 2000, 0, 1000, 'Cash', 'First Payment', '2020-04-06 15:38:23', '2020-04-06 15:38:55'),
(267, 'spr-20200406-074024', 1, 0, 207, 0, 1, 500, 0, 500, 'Cash', '', '2020-04-06 15:40:24', '2020-04-06 15:40:24'),
(268, 'spr-20200406-074201', 1, 0, 207, 0, 1, 144, 0, 56, 'Cash', '', '2020-04-06 15:42:01', '2020-04-06 15:42:01'),
(269, 'spr-20200506-105950', 1, 0, 208, 0, 1, 1540, 0, 460, 'Cash', '', '2020-05-06 18:59:50', '2020-05-06 18:59:50'),
(270, 'spr-20200609-124248', 1, 0, 209, 0, 1, 1220, 0, 780, 'Cash', '', '2020-06-09 08:42:48', '2020-06-09 08:42:48'),
(273, 'spr-20200703-063914', 1, 0, 212, 0, 1, 2585, 0, 415, 'Cash', '', '2020-07-03 14:39:14', '2020-07-03 14:39:14'),
(274, 'spr-20200712-095153', 1, 0, 213, 0, 1, 13, 0, 37, 'Cash', '', '2020-07-12 17:51:53', '2020-07-12 17:51:53'),
(276, 'spr-20200727-083808', 1, 0, 217, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 16:38:08', '2020-07-27 16:38:08'),
(277, 'spr-20200727-084024', 1, 0, 218, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 16:40:24', '2020-07-27 16:40:24'),
(278, 'spr-20200727-084645', 1, 0, 219, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 16:46:45', '2020-07-27 16:46:45'),
(279, 'spr-20200812-062806', 1, 0, 220, 0, 1, 760, 0, 240, 'Cash', '', '2020-08-12 14:28:06', '2020-08-12 14:28:06'),
(280, 'ppr-20200812-062853', 1, 62, 0, 0, 1, 1650, 0, 0, 'Cash', '', '2020-08-12 14:28:53', '2020-08-12 14:28:53'),
(281, 'spr-20200812-063035', 1, 0, 221, 0, 1, 1100, 0, 0, 'Cash', '', '2020-08-12 14:30:35', '2020-08-12 14:30:35'),
(282, 'spr-20200816-100426', 1, 0, 222, 0, 1, 23000, 0, 2000, 'Cash', '', '2020-08-16 18:04:26', '2020-08-16 18:04:26'),
(283, 'spr-20200816-100523', 1, 0, 223, 0, 1, 300, 0, 200, 'Cash', '', '2020-08-16 18:05:23', '2020-08-16 18:05:23'),
(284, 'spr-20200816-100632', 1, 0, 223, 0, 1, 100, 0, 0, 'Cash', '', '2020-08-16 18:06:32', '2020-08-16 18:06:32'),
(285, 'spr-20200816-100735', 1, 0, 223, 0, 1, 40, 0, 0, 'Cash', '', '2020-08-16 18:07:35', '2020-08-16 18:07:35'),
(290, 'spr-20201017-092854', 9, 0, 230, 2, 1, 200, 0, 0, 'Cash', '', '2020-10-17 17:28:54', '2020-10-18 06:48:54'),
(291, 'spr-20201018-105138', 9, 0, 230, 2, 1, 50, 0, 0, 'Cash', '', '2020-10-18 06:51:38', '2020-10-18 06:51:38'),
(292, 'spr-20201018-111333', 9, 0, 231, 2, 1, 100, 0, 0, 'Cash', '', '2020-10-18 07:13:33', '2020-10-18 07:13:33'),
(293, 'spr-20201018-111426', 9, 0, 231, 2, 1, 50, 0, 0, 'Gift Card', '', '2020-10-18 07:14:26', '2020-10-18 07:14:26'),
(294, 'spr-20201018-111651', 9, 0, 231, 2, 1, 50, 0, 0, 'Credit Card', '', '2020-10-18 07:16:51', '2020-10-18 07:16:51'),
(295, 'spr-20201018-111724', 9, 0, 231, 2, 1, 50, 0, 0, 'Cheque', '', '2020-10-18 07:17:24', '2020-10-18 07:17:24'),
(296, 'spr-20201022-013018', 9, 0, 232, 2, 1, 100, 0, 0, 'Cash', '', '2020-10-22 09:30:18', '2020-10-22 09:30:18'),
(297, 'spr-20201022-015606', 1, 0, 233, 3, 1, 250, 0, 0, 'Cash', '', '2020-10-22 09:56:06', '2020-10-22 09:56:06'),
(298, 'spr-20201024-070508', 1, 0, 234, 4, 1, 11500, 0, 0, 'Cash', '', '2020-10-24 03:05:08', '2020-10-24 03:05:08'),
(299, 'spr-20201024-070753', 1, 0, 235, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-24 03:07:53', '2020-10-24 03:07:53'),
(300, 'spr-20201024-034619', 1, 0, 237, 4, 1, 61900, 0, 0, 'Cash', '', '2020-10-24 11:46:19', '2020-10-24 11:46:19'),
(302, 'spr-20201027-054004', 1, 0, 239, 3, 1, 2, 0, 0, 'Cash', '', '2020-10-27 01:40:04', '2020-10-27 01:40:04'),
(303, 'spr-20201027-054207', 1, 0, 240, 3, 1, 6, 0, 0, 'Cash', '', '2020-10-27 01:42:07', '2020-10-27 01:42:07'),
(304, 'spr-20201027-063202', 1, 0, 241, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-27 02:32:02', '2020-10-27 02:32:02'),
(305, 'spr-20201029-073033', 1, 0, 242, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-29 03:30:33', '2020-10-29 03:30:33'),
(306, 'spr-20201101-072115', 1, 0, 243, 4, 1, 250, 0, 0, 'Cash', '', '2020-11-01 03:21:15', '2020-11-01 03:21:15'),
(307, 'spr-20201101-074225', 1, 0, 245, 3, 1, 1130, 0, 0, 'Cash', '', '2020-11-01 03:42:25', '2020-11-01 03:42:25'),
(308, 'spr-20201101-075019', 1, 0, 246, 4, 1, 440, 0, 0, 'Cash', '', '2020-11-01 03:50:19', '2020-11-01 03:50:19'),
(310, 'spr-20201106-013042', 1, 0, 250, 4, 1, 378.4, 0, 0, 'Cash', '', '2020-11-06 09:30:42', '2020-11-06 09:30:42'),
(311, 'spr-20201109-011527', 1, 0, 251, 4, 1, 500, 0, 0, 'Cash', '', '2020-11-09 09:15:27', '2020-11-09 09:15:27'),
(312, 'spr-20201111-055902', 1, 0, 252, 3, 1, 229.5, 0, 0, 'Cash', '', '2020-11-11 01:59:02', '2020-11-11 01:59:02'),
(313, 'spr-20201114-064739', 1, 0, 253, 4, 1, 10242.5, 0, 0, 'Cash', '', '2020-11-14 02:47:39', '2020-11-14 02:47:39'),
(316, 'spr-20201117-064751', 1, 0, 256, 4, 1, 715, 0, 0, 'Cash', '', '2020-11-17 02:47:51', '2020-11-17 02:47:51'),
(317, 'spr-20201117-070920', 1, 0, 257, 4, 1, 250, 0, 0, 'Cash', '', '2020-11-17 03:09:20', '2020-11-17 03:09:20'),
(320, 'ppr-20201118-062036', 1, 90, 0, 0, 1, 33000, 0, 0, 'Cash', '', '2020-11-18 02:20:36', '2020-11-18 02:20:36'),
(321, 'spr-20201118-065242', 1, 0, 258, 4, 1, 27200, 0, 0, 'Cash', '', '2020-11-18 02:52:42', '2020-11-18 02:52:42'),
(324, 'spr-20201208-094000', 1, 0, 263, 4, 1, 300, 0, 200, 'Cash', '', '2020-12-08 05:40:00', '2020-12-08 05:40:00'),
(325, 'spr-20210106-022350', 1, 0, 263, 4, 1, 50, 0, 0, 'Cash', '', '2021-01-06 10:23:50', '2021-01-06 10:23:50'),
(330, 'spr-20210111-021625', 1, 0, 271, 3, 1, 1274, 0, 0, 'Cash', '', '2021-01-11 10:16:25', '2021-01-11 10:16:25'),
(332, 'spr-20210113-070243', 1, 0, 274, 4, 1, 1556, 0, 0, 'Cash', '', '2021-01-13 03:02:43', '2021-01-13 03:02:43'),
(333, 'spr-20210201-023748', 1, 0, 275, 4, 1, 484, 0, 0, 'Cash', '', '2021-02-01 10:37:48', '2021-02-01 10:37:48'),
(335, 'spr-20210216-070948', 1, 0, 277, 4, 1, 15156, 0, 0, 'Cash', '', '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(336, 'spr-20210217-073238', 1, 0, 278, 4, 1, 26949.9, 0, 0, 'Cash', '', '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(338, 'spr-20210524-074506', 1, 0, 290, 3, 1, 250, 0, 0, 'Cash', '', '2021-05-24 15:45:06', '2021-05-24 15:45:06'),
(339, 'spr-20210524-074647', 1, 0, 290, 3, 1, -130, 0, 0, 'Cash', '', '2021-05-24 15:46:47', '2021-05-24 15:46:47'),
(341, 'spr-20210601-123530', 1, 0, 294, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-01 08:35:30', '2021-06-01 08:35:30'),
(342, 'spr-20210601-032209', 1, 0, 295, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-01 11:22:09', '2021-06-01 11:22:09'),
(343, 'spr-20210601-034624', 1, 0, 296, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-01 11:46:24', '2021-06-01 11:46:24'),
(344, 'spr-20210601-074150', 9, 0, 297, 2, 1, 250, 0, 0, 'Cash', '', '2021-06-01 15:41:50', '2021-06-01 15:41:50'),
(345, 'spr-20210601-075547', 9, 0, 298, 2, 1, 2, 0, 0, 'Cash', '', '2021-06-01 15:55:47', '2021-06-01 15:55:47'),
(346, 'spr-20210616-105325', 1, 0, 299, 4, 1, 1100, 0, 0, 'Cash', '', '2021-06-16 06:53:25', '2021-06-16 06:53:25'),
(347, 'spr-20210616-111044', 1, 0, 300, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-16 07:10:44', '2021-06-16 07:10:44'),
(348, 'spr-20210616-111120', 1, 0, 301, 4, 1, 2200, 0, 0, 'Cash', '', '2021-06-16 07:11:20', '2021-06-16 07:11:20'),
(349, 'spr-20210616-080543', 1, 0, 303, 4, 1, 440, 2, 0, 'Points', '', '2021-06-16 16:05:43', '2021-06-16 16:05:43'),
(351, 'spr-20210616-082851', 1, 0, 305, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-16 16:28:51', '2021-06-16 16:28:51'),
(352, 'spr-20210617-115553', 1, 0, 306, 3, 1, 1100, 4, 0, 'Points', '', '2021-06-17 07:55:53', '2021-06-17 07:55:53'),
(353, 'spr-20210617-121359', 1, 0, 304, 4, 1, 440, 2, 0, 'Points', '', '2021-06-17 08:13:59', '2021-06-17 08:13:59'),
(354, 'spr-20210617-030013', 1, 0, 307, 3, 1, 100, 0, 0, 'Cash', '', '2021-06-17 11:00:13', '2021-06-17 11:00:13'),
(355, 'ppr-20210618-082857', 1, 115, 0, 0, 1, 101, 0, 0, 'Cash', '', '2021-06-18 16:28:57', '2021-06-18 16:28:57'),
(356, 'spr-20210618-083127', 1, 0, 308, 4, 1, 1608, 0, 392, 'Cash', '', '2021-06-18 16:31:27', '2021-06-18 16:31:27'),
(357, 'spr-20210618-083254', 1, 0, 309, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-18 16:32:54', '2021-06-18 16:32:54'),
(358, 'ppr-20210619-104903', 1, 116, 0, 0, 1, 101, 0, 0, 'Cash', '', '2021-06-19 06:49:03', '2021-06-19 06:49:03'),
(359, 'spr-20210619-105121', 1, 0, 310, 4, 1, 958, 0, 42, 'Cash', '', '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(360, 'spr-20210619-110231', 1, 0, 312, 4, 1, 440, 2, 0, 'Points', '', '2021-06-19 07:02:31', '2021-06-19 07:02:31'),
(361, 'spr-20210619-110638', 1, 0, 313, 4, 1, 250, 1, 0, 'Points', '', '2021-06-19 07:06:38', '2021-06-19 07:06:38'),
(362, 'spr-20210627-124247', 1, 0, 314, 4, 1, 1100, 0, 0, 'Cash', '', '2021-06-27 08:42:47', '2021-06-27 08:42:47'),
(364, 'spr-20210707-103455', 1, 0, 317, 4, 1, 18, 0, 0, 'Cash', '', '2021-07-07 06:34:55', '2021-07-07 06:34:55'),
(367, 'spr-20210814-092805', 1, 0, 325, 4, 1, 1250, 0, 0, 'Cash', '', '2021-08-14 17:28:05', '2021-08-14 17:28:05'),
(371, 'spr-20210921-010722', 1, 0, 333, 4, 1, 2, 0, 0, 'Cash', '', '2021-09-21 09:07:22', '2021-09-21 09:07:22'),
(372, 'spr-20210921-035020', 1, 0, 334, 4, 1, 120, 0, 0, 'Cash', '', '2021-09-21 11:50:20', '2021-09-21 11:50:20'),
(373, 'spr-20210923-024704', 1, 0, 335, 4, 1, 11, 0, 0, 'Cash', '', '2021-09-23 10:47:04', '2021-09-23 10:47:04'),
(374, 'spr-20211003-051829', 1, 0, 336, 4, 1, 1220, 0, 0, 'Cash', '', '2021-10-03 13:18:29', '2021-10-03 13:18:29'),
(376, 'spr-20211003-054404', 1, 0, 338, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-03 13:44:04', '2021-10-03 13:44:04'),
(378, 'spr-20211007-025229', 1, 0, 340, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-07 10:52:29', '2021-10-07 10:52:29'),
(379, 'spr-20211007-033840', 1, 0, 341, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-07 11:38:40', '2021-10-07 11:38:40'),
(384, 'spr-20211014-035825', 1, 0, 348, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-14 11:58:25', '2021-10-14 11:58:25'),
(385, 'spr-20211020-011209', 1, 0, 349, 4, 1, 102, 0, 0, 'Cash', '', '2021-10-20 09:12:09', '2021-10-20 09:12:09'),
(386, 'spr-20211114-013929', 1, 0, 353, 4, 1, 374, 0, 0, 'Cash', '', '2021-11-14 09:39:29', '2021-11-14 09:39:29'),
(389, 'ppr-20220425-041628', 9, 133, NULL, NULL, 1, 200, NULL, 0, 'Cash', NULL, '2022-04-25 12:16:28', '2022-04-25 12:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

DROP TABLE IF EXISTS `payment_with_cheque`;
CREATE TABLE IF NOT EXISTS `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 05:09:48', '2018-07-01 05:09:48'),
(2, 24, '3123123123', '2018-07-10 03:21:32', '2018-07-10 03:21:32'),
(3, 31, '767867678', '2018-08-08 12:36:22', '2018-08-08 12:36:22'),
(4, 34, '3123412', '2018-08-09 01:55:54', '2018-08-09 01:55:54'),
(5, 35, '7765', '2018-08-09 02:32:14', '2018-08-09 02:32:14'),
(6, 44, '3124142412', '2018-08-30 05:07:18', '2018-08-30 05:07:18'),
(7, 51, '6576764646', '2018-09-03 06:08:21', '2018-09-03 06:08:21'),
(8, 53, '111111111', '2018-09-03 06:15:24', '2018-09-03 06:15:24'),
(9, 79, '1111', '2018-10-06 02:51:55', '2018-10-06 02:51:55'),
(10, 147, '221133', '2018-12-04 02:58:35', '2018-12-04 02:58:35'),
(11, 175, '1111', '2019-02-07 08:38:23', '2019-02-07 08:38:23'),
(12, 176, '1111', '2019-02-07 08:54:59', '2019-02-07 08:54:59'),
(13, 178, '420', '2019-02-07 09:07:04', '2019-02-07 09:07:04'),
(14, 216, '12344321', '2019-11-11 06:39:11', '2019-11-11 06:39:11'),
(15, 295, '111122222', '2020-10-18 07:17:24', '2020-10-18 07:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

DROP TABLE IF EXISTS `payment_with_credit_card`;
CREATE TABLE IF NOT EXISTS `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_credit_card`
--

INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`) VALUES
(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 07:16:55', '2020-10-18 07:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

DROP TABLE IF EXISTS `payment_with_gift_card`;
CREATE TABLE IF NOT EXISTS `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 23:48:36', '2018-08-25 02:57:35'),
(4, 39, 1, '2018-08-25 04:36:34', '2018-08-25 04:36:34'),
(6, 50, 1, '2018-09-03 01:01:38', '2018-09-03 01:01:38'),
(8, 293, 1, '2020-10-18 07:14:26', '2020-10-18 07:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

DROP TABLE IF EXISTS `payment_with_paypal`;
CREATE TABLE IF NOT EXISTS `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', '', '2019-01-01 01:52:31', '2019-01-01 01:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', '', '2019-12-04 19:38:02', '2019-12-04 19:38:02'),
(10, 'payroll-20210619-123706', 1, 1, 1, 200, '0', '', '2021-06-19 08:37:06', '2021-06-19 08:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 03:00:09', '2018-06-03 03:00:09'),
(5, 'products-delete', 'web', '2018-06-04 00:54:22', '2018-06-04 00:54:22'),
(6, 'products-add', 'web', '2018-06-04 02:34:14', '2018-06-04 02:34:14'),
(7, 'products-index', 'web', '2018-06-04 05:34:27', '2018-06-04 05:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 10:03:19', '2018-06-04 10:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 10:12:25', '2018-06-04 10:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 11:47:36', '2018-06-04 11:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 11:47:36', '2018-06-04 11:47:36'),
(12, 'sales-index', 'web', '2018-06-04 12:49:08', '2018-06-04 12:49:08'),
(13, 'sales-add', 'web', '2018-06-04 12:49:52', '2018-06-04 12:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 12:49:52', '2018-06-04 12:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 12:49:53', '2018-06-04 12:49:53'),
(16, 'quotes-index', 'web', '2018-06-05 00:05:10', '2018-06-05 00:05:10'),
(17, 'quotes-add', 'web', '2018-06-05 00:05:10', '2018-06-05 00:05:10'),
(18, 'quotes-edit', 'web', '2018-06-05 00:05:10', '2018-06-05 00:05:10'),
(19, 'quotes-delete', 'web', '2018-06-05 00:05:10', '2018-06-05 00:05:10'),
(20, 'transfers-index', 'web', '2018-06-05 00:30:03', '2018-06-05 00:30:03'),
(21, 'transfers-add', 'web', '2018-06-05 00:30:03', '2018-06-05 00:30:03'),
(22, 'transfers-edit', 'web', '2018-06-05 00:30:03', '2018-06-05 00:30:03'),
(23, 'transfers-delete', 'web', '2018-06-05 00:30:03', '2018-06-05 00:30:03'),
(24, 'returns-index', 'web', '2018-06-05 00:50:24', '2018-06-05 00:50:24'),
(25, 'returns-add', 'web', '2018-06-05 00:50:24', '2018-06-05 00:50:24'),
(26, 'returns-edit', 'web', '2018-06-05 00:50:25', '2018-06-05 00:50:25'),
(27, 'returns-delete', 'web', '2018-06-05 00:50:25', '2018-06-05 00:50:25'),
(28, 'customers-index', 'web', '2018-06-05 01:15:54', '2018-06-05 01:15:54'),
(29, 'customers-add', 'web', '2018-06-05 01:15:55', '2018-06-05 01:15:55'),
(30, 'customers-edit', 'web', '2018-06-05 01:15:55', '2018-06-05 01:15:55'),
(31, 'customers-delete', 'web', '2018-06-05 01:15:55', '2018-06-05 01:15:55'),
(32, 'suppliers-index', 'web', '2018-06-05 01:40:12', '2018-06-05 01:40:12'),
(33, 'suppliers-add', 'web', '2018-06-05 01:40:12', '2018-06-05 01:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-05 01:40:12', '2018-06-05 01:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-05 01:40:12', '2018-06-05 01:40:12'),
(36, 'product-report', 'web', '2018-06-25 01:05:33', '2018-06-25 01:05:33'),
(37, 'purchase-report', 'web', '2018-06-25 01:24:56', '2018-06-25 01:24:56'),
(38, 'sale-report', 'web', '2018-06-25 01:33:13', '2018-06-25 01:33:13'),
(39, 'customer-report', 'web', '2018-06-25 01:36:51', '2018-06-25 01:36:51'),
(40, 'due-report', 'web', '2018-06-25 01:39:52', '2018-06-25 01:39:52'),
(41, 'users-index', 'web', '2018-06-25 02:00:10', '2018-06-25 02:00:10'),
(42, 'users-add', 'web', '2018-06-25 02:00:10', '2018-06-25 02:00:10'),
(43, 'users-edit', 'web', '2018-06-25 02:01:30', '2018-06-25 02:01:30'),
(44, 'users-delete', 'web', '2018-06-25 02:01:30', '2018-06-25 02:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 23:50:05', '2018-07-14 23:50:05'),
(46, 'best-seller', 'web', '2018-07-15 00:01:38', '2018-07-15 00:01:38'),
(47, 'daily-sale', 'web', '2018-07-15 00:24:21', '2018-07-15 00:24:21'),
(48, 'monthly-sale', 'web', '2018-07-15 00:30:41', '2018-07-15 00:30:41'),
(49, 'daily-purchase', 'web', '2018-07-15 00:36:46', '2018-07-15 00:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-15 00:48:17', '2018-07-15 00:48:17'),
(51, 'payment-report', 'web', '2018-07-15 01:10:41', '2018-07-15 01:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-15 01:16:55', '2018-07-15 01:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-15 01:33:21', '2018-07-15 01:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 05:00:01', '2018-07-30 05:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 03:07:10', '2018-09-05 03:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 03:07:10', '2018-09-05 03:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 03:07:10', '2018-09-05 03:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 03:07:11', '2018-09-05 03:07:11'),
(59, 'general_setting', 'web', '2018-10-20 01:10:04', '2018-10-20 01:10:04'),
(60, 'mail_setting', 'web', '2018-10-20 01:10:04', '2018-10-20 01:10:04'),
(61, 'pos_setting', 'web', '2018-10-20 01:10:04', '2018-10-20 01:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 12:30:23', '2019-01-02 12:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 23:45:14', '2019-01-02 23:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 23:45:14', '2019-01-02 23:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 23:45:14', '2019-01-02 23:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 23:45:14', '2019-01-02 23:45:14'),
(67, 'account-index', 'web', '2019-01-03 00:06:13', '2019-01-03 00:06:13'),
(68, 'balance-sheet', 'web', '2019-01-03 00:06:14', '2019-01-03 00:06:14'),
(69, 'account-statement', 'web', '2019-01-03 00:06:14', '2019-01-03 00:06:14'),
(70, 'department', 'web', '2019-01-03 00:30:01', '2019-01-03 00:30:01'),
(71, 'attendance', 'web', '2019-01-03 00:30:01', '2019-01-03 00:30:01'),
(72, 'payroll', 'web', '2019-01-03 00:30:01', '2019-01-03 00:30:01'),
(73, 'employees-index', 'web', '2019-01-03 00:52:19', '2019-01-03 00:52:19'),
(74, 'employees-add', 'web', '2019-01-03 00:52:19', '2019-01-03 00:52:19'),
(75, 'employees-edit', 'web', '2019-01-03 00:52:19', '2019-01-03 00:52:19'),
(76, 'employees-delete', 'web', '2019-01-03 00:52:19', '2019-01-03 00:52:19'),
(77, 'user-report', 'web', '2019-01-16 08:48:18', '2019-01-16 08:48:18'),
(78, 'stock_count', 'web', '2019-02-17 12:32:01', '2019-02-17 12:32:01'),
(79, 'adjustment', 'web', '2019-02-17 12:32:02', '2019-02-17 12:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 07:18:03', '2019-02-22 07:18:03'),
(81, 'create_sms', 'web', '2019-02-22 07:18:03', '2019-02-22 07:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 07:02:19', '2019-03-07 07:02:19'),
(83, 'empty_database', 'web', '2019-03-07 07:02:19', '2019-03-07 07:02:19'),
(84, 'customer_group', 'web', '2019-03-07 07:37:15', '2019-03-07 07:37:15'),
(85, 'unit', 'web', '2019-03-07 07:37:15', '2019-03-07 07:37:15'),
(86, 'tax', 'web', '2019-03-07 07:37:15', '2019-03-07 07:37:15'),
(87, 'gift_card', 'web', '2019-03-07 08:29:38', '2019-03-07 08:29:38'),
(88, 'coupon', 'web', '2019-03-07 08:29:38', '2019-03-07 08:29:38'),
(89, 'holiday', 'web', '2019-10-19 10:57:15', '2019-10-19 10:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 08:00:23', '2019-10-22 08:00:23'),
(91, 'warehouse', 'web', '2020-02-26 08:47:32', '2020-02-26 08:47:32'),
(92, 'brand', 'web', '2020-02-26 08:59:59', '2020-02-26 08:59:59'),
(93, 'billers-index', 'web', '2020-02-26 09:11:15', '2020-02-26 09:11:15'),
(94, 'billers-add', 'web', '2020-02-26 09:11:15', '2020-02-26 09:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 09:11:15', '2020-02-26 09:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 09:11:15', '2020-02-26 09:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 07:41:48', '2020-03-02 07:41:48'),
(98, 'category', 'web', '2020-07-13 14:13:16', '2020-07-13 14:13:16'),
(99, 'delivery', 'web', '2020-07-13 14:13:16', '2020-07-13 14:13:16'),
(100, 'send_notification', 'web', '2020-10-31 08:21:31', '2020-10-31 08:21:31'),
(101, 'today_sale', 'web', '2020-10-31 08:57:04', '2020-10-31 08:57:04'),
(102, 'today_profit', 'web', '2020-10-31 08:57:04', '2020-10-31 08:57:04'),
(103, 'currency', 'web', '2020-11-09 02:23:11', '2020-11-09 02:23:11'),
(104, 'backup_database', 'web', '2020-11-15 02:16:55', '2020-11-15 02:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 06:34:42', '2021-06-27 06:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

DROP TABLE IF EXISTS `pos_setting`;
CREATE TABLE IF NOT EXISTS `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 05:17:04', '2020-04-17 15:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mouse', '63920719', 'standard', 'UPCE', 4, 3, 1, 1, 1, '320', '400', 178, 20, 1, '350', '2020-06-30', '2020-07-31', 1, 1, 'toponemouse.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '<p style=@text-align: center;@>11:11:30 AM<img src=@https://pbs.twimg.com/profile_images/900037286879838208/sZhajgua_400x400.jpg@ alt=@lioncoders@ width=@400@ height=@400@ /><span style=@background-color: #ccffff;@>hello world<br /></span></p>', 1, '2018-05-13 00:23:03', '2022-05-09 13:36:35'),
(2, 'mango', '72782608', 'standard', 'C128', 0, 1, 1, 3, 2, '8', '12', 3157, 100, 0, '', '', '0000-00-00', 2, 2, 'mango.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2018-05-13 00:38:31', '2021-07-15 14:25:45'),
(3, 'Earphone', '85415108', 'standard', 'C128', 4, 2, 1, 1, 1, '200', '250', 151, 25, 0, '220', '2020-11-02', '2020-11-30', 0, 1, 'airphonesamsung.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '<p>Earphone with good <strong>sound quality.</strong></p>\n<p>jhjkhjkhjh @@</p>', 1, '2018-05-13 00:39:55', '2022-05-09 13:36:35'),
(4, 'lychee', '38314290', 'standard', 'C128', 0, 1, 1, 1, 1, '1', '2', 290, 50, 0, '', '', '0000-00-00', 0, 1, 'lychee.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '<p style=@text-align: center;@><em>sweet lychee from <strong>kalipur</strong>, bashkhali</em></p>', 1, '2018-05-24 00:54:56', '2021-07-15 14:25:45'),
(5, 'Baby doll', '31261512', 'standard', 'C128', 3, 4, 1, 1, 1, '100', '120', 134, 50, 1, '100', '2020-02-28', '2020-02-29', 0, 1, 'lalacrybabydoll.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2018-05-24 00:58:20', '2022-05-09 13:34:56'),
(6, 'test', '78041363', 'standard', 'C128', 0, 2, 1, 1, 1, '12', '21', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-05-28 01:50:25', '2018-05-28 01:53:24'),
(10, 'potato', '212132', 'standard', 'C128', 0, 9, 7, 7, 7, '10', '22', 110.5, 0, 0, '', '', '0000-00-00', 0, 1, 'potato.jpeg', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, '2018-06-25 03:34:53', '2021-09-23 10:47:04'),
(13, 'ldms', '40624536', 'digital', 'C128', 0, 3, 0, 0, 0, '0', '21', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'ldms.jpg', '1532330693.JPG', 0, 0, 0, 0, 1, '', '', '', '', '<p>Amazon Prime 1 Month<br />Price: 300tk</p>\n<p>User Ability: Max 2 Mobile User<br />Duration: 1 Month<br />Package: Premium</p>', 1, '2018-07-23 03:09:29', '2020-03-07 18:45:01'),
(14, 'ni', '40237871', 'standard', 'C128', 0, 9, 8, 8, 8, '55', '56', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-01 00:36:51', '2018-08-01 00:41:48'),
(15, 'edawe', 'awd', 'standard', 'C128', 0, 1, 4, 4, 4, '312', '132', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-05 03:26:19', '2018-08-05 03:27:03'),
(16, 'weq', 'eqw', 'digital', 'C128', 0, 2, 0, 0, 0, '0', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '1533454125.jpg', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-05 03:28:45', '2018-08-05 03:29:23'),
(17, 'et', 'wer', 'standard', 'C128', 0, 2, 4, 4, 4, '12', '21', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-06 06:25:43', '2018-08-06 06:27:41'),
(18, 'wre', 'wre', 'standard', 'C128', 0, 1, 4, 4, 4, '3', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-06 06:45:42', '2018-08-06 06:57:41'),
(19, 'ewr', 'wer', 'standard', 'C128', 0, 2, 4, 4, 4, '3', '23', 0, 0, 1, '', '2018-08-06', '2018-08-10', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-06 07:41:46', '2019-11-28 07:16:47'),
(20, 'dim', '4234', 'standard', 'C128', 0, 10, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-29 01:37:07', '2018-08-29 01:43:18'),
(21, 'dim', '1', 'standard', 'C128', 0, 11, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-08-29 01:49:27', '2018-08-29 01:53:21'),
(22, 'iphone-X', '97103461', 'standard', 'C128', 5, 2, 1, 1, 1, '800', '1000', 44, 20, 0, '', '', '0000-00-00', 1, 1, 'iphoneX.jpg', '', 0, 0, 0, 1, 1, '', '', '', '', '', 1, '2018-09-03 06:05:17', '2022-05-09 13:36:35'),
(23, 'qwq', '1237920612311a', 'standard', 'C39', 0, 2, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-09-11 01:53:18', '2018-09-11 01:56:04'),
(24, 'chocolate', '84802317', 'standard', 'C128', 0, 9, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '', '', 0, 0, 0, 0, 1, '', '', '', '', '', 0, '2018-09-15 23:42:01', '2018-09-16 00:10:43'),
(25, 'Galaxy S9', '72100265', 'standard', 'C128', 0, 2, 1, 1, 1, '500', '1000', 20, 50, 0, '', '', '0000-00-00', 1, 1, 'SamsungGalaxyS9.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2018-10-23 03:13:22', '2022-05-09 13:36:35'),
(26, 'Samsung Set', '39053411', 'combo', 'C128', 4, 2, 0, 0, 0, '0', '1250', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '3,25', '', '1,1', '250,1000', '', 1, '2018-11-19 05:59:06', '2018-11-20 04:12:02'),
(27, 'mixed fruit juice', '24805187', 'combo', 'C128', 0, 9, 0, 0, 0, '0', '16', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '4,2', '', '3,1', '2,10', '', 0, '2018-11-19 11:39:26', '2018-11-25 00:35:51'),
(28, 'ssaaa', 'sasas', 'standard', 'C128', 0, 2, 1, 1, 2, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-11-20 06:14:12', '2018-11-20 06:34:02'),
(29, 'testcloth', '16055884', 'standard', 'C128', 0, 4, 10, 10, 10, '10', '15', 0, 0, 0, '', '2018-11-29', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2018-11-29 05:49:25', '2019-03-01 17:09:27'),
(30, 'Polo Shirt', '53467102', 'standard', 'C128', 0, 12, 1, 1, 1, '50', '100', 24, 10, 0, '', '', '0000-00-00', 0, 1, 'PoloShirt.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2018-12-05 01:29:43', '2021-07-15 14:25:45'),
(31, 'Shoe', '90471412', 'standard', 'C128', 0, 12, 1, 1, 1, '250', '300', 25, 10, 0, '', '', '0000-00-00', 0, 1, 'Shoe.jpg', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2018-12-05 01:33:09', '2021-07-15 14:25:45'),
(32, 'Toothpaste', '859875003032', 'standard', 'C128', 0, 12, 1, 1, 1, '5', '10', 29, 0, 0, '', '', '0000-00-00', 0, 1, '1572759415477product-page-fresh-breath.jpg', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, '2018-12-19 01:56:08', '2021-07-15 14:25:45'),
(33, 'tissue', '8941161008066', 'standard', 'C128', 0, 12, 1, 1, 1, '10', '20', 38, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, '2018-12-24 01:33:58', '2021-07-15 14:25:45'),
(48, 'T-shirt', '93475396', 'standard', 'C128', 0, 12, 1, 1, 1, '2', '3', 135, 0, 0, '', '', '0000-00-00', 0, 1, '1577165120189220px-Blue_Tshirt.jpg', '', 1, 0, 0, 0, 0, '', '', '', '', '', 1, '2019-11-21 09:03:04', '2022-05-09 13:34:56'),
(60, 'testvar', '32081679', 'standard', 'C128', 0, 12, 1, 1, 1, '1', '2', 1, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 1, 0, 0, 0, 0, '', '', '', '', '', 1, '2020-05-18 18:44:14', '2020-10-27 01:42:06'),
(61, 'TV', '32703342', 'standard', 'C128', 4, 2, 1, 1, 1, '3000', '10000', 16, 0, 0, '', '', '0000-00-00', 2, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 1, '', '', '', '', '', 1, '2020-08-16 17:58:39', '2021-07-15 14:25:45'),
(62, 'Test variant', '81145830', 'standard', 'C128', 0, 4, 1, 1, 1, '1', '2', 3, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 1, 0, 0, 0, 0, '', '', '', '', '', 1, '2020-09-27 08:08:27', '2021-02-11 03:28:16'),
(71, 'Napa', '41930312', 'standard', 'C128', 0, 19, 1, 1, 1, '1', '2', 28, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 1, 0, 0, 0, '', '', '', '', '', 1, '2021-03-07 10:12:53', '2021-11-29 09:22:53'),
(72, 'Denim Jeans', '19243053', 'standard', 'C128', 0, 12, 1, 1, 1, '2', '5', 9, 0, 0, '', '', '0000-00-00', 0, 1, '16255551802975de6825f-5bbc-4d74-bce9-2aa4ab2311ce.jpg', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, '2021-05-31 10:05:38', '2021-07-15 14:25:45'),
(74, 'Medium T shirt and Jeans', '10203123', 'combo', 'C128', 0, 12, 0, 0, 0, '0', '18', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '48,72', '2,', '1,1', '13,5', '', 1, '2021-07-06 09:31:58', '2021-07-06 09:31:58'),
(75, 'Car Repair', '16972383', 'service', 'C128', 0, 20, 0, 0, 0, '0', '200', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, '2021-07-15 14:38:41', '2021-07-15 14:38:41'),
(76, 'dasdas', '32781116', 'standard', 'C128', 0, 4, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', '', 0, 0, 0, 1, 0, '', '', '', '', '', 1, '2021-11-09 12:57:02', '2021-11-09 12:57:02'),
(77, 'chukus', '48547006', 'standard', 'C128', 0, 2, 1, 1, 1, '1', '2', 0, 0, 0, '', '', '0000-00-00', 0, 1, '163886942338193136640_10156697499916330_2126367939505422336_n.jpg,1638869424762105705782_159243222380186_243702843374862028_o.jpg,202112070415034.jpg,202112070427354.jpg', '', 0, 0, 0, 0, 0, '', '', '', '', '', 0, '2021-12-07 11:30:43', '2021-12-07 14:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

DROP TABLE IF EXISTS `product_adjustments`;
CREATE TABLE IF NOT EXISTS `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

DROP TABLE IF EXISTS `product_batches`;
CREATE TABLE IF NOT EXISTS `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_batches`
--

INSERT INTO `product_batches` (`id`, `product_id`, `batch_no`, `expired_date`, `qty`, `created_at`, `updated_at`) VALUES
(1, 71, '1001', '2023-05-31', 18, '2021-03-07 10:14:05', '2021-11-29 09:22:53'),
(2, 71, '1002', '2023-05-31', 6, '2021-03-07 10:55:06', '2021-06-18 16:32:54'),
(3, 71, '1003', '2023-09-30', 2, '2021-03-09 11:42:13', '2021-09-21 11:49:37'),
(4, 22, '10001', '2021-11-30', 1, '2021-10-20 09:47:09', '2021-10-20 09:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

DROP TABLE IF EXISTS `product_purchases`;
CREATE TABLE IF NOT EXISTS `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(59, 12, 4, 0, 0, '', 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-09 01:48:36', '2018-08-09 01:48:36'),
(60, 12, 5, 0, 0, '', 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 01:48:36', '2018-08-09 01:48:36'),
(66, 13, 2, 0, 0, '', 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-09 01:49:55', '2018-08-09 01:49:55'),
(67, 13, 3, 0, 0, '', 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 01:49:55', '2018-08-09 01:49:55'),
(68, 13, 1, 0, 0, '', 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-09 01:49:55', '2018-08-09 01:49:55'),
(69, 13, 10, 0, 0, '', 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-09 01:49:55', '2018-08-09 01:49:55'),
(70, 14, 1, 0, 0, '', 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 09:23:48', '2018-08-09 09:23:48'),
(71, 14, 2, 0, 0, '', 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 09:23:48', '2018-08-09 09:23:48'),
(72, 14, 3, 0, 0, '', 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 09:23:49', '2018-08-09 09:23:49'),
(73, 14, 5, 0, 0, '', 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 09:23:49', '2018-08-09 09:23:49'),
(74, 14, 10, 0, 0, '', 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 09:23:49', '2018-08-09 09:23:49'),
(76, 15, 22, 0, 0, '', 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 06:06:46', '2018-09-03 06:06:46'),
(87, 16, 22, 0, 0, '', 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 11:09:12', '2018-09-20 11:09:12'),
(89, 18, 4, 0, 0, '', 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 12:26:25', '2018-10-22 12:26:25'),
(90, 19, 4, 0, 0, '', 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 12:26:52', '2018-10-22 12:26:52'),
(91, 20, 25, 0, 0, '', 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 03:14:21', '2018-10-23 03:14:21'),
(93, 21, 25, 0, 0, '', 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 03:14:58', '2018-10-23 03:14:58'),
(94, 22, 22, 0, 0, '', 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-01 00:59:03', '2018-11-01 00:59:03'),
(96, 23, 22, 0, 0, '', 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 05:23:52', '2018-11-03 05:23:52'),
(97, 24, 22, 0, 0, '', 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 05:18:19', '2018-11-05 05:18:19'),
(98, 24, 25, 0, 0, '', 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 05:18:19', '2018-11-05 05:18:19'),
(99, 25, 31, 0, 0, '', 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-05 01:34:30', '2018-12-05 01:34:30'),
(100, 25, 30, 0, 0, '', 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-05 01:34:30', '2018-12-05 01:34:30'),
(101, 26, 31, 0, 0, '', 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-05 01:35:08', '2018-12-05 01:35:08'),
(102, 26, 30, 0, 0, '', 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-05 01:35:08', '2018-12-05 01:35:08'),
(104, 27, 32, 0, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-19 01:57:41', '2018-12-19 01:57:41'),
(112, 33, 33, 0, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 05:04:21', '2018-12-24 05:04:21'),
(113, 34, 25, 0, 0, '', 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 03:01:24', '2019-01-03 03:01:24'),
(114, 34, 22, 0, 0, '', 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 03:01:24', '2019-01-03 03:01:24'),
(115, 35, 31, 0, 0, '', 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 05:54:48', '2019-01-29 05:54:48'),
(116, 35, 30, 0, 0, '', 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 05:54:48', '2019-01-29 05:54:48'),
(117, 36, 30, 0, 0, '', 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 05:55:58', '2019-01-29 05:55:58'),
(118, 36, 31, 0, 0, '', 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 05:55:58', '2019-01-29 05:55:58'),
(121, 39, 1, 0, 0, '', 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 06:44:13', '2019-02-09 06:44:13'),
(122, 39, 2, 0, 0, '', 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 06:44:13', '2019-02-09 06:44:13'),
(123, 38, 32, 0, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 06:45:24', '2019-02-09 06:45:24'),
(124, 38, 25, 0, 0, '', 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 06:45:24', '2019-02-09 06:45:24'),
(125, 37, 33, 0, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 06:46:22', '2019-02-09 06:46:22'),
(126, 37, 25, 0, 0, '', 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 06:46:23', '2019-02-09 06:46:23'),
(127, 37, 22, 0, 0, '', 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 06:46:23', '2019-02-09 06:46:23'),
(128, 40, 33, 0, 0, '', 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 06:39:17', '2019-03-03 06:39:17'),
(129, 41, 33, 0, 0, '', 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 06:43:58', '2019-03-03 06:43:58'),
(130, 41, 1, 0, 0, '', 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 06:43:59', '2019-03-03 06:43:59'),
(133, 42, 30, 0, 0, '', 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 15:50:08', '2019-04-13 15:50:08'),
(134, 42, 31, 0, 0, '', 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 15:50:08', '2019-04-13 15:50:08'),
(135, 43, 25, 0, 0, '', 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 06:16:00', '2019-06-13 06:16:00'),
(136, 43, 22, 0, 0, '', 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 06:16:01', '2019-06-13 06:16:01'),
(137, 44, 25, 0, 0, '', 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 11:31:19', '2019-10-19 11:31:19'),
(138, 44, 22, 0, 0, '', 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 11:31:20', '2019-10-19 11:31:20'),
(140, 46, 33, 0, 0, '', 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 07:39:49', '2019-11-03 07:39:49'),
(141, 46, 32, 0, 0, '', 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 07:39:49', '2019-11-03 07:39:49'),
(142, 47, 1, 0, 0, '', 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 07:25:10', '2019-11-09 07:25:10'),
(143, 47, 2, 0, 0, '', 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 07:25:10', '2019-11-09 07:25:10'),
(144, 48, 4, 0, 0, '', 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 15:02:21', '2019-11-10 15:02:21'),
(149, 49, 22, 0, 0, '', 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 06:28:59', '2019-11-11 06:28:59'),
(158, 55, 48, 0, 3, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 18:28:35', '2019-11-27 18:28:35'),
(159, 55, 48, 0, 2, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 18:28:35', '2019-11-27 18:28:35'),
(161, 57, 3, 0, 0, '', 1, 1, 1, 200, 0, 0, 0, 200, '2019-12-04 19:07:49', '2019-12-04 19:07:49'),
(162, 58, 48, 0, 2, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 06:21:10', '2019-12-05 06:21:10'),
(163, 58, 48, 0, 3, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 06:21:10', '2019-12-05 06:21:10'),
(169, 59, 48, 0, 3, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 12:22:29', '2019-12-21 12:22:29'),
(170, 59, 48, 0, 2, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 12:22:29', '2019-12-21 12:22:29'),
(171, 59, 48, 0, 5, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 12:22:29', '2019-12-21 12:22:29'),
(174, 56, 48, 0, 2, '', 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 15:27:16', '2019-12-21 15:27:16'),
(178, 61, 48, 0, 3, '', 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 09:06:31', '2020-01-01 09:06:31'),
(179, 61, 48, 0, 2, '', 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 09:06:31', '2020-01-01 09:06:31'),
(180, 61, 48, 0, 5, '', 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 09:06:31', '2020-01-01 09:06:31'),
(181, 62, 25, 0, 0, '', 3, 3, 1, 500, 0, 10, 150, 1650, '2020-01-01 10:24:02', '2020-01-01 10:24:02'),
(209, 67, 31, 0, 0, '', 1, 1, 1, 250, 0, 0, 0, 250, '2020-02-04 19:00:41', '2020-02-04 19:00:41'),
(210, 67, 30, 0, 0, '', 1, 1, 1, 50, 0, 0, 0, 50, '2020-02-04 19:00:41', '2020-02-04 19:00:41'),
(212, 69, 4, 0, 0, '', 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 07:55:10', '2020-03-02 07:55:10'),
(213, 70, 4, 0, 0, '', 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 07:56:03', '2020-03-02 07:56:03'),
(214, 71, 25, 0, 0, '', 3, 3, 1, 500, 0, 10, 150, 1650, '2020-04-06 15:35:12', '2020-04-06 15:35:12'),
(215, 71, 31, 0, 0, '', 5, 5, 1, 250, 0, 0, 0, 1250, '2020-04-06 15:35:12', '2020-04-06 15:35:12'),
(216, 71, 30, 0, 0, '', 3, 3, 1, 50, 0, 0, 0, 150, '2020-04-06 15:35:12', '2020-04-06 15:35:12'),
(217, 72, 61, 0, 0, '', 10, 10, 1, 2500, 5000, 15, 3750, 28750, '2020-08-16 18:02:07', '2020-08-16 18:02:07'),
(219, 73, 62, 0, 12, '', 2, 2, 1, 1, 0, 0, 0, 2, '2020-09-27 11:07:44', '2020-09-27 11:07:44'),
(221, 74, 61, 0, 0, '', 11, 11, 1, 3000, 0, 15, 4950, 37950, '2020-10-24 03:03:16', '2020-10-24 03:03:16'),
(222, 74, 22, 0, 0, '', 4, 4, 1, 800, 0, 10, 320, 3520, '2020-10-24 03:03:16', '2020-10-24 03:03:16'),
(232, 83, 60, 0, 9, '', 2, 2, 1, 1, 0, 0, 0, 2, '2020-10-27 00:56:11', '2020-10-27 00:56:11'),
(233, 84, 60, 0, 9, '', 2, 2, 1, 2, 0, 0, 0, 4, '2020-10-27 00:56:58', '2020-10-27 00:56:58'),
(234, 85, 1, 0, 0, '', 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 05:29:52', '2020-11-02 05:29:52'),
(239, 87, 1, 0, 0, '', 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 07:20:34', '2020-11-02 07:20:34'),
(242, 89, 62, 0, 12, '', 1, 1, 1, 1, 0, 0, 0, 1, '2020-11-16 11:01:45', '2020-11-16 11:01:45'),
(243, 89, 1, 0, 0, '', 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-16 11:01:45', '2020-11-16 11:01:45'),
(244, 90, 61, 0, 0, '', 10, 10, 1, 3000, 0, 15, 4500, 34500, '2020-11-18 02:15:44', '2020-11-18 02:15:44'),
(271, 98, 71, 1, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-07 10:14:05', '2021-03-07 10:14:05'),
(281, 100, 71, 1, 0, '', 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-09 11:45:19', '2021-03-09 11:45:19'),
(282, 99, 71, 2, 0, '', 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-09 11:46:50', '2021-03-09 11:46:50'),
(283, 102, 71, 1, 0, '', 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-11 05:47:53', '2021-03-11 05:47:53'),
(295, 105, 71, 1, 0, '', 1, 1, 1, 1, 0, 0, 0, 1, '2021-04-09 17:53:48', '2021-04-09 17:53:48'),
(296, 105, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-04-09 17:53:48', '2021-04-09 17:53:48'),
(297, 106, 1, 0, 0, '', 1, 1, 1, 320, 0, 10, 32, 352, '2021-05-24 15:18:54', '2021-05-24 15:18:54'),
(309, 113, 3, 0, 0, '', 1, 1, 1, 200, 0, 0, 0, 200, '2021-05-30 09:41:19', '2021-05-30 09:41:19'),
(310, 113, 71, 1, 0, '', 1, 1, 1, 1, 0, 0, 0, 1, '2021-05-30 09:41:19', '2021-05-30 09:41:19'),
(311, 114, 71, 3, 0, '', 3, 3, 1, 1.5, 0, 0, 0, 4.5, '2021-06-01 11:21:27', '2021-06-01 11:21:27'),
(312, 115, 71, 1, 0, '', 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-18 16:28:36', '2021-06-18 16:28:36'),
(313, 115, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-18 16:28:36', '2021-06-18 16:28:36'),
(314, 116, 71, 1, 0, '', 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-19 06:48:22', '2021-06-19 06:48:22'),
(315, 116, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-19 06:48:22', '2021-06-19 06:48:22'),
(316, 117, 72, 0, 0, '', 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 09:10:42', '2021-07-06 09:10:42'),
(317, 118, 72, 0, 0, '', 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 09:11:07', '2021-07-06 09:11:07'),
(324, 121, 71, 3, 0, '', 1, 1, 1, 1, 0, 0, 0, 1, '2021-09-21 11:49:38', '2021-09-21 11:49:38'),
(325, 121, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-09-21 11:49:38', '2021-09-21 11:49:38'),
(328, 123, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-10-03 09:04:53', '2021-10-03 09:04:53'),
(329, 123, 22, 0, 0, '11101', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 09:04:53', '2021-10-03 09:04:53'),
(330, 124, 48, 0, 2, '', 1, 1, 1, 2, 0, 0, 0, 2, '2021-10-03 09:06:21', '2021-10-03 09:06:21'),
(331, 124, 22, 0, 0, '11102', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 09:06:21', '2021-10-03 09:06:21'),
(345, 128, 22, 0, 0, '', 10, 5, 1, 800, 0, 10, 800, 8800, '2021-10-20 09:45:25', '2021-10-20 09:45:25'),
(346, 129, 22, 4, 0, '', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-20 09:47:09', '2021-10-20 09:47:09'),
(356, 131, 3, 0, 0, '', 3, 3, 1, 200, 0, 0, 0, 600, '2021-11-29 09:29:18', '2021-11-29 09:29:18'),
(357, 131, 1, 0, 0, '', 2, 2, 1, 320, 0, 10, 64, 704, '2021-11-29 09:29:18', '2021-11-29 09:29:18'),
(363, 132, 22, 0, 0, '11103', 1, 1, 1, 800, 0, 10, 80, 880, '2021-12-07 15:01:11', '2021-12-07 15:01:11'),
(364, 132, 48, 0, 5, '', 1, 1, 1, 2, 0, 0, 0, 2, '2021-12-07 15:01:11', '2021-12-07 15:01:11'),
(365, 132, 5, 0, 0, '', 1, 1, 1, 100, 0, 0, 0, 100, '2021-12-07 15:01:11', '2021-12-07 15:01:11'),
(366, 133, 48, NULL, 3, NULL, 100, 100, 1, 2, 0, 0, 0, 200, '2022-04-25 12:15:27', '2022-04-25 12:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

DROP TABLE IF EXISTS `product_quotation`;
CREATE TABLE IF NOT EXISTS `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 0, 0, 1, 2, 5030, 10, 15, 754.5, 5784.5, '2018-08-09 01:52:50', '2018-08-28 02:09:57'),
(3, 1, 4, 0, 0, 50, 1, 1.5, 25, 10, 7.5, 82.5, '2018-08-09 01:53:25', '2018-08-28 02:34:36'),
(4, 1, 2, 0, 0, 6, 1, 9.55, 0, 10, 5.73, 63, '2018-08-28 03:03:48', '2018-08-28 03:07:07'),
(5, 2, 10, 0, 0, 2.5, 7, 22, 0, 0, 0, 55, '2018-09-04 00:02:58', '2018-09-20 12:37:41'),
(6, 2, 13, 0, 0, 1, 0, 21, 0, 0, 0, 21, '2018-09-04 00:02:58', '2018-09-04 00:02:58'),
(7, 3, 1, 0, 0, 1, 1, 400, 0, 10, 40, 440, '2018-10-23 02:12:49', '2019-12-21 08:41:37'),
(19, 3, 48, 0, 2, 1, 1, 13, 0, 0, 0, 13, '2019-12-07 10:50:02', '2019-12-21 08:41:37'),
(27, 11, 61, 0, 0, 2, 1, 10000, 0, 15, 3000, 23000, '2020-10-24 05:08:14', '2020-10-24 05:28:35'),
(28, 12, 3, 0, 0, 10, 1, 250, 0, 0, 0, 2500, '2020-12-10 01:34:01', '2020-12-10 01:34:01'),
(29, 12, 22, 0, 0, 5, 1, 1200, 0, 10, 600, 6600, '2020-12-10 01:34:01', '2020-12-10 01:34:01'),
(30, 13, 2, 0, 0, 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-12 08:58:03', '2021-01-12 08:59:15'),
(32, 13, 1, 0, 0, 1, 1, 400, 0, 10, 40, 440, '2021-01-12 08:58:03', '2021-01-12 08:59:15'),
(33, 13, 22, 0, 0, 1, 1, 1000, 0, 10, 100, 1100, '2021-01-12 08:59:15', '2021-01-12 08:59:15'),
(37, 15, 71, 1, 0, 1, 1, 2, 0, 0, 0, 2, '2021-05-29 06:53:56', '2021-05-30 10:04:07'),
(38, 15, 1, 0, 0, 1, 1, 400, 0, 10, 40, 440, '2021-05-29 06:53:56', '2021-05-30 10:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

DROP TABLE IF EXISTS `product_returns`;
CREATE TABLE IF NOT EXISTS `product_returns` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(3, 2, 4, 0, 0, '', 20, 1, 2, 0, 0, 0, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 10, 0, 0, '', 2, 7, 22, 0, 0, 0, 44, '0000-00-00 00:00:00', '2018-10-07 04:19:40'),
(6, 5, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '0000-00-00 00:00:00', '2018-12-26 00:16:08'),
(12, 6, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 11, 13, 0, 0, '', 1, 0, 21, 0, 0, 0, 21, '2019-12-24 07:20:29', '2019-12-24 07:20:29'),
(26, 13, 61, 0, 0, '', 1, 1, 10000, 0, 15, 1500, 11500, '2020-08-16 18:25:02', '2020-08-16 18:25:02'),
(27, 14, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-10-13 13:39:54', '2020-10-13 13:39:54'),
(31, 18, 61, 0, 0, '', 1, 1, 10000, 0, 15, 1500, 11500, '2020-11-18 03:02:18', '2020-11-18 03:02:18'),
(32, 19, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-12-10 02:40:25', '2020-12-10 02:40:25'),
(43, 25, 71, 1, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-05-24 15:39:50', '2021-05-24 15:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

DROP TABLE IF EXISTS `product_sales`;
CREATE TABLE IF NOT EXISTS `product_sales` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2018-08-08 12:36:23', '2018-08-08 13:13:27'),
(3, 1, 5, 0, 0, '', 2, 1, 115, 10, 0, 0, 230, '2018-08-08 13:13:28', '2018-08-08 13:13:28'),
(4, 2, 1, 0, 0, '', 10, 1, 420, 0, 10, 420, 4620, '2018-08-09 01:54:53', '2018-08-09 01:54:53'),
(5, 2, 4, 0, 0, '', 50, 1, 2.1, 0, 0, 0, 105, '2018-08-09 01:54:53', '2018-08-09 01:54:53'),
(6, 2, 2, 0, 0, '', 3, 2, 109.57, 0, 15, 49.3, 378, '2018-08-09 01:54:53', '2018-08-09 01:54:53'),
(7, 3, 4, 0, 0, '', 20, 1, 2.1, 0, 0, 0, 42, '2018-08-09 02:32:15', '2018-08-09 02:32:15'),
(8, 3, 5, 0, 0, '', 5, 1, 126, 0, 0, 0, 630, '2018-08-09 02:32:15', '2018-08-09 02:32:15'),
(9, 3, 3, 0, 0, '', 1, 1, 225, 0, 0, 0, 225, '2018-08-09 02:32:15', '2018-08-09 02:32:15'),
(10, 4, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2018-08-24 23:48:37', '2018-08-24 23:48:37'),
(12, 6, 13, 0, 0, '', 1, 0, 18.9, 0, 0, 0, 18.9, '2018-08-26 05:48:36', '2018-08-26 07:48:05'),
(13, 7, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2018-08-27 03:35:45', '2018-08-27 03:35:45'),
(14, 8, 5, 0, 0, '', 2, 2, 1440, 0, 10, 288, 3168, '2018-09-02 01:39:54', '2018-09-02 01:39:54'),
(15, 9, 4, 0, 0, '', 10, 1, 2, 0, 0, 0, 20, '2018-09-02 23:33:14', '2018-09-02 23:33:14'),
(16, 10, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2018-09-03 01:01:39', '2018-09-03 01:01:39'),
(17, 11, 22, 0, 0, '', 5, 1, 1000, 0, 10, 500, 5500, '2018-09-03 06:08:21', '2018-09-03 06:08:21'),
(18, 12, 22, 0, 0, '', 10, 1, 1050, 0, 10, 1050, 11550, '2018-09-03 06:10:33', '2018-09-03 06:10:33'),
(46, 29, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2018-09-09 05:38:41', '2018-09-09 05:38:41'),
(47, 30, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-09-10 00:57:06', '2018-09-20 11:12:38'),
(48, 31, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-09-26 05:20:59', '2018-09-26 05:21:25'),
(49, 31, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2018-09-26 05:20:59', '2018-09-26 05:21:25'),
(50, 32, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-04 05:55:48', '2018-10-04 05:55:48'),
(51, 33, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-04 06:00:23', '2018-10-04 06:00:23'),
(57, 37, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2018-10-07 02:46:05', '2018-10-07 02:46:05'),
(58, 38, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-07 02:47:19', '2018-10-07 02:47:19'),
(61, 40, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-07 03:13:12', '2018-10-07 03:13:12'),
(62, 41, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-10 00:16:21', '2018-10-10 00:16:21'),
(63, 41, 13, 0, 0, '', 1, 0, 21, 0, 0, 0, 21, '2018-10-10 00:16:21', '2018-10-10 00:16:21'),
(64, 42, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-10 01:34:51', '2018-10-10 01:34:51'),
(65, 43, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-15 23:34:35', '2018-10-15 23:34:35'),
(78, 55, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2018-10-21 02:53:34', '2018-10-21 02:53:34'),
(80, 57, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2018-10-21 04:26:12', '2018-10-21 04:26:12'),
(81, 57, 13, 0, 0, '', 2, 0, 21, 0, 0, 0, 42, '2018-10-21 04:26:13', '2018-10-21 04:26:13'),
(82, 58, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-10-22 11:27:24', '2018-10-22 11:27:24'),
(83, 58, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2018-10-22 11:27:24', '2018-10-22 11:27:24'),
(101, 73, 25, 0, 0, '', 3, 1, 1000, 0, 10, 300, 3300, '2018-10-23 03:15:43', '2018-10-23 03:15:43'),
(102, 73, 22, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2018-10-23 03:15:44', '2018-10-23 03:15:44'),
(103, 74, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 03:16:44', '2018-10-23 03:16:44'),
(104, 74, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 03:16:44', '2018-10-23 03:16:44'),
(105, 74, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2018-10-23 03:16:44', '2018-10-23 03:16:44'),
(106, 75, 2, 0, 0, '', 3, 2, 104.35, 0, 15, 46.96, 360, '2018-11-01 01:00:27', '2018-11-01 01:00:27'),
(107, 75, 22, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2018-11-01 01:00:27', '2018-11-01 01:00:27'),
(108, 75, 25, 0, 0, '', 3, 1, 1000, 0, 10, 300, 3300, '2018-11-01 01:00:27', '2018-11-01 01:00:27'),
(109, 75, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2018-11-01 01:00:27', '2018-11-01 01:00:27'),
(110, 75, 5, 0, 0, '', 2, 1, 120, 0, 0, 0, 240, '2018-11-01 01:00:27', '2018-11-01 01:00:27'),
(111, 76, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2018-11-01 01:01:26', '2018-11-03 05:28:56'),
(112, 76, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-11-01 01:01:27', '2018-11-03 05:28:56'),
(113, 76, 13, 0, 0, '', 4, 0, 21, 0, 0, 0, 84, '2018-11-01 01:01:27', '2018-11-03 05:28:56'),
(117, 79, 1, 0, 0, '', 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(118, 79, 2, 0, 0, '', 7, 2, 104.35, 0, 15, 109.57, 840, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(119, 79, 3, 0, 0, '', 7, 1, 250, 0, 0, 0, 1750, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(120, 79, 4, 0, 0, '', 7, 1, 2, 0, 0, 0, 14, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(121, 79, 22, 0, 0, '', 8, 1, 1000, 0, 10, 800, 8800, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(122, 79, 13, 0, 0, '', 10, 0, 21, 0, 0, 0, 210, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(123, 79, 5, 0, 0, '', 9, 1, 120, 0, 0, 0, 1080, '2018-11-05 05:15:17', '2018-11-05 05:15:17'),
(124, 80, 2, 0, 0, '', 2, 2, 104.35, 0, 15, 31.3, 240, '2018-11-05 05:19:58', '2018-11-05 05:19:58'),
(125, 80, 3, 0, 0, '', 2, 1, 250, 0, 0, 0, 500, '2018-11-05 05:19:58', '2018-11-05 05:19:58'),
(126, 80, 1, 0, 0, '', 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 05:19:58', '2018-11-05 05:19:58'),
(132, 86, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 05:59:48', '2018-11-05 05:59:48'),
(134, 88, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 06:02:58', '2018-11-05 06:02:58'),
(142, 94, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-26 10:05:34', '2018-11-26 10:05:34'),
(143, 95, 5, 0, 0, '', 3, 1, 120, 0, 0, 0, 360, '2018-11-27 05:36:08', '2018-11-27 05:36:08'),
(144, 95, 5, 0, 0, '', 3, 1, 120, 0, 0, 0, 360, '2018-11-27 05:36:08', '2018-11-27 05:36:08'),
(145, 96, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-28 03:15:09', '2018-11-28 03:15:09'),
(146, 97, 2, 0, 0, '', 2, 2, 104.35, 0, 15, 31.3, 240, '2018-12-01 02:05:18', '2018-12-01 02:05:18'),
(147, 97, 10, 0, 0, '', 1, 7, 22, 0, 0, 0, 22, '2018-12-01 02:05:18', '2018-12-01 02:05:18'),
(148, 98, 30, 0, 0, '', 2, 1, 100, 0, 0, 0, 200, '2018-12-05 01:35:58', '2018-12-05 01:35:58'),
(149, 98, 31, 0, 0, '', 2, 1, 300, 0, 0, 0, 600, '2018-12-05 01:35:58', '2018-12-05 01:35:58'),
(150, 99, 30, 0, 0, '', 2, 1, 100, 0, 0, 0, 200, '2018-12-05 01:37:19', '2018-12-05 01:37:19'),
(151, 99, 31, 0, 0, '', 2, 1, 300, 0, 0, 0, 600, '2018-12-05 01:37:20', '2018-12-05 01:37:20'),
(153, 101, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2018-12-08 02:20:26', '2018-12-08 02:20:26'),
(155, 103, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2018-12-24 00:58:32', '2018-12-24 00:58:32'),
(156, 104, 33, 0, 0, '', 4, 1, 2, 0, 0, 0, 8, '2018-12-24 05:15:27', '2018-12-24 23:55:23'),
(157, 104, 26, 0, 0, '', 2, 0, 1250, 0, 0, 0, 2500, '2018-12-24 23:47:54', '2018-12-24 23:55:23'),
(158, 105, 13, 0, 0, '', 1, 0, 21, 0, 0, 0, 21, '2019-01-01 01:45:38', '2019-01-01 01:45:38'),
(159, 106, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-01 05:10:40', '2019-01-01 05:10:40'),
(160, 106, 3, 0, 0, '', 2, 1, 250, 0, 0, 0, 500, '2019-01-01 05:10:40', '2019-01-01 05:10:40'),
(161, 106, 5, 0, 0, '', 2, 1, 120, 0, 0, 0, 240, '2019-01-01 05:10:40', '2019-01-01 05:10:40'),
(162, 107, 3, 0, 0, '', 2, 1, 250, 0, 0, 0, 500, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(163, 107, 5, 0, 0, '', 2, 1, 120, 0, 0, 0, 240, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(164, 107, 22, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(165, 107, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(166, 107, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(167, 107, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-03 02:56:27', '2019-01-03 02:56:27'),
(168, 108, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-20 11:58:24', '2019-01-20 11:58:24'),
(169, 109, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-01-29 06:14:43', '2019-01-29 06:14:43'),
(170, 109, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2019-01-29 06:14:43', '2019-01-29 06:14:43'),
(171, 110, 31, 0, 0, '', 2, 1, 300, 0, 0, 0, 600, '2019-01-29 07:50:41', '2019-01-29 07:50:41'),
(172, 110, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-01-29 07:50:41', '2019-01-29 07:50:41'),
(173, 111, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2019-01-31 07:08:39', '2019-01-31 07:08:39'),
(174, 111, 13, 0, 0, '', 1, 0, 21, 0, 0, 0, 21, '2019-01-31 07:08:39', '2019-01-31 07:08:39'),
(175, 112, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-02 06:40:45', '2019-02-02 06:40:45'),
(176, 113, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2019-02-02 07:41:17', '2019-02-02 07:41:17'),
(177, 113, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2019-02-02 07:41:17', '2019-02-02 07:41:17'),
(178, 114, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-05 11:04:45', '2019-02-05 11:04:45'),
(183, 118, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-07 07:15:42', '2019-02-07 07:15:42'),
(185, 120, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-07 07:40:37', '2019-02-07 07:40:37'),
(186, 121, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2019-02-09 06:48:14', '2019-02-09 06:48:14'),
(187, 121, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2019-02-09 06:48:14', '2019-02-09 06:48:14'),
(188, 121, 4, 0, 0, '', 10, 1, 2, 0, 0, 0, 20, '2019-02-09 06:48:15', '2019-02-09 06:48:15'),
(189, 121, 13, 0, 0, '', 2, 0, 21, 0, 0, 0, 42, '2019-02-09 06:48:15', '2019-02-09 06:48:15'),
(190, 121, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-09 06:48:15', '2019-02-09 06:48:15'),
(191, 121, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2019-02-09 06:48:15', '2019-02-09 06:48:15'),
(192, 121, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2019-02-09 06:48:15', '2019-02-09 06:48:15'),
(194, 123, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-02-19 10:32:14', '2019-02-19 10:32:14'),
(198, 127, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2019-03-03 06:40:10', '2019-03-03 06:40:10'),
(199, 127, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 06:40:10', '2019-03-03 06:40:10'),
(200, 127, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 06:40:10', '2019-03-03 06:40:10'),
(201, 128, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-04-04 05:55:55', '2019-04-04 05:55:55'),
(202, 128, 2, 0, 0, '', 1, 2, 104.35, 0, 15, 15.65, 120, '2019-04-04 05:55:55', '2019-04-04 05:55:55'),
(203, 129, 5, 0, 0, '', 2, 1, 120, 0, 0, 0, 240, '2019-04-04 05:59:37', '2019-04-11 06:50:16'),
(204, 130, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-04-21 08:21:24', '2019-04-21 08:21:24'),
(205, 130, 2, 0, 0, '', 1, 2, 125.22, 0, 15, 18.78, 144, '2019-04-21 08:21:24', '2019-04-21 08:21:24'),
(206, 130, 4, 0, 0, '', 1, 1, 2, 0, 0, 0, 2, '2019-04-21 08:21:24', '2019-04-21 08:21:24'),
(207, 131, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-05-28 06:32:29', '2019-05-28 06:32:29'),
(208, 131, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2019-05-28 06:32:29', '2019-05-28 06:32:29'),
(209, 131, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 06:32:29', '2019-05-28 06:32:29'),
(210, 131, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 06:32:29', '2019-05-28 06:32:29'),
(211, 132, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-06-13 06:16:37', '2019-06-13 06:16:37'),
(212, 132, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2019-06-13 06:16:37', '2019-06-13 06:16:37'),
(213, 132, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2019-06-13 06:16:37', '2019-06-13 06:16:37'),
(214, 133, 3, 0, 0, '', 2, 1, 250, 0, 0, 0, 500, '2019-06-13 06:17:51', '2019-06-13 06:17:51'),
(215, 133, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 06:17:52', '2019-06-13 06:17:52'),
(216, 133, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 06:17:52', '2019-06-13 06:17:52'),
(217, 134, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-10-19 11:30:28', '2019-10-19 11:30:28'),
(218, 134, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 11:30:28', '2019-10-19 11:30:28'),
(219, 134, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 11:30:28', '2019-10-19 11:30:28'),
(220, 134, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2019-10-19 11:30:28', '2019-10-19 11:30:28'),
(224, 138, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2019-10-31 08:29:37', '2019-10-31 08:29:37'),
(225, 139, 2, 0, 0, '', 2, 2, 125.22, 0, 15, 37.57, 288, '2019-11-03 07:40:44', '2019-11-03 07:40:44'),
(226, 139, 4, 0, 0, '', 100, 1, 2, 0, 0, 0, 200, '2019-11-03 07:40:44', '2019-11-03 07:40:44'),
(236, 144, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-11-09 15:41:31', '2019-11-09 15:41:31'),
(237, 144, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2019-11-09 15:41:31', '2019-11-09 15:41:31'),
(241, 147, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 06:40:08', '2019-11-11 06:40:08'),
(242, 147, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 06:40:08', '2019-11-11 06:40:08'),
(243, 147, 4, 0, 0, '', 10, 1, 2, 0, 0, 0, 20, '2019-11-11 06:40:08', '2019-11-11 06:40:08'),
(282, 172, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2019-12-03 11:46:31', '2019-12-03 11:46:31'),
(283, 173, 3, 0, 0, '', 1, 1, 225, 0, 0, 0, 225, '2019-12-04 19:19:40', '2019-12-04 19:19:40'),
(284, 173, 1, 0, 0, '', 1, 1, 360, 0, 10, 36, 396, '2019-12-04 19:19:40', '2019-12-04 19:19:40'),
(306, 187, 2, 0, 0, '', 2, 2, 125.22, 0, 15, 37.57, 288, '2019-12-22 06:40:58', '2019-12-22 06:40:58'),
(308, 190, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2019-12-23 08:59:46', '2019-12-23 08:59:46'),
(312, 193, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-01-01 10:20:28', '2020-01-01 10:20:28'),
(313, 194, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2020-01-02 12:39:47', '2020-01-02 12:39:47'),
(314, 194, 2, 0, 0, '', 1, 1, 10.43, 0, 15, 1.57, 12, '2020-01-02 12:39:47', '2020-01-02 12:39:47'),
(323, 201, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2020-02-03 11:52:56', '2020-02-03 11:52:56'),
(324, 202, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-02-04 18:58:53', '2020-02-04 18:58:53'),
(325, 202, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2020-02-04 18:58:53', '2020-02-04 18:58:53'),
(326, 203, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-03-02 07:54:14', '2020-03-02 07:54:14'),
(327, 203, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2020-03-02 07:54:14', '2020-03-02 07:54:14'),
(328, 204, 4, 0, 0, '', 20, 1, 2, 0, 0, 0, 40, '2020-03-02 07:57:41', '2020-03-02 07:57:41'),
(329, 205, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-03-11 12:46:42', '2020-03-11 12:46:42'),
(330, 206, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2020-03-11 12:52:30', '2020-03-11 12:54:04'),
(331, 207, 30, 0, 0, '', 2, 1, 100, 0, 0, 0, 200, '2020-04-06 15:40:24', '2020-04-06 15:41:11'),
(332, 207, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2020-04-06 15:40:24', '2020-04-06 15:41:11'),
(333, 207, 2, 0, 0, '', 1, 2, 125.22, 0, 15, 18.78, 144, '2020-04-06 15:41:11', '2020-04-06 15:41:11'),
(334, 208, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-05-06 18:59:50', '2020-05-06 18:59:50'),
(335, 208, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-05-06 18:59:50', '2020-05-06 18:59:50'),
(336, 209, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2020-06-09 08:42:48', '2020-06-09 08:42:48'),
(337, 209, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-06-09 08:42:48', '2020-06-09 08:42:48'),
(340, 212, 1, 0, 0, '', 1, 1, 350, 0, 10, 35, 385, '2020-07-03 14:39:14', '2020-07-03 14:39:14'),
(341, 212, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 14:39:14', '2020-07-03 14:39:14'),
(342, 212, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 14:39:14', '2020-07-03 14:39:14'),
(343, 213, 48, 0, 2, '', 1, 1, 13, 0, 0, 0, 13, '2020-07-12 17:51:53', '2020-07-12 17:51:53'),
(344, 214, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-07-14 07:53:41', '2020-07-14 07:53:41'),
(347, 217, 1, 0, 0, '', 1, 1, 350, 0, 10, 35, 385, '2020-07-27 16:38:08', '2020-07-27 16:38:08'),
(348, 218, 1, 0, 0, '', 1, 1, 350, 0, 10, 35, 385, '2020-07-27 16:40:24', '2020-07-27 16:40:24'),
(349, 219, 1, 0, 0, '', 1, 1, 350, 0, 10, 35, 385, '2020-07-27 16:46:45', '2020-07-27 16:46:45'),
(350, 220, 31, 0, 0, '', 2, 1, 300, 0, 0, 0, 600, '2020-08-12 14:28:04', '2020-08-12 14:28:04'),
(351, 220, 33, 0, 0, '', 3, 1, 20, 0, 0, 0, 60, '2020-08-12 14:28:04', '2020-08-12 14:28:04'),
(352, 220, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2020-08-12 14:28:04', '2020-08-12 14:28:04'),
(353, 221, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2020-08-12 14:30:35', '2020-08-12 14:30:35'),
(354, 222, 61, 0, 0, '', 2, 1, 10000, 0, 15, 3000, 23000, '2020-08-16 18:04:24', '2020-08-16 18:04:24'),
(355, 223, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-08-16 18:05:23', '2020-08-16 18:05:23'),
(356, 224, 1, 0, 0, '', 3, 1, 390, 30, 10, 117, 1287, '2020-08-26 16:01:39', '2020-08-26 16:01:39'),
(362, 230, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-10-17 17:28:52', '2020-10-17 17:28:52'),
(363, 231, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-10-18 07:13:33', '2020-10-18 07:13:33'),
(364, 232, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2020-10-22 09:30:14', '2020-10-22 09:30:14'),
(365, 233, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-10-22 09:56:04', '2020-10-22 09:56:04'),
(366, 234, 61, 0, 0, '', 1, 1, 10000, 0, 15, 1500, 11500, '2020-10-24 03:05:06', '2020-10-24 03:05:06'),
(367, 235, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-10-24 03:07:52', '2020-10-24 03:07:52'),
(369, 237, 25, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 11:46:01', '2020-10-24 11:46:01'),
(370, 237, 22, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 11:46:01', '2020-10-24 11:46:01'),
(371, 237, 61, 0, 0, '', 5, 1, 10000, 0, 15, 7500, 57500, '2020-10-24 11:46:01', '2020-10-24 11:46:01'),
(373, 239, 60, 0, 9, '', 1, 1, 2, 0, 0, 0, 2, '2020-10-27 01:40:02', '2020-10-27 01:40:02'),
(374, 240, 60, 0, 9, '', 2, 1, 3, 0, 0, 0, 6, '2020-10-27 01:42:06', '2020-10-27 01:42:06'),
(375, 241, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-10-27 02:32:00', '2020-10-27 02:32:00'),
(376, 242, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-10-29 03:30:30', '2020-10-29 03:30:30'),
(377, 243, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-11-01 03:21:12', '2020-11-01 03:21:12'),
(380, 245, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2020-11-01 03:42:23', '2020-11-01 03:42:23'),
(381, 245, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-11-01 03:42:23', '2020-11-01 03:42:23'),
(382, 246, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-11-01 03:50:18', '2020-11-02 12:39:17'),
(386, 250, 1, 0, 0, '', 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-06 09:30:41', '2020-11-06 09:30:41'),
(387, 251, 1, 0, 0, '', 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-09 09:15:24', '2020-11-09 09:15:24'),
(388, 251, 3, 0, 0, '', 1, 1, 232.2, 0, 0, 0, 232.2, '2020-11-09 09:15:24', '2020-11-09 09:15:24'),
(389, 252, 3, 0, 0, '', 1, 1, 229.5, 0, 0, 0, 229.5, '2020-11-11 01:58:58', '2020-11-11 01:58:58'),
(390, 253, 3, 0, 0, '', 1, 1, 212.5, 0, 0, 0, 212.5, '2020-11-14 02:47:36', '2020-11-14 02:47:36'),
(391, 253, 31, 0, 0, '', 1, 1, 255, 0, 0, 0, 255, '2020-11-14 02:47:36', '2020-11-14 02:47:36'),
(392, 253, 61, 0, 0, '', 1, 1, 8500, 0, 15, 1275, 9775, '2020-11-14 02:47:36', '2020-11-14 02:47:36'),
(395, 256, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-11-17 02:47:48', '2020-11-17 02:47:48'),
(396, 256, 3, 0, 0, '', 1, 1, 250, 0, 10, 25, 275, '2020-11-17 02:47:48', '2020-11-17 02:47:48'),
(397, 257, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2020-11-17 03:09:19', '2020-11-17 03:09:19'),
(398, 258, 61, 0, 0, '', 3, 1, 10000, 0, 15, 4500, 34500, '2020-11-18 02:52:39', '2020-11-18 02:52:39'),
(402, 262, 61, 0, 0, '', 2, 1, 10000, 0, 15, 3000, 23000, '2020-11-29 01:21:30', '2020-11-29 01:21:30'),
(403, 263, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2020-12-08 05:39:57', '2020-12-08 05:39:57'),
(416, 270, 2, 0, 0, '', 1, 3, 250.43, 0, 15, 37.57, 288, '2021-01-11 09:45:35', '2021-01-11 09:58:44'),
(419, 270, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-01-11 09:54:04', '2021-01-11 09:58:44'),
(420, 271, 2, 0, 0, '', 1, 2, 125.22, 0, 15, 18.78, 144, '2021-01-11 10:16:25', '2021-01-11 10:16:25'),
(421, 271, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-01-11 10:16:25', '2021-01-11 10:16:25'),
(422, 271, 1, 0, 0, '', 2, 1, 400, 0, 10, 80, 880, '2021-01-11 10:16:25', '2021-01-11 10:16:25'),
(429, 274, 2, 0, 0, '', 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-13 03:02:43', '2021-01-13 03:02:43'),
(430, 274, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2021-01-13 03:02:43', '2021-01-13 03:02:43'),
(431, 274, 3, 0, 0, '', 2, 1, 250, 0, 0, 0, 500, '2021-01-13 03:02:43', '2021-01-13 03:02:43'),
(432, 274, 1, 0, 0, '', 2, 1, 380, 40, 10, 76, 836, '2021-01-13 03:02:43', '2021-01-13 03:02:43'),
(433, 275, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-02-01 10:37:48', '2021-02-01 10:37:48'),
(437, 277, 32, 0, 0, '', 1, 1, 10, 0, 0, 0, 10, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(438, 277, 48, 0, 5, '', 1, 1, 53, 0, 0, 0, 53, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(439, 277, 48, 0, 2, '', 1, 1, 13, 0, 0, 0, 13, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(440, 277, 48, 0, 3, '', 1, 1, 3, 0, 0, 0, 3, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(441, 277, 61, 0, 0, '', 1, 1, 10000, 0, 15, 1500, 11500, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(442, 277, 31, 0, 0, '', 1, 1, 300, 0, 0, 0, 300, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(443, 277, 30, 0, 0, '', 1, 1, 100, 0, 0, 0, 100, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(444, 277, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(445, 277, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(446, 277, 13, 0, 0, '', 1, 0, 21, 0, 0, 0, 21, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(447, 277, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(448, 277, 4, 0, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(449, 277, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(450, 277, 2, 0, 0, '', 1, 2, 125.22, 0, 15, 18.78, 144, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(451, 277, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-02-16 03:09:48', '2021-02-16 03:09:48'),
(452, 278, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(453, 278, 61, 0, 0, '', 2, 1, 10000, 0, 15, 3000, 23000, '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(454, 278, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(455, 278, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(456, 278, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-02-17 03:32:38', '2021-02-17 03:32:38'),
(457, 279, 71, 1, 0, '', 2, 1, 2, 0, 0, 0, 4, '2021-03-11 09:40:34', '2021-03-11 09:40:34'),
(458, 280, 71, 2, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-03-17 00:14:11', '2021-03-17 00:14:11'),
(459, 282, 71, 1, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-03-18 01:47:29', '2021-03-20 06:59:57'),
(468, 288, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-04-12 09:40:46', '2021-04-12 09:40:46'),
(473, 290, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-05-24 15:45:58', '2021-05-24 15:45:58'),
(478, 294, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-01 08:35:30', '2021-06-01 08:35:30'),
(479, 295, 71, 3, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-01 11:22:09', '2021-06-01 11:22:09'),
(480, 296, 71, 1, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-01 11:46:24', '2021-06-01 11:46:24'),
(481, 297, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-06-01 15:41:50', '2021-06-01 15:41:50'),
(482, 298, 71, 3, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-01 15:55:47', '2021-06-01 15:55:47'),
(483, 299, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 06:53:25', '2021-06-16 06:53:25'),
(484, 300, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-16 07:10:33', '2021-06-16 07:10:33'),
(485, 301, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 07:11:11', '2021-06-16 07:11:11'),
(486, 301, 25, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 07:11:11', '2021-06-16 07:11:11'),
(487, 302, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-16 16:04:52', '2021-06-16 16:04:52'),
(488, 303, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-16 16:05:43', '2021-06-16 16:05:43'),
(489, 304, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-16 16:06:34', '2021-06-16 16:06:34'),
(490, 305, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-16 16:28:42', '2021-06-16 16:28:42'),
(491, 306, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-06-17 07:55:53', '2021-06-17 07:55:53'),
(492, 307, 22, 0, 0, '', 2, 1, 1000, 0, 10, 200, 2200, '2021-06-17 08:23:49', '2021-06-17 10:59:33'),
(493, 308, 2, 0, 0, '', 2, 2, 125.22, 0, 15, 37.57, 288, '2021-06-18 16:31:27', '2021-06-18 16:31:27'),
(494, 308, 1, 0, 0, '', 3, 1, 400, 0, 10, 120, 1320, '2021-06-18 16:31:27', '2021-06-18 16:31:27'),
(495, 309, 71, 2, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-18 16:32:54', '2021-06-18 16:32:54'),
(496, 310, 71, 0, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(497, 310, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(498, 310, 4, 0, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(499, 310, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(500, 310, 2, 0, 0, '', 1, 2, 125.22, 0, 15, 18.78, 144, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(501, 310, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-19 06:51:21', '2021-06-19 06:51:21'),
(502, 311, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-19 06:53:44', '2021-06-19 06:53:44'),
(503, 312, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-06-19 07:02:31', '2021-06-19 07:02:31'),
(504, 313, 3, 0, 0, '', 1, 1, 250, 0, 0, 0, 250, '2021-06-19 07:06:28', '2021-06-19 07:06:28'),
(505, 314, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-06-27 08:42:47', '2021-06-27 08:42:47'),
(508, 317, 74, 0, 0, '', 1, 0, 18, 0, 0, 0, 18, '2021-07-07 06:34:55', '2021-07-07 06:34:55'),
(536, 325, 26, 0, 0, '', 2, 0, 1200, 0, 0, 0, 2400, '2021-08-14 17:28:05', '2021-08-14 17:34:27'),
(547, 333, 71, 0, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-09-21 09:07:22', '2021-09-21 09:07:22'),
(548, 334, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-09-21 11:50:20', '2021-09-21 11:50:20'),
(549, 335, 10, 0, 0, '', 0.5, 7, 22, 0, 0, 0, 11, '2021-09-23 10:47:04', '2021-09-23 10:47:04'),
(550, 336, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-10-03 13:18:29', '2021-10-03 13:18:29'),
(551, 336, 22, 0, 0, '1103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 13:18:29', '2021-10-03 13:18:29'),
(553, 338, 22, 0, 0, '11103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 13:44:04', '2021-10-03 13:44:04'),
(555, 340, 22, 0, 0, '11104', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 10:52:29', '2021-10-07 10:52:29'),
(556, 341, 22, 0, 0, '91101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 11:38:40', '2021-10-07 11:38:40'),
(557, 342, 25, 0, 0, '99901,99902', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 08:12:42', '2021-10-09 12:22:39'),
(558, 342, 5, 0, 0, '', 1, 1, 120, 0, 0, 0, 120, '2021-10-09 12:22:39', '2021-10-09 12:22:39'),
(559, 343, 22, 0, 0, '1105,91102', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 12:32:32', '2021-10-09 12:32:32'),
(564, 348, 22, 0, 0, '11101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-14 11:58:20', '2021-10-14 11:58:20'),
(565, 349, 5, 0, 0, '', 1, 1, 102, 0, 0, 0, 102, '2021-10-20 09:12:09', '2021-10-20 09:12:09'),
(568, 353, 1, 0, 0, '', 1, 1, 340, 0, 10, 34, 374, '2021-11-14 09:39:29', '2021-11-14 09:39:29'),
(569, 354, 22, 0, 0, '', 1, 1, 1000, 0, 10, 100, 1100, '2021-11-15 08:03:09', '2021-11-15 08:03:09'),
(570, 354, 71, 1, 0, '', 1, 1, 2, 0, 0, 0, 2, '2021-11-15 08:03:09', '2021-11-15 08:03:09'),
(571, 354, 1, 0, 0, '', 1, 1, 400, 0, 10, 40, 440, '2021-11-15 08:03:09', '2021-11-15 08:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

DROP TABLE IF EXISTS `product_transfer`;
CREATE TABLE IF NOT EXISTS `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0, 0, '', 100, 1, 1, 0, 0, 100, '2018-08-08 13:17:10', '2018-12-25 00:16:55'),
(7, 6, 48, 0, 3, '', 1, 1, 2, 0, 0, 2, '2019-12-05 15:55:04', '2019-12-05 16:09:42'),
(11, 8, 5, 0, 0, '', 10, 1, 100, 0, 0, 1000, '2020-01-22 08:30:59', '2020-01-22 08:30:59'),
(13, 10, 1, 0, 0, '', 1, 1, 320, 10, 32, 352, '2020-10-08 09:27:35', '2020-10-08 09:29:35'),
(14, 11, 62, 0, 12, '', 1, 1, 1, 0, 0, 1, '2020-10-18 14:17:08', '2020-10-18 14:17:08'),
(15, 12, 61, 0, 0, '', 10, 1, 3000, 15, 4500, 34500, '2020-10-24 05:01:46', '2020-10-24 05:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(3, 48, 3, 1, 'S-93475396', 0, 112, '2019-11-21 09:03:04', '2022-05-09 13:34:46'),
(5, 48, 5, 3, 'L-93475396', 50, 11, '2019-11-24 08:07:20', '2021-12-07 15:01:11'),
(6, 48, 2, 2, 'M-93475396', 10, 13, '2019-11-24 09:17:07', '2022-05-09 13:34:56'),
(10, 60, 9, 1, 'a-32081679', 0, 1, '2020-05-18 18:44:14', '2020-10-27 01:42:06'),
(11, 60, 11, 2, 'b-32081679', 0, 0, '2020-05-18 18:58:31', '2020-05-18 18:58:31'),
(12, 62, 12, 1, 'variant 1-81145830', 0, 3, '2020-09-27 08:08:27', '2021-02-11 03:28:16'),
(13, 62, 13, 2, 'variant 2-81145830', 0, 0, '2020-09-27 08:08:27', '2020-09-27 08:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

DROP TABLE IF EXISTS `product_warehouse`;
CREATE TABLE IF NOT EXISTS `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(10, '1', 0, 0, '', 1, 133.5, 0, '2018-08-08 10:30:12', '2021-11-29 09:29:18'),
(11, '2', 0, 0, '', 1, 1368, 0, '2018-08-08 10:30:12', '2021-01-12 09:12:14'),
(12, '3', 0, 0, '', 1, 102, 0, '2018-08-08 10:30:13', '2021-11-29 09:29:18'),
(13, '5', 0, 0, '', 1, 79, 0, '2018-08-08 10:30:13', '2021-12-07 15:01:11'),
(14, '4', 0, 0, '', 1, 171, 0, '2018-08-08 11:16:09', '2020-03-02 07:56:03'),
(15, '4', 0, 0, '', 2, 119, 0, '2018-08-08 13:16:15', '2021-07-15 14:25:45'),
(16, '2', 0, 0, '', 2, 1789, 0, '2018-08-08 13:26:49', '2021-07-15 14:25:45'),
(17, '1', 0, 0, '', 2, 45.5, 0, '2018-08-08 13:33:33', '2022-05-09 13:36:35'),
(18, '3', 0, 0, '', 2, 49, 0, '2018-08-09 01:47:23', '2022-05-09 13:36:35'),
(19, '5', 0, 0, '', 2, 55, 0, '2018-08-09 01:48:36', '2022-05-09 13:34:56'),
(20, '10', 0, 0, '', 1, 50, 0, '2018-08-09 01:49:29', '2019-12-04 07:49:14'),
(21, '10', 0, 0, '', 2, 60.5, 0, '2018-08-09 01:49:55', '2021-09-23 10:47:04'),
(22, '22', 0, 0, '7001,11101,11102,11103,', 1, 29, 0, '2018-09-03 06:06:09', '2021-12-07 15:01:11'),
(23, '22', 0, 0, '', 2, 14, 0, '2018-09-03 06:07:14', '2022-05-09 13:36:35'),
(24, '24', 0, 0, '', 2, 0, 0, '2018-09-15 23:49:30', '2018-09-15 23:50:49'),
(25, '25', 0, 0, '', 1, 14, 0, '2018-10-23 03:14:21', '2019-03-02 12:06:10'),
(26, '25', 0, 0, '', 2, 6, 0, '2018-10-23 03:14:41', '2022-05-09 13:36:35'),
(27, '31', 0, 0, '', 1, 14, 0, '2018-12-05 01:34:30', '2021-01-10 03:04:28'),
(28, '30', 0, 0, '', 1, 14, 0, '2018-12-05 01:34:30', '2020-10-22 09:30:14'),
(29, '31', 0, 0, '', 2, 11, 0, '2018-12-05 01:35:08', '2021-07-15 14:25:45'),
(30, '30', 0, 0, '', 2, 10, 0, '2018-12-05 01:35:08', '2021-07-15 14:25:45'),
(31, '32', 0, 0, '', 1, 10, 0, '2018-12-19 01:57:16', '2019-02-09 06:45:23'),
(32, '32', 0, 0, '', 2, 19, 0, '2018-12-19 01:57:41', '2021-07-15 14:25:45'),
(33, '33', 0, 0, '', 1, 16, 0, '2018-12-24 02:38:40', '2019-03-03 06:39:17'),
(34, '33', 0, 0, '', 2, 22, 0, '2019-02-09 06:21:38', '2021-07-15 14:25:45'),
(35, '48', 0, 3, '', 1, 102, 0, '2019-11-25 16:23:02', '2022-05-09 13:34:46'),
(36, '48', 0, 2, '', 1, 4, 0, '2019-11-26 08:47:42', '2021-10-03 09:06:21'),
(37, '48', 0, 3, '', 2, 9, 0, '2019-11-26 10:12:08', '2021-07-15 14:25:45'),
(38, '48', 0, 2, '', 2, 9, 0, '2019-11-26 10:12:08', '2022-05-09 13:34:56'),
(39, '48', 0, 5, '', 1, 2, 0, '2019-12-21 12:18:51', '2021-12-07 15:01:11'),
(40, '48', 0, 5, '', 2, 9, 0, '2019-12-22 10:36:39', '2021-07-15 14:25:45'),
(45, '61', 0, 0, '', 2, 8, 0, '2020-08-16 18:02:07', '2021-07-15 14:25:45'),
(46, '62', 0, 12, '', 1, 2, 0, '2020-09-27 08:55:33', '2020-11-16 11:01:45'),
(47, '62', 0, 12, '', 2, 1, 0, '2020-10-18 14:17:08', '2021-02-11 03:28:16'),
(48, '61', 0, 0, '', 1, 8, 0, '2020-10-24 05:01:46', '2020-11-29 01:21:30'),
(49, '60', 0, 9, '', 1, 1, 0, '2020-10-26 12:34:05', '2020-10-27 01:42:06'),
(51, '71', 1, 0, '', 1, 19, 0, '2021-03-07 10:14:05', '2021-06-19 06:48:22'),
(52, '71', 1, 0, '', 2, 4, 0, '2021-03-07 10:21:16', '2021-11-29 09:22:53'),
(53, '71', 2, 0, '', 1, 3, 0, '2021-03-07 10:55:06', '2021-06-18 16:32:54'),
(54, '71', 3, 0, '', 1, 2, 0, '2021-03-09 11:42:13', '2021-09-21 11:49:37'),
(55, '71', 2, 0, '', 2, 0, 0, '2021-05-23 09:09:03', '2021-05-26 09:38:06'),
(56, '72', 0, 0, '', 1, 5, 0, '2021-07-06 09:10:42', '2021-07-06 09:10:42'),
(57, '72', 0, 0, '', 2, 4, 0, '2021-07-06 09:11:07', '2021-07-15 14:25:45'),
(58, '22', 4, 0, '', 1, 1, 0, '2021-10-20 09:47:09', '2021-10-20 09:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(12, 'pr-20180808-051614', 1, 2, 3, 2, 300, 0, 0, 10200, 0, 0, 0, 0, 10200, 0, 1, 1, '', '', '2018-08-08 13:16:14', '2018-09-22 04:53:24'),
(13, 'pr-20180809-054723', 1, 2, 3, 4, 410, 0, 7304.35, 92600, 10, 9260, 0, 500, 102360, 300, 1, 1, '', '', '2018-08-09 01:47:23', '2018-08-30 05:07:18'),
(14, 'pr-20180809-012348', 1, 1, 1, 5, 400, 0, 4452.17, 75300, 10, 7480, 500, 1000, 83280, 0, 1, 1, '', '', '2018-08-09 09:23:48', '2018-08-09 09:23:48'),
(15, 'pr-20180903-100609', 1, 1, 1, 1, 20, 0, 1600, 17600, 0, 0, 0, 100, 17700, 0, 1, 1, '', '', '2018-09-03 06:06:09', '2018-10-08 00:11:24'),
(16, 'pr-20180903-100714', 1, 2, 3, 1, 20, 0, 1600, 17600, 0, 0, 0, 150, 17750, 3350, 1, 1, '', '', '2018-09-03 06:07:14', '2018-10-07 02:57:36'),
(18, 'pr-20181022-042625', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, 0, 0, 50, 0, 1, 1, '', '', '2018-10-22 12:26:25', '2018-10-22 12:26:25'),
(19, 'pr-20181022-042652', 1, 2, 3, 1, 50, 0, 0, 50, 0, 0, 0, 0, 50, 0, 1, 1, '', '', '2018-10-22 12:26:52', '2018-10-22 12:26:52'),
(20, 'pr-20181023-071420', 11, 1, 1, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, '', '', '2018-10-23 03:14:20', '2018-10-23 03:14:20'),
(21, 'pr-20181023-071441', 11, 2, 3, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, '', '', '2018-10-23 03:14:41', '2018-10-23 03:14:58'),
(22, 'pr-20181101-045903', 1, 1, 1, 1, 5, 0, 400, 4400, 0, 0, 0, 0, 4400, 0, 1, 1, '', '', '2018-11-01 00:59:03', '2018-11-01 00:59:03'),
(23, 'pr-20181101-045928', 1, 2, 3, 1, 5, 0, 400, 4400, 10, 430, 100, 0, 4730, 500, 1, 1, '', '', '2018-11-01 00:59:28', '2018-12-04 03:01:34'),
(24, 'pr-20181105-091819', 1, 2, 1, 2, 20, 0, 1450, 15950, 0, 0, 0, 0, 15950, 15950, 1, 2, '', '', '2018-11-05 05:18:19', '2018-11-05 05:21:27'),
(25, 'pr-20181205-053429', 1, 1, 1, 2, 30, 0, 0, 4500, 0, 0, 100, 50, 4450, 4450, 1, 2, '', '', '2018-12-05 01:34:29', '2018-12-05 01:34:43'),
(26, 'pr-20181205-053508', 1, 2, 3, 2, 30, 0, 0, 4500, 0, 0, 0, 0, 4500, 0, 1, 1, '', '', '2018-12-05 01:35:08', '2018-12-10 02:20:52'),
(27, 'pr-20181219-055716', 1, 2, 0, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 10, 1, 2, '', '', '2018-12-19 01:57:16', '2018-12-20 02:34:39'),
(33, 'pr-20181224-063840', 1, 1, 0, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, '', '', '2018-12-24 02:38:40', '2018-12-24 05:04:21'),
(34, 'pr-20190103-070123', 1, 1, 1, 2, 4, 0, 260, 2860, 0, 0, 0, 0, 2860, 2860, 1, 2, '', '', '2019-01-03 03:01:23', '2019-01-29 06:03:24'),
(35, 'pr-20190129-095448', 9, 1, 1, 2, 4, 0, 0, 600, 0, 0, 0, 0, 600, 100, 1, 1, '', '', '2019-01-29 05:54:48', '2019-02-07 09:06:40'),
(36, 'pr-20190129-095558', 9, 2, 1, 2, 5, 0, 0, 650, 0, 0, 0, 0, 650, 650, 1, 2, '', '', '2019-01-29 05:55:58', '2019-01-29 06:03:02'),
(37, 'pr-20190209-102138', 1, 2, 1, 3, 18, 0, 580, 6390, 0, 0, 0, 0, 6390, 6390, 1, 2, '', '', '2019-02-09 06:21:38', '2019-06-13 06:13:51'),
(38, 'pr-20190209-102208', 1, 1, 1, 2, 13, 0, 150, 1660, 0, 0, 0, 0, 1660, 1660, 1, 2, '', '', '2019-02-09 06:22:08', '2019-02-09 06:49:40'),
(39, 'pr-20190209-104413', 1, 1, 1, 2, 3, 10, 63, 885, 10, 88.5, 0, 0, 973.5, 973.5, 1, 2, '', '', '2019-02-09 06:44:13', '2019-02-09 06:49:59'),
(40, 'pr-20190303-103917', 1, 1, 1, 1, 10, 0, 0, 100, 0, 0, 0, 0, 100, 100, 1, 2, '', '', '2019-03-03 06:39:17', '2019-03-03 06:40:46'),
(41, 'pr-20190303-104358', 1, 2, 0, 2, 15, 0, 320, 3570, 0, 0, 0, 0, 3570, 1000, 1, 1, '', '', '2019-03-03 06:43:58', '2019-04-13 13:02:41'),
(42, 'pr-20190404-095757', 1, 1, 3, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, '', '', '2019-04-04 05:57:57', '2019-04-13 15:50:08'),
(43, 'pr-20190613-101600', 1, 2, 1, 2, 6, 0, 390, 4290, 0, 0, 0, 0, 4290, 4290, 1, 2, '', '', '2019-06-13 06:16:00', '2019-10-19 11:29:25'),
(44, 'pr-20191019-033119', 1, 2, 3, 2, 2, 0, 130, 1430, 0, 0, 0, 0, 1430, 0, 1, 1, '', '', '2019-10-19 11:31:19', '2019-10-19 11:31:19'),
(46, 'pr-20191103-113949', 1, 2, 3, 2, 20, 0, 0, 150, 0, 0, 0, 50, 200, 200, 1, 2, '', '', '2019-11-03 07:39:49', '2019-11-03 07:42:22'),
(47, 'pr-20191109-112510', 1, 1, 0, 2, 3, 10, 63, 885, 0, 0, 0, 66, 951, 0, 1, 1, '', '', '2019-11-09 07:25:10', '2019-11-09 07:25:10'),
(48, 'pr-20191110-070221', 1, 2, 0, 1, 100, 0, 0, 100, 0, 0, 0, 40, 140, 0, 1, 1, '', '', '2019-11-10 15:02:21', '2019-11-10 15:02:21'),
(49, 'pr-20191111-102155', 1, 2, 1, 1, 10, 0, 800, 8800, 0, 0, 0, 50, 8850, 7000, 1, 1, '', '', '2019-11-11 06:21:55', '2020-01-01 10:22:25'),
(55, 'pr-20191127-102835', 1, 1, 0, 2, 2, 0, 0, 4, 0, 0, 0, 0, 4, 4, 1, 2, '', '', '2019-11-27 18:28:35', '2020-01-01 10:21:52'),
(56, 'pr-20191127-102906', 1, 2, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 2, 2, 1, 2, '', '', '2019-11-27 18:29:06', '2020-01-01 10:21:44'),
(57, 'pr-20191204-110749', 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, 0, 20, 220, 220, 1, 2, '', '', '2019-12-04 19:07:49', '2019-12-04 19:11:24'),
(58, 'pr-20191205-102110', 1, 1, 1, 2, 2, 0, 0, 4, 0, 0, 0, 0, 4, 4, 1, 2, '', '', '2019-12-05 06:21:10', '2020-01-01 10:21:37'),
(59, 'pr-20191221-041851', 1, 1, 0, 3, 3, 0, 0, 6, 0, 0, 0, 0, 6, 6, 1, 2, '', '', '2019-12-21 12:18:51', '2020-01-01 10:21:31'),
(61, 'pr-20200101-010631', 1, 2, 1, 3, 30, 0, 0, 60, 0, 0, 0, 0, 60, 60, 1, 2, '', '', '2020-01-01 09:06:31', '2020-01-01 09:07:50'),
(62, 'pr-20200101-022402', 1, 2, 0, 1, 3, 0, 150, 1650, 0, 0, 0, 0, 1650, 1650, 1, 2, '', '', '2020-01-01 10:24:02', '2020-08-12 14:28:52'),
(67, 'pr-20200204-110041', 1, 2, 1, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, '', '', '2020-02-04 19:00:41', '2020-02-04 19:00:50'),
(69, 'pr-20200302-115510', 1, 2, 0, 1, 50, 0, 0, 50, 0, 0, 0, 0, 50, 50, 1, 2, '', '', '2020-03-02 07:55:10', '2020-03-02 07:58:20'),
(70, 'pr-20200302-115603', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, 0, 0, 50, 50, 1, 2, '', '', '2020-03-02 07:56:03', '2020-03-02 07:58:11'),
(71, 'pr-20200406-073512', 1, 2, 3, 3, 11, 0, 150, 3050, 10, 305, 0, 0, 3355, 2000, 1, 1, '', '', '2020-04-06 15:35:12', '2020-04-06 15:38:23'),
(72, 'pr-20200816-100207', 1, 2, 1, 1, 10, 5000, 3750, 28750, 0, 0, 0, 2000, 30750, 0, 1, 1, '', '', '2020-08-16 18:02:07', '2020-08-16 18:02:07'),
(73, 'pr-20200927-125533', 1, 1, 0, 1, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 1, 1, '', '', '2020-09-27 08:55:33', '2020-09-27 11:07:44'),
(74, 'pr-20201024-070201', 1, 2, 1, 2, 15, 0, 5270, 41470, 0, 0, 0, 0, 41470, 0, 1, 1, '', '', '2020-10-24 03:02:01', '2020-10-24 03:03:16'),
(83, 'pr-20201027-045611', 1, 1, 0, 1, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 1, 1, '', '', '2020-10-27 00:56:11', '2020-10-27 00:56:11'),
(84, 'pr-20201027-045658', 1, 1, 0, 1, 2, 0, 0, 4, 0, 0, 0, 0, 4, 0, 1, 1, '', '', '2020-10-27 00:56:58', '2020-10-27 00:56:58'),
(85, 'pr-20201102-092952', 1, 1, 0, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, '', 'asasda\ndasdasd', '2020-11-02 05:29:52', '2020-11-02 05:29:52'),
(87, 'pr-20201102-093644', 1, 1, 0, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, '', 'kjkljklj\nlljkljkljkl\njhjhjh.', '2020-11-02 05:36:44', '2020-11-02 07:20:34'),
(89, 'pr-20201116-030145', 1, 1, 0, 2, 2, 0, 32, 353, 0, 0, 0, 0, 353, 0, 1, 1, '', '', '2020-11-16 11:01:45', '2020-11-16 11:01:45'),
(90, 'pr-20201118-061543', 1, 2, 0, 1, 10, 0, 4500, 34500, 0, 0, 1000, 100, 33600, 33000, 1, 1, '', '', '2020-11-18 02:15:43', '2020-11-18 02:20:36'),
(98, 'pr-20210307-021405', 1, 1, 0, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, '', '', '2021-03-07 10:14:05', '2021-03-07 10:14:05'),
(99, 'pr-20210307-021955', 1, 1, 0, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, '', '', '2021-03-07 10:19:55', '2021-03-09 11:43:48'),
(100, 'pr-20210307-022116', 1, 2, 0, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, '', '', '2021-03-07 10:21:16', '2021-03-09 11:45:19'),
(102, 'pr-20210309-023435', 1, 1, 0, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, '', '', '2021-03-09 10:34:35', '2021-03-11 05:47:53'),
(105, 'pr-20210326-113914', 1, 1, 0, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 0, 1, 1, '', '', '2021-03-26 07:39:14', '2021-04-09 17:53:48'),
(106, 'pr-20210524-071854', 1, 1, 0, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, '', '', '2021-05-24 15:18:54', '2021-05-24 15:18:54'),
(113, 'pr-20210530-014119', 1, 1, 0, 2, 2, 0, 0, 201, 0, 0, 0, 0, 201, 0, 1, 1, '', '', '2021-05-30 09:41:19', '2021-05-30 09:41:19'),
(114, 'pr-20210601-032127', 1, 1, 0, 1, 3, 0, 0, 4.5, 0, 0, 0, 0, 4.5, 0, 1, 1, '', '', '2021-06-01 11:21:27', '2021-06-01 11:21:27'),
(115, 'pr-20210618-082836', 1, 1, 0, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 101, 1, 2, '', '', '2021-06-18 16:28:36', '2021-06-18 16:28:57'),
(116, 'pr-20210619-104822', 1, 1, 0, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 101, 1, 2, '', '', '2021-06-19 06:48:22', '2021-06-19 06:49:03'),
(117, 'pr-20210706-011042', 1, 1, 0, 1, 5, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, '', '', '2021-07-06 09:10:42', '2021-07-06 09:10:42'),
(118, 'pr-20210706-011107', 1, 2, 0, 1, 5, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, '', '', '2021-07-06 09:11:07', '2021-07-06 09:11:07'),
(119, 'pr-20210921-032813', 1, 1, 0, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 3, 1, '', '', '2021-09-21 11:28:13', '2021-09-21 11:28:13'),
(121, 'pr-20210921-034739', 1, 1, 0, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 0, 1, 1, '', '', '2021-09-21 11:47:39', '2021-09-21 11:49:38'),
(123, 'pr-20211003-010453', 1, 1, 0, 2, 2, 0, 80, 980, 0, 0, 0, 0, 980, 0, 1, 1, '', '', '2021-10-03 09:04:53', '2021-10-03 09:04:53'),
(124, 'pr-20211003-010621', 1, 1, 0, 2, 2, 0, 80, 882, 0, 0, 0, 0, 882, 0, 1, 1, '', '', '2021-10-03 09:06:21', '2021-10-03 09:06:21'),
(128, 'pr-20211020-014234', 1, 1, 0, 1, 10, 0, 800, 8800, 0, 0, 0, 0, 8800, 0, 2, 1, '', '', '2021-10-20 09:42:34', '2021-10-20 09:43:40'),
(129, 'pr-20211020-014709', 1, 1, 0, 1, 1, 0, 80, 880, 0, 0, 0, 0, 880, 0, 1, 1, '', '', '2021-10-20 09:47:09', '2021-10-20 09:47:09'),
(131, 'pr-20211129-012605', 1, 1, 0, 2, 5, 0, 64, 1304, 0, 0, 0, 0, 1304, 0, 1, 1, '', '', '2021-11-29 09:26:05', '2021-11-29 09:29:18'),
(132, 'pr-20211207-065825', 1, 1, 1, 3, 3, 0, 80, 982, 0, 0, 0, 0, 982, 0, 1, 1, '', '', '2021-12-07 14:58:25', '2021-12-07 15:01:11'),
(133, 'pr-20220425-041527', 9, 1, 3, 1, 100, 0, 0, 200, 0, 0, NULL, NULL, 200, 200, 1, 2, NULL, NULL, '2022-04-25 12:15:27', '2022-04-25 12:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

DROP TABLE IF EXISTS `purchase_product_return`;
CREATE TABLE IF NOT EXISTS `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_product_return`
--

INSERT INTO `purchase_product_return` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0, 0, '', 1, 1, 200, 0, 0, 0, 200, '0000-00-00 00:00:00', '2019-12-07 13:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, '', 'first quotation...', '2018-08-09 01:52:50', '2018-09-04 05:32:16'),
(2, 'qr-20180904-040257', 1, 1, 0, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, '', '', '2018-09-04 00:02:57', '2018-09-21 09:05:57'),
(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, '', '', '2018-10-23 02:12:49', '2019-12-21 08:41:36'),
(11, 'qr-20201024-090814', 1, 1, 0, 1, 1, 1, 2, 0, 3000, 23000, 0, 0, 0, 0, 23000, 1, '', '', '2020-10-24 05:08:14', '2020-10-24 05:28:35'),
(12, 'qr-20201210-053401', 1, 1, 1, 19, 2, 2, 15, 0, 600, 9100, 0, 0, 100, 500, 9500, 1, '', '', '2020-12-10 01:34:01', '2020-12-10 01:34:01'),
(13, 'qr-20210112-125803', 1, 1, 0, 11, 1, 3, 12, 0, 155.65, 1660, 0, 0, 0, 0, 1660, 1, '', '', '2021-01-12 08:58:03', '2021-01-12 08:59:14'),
(15, 'qr-20210529-105356', 1, 1, 0, 11, 2, 2, 2, 0, 40, 442, 0, 0, 0, 0, 442, 1, '', '', '2021-05-29 06:53:56', '2021-05-30 10:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(2, 'rr-20180809-055834', 1, 0, 1, 1, 1, 1, 1, 20, 0, 0, 40, 10, 4, 44, '', '', '', '2018-08-09 01:58:34', '2018-08-09 01:58:34'),
(3, 'rr-20180828-045527', 1, 0, 1, 2, 1, 1, 1, 2, 0, 0, 44, 0, 0, 44, '', '', '', '2018-08-28 00:55:27', '2018-09-20 13:03:47'),
(5, 'rr-20181007-082129', 1, 0, 11, 2, 2, 1, 1, 1, 0, 0, 250, 0, 0, 250, '', '', '', '2018-10-07 04:21:29', '2018-12-26 00:16:08'),
(6, 'rr-20190101-090630', 9, 0, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, '', '', '', '2019-01-01 05:06:30', '2019-01-01 05:06:30'),
(13, 'rr-20200816-102502', 1, 0, 1, 2, 2, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, '', '', '', '2020-08-16 18:25:02', '2020-08-16 18:25:02'),
(14, 'rr-20201013-053954', 9, 1, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, '', '', '', '2020-10-13 13:39:54', '2020-10-13 13:39:54'),
(18, 'rr-20201118-070218', 1, 4, 1, 2, 1, 1, 1, 1, 0, 1500, 11500, 0, 0, 11500, '', '', '', '2020-11-18 03:02:18', '2020-11-18 03:02:18'),
(19, 'rr-20201210-064025', 1, 3, 19, 1, 1, 1, 1, 1, 0, 0, 250, 0, 0, 250, '', '', '', '2020-12-10 02:40:25', '2020-12-10 02:40:25'),
(25, 'rr-20210524-073950', 1, 3, 1, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 2, '', '', '', '2021-05-24 15:39:50', '2021-05-24 15:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

DROP TABLE IF EXISTS `return_purchases`;
CREATE TABLE IF NOT EXISTS `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'prr-20190101-090759', 3, 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, 200, '', '', '', '2019-01-01 05:07:59', '2019-12-07 13:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

DROP TABLE IF EXISTS `reward_point_settings`;
CREATE TABLE IF NOT EXISTS `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-08 17:40:15', '2021-06-27 07:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin can access all data...', 'web', 1, '2018-06-02 01:46:44', '2022-04-25 11:33:50'),
(2, 'Admin', 'Owner of shop...', 'web', 1, '2018-10-22 04:38:13', '2022-04-25 11:33:57'),
(4, 'Shop', 'shop has specific acess...', 'web', 1, '2018-06-02 02:05:27', '2022-04-22 08:12:07'),
(5, 'Customer', '', 'web', 1, '2020-11-05 08:43:16', '2020-11-15 02:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(4, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(12, 4),
(13, 4),
(20, 4),
(21, 4),
(22, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4),
(37, 4),
(38, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(55, 4),
(56, 4),
(57, 4),
(63, 4),
(64, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sr-20180808-043622', 1, 0, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, 50, 0, 0, 50, 1, 2, '', 0, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 12:36:22', '2018-10-06 11:25:29', NULL),
(2, 'sr-20180809-055453', 1, 0, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, 100, 0, 0, 500, 1, 2, '', 2200, '', '', '2018-08-09 01:54:53', '2018-08-09 01:56:35', NULL),
(3, 'posr-20180809-063214', 1, 0, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, 0, 0, 0, 0, 1, 4, '', 897, '', '', '2018-08-09 02:32:14', '2018-08-09 02:32:14', NULL),
(4, 'sr-20180825-034836', 1, 0, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, 0, 0, 0, 0, 1, 2, '', 300, '', '', '2018-08-24 23:48:36', '2018-09-22 04:56:03', NULL),
(6, 'sr-20180826-094836', 1, 0, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, 0, 0, 0, 1.1, 1, 4, '', 20, '', '', '2018-08-26 05:48:36', '2018-08-26 07:48:05', NULL),
(7, 'sr-20180827-073545', 1, 0, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, 0, 0, 0, 0, 1, 4, '', 880, '', '', '2018-08-27 03:35:45', '2018-08-27 03:35:45', NULL),
(8, 'posr-20180902-053954', 1, 0, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, 50, 0, 0, 100, 1, 4, '', 3529.8, 'good customer', 'good customer', '2018-09-02 01:39:54', '2018-09-02 01:39:54', NULL),
(9, 'posr-20180903-033314', 1, 0, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 1, 4, '', 20, '', '', '2018-09-02 23:33:14', '2018-09-02 23:33:14', NULL),
(10, 'posr-20180903-050138', 1, 0, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 2, '', 200, '', '', '2018-09-03 01:01:38', '2018-09-09 23:40:28', NULL),
(11, 'posr-20180903-100821', 1, 0, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, 0, 0, 0, 0, 1, 4, '', 5500, '', '', '2018-09-03 06:08:21', '2018-09-03 06:08:21', NULL),
(12, 'sr-20180903-101026', 1, 0, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-09-03 06:10:26', '2018-09-22 04:55:14', NULL),
(29, 'sr-20180909-093841', 1, 0, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-09-09 05:38:41', '2018-10-06 04:36:52', NULL),
(30, 'posr-20180910-045706', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 120, '', '', '2018-09-10 00:57:06', '2018-10-06 02:53:20', NULL),
(31, 'posr-20180926-092059', 1, 0, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, 0, 0, 0, 0, 1, 4, '', 560, '', '', '2018-09-26 05:20:59', '2018-09-26 05:21:25', NULL),
(32, 'posr-20181004-095547', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-10-04 05:55:47', '2018-10-04 05:55:47', NULL),
(33, 'posr-20181004-100022', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-10-04 06:00:22', '2018-10-04 06:00:22', NULL),
(37, 'sr-20181007-064605', 1, 0, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-10-07 02:46:05', '2018-10-07 02:46:28', NULL),
(38, 'posr-20181007-064719', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-10-07 02:47:19', '2018-10-07 05:17:02', NULL),
(40, 'posr-20181007-071312', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-10-07 03:13:12', '2018-10-07 05:17:39', NULL),
(41, 'posr-20181010-041621', 1, 0, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, 0, 0, 0, 0, 1, 4, '', 461, '', '', '2018-10-10 00:16:21', '2018-10-10 00:16:21', NULL),
(42, 'posr-20181010-053450', 1, 0, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2018-10-10 01:34:50', '2018-10-10 01:34:50', NULL),
(43, 'sr-20181016-033434', 1, 0, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, 'sss\nsss\ns', '', '2018-10-15 23:34:34', '2018-10-23 02:21:27', NULL),
(55, 'posr-20181021-065334', 1, 0, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2018-10-21 02:53:34', '2018-10-21 02:53:34', NULL),
(57, 'posr-20181021-082612', 1, 0, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, 50, 0, 0, 100, 1, 4, '', 575.2, '', '', '2018-10-21 04:26:12', '2018-10-21 04:26:12', NULL),
(58, 'posr-20181022-032723', 1, 0, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, 0, 0, 0, 1, 4, '', 1220, '', '', '2018-10-22 11:27:23', '2018-10-22 11:27:23', NULL),
(73, 'posr-20181023-071543', 11, 0, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, 0, 0, 0, 0, 1, 4, '', 5500, '', '', '2018-10-23 03:15:43', '2018-10-23 03:15:43', NULL),
(74, 'posr-20181023-071644', 1, 0, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, 0, 0, 0, 0, 1, 4, '', 2320, '', '', '2018-10-23 03:16:44', '2018-10-23 03:16:44', NULL),
(75, 'posr-20181101-050027', 1, 0, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, 0, 0, 0, 0, 1, 4, '', 7678, '', '', '2018-11-01 01:00:27', '2018-11-01 01:00:27', NULL),
(76, 'posr-20181101-050126', 1, 0, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, 10, 0, 0, 0, 1, 4, '', 1424, '', '', '2018-11-01 01:01:26', '2018-11-08 05:44:51', NULL),
(79, 'posr-20181105-091516', 1, 0, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, 0, 0, 0, 0, 1, 4, '', 14454, '', '', '2018-11-05 05:15:16', '2018-11-05 05:15:16', NULL),
(80, 'posr-20181105-091958', 1, 0, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, 0, 0, 0, 0, 1, 4, '', 2500, '', '', '2018-11-05 05:19:58', '2018-11-05 05:19:58', NULL),
(86, 'posr-20181105-095948', 1, 0, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2018-11-05 05:59:48', '2018-11-05 05:59:48', NULL),
(88, 'posr-20181105-100258', 1, 0, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2018-11-05 06:02:58', '2018-11-05 06:02:58', NULL),
(94, 'posr-20181126-020534', 1, 0, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2018-11-26 10:05:34', '2018-11-26 10:05:34', NULL),
(95, 'posr-20181127-093608', 1, 0, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2018-11-27 05:36:08', '2018-11-27 05:36:08', NULL),
(96, 'posr-20181128-071509', 1, 0, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, 0, 0, 0, 0, 1, 4, '', 132, '', '', '2018-11-28 03:15:09', '2018-11-28 03:15:09', NULL),
(97, 'posr-20181201-060518', 1, 0, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, 0, 0, 0, 0, 1, 2, '', 200, '', '', '2018-12-01 02:05:18', '2018-12-04 02:21:05', NULL),
(98, 'posr-20181205-053558', 1, 0, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, 0, 0, 0, 0, 1, 4, '', 800, '', '', '2018-12-05 01:35:58', '2018-12-05 01:35:58', NULL),
(99, 'posr-20181205-053719', 1, 0, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, 0, 0, 0, 0, 1, 4, '', 800, '', '', '2018-12-05 01:37:19', '2018-12-05 01:37:19', NULL),
(101, 'posr-20181208-062026', 1, 0, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 1, 4, '', 100, '', '', '2018-12-08 02:20:26', '2018-12-08 02:20:26', NULL),
(103, 'posr-20181224-045832', 1, 0, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2018-12-24 00:58:32', '2018-12-24 00:58:32', NULL),
(104, 'sr-20181224-091527', 1, 0, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, 0, 0, 0, 10, 1, 2, '', 0, '', '', '2018-12-24 05:15:27', '2018-12-24 23:55:23', NULL),
(105, 'posr-20190101-054538', 1, 0, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, 0, 0, 0, 0, 1, 4, '', 21, '', '', '2019-01-01 01:45:38', '2019-01-01 01:45:38', NULL),
(106, 'posr-20190101-091040', 1, 0, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, 0, 0, 0, 0, 1, 4, '', 860, '', '', '2019-01-01 05:10:40', '2019-01-01 05:10:40', NULL),
(107, 'posr-20190103-065626', 1, 0, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, 0, 0, 0, 0, 1, 4, '', 5040, '', '', '2019-01-03 02:56:26', '2019-01-03 02:56:26', NULL),
(108, 'posr-20190120-035824', 1, 0, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2019-01-20 11:58:24', '2019-01-20 11:58:24', NULL),
(109, 'posr-20190129-101443', 9, 0, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, 0, 0, 0, 0, 1, 4, '', 540, '', '', '2019-01-29 06:14:43', '2019-01-29 06:14:43', NULL),
(110, 'posr-20190129-115041', 9, 0, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, 0, 0, 0, 0, 1, 4, '', 1700, '', '', '2019-01-29 07:50:41', '2019-01-29 07:50:41', NULL),
(111, 'posr-20190131-110839', 9, 0, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, 0, 0, 0, 0, 1, 4, '', 271, '', '', '2019-01-31 07:08:39', '2019-01-31 07:08:39', NULL),
(112, 'posr-20190202-104045', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2019-02-02 06:40:45', '2019-02-02 06:40:45', NULL),
(113, 'posr-20190202-114117', 1, 0, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, 0, 0, 0, 0, 1, 4, '', 350, '', '', '2019-02-02 07:41:17', '2019-02-02 07:41:17', NULL),
(114, 'posr-20190205-030445', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2019-02-05 11:04:45', '2019-02-05 11:04:45', NULL),
(118, 'posr-20190207-111542', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 3, 2, '', 0, '', '', '2019-02-07 07:15:42', '2019-02-07 07:15:42', NULL),
(120, 'sr-20190207-114036', 1, 0, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 50, '', '', '2019-02-07 07:40:36', '2019-02-07 09:09:15', NULL),
(121, 'posr-20190209-104814', 1, 0, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, 0, 0, 0, 0, 1, 4, '', 1272, '', '', '2019-02-09 06:48:14', '2019-02-09 06:48:14', NULL),
(123, 'posr-20190219-023214', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2019-02-19 10:32:14', '2019-02-19 10:32:14', NULL),
(127, 'posr-20190303-104010', 1, 0, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, 0, 0, 0, 0, 1, 4, '', 2500, '', '', '2019-03-03 06:40:10', '2019-03-03 06:40:10', NULL),
(128, 'posr-20190404-095555', 1, 0, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, 0, 0, 0, 0, 1, 4, '', 560, '', '', '2019-04-04 05:55:55', '2019-04-04 05:55:55', NULL),
(129, 'posr-20190404-095937', 1, 0, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, 0, 0, 0, 0, 1, 2, '', 120, '', '', '2019-04-04 05:59:37', '2019-04-11 06:50:16', NULL),
(130, 'posr-20190421-122124', 1, 0, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, 0, 0, 0, 0, 1, 4, '', 586, '', '', '2019-04-21 08:21:24', '2019-04-21 08:21:24', NULL),
(131, 'posr-20190528-103229', 1, 0, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, 0, 0, 0, 0, 1, 4, '', 2890, '', '', '2019-05-28 06:32:29', '2019-05-28 06:32:29', NULL),
(132, 'posr-20190613-101637', 1, 0, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, 0, 0, 0, 0, 1, 4, '', 840, '', '', '2019-06-13 06:16:37', '2019-06-13 06:16:37', NULL),
(133, 'posr-20190613-101751', 1, 0, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, 0, 0, 0, 0, 1, 4, '', 2700, '', '', '2019-06-13 06:17:51', '2019-06-13 06:17:51', NULL),
(134, 'posr-20191019-033028', 1, 0, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, 0, 0, 0, 0, 1, 4, '', 2940, '', '', '2019-10-19 11:30:28', '2019-10-19 11:30:28', NULL),
(138, 'sr-20191031-122937', 1, 0, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2019-10-31 08:29:37', '2019-10-31 08:29:37', NULL),
(139, 'posr-20191103-114044', 1, 0, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, 0, 0, 0, 0, 1, 4, '', 488, '', '', '2019-11-03 07:40:44', '2019-11-03 07:40:44', NULL),
(144, 'posr-20191109-074131', 1, 0, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, 0, 0, 0, 1, 4, '', 1220, '', '', '2019-11-09 15:41:31', '2019-11-09 15:41:31', NULL),
(147, 'posr-20191111-104008', 1, 0, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, 0, 0, 0, 0, 1, 4, '', 2220, '', '', '2019-11-11 06:40:08', '2019-11-11 06:40:08', NULL),
(172, 'posr-20191203-034631', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2019-12-03 11:46:31', '2019-12-03 11:46:31', NULL),
(173, 'sr-20191204-111940', 1, 0, 2, 1, 1, 2, 2, 0, 36, 621, 621, 0, 0, 0, 0, 0, 0, 1, 4, '', 621, '', '', '2019-12-04 19:19:40', '2019-12-05 05:27:12', NULL),
(187, 'posr-20191222-104058', 1, 0, 11, 2, 1, 1, 2, 0, 37.57, 288, 288, 0, 0, 0, 0, 0, 0, 1, 4, '', 288, '', '', '2019-12-22 06:40:58', '2019-12-22 06:40:58', NULL),
(190, 'posr-20191223-125946', 1, 0, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2019-12-23 08:59:46', '2019-12-23 08:59:46', NULL),
(193, 'posr-20200101-022028', 1, 0, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2020-01-01 10:20:28', '2020-01-01 10:20:28', NULL),
(194, 'posr-20200102-043947', 1, 0, 11, 2, 1, 2, 3, 0, 81.57, 892, 892, 0, 0, 0, 0, 0, 0, 1, 4, '', 892, '', '', '2020-01-02 12:39:47', '2020-01-02 12:39:47', NULL),
(201, 'posr-20200203-035256', 1, 0, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2020-02-03 11:52:56', '2020-02-03 11:52:56', NULL),
(202, 'posr-20200204-105853', 1, 0, 11, 2, 1, 2, 2, 0, 100, 1400, 1400, 0, 0, 0, 0, 0, 0, 1, 4, '', 1400, '', '', '2020-02-04 18:58:53', '2020-02-04 18:58:53', NULL),
(203, 'posr-20200302-115414', 1, 0, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, 0, 0, 0, 0, 1, 4, '', 350, '', '', '2020-03-02 07:54:14', '2020-03-02 07:54:14', NULL),
(204, 'posr-20200302-115741', 1, 0, 11, 2, 1, 1, 20, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 1, 4, '', 40, '', '', '2020-03-02 07:57:41', '2020-03-02 07:57:41', NULL),
(205, 'posr-20200311-044641', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 352, 0, 0, 0, 1, 88, 0, 1, 4, '', 352, '', '', '2020-03-11 12:46:42', '2020-03-11 12:46:42', NULL),
(206, 'sr-20200311-045230', 1, 0, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2020-03-11 12:52:30', '2020-03-11 12:54:04', NULL),
(207, 'posr-20200406-074024', 1, 0, 11, 2, 1, 3, 4, 0, 18.78, 644, 644, 0, 0, 0, 0, 0, 0, 1, 4, '', 644, '', '', '2020-04-06 15:40:24', '2020-04-06 15:42:01', NULL),
(208, 'posr-20200506-105950', 1, 0, 11, 2, 1, 2, 2, 0, 140, 1540, 1540, 0, 0, 0, 0, 0, 0, 1, 4, '', 1540, '', '', '2020-05-06 18:59:50', '2020-05-06 18:59:50', NULL),
(209, 'posr-20200609-124248', 1, 0, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, 0, 0, 0, 1, 4, '', 1220, '', '', '2020-06-09 08:42:48', '2020-06-09 08:42:48', NULL),
(212, 'posr-20200703-063914', 1, 0, 11, 2, 1, 3, 3, 0, 235, 2585, 2585, 0, 0, 0, 0, 0, 0, 1, 4, '', 2585, '', '', '2020-07-03 14:39:14', '2020-07-03 14:39:14', NULL),
(213, 'posr-20200712-095153', 1, 0, 11, 2, 1, 1, 1, 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 1, 4, '', 13, '', '', '2020-07-12 17:51:53', '2020-07-12 17:51:53', NULL),
(214, 'posr-20200714-115341', 1, 0, 11, 2, 1, 1, 1, 0, 0, 250, 309.5, 10, 24.5, 5, 0, 0, 40, 3, 2, '', 0, '', '', '2020-07-14 07:53:41', '2020-07-14 07:53:41', NULL),
(217, 'posr-20200727-083808', 1, 0, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, 0, 0, 0, 0, 1, 4, '', 385, '', '', '2020-07-27 16:38:08', '2020-07-27 16:38:08', NULL),
(218, 'posr-20200727-084024', 1, 0, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, 0, 0, 0, 0, 1, 4, '', 385, '', '', '2020-07-27 16:40:24', '2020-07-27 16:40:24', NULL),
(219, 'posr-20200727-084644', 1, 0, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, 0, 0, 0, 0, 1, 4, '', 385, '', '', '2020-07-27 16:46:45', '2020-07-27 16:46:45', NULL),
(220, 'posr-20200812-062804', 1, 0, 11, 2, 1, 3, 6, 0, 0, 760, 760, 0, 0, 0, 0, 0, 0, 1, 4, '', 760, '', '', '2020-08-12 14:28:04', '2020-08-12 14:28:04', NULL),
(221, 'posr-20200812-063035', 1, 0, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2020-08-12 14:30:35', '2020-08-12 14:30:35', NULL),
(222, 'posr-20200816-100424', 1, 0, 11, 2, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, 0, 0, 0, 0, 1, 4, '', 23000, '', '', '2020-08-16 18:04:24', '2020-08-16 18:04:24', NULL),
(223, 'posr-20200816-100523', 1, 0, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2020-08-16 18:05:23', '2020-08-16 18:07:35', NULL),
(224, 'sr-20200826-080139', 1, 0, 1, 1, 1, 1, 3, 30, 117, 1287, 1287, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2020-08-26 16:01:39', '2020-08-26 16:01:39', NULL),
(230, 'posr-20201017-092852', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 2, '', 350, '', '', '2020-10-17 17:28:52', '2020-10-18 06:51:38', NULL),
(231, 'sr-20201018-111333', 9, 2, 1, 1, 5, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 250, '', '', '2020-10-18 07:13:33', '2020-10-18 07:17:24', NULL),
(232, 'posr-20201022-013014', 9, 2, 11, 1, 5, 1, 1, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 1, 4, '', 100, '', '', '2020-10-22 09:30:14', '2020-10-22 09:30:14', NULL),
(233, 'posr-20201022-015604', 1, 3, 11, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-10-22 09:56:04', '2020-10-22 09:56:04', NULL),
(234, 'posr-20201024-070506', 1, 4, 11, 2, 1, 1, 1, 0, 1500, 11500, 11500, 0, 0, 0, 0, 0, 0, 1, 4, '', 11500, '', '', '2020-10-24 03:05:06', '2020-10-24 03:05:06', NULL),
(235, 'posr-20201024-070751', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-10-24 03:07:51', '2020-10-24 03:07:51', NULL),
(237, 'posr-20201024-034601', 1, 4, 11, 2, 1, 3, 9, 0, 7900, 61900, 61900, 0, 0, 0, 0, 0, 0, 1, 4, '', 61900, '', '', '2020-10-24 11:46:01', '2020-10-24 11:46:01', NULL),
(239, 'posr-20201027-054002', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2020-10-27 01:40:02', '2020-10-27 01:40:02', NULL),
(240, 'posr-20201027-054206', 1, 3, 11, 1, 1, 1, 2, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 4, '', 6, '', '', '2020-10-27 01:42:06', '2020-10-27 01:42:06', NULL),
(241, 'posr-20201027-063200', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-10-27 02:32:00', '2020-10-27 02:32:00', NULL),
(242, 'posr-20201029-073030', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-10-29 03:30:30', '2020-10-29 03:30:30', NULL),
(243, 'posr-20201101-072112', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-11-01 03:21:12', '2020-11-01 03:21:12', NULL),
(245, 'posr-20201101-074223', 1, 3, 11, 1, 5, 2, 3, 0, 80, 1130, 1130, 0, 0, 0, 0, 0, 0, 1, 4, '', 1130, '', '', '2020-11-01 03:42:23', '2020-11-01 03:42:23', NULL),
(246, 'posr-20201101-075017', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, 'ssss\nssas', 'hhhh\nkkkk', '2020-11-01 03:50:17', '2020-11-02 12:39:17', NULL),
(250, 'posr-20201106-013041', 1, 4, 11, 2, 1, 1, 1, 0, 34.4, 378.4, 378.4, 0, 0, 0, 0, 0, 0, 1, 4, '', 378.4, '', '', '2020-11-06 09:30:41', '2020-11-06 09:30:41', NULL),
(251, 'posr-20201109-011524', 1, 4, 19, 2, 1, 2, 2, 0, 34.4, 610.6, 610.6, 0, 0, 0, 0, 0, 0, 1, 2, '', 500, '', '', '2020-11-09 09:15:24', '2020-11-09 09:15:24', NULL),
(252, 'posr-20201111-055858', 1, 3, 11, 1, 1, 1, 1, 0, 0, 229.5, 229.5, 0, 0, 0, 0, 0, 0, 1, 4, '', 229.5, '', '', '2020-11-11 01:58:58', '2020-11-11 01:58:58', NULL),
(253, 'posr-20201114-064736', 1, 4, 11, 2, 1, 3, 3, 0, 1275, 10242.5, 10242.5, 0, 0, 0, 0, 0, 0, 1, 4, '', 10242.5, '', '', '2020-11-14 02:47:36', '2020-11-14 02:47:36', NULL),
(256, 'posr-20201117-064748', 1, 4, 11, 2, 1, 2, 2, 0, 65, 715, 715, 0, 0, 0, 0, 0, 0, 1, 4, '', 715, '', '', '2020-11-17 02:47:48', '2020-11-17 02:47:48', NULL),
(257, 'posr-20201117-070919', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2020-11-17 03:09:19', '2020-11-17 03:09:19', NULL),
(258, 'posr-20201118-065239', 1, 4, 11, 2, 1, 1, 3, 0, 4500, 34500, 27200, 0, 0, 600, 1, 6800, 100, 1, 4, '', 27200, '', '', '2020-11-18 02:52:39', '2020-11-18 02:52:39', NULL),
(262, '1111', 1, 3, 1, 1, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2020-11-29 01:21:30', '2020-11-29 01:21:30', NULL),
(263, 'posr-20201208-093957', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 2, '', 350, '', '', '2020-12-08 05:39:57', '2021-01-06 10:23:50', NULL),
(270, 'sr-20210111-014535', 1, 3, 1, 1, 1, 2, 2, 0, 137.57, 1388, 1388, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2021-01-11 09:45:35', '2021-01-11 09:58:44', NULL),
(271, 'posr-20210111-021625', 1, 3, 19, 1, 2, 3, 4, 0, 98.78, 1274, 1274, 0, 0, 0, 0, 0, 0, 1, 4, '', 1274, '', '', '2021-01-11 10:16:25', '2021-01-11 10:16:25', NULL),
(274, 'posr-20210113-070243', 1, 4, 11, 2, 1, 4, 15, 40, 91.65, 1556, 1556, 0, 0, 0, 0, 0, 0, 1, 4, '', 1556, '', '', '2021-01-13 03:02:43', '2021-01-13 03:02:43', NULL),
(275, 'posr-20210201-023748', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 484, 10, 44, 0, 0, 0, 0, 1, 4, '', 484, '', '', '2021-02-01 10:37:48', '2021-02-01 10:37:48', NULL),
(277, 'posr-20210216-070948', 1, 4, 11, 2, 1, 15, 15, 0, 1758.78, 15156, 15156, 0, 0, 0, 0, 0, 0, 1, 4, '', 15156, '', '', '2021-02-16 03:09:48', '2021-02-16 03:09:48', NULL),
(278, 'posr-20210217-073238', 1, 4, 11, 2, 1, 5, 6, 0, 3140, 24910, 26949.9, 10, 2440.9, 501, 0, 0, 100, 1, 4, '', 26949.9, '', '', '2021-02-17 03:32:38', '2021-02-17 03:32:38', NULL),
(279, 'sr-20210311-014034', 1, 3, 1, 1, 1, 1, 2, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-03-11 09:40:34', '2021-03-11 09:40:34', NULL),
(280, 'sr-20210317-041411', 1, 3, 1, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-03-17 00:14:11', '2021-03-17 00:14:11', NULL),
(282, 'sr-20210318-054729', 1, 3, 1, 2, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2021-03-18 01:47:29', '2021-03-20 06:59:57', NULL),
(288, 'sr-20210412-014046', 1, 3, 11, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-04-12 09:40:46', '2021-04-12 09:40:46', NULL),
(289, 'posr-20210524-071424', 1, 4, 11, 2, 1, 2, 2, 0, 40, 690, 640, 0, 0, 50, 0, 0, 0, 1, 4, '', 640, '', '', '2021-05-24 15:14:24', '2021-05-24 15:14:24', NULL),
(290, 'sr-20210524-071512', 1, 3, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2021-05-24 15:15:12', '2021-05-24 15:46:47', NULL),
(294, 'posr-20210601-123530', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-01 08:35:30', '2021-06-01 08:35:30', NULL),
(295, 'posr-20210601-032209', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2021-06-01 11:22:09', '2021-06-01 11:22:09', NULL),
(296, 'posr-20210601-034624', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2021-06-01 11:46:24', '2021-06-01 11:46:24', NULL),
(297, 'posr-20210601-074150', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2021-06-01 15:41:50', '2021-06-01 15:41:50', NULL),
(298, 'posr-20210601-075547', 9, 2, 11, 1, 5, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2021-06-01 15:55:47', '2021-06-01 15:55:47', NULL),
(299, 'posr-20210616-105325', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-06-16 06:53:25', '2021-06-16 06:53:25', NULL),
(300, 'posr-20210616-111033', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-16 07:10:33', '2021-06-16 07:10:33', NULL),
(301, 'posr-20210616-111111', 1, 4, 19, 2, 1, 2, 2, 0, 200, 2200, 2200, 0, 0, 0, 0, 0, 0, 1, 4, '', 2200, '', '', '2021-06-16 07:11:11', '2021-06-16 07:11:11', NULL),
(302, 'posr-20210616-080452', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-16 16:04:52', '2021-06-16 16:04:52', NULL),
(303, 'posr-20210616-080543', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-16 16:05:43', '2021-06-16 16:05:43', NULL),
(304, 'posr-20210616-080634', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-16 16:06:34', '2021-06-17 08:13:59', NULL),
(305, 'posr-20210616-082842', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-16 16:28:42', '2021-06-16 16:28:42', NULL),
(306, 'sr-20210617-115553', 1, 3, 19, 1, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-06-17 07:55:53', '2021-06-17 07:55:53', NULL),
(307, 'sr-20210617-122349', 1, 3, 19, 1, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, 0, 0, 0, 0, 1, 2, '', 100, '', '', '2021-06-17 08:23:49', '2021-06-17 11:00:13', NULL),
(308, 'posr-20210618-083127', 1, 4, 11, 2, 1, 2, 5, 0, 157.57, 1608, 1608, 0, 0, 0, 0, 0, 0, 1, 4, '', 1608, '', '', '2021-06-18 16:31:27', '2021-06-18 16:31:27', NULL),
(309, 'posr-20210618-083254', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2021-06-18 16:32:54', '2021-06-18 16:32:54', NULL),
(310, 'posr-20210619-105121', 1, 4, 11, 2, 1, 6, 6, 0, 58.78, 958, 958, 0, 0, 0, 0, 0, 0, 1, 4, '', 958, '', '', '2021-06-19 06:51:21', '2021-06-19 06:51:21', NULL),
(311, 'sr-20210619-105344', 1, 5, 11, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-06-19 06:53:44', '2021-06-19 06:53:44', NULL),
(312, 'posr-20210619-110231', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, 0, 0, 0, 1, 4, '', 440, '', '', '2021-06-19 07:02:31', '2021-06-19 07:02:31', NULL),
(313, 'posr-20210619-110628', 1, 4, 19, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 1, 4, '', 250, '', '', '2021-06-19 07:06:28', '2021-06-19 07:06:28', NULL),
(314, 'posr-20210627-124247', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-06-27 08:42:47', '2021-06-27 08:42:47', NULL),
(317, 'posr-20210707-103455', 1, 4, 11, 2, 1, 1, 1, 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 1, 4, '', 18, '', '', '2021-07-07 06:34:55', '2021-07-07 06:34:55', NULL),
(325, 'posr-20210814-092805', 1, 4, 11, 2, 1, 1, 2, 0, 0, 2400, 2400, 0, 0, 0, 0, 0, 0, 1, 2, '', 1250, '', '', '2021-08-14 17:28:05', '2021-08-14 17:34:27', NULL),
(333, 'posr-20210921-010722', 1, 4, 11, 2, 1, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 4, '', 2, '', '', '2021-09-21 09:07:22', '2021-09-21 09:07:22', NULL),
(334, 'posr-20210921-035020', 1, 4, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 1, 4, '', 120, '', '', '2021-09-21 11:50:20', '2021-09-21 11:50:20', NULL),
(335, 'posr-20210923-024704', 1, 4, 11, 2, 1, 1, 0.5, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 1, 4, '', 11, '', '', '2021-09-23 10:47:04', '2021-09-23 10:47:04', NULL),
(336, 'posr-20211003-051829', 1, 4, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, 0, 0, 0, 1, 4, '', 1220, '', '', '2021-10-03 13:18:29', '2021-10-03 13:18:29', NULL),
(338, 'posr-20211003-054404', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-10-03 13:44:04', '2021-10-03 13:44:04', NULL),
(340, 'posr-20211007-025229', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-10-07 10:52:29', '2021-10-07 10:52:29', NULL),
(341, 'posr-20211007-033840', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-10-07 11:38:40', '2021-10-07 11:38:40', NULL),
(342, 'sr-20211009-121242', 1, 4, 11, 2, 1, 2, 3, 0, 200, 2320, 2320, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, '', '', '2021-10-09 08:12:42', '2021-10-09 12:22:39', NULL),
(343, 'sr-20211009-043232', 1, 4, 11, 2, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-10-09 12:32:32', '2021-10-09 12:32:32', NULL),
(348, 'posr-20211014-035820', 1, 4, 19, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, 0, 0, 0, 0, 1, 4, '', 1100, '', '', '2021-10-14 11:58:20', '2021-10-14 11:58:20', NULL),
(349, 'posr-20211020-011209', 1, 4, 11, 2, 1, 1, 1, 0, 0, 102, 102, 0, 0, 0, 0, 0, 0, 1, 4, '', 102, '', '', '2021-10-20 09:12:09', '2021-10-20 09:12:09', NULL),
(353, 'posr-20211114-013929', 1, 4, 11, 2, 1, 1, 1, 0, 34, 374, 374, 0, 0, 0, 0, 0, 0, 1, 4, '', 374, '', '', '2021-11-14 09:39:29', '2021-11-14 09:39:29', NULL),
(354, 'sr-20211115-120309', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1542, 1542, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, '', '', '2021-11-15 08:03:09', '2022-05-09 15:28:17', NULL),
(355, 'posr-20211124-062857', 1, 4, 11, 2, 1, 5, 6, 0, 240, 3161, 3161, 0, 0, 0, 0, 0, 0, 1, 4, '', 3161, '', '', '2021-11-24 14:28:57', '2022-05-09 15:28:49', NULL),
(356, 'posr-20211207-070932', 1, 4, 11, 2, 1, 3, 3, 0, 40, 573, 573, 0, 0, 0, 0, 0, 0, 1, 4, '', 573, '', '', '2021-12-07 15:09:32', '2022-05-09 15:28:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

DROP TABLE IF EXISTS `stock_counts`;
CREATE TABLE IF NOT EXISTS `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20190228-124939', 2, '', '', 1, 'full', '20190228-124939.csv', '', '', 0, '2019-02-28 08:49:39', '2019-02-28 08:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abdullah', 'globaltouch.jpg', 'global touch', '', 'abdullah@globaltouch.com', '231231', 'fsdfs', 'fsdfs', '', '', 'bd', 1, '2018-05-13 00:06:34', '2019-12-21 12:58:47'),
(2, 'test', 'lion.jpg', 'lion', '', 'lion@gmail.com', '242', 'gfdg', 'fgd', '', '', '', 0, '2018-05-30 01:59:41', '2018-05-30 02:00:06'),
(3, 'ismail', '', 'techbd', '', 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', '', '', 'bangladesh', 1, '2018-07-20 06:34:17', '2018-07-20 06:34:17'),
(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 0, '2018-09-01 06:30:07', '2018-09-01 06:37:20'),
(5, 'sadman', '', 'anda boda', 'dsa', 'asd@dsa.com', '3212313', 'dadas', 'sdad', 'Other', '1312', 'Australia', 0, '2020-06-22 11:48:33', '2020-06-22 11:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 11:58:30', '2019-03-02 13:46:10'),
(2, 'vat@15', 15, 1, '2018-05-12 11:58:43', '2018-05-28 01:35:05'),
(3, 'test', 6, 0, '2018-05-28 01:32:54', '2018-05-28 01:34:44'),
(4, 'vat 20', 20, 1, '2018-09-01 02:58:57', '2018-09-01 02:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, '', '', '2018-08-08 13:17:10', '2018-12-25 00:16:55'),
(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, '', '', '2019-12-05 15:55:04', '2019-12-05 16:09:42'),
(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, 0, 1000, '', '', '2020-01-22 08:30:58', '2020-01-22 08:30:58'),
(10, 'tr-20201008-012735', 9, 1, 1, 2, 1, 1, 32, 352, 0, 352, '', '', '2020-10-08 09:27:35', '2020-10-08 09:29:35'),
(11, 'tr-20201018-061708', 9, 1, 1, 2, 1, 1, 0, 1, 0, 1, '', '', '2020-10-18 14:17:08', '2020-10-18 14:17:08'),
(12, 'tr-20201024-090146', 1, 1, 2, 1, 1, 10, 4500, 34500, 0, 34500, '', '', '2020-10-24 05:01:46', '2020-10-24 05:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', 0, '*', 1, 1, '2018-05-12 04:27:46', '2018-08-17 23:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 11:57:05', '2018-05-12 11:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 11:57:45', '2020-03-11 12:36:59'),
(4, 'm', 'meter', 0, '*', 1, 1, '2018-05-12 11:58:07', '2018-05-28 01:20:57'),
(6, 'test', 'test', 0, '*', 1, 0, '2018-05-28 01:20:20', '2018-05-28 01:20:25'),
(7, 'kg', 'kilogram', 0, '*', 1, 1, '2018-06-25 02:49:26', '2018-06-25 02:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-08-01 00:35:51', '2018-08-01 00:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 02:06:28', '2018-09-01 02:06:28'),
(10, 'gz', 'goz', 0, '*', 1, 0, '2018-11-29 05:40:29', '2019-03-02 13:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'l26pqsG5oryBCxYW7yDv5RMxW2W17qSxdkMalODJvWDd8ZynxNVfxdBzNR98', '12112', 'lioncoders', 1, 0, 0, 1, 0, '2018-06-02 05:24:15', '2018-09-05 02:14:15'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, 0, 0, 0, 1, '2018-06-14 00:00:31', '2020-11-05 09:06:51'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, 0, 0, 0, 1, '2018-06-23 05:05:33', '2018-06-23 05:13:45'),
(9, 'shop', 'shop@gmail.com', '$2y$10$LMFDnfCXwicdjlNDw8BV4uWLBYXCKOJko65B8RzZTWQG7AIzyN7cy', 'b1ho0B6zXQcCbZieqdsJgPD81vwFN6BZX5i4Znj0oexvvD6ecjgEsofgbsSF', '3123', NULL, 4, 5, 1, 1, 0, '2018-07-02 03:08:08', '2022-04-23 12:56:34'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, 0, 0, 0, 0, '2018-09-08 01:44:48', '2018-09-08 01:44:48'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 04:47:56', '2018-10-23 04:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', '', 4, 2, 2, 0, 1, '2018-12-30 02:48:37', '2019-03-06 06:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', '', '1213', '', 1, 0, 0, 0, 1, '2019-01-03 02:08:31', '2019-03-03 06:02:29'),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', '', '1212', 'Digital image', 5, 0, 0, 1, 0, '2020-11-09 02:07:16', '2020-11-09 02:07:16'),
(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', '', '2222', 'modon company', 5, 0, 0, 1, 0, '2020-11-13 09:12:08', '2020-11-13 09:12:08'),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', '', '+8801111111101', 'lioncoders', 5, 0, 0, 1, 0, '2020-11-15 08:14:58', '2020-11-15 08:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
CREATE TABLE IF NOT EXISTS `variants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 09:03:04', '2019-11-24 10:43:52'),
(3, 'Small', '2019-11-21 09:03:04', '2019-11-24 10:43:52'),
(5, 'Large', '2019-11-24 08:07:20', '2019-11-24 10:44:56'),
(9, 'a', '2020-05-18 18:44:14', '2020-05-18 18:44:14'),
(11, 'b', '2020-05-18 18:53:49', '2020-05-18 18:53:49'),
(12, 'variant 1', '2020-09-27 08:08:27', '2020-09-27 08:08:27'),
(13, 'variant 2', '2020-09-27 08:08:27', '2020-09-27 08:08:27'),
(15, 'S', '2020-11-16 08:09:33', '2020-11-16 08:09:33'),
(16, 'M', '2020-11-16 08:09:33', '2020-11-16 08:09:33'),
(17, 'L', '2020-11-16 08:09:33', '2020-11-16 08:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'warehouse 1', '2312121', 'war1@lion.com', 'khatungonj, chittagong', 1, '2018-05-12 09:51:44', '2019-03-02 17:40:17'),
(2, 'warehouse 2', '1234', '', 'boropul, chittagong', 1, '2018-05-12 10:09:03', '2022-04-25 11:30:19'),
(3, 'test', '', '', 'dqwdeqw', 0, '2018-05-30 02:14:23', '2018-05-30 02:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-09-01 00:53:26', '2018-09-01 00:54:48');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
