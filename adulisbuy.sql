-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 06:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adulisbuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `language_id`, `name`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, 1, 'Memory', 1, '2020-01-30 20:06:48', 1, '2020-01-30 20:07:17', NULL),
(8, 1, 'Size', 1, '2020-01-30 20:07:39', 1, '2020-01-30 20:07:39', NULL),
(9, 1, 'Color', 1, '2020-02-05 21:54:00', 1, '2020-02-05 21:54:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sub_category`
--

CREATE TABLE `attribute_sub_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_sub_category`
--

INSERT INTO `attribute_sub_category` (`id`, `language_id`, `attribute_id`, `sub_category_id`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(14, 1, 3, 14, 1, '2020-01-31 00:34:21', 1, NULL, NULL),
(19, 1, 7, 14, 1, '2020-01-31 01:06:48', 1, NULL, NULL),
(20, 1, 7, 15, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(21, 1, 7, 16, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(22, 1, 7, 18, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(23, 1, 7, 19, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(24, 1, 7, 20, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(25, 1, 7, 21, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(26, 1, 7, 22, 1, '2020-01-31 01:07:18', 1, NULL, NULL),
(27, 1, 8, 14, 1, '2020-01-31 01:07:39', 1, NULL, NULL),
(28, 1, 8, 24, 1, '2020-01-31 01:07:39', 1, NULL, NULL),
(29, 1, 8, 25, 1, '2020-01-31 01:07:39', 1, NULL, NULL),
(30, 1, 8, 26, 1, '2020-01-31 01:07:39', 1, NULL, NULL),
(31, 1, 8, 27, 1, '2020-02-06 02:42:17', 1, '2020-02-06 02:42:17', NULL),
(32, 1, 8, 29, 1, '2020-01-31 01:07:39', 1, NULL, NULL),
(33, 1, 9, 14, 1, '2020-02-06 02:54:00', 1, NULL, NULL),
(34, 1, 9, 26, 1, '2020-02-06 02:54:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `language_id`, `name`, `image`, `slug`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(12, 2, 'Laptops', 'assets/uploads/category/01.png', 'laptops', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(13, 1, 'Desktops', 'assets/uploads/category/02.png', 'desktops', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(14, 1, 'Mobile Phones', 'assets/uploads/category/03.png', 'mobile-phones', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(15, 1, 'Tablets', 'assets/uploads/category/04.png', 'tablets', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(16, 2, 'TVs', 'assets/uploads/category/05.png', 'tvs', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(17, 2, 'Digital Cameras', 'assets/uploads/category/06.png', 'digital-cameras', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(18, 2, 'Appliances', 'assets/uploads/category/07.png', 'appliances', 1, '2020-01-22 21:05:45', 1, '2020-01-22 21:05:45', 1),
(19, 1, 'Western Ware', 'assets/uploads/category/08.png', 'western-ware', 1, '2020-01-22 21:11:24', 1, '2020-01-22 21:11:24', 1),
(20, 1, 'TV Appliances', 'assets/uploads/category/09.png', 'tv-appliances', 1, '2020-01-22 21:11:24', 1, '2020-01-22 21:11:24', 1),
(21, 1, 'Pets Products', 'assets/uploads/category/10.png', 'pets-products', 1, '2020-01-22 21:11:24', 1, '2020-01-22 21:11:24', 1),
(22, 1, 'Car Motorbike', 'assets/uploads/category/11.png', 'car-motorbike', 1, '2020-01-22 21:11:24', 1, '2020-01-22 21:11:24', 1),
(23, 1, 'Industrial Products', 'assets/uploads/category/12.png', 'industrial-products', 1, '2020-01-22 21:11:24', 1, '2020-01-22 21:11:24', 1),
(24, 1, 'Beauty Health Products', 'assets/uploads/category/1012510679.png', 'beauty-health-products', 1, '2020-01-22 21:11:24', 1, '2020-01-27 11:31:07', 1),
(25, 1, 'Grocery Products', 'assets/uploads/category/1229375135.png', 'grocery-products', 1, '2020-01-22 21:11:24', 1, '2020-01-27 11:31:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(69, 56, 2, NULL, NULL),
(70, 56, 3, NULL, NULL),
(71, 55, 2, NULL, NULL),
(72, 54, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `currency`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'English', '$', 1, '2020-01-23 15:14:52', 1, '2020-01-23 15:14:52', NULL),
(2, 'Ethiopia', 'Birr', 1, '2020-01-23 15:18:45', 1, '2020-01-23 15:18:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_11_010727_create_roles_table', 1),
(5, '2020_01_11_011221_create_user_roles_table', 1),
(6, '2020_01_17_003311_alter_user_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multi_image` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_reg` int(11) NOT NULL,
  `price_dis` int(11) DEFAULT NULL,
  `price_dis_start` date DEFAULT NULL,
  `price_dis_end` date DEFAULT NULL,
  `price_status` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `language_id`, `category_id`, `sub_category_id`, `name`, `slug`, `sku`, `image`, `hover_image`, `multi_image`, `short_description`, `description`, `price_reg`, `price_dis`, `price_dis_start`, `price_dis_end`, `price_status`, `featured`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 0, NULL, 14, 'Cotton Shalwar Kameez1', 'cotton-shalwar-kameez-1', 'SK20463', 'assets/uploads/product/1.jpg', 'assets/uploads/product/a1.jpg', '[null]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4148, 3635, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(2, 0, NULL, 15, 'Cotton Shalwar Kameez2', 'cotton-shalwar-kameez-2', 'SK23838', 'assets/uploads/product/2.jpg', 'assets/uploads/product/a2.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4183, 2019, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(3, 0, NULL, 16, 'Cotton Shalwar Kameez3', 'cotton-shalwar-kameez-3', 'SK20851', 'assets/uploads/product/3.jpg', 'assets/uploads/product/a3.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4091, 2042, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(4, 2, 17, 17, 'Beg', 'beg', 'SK21857', 'assets/uploads/product/4.jpg', 'assets/uploads/product/a4.jpg', '[\"assets\\/uploads\\/product\\/1351435352.jpg\",\"assets\\/uploads\\/product\\/1505562484.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2450, 2648, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', 1, '2020-02-18 18:30:50', NULL),
(5, 0, NULL, 18, 'Cotton Shalwar Kameez5', 'cotton-shalwar-kameez-5', 'SK16781', 'assets/uploads/product/5.jpg', 'assets/uploads/product/a5.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2588, 3459, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(6, 0, NULL, 19, 'Cotton Shalwar Kameez6', 'cotton-shalwar-kameez-6', 'SK19511', 'assets/uploads/product/6.jpg', 'assets/uploads/product/a6.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2043, 2259, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(7, 0, NULL, 20, 'Cotton Shalwar Kameez7', 'cotton-shalwar-kameez-7', 'SK24112', 'assets/uploads/product/7.jpg', 'assets/uploads/product/a7.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4073, 4032, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(8, 0, NULL, 21, 'Cotton Shalwar Kameez8', 'cotton-shalwar-kameez-8', 'SK17358', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2912, 4407, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(9, 0, NULL, 22, 'Cotton Shalwar Kameez9', 'cotton-shalwar-kameez-9', 'SK23548', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2905, 3447, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(10, 0, NULL, 23, 'Linen Kurta1', 'linen-kurta1', 'SK16058', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2376, 638, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(11, 0, NULL, 24, 'Linen Kurta2', 'linen-kurta2', 'SK21402', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1872, 1649, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(12, 0, NULL, 25, 'Linen Kurta3', 'linen-kurta3', 'SK18478', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2954, 1946, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(13, 0, NULL, 14, 'Linen Kurta4', 'linen-kurta4', 'SK18362', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2225, 1835, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(14, 0, NULL, 15, 'Linen Kurta5', 'linen-kurta5', 'SK17978', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2782, 1480, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(15, 0, NULL, 16, 'Linen Kurta6', 'linen-kurta6', 'SK22078', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2761, 1120, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(16, 2, 17, 17, 'Smart Speakers', 'smart-speakers', 'SK18397', 'assets/uploads/product/1662971482.jpg', 'assets/uploads/product/253823514.jpg', '[\"assets\\/uploads\\/product\\/919483497.jpg\",\"assets\\/uploads\\/product\\/189286299.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2674, 717, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', 1, '2020-02-18 18:30:50', NULL),
(17, 0, NULL, 18, 'Linen Kurta8', 'linen-kurta8', 'SK16735', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1867, 2171, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(18, 0, NULL, 19, 'Linen Kurta9', 'linen-kurta9', 'SK17874', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2945, 1518, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(19, 0, NULL, 20, 'Khaddar Shirwani1', 'khaddar-shirwani1', 'SK24211', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 24322, 13675, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(20, 0, NULL, 21, 'Khaddar Shirwani2', 'khaddar-shirwani2', 'SK17993', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 13683, 12194, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(21, 0, NULL, 22, 'Khaddar Shirwani3', 'khaddar-shirwani3', 'SK20765', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 26445, 12254, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(22, 0, NULL, 23, 'Khaddar Shirwani4', 'khaddar-shirwani4', 'SK24178', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 25763, 9439, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(23, 0, NULL, 24, 'Khaddar Shirwani5', 'khaddar-shirwani5', 'SK20076', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 13398, 23083, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(24, 0, NULL, 25, 'Khaddar Shirwani6', 'khaddar-shirwani6', 'SK20084', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 27844, 19354, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(25, 0, NULL, 15, 'Khaddar Shirwani7', 'khaddar-shirwani7', 'SK15362', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 19362, 14648, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(26, 0, NULL, 16, 'Khaddar Shirwani8', 'khaddar-shirwani8', 'SK17599', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 14744, 5674, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(27, 2, 17, 17, 'Laptop1', 'laptop1', 'SK24744', 'assets/uploads/product/290777261.jpg', 'assets/uploads/product/1086724237.jpg', '[\"assets\\/uploads\\/product\\/167322021.jpg\",\"assets\\/uploads\\/product\\/2059024716.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 29536, 10974, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', 1, '2020-02-18 18:30:50', NULL),
(28, 0, NULL, 18, 'Khaddar Shirts1', 'khaddar-shirts1', 'SK17013', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1014, 1199, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL);
INSERT INTO `product` (`id`, `language_id`, `category_id`, `sub_category_id`, `name`, `slug`, `sku`, `image`, `hover_image`, `multi_image`, `short_description`, `description`, `price_reg`, `price_dis`, `price_dis_start`, `price_dis_end`, `price_status`, `featured`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(29, 0, NULL, 19, 'Khaddar Shirts2', 'khaddar-shirts2', 'SK24021', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1769, 2266, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(30, 0, NULL, 20, 'Khaddar Shirts3', 'khaddar-shirts3', 'SK16279', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1902, 2448, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(31, 0, NULL, 21, 'Khaddar Shirts4', 'khaddar-shirts4', 'SK24019', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2281, 1528, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(32, 0, NULL, 22, 'Khaddar Shirts5', 'khaddar-shirts5', 'SK19897', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1827, 2308, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(33, 0, NULL, 23, 'Khaddar Shirts6', 'khaddar-shirts6', 'SK16552', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2169, 2114, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(34, 0, NULL, 24, 'Khaddar Shirts7', 'khaddar-shirts7', 'SK24558', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1722, 831, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(35, 0, NULL, 25, 'Khaddar Shirts8', 'khaddar-shirts8', 'SK17474', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1485, 573, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(36, 0, NULL, 15, 'Khaddar Shirts9', 'khaddar-shirts9', 'SK21966', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1212, 1175, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(37, 0, NULL, 16, 'Kamalia Wedding Suit1', 'kamalia-wedding-suit1', 'SK21607', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2325, 1286, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(38, 1, 17, 17, 'Mobile1', 'mobile1', 'SK16909', 'assets/uploads/product/1991126707.jpg', 'assets/uploads/product/1630490132.jpg', '[\"assets\\/uploads\\/product\\/151182087.jpg\",\"assets\\/uploads\\/product\\/189678080.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1162, 2170, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', 1, '2020-02-18 18:30:50', NULL),
(39, 0, NULL, 18, 'Kamalia Wedding Suit3', 'kamalia-wedding-suit3', 'SK24907', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1392, 2434, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 19:17:11', NULL),
(40, 0, NULL, 19, 'Kamalia Wedding Suit4', 'kamalia-wedding-suit4', 'SK24223', 'assets/uploads/product/7.jpg', 'assets/uploads/product/a7.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1466, 716, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(41, 0, NULL, 20, 'Kamalia Wedding Suit5', 'kamalia-wedding-suit5', 'SK21630', 'assets/uploads/product/6.jpg', 'assets/uploads/product/a6.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1171, 1435, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(42, 0, NULL, 21, 'Kamalia Wedding Suit6', 'kamalia-wedding-suit6', 'SK24947', 'assets/uploads/product/5.jpg', 'assets/uploads/product/a5.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1662, 1284, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(43, 0, NULL, 22, 'Kamalia Wedding Suit7', 'kamalia-wedding-suit7', 'SK20020', 'assets/uploads/product/4.jpg', 'assets/uploads/product/a4.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1397, 1914, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(44, 0, NULL, 23, 'Kamalia Wedding Suit8', 'kamalia-wedding-suit8', 'SK19407', 'assets/uploads/product/3.jpg', 'assets/uploads/product/a3.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1929, 611, NULL, NULL, 0, 0, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(45, 0, NULL, 24, 'Kamalia Wedding Suit9', 'kamalia-wedding-suit9', 'SK17851', 'assets/uploads/product/2.jpg', 'assets/uploads/product/a2.jpg', NULL, '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1991, 1405, NULL, NULL, 0, 1, 1, '2019-10-05 21:53:03', NULL, '2020-02-18 18:30:50', NULL),
(52, 0, NULL, 15, 'Cotton Shalwar Kameez122', 'cotton-shalwar-kameez122', 'SK20463dd', 'assets/uploads/product/1.jpg', 'assets/uploads/product/a1.jpg', '[\"public\\/assets\\/uploads\\/product\\/728333090.png\",\"public\\/assets\\/uploads\\/product\\/66074973.png\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 4148, 3635, NULL, NULL, 0, 1, 1, '2019-11-18 22:24:31', NULL, '2020-02-18 18:30:50', NULL),
(53, 1, 13, 26, 'PC1', 'pc1', 'pc1123', 'assets/uploads/product/138699832.jpg', 'assets/uploads/product/1555717359.jpg', '[\"assets\\/uploads\\/product\\/1954967303.jpg\",\"assets\\/uploads\\/product\\/629236815.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 123, 122, '2020-02-04', '2020-02-29', 1, 1, 1, '2020-02-03 19:21:09', 1, '2020-02-18 18:30:50', NULL),
(54, 1, 13, 26, 'PC2', 'pc2', 'pc11233', 'assets/uploads/product/8.jpg', 'assets/uploads/product/a8.jpg', '[\"assets/uploads/product/1699589728.jpg\",\"assets/uploads/product/1595843216.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 123, 122, '2020-02-04', '2020-02-29', 1, 1, 1, '2020-02-03 19:28:23', 1, '2020-02-18 19:17:11', NULL),
(55, 1, 13, 27, 'dsad', 'dsad', 'adsad23424', 'assets/uploads/product/1550528426.jpg', 'assets/uploads/product/1450376423.jpg', '[\"assets\\/uploads\\/product\\/1382962990.jpg\",\"assets\\/uploads\\/product\\/824056016.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 123, 122, '2020-02-04', '2020-02-29', 1, 0, 1, '2020-02-03 19:30:49', 1, '2020-02-18 18:30:50', NULL),
(56, 1, 13, 26, 'pc12', 'pc12', 'pc12123', 'assets/uploads/product/1285194232.jpg', 'assets/uploads/product/1528701484.jpg', '[\"assets\\/uploads\\/product\\/1369882632.jpg\",\"assets\\/uploads\\/product\\/946450459.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 123, 121, '2020-02-05', '2020-02-29', 1, 1, 1, '2020-02-04 17:54:22', 1, '2020-02-18 18:30:50', NULL),
(57, 1, 13, 26, 'Testing Fname Testing Lname', 'testing-fname-testing-lname', 'samdung11233', 'assets/uploads/product/1697932112.jpg', 'assets/uploads/product/1763926116.jpg', '[\"assets\\/uploads\\/product\\/468732937.jpg\",\"assets\\/uploads\\/product\\/265179932.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 444, 333, '2020-02-08', '2020-02-29', 1, 1, 1, '2020-02-06 12:24:33', 1, '2020-02-18 18:30:50', NULL),
(61, 1, 13, 26, 'Testing Fname Testing Lnameasdsad', 'testing-fname-testing-lnameasdsad', 'samdung11233dssad', 'assets/uploads/product/359675680.jpg', 'assets/uploads/product/2099205110.jpg', '[\"assets\\/uploads\\/product\\/925707175.jpg\",\"assets\\/uploads\\/product\\/2138830522.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 200, 150, '2020-02-08', '2020-02-29', 1, 1, 1, '2020-02-06 15:26:45', 1, '2020-02-18 18:30:50', NULL),
(63, 1, 13, 26, 'Testing Fname Testing Lnameasdsad3q', 'testing-fname-testing-lnameasdsad3q', 'samdung11233dssadewqe', 'assets/uploads/product/289226753.jpg', 'assets/uploads/product/1291020544.jpg', '[\"assets\\/uploads\\/product\\/1113942906.jpg\",\"assets\\/uploads\\/product\\/1722321763.jpg\"]', '<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 123, 111, '2020-02-08', '2020-02-08', 1, 1, 1, '2020-02-06 15:28:43', 1, '2020-02-18 18:30:50', NULL),
(65, 1, 13, 26, 'Intel PC', 'intel-pc', 'pc1123356', 'assets/uploads/product/1162869546.jpg', 'assets/uploads/product/1887873918.jpg', '[\"assets\\/uploads\\/product\\/964684563.jpg\",\"assets\\/uploads\\/product\\/581434383.jpg\"]', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 500, 450, '2020-02-20', '2020-04-04', 1, 1, 1, '2020-02-18 16:10:16', 1, '2020-02-18 16:10:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` tinyint(1) DEFAULT '0',
  `variant_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variant_price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`id`, `language_id`, `variant_id`, `product_id`, `variant_price`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 4, 63, 111, 1, NULL, NULL, NULL, NULL),
(2, 1, 6, 63, 222, 1, NULL, NULL, NULL, NULL),
(3, 1, 5, 63, 443, 1, NULL, NULL, NULL, NULL),
(4, 1, 4, 65, 444, 1, NULL, NULL, NULL, NULL),
(5, 1, 6, 65, 333, 1, NULL, NULL, NULL, NULL),
(6, 1, 5, 65, 230, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', '[\"createUser\",\"updateUser\",\"viewUser\",\"deleteUser\",\"createRole\",\"updateRole\",\"viewRole\",\"deleteRole\",\"viewCustomer\",\"deleteCustomer\",\"createCategory\",\"updateCategory\",\"viewCategory\",\"deleteCategory\",\"createSubCategory\",\"updateSubCategory\",\"viewSubCategory\",\"deleteSubCategory\",\"createAttribute\",\"updateAttribute\",\"viewAttribute\",\"deleteAttribute\",\"createVariant\",\"updateVariant\",\"viewVariant\",\"deleteVariant\",\"createProduct\",\"updateProduct\",\"viewProduct\",\"deleteProduct\",\"createProductVariant\",\"updateProductVariant\",\"viewProductVariant\",\"deleteProductVariant\",\"createInventory\",\"updateInventory\",\"viewInventory\",\"deleteInventory\",\"createCurrency\",\"updateCurrency\",\"viewCurrency\",\"deleteCurrency\",\"createHome\",\"updateHome\",\"viewHome\",\"deleteHome\",\"createLocation\",\"updateLocation\",\"viewLocation\",\"deleteLocation\",\"updateContent\",\"viewOrder\",\"viewMarket\",\"updateSetting\",\"updateProfile\"]', 1, NULL, 1, '2020-02-13 12:31:13', NULL),
(2, 'customer', '', 1, NULL, NULL, NULL, NULL),
(3, 'vendor', '[\"createRole\",\"updateRole\",\"viewRole\",\"deleteRole\",\"createCategory\",\"updateCategory\",\"deleteCategory\"]', 1, NULL, 12, '2020-02-12 22:44:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favico` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `language_id`, `title`, `email`, `phone`, `fax`, `address`, `facebook`, `twitter`, `instagram`, `logo`, `favico`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 0, 'Adulisbuy', 'info@adulisbuy.com', '12345678910', '12345678910', 'street2', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', 'assets/uploads/setting/381441951.png', 'assets/uploads/setting/1021934602.png', 1, '2020-01-25 00:54:11', 1, '2020-01-24 19:54:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `language_id`, `name`, `category_id`, `slug`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(14, 1, 'Mobile Phones', 14, 'mobile-phones', 1, '2020-01-22 21:05:45', 1, '2020-01-27 17:23:20', 1),
(15, 1, 'Tablets', 15, 'tablets', 1, '2020-01-22 21:05:45', 1, '2020-01-27 17:14:59', 1),
(16, 1, 'TVs', 16, 'tvs', 1, '2020-01-22 21:05:45', 1, '2020-01-27 17:14:29', 1),
(17, 2, 'Digital Cameras', 17, 'digital-cameras', 1, '2020-01-22 21:05:45', 1, '2020-01-27 17:13:02', 1),
(18, 1, 'Appliances', 18, 'appliances', 1, '2020-01-22 21:05:45', 1, '2020-01-27 17:12:34', 1),
(19, 1, 'Western Ware', 12, 'western-ware', 1, '2020-01-22 21:11:24', 1, '2020-01-23 19:22:07', 1),
(20, 1, 'TV Appliances', 20, 'tv-appliances', 1, '2020-01-22 21:11:24', 1, '2020-01-27 17:12:21', 1),
(21, 1, 'Pets Products', 21, 'pets-products', 1, '2020-01-22 21:11:24', 1, '2020-01-27 17:12:13', 1),
(22, 1, 'Car Motorbike', 22, 'car-motorbike', 1, '2020-01-22 21:11:24', 1, '2020-01-27 17:12:04', 1),
(23, 2, 'Industrial Products', 23, 'industrial-products', 1, '2020-01-22 21:11:24', 1, '2020-01-27 17:11:53', 1),
(24, 1, 'Beauty Health Products', 24, 'beauty-health-products', 1, '2020-01-22 21:11:24', 1, '2020-01-23 19:59:10', 1),
(25, 1, 'Grocery Products', 25, 'grocery-products', 1, '2020-01-22 21:11:24', 1, '2020-01-23 19:58:57', 1),
(26, 1, 'Computer1', 13, 'computer1', 1, '2020-01-23 18:35:08', 1, '2020-01-23 19:57:56', NULL),
(27, 2, 'Computer2', 13, 'computer2', 1, '2020-01-23 18:36:45', 1, '2020-01-23 19:58:45', NULL),
(28, 1, 'Samsung', 14, 'samsung', 1, '2020-01-27 17:09:28', 1, '2020-01-27 17:09:28', NULL),
(29, 1, 'Iphone', 14, 'iphone', 1, '2020-01-27 17:25:27', 1, '2020-01-27 17:25:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` bigint(20) DEFAULT NULL,
  `occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `language_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `contact_number`, `occupation`, `profile_picture`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 'Adulisbuy', 'admin@demo.com', NULL, '$2y$10$dFtCYSQk0saLbkrOywAR2.Ids8QSta1JDfz1y2IYdRrYfdo5PA5d2', 'kmaDzRKAU3ODeUdVgKLPLgrGLo0RME2eKDFBMnuMpaHpIsytmnNxsASudpcP', NULL, NULL, 'assets/admin/images/14354318.png', '2020-01-14 14:45:20', NULL, '2020-01-14 14:45:20', NULL),
(2, 2, 1, 'Testing Fname Lname', 'nb@nadocrm.com', NULL, '$2y$10$c5fg4t6cmsZrn1J.wQT3JuoaH/ICLtLMk1Y1PvolnNp/7P/MgDque', NULL, NULL, NULL, NULL, '2020-01-16 17:08:00', NULL, '2020-01-16 17:08:00', NULL),
(3, 0, 1, 'Testing Fname Lname', 'nbs@nadocrm.com', NULL, '$2y$10$5FP3FaUNvZnGIYgtPWAyEuAn950F8DnB6JlqpKAOcuNYaqSG41LHi', NULL, NULL, NULL, NULL, '2020-01-16 17:15:00', NULL, '2020-01-16 17:15:00', NULL),
(4, 0, 1, 'Testing Fname Lname', 'asnb@nadocrm.com', NULL, '$2y$10$BQ/gj/33RRgxxn9WOlY3PuLU8G.1iSKAcFhnH8nShkd1ANXmRt83K', NULL, NULL, NULL, NULL, '2020-01-16 17:52:49', NULL, '2020-01-16 17:52:49', NULL),
(5, 0, 1, 'Testing Fname Lname', 'nqweb@nadocrm.com', NULL, '$2y$10$/JqHT7qkHhwVBKiRSKIYgeN/Xjytg3uuci2r0lGbjiv..oQI5eHJu', NULL, NULL, NULL, NULL, '2020-01-16 19:30:07', NULL, '2020-01-16 19:30:07', NULL),
(6, 0, 1, 'Testing Fname Lname', 'nqqb@nadocrm.com', NULL, '$2y$10$DmaQPh9BupWVWK08t2BMEuA4ZO11SryaKTIXYgfP6xHai/JWoo9FC', NULL, NULL, NULL, NULL, '2020-01-16 21:00:28', NULL, '2020-01-16 21:00:28', NULL),
(7, 0, 1, 'Testing Fname Lname', 'nzxb@nadocrm.com', NULL, '$2y$10$0bGKGX19biW32JSsposx4O0Yjb/JUUv.5DFd5WQavLBQ2RedbKqzC', NULL, NULL, NULL, NULL, '2020-01-16 21:01:45', NULL, '2020-01-16 21:01:45', NULL),
(8, 0, 1, 'Testing Fname Lname', 'qqqnb@nadocrm.com', NULL, '$2y$10$Dto2k9FBfdAUceCj5vaLHOAv7twKLSMTSzpBE9o7L2zQrmbeKZqyq', NULL, NULL, NULL, NULL, '2020-01-16 21:04:58', NULL, '2020-01-16 21:04:58', NULL),
(9, 0, 1, 'Testing Fname Lname', 'nb11@nadocrm.com', NULL, '$2y$10$gwgjRn.qrC.02zehihajIuZvGBPjorPQgdQC8QB/hIE177dVgWjx6', NULL, NULL, NULL, NULL, '2020-01-16 21:12:22', NULL, '2020-01-16 21:12:22', NULL),
(10, 0, 1, 'qweqw asd', 'qwenb@nadocrm.com', NULL, '$2y$10$Cl.6w1iLqQzgx6tRHctS.ugCr8yUwY5zfC7hXgPeu556/4Iqm2kCW', NULL, 1234567892, 'sdas', 'assets/admin/images/332319587.png', '2020-01-16 21:17:36', NULL, '2020-01-16 21:17:36', NULL),
(11, 1, 1, 'Albert Custom', 'albert@gmail.com', NULL, '$2y$10$98RO0l9cpedqIgB.fh6sEu0ikc/YoCdDEFmGlAV1MwSE8kQcmE/6S', NULL, 12345678910, 'Developer', 'assets/admin/images/1209642735.png', '2020-01-23 16:23:09', NULL, '2020-01-23 16:23:09', NULL),
(12, 3, 1, 'Nick PHP', 'nick@mnb.com', NULL, '$2y$10$dFtCYSQk0saLbkrOywAR2.Ids8QSta1JDfz1y2IYdRrYfdo5PA5d2', NULL, 12345678910, 'Developer', 'assets/admin/images/2021132860.png', '2020-01-23 18:05:34', NULL, '2020-01-23 18:05:34', NULL),
(13, 3, 1, 'Testing Fname Testing Lname', 'test@mnb.com', NULL, '$2y$10$y.XNfo5R4VVgzwo3c0GGGuVnP155rekUVVOE22OoJY/MKLnldKDRq', NULL, 1234567891, 'Developer', 'assets/admin/images/14354318.png', '2020-01-23 18:30:12', NULL, '2020-01-23 18:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(11) UNSIGNED NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `attribute_id`, `language_id`, `name`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 7, 1, '4gb', 1, '2020-01-31 17:23:34', 1, '2020-01-31 17:23:34', NULL),
(2, 7, 1, '8gb', 1, '2020-01-31 17:25:32', 1, '2020-01-31 17:25:32', NULL),
(3, 8, 2, 'small', 1, '2020-01-31 18:04:50', 1, '2020-01-31 18:04:50', NULL),
(4, 8, 1, 'medium', 1, '2020-01-31 18:05:01', 1, '2020-01-31 18:05:01', NULL),
(5, 9, 1, 'red', 1, '2020-02-05 21:56:30', 1, '2020-02-05 21:56:30', NULL),
(6, 8, 1, 'small', 1, '2020-02-06 02:57:54', 1, '2020-02-05 21:57:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `attribute_sub_category`
--
ALTER TABLE `attribute_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name_unique` (`name`),
  ADD UNIQUE KEY `product_slug_unique` (`slug`),
  ADD UNIQUE KEY `product_sku_unique` (`sku`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_variant_id_foreign` (`variant_id`),
  ADD KEY `product_variant_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_category_name_unique` (`name`),
  ADD UNIQUE KEY `sub_category_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attribute_sub_category`
--
ALTER TABLE `attribute_sub_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
