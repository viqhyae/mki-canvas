-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 08, 2026 at 02:00 AM
-- Server version: 8.4.8
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'max_valid_scan_limit', '3', '2026-04-04 14:33:21', '2026-04-04 14:33:21'),
(2, 'require_gps', '1', '2026-04-04 14:33:21', '2026-04-04 14:33:21'),
(3, 'email_notif', '0', '2026-04-04 14:33:21', '2026-04-04 14:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `brand_code`, `owner_name`, `description`, `logo_url`, `status`, `created_at`, `updated_at`) VALUES
(140, 'Indogrosir', 'CL-2387', 'Ibu Clara', 'Noted', 'logos/PBPJUsQHuuzCoUZ4fkIlWq34fHipmjpK7y8M6vyb.png', 1, '2026-03-14 04:27:28', '2026-03-16 07:31:16'),
(151, 'ASDASD', 'CL-7045', 'Ibu Clara', 'ASDASDASD', 'logos/aRCCNqZNGgrh4bzvvUIb8jv7Dcr1lp5Bm5PENRry.jpg', 1, '2026-03-14 08:56:53', '2026-04-03 02:47:19'),
(155, 'AAA', 'CL-9995', 'Ibu Clara', 'Noteddfdfg', 'logos/U5GIMCpRTfx1wH5RYRiENXwerb4yKZtYoRmEDXIV.png', 1, '2026-03-16 01:26:10', '2026-04-03 02:47:19'),
(171, 'Glow & Co', 'GLW-001', NULL, 'Auto-seeded untuk master SKU produk.', NULL, 1, '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(172, 'DermaBeauty', 'DRM-001', NULL, 'Auto-seeded untuk master SKU produk.', NULL, 1, '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(173, 'Luxe Scents', 'LXS-001', NULL, 'Auto-seeded untuk master SKU produk.', NULL, 1, '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(174, 'PureNaturals', 'PRN-001', 'Viqhy', 'Auto-seeded untuk master SKU produk.', 'logos/HCsj0MF6hKQCpNZxwTAhdOBqQXsENp3LVQbfb7kU.png', 1, '2026-04-03 08:36:11', '2026-04-03 09:02:19'),
(175, 'Men\'s Groom', 'MGR-001', NULL, 'Auto-seeded untuk master SKU produk.', NULL, 0, '2026-04-03 08:36:11', '2026-04-03 09:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-ip_api_location_158.140.163.219', 's:9:\"Malang,ID\";', 1775557600),
('laravel-cache-ip_api_location_182.8.65.212', 's:11:\"Surabaya,ID\";', 1775296611),
('laravel-cache-ip_api_public_ip_self', 's:15:\"158.140.163.219\";', 1775557003),
('laravel-cache-security.max_valid_scan_limit', 'i:3;', 1775544763);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_13_040140_create_brands_table', 2),
(6, '2026_03_14_014313_add_status_to_brands_table', 4),
(7, '2026_03_14_110500_convert_brand_status_to_integer', 5),
(8, '2026_03_14_121000_create_product_categories_table', 5),
(9, '2026_03_14_121100_seed_initial_product_categories', 5),
(10, '2026_03_16_090000_add_role_and_status_to_users_table', 6),
(11, '2026_03_16_100000_add_logo_url_to_brands_table', 6),
(12, '2026_03_16_120000_add_owner_sync_indexes', 7),
(13, '2026_03_16_130000_create_tag_batches_table', 8),
(14, '2026_03_16_130100_create_tag_codes_table', 8),
(15, '2026_04_03_070000_create_product_skus_table', 9),
(16, '2026_04_03_073000_add_image_url_to_product_skus_table', 10),
(17, '2026_04_03_090000_create_scan_activities_table', 11),
(18, '2026_04_04_110000_create_app_settings_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `name`, `level`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Perawatan & Kecantikan', 1, 1, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(11, 1, 'Parfum & Wewangian', 2, 1, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(12, 1, 'Perawatan Wajah', 2, 2, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(13, 1, 'Perawatan Tubuh', 2, 3, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(111, 11, 'Eau De Parfum (EDP)', 3, 1, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(112, 11, 'Eau De Toilette (EDT)', 3, 2, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(113, 11, 'Body Mist / Cologne', 3, 3, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(114, 11, 'Extrait De Parfum', 3, 4, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(121, 12, 'Pembersih Wajah', 3, 1, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(122, 12, 'Toner', 3, 2, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(123, 12, 'Pelembab Wajah', 3, 3, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(124, 12, 'Minyak Wajah', 3, 4, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(125, 12, 'Facial Mist', 3, 5, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(126, 12, 'Serum & Essence Wajah', 3, 6, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(127, 12, 'Scrub & Peel Wajah', 3, 7, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(128, 12, 'Masker Wajah', 3, 8, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(129, 12, 'Treatment Mata', 3, 9, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(130, 12, 'Treatment Bibir', 3, 10, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(131, 13, 'Sabun Mandi', 3, 1, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(132, 13, 'Scrub & Peel Tubuh', 3, 2, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(133, 13, 'Masker Tubuh', 3, 3, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(134, 13, 'Minyak Tubuh', 3, 4, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(135, 13, 'Body Cream, Lotion & Butter', 3, 5, '2026-03-14 07:07:07', '2026-03-14 07:07:07'),
(154, NULL, 'A', 1, 2, '2026-03-14 08:55:17', '2026-03-14 08:55:17'),
(156, 154, 'AA', 2, 1, '2026-03-14 08:58:27', '2026-03-14 08:58:27'),
(157, 156, 'AAA', 3, 1, '2026-03-14 08:58:34', '2026-03-14 08:58:34'),
(158, 156, 'AAA', 3, 2, '2026-03-14 08:58:34', '2026-03-14 08:58:34'),
(159, 156, 'AAA', 3, 2, '2026-03-14 08:58:34', '2026-03-14 08:58:34'),
(160, 156, 'AAA', 3, 2, '2026-03-14 08:58:34', '2026-03-14 08:58:34'),
(161, 156, 'AAA', 3, 2, '2026-03-14 08:58:34', '2026-03-14 08:58:34'),
(162, 156, 'ABB', 3, 3, '2026-03-14 08:58:48', '2026-03-14 08:58:48'),
(163, 156, 'ABB', 3, 3, '2026-03-14 08:58:48', '2026-03-14 08:58:48'),
(164, 156, 'ABB', 3, 3, '2026-03-14 08:58:48', '2026-03-14 08:58:48'),
(165, 156, '1242535235', 3, 4, '2026-03-14 08:59:08', '2026-03-14 08:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_skus`
--

CREATE TABLE `product_skus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `category_l1_id` bigint UNSIGNED DEFAULT NULL,
  `category_l2_id` bigint UNSIGNED DEFAULT NULL,
  `category_l3_id` bigint UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dynamic_fields` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_skus`
--

INSERT INTO `product_skus` (`id`, `name`, `sku_code`, `brand_id`, `category_l1_id`, `category_l2_id`, `category_l3_id`, `description`, `image_url`, `dynamic_fields`, `created_at`, `updated_at`) VALUES
(1, 'Luxury Rose EDP 30ml', 'LS-EDP-ROS-30', 173, 1, 11, 111, 'Parfum wangi mawar mewah dengan botol kaca. Mengandung ekstrak mawar asli dengan ketahanan hingga 12 jam. Cocok untuk acara formal maupun daily use.', NULL, '{\"topNotes\": \"Bergamot, Mandarin\", \"baseNotes\": \"Vanilla, Musk, Cedarwood\", \"longevity\": \"Hingga 12 Jam\"}', '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(2, 'Acne Fighter Night Cream', 'DB-NC-ACN-15', 172, 1, 12, 123, 'Krim malam untuk kulit berjerawat. Membantu meredakan kemerahan dan mengempeskan jerawat meradang dalam waktu singkat.', NULL, '{\"bpom\": \"NA1821010001\", \"skinType\": \"Berminyak & Berjerawat\", \"ingredients\": \"Niacinamide 5%, Salicylic Acid, Tea Tree Extract\"}', '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(3, 'Gentle Facial Wash 100ml', 'GC-FW-GNT-100', 171, 1, 12, 121, 'Pembersih wajah lembut tanpa busa untuk kulit sensitif.', NULL, '{\"bpom\": \"NA1821010002\", \"skinType\": \"Kering & Sensitif\", \"ingredients\": \"Aloe Vera, Chamomile Extract\"}', '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(4, 'Hydrating Toner Mist', 'GC-TM-HYD-60', 171, 1, 12, 125, 'Toner spray penyegar wajah dengan aloe vera.', NULL, '{\"bpom\": \"NA1821010003\", \"skinType\": \"Semua Tipe Kulit\", \"ingredients\": \"Hyaluronic Acid, Rose Water\"}', '2026-04-03 08:36:11', '2026-04-03 08:36:11'),
(5, 'Coffee Body Scrub', 'PN-BS-COF-250', 174, 1, 13, 132, 'Scrub mandi eksfoliasi aroma kopi.', NULL, '[]', '2026-04-03 08:36:11', '2026-04-03 08:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `scan_activities`
--

CREATE TABLE `scan_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `scanned_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_code_id` bigint UNSIGNED DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Invalid',
  `scan_count` int UNSIGNED NOT NULL DEFAULT '0',
  `location_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `scanned_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scan_activities`
--

INSERT INTO `scan_activities` (`id`, `scanned_code`, `tag_code_id`, `verification_code`, `product_name`, `brand_name`, `tag_status`, `result_status`, `scan_count`, `location_label`, `latitude`, `longitude`, `ip_address`, `user_agent`, `scanned_at`, `created_at`, `updated_at`) VALUES
(20, '4UB0BST', 2515, '4UB0BST', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', 'Original', 1, 'Surabaya,ID', -7.2760905, 112.7009860, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 11:16:43', '2026-04-07 11:16:43', '2026-04-07 11:16:43'),
(21, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 1, 'Surabaya,ID', -7.2760848, 112.7009610, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 11:21:17', '2026-04-07 11:21:17', '2026-04-07 11:21:17'),
(22, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 2, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 11:26:40', '2026-04-07 11:26:40', '2026-04-07 11:26:40'),
(23, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 3, 'Surabaya,ID', -7.2760493, 112.7008315, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 11:30:04', '2026-04-07 11:30:04', '2026-04-07 11:30:04'),
(24, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 4, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:08:17', '2026-04-07 12:08:17', '2026-04-07 12:08:17'),
(25, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 5, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:09:05', '2026-04-07 12:09:05', '2026-04-07 12:09:05'),
(26, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 6, 'Surabaya,ID', -7.2761052, 112.7010195, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:10:06', '2026-04-07 12:10:06', '2026-04-07 12:10:06'),
(27, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 7, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:29:43', '2026-04-07 12:29:43', '2026-04-07 12:29:43'),
(28, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 8, 'Surabaya,ID', -7.2760970, 112.7010040, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:30:12', '2026-04-07 12:30:12', '2026-04-07 12:30:12'),
(29, 'Q6QQTAQ2', NULL, NULL, NULL, NULL, NULL, 'Invalid', 1, 'Surabaya,ID', -7.2760970, 112.7010040, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:30:29', '2026-04-07 12:30:29', '2026-04-07 12:30:29'),
(30, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 9, 'Surabaya,ID', -7.2760970, 112.7010040, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 12:30:45', '2026-04-07 12:30:45', '2026-04-07 12:30:45'),
(31, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 10, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 13:42:43', '2026-04-07 13:42:43', '2026-04-07 13:42:43'),
(32, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 11, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 13:44:08', '2026-04-07 13:44:08', '2026-04-07 13:44:08'),
(33, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 12, 'Malang,ID', NULL, NULL, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 13:47:59', '2026-04-07 13:47:59', '2026-04-07 13:47:59'),
(34, 'Q6QQTA', 2511, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', 'Suspended', 13, 'Surabaya,ID', -7.2761028, 112.7009916, '158.140.163.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-07 13:48:22', '2026-04-07 13:48:22', '2026-04-07 13:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('J3WQmGgYOX2Dkvddcub8mRVJ8slTSCw3hcm1tm7N', 5, '172.27.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzVCemdOcXRjOG9DQ3NsSU9XbGtSdlQ3dWpIVEhaYjQwdTY3ZldTWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1775555365);

-- --------------------------------------------------------

--
-- Table structure for table `tag_batches`
--

CREATE TABLE `tag_batches` (
  `id` bigint UNSIGNED NOT NULL,
  `batch_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `id_length` tinyint UNSIGNED NOT NULL DEFAULT '8',
  `error_correction` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `use_pin` tinyint(1) NOT NULL DEFAULT '0',
  `pin_length` tinyint UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Generated',
  `first_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_batches`
--

INSERT INTO `tag_batches` (`id`, `batch_code`, `product_name`, `brand_name`, `quantity`, `id_length`, `error_correction`, `use_pin`, `pin_length`, `status`, `first_code`, `last_code`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 'BATCH-262835', 'Coffee Body Scrub', 'PureNaturals', 500, 6, 'M', 0, NULL, 'Suspended', 'GQPZLN', 'Q6QQTA', 1, '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(11, 'BATCH-570480', 'Luxury Rose EDP 30ml', 'Luxe Scents', 200, 7, 'M', 0, NULL, 'Generated', 'A1XTFBX', 'CAZRNCY', 1, '2026-04-01 01:15:23', '2026-04-03 04:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `tag_codes`
--

CREATE TABLE `tag_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_batch_id` bigint UNSIGNED NOT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_correction` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_codes`
--

INSERT INTO `tag_codes` (`id`, `tag_batch_id`, `verification_code`, `product_name`, `brand_name`, `status`, `pin`, `error_correction`, `created_at`, `updated_at`) VALUES
(2012, 10, 'GQPZLN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2013, 10, 'X5RAMB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2014, 10, 'PGFMNE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2015, 10, '2NEX5C', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2016, 10, 'LGRXZG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2017, 10, 'EINLFY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2018, 10, 'JLS8YA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2019, 10, 'LNAMNU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2020, 10, 'IK0EID', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2021, 10, 'DIOLSS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2022, 10, 'CCGJBK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2023, 10, '0ZMBPV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2024, 10, 'MOMD1B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2025, 10, 'RGSGQM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2026, 10, 'HOOHEV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2027, 10, '3S3QJW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2028, 10, 'OWPRR5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2029, 10, 'BS3N04', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2030, 10, 'S2DS6A', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2031, 10, 'A6UZVH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2032, 10, 'N8C5T2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2033, 10, 'DIWPNI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2034, 10, 'CD5VRH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2035, 10, 'WROCGB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2036, 10, '7ZQOJX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2037, 10, 'A0UYTZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2038, 10, 'QSQ7CB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2039, 10, 'AZXOCU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2040, 10, 'MT40GQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2041, 10, 'ME2X5M', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2042, 10, 'XVCBFX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2043, 10, 'LL1GS8', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2044, 10, 'AXN4AJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2045, 10, 'KHK7DJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2046, 10, 'HLDHDF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2047, 10, 'J3F7LZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2048, 10, 'P1JAJB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2049, 10, 'SKRLCC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2050, 10, '4AKA6E', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2051, 10, 'DASNKR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2052, 10, '4HXDGN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2053, 10, 'ORXFHN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2054, 10, 'BHQ60B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2055, 10, 'DGM57Z', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2056, 10, 'DZWMB5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2057, 10, '7X9WQT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2058, 10, 'HGQBYB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2059, 10, 'X9LEAJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2060, 10, 'ISXO8I', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2061, 10, 'R0NOFI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2062, 10, 'AQEJGH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2063, 10, 'SVK8UW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2064, 10, 'YYI66N', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2065, 10, 'ORLTYB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2066, 10, '0CMKFQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2067, 10, 'E0RI8H', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2068, 10, 'KFRKN2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2069, 10, 'MRFROO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2070, 10, 'ZJQ0FX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2071, 10, 'TGQFTS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2072, 10, 'HIP2D4', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2073, 10, 'UXBCRE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2074, 10, '1J5FXP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2075, 10, 'LVJCU2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2076, 10, 'TXANDZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2077, 10, 'HOQ7B0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2078, 10, '9ADGMY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2079, 10, 'VANGDL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2080, 10, 'MAFIZ6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2081, 10, 'PS0KJZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2082, 10, 'UGNTV5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2083, 10, 'CYOIFJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2084, 10, '1DKZTW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2085, 10, 'SY6Q6W', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2086, 10, 'GP0PQB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2087, 10, 'JSDJOG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2088, 10, 'Y6J31Y', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2089, 10, 'F1NAV7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2090, 10, 'IJ6NWH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2091, 10, 'GBOHIE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2092, 10, 'NCQNNK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2093, 10, 'OCTWLW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2094, 10, 'W1AUZI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2095, 10, '3NVGWQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2096, 10, 'BTISQC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2097, 10, 'GP3Y3J', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2098, 10, 'ZAQTBX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2099, 10, 'HH2ANH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2100, 10, 'CTSSGA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2101, 10, 'GYLNJD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2102, 10, 'L0S6DR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2103, 10, 'SL6NJG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2104, 10, 'INCIKX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2105, 10, 'MODEQN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2106, 10, 'CZJYYY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2107, 10, 'GKKQXW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2108, 10, 'FYFTLY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2109, 10, '0KUCR1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2110, 10, '55YDO1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2111, 10, 'A7SMGD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2112, 10, 'O5JTZV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2113, 10, 'NL626D', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2114, 10, 'L2WVUZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2115, 10, 'JC3KVL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2116, 10, 'EHA0B5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2117, 10, '7TCF3Y', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2118, 10, 'ZDGUPM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2119, 10, 'IHOD9S', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2120, 10, 'OUVH5X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2121, 10, 'W26QGV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2122, 10, 'ANIAQE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2123, 10, '3XPU98', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2124, 10, 'T7GTTD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2125, 10, 'F2DPFX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2126, 10, 'XR9TGC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2127, 10, '1QFVR0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2128, 10, 'WSYI23', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2129, 10, 'UQFDPM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2130, 10, '2PJQ4H', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2131, 10, 'PBM0DK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2132, 10, 'RQ5MIH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2133, 10, 'YLIDWD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2134, 10, 'EW2WE6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2135, 10, 'XMKCBP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2136, 10, 'QZSR6Z', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2137, 10, 'ZX1EG1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2138, 10, 'QN05PA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2139, 10, 'FCBPPK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2140, 10, '2SKKCV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2141, 10, 'P1YU6B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2142, 10, 'VQQEKK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2143, 10, 'IGO7OT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2144, 10, 'N8ULEZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2145, 10, 'ES3JBM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2146, 10, '9UKCNJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2147, 10, 'EUAEGT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2148, 10, '8EPA9G', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2149, 10, 'HZNYYI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2150, 10, 'R8GZSG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2151, 10, 'F9JMI1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2152, 10, 'DO9D0C', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2153, 10, '5YA2FD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2154, 10, 'GETOID', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2155, 10, '5JZDIX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2156, 10, 'VQFXKS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2157, 10, 'A9VZSF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2158, 10, '4SSCRY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2159, 10, 'CJYNUK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2160, 10, 'MGLGG3', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2161, 10, 'SCEKKG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2162, 10, 'HLXKAO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2163, 10, '1MTZ4N', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2164, 10, 'ORHYLP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2165, 10, 'QJUMGO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2166, 10, 'MQ4FZU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2167, 10, 'WKZQ5N', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2168, 10, 'UQTEPU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2169, 10, 'KJXQGK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2170, 10, 'UB39WA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2171, 10, 'RROGUE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2172, 10, 'RLV8WL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2173, 10, 'CS4HSO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2174, 10, 'LXW2FT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2175, 10, 'V8LRNB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2176, 10, 'QKM1S0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2177, 10, 'BAKRIH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2178, 10, '8UV20R', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2179, 10, 'QHR7YF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2180, 10, 'RQOEPS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2181, 10, 'SOHOBM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2182, 10, 'XB3IQ0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2183, 10, 'SLNSZX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2184, 10, '221UZD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2185, 10, 'SCGEO5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2186, 10, '6GCXGV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2187, 10, 'RZ5ACU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2188, 10, 'UDJX0V', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2189, 10, '7C9FNP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2190, 10, 'HG3QRX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2191, 10, 'L4PBLQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2192, 10, '0CV0SQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2193, 10, 'GY6OSO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2194, 10, 'DAJQXU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2195, 10, 'TWADGY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2196, 10, 'Z8SACH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2197, 10, 'YHHPQF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2198, 10, '4MV0KG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2199, 10, 'IXC74J', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2200, 10, 'NFE5OE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2201, 10, 'ICG4H7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2202, 10, 'LL25R2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2203, 10, 'C8KHYV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2204, 10, '4MUS58', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2205, 10, 'WMZMZ5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2206, 10, 'NDBFOG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2207, 10, 'KXPM7J', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2208, 10, 'PZC3RJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2209, 10, 'GX4A5X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2210, 10, 'DGLUHE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2211, 10, 'QNGAHE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2212, 10, 'XQHEPY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2213, 10, '4DDEXZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2214, 10, 'YRUA2F', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2215, 10, 'O7JVGD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2216, 10, 'EZS0VM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2217, 10, 'ULEXYR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2218, 10, 'PVEI3K', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2219, 10, 'BJFPRO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2220, 10, 'NFXRR3', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2221, 10, 'QHUXLN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2222, 10, 'QCEOUY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2223, 10, 'IRP09E', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2224, 10, 'GAOP97', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2225, 10, 'PSFPNS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2226, 10, 'I4JKCR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2227, 10, 'AVQ9SD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2228, 10, 'UPUFU1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2229, 10, 'TFQB9R', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2230, 10, 'CW7PDS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2231, 10, '0M9OOG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2232, 10, '36NJNO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2233, 10, 'ZWOZUA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2234, 10, 'SVOAZF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2235, 10, 'GOG5IK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2236, 10, 'CYPWYJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2237, 10, '4BVEJJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2238, 10, 'KDMNAW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2239, 10, 'YN0635', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2240, 10, 'VTKQFR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2241, 10, 'XIRYN9', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2242, 10, 'IYXXIT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2243, 10, '1DLMXT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2244, 10, 'MLUBQJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2245, 10, 'IXOKNF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2246, 10, 'ZIJNEP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2247, 10, 'KVZZPU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2248, 10, 'XD3XYN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2249, 10, 'VMO1TS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2250, 10, 'VWNE6C', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2251, 10, 'HNEYDA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2252, 10, 'HXEVFV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2253, 10, 'BVSSQG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2254, 10, 'EZDAEX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2255, 10, '4FK1VD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2256, 10, 'TVYEQW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2257, 10, 'T9KEQR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2258, 10, 'KU4LLJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2259, 10, 'MXKUDD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2260, 10, 'ERHHJZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2261, 10, 'HPYH2Z', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2262, 10, 'MYO6PN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2263, 10, 'PFJZCM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2264, 10, '0TCUDU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2265, 10, 'E6A7L8', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2266, 10, 'ADQQSG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2267, 10, 'PCF4MU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2268, 10, 'UVCMQ5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2269, 10, '8YLJMS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2270, 10, 'TWCAYD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2271, 10, 'R02FQH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2272, 10, 'RLKDFN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2273, 10, '1Y2HWR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2274, 10, 'ZFJBLA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2275, 10, 'X0XBD9', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2276, 10, 'CZUGHE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2277, 10, 'FQMHTF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2278, 10, 'V3GNPZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2279, 10, '46FCYB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2280, 10, 'CUTUQM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2281, 10, 'WF1CHE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2282, 10, 'PPEBEP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2283, 10, 'NUVFBD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2284, 10, 'ZY6JN4', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2285, 10, 'N5VPFY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2286, 10, 'DTGFWN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2287, 10, 'DQ6BXT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2288, 10, 'EM0NW1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2289, 10, '0OPSOI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2290, 10, 'IO5RNT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2291, 10, 'CWYINY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2292, 10, 'EZV1LG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2293, 10, 'ZXZIXC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2294, 10, 'IRSPE5', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2295, 10, 'RYKQLN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2296, 10, 'Z38531', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2297, 10, 'KJPVU3', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2298, 10, 'VBNACT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2299, 10, 'ZLJJWC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2300, 10, 'DUJLHW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2301, 10, 'BG32LW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2302, 10, 'SJBHXL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2303, 10, 'GATFYS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2304, 10, 'UMNQAF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2305, 10, 'QZQB4U', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2306, 10, 'DDA6Z0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2307, 10, 'OXAYPZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2308, 10, '2DDC3H', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2309, 10, 'SSQGAU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2310, 10, 'PXOW6Y', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2311, 10, 'FZICQK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2312, 10, 'NFLEQB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2313, 10, 'MZ2KTG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2314, 10, 'HQV9GV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2315, 10, 'MR2JFE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2316, 10, 'INQOWE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2317, 10, 'EGRRZL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2318, 10, 'T6F2X2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2319, 10, 'DDKQM1', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2320, 10, 'PIYJQL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2321, 10, 'SMZXRI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2322, 10, 'OE7NPM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2323, 10, 'SU5H4R', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2324, 10, 'D8VFWH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2325, 10, 'G4MQBN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2326, 10, 'STV7RE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2327, 10, 'JVVJZV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2328, 10, 'Y8YS7V', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2329, 10, 'DXD25X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2330, 10, 'NMBOHP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2331, 10, 'QRUIWM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2332, 10, 'FXYNCU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2333, 10, 'IXDUN3', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2334, 10, 'NYIKCA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2335, 10, 'M1D5X9', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2336, 10, 'R3TIYB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2337, 10, '0OPOFE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2338, 10, 'G62MZM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2339, 10, 'EKCXEW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2340, 10, 'GDBH3T', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2341, 10, '6RSHGT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2342, 10, 'LBTZQX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2343, 10, 'OJ0XOZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2344, 10, '1UBL5X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2345, 10, 'HC35V0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2346, 10, 'SSSXR6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2347, 10, '5ZFEF8', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2348, 10, 'XUJIYR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2349, 10, 'ZYEMI9', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2350, 10, 'CJJSTZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2351, 10, 'FOJXKF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2352, 10, 'GQTKDF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2353, 10, 'QTNT65', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2354, 10, 'XUEPFV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2355, 10, 'IOCHSV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2356, 10, 'HP1P2F', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2357, 10, 'FXHWFN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2358, 10, 'VQNLBJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2359, 10, 'KDBRV4', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2360, 10, '0GX5KS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2361, 10, 'GISFED', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2362, 10, 'DXNL8A', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2363, 10, 'RMFEEJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2364, 10, 'JIXEQO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2365, 10, 'RAZM6S', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2366, 10, 'GPI2SV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2367, 10, 'GUKHBZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2368, 10, 'FGW97S', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2369, 10, 'TPFPVC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2370, 10, 'LNGYHY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2371, 10, '6INFVO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2372, 10, '4X2KYC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2373, 10, '1T95LL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2374, 10, 'WNPCHK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2375, 10, 'HFLIPY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2376, 10, '75KPOH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2377, 10, 'P14THC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2378, 10, 'JEBMMD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2379, 10, 'ITVMP7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2380, 10, 'QQYD74', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2381, 10, 'YVN8JC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2382, 10, 'HPBXCN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2383, 10, 'KWVAXP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2384, 10, 'V0T51B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2385, 10, 'Z6ZXXO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2386, 10, 'JFNNAL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2387, 10, '4S5CV6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2388, 10, 'K5RJUT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2389, 10, 'Z2OFCQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2390, 10, '0OZ6NR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2391, 10, 'U88R2X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2392, 10, 'YJ3D7N', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2393, 10, 'ZLUASI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2394, 10, '77KH65', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2395, 10, 'YZIK9P', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2396, 10, 'OBLSRF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2397, 10, 'GJIDAY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2398, 10, 'PQPCO6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2399, 10, '2BDKKI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2400, 10, 'RRJ30X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2401, 10, 'MWYU5D', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2402, 10, 'EHL3N0', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2403, 10, 'QS5JE6', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12');
INSERT INTO `tag_codes` (`id`, `tag_batch_id`, `verification_code`, `product_name`, `brand_name`, `status`, `pin`, `error_correction`, `created_at`, `updated_at`) VALUES
(2404, 10, 'FNSR0H', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2405, 10, 'EMQGE7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2406, 10, 'V9AKAM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2407, 10, 'JLXFJZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2408, 10, 'LYUBTY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2409, 10, '6KGA0R', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2410, 10, 'TPOJYR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2411, 10, 'NXOMTW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2412, 10, 'WAZ7SS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2413, 10, 'JBMJEP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2414, 10, '7GPGPR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2415, 10, 'FCTBDC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2416, 10, 'UIGHHI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2417, 10, 'UPLQKL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2418, 10, 'N7JN7B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2419, 10, '8Z1ONC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2420, 10, 'JEMNLK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2421, 10, 'KI1WSP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2422, 10, '1KR0EQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2423, 10, 'WRZSOU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2424, 10, 'EBFMBZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2425, 10, 'XVDH8D', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2426, 10, '6TKR2K', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2427, 10, 'XQRP3M', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2428, 10, 'TI50K7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2429, 10, 'Z7BANT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2430, 10, 'N7D1EI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2431, 10, 'GKXMZH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2432, 10, 'KQYHFH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2433, 10, 'UYTC5R', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2434, 10, '3Y8SQD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2435, 10, 'UFFC0I', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2436, 10, 'RJNENI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2437, 10, 'TDKSHP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2438, 10, 'ZDLTKX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2439, 10, 'YYUTPO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2440, 10, 'ZD8UBS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2441, 10, 'A46SJX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2442, 10, 'O1M19K', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2443, 10, '1IXZVJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2444, 10, 'KLQVRA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2445, 10, 'DD1PMV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2446, 10, 'IVMKGE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2447, 10, 'BNLCNE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2448, 10, 'WRHSQN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2449, 10, 'E8ZCFH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2450, 10, 'IQLUXJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2451, 10, 'F0CJMS', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2452, 10, '0NHVBZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2453, 10, 'CCCNGY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2454, 10, '28IODJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2455, 10, 'QYNNMY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2456, 10, 'NLEH3D', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2457, 10, 'X8MLVC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2458, 10, 'UJVHCU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2459, 10, 'AYPRPE', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2460, 10, 'YLMLKO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2461, 10, 'KYGFLX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2462, 10, 'YLFCWV', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2463, 10, '9PJKFA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2464, 10, 'KTJVCI', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2465, 10, 'HFHKLY', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2466, 10, '6RYAHL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2467, 10, 'BAEBHL', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2468, 10, '51KAFC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2469, 10, '88RMIF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2470, 10, 'PAFTAR', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2471, 10, 'R6UTOZ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2472, 10, 'X4I2T9', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2473, 10, 'RKRTNG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2474, 10, 'TME821', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2475, 10, '4ZCJDQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2476, 10, 'QADQ1E', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2477, 10, 'HNLCJD', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2478, 10, 'J13LFW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2479, 10, 'BMW5VU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2480, 10, 'JHBHVT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2481, 10, 'RANZL2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2482, 10, 'ZRWZEW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2483, 10, 'OF0SSK', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2484, 10, 'EHSDQ3', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2485, 10, 'BANSHM', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2486, 10, 'OEDEAF', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2487, 10, 'DMJNDX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2488, 10, '4Q3YKN', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2489, 10, 'GXIR1B', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2490, 10, 'W0HOCC', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2491, 10, '7N8ZQ2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2492, 10, 'ZAVCSB', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2493, 10, 'AAOYUO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2494, 10, 'KBDYWT', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2495, 10, 'FUVMDQ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2496, 10, 'AXCKX2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2497, 10, 'H5U34C', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2498, 10, 'RGWZPJ', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2499, 10, 'ZMR72Q', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2500, 10, 'NV7E8M', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2501, 10, 'QTRVA7', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2502, 10, '5VWEFW', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2503, 10, 'GG0QBG', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2504, 10, 'TEKYB2', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2505, 10, 'NR3OMX', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2506, 10, 'QZYR6X', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2507, 10, 'DSVAKP', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2508, 10, 'ZQJHEO', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2509, 10, 'AIDTBH', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2510, 10, 'FHHDHU', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2511, 10, 'Q6QQTA', 'Coffee Body Scrub', 'PureNaturals', 'Suspended', NULL, 'M', '2026-03-30 14:37:17', '2026-04-03 04:15:12'),
(2512, 11, 'A1XTFBX', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2513, 11, '2I669ZU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2514, 11, 'H8HHTU1', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2515, 11, '4UB0BST', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2516, 11, 'MSUATBM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2517, 11, 'VPFIAC5', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2518, 11, 'O6Y63KE', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2519, 11, 'MMDGUBE', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2520, 11, 'TGMUWDQ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2521, 11, 'WH5DK6I', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2522, 11, 'DZ8ATEC', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2523, 11, 'ZJH7C5G', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2524, 11, 'GRYLDSL', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2525, 11, 'VQAJWIO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2526, 11, 'EAVJZI0', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2527, 11, '4EHCBNE', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2528, 11, 'Y0ODLSN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2529, 11, '4GEPBNS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2530, 11, 'GOWVITN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2531, 11, 'EYF90KB', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2532, 11, 'QAWDXNF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2533, 11, 'XBMZPK7', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2534, 11, 'VNRZ0IQ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2535, 11, 'PRI4JTZ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2536, 11, 'ZCV4JOM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2537, 11, '02PFCUQ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2538, 11, 'GHAIXEM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2539, 11, 'JGK2AQL', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2540, 11, 'GBYYNFH', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2541, 11, 'UCMXYQ4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2542, 11, '2KGIBOV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2543, 11, 'KRSGOUY', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2544, 11, 'J6DTYOJ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2545, 11, 'S95EGLB', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2546, 11, 'PEQRRZU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2547, 11, 'M03CMHM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2548, 11, '1ASQMWI', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2549, 11, 'X1KMNI0', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2550, 11, 'VB3DP4G', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2551, 11, '3C58BWV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2552, 11, '5GRQ9QD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2553, 11, 'RDOFP6G', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2554, 11, 'L2P15JO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2555, 11, 'MBCYB0D', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2556, 11, 'MEBL3RW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2557, 11, 'DZ8CBX4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2558, 11, 'SETT1RQ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2559, 11, '86YRZBT', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2560, 11, 'A3EBGHJ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2561, 11, 'LF96RY3', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2562, 11, 'D0IN2WL', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2563, 11, 'BWBNN6A', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2564, 11, 'W2QECJ1', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2565, 11, 'TJHLMUX', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2566, 11, 'XK894LU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2567, 11, 'I0RGIM1', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2568, 11, 'JFKYNBN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2569, 11, 'L61CL0C', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2570, 11, 'M902TLL', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2571, 11, 'MQRKLRD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2572, 11, '9ZT7K1H', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2573, 11, '92DJLDP', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2574, 11, 'IZ9K75V', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2575, 11, 'GYRZIBS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2576, 11, 'ZM7O1AS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2577, 11, 'OOKX4BE', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2578, 11, 'LUHC8UV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2579, 11, 'UFSCWIG', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2580, 11, '0VAMH0Q', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2581, 11, 'NDZRFJI', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2582, 11, 'TQTGJPH', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2583, 11, 'M1ZB93V', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2584, 11, 'IWF7MUJ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2585, 11, '271CB2H', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2586, 11, 'VAMIUK2', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2587, 11, '1DD7FHO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2588, 11, 'V5TOJ3N', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2589, 11, 'QTC9EYN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2590, 11, 'I6WI8DG', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2591, 11, '1PUWMXN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2592, 11, 'ATE1HLE', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2593, 11, 'MT6GB8L', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2594, 11, 'EKWLGNS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2595, 11, '8V4TTXD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2596, 11, 'RAPV0YM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2597, 11, 'YPVRXDD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2598, 11, 'AJBI1RM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2599, 11, 'BNGVPL4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2600, 11, '3CPOMAB', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2601, 11, 'QEGSDWP', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2602, 11, 'FKI3DPK', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2603, 11, '3HEBJZW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2604, 11, 'HGNXOTW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2605, 11, 'GH2HTNI', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2606, 11, 'X6FDRSP', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2607, 11, '1CITCIJ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2608, 11, '6IY07IU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2609, 11, '5EER9SQ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2610, 11, '2XLNRHK', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2611, 11, 'RSHZNGI', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2612, 11, '7LVY9X1', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2613, 11, 'ZXJCFDS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2614, 11, 'N99Q8YF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2615, 11, 'NF2URIT', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2616, 11, 'ZI18VVF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2617, 11, 'KGKBQAS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2618, 11, 'NRN0LIV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2619, 11, 'TKR8BVC', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2620, 11, 'MBCGR68', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2621, 11, '8NIOECY', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2622, 11, 'NP8VJTK', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2623, 11, 'FHMFIUH', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2624, 11, 'DH7FJNO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2625, 11, 'NZLVJSW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2626, 11, 'WEIFDHG', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2627, 11, 'GHP0E8R', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2628, 11, 'X36DK5Z', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2629, 11, 'PIDNYHU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2630, 11, 'P5SNISK', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2631, 11, 'ALYMRVV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2632, 11, '2LJD4WF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2633, 11, 'OBPAFI6', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2634, 11, 'DLMQIOV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2635, 11, 'ZQYQB1I', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2636, 11, 'UUUQAKD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2637, 11, '6EP7UVY', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2638, 11, 'Z1TLSNW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2639, 11, 'TZZLP5K', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2640, 11, 'GUFMULH', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2641, 11, '5XQOIAD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2642, 11, 'ULZ5JPV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2643, 11, 'BBZCL7R', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2644, 11, 'Q9GZ0HR', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2645, 11, 'OZPOO7R', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2646, 11, 'AKRHJ7F', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2647, 11, 'YJDVPM7', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2648, 11, 'WXC8GJ4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2649, 11, 'YFSRBVP', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2650, 11, '9PSEGYU', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2651, 11, 'RXDEJ8W', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2652, 11, 'NZ19XVB', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2653, 11, '0U2IBXJ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2654, 11, 'WTJOIYW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2655, 11, 'X2VY5HK', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2656, 11, 'PNBGFI6', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2657, 11, 'MPMBOAN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2658, 11, 'FH9HAB2', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2659, 11, 'HOGQTWW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2660, 11, '1A0SFL8', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2661, 11, 'AXQ4RF5', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2662, 11, 'TIFOE2Q', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2663, 11, '3ARPXY9', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2664, 11, 'JV5RWAM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2665, 11, 'TMPVHOG', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2666, 11, 'KKRHD53', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2667, 11, 'OA3LGTD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2668, 11, '2NLQVVB', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2669, 11, '4GO47OD', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2670, 11, 'F8LASI9', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2671, 11, 'PUSLO0V', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2672, 11, 'W900X5Q', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2673, 11, 'EQSBFL9', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2674, 11, 'HUEDJP4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2675, 11, 'YN5I7NA', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2676, 11, '02QER5K', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2677, 11, 'IBVASEL', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2678, 11, 'BDD20XT', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2679, 11, '8DDFQYF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2680, 11, 'NF6NIWS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2681, 11, 'C8WCLSO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2682, 11, 'ZZERMGN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2683, 11, '1FA5PHZ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2684, 11, 'RJZHDQO', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2685, 11, '2STPDE3', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2686, 11, 'VYQFPMZ', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2687, 11, '7D3DX6B', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2688, 11, 'WKCRCYV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2689, 11, 'F5DQIW9', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2690, 11, 'VUKSTJV', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2691, 11, 'D0N9AS0', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2692, 11, 'MO6KXHG', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2693, 11, 'LSKNF46', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2694, 11, 'FZ73FX4', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2695, 11, 'TC5PC8N', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2696, 11, '2WFRAHX', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2697, 11, '5ELVWSN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2698, 11, 'UT1IWQM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2699, 11, 'ERQ46GF', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2700, 11, 'OBBASRS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2701, 11, 'HLV3I29', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2702, 11, 'A8Y4FCS', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2703, 11, '6RYOGHM', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2704, 11, 'CNKNA0V', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2705, 11, 'RQDJFQ8', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2706, 11, 'TOVUGYW', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2707, 11, 'JL1T0LY', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2708, 11, 'BT61VLN', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2709, 11, 'YXRY12C', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2710, 11, 'JY5YO6I', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05'),
(2711, 11, 'CAZRNCY', 'Luxury Rose EDP 30ml', 'Luxe Scents', 'Aktif', NULL, 'M', '2026-04-01 01:15:23', '2026-04-03 04:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Brand Owner',
  `status` tinyint NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'Super Admin', 1, NULL, '$2y$12$KTpz3JMBk1m28IgCOSna6.ESFDwhCn3Y3vtl6TEDM7OfAFHxf98yy', 'vOJ9lv3nsYWfSkboa9aFIDW0dABVVJLZuuLvoHbvnbfolDvpfh002dnf9Bdk', '2026-03-13 04:00:47', '2026-03-16 07:28:48'),
(3, 'Ibu Clara', 'ibu.clara@auto.local', 'Brand Owner', 0, NULL, '$2y$12$3odn0W4ctM2L2uGWyfeZ9u6eAa4euyny9b.yEjSB/iTS1Pq6UP9aO', NULL, '2026-03-16 03:14:47', '2026-03-16 07:29:49'),
(4, 'Bapak Owner', 'bapak.owner@auto.local', 'Brand Owner', 1, NULL, '$2y$12$5I4XefaBJwLKaAyXTln0Eug8WSOeP1Rwlols1n1KwwBSum.hrR.BW', NULL, '2026-03-16 03:14:48', '2026-04-03 02:48:31'),
(5, 'Viqhy', 'viqhy@gmail.com', 'Brand Owner', 1, NULL, '$2y$12$zQ8y.I/eEnjmqiUsm1F3ke.OuYKN67ZFr1JVWNzeMXRFjRg8yzj3q', 'kEnS3b9q6nwbJvlW0vofCj5jb5jWOHLOFlYg8Y5tXbdxMvv9ApiZ8lzDFvfY', '2026-03-16 06:54:57', '2026-04-07 08:31:31'),
(6, 'Anjay', 'anjay@gmail.com', 'Brand Owner', 0, NULL, '$2y$12$fp.bSi7BcshmfEvonX6CK.E./7dtipXOGxXbuUkLKh0DIMjMV1Hoq', NULL, '2026-04-03 06:09:27', '2026-04-03 09:01:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_settings_key_unique` (`key`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_brand_code_unique` (`brand_code`),
  ADD KEY `brands_owner_name_index` (`owner_name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_available_at_index` (`queue`,`reserved_at`,`available_at`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_parent_id_sort_order_index` (`parent_id`,`sort_order`);

--
-- Indexes for table `product_skus`
--
ALTER TABLE `product_skus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_skus_sku_code_unique` (`sku_code`),
  ADD KEY `product_skus_category_l1_id_foreign` (`category_l1_id`),
  ADD KEY `product_skus_category_l2_id_foreign` (`category_l2_id`),
  ADD KEY `product_skus_brand_name_index` (`brand_id`,`name`),
  ADD KEY `product_skus_category_l3_index` (`category_l3_id`);

--
-- Indexes for table `scan_activities`
--
ALTER TABLE `scan_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scan_activities_tag_code_id_foreign` (`tag_code_id`),
  ADD KEY `scan_activities_code_scanned_index` (`verification_code`,`scanned_at`),
  ADD KEY `scan_activities_status_scanned_index` (`result_status`,`scanned_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tag_batches`
--
ALTER TABLE `tag_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_batches_batch_code_unique` (`batch_code`),
  ADD KEY `tag_batches_created_by_foreign` (`created_by`),
  ADD KEY `tag_batches_status_created_index` (`status`,`created_at`);

--
-- Indexes for table `tag_codes`
--
ALTER TABLE `tag_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_codes_verification_code_unique` (`verification_code`),
  ADD KEY `tag_codes_batch_status_index` (`tag_batch_id`,`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `product_skus`
--
ALTER TABLE `product_skus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scan_activities`
--
ALTER TABLE `scan_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tag_batches`
--
ALTER TABLE `tag_batches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag_codes`
--
ALTER TABLE `tag_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2712;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_skus`
--
ALTER TABLE `product_skus`
  ADD CONSTRAINT `product_skus_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_skus_category_l1_id_foreign` FOREIGN KEY (`category_l1_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_skus_category_l2_id_foreign` FOREIGN KEY (`category_l2_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_skus_category_l3_id_foreign` FOREIGN KEY (`category_l3_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `scan_activities`
--
ALTER TABLE `scan_activities`
  ADD CONSTRAINT `scan_activities_tag_code_id_foreign` FOREIGN KEY (`tag_code_id`) REFERENCES `tag_codes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tag_batches`
--
ALTER TABLE `tag_batches`
  ADD CONSTRAINT `tag_batches_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tag_codes`
--
ALTER TABLE `tag_codes`
  ADD CONSTRAINT `tag_codes_tag_batch_id_foreign` FOREIGN KEY (`tag_batch_id`) REFERENCES `tag_batches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
