-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2023 at 02:20 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'name', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(28, 5, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 4),
(29, 5, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 5),
(30, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 6, 'name', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(32, 6, 'code', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 3),
(33, 6, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 4),
(34, 6, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 5),
(35, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 7, 'product_category_id', 'text', 'Product Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(37, 7, 'product_variant_id', 'text', 'Product Variant Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(38, 7, 'product_unit_id', 'text', 'Product Unit Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(39, 7, 'code', 'hidden', 'SKU', 0, 1, 1, 1, 1, 1, '{}', 5),
(40, 7, 'name', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 6),
(41, 7, 'price', 'number', 'Harga', 0, 1, 1, 1, 1, 1, '{}', 9),
(42, 7, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 11),
(43, 7, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 12),
(44, 7, 'product_belongsto_product_unit_relationship', 'relationship', 'Unit', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductUnit\",\"table\":\"product_units\",\"type\":\"belongsTo\",\"column\":\"product_unit_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(45, 7, 'product_belongsto_product_variant_relationship', 'relationship', 'Varian', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductVariant\",\"table\":\"product_variants\",\"type\":\"belongsTo\",\"column\":\"product_variant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(46, 7, 'product_belongsto_product_category_relationship', 'relationship', 'Kategori', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(47, 5, 'code', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 3),
(48, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 8, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(51, 8, 'remaining_amount_of_items', 'number', 'Net', 0, 1, 1, 1, 1, 1, '{}', 6),
(52, 8, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 7),
(53, 8, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 8),
(54, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 9, 'product_id', 'hidden', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(56, 9, 'qty', 'text', 'Qty', 0, 1, 1, 1, 1, 1, '{}', 5),
(57, 9, 'total_price', 'hidden', 'Total Harga', 0, 1, 1, 1, 1, 1, '{}', 7),
(58, 9, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 8),
(59, 9, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 9),
(60, 9, 'incoming_stock_belongsto_product_relationship', 'relationship', 'Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(62, 9, 'incoming_stock_belongsto_product_relationship_1', 'relationship', 'SKU', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(63, 9, 'incoming_stock_belongsto_product_relationship_2', 'relationship', 'Harga', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"price\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(64, 8, 'stock_belongsto_product_relationship', 'relationship', 'Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(65, 8, 'stock_belongsto_product_relationship_1', 'relationship', 'SKU', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(66, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 10, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 10, 'qty', 'text', 'Qty', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 10, 'total_price', 'hidden', 'Total Harga', 0, 1, 1, 1, 1, 1, '{}', 7),
(70, 10, 'created_at', 'timestamp', 'Dibuat Saat', 0, 1, 1, 1, 0, 1, '{}', 8),
(71, 10, 'updated_at', 'timestamp', 'Diperbarui Saat', 0, 0, 0, 0, 0, 0, '{}', 9),
(72, 10, 'outgoing_stock_belongsto_product_relationship', 'relationship', 'SKU', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(73, 10, 'outgoing_stock_belongsto_product_relationship_1', 'relationship', 'Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(74, 10, 'outgoing_stock_belongsto_product_relationship_2', 'relationship', 'Harga', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"price\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(4, 'product_units', 'product-units', 'Unit', 'Unit', 'voyager-list', 'App\\Models\\ProductUnit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-18 19:28:44', '2023-02-18 19:35:39'),
(5, 'product_variants', 'product-variants', 'Varian', 'Varian', 'voyager-list', 'App\\Models\\ProductVariant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-18 19:34:50', '2023-02-19 05:59:10'),
(6, 'product_categories', 'product-categories', 'Kategori', 'Kategori', 'voyager-list', 'App\\Models\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(7, 'products', 'products', 'Produk', 'Produk', 'voyager-archive', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 02:43:29', '2023-02-21 14:55:30'),
(8, 'stocks', 'stocks', 'Inventory Master', 'Inventory Master', 'voyager-data', 'App\\Models\\Stock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 06:33:03', '2023-02-19 13:16:12'),
(9, 'incoming_stocks', 'incoming-stocks', 'Stock In', 'Stock In', 'voyager-double-down', 'App\\Models\\IncomingStock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-19 06:51:42', '2023-02-19 11:55:27'),
(10, 'outgoing_stocks', 'outgoing-stocks', 'Stock Out', 'Stock Out', 'voyager-double-up', 'App\\Models\\OutgoingStock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-20 04:17:14', '2023-02-20 14:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incoming_stocks`
--

CREATE TABLE `incoming_stocks` (
  `id` int UNSIGNED NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incoming_stocks`
--

INSERT INTO `incoming_stocks` (`id`, `product_id`, `qty`, `total_price`, `created_at`, `updated_at`) VALUES
(5, 8, 10, '50000', '2023-02-20 04:42:07', '2023-02-20 04:42:07'),
(6, 8, 5, '25000', '2023-02-20 14:54:53', '2023-02-20 14:54:53'),
(7, 9, 17, '204000', '2023-02-21 14:52:06', '2023-02-21 14:52:06'),
(8, 9, 1, '12000', '2023-02-21 14:52:33', '2023-02-21 14:52:33'),
(9, 9, 3, '36000', '2023-02-22 16:39:44', '2023-02-22 16:39:44'),
(10, 9, 20, '240000', '2023-02-22 17:21:05', '2023-02-22 17:21:05'),
(11, 10, 10, '70000', '2023-02-23 13:38:29', '2023-02-23 13:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-02-16 00:19:17', '2023-02-16 00:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-02-16 00:19:17', '2023-02-16 00:19:17', 'voyager.dashboard', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-02-16 00:19:17', '2023-02-16 00:19:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-02-16 00:19:17', '2023-02-16 00:19:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-02-16 00:19:17', '2023-02-20 08:28:46', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-02-16 00:19:17', '2023-02-18 19:31:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-02-16 00:19:17', '2023-02-18 19:31:10', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-02-16 00:19:17', '2023-02-18 19:31:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-02-16 00:19:17', '2023-02-18 19:31:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2023-02-16 00:19:17', '2023-02-20 08:28:46', 'voyager.settings.index', NULL),
(11, 1, 'Unit', '', '_self', 'voyager-list', '#000000', 12, 3, '2023-02-18 19:28:44', '2023-02-20 08:28:46', 'voyager.product-units.index', 'null'),
(12, 1, 'Atribut Produk', '', '_self', 'voyager-list', '#000000', NULL, 5, '2023-02-18 19:31:54', '2023-02-20 08:28:46', NULL, ''),
(13, 1, 'Varian', '', '_self', 'voyager-list', NULL, 12, 2, '2023-02-18 19:34:50', '2023-02-20 08:28:46', 'voyager.product-variants.index', NULL),
(14, 1, 'Kategori', '', '_self', 'voyager-list', NULL, 12, 1, '2023-02-19 02:38:10', '2023-02-20 08:28:46', 'voyager.product-categories.index', NULL),
(15, 1, 'Produk', '', '_self', 'voyager-archive', NULL, NULL, 4, '2023-02-19 02:43:29', '2023-02-19 06:33:09', 'voyager.products.index', NULL),
(16, 1, 'Inventory Master', '', '_self', 'voyager-data', NULL, NULL, 6, '2023-02-19 06:33:03', '2023-02-20 08:28:46', 'voyager.stocks.index', NULL),
(17, 1, 'Stock In', '', '_self', 'voyager-double-down', NULL, NULL, 7, '2023-02-19 06:51:42', '2023-02-20 08:28:46', 'voyager.incoming-stocks.index', NULL),
(18, 1, 'Stock Out', '', '_self', 'voyager-double-up', NULL, NULL, 8, '2023-02-20 04:17:14', '2023-02-20 08:28:46', 'voyager.outgoing-stocks.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_stocks`
--

CREATE TABLE `outgoing_stocks` (
  `id` int UNSIGNED NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outgoing_stocks`
--

INSERT INTO `outgoing_stocks` (`id`, `product_id`, `qty`, `total_price`, `created_at`, `updated_at`) VALUES
(3, 8, 2, '10000', '2023-02-21 14:48:17', '2023-02-21 14:48:17'),
(4, 9, 2, '24000', '2023-02-21 14:52:16', '2023-02-21 14:52:16'),
(5, 9, 8, '96000', '2023-02-22 16:39:08', '2023-02-22 16:39:08'),
(6, 10, 2, '14000', '2023-02-23 13:39:30', '2023-02-23 13:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(2, 'browse_bread', NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(3, 'browse_database', NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(4, 'browse_media', NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(5, 'browse_compass', NULL, '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(6, 'browse_menus', 'menus', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(7, 'read_menus', 'menus', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(8, 'edit_menus', 'menus', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(9, 'add_menus', 'menus', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(10, 'delete_menus', 'menus', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(11, 'browse_roles', 'roles', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(12, 'read_roles', 'roles', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(13, 'edit_roles', 'roles', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(14, 'add_roles', 'roles', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(15, 'delete_roles', 'roles', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(16, 'browse_users', 'users', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(17, 'read_users', 'users', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(18, 'edit_users', 'users', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(19, 'add_users', 'users', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(20, 'delete_users', 'users', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(21, 'browse_settings', 'settings', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(22, 'read_settings', 'settings', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(23, 'edit_settings', 'settings', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(24, 'add_settings', 'settings', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(25, 'delete_settings', 'settings', '2023-02-16 00:19:17', '2023-02-16 00:19:17'),
(26, 'browse_product_units', 'product_units', '2023-02-18 19:28:44', '2023-02-18 19:28:44'),
(27, 'read_product_units', 'product_units', '2023-02-18 19:28:44', '2023-02-18 19:28:44'),
(28, 'edit_product_units', 'product_units', '2023-02-18 19:28:44', '2023-02-18 19:28:44'),
(29, 'add_product_units', 'product_units', '2023-02-18 19:28:44', '2023-02-18 19:28:44'),
(30, 'delete_product_units', 'product_units', '2023-02-18 19:28:44', '2023-02-18 19:28:44'),
(31, 'browse_product_variants', 'product_variants', '2023-02-18 19:34:50', '2023-02-18 19:34:50'),
(32, 'read_product_variants', 'product_variants', '2023-02-18 19:34:50', '2023-02-18 19:34:50'),
(33, 'edit_product_variants', 'product_variants', '2023-02-18 19:34:50', '2023-02-18 19:34:50'),
(34, 'add_product_variants', 'product_variants', '2023-02-18 19:34:50', '2023-02-18 19:34:50'),
(35, 'delete_product_variants', 'product_variants', '2023-02-18 19:34:50', '2023-02-18 19:34:50'),
(36, 'browse_product_categories', 'product_categories', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(37, 'read_product_categories', 'product_categories', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(38, 'edit_product_categories', 'product_categories', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(39, 'add_product_categories', 'product_categories', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(40, 'delete_product_categories', 'product_categories', '2023-02-19 02:38:09', '2023-02-19 02:38:09'),
(41, 'browse_products', 'products', '2023-02-19 02:43:29', '2023-02-19 02:43:29'),
(42, 'read_products', 'products', '2023-02-19 02:43:29', '2023-02-19 02:43:29'),
(43, 'edit_products', 'products', '2023-02-19 02:43:29', '2023-02-19 02:43:29'),
(44, 'add_products', 'products', '2023-02-19 02:43:29', '2023-02-19 02:43:29'),
(45, 'delete_products', 'products', '2023-02-19 02:43:29', '2023-02-19 02:43:29'),
(46, 'browse_stocks', 'stocks', '2023-02-19 06:33:03', '2023-02-19 06:33:03'),
(47, 'read_stocks', 'stocks', '2023-02-19 06:33:03', '2023-02-19 06:33:03'),
(48, 'edit_stocks', 'stocks', '2023-02-19 06:33:03', '2023-02-19 06:33:03'),
(49, 'add_stocks', 'stocks', '2023-02-19 06:33:03', '2023-02-19 06:33:03'),
(50, 'delete_stocks', 'stocks', '2023-02-19 06:33:03', '2023-02-19 06:33:03'),
(51, 'browse_incoming_stocks', 'incoming_stocks', '2023-02-19 06:51:42', '2023-02-19 06:51:42'),
(52, 'read_incoming_stocks', 'incoming_stocks', '2023-02-19 06:51:42', '2023-02-19 06:51:42'),
(53, 'edit_incoming_stocks', 'incoming_stocks', '2023-02-19 06:51:42', '2023-02-19 06:51:42'),
(54, 'add_incoming_stocks', 'incoming_stocks', '2023-02-19 06:51:42', '2023-02-19 06:51:42'),
(55, 'delete_incoming_stocks', 'incoming_stocks', '2023-02-19 06:51:42', '2023-02-19 06:51:42'),
(56, 'browse_outgoing_stocks', 'outgoing_stocks', '2023-02-20 04:17:14', '2023-02-20 04:17:14'),
(57, 'read_outgoing_stocks', 'outgoing_stocks', '2023-02-20 04:17:14', '2023-02-20 04:17:14'),
(58, 'edit_outgoing_stocks', 'outgoing_stocks', '2023-02-20 04:17:14', '2023-02-20 04:17:14'),
(59, 'add_outgoing_stocks', 'outgoing_stocks', '2023-02-20 04:17:14', '2023-02-20 04:17:14'),
(60, 'delete_outgoing_stocks', 'outgoing_stocks', '2023-02-20 04:17:14', '2023-02-20 04:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
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
(51, 1),
(52, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `product_category_id` bigint DEFAULT NULL,
  `product_variant_id` bigint DEFAULT NULL,
  `product_unit_id` bigint DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `product_variant_id`, `product_unit_id`, `code`, `name`, `price`, `created_at`, `updated_at`) VALUES
(8, 1, 3, 1, 'FES0008GP', 'Ghina Putri Harani', '5000', '2023-02-20 04:35:29', '2023-02-20 04:35:29'),
(9, 2, 4, 2, 'BB0009SS', 'Butterfly Backs', '12000', '2023-02-21 14:51:00', '2023-02-23 01:43:19'),
(10, 3, 3, 1, 'TK0010GP', 'Butterfly Backs Tes', '7000', '2023-02-23 13:31:06', '2023-02-23 13:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Anting', 'FES', '2023-02-19 02:38:35', '2023-02-19 02:38:35'),
(2, 'Butterfly Backs', 'BB', '2023-02-19 02:38:48', '2023-02-19 02:38:48'),
(3, 'Tes Kategori', 'TK', '2023-02-23 13:30:20', '2023-02-23 13:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_units`
--

CREATE TABLE `product_units` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_units`
--

INSERT INTO `product_units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pair', '2023-02-18 19:32:37', '2023-02-18 19:32:37'),
(2, 'Pcs', '2023-02-18 19:32:00', '2023-02-19 02:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(3, 'Gold', 'GP', '2023-02-19 05:59:41', '2023-02-19 05:59:41'),
(4, 'Silver', 'SS', '2023-02-19 05:59:47', '2023-02-19 05:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-02-16 00:19:17', '2023-02-16 00:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Inventory Management', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Inventory Management', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\February2023\\KLd4EzfpDmWJC7N3jULq.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Inventory', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Admin Dashboard', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int UNSIGNED NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `remaining_amount_of_items` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `remaining_amount_of_items`, `created_at`, `updated_at`) VALUES
(5, 8, 13, '2023-02-20 04:35:29', '2023-02-21 14:48:17'),
(6, 9, 31, '2023-02-21 14:51:52', '2023-02-22 17:21:05'),
(7, 10, 8, '2023-02-23 13:31:06', '2023-02-23 13:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Diana Dwita', 'diana@gmail.com', 'users/default.png', NULL, '$2y$10$6JmJrLrL.ON1GQ2YSoDTWuwv2FLwKWG3qXDEPd8PH703c9as.wBxe', 'JvSGhS7OXC8fOJycRro6WyCKvZiPcbeGaNFT487bRjQxuIZhtNPdHowDoFfH', NULL, '2023-02-16 00:20:06', '2023-02-16 00:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incoming_stocks`
--
ALTER TABLE `incoming_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoing_stocks`
--
ALTER TABLE `outgoing_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incoming_stocks`
--
ALTER TABLE `incoming_stocks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `outgoing_stocks`
--
ALTER TABLE `outgoing_stocks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
