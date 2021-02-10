-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 09:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autisticchild`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(23, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 8),
(24, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 9),
(25, 1, 'current_team_id', 'text', 'Current Team Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(26, 1, 'profile_photo_path', 'text', 'Profile Photo Path', 0, 1, 1, 1, 1, 1, '{}', 13),
(27, 1, 'childname', 'text', 'Childname', 0, 1, 1, 1, 1, 1, '{}', 16),
(28, 10, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(29, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(30, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(31, 10, 'childName', 'text', 'ChildName', 1, 1, 1, 1, 1, 1, '{}', 4),
(32, 10, 'pulsevalues', 'text', 'Pulsevalues', 1, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-01-18 06:51:53', '2021-01-18 08:39:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(10, 'pulses', 'pulses', 'Pulse', 'Pulses', 'h', 'App\\Models\\Pulse', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-04 07:07:33', '2021-02-05 08:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `childName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-01-18 06:51:53', '2021-01-18 06:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-01-18 06:51:53', '2021-01-18 06:51:53', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-01-18 06:51:53', '2021-01-18 06:51:53', 'voyager.hooks', NULL),
(12, 1, 'Pulses', '', '_self', NULL, NULL, NULL, 15, '2021-02-04 07:07:35', '2021-02-04 07:07:35', 'voyager.pulses.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2020_05_21_100000_create_teams_table', 1),
(27, '2020_05_21_200000_create_team_user_table', 1),
(28, '2020_05_21_300000_create_team_invitations_table', 1),
(29, '2021_01_18_094602_create_sessions_table', 1),
(32, '2021_01_18_110747_add_childname_tousers', 2),
(33, '2021_02_05_060424_create_location_table', 3),
(34, '2021_02_07_154058_add_phonenumber_register', 4);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(2, 'browse_bread', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(3, 'browse_database', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(4, 'browse_media', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(5, 'browse_compass', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(6, 'browse_menus', 'menus', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(7, 'read_menus', 'menus', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(8, 'edit_menus', 'menus', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(9, 'add_menus', 'menus', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(10, 'delete_menus', 'menus', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(11, 'browse_roles', 'roles', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(12, 'read_roles', 'roles', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(13, 'edit_roles', 'roles', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(14, 'add_roles', 'roles', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(15, 'delete_roles', 'roles', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(16, 'browse_users', 'users', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(17, 'read_users', 'users', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(18, 'edit_users', 'users', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(19, 'add_users', 'users', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(20, 'delete_users', 'users', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(21, 'browse_settings', 'settings', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(22, 'read_settings', 'settings', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(23, 'edit_settings', 'settings', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(24, 'add_settings', 'settings', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(25, 'delete_settings', 'settings', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(26, 'browse_hooks', NULL, '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(27, 'browse_pulses', 'pulses', '2021-02-04 07:07:35', '2021-02-04 07:07:35'),
(28, 'read_pulses', 'pulses', '2021-02-04 07:07:35', '2021-02-04 07:07:35'),
(29, 'edit_pulses', 'pulses', '2021-02-04 07:07:35', '2021-02-04 07:07:35'),
(30, 'add_pulses', 'pulses', '2021-02-04 07:07:35', '2021-02-04 07:07:35'),
(31, 'delete_pulses', 'pulses', '2021-02-04 07:07:35', '2021-02-04 07:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
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
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulses`
--

CREATE TABLE `pulses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `childName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pulsevalues` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childLatitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childLongitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulses`
--

INSERT INTO `pulses` (`id`, `created_at`, `updated_at`, `childName`, `pulsevalues`, `childLatitude`, `childLongitude`) VALUES
(29, '2020-12-29 05:21:14', '2020-12-29 05:21:14', 'Miriam Mmboga', '108', '0', ''),
(30, '2020-12-29 05:21:40', '2020-12-29 05:21:40', 'Miriam Mmboga', '54', '0', ''),
(31, '2020-12-29 05:22:05', '2020-12-29 05:22:05', 'Miriam Mmboga', '54', '0', ''),
(32, '2020-12-29 05:22:30', '2020-12-29 05:22:30', 'Miriam Mmboga', '162', '0', ''),
(33, '2020-12-29 05:22:55', '2020-12-29 05:22:55', 'Miriam Mmboga', '132', '0', ''),
(34, '2020-12-29 05:23:20', '2020-12-29 05:23:20', 'Miriam Mmboga', '108', '0', ''),
(35, '2020-12-29 05:23:46', '2020-12-29 05:23:46', 'Miriam Mmboga', '120', '0', ''),
(36, '2020-12-29 05:24:11', '2020-12-29 05:24:11', 'Miriam Mmboga', '132', '0', ''),
(37, '2020-12-29 05:24:36', '2020-12-29 05:24:36', 'Miriam Mmboga', '156', '0', ''),
(38, '2020-12-29 05:25:01', '2020-12-29 05:25:01', 'Miriam Mmboga', '150', '0', ''),
(39, '2020-12-29 05:25:27', '2020-12-29 05:25:27', 'Miriam Mmboga', '168', '0', ''),
(40, '2020-12-29 05:25:54', '2020-12-29 05:25:54', 'Miriam Mmboga', '138', '0', ''),
(41, '2020-12-29 05:26:19', '2020-12-29 05:26:19', 'Miriam Mmboga', '126', '0', ''),
(42, '2020-12-29 05:26:45', '2020-12-29 05:26:45', 'Miriam Mmboga', '162', '0', ''),
(43, '2020-12-29 05:27:10', '2020-12-29 05:27:10', 'Miriam Mmboga', '156', '0', ''),
(44, '2020-12-29 05:27:35', '2020-12-29 05:27:35', 'Miriam Mmboga', '84', '0', ''),
(45, '2020-12-29 05:28:00', '2020-12-29 05:28:00', 'Miriam Mmboga', '96', '0', ''),
(46, '2020-12-29 05:28:25', '2020-12-29 05:28:25', 'Miriam Mmboga', '114', '0', ''),
(47, '2020-12-29 05:28:50', '2020-12-29 05:28:50', 'Miriam Mmboga', '138', '0', ''),
(48, '2020-12-29 05:29:15', '2020-12-29 05:29:15', 'Miriam Mmboga', '162', '0', ''),
(49, '2020-12-29 05:29:41', '2020-12-29 05:29:41', 'Miriam Mmboga', '108', '0', ''),
(50, '2020-12-29 05:30:06', '2020-12-29 05:30:06', 'Miriam Mmboga', '60', '0', ''),
(51, '2020-12-29 05:30:31', '2020-12-29 05:30:31', 'Miriam Mmboga', '72', '0', ''),
(52, '2020-12-29 05:30:56', '2020-12-29 05:30:56', 'Miriam Mmboga', '54', '0', ''),
(53, '2020-12-29 05:31:21', '2020-12-29 05:31:21', 'Miriam Mmboga', '108', '0', ''),
(54, '2020-12-29 05:31:46', '2020-12-29 05:31:46', 'Miriam Mmboga', '72', '0', ''),
(55, '2020-12-29 05:32:11', '2020-12-29 05:32:11', 'Miriam Mmboga', '90', '0', ''),
(56, '2020-12-29 05:32:37', '2020-12-29 05:32:37', 'Miriam Mmboga', '96', '0', ''),
(57, '2020-12-29 05:33:02', '2020-12-29 05:33:02', 'Miriam Mmboga', '66', '0', ''),
(58, '2021-01-02 04:06:03', '2021-01-02 04:06:03', 'Miriam Mmboga', '54', '0', ''),
(59, '2021-02-05 03:54:23', '2021-02-05 03:54:23', 'Simon Lawrence', '54', '0', ''),
(60, '2021-02-05 03:54:48', '2021-02-05 03:54:48', 'Simon Lawrence', '138', '0', ''),
(61, '2021-02-05 03:55:13', '2021-02-05 03:55:13', 'Simon Lawrence', '114', '0', ''),
(62, '2021-02-05 03:55:38', '2021-02-05 03:55:38', 'Simon Lawrence', '120', '0', ''),
(63, '2021-02-05 03:56:03', '2021-02-05 03:56:03', 'Simon Lawrence', '66', '0', ''),
(64, '2021-02-05 03:56:28', '2021-02-05 03:56:28', 'Simon Lawrence', '96', '0', ''),
(65, '2021-02-05 03:56:53', '2021-02-05 03:56:53', 'Simon Lawrence', '102', '0', ''),
(66, '2021-02-05 03:57:18', '2021-02-05 03:57:18', 'Simon Lawrence', '132', '0', ''),
(67, '2021-02-05 03:57:44', '2021-02-05 03:57:44', 'Simon Lawrence', '54', '0', ''),
(68, '2021-02-05 03:58:09', '2021-02-05 03:58:09', 'Simon Lawrence', '54', '0', ''),
(69, '2021-02-05 03:58:34', '2021-02-05 03:58:34', 'Simon Lawrence', '54', '0', ''),
(70, '2021-02-05 03:58:59', '2021-02-05 03:58:59', 'Simon Lawrence', '90', '0', ''),
(71, '2021-02-05 03:59:24', '2021-02-05 03:59:24', 'Simon Lawrence', '90', '0', ''),
(72, '2021-02-05 03:59:50', '2021-02-05 03:59:50', 'Simon Lawrence', '54', '0', ''),
(73, '2021-02-05 04:00:15', '2021-02-05 04:00:15', 'Simon Lawrence', '54', '0', ''),
(74, '2021-02-05 04:00:40', '2021-02-05 04:00:40', 'Simon Lawrence', '54', '0', ''),
(75, '2021-02-05 04:01:05', '2021-02-05 04:01:05', 'Simon Lawrence', '54', '0', ''),
(76, '2021-02-05 04:01:30', '2021-02-05 04:01:30', 'Simon Lawrence', '54', '0', ''),
(77, '2021-02-05 04:01:56', '2021-02-05 04:01:56', 'Simon Lawrence', '54', '0', ''),
(78, '2021-02-05 04:02:21', '2021-02-05 04:02:21', 'Simon Lawrence', '60', '0', ''),
(79, '2021-02-05 04:02:46', '2021-02-05 04:02:46', 'Simon Lawrence', '60', '0', ''),
(80, '2021-02-05 04:03:11', '2021-02-05 04:03:11', 'Simon Lawrence', '84', '0', ''),
(81, '2021-02-05 04:03:36', '2021-02-05 04:03:36', 'Simon Lawrence', '54', '0', ''),
(82, '2021-02-05 04:04:01', '2021-02-05 04:04:01', 'Simon Lawrence', '72', '0', ''),
(83, '2021-02-05 04:04:26', '2021-02-05 04:04:26', 'Simon Lawrence', '102', '0', ''),
(84, '2021-02-05 04:04:51', '2021-02-05 04:04:51', 'Simon Lawrence', '54', '0', ''),
(85, '2021-02-05 04:05:16', '2021-02-05 04:05:16', 'Simon Lawrence', '66', '0', ''),
(86, '2021-02-05 04:05:41', '2021-02-05 04:05:41', 'Simon Lawrence', '54', '0', ''),
(87, '2021-02-05 04:06:06', '2021-02-05 04:06:06', 'Simon Lawrence', '54', '0', ''),
(88, '2021-02-05 04:06:31', '2021-02-05 04:06:31', 'Simon Lawrence', '54', '0', ''),
(89, '2021-02-05 04:06:56', '2021-02-05 04:06:56', 'Simon Lawrence', '66', '0', ''),
(90, '2021-02-05 04:07:21', '2021-02-05 04:07:21', 'Simon Lawrence', '54', '0', ''),
(91, '2021-02-05 04:07:46', '2021-02-05 04:07:46', 'Simon Lawrence', '54', '0', ''),
(92, '2021-02-05 04:08:11', '2021-02-05 04:08:11', 'Simon Lawrence', '78', '0', ''),
(93, '2021-02-05 04:08:36', '2021-02-05 04:08:36', 'Simon Lawrence', '54', '0', ''),
(94, '2021-02-05 04:09:01', '2021-02-05 04:09:01', 'Simon Lawrence', '72', '0', ''),
(95, '2021-02-05 04:09:27', '2021-02-05 04:09:27', 'Simon Lawrence', '66', '0', ''),
(96, '2021-02-05 04:09:52', '2021-02-05 04:09:52', 'Simon Lawrence', '54', '0', ''),
(97, '2021-02-05 04:10:17', '2021-02-05 04:10:17', 'Simon Lawrence', '66', '0', ''),
(98, '2021-02-05 04:10:42', '2021-02-05 04:10:42', 'Simon Lawrence', '54', '0', ''),
(99, '2021-02-05 04:11:07', '2021-02-05 04:11:07', 'Simon Lawrence', '66', '0', ''),
(100, '2021-02-05 04:11:32', '2021-02-05 04:11:32', 'Simon Lawrence', '54', '0', ''),
(101, '2021-02-05 04:11:57', '2021-02-05 04:11:57', 'Simon Lawrence', '54', '0', ''),
(102, '2021-02-05 04:12:22', '2021-02-05 04:12:22', 'Simon Lawrence', '54', '0', ''),
(103, '2021-02-05 04:12:47', '2021-02-05 04:12:47', 'Simon Lawrence', '54', '0', ''),
(104, '2021-02-05 04:13:12', '2021-02-05 04:13:12', 'Simon Lawrence', '54', '0', ''),
(105, '2021-02-05 04:13:37', '2021-02-05 04:13:37', 'Simon Lawrence', '72', '0', ''),
(106, '2021-02-05 04:14:03', '2021-02-05 04:14:03', 'Simon Lawrence', '54', '0', ''),
(107, '2021-02-05 04:14:28', '2021-02-05 04:14:28', 'Simon Lawrence', '54', '0', ''),
(108, '2021-02-05 04:14:53', '2021-02-05 04:14:53', 'Simon Lawrence', '54', '0', ''),
(109, '2021-02-05 04:15:18', '2021-02-05 04:15:18', 'Simon Lawrence', '54', '0', ''),
(110, '2021-02-05 04:15:43', '2021-02-05 04:15:43', 'Simon Lawrence', '54', '0', ''),
(111, '2021-02-05 04:54:00', '2021-02-05 04:54:00', 'Simon Lawrence', '54', '0', ''),
(112, '2021-02-05 04:54:25', '2021-02-05 04:54:25', 'Simon Lawrence', '54', '0', ''),
(113, '2021-02-05 04:54:50', '2021-02-05 04:54:50', 'Simon Lawrence', '54', '0', ''),
(114, '2021-02-05 04:55:15', '2021-02-05 04:55:15', 'Simon Lawrence', '54', '0', ''),
(115, '2021-02-06 08:11:44', '2021-02-06 08:11:44', 'Simon Lawrence', '54', '0', ''),
(116, '2021-02-06 08:11:49', '2021-02-06 08:11:49', 'Simon Lawrence', '54', '0', ''),
(117, '2021-02-06 08:21:22', '2021-02-06 08:21:22', 'Simon Lawrence', '54', '0', ''),
(118, '2021-02-06 08:21:28', '2021-02-06 08:21:28', 'Simon Lawrence', '54', '0', ''),
(119, '2021-02-06 08:23:09', '2021-02-06 08:23:09', 'Simon Lawrence', '96', '0', ''),
(120, '2021-02-06 08:23:14', '2021-02-06 08:23:14', 'Simon Lawrence', '54', '0', ''),
(121, '2021-02-06 08:27:07', '2021-02-06 08:27:07', 'Simon Lawrence', '66', '0', ''),
(122, '2021-02-06 08:27:12', '2021-02-06 08:27:12', 'Simon Lawrence', '120', '0', ''),
(123, '2021-02-06 08:27:17', '2021-02-06 08:27:17', 'Simon Lawrence', '54', '0', ''),
(124, '2021-02-06 08:27:22', '2021-02-06 08:27:22', 'Simon Lawrence', '54', '0', ''),
(125, '2021-02-06 08:28:13', '2021-02-06 08:28:13', 'Simon Lawrence', '84', '0', ''),
(126, '2021-02-06 08:35:00', '2021-02-06 08:35:00', 'Simon Lawrence', '60', '0', ''),
(127, '2021-02-06 08:35:25', '2021-02-06 08:35:25', 'Simon Lawrence', '54', '0', ''),
(128, '2021-02-06 08:35:50', '2021-02-06 08:35:50', 'Simon Lawrence', '54', '0', ''),
(129, '2021-02-06 08:36:15', '2021-02-06 08:36:15', 'Simon Lawrence', '54', '0', ''),
(130, '2021-02-06 08:36:41', '2021-02-06 08:36:41', 'Simon Lawrence', '54', '0', ''),
(131, '2021-02-06 08:37:06', '2021-02-06 08:37:06', 'Simon Lawrence', '54', '0', ''),
(132, '2021-02-06 08:37:31', '2021-02-06 08:37:31', 'Simon Lawrence', '54', '0', ''),
(133, '2021-02-06 08:37:56', '2021-02-06 08:37:56', 'Simon Lawrence', '54', '0', ''),
(134, '2021-02-06 08:38:21', '2021-02-06 08:38:21', 'Simon Lawrence', '54', '0', ''),
(135, '2021-02-06 08:38:46', '2021-02-06 08:38:46', 'Simon Lawrence', '54', '0', ''),
(136, '2021-02-06 08:39:12', '2021-02-06 08:39:12', 'Simon Lawrence', '54', '0', ''),
(137, '2021-02-06 08:39:37', '2021-02-06 08:39:37', 'Simon Lawrence', '54', '0', ''),
(138, '2021-02-06 08:40:02', '2021-02-06 08:40:02', 'Simon Lawrence', '54', '0', ''),
(139, '2021-02-06 08:40:27', '2021-02-06 08:40:27', 'Simon Lawrence', '54', '0', ''),
(140, '2021-02-06 08:40:52', '2021-02-06 08:40:52', 'Simon Lawrence', '54', '0', ''),
(141, '2021-02-06 08:41:17', '2021-02-06 08:41:17', 'Simon Lawrence', '54', '0', ''),
(142, '2021-02-06 08:41:42', '2021-02-06 08:41:42', 'Simon Lawrence', '54', '0', ''),
(143, '2021-02-06 08:43:07', '2021-02-06 08:43:07', 'Agnes Judy', '66', '0', ''),
(144, '2021-02-06 08:43:32', '2021-02-06 08:43:32', 'Agnes Judy', '72', '0', ''),
(145, '2021-02-06 08:43:57', '2021-02-06 08:43:57', 'Agnes Judy', '54', '0', ''),
(146, '2021-02-06 08:44:22', '2021-02-06 08:44:22', 'Agnes Judy', '54', '0', ''),
(147, '2021-02-06 08:44:47', '2021-02-06 08:44:47', 'Agnes Judy', '54', '0', ''),
(148, '2021-02-06 08:45:12', '2021-02-06 08:45:12', 'Agnes Judy', '54', '0', ''),
(149, '2021-02-06 08:45:37', '2021-02-06 08:45:37', 'Agnes Judy', '54', '0', ''),
(150, '2021-02-06 08:46:03', '2021-02-06 08:46:03', 'Agnes Judy', '54', '0', ''),
(151, '2021-02-06 08:46:28', '2021-02-06 08:46:28', 'Agnes Judy', '54', '0', ''),
(152, '2021-02-06 08:46:53', '2021-02-06 08:46:53', 'Agnes Judy', '54', '0', ''),
(153, '2021-02-06 08:47:18', '2021-02-06 08:47:18', 'Agnes Judy', '54', '0', ''),
(154, '2021-02-06 08:47:43', '2021-02-06 08:47:43', 'Agnes Judy', '54', '0', ''),
(155, '2021-02-06 08:48:08', '2021-02-06 08:48:08', 'Agnes Judy', '54', '0', ''),
(156, '2021-02-06 08:52:11', '2021-02-06 08:52:11', 'Agnes Judy', '54', '0', ''),
(157, '2021-02-06 08:52:36', '2021-02-06 08:52:36', 'Agnes Judy', '72', '0', ''),
(158, '2021-02-06 08:53:02', '2021-02-06 08:53:02', 'Agnes Judy', '54', '0', ''),
(159, '2021-02-06 08:53:27', '2021-02-06 08:53:27', 'Agnes Judy', '54', '0', ''),
(160, '2021-02-06 08:53:52', '2021-02-06 08:53:52', 'Agnes Judy', '54', '0', ''),
(161, '2021-02-06 08:54:17', '2021-02-06 08:54:17', 'Agnes Judy', '54', '0', ''),
(162, '2021-02-06 08:54:42', '2021-02-06 08:54:42', 'Agnes Judy', '54', '0', ''),
(163, '2021-02-06 08:55:07', '2021-02-06 08:55:07', 'Agnes Judy', '54', '0', ''),
(164, '2021-02-06 08:55:33', '2021-02-06 08:55:33', 'Agnes Judy', '54', '0', ''),
(165, '2021-02-06 08:55:58', '2021-02-06 08:55:58', 'Agnes Judy', '54', '0', ''),
(166, '2021-02-06 08:56:23', '2021-02-06 08:56:23', 'Agnes Judy', '54', '0', ''),
(167, '2021-02-06 08:56:48', '2021-02-06 08:56:48', 'Agnes Judy', '54', '0', ''),
(168, '2021-02-06 08:57:13', '2021-02-06 08:57:13', 'Agnes Judy', '54', '0', ''),
(169, '2021-02-06 08:57:38', '2021-02-06 08:57:38', 'Agnes Judy', '54', '0', ''),
(170, '2021-02-06 08:58:03', '2021-02-06 08:58:03', 'Agnes Judy', '54', '0', ''),
(171, '2021-02-06 08:58:29', '2021-02-06 08:58:29', 'Agnes Judy', '54', '0', ''),
(172, '2021-02-06 08:58:54', '2021-02-06 08:58:54', 'Agnes Judy', '54', '0', ''),
(173, '2021-02-06 08:59:19', '2021-02-06 08:59:19', 'Agnes Judy', '54', '0', ''),
(174, '2021-02-06 08:59:44', '2021-02-06 08:59:44', 'Agnes Judy', '54', '0', ''),
(175, '2021-02-06 09:00:09', '2021-02-06 09:00:09', 'Agnes Judy', '54', '0', ''),
(176, '2021-02-06 09:00:34', '2021-02-06 09:00:34', 'Agnes Judy', '54', '0', ''),
(177, '2021-02-06 09:02:30', '2021-02-06 09:02:30', 'Agnes Judy', '54', '0', ''),
(178, '2021-02-06 09:02:55', '2021-02-06 09:02:55', 'Agnes Judy', '54', '0', ''),
(179, '2021-02-06 09:03:20', '2021-02-06 09:03:20', 'Agnes Judy', '54', '0', ''),
(180, '2021-02-06 09:03:45', '2021-02-06 09:03:45', 'Agnes Judy', '54', '0', ''),
(181, '2021-02-06 09:04:12', '2021-02-06 09:04:12', 'Agnes Judy', '54', '0', ''),
(182, '2021-02-06 09:04:37', '2021-02-06 09:04:37', 'Agnes Judy', '54', '0', ''),
(183, '2021-02-06 13:19:16', '2021-02-06 13:19:16', 'Agnes Judy', '186', '0', ''),
(184, '2021-02-06 13:19:41', '2021-02-06 13:19:41', 'Agnes Judy', '84', '0', ''),
(185, '2021-02-06 13:20:17', '2021-02-06 13:20:17', 'Agnes Judy', '60', '0', ''),
(186, '2021-02-06 13:20:43', '2021-02-06 13:20:43', 'Agnes Judy', '54', '0', ''),
(187, '2021-02-06 13:21:08', '2021-02-06 13:21:08', 'Agnes Judy', '138', '0', ''),
(188, '2021-02-06 13:21:33', '2021-02-06 13:21:33', 'Agnes Judy', '138', '0', ''),
(189, '2021-02-06 13:24:57', '2021-02-06 13:24:57', 'Agnes Judy', '54', '0', ''),
(190, '2021-02-06 13:25:22', '2021-02-06 13:25:22', 'Agnes Judy', '72', '0', ''),
(191, '2021-02-06 13:25:48', '2021-02-06 13:25:48', 'Agnes Judy', '54', '0', ''),
(192, '2021-02-06 13:26:13', '2021-02-06 13:26:13', 'Agnes Judy', '54', '0', ''),
(193, '2021-02-06 13:26:38', '2021-02-06 13:26:38', 'Agnes Judy', '54', '0', ''),
(194, '2021-02-06 13:27:03', '2021-02-06 13:27:03', 'Agnes Judy', '54', '0', ''),
(195, '2021-02-06 13:27:28', '2021-02-06 13:27:28', 'Agnes Judy', '54', '0', ''),
(196, '2021-02-06 13:27:53', '2021-02-06 13:27:53', 'Agnes Judy', '54', '0', ''),
(197, '2021-02-06 13:28:18', '2021-02-06 13:28:18', 'Agnes Judy', '54', '0', ''),
(198, '2021-02-06 13:28:43', '2021-02-06 13:28:43', 'Agnes Judy', '54', '0', ''),
(199, '2021-02-06 13:29:08', '2021-02-06 13:29:08', 'Agnes Judy', '54', '0', ''),
(200, '2021-02-06 13:29:33', '2021-02-06 13:29:33', 'Agnes Judy', '54', '0', ''),
(201, '2021-02-06 13:29:58', '2021-02-06 13:29:58', 'Agnes Judy', '54', '0', ''),
(202, '2021-02-06 13:30:49', '2021-02-06 13:30:49', 'Agnes Judy', '54', '0', ''),
(203, '2021-02-06 13:31:14', '2021-02-06 13:31:14', 'Agnes Judy', '78', '0', ''),
(204, '2021-02-06 13:31:39', '2021-02-06 13:31:39', 'Agnes Judy', '54', '0', ''),
(205, '2021-02-06 13:32:04', '2021-02-06 13:32:04', 'Agnes Judy', '54', '0', ''),
(206, '2021-02-06 13:32:29', '2021-02-06 13:32:29', 'Agnes Judy', '54', '0', ''),
(207, '2021-02-06 13:32:54', '2021-02-06 13:32:54', 'Agnes Judy', '54', '0', ''),
(208, '2021-02-06 13:33:19', '2021-02-06 13:33:19', 'Agnes Judy', '54', '0', ''),
(209, '2021-02-06 13:33:44', '2021-02-06 13:33:44', 'Agnes Judy', '54', '0', ''),
(210, '2021-02-06 13:34:09', '2021-02-06 13:34:09', 'Agnes Judy', '54', '0', ''),
(211, '2021-02-06 13:34:34', '2021-02-06 13:34:34', 'Agnes Judy', '54', '0', ''),
(212, '2021-02-06 13:35:00', '2021-02-06 13:35:00', 'Agnes Judy', '54', '0', ''),
(213, '2021-02-06 13:35:27', '2021-02-06 13:35:27', 'Agnes Judy', '54', '0', ''),
(214, '2021-02-06 13:35:52', '2021-02-06 13:35:52', 'Agnes Judy', '54', '0', ''),
(215, '2021-02-06 13:36:17', '2021-02-06 13:36:17', 'Agnes Judy', '54', '0', ''),
(216, '2021-02-06 13:36:43', '2021-02-06 13:36:43', 'Agnes Judy', '54', '0', ''),
(217, '2021-02-06 13:37:08', '2021-02-06 13:37:08', 'Agnes Judy', '54', '0', ''),
(218, '2021-02-06 13:37:33', '2021-02-06 13:37:33', 'Agnes Judy', '54', '0', ''),
(219, '2021-02-06 13:37:58', '2021-02-06 13:37:58', 'Agnes Judy', '54', '0', ''),
(220, '2021-02-06 13:38:23', '2021-02-06 13:38:23', 'Agnes Judy', '66', '0', ''),
(221, '2021-02-06 13:38:48', '2021-02-06 13:38:48', 'Agnes Judy', '54', '0', ''),
(222, '2021-02-06 13:39:13', '2021-02-06 13:39:13', 'Agnes Judy', '54', '0', ''),
(223, '2021-02-06 13:39:38', '2021-02-06 13:39:38', 'Agnes Judy', '54', '0', ''),
(224, '2021-02-06 13:40:03', '2021-02-06 13:40:03', 'Agnes Judy', '54', '0', ''),
(225, '2021-02-06 13:40:28', '2021-02-06 13:40:28', 'Agnes Judy', '54', '0', ''),
(226, '2021-02-06 13:40:54', '2021-02-06 13:40:54', 'Agnes Judy', '54', '0', ''),
(227, '2021-02-06 13:41:19', '2021-02-06 13:41:19', 'Agnes Judy', '132', '0', ''),
(228, '2021-02-06 13:42:24', '2021-02-06 13:42:24', 'Agnes Judy', '54', '0', ''),
(229, '2021-02-06 13:43:13', '2021-02-06 13:43:13', 'Agnes Judy', '60', '0', ''),
(230, '2021-02-06 13:43:38', '2021-02-06 13:43:38', 'Agnes Judy', '60', '0', ''),
(231, '2021-02-06 13:44:03', '2021-02-06 13:44:03', 'Agnes Judy', '60', '0', ''),
(232, '2021-02-06 13:44:28', '2021-02-06 13:44:28', 'Agnes Judy', '54', '0', ''),
(233, '2021-02-06 13:44:53', '2021-02-06 13:44:53', 'Agnes Judy', '54', '0', ''),
(234, '2021-02-06 13:45:41', '2021-02-06 13:45:41', 'Agnes Judy', '54', '0', ''),
(235, '2021-02-06 13:46:06', '2021-02-06 13:46:06', 'Agnes Judy', '60', '0', ''),
(236, '2021-02-06 13:46:31', '2021-02-06 13:46:31', 'Agnes Judy', '54', '0', ''),
(237, '2021-02-06 13:46:56', '2021-02-06 13:46:56', 'Agnes Judy', '60', '0', ''),
(238, '2021-02-06 13:48:20', '2021-02-06 13:48:20', 'Agnes Judy', '66', '0', ''),
(239, '2021-02-06 13:48:45', '2021-02-06 13:48:45', 'Agnes Judy', '66', '0', ''),
(240, '2021-02-06 13:49:10', '2021-02-06 13:49:10', 'Agnes Judy', '54', '0', ''),
(241, '2021-02-06 13:49:35', '2021-02-06 13:49:35', 'Agnes Judy', '54', '0', ''),
(242, '2021-02-06 13:50:00', '2021-02-06 13:50:00', 'Agnes Judy', '54', '0', ''),
(243, '2021-02-06 13:50:25', '2021-02-06 13:50:25', 'Agnes Judy', '54', '0', ''),
(244, '2021-02-06 13:50:50', '2021-02-06 13:50:50', 'Agnes Judy', '54', '0', ''),
(245, '2021-02-06 13:51:16', '2021-02-06 13:51:16', 'Agnes Judy', '54', '0', ''),
(246, '2021-02-06 13:51:41', '2021-02-06 13:51:41', 'Agnes Judy', '54', '0', ''),
(247, '2021-02-06 13:53:29', '2021-02-06 13:53:29', 'Agnes Judy', '54', '0', ''),
(248, '2021-02-06 13:53:54', '2021-02-06 13:53:54', 'Agnes Judy', '54', '0', ''),
(249, '2021-02-06 13:54:19', '2021-02-06 13:54:19', 'Agnes Judy', '66', '0', ''),
(250, '2021-02-06 13:54:44', '2021-02-06 13:54:44', 'Agnes Judy', '54', '0', ''),
(251, '2021-02-06 13:55:09', '2021-02-06 13:55:09', 'Agnes Judy', '54', '0', ''),
(252, '2021-02-06 13:55:35', '2021-02-06 13:55:35', 'Agnes Judy', '54', '0', ''),
(253, '2021-02-06 13:56:00', '2021-02-06 13:56:00', 'Agnes Judy', '54', '0', ''),
(254, '2021-02-06 13:56:25', '2021-02-06 13:56:25', 'Agnes Judy', '54', '0', ''),
(255, '2021-02-06 13:56:50', '2021-02-06 13:56:50', 'Agnes Judy', '54', '0', ''),
(256, '2021-02-06 13:57:15', '2021-02-06 13:57:15', 'Agnes Judy', '54', '0', ''),
(257, '2021-02-06 13:57:40', '2021-02-06 13:57:40', 'Agnes Judy', '54', '0', ''),
(258, '2021-02-06 13:58:05', '2021-02-06 13:58:05', 'Agnes Judy', '54', '0', ''),
(259, '2021-02-06 13:58:30', '2021-02-06 13:58:30', 'Agnes Judy', '54', '0', ''),
(260, '2021-02-06 13:58:56', '2021-02-06 13:58:56', 'Agnes Judy', '54', '0', ''),
(261, '2021-02-06 13:59:21', '2021-02-06 13:59:21', 'Agnes Judy', '54', '0', ''),
(262, '2021-02-06 13:59:46', '2021-02-06 13:59:46', 'Agnes Judy', '54', '0', ''),
(263, '2021-02-06 14:00:11', '2021-02-06 14:00:11', 'Agnes Judy', '54', '0', ''),
(264, '2021-02-06 14:00:37', '2021-02-06 14:00:37', 'Agnes Judy', '54', '0', ''),
(265, '2021-02-06 14:01:02', '2021-02-06 14:01:02', 'Agnes Judy', '54', '0', ''),
(266, '2021-02-06 14:01:27', '2021-02-06 14:01:27', 'Agnes Judy', '54', '0', ''),
(267, '2021-02-06 14:01:52', '2021-02-06 14:01:52', 'Agnes Judy', '54', '0', ''),
(268, '2021-02-06 14:02:17', '2021-02-06 14:02:17', 'Agnes Judy', '54', '0', ''),
(269, '2021-02-06 14:02:42', '2021-02-06 14:02:42', 'Agnes Judy', '54', '0', ''),
(270, '2021-02-06 14:03:07', '2021-02-06 14:03:07', 'Agnes Judy', '54', '0', ''),
(271, '2021-02-06 14:03:33', '2021-02-06 14:03:33', 'Agnes Judy', '54', '0', ''),
(272, '2021-02-06 14:03:59', '2021-02-06 14:03:59', 'Agnes Judy', '54', '0', ''),
(273, '2021-02-06 14:04:24', '2021-02-06 14:04:24', 'Agnes Judy', '66', '0', ''),
(274, '2021-02-06 14:04:49', '2021-02-06 14:04:49', 'Agnes Judy', '54', '0', ''),
(275, '2021-02-06 14:05:14', '2021-02-06 14:05:14', 'Agnes Judy', '54', '0', ''),
(276, '2021-02-06 14:05:39', '2021-02-06 14:05:39', 'Agnes Judy', '54', '0', ''),
(277, '2021-02-06 14:06:04', '2021-02-06 14:06:04', 'Agnes Judy', '54', '0', ''),
(278, '2021-02-06 14:06:30', '2021-02-06 14:06:30', 'Agnes Judy', '54', '0', ''),
(279, '2021-02-06 14:06:55', '2021-02-06 14:06:55', 'Agnes Judy', '54', '0', ''),
(280, '2021-02-06 14:07:20', '2021-02-06 14:07:20', 'Agnes Judy', '54', '0', ''),
(281, '2021-02-06 14:07:45', '2021-02-06 14:07:45', 'Agnes Judy', '54', '0', ''),
(282, '2021-02-06 14:08:10', '2021-02-06 14:08:10', 'Agnes Judy', '54', '0', ''),
(283, '2021-02-06 14:08:36', '2021-02-06 14:08:36', 'Agnes Judy', '54', '0', ''),
(284, '2021-02-06 14:09:02', '2021-02-06 14:09:02', 'Agnes Judy', '54', '0', ''),
(285, '2021-02-06 14:09:27', '2021-02-06 14:09:27', 'Agnes Judy', '54', '0', ''),
(286, '2021-02-06 14:09:53', '2021-02-06 14:09:53', 'Agnes Judy', '54', '0', ''),
(287, '2021-02-06 14:10:19', '2021-02-06 14:10:19', 'Agnes Judy', '54', '0', ''),
(288, '2021-02-06 14:10:44', '2021-02-06 14:10:44', 'Agnes Judy', '54', '0', ''),
(289, '2021-02-06 14:11:09', '2021-02-06 14:11:09', 'Agnes Judy', '54', '0', ''),
(290, '2021-02-06 14:11:34', '2021-02-06 14:11:34', 'Agnes Judy', '54', '0', ''),
(291, '2021-02-06 14:11:59', '2021-02-06 14:11:59', 'Agnes Judy', '54', '0', ''),
(292, '2021-02-06 14:12:24', '2021-02-06 14:12:24', 'Agnes Judy', '54', '0', ''),
(293, '2021-02-06 14:12:53', '2021-02-06 14:12:53', 'Agnes Judy', '54', '0', ''),
(294, '2021-02-06 14:13:19', '2021-02-06 14:13:19', 'Agnes Judy', '54', '0', ''),
(295, '2021-02-06 14:13:44', '2021-02-06 14:13:44', 'Agnes Judy', '54', '0', ''),
(296, '2021-02-06 14:14:10', '2021-02-06 14:14:10', 'Agnes Judy', '54', '0', ''),
(297, '2021-02-06 14:14:35', '2021-02-06 14:14:35', 'Agnes Judy', '54', '0', ''),
(298, '2021-02-06 14:15:00', '2021-02-06 14:15:00', 'Agnes Judy', '54', '0', ''),
(299, '2021-02-06 14:15:25', '2021-02-06 14:15:25', 'Agnes Judy', '54', '0', ''),
(300, '2021-02-06 14:15:51', '2021-02-06 14:15:51', 'Agnes Judy', '54', '0', ''),
(301, '2021-02-06 14:16:16', '2021-02-06 14:16:16', 'Agnes Judy', '54', '0', ''),
(302, '2021-02-06 14:16:41', '2021-02-06 14:16:41', 'Agnes Judy', '54', '0', ''),
(303, '2021-02-06 14:17:06', '2021-02-06 14:17:06', 'Agnes Judy', '54', '0', ''),
(304, '2021-02-06 14:17:31', '2021-02-06 14:17:31', 'Agnes Judy', '54', '0', ''),
(305, '2021-02-06 14:17:56', '2021-02-06 14:17:56', 'Agnes Judy', '54', '0', ''),
(306, '2021-02-06 14:18:21', '2021-02-06 14:18:21', 'Agnes Judy', '54', '0', ''),
(307, '2021-02-06 14:18:47', '2021-02-06 14:18:47', 'Agnes Judy', '54', '0', ''),
(308, '2021-02-06 14:19:12', '2021-02-06 14:19:12', 'Agnes Judy', '54', '0', ''),
(309, '2021-02-06 14:19:37', '2021-02-06 14:19:37', 'Agnes Judy', '54', '0', ''),
(310, '2021-02-06 14:20:02', '2021-02-06 14:20:02', 'Agnes Judy', '54', '0', ''),
(311, '2021-02-06 15:18:05', '2021-02-06 15:18:05', 'Agnes Judy', '90', '0', ''),
(312, '2021-02-06 15:18:30', '2021-02-06 15:18:30', 'Agnes Judy', '54', '0', ''),
(313, '2021-02-06 15:21:49', '2021-02-06 15:21:49', 'Agnes Judy', '54', '0', ''),
(314, '2021-02-06 15:22:14', '2021-02-06 15:22:14', 'Agnes Judy', '60', '0', ''),
(315, '2021-02-06 15:22:39', '2021-02-06 15:22:39', 'Agnes Judy', '54', '0', ''),
(316, '2021-02-06 15:23:04', '2021-02-06 15:23:04', 'Agnes Judy', '54', '0', ''),
(317, '2021-02-06 15:24:24', '2021-02-06 15:24:24', 'Agnes Judy', '54', '0', ''),
(318, '2021-02-07 05:50:14', '2021-02-07 05:50:14', 'Agnes Judy', '54', '0', ''),
(319, '2021-02-07 05:50:39', '2021-02-07 05:50:39', 'Agnes Judy', '54', '0', ''),
(320, '2021-02-07 05:51:04', '2021-02-07 05:51:04', 'Agnes Judy', '54', '0', ''),
(321, '2021-02-07 05:51:29', '2021-02-07 05:51:29', 'Agnes Judy', '54', '0', ''),
(322, '2021-02-07 05:51:54', '2021-02-07 05:51:54', 'Agnes Judy', '54', '0', ''),
(323, '2021-02-07 05:52:19', '2021-02-07 05:52:19', 'Agnes Judy', '54', '0', ''),
(324, '2021-02-07 06:17:03', '2021-02-07 06:17:03', 'Agnes Judy', '96', '0', ''),
(325, '2021-02-07 06:17:28', '2021-02-07 06:17:28', 'Agnes Judy', '102', '0', ''),
(326, '2021-02-07 06:17:53', '2021-02-07 06:17:53', 'Agnes Judy', '78', '0', ''),
(327, '2021-02-07 06:18:39', '2021-02-07 06:18:39', 'Agnes Judy', '84', '0', ''),
(328, '2021-02-07 06:19:05', '2021-02-07 06:19:05', 'Agnes Judy', '132', '0', ''),
(329, '2021-02-07 06:19:30', '2021-02-07 06:19:30', 'Agnes Judy', '54', '0', ''),
(330, '2021-02-07 06:19:55', '2021-02-07 06:19:55', 'Agnes Judy', '54', '0', ''),
(331, '2021-02-07 06:20:20', '2021-02-07 06:20:20', 'Agnes Judy', '120', '0', ''),
(332, '2021-02-07 07:39:22', '2021-02-07 07:39:22', 'Agnes Judy', '66', '0', ''),
(333, '2021-02-07 07:39:47', '2021-02-07 07:39:47', 'Agnes Judy', '138', '0', ''),
(334, '2021-02-07 07:40:12', '2021-02-07 07:40:12', 'Agnes Judy', '108', '0', ''),
(335, '2021-02-07 07:40:37', '2021-02-07 07:40:37', 'Agnes Judy', '108', '0', ''),
(336, '2021-02-07 07:41:02', '2021-02-07 07:41:02', 'Agnes Judy', '156', '0', ''),
(337, '2021-02-07 07:41:28', '2021-02-07 07:41:28', 'Agnes Judy', '120', '0', ''),
(338, '2021-02-07 07:41:53', '2021-02-07 07:41:53', 'Agnes Judy', '90', '0', ''),
(339, '2021-02-07 07:42:18', '2021-02-07 07:42:18', 'Agnes Judy', '150', '0', ''),
(340, '2021-02-07 07:42:44', '2021-02-07 07:42:44', 'Agnes Judy', '132', '0', ''),
(341, '2021-02-07 07:43:10', '2021-02-07 07:43:10', 'Agnes Judy', '84', '0', ''),
(342, '2021-02-07 07:43:35', '2021-02-07 07:43:35', 'Agnes Judy', '108', '0', ''),
(343, '2021-02-07 07:44:00', '2021-02-07 07:44:00', 'Agnes Judy', '108', '0', ''),
(344, '2021-02-07 07:44:25', '2021-02-07 07:44:25', 'Agnes Judy', '120', '0', ''),
(345, '2021-02-07 07:44:50', '2021-02-07 07:44:50', 'Agnes Judy', '120', '0', ''),
(346, '2021-02-07 07:45:16', '2021-02-07 07:45:16', 'Agnes Judy', '102', '0', ''),
(347, '2021-02-07 07:45:41', '2021-02-07 07:45:41', 'Agnes Judy', '90', '0', ''),
(348, '2021-02-07 07:46:06', '2021-02-07 07:46:06', 'Agnes Judy', '132', '0', ''),
(349, '2021-02-07 07:46:31', '2021-02-07 07:46:31', 'Agnes Judy', '114', '0', ''),
(350, '2021-02-07 07:46:56', '2021-02-07 07:46:56', 'Agnes Judy', '108', '0', ''),
(351, '2021-02-07 07:47:21', '2021-02-07 07:47:21', 'Agnes Judy', '114', '0', ''),
(352, '2021-02-08 14:51:57', '2021-02-08 14:51:57', 'Agnes Judy', '108', '0', ''),
(353, '2021-02-08 14:52:23', '2021-02-08 14:52:23', 'Agnes Judy', '144', '0', ''),
(354, '2021-02-08 14:52:48', '2021-02-08 14:52:48', 'Agnes Judy', '120', '0', ''),
(355, '2021-02-08 14:54:09', '2021-02-08 14:54:09', 'Agnes Judy', '180', '0', ''),
(356, '2021-02-08 14:54:35', '2021-02-08 14:54:35', 'Agnes Judy', '54', '0', ''),
(357, '2021-02-08 17:34:30', '2021-02-08 17:34:30', '', '', '-1.3074', '36.775204'),
(358, '2021-02-08 17:34:31', '2021-02-08 17:34:31', '', '', '-1.30741', '36.775204'),
(359, '2021-02-08 17:34:32', '2021-02-08 17:34:32', '', '', '-1.30741', '36.775204'),
(360, '2021-02-08 17:34:32', '2021-02-08 17:34:32', '', '', '-1.30741', '36.775200'),
(361, '2021-02-08 17:34:37', '2021-02-08 17:34:37', '', '', '-1.30741', '36.775196'),
(362, '2021-02-08 17:34:37', '2021-02-08 17:34:37', '', '', '-1.30741', '36.775196'),
(363, '2021-02-08 17:34:38', '2021-02-08 17:34:38', '', '', '-1.30741', '36.775196'),
(364, '2021-02-08 17:34:38', '2021-02-08 17:34:38', '', '', '-1.30741', '36.775196'),
(365, '2021-02-08 17:34:39', '2021-02-08 17:34:39', '', '', '-1.30741', '36.775196'),
(366, '2021-02-08 17:34:39', '2021-02-08 17:34:39', '', '', '-1.30741', '36.775192'),
(367, '2021-02-08 17:34:39', '2021-02-08 17:34:39', '', '', '-1.30741', '36.775192'),
(368, '2021-02-08 17:34:39', '2021-02-08 17:34:39', '', '', '-1.30741', '36.775192'),
(369, '2021-02-08 17:34:40', '2021-02-08 17:34:40', '', '', '-1.30741', '36.775192'),
(370, '2021-02-08 17:34:40', '2021-02-08 17:34:40', '', '', '-1.30741', '36.775192'),
(371, '2021-02-08 17:34:40', '2021-02-08 17:34:40', '', '', '-1.30741', '36.775192'),
(372, '2021-02-08 17:34:40', '2021-02-08 17:34:40', '', '', '-1.30741', '36.775192'),
(373, '2021-02-08 17:34:40', '2021-02-08 17:34:40', '', '', '-1.30741', '36.775192'),
(374, '2021-02-08 17:34:41', '2021-02-08 17:34:41', '', '', '-1.30741', '36.775192'),
(375, '2021-02-08 17:34:41', '2021-02-08 17:34:41', '', '', '-1.30741', '36.775192'),
(376, '2021-02-08 17:34:41', '2021-02-08 17:34:41', '', '', '-1.30741', '36.775192'),
(377, '2021-02-08 17:34:41', '2021-02-08 17:34:41', '', '', '-1.30741', '36.775192'),
(378, '2021-02-08 17:34:41', '2021-02-08 17:34:41', '', '', '-1.30741', '36.775192'),
(379, '2021-02-08 17:34:42', '2021-02-08 17:34:42', '', '', '-1.30741', '36.775192'),
(380, '2021-02-08 17:34:42', '2021-02-08 17:34:42', '', '', '-1.30741', '36.775192'),
(381, '2021-02-08 17:34:42', '2021-02-08 17:34:42', '', '', '-1.30741', '36.775192'),
(382, '2021-02-08 17:34:42', '2021-02-08 17:34:42', '', '', '-1.30741', '36.775192'),
(383, '2021-02-08 17:34:43', '2021-02-08 17:34:43', '', '', '-1.30741', '36.775188'),
(384, '2021-02-08 17:34:43', '2021-02-08 17:34:43', '', '', '-1.30741', '36.775188'),
(385, '2021-02-08 17:34:43', '2021-02-08 17:34:43', '', '', '-1.30741', '36.775188'),
(386, '2021-02-08 17:34:44', '2021-02-08 17:34:44', '', '', '-1.30741', '36.775188'),
(387, '2021-02-08 17:34:44', '2021-02-08 17:34:44', '', '', '-1.30741', '36.775188'),
(388, '2021-02-08 17:34:44', '2021-02-08 17:34:44', '', '', '-1.30741', '36.775188'),
(389, '2021-02-08 17:34:45', '2021-02-08 17:34:45', '', '', '-1.30741', '36.775188'),
(390, '2021-02-08 17:34:45', '2021-02-08 17:34:45', '', '', '-1.30741', '36.775188'),
(391, '2021-02-08 17:34:45', '2021-02-08 17:34:45', '', '', '-1.30741', '36.775188'),
(392, '2021-02-08 17:34:46', '2021-02-08 17:34:46', '', '', '-1.30741', '36.775188'),
(393, '2021-02-08 17:34:46', '2021-02-08 17:34:46', '', '', '-1.30741', '36.775185'),
(394, '2021-02-08 17:34:46', '2021-02-08 17:34:46', '', '', '-1.30741', '36.775185'),
(395, '2021-02-08 17:34:46', '2021-02-08 17:34:46', '', '', '-1.30741', '36.775185'),
(396, '2021-02-08 17:34:47', '2021-02-08 17:34:47', '', '', '-1.30741', '36.775185'),
(397, '2021-02-08 17:34:47', '2021-02-08 17:34:47', '', '', '-1.30741', '36.775185'),
(398, '2021-02-08 17:34:47', '2021-02-08 17:34:47', '', '', '-1.30741', '36.775185'),
(399, '2021-02-08 17:34:47', '2021-02-08 17:34:47', '', '', '-1.30741', '36.775185'),
(400, '2021-02-08 17:34:48', '2021-02-08 17:34:48', '', '', '-1.3074', '36.775181'),
(401, '2021-02-08 17:34:48', '2021-02-08 17:34:48', '', '', '-1.3074', '36.775181'),
(402, '2021-02-08 17:34:49', '2021-02-08 17:34:49', '', '', '-1.3074', '36.775181'),
(403, '2021-02-08 17:34:49', '2021-02-08 17:34:49', '', '', '-1.3074', '36.775181'),
(404, '2021-02-08 17:34:49', '2021-02-08 17:34:49', '', '', '-1.3074', '36.775181'),
(405, '2021-02-08 17:34:49', '2021-02-08 17:34:49', '', '', '-1.3074', '36.775181'),
(406, '2021-02-08 17:34:50', '2021-02-08 17:34:50', '', '', '-1.3074', '36.775177'),
(407, '2021-02-08 17:34:50', '2021-02-08 17:34:50', '', '', '-1.3074', '36.775177'),
(408, '2021-02-08 17:34:50', '2021-02-08 17:34:50', '', '', '-1.3074', '36.775177'),
(409, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(410, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(411, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(412, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(413, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(414, '2021-02-08 17:34:51', '2021-02-08 17:34:51', '', '', '-1.3074', '36.775177'),
(415, '2021-02-08 17:34:52', '2021-02-08 17:34:52', '', '', '-1.3074', '36.775177'),
(416, '2021-02-08 17:34:52', '2021-02-08 17:34:52', '', '', '-1.3074', '36.775177'),
(417, '2021-02-08 17:34:52', '2021-02-08 17:34:52', '', '', '-1.3074', '36.775177'),
(418, '2021-02-08 17:34:52', '2021-02-08 17:34:52', '', '', '-1.3074', '36.775177'),
(419, '2021-02-08 17:34:53', '2021-02-08 17:34:53', '', '', '-1.3074', '36.775177'),
(420, '2021-02-08 17:34:53', '2021-02-08 17:34:53', '', '', '-1.3074', '36.775177'),
(421, '2021-02-08 17:34:53', '2021-02-08 17:34:53', '', '', '-1.3074', '36.775177'),
(422, '2021-02-08 17:34:53', '2021-02-08 17:34:53', '', '', '-1.3074', '36.775177'),
(423, '2021-02-08 17:34:54', '2021-02-08 17:34:54', '', '', '-1.3074', '36.775177'),
(424, '2021-02-08 17:34:54', '2021-02-08 17:34:54', '', '', '-1.3074', '36.775173'),
(425, '2021-02-08 17:34:54', '2021-02-08 17:34:54', '', '', '-1.3074', '36.775173'),
(426, '2021-02-08 17:34:54', '2021-02-08 17:34:54', '', '', '-1.3074', '36.775173'),
(427, '2021-02-08 17:34:55', '2021-02-08 17:34:55', '', '', '-1.3074', '36.775173'),
(428, '2021-02-08 17:34:55', '2021-02-08 17:34:55', '', '', '-1.3074', '36.775173'),
(429, '2021-02-08 17:34:55', '2021-02-08 17:34:55', '', '', '-1.3074', '36.775173'),
(430, '2021-02-08 17:34:56', '2021-02-08 17:34:56', '', '', '-1.3074', '36.775173'),
(431, '2021-02-08 17:34:56', '2021-02-08 17:34:56', '', '', '-1.3074', '36.775173'),
(432, '2021-02-08 17:34:56', '2021-02-08 17:34:56', '', '', '-1.3074', '36.775173'),
(433, '2021-02-08 17:34:57', '2021-02-08 17:34:57', '', '', '-1.3074', '36.775173'),
(434, '2021-02-08 17:34:57', '2021-02-08 17:34:57', '', '', '-1.3074', '36.775169'),
(435, '2021-02-08 17:34:57', '2021-02-08 17:34:57', '', '', '-1.3074', '36.775169'),
(436, '2021-02-08 17:34:57', '2021-02-08 17:34:57', '', '', '-1.3074', '36.775169'),
(437, '2021-02-08 17:34:58', '2021-02-08 17:34:58', '', '', '-1.3074', '36.775169'),
(438, '2021-02-08 17:34:58', '2021-02-08 17:34:58', '', '', '-1.3074', '36.775169'),
(439, '2021-02-08 17:34:58', '2021-02-08 17:34:58', '', '', '-1.3074', '36.775169'),
(440, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(441, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(442, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(443, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(444, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(445, '2021-02-08 17:34:59', '2021-02-08 17:34:59', '', '', '-1.3074', '36.775169'),
(446, '2021-02-08 17:35:00', '2021-02-08 17:35:00', '', '', '-1.3074', '36.775169'),
(447, '2021-02-08 17:35:00', '2021-02-08 17:35:00', '', '', '-1.3074', '36.775166'),
(448, '2021-02-08 17:35:00', '2021-02-08 17:35:00', '', '', '-1.3074', '36.775166'),
(449, '2021-02-08 17:35:00', '2021-02-08 17:35:00', '', '', '-1.3074', '36.775166'),
(450, '2021-02-08 17:35:00', '2021-02-08 17:35:00', '', '', '-1.3074', '36.775166'),
(451, '2021-02-08 17:35:01', '2021-02-08 17:35:01', '', '', '-1.3074', '36.775166'),
(452, '2021-02-08 17:35:01', '2021-02-08 17:35:01', '', '', '-1.3074', '36.775166'),
(453, '2021-02-08 17:35:02', '2021-02-08 17:35:02', '', '', '-1.3074', '36.775166'),
(454, '2021-02-08 17:35:02', '2021-02-08 17:35:02', '', '', '-1.3074', '36.775166'),
(455, '2021-02-08 17:35:02', '2021-02-08 17:35:02', '', '', '-1.3074', '36.775166'),
(456, '2021-02-08 17:35:03', '2021-02-08 17:35:03', '', '', '-1.3074', '36.775166'),
(457, '2021-02-08 17:35:03', '2021-02-08 17:35:03', '', '', '-1.30739', '36.775162'),
(458, '2021-02-08 17:35:03', '2021-02-08 17:35:03', '', '', '-1.30739', '36.775162'),
(459, '2021-02-08 17:35:04', '2021-02-08 17:35:04', '', '', '-1.30739', '36.775162'),
(460, '2021-02-08 17:35:04', '2021-02-08 17:35:04', '', '', '-1.30739', '36.775162'),
(461, '2021-02-08 17:35:04', '2021-02-08 17:35:04', '', '', '-1.30739', '36.775162'),
(462, '2021-02-08 17:35:04', '2021-02-08 17:35:04', '', '', '-1.30739', '36.775162'),
(463, '2021-02-08 17:35:05', '2021-02-08 17:35:05', '', '', '-1.30739', '36.775162'),
(464, '2021-02-08 17:35:05', '2021-02-08 17:35:05', '', '', '-1.30739', '36.775158'),
(465, '2021-02-08 17:35:05', '2021-02-08 17:35:05', '', '', '-1.30739', '36.775158'),
(466, '2021-02-08 17:35:05', '2021-02-08 17:35:05', '', '', '-1.30739', '36.775158'),
(467, '2021-02-08 17:35:06', '2021-02-08 17:35:06', '', '', '-1.30739', '36.775158'),
(468, '2021-02-08 17:35:06', '2021-02-08 17:35:06', '', '', '-1.30739', '36.775158'),
(469, '2021-02-08 17:35:06', '2021-02-08 17:35:06', '', '', '-1.30739', '36.775158'),
(470, '2021-02-08 17:35:07', '2021-02-08 17:35:07', '', '', '-1.30739', '36.775154'),
(471, '2021-02-08 17:35:07', '2021-02-08 17:35:07', '', '', '-1.30739', '36.775154'),
(472, '2021-02-08 17:35:08', '2021-02-08 17:35:08', '', '', '-1.3074', '36.775154'),
(473, '2021-02-08 17:35:08', '2021-02-08 17:35:08', '', '', '-1.3074', '36.775154'),
(474, '2021-02-08 17:35:09', '2021-02-08 17:35:09', '', '', '-1.3074', '36.775154'),
(475, '2021-02-08 17:35:09', '2021-02-08 17:35:09', '', '', '-1.3074', '36.775154'),
(476, '2021-02-08 17:35:09', '2021-02-08 17:35:09', '', '', '-1.3074', '36.775154'),
(477, '2021-02-08 17:35:09', '2021-02-08 17:35:09', '', '', '-1.3074', '36.775154'),
(478, '2021-02-08 17:35:10', '2021-02-08 17:35:10', '', '', '-1.3074', '36.775154'),
(479, '2021-02-08 17:35:10', '2021-02-08 17:35:10', '', '', '-1.3074', '36.775154'),
(480, '2021-02-08 17:35:10', '2021-02-08 17:35:10', '', '', '-1.3074', '36.775154'),
(481, '2021-02-08 17:35:11', '2021-02-08 17:35:11', '', '', '-1.3074', '36.775154'),
(482, '2021-02-08 17:35:11', '2021-02-08 17:35:11', '', '', '-1.3074', '36.775154'),
(483, '2021-02-08 17:35:11', '2021-02-08 17:35:11', '', '', '-1.3074', '36.775150'),
(484, '2021-02-08 17:35:11', '2021-02-08 17:35:11', '', '', '-1.3074', '36.775150'),
(485, '2021-02-08 17:35:12', '2021-02-08 17:35:12', '', '', '-1.3074', '36.775150'),
(486, '2021-02-08 17:35:12', '2021-02-08 17:35:12', '', '', '-1.3074', '36.775150'),
(487, '2021-02-08 17:35:12', '2021-02-08 17:35:12', '', '', '-1.3074', '36.775150'),
(488, '2021-02-08 17:35:12', '2021-02-08 17:35:12', '', '', '-1.3074', '36.775150'),
(489, '2021-02-08 17:35:13', '2021-02-08 17:35:13', '', '', '-1.3074', '36.775150'),
(490, '2021-02-08 17:35:13', '2021-02-08 17:35:13', '', '', '-1.3074', '36.775150'),
(491, '2021-02-08 17:35:13', '2021-02-08 17:35:13', '', '', '-1.3074', '36.775150'),
(492, '2021-02-08 17:35:13', '2021-02-08 17:35:13', '', '', '-1.3074', '36.775150'),
(493, '2021-02-08 17:35:14', '2021-02-08 17:35:14', '', '', '-1.30741', '36.775150'),
(494, '2021-02-08 17:35:14', '2021-02-08 17:35:14', '', '', '-1.30741', '36.775150'),
(495, '2021-02-08 17:35:15', '2021-02-08 17:35:15', '', '', '-1.30741', '36.775150'),
(496, '2021-02-08 17:35:15', '2021-02-08 17:35:15', '', '', '-1.30741', '36.775146'),
(497, '2021-02-08 17:35:15', '2021-02-08 17:35:15', '', '', '-1.30741', '36.775146'),
(498, '2021-02-08 17:35:16', '2021-02-08 17:35:16', '', '', '-1.30741', '36.775146'),
(499, '2021-02-08 17:35:16', '2021-02-08 17:35:16', '', '', '-1.30741', '36.775146'),
(500, '2021-02-08 17:35:16', '2021-02-08 17:35:16', '', '', '-1.30741', '36.775146'),
(501, '2021-02-08 17:35:16', '2021-02-08 17:35:16', '', '', '-1.30741', '36.775146'),
(502, '2021-02-08 17:35:17', '2021-02-08 17:35:17', '', '', '-1.30741', '36.775146'),
(503, '2021-02-08 17:35:17', '2021-02-08 17:35:17', '', '', '-1.30741', '36.775146'),
(504, '2021-02-08 17:35:17', '2021-02-08 17:35:17', '', '', '-1.30741', '36.775146'),
(505, '2021-02-08 17:35:17', '2021-02-08 17:35:17', '', '', '-1.30741', '36.775146'),
(506, '2021-02-08 17:35:17', '2021-02-08 17:35:17', '', '', '-1.30741', '36.775146'),
(507, '2021-02-08 17:35:18', '2021-02-08 17:35:18', '', '', '-1.30742', '36.775146'),
(508, '2021-02-08 17:35:18', '2021-02-08 17:35:18', '', '', '-1.30742', '36.775146'),
(509, '2021-02-08 17:35:19', '2021-02-08 17:35:19', '', '', '-1.30742', '36.775146'),
(510, '2021-02-08 17:35:19', '2021-02-08 17:35:19', '', '', '-1.30742', '36.775146'),
(511, '2021-02-08 17:35:19', '2021-02-08 17:35:19', '', '', '-1.30742', '36.775146'),
(512, '2021-02-08 17:35:19', '2021-02-08 17:35:19', '', '', '-1.30742', '36.775146'),
(513, '2021-02-08 17:35:20', '2021-02-08 17:35:20', '', '', '-1.30742', '36.775146'),
(514, '2021-02-08 17:35:23', '2021-02-08 17:35:23', '', '', '-1.307418', '36.775146'),
(515, '2021-02-08 17:35:23', '2021-02-08 17:35:23', '', '', '-1.307418', '36.775146'),
(516, '2021-02-08 17:35:23', '2021-02-08 17:35:23', '', '', '-1.307417', '36.775143'),
(517, '2021-02-08 17:35:24', '2021-02-08 17:35:24', '', '', '-1.307417', '36.775143'),
(518, '2021-02-08 17:35:24', '2021-02-08 17:35:24', '', '', '-1.307416', '36.775143'),
(519, '2021-02-08 17:35:24', '2021-02-08 17:35:24', '', '', '-1.307416', '36.775143'),
(520, '2021-02-08 17:35:24', '2021-02-08 17:35:24', '', '', '-1.307416', '36.775143'),
(521, '2021-02-08 17:35:25', '2021-02-08 17:35:25', '', '', '-1.307416', '36.775143'),
(522, '2021-02-08 17:35:25', '2021-02-08 17:35:25', '', '', '-1.307415', '36.775143'),
(523, '2021-02-08 17:35:25', '2021-02-08 17:35:25', '', '', '-1.307415', '36.775143'),
(524, '2021-02-08 17:35:25', '2021-02-08 17:35:25', '', '', '-1.307415', '36.775143'),
(525, '2021-02-08 17:35:25', '2021-02-08 17:35:25', '', '', '-1.307415', '36.775143'),
(526, '2021-02-08 17:35:26', '2021-02-08 17:35:26', '', '', '-1.307415', '36.775143'),
(527, '2021-02-08 17:35:26', '2021-02-08 17:35:26', '', '', '-1.307415', '36.775143'),
(528, '2021-02-08 17:35:26', '2021-02-08 17:35:26', '', '', '-1.307415', '36.775143'),
(529, '2021-02-08 17:35:27', '2021-02-08 17:35:27', '', '', '-1.307415', '36.775143'),
(530, '2021-02-08 17:35:27', '2021-02-08 17:35:27', '', '', '-1.307415', '36.775139'),
(531, '2021-02-08 17:35:27', '2021-02-08 17:35:27', '', '', '-1.307415', '36.775139'),
(532, '2021-02-08 17:35:27', '2021-02-08 17:35:27', '', '', '-1.307415', '36.775139'),
(533, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(534, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(535, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(536, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(537, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(538, '2021-02-08 17:35:28', '2021-02-08 17:35:28', '', '', '-1.307416', '36.775139'),
(539, '2021-02-08 17:35:29', '2021-02-08 17:35:29', '', '', '-1.307416', '36.775139'),
(540, '2021-02-08 17:35:29', '2021-02-08 17:35:29', '', '', '-1.307416', '36.775139'),
(541, '2021-02-08 17:35:29', '2021-02-08 17:35:29', '', '', '-1.307416', '36.775139'),
(542, '2021-02-08 17:35:29', '2021-02-08 17:35:29', '', '', '-1.307416', '36.775139'),
(543, '2021-02-08 17:35:30', '2021-02-08 17:35:30', '', '', '-1.307416', '36.775135'),
(544, '2021-02-08 17:35:30', '2021-02-08 17:35:30', '', '', '-1.307416', '36.775135'),
(545, '2021-02-08 17:35:31', '2021-02-08 17:35:31', '', '', '-1.307417', '36.775131'),
(546, '2021-02-08 17:35:31', '2021-02-08 17:35:31', '', '', '-1.307417', '36.775131'),
(547, '2021-02-08 17:35:32', '2021-02-08 17:35:32', '', '', '-1.307417', '36.775131'),
(548, '2021-02-08 17:35:32', '2021-02-08 17:35:32', '', '', '-1.307418', '36.775131'),
(549, '2021-02-08 17:35:32', '2021-02-08 17:35:32', '', '', '-1.307418', '36.775131'),
(550, '2021-02-08 17:35:32', '2021-02-08 17:35:32', '', '', '-1.307418', '36.775131'),
(551, '2021-02-08 17:35:33', '2021-02-08 17:35:33', '', '', '-1.307418', '36.775131'),
(552, '2021-02-08 17:35:33', '2021-02-08 17:35:33', '', '', '-1.307419', '36.775127'),
(553, '2021-02-08 17:35:33', '2021-02-08 17:35:33', '', '', '-1.307419', '36.775127'),
(554, '2021-02-08 17:35:33', '2021-02-08 17:35:33', '', '', '-1.307419', '36.775127'),
(555, '2021-02-08 17:35:34', '2021-02-08 17:35:34', '', '', '-1.307419', '36.775127'),
(556, '2021-02-08 17:35:34', '2021-02-08 17:35:34', '', '', '-1.307419', '36.775127'),
(557, '2021-02-08 17:35:34', '2021-02-08 17:35:34', '', '', '-1.307419', '36.775127'),
(558, '2021-02-08 17:35:35', '2021-02-08 17:35:35', '', '', '-1.307419', '36.775127'),
(559, '2021-02-08 17:35:35', '2021-02-08 17:35:35', '', '', '-1.307419', '36.775127'),
(560, '2021-02-08 17:35:35', '2021-02-08 17:35:35', '', '', '-1.307419', '36.775127'),
(561, '2021-02-08 17:35:35', '2021-02-08 17:35:35', '', '', '-1.307419', '36.775127'),
(562, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775127'),
(563, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775124'),
(564, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775124'),
(565, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775124'),
(566, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775124'),
(567, '2021-02-08 17:35:36', '2021-02-08 17:35:36', '', '', '-1.307419', '36.775124'),
(568, '2021-02-08 17:35:37', '2021-02-08 17:35:37', '', '', '-1.307419', '36.775124'),
(569, '2021-02-08 17:35:37', '2021-02-08 17:35:37', '', '', '-1.307419', '36.775124'),
(570, '2021-02-08 17:35:37', '2021-02-08 17:35:37', '', '', '-1.307419', '36.775124'),
(571, '2021-02-08 17:35:37', '2021-02-08 17:35:37', '', '', '-1.307419', '36.775124'),
(572, '2021-02-08 17:35:37', '2021-02-08 17:35:37', '', '', '-1.307419', '36.775124'),
(573, '2021-02-08 17:35:38', '2021-02-08 17:35:38', '', '', '-1.307419', '36.775124'),
(574, '2021-02-08 17:35:38', '2021-02-08 17:35:38', '', '', '-1.307419', '36.775124'),
(575, '2021-02-08 17:35:38', '2021-02-08 17:35:38', '', '', '-1.307419', '36.775124'),
(576, '2021-02-08 17:35:38', '2021-02-08 17:35:38', '', '', '-1.307419', '36.775124'),
(577, '2021-02-08 17:35:39', '2021-02-08 17:35:39', '', '', '-1.307419', '36.775124'),
(578, '2021-02-08 17:35:39', '2021-02-08 17:35:39', '', '', '-1.307419', '36.775124'),
(579, '2021-02-08 17:35:39', '2021-02-08 17:35:39', '', '', '-1.307419', '36.775124'),
(580, '2021-02-08 17:35:39', '2021-02-08 17:35:39', '', '', '-1.307419', '36.775124'),
(581, '2021-02-08 17:35:40', '2021-02-08 17:35:40', '', '', '-1.307418', '36.775124'),
(582, '2021-02-08 17:35:40', '2021-02-08 17:35:40', '', '', '-1.307418', '36.775124'),
(583, '2021-02-08 17:35:41', '2021-02-08 17:35:41', '', '', '-1.307418', '36.775124'),
(584, '2021-02-08 17:35:41', '2021-02-08 17:35:41', '', '', '-1.307417', '36.775124'),
(585, '2021-02-08 17:35:41', '2021-02-08 17:35:41', '', '', '-1.307417', '36.775124'),
(586, '2021-02-08 17:35:42', '2021-02-08 17:35:42', '', '', '-1.307417', '36.775124'),
(587, '2021-02-08 17:35:42', '2021-02-08 17:35:42', '', '', '-1.307416', '36.775124'),
(588, '2021-02-08 17:35:42', '2021-02-08 17:35:42', '', '', '-1.307416', '36.775124'),
(589, '2021-02-08 17:35:42', '2021-02-08 17:35:42', '', '', '-1.307416', '36.775124'),
(590, '2021-02-08 17:35:43', '2021-02-08 17:35:43', '', '', '-1.307416', '36.775120'),
(591, '2021-02-08 17:35:43', '2021-02-08 17:35:43', '', '', '-1.307416', '36.775120'),
(592, '2021-02-08 17:35:43', '2021-02-08 17:35:43', '', '', '-1.307416', '36.775120'),
(593, '2021-02-08 17:35:43', '2021-02-08 17:35:43', '', '', '-1.307416', '36.775120'),
(594, '2021-02-08 17:35:43', '2021-02-08 17:35:43', '', '', '-1.307416', '36.775120'),
(595, '2021-02-08 17:35:44', '2021-02-08 17:35:44', '', '', '-1.307416', '36.775120'),
(596, '2021-02-08 17:35:44', '2021-02-08 17:35:44', '', '', '-1.307417', '36.775120'),
(597, '2021-02-08 17:35:44', '2021-02-08 17:35:44', '', '', '-1.307417', '36.775120'),
(598, '2021-02-08 17:35:44', '2021-02-08 17:35:44', '', '', '-1.307417', '36.775120'),
(599, '2021-02-08 17:35:45', '2021-02-08 17:35:45', '', '', '-1.307417', '36.775120'),
(600, '2021-02-08 17:35:45', '2021-02-08 17:35:45', '', '', '-1.307417', '36.775120'),
(601, '2021-02-08 17:35:45', '2021-02-08 17:35:45', '', '', '-1.307417', '36.775120'),
(602, '2021-02-08 17:35:46', '2021-02-08 17:35:46', '', '', '-1.307418', '36.775120'),
(603, '2021-02-08 17:35:46', '2021-02-08 17:35:46', '', '', '-1.307418', '36.775120'),
(604, '2021-02-08 17:35:46', '2021-02-08 17:35:46', '', '', '-1.307418', '36.775120'),
(605, '2021-02-08 17:35:46', '2021-02-08 17:35:46', '', '', '-1.307418', '36.775120'),
(606, '2021-02-08 17:35:47', '2021-02-08 17:35:47', '', '', '-1.307418', '36.775124'),
(607, '2021-02-08 17:35:47', '2021-02-08 17:35:47', '', '', '-1.307418', '36.775124'),
(608, '2021-02-08 17:35:47', '2021-02-08 17:35:47', '', '', '-1.307418', '36.775124'),
(609, '2021-02-08 17:35:48', '2021-02-08 17:35:48', '', '', '-1.307418', '36.775124'),
(610, '2021-02-08 17:35:48', '2021-02-08 17:35:48', '', '', '-1.307417', '36.775124'),
(611, '2021-02-08 17:35:48', '2021-02-08 17:35:48', '', '', '-1.307417', '36.775124'),
(612, '2021-02-08 17:35:49', '2021-02-08 17:35:49', '', '', '-1.307417', '36.775124'),
(613, '2021-02-08 17:35:49', '2021-02-08 17:35:49', '', '', '-1.307418', '36.775120'),
(614, '2021-02-08 17:35:49', '2021-02-08 17:35:49', '', '', '-1.307418', '36.775120'),
(615, '2021-02-08 17:35:50', '2021-02-08 17:35:50', '', '', '-1.307418', '36.775120'),
(616, '2021-02-08 17:35:50', '2021-02-08 17:35:50', '', '', '-1.307419', '36.775120'),
(617, '2021-02-08 17:35:50', '2021-02-08 17:35:50', '', '', '-1.307419', '36.775120'),
(618, '2021-02-08 17:35:50', '2021-02-08 17:35:50', '', '', '-1.307419', '36.775120'),
(619, '2021-02-08 17:35:50', '2021-02-08 17:35:50', '', '', '-1.307419', '36.775120'),
(620, '2021-02-08 17:35:51', '2021-02-08 17:35:51', '', '', '-1.307419', '36.775120'),
(621, '2021-02-08 17:35:51', '2021-02-08 17:35:51', '', '', '-1.307420', '36.775120'),
(622, '2021-02-08 17:35:51', '2021-02-08 17:35:51', '', '', '-1.307420', '36.775120'),
(623, '2021-02-08 17:35:51', '2021-02-08 17:35:51', '', '', '-1.307420', '36.775120'),
(624, '2021-02-08 17:35:52', '2021-02-08 17:35:52', '', '', '-1.307418', '36.775120'),
(625, '2021-02-08 17:35:52', '2021-02-08 17:35:52', '', '', '-1.307418', '36.775120'),
(626, '2021-02-08 17:35:53', '2021-02-08 17:35:53', '', '', '-1.307418', '36.775120'),
(627, '2021-02-08 17:35:53', '2021-02-08 17:35:53', '', '', '-1.307415', '36.775116'),
(628, '2021-02-08 17:35:53', '2021-02-08 17:35:53', '', '', '-1.307415', '36.775116'),
(629, '2021-02-08 17:35:54', '2021-02-08 17:35:54', '', '', '-1.307415', '36.775116'),
(630, '2021-02-08 17:35:54', '2021-02-08 17:35:54', '', '', '-1.307412', '36.775116'),
(631, '2021-02-08 17:35:54', '2021-02-08 17:35:54', '', '', '-1.307412', '36.775116'),
(632, '2021-02-08 17:35:54', '2021-02-08 17:35:54', '', '', '-1.307412', '36.775116');
INSERT INTO `pulses` (`id`, `created_at`, `updated_at`, `childName`, `pulsevalues`, `childLatitude`, `childLongitude`) VALUES
(633, '2021-02-08 17:35:54', '2021-02-08 17:35:54', '', '', '-1.307412', '36.775116'),
(634, '2021-02-08 17:35:55', '2021-02-08 17:35:55', '', '', '-1.307411', '36.775116'),
(635, '2021-02-08 17:35:55', '2021-02-08 17:35:55', '', '', '-1.307411', '36.775116'),
(636, '2021-02-08 17:35:55', '2021-02-08 17:35:55', '', '', '-1.307411', '36.775116'),
(637, '2021-02-08 17:35:55', '2021-02-08 17:35:55', '', '', '-1.307411', '36.775116'),
(638, '2021-02-08 17:38:04', '2021-02-08 17:38:04', '', '', '-1.308138', '36.775284'),
(639, '2021-02-08 17:38:05', '2021-02-08 17:38:05', '', '', '-1.308138', '36.775284'),
(640, '2021-02-08 17:38:06', '2021-02-08 17:38:06', '', '', '-1.308138', '36.775284'),
(641, '2021-02-08 17:38:06', '2021-02-08 17:38:06', '', '', '-1.308138', '36.775284'),
(642, '2021-02-08 17:38:07', '2021-02-08 17:38:07', '', '', '-1.308138', '36.775284'),
(643, '2021-02-08 17:38:07', '2021-02-08 17:38:07', '', '', '-1.307591', '36.775166'),
(644, '2021-02-08 17:38:07', '2021-02-08 17:38:07', '', '', '-1.307591', '36.775166'),
(645, '2021-02-08 17:38:07', '2021-02-08 17:38:07', '', '', '-1.307591', '36.775166'),
(646, '2021-02-08 17:38:08', '2021-02-08 17:38:08', '', '', '-1.307591', '36.775166'),
(647, '2021-02-08 17:38:08', '2021-02-08 17:38:08', '', '', '-1.307577', '36.775162'),
(648, '2021-02-08 17:38:08', '2021-02-08 17:38:08', '', '', '-1.307577', '36.775162'),
(649, '2021-02-08 17:38:09', '2021-02-08 17:38:09', '', '', '-1.307577', '36.775162'),
(650, '2021-02-08 17:38:09', '2021-02-08 17:38:09', '', '', '-1.307577', '36.775162'),
(651, '2021-02-08 17:38:09', '2021-02-08 17:38:09', '', '', '-1.307571', '36.775158'),
(652, '2021-02-08 17:38:09', '2021-02-08 17:38:09', '', '', '-1.307571', '36.775158'),
(653, '2021-02-08 17:38:10', '2021-02-08 17:38:10', '', '', '-1.307571', '36.775158'),
(654, '2021-02-08 17:38:10', '2021-02-08 17:38:10', '', '', '-1.307571', '36.775158'),
(655, '2021-02-08 17:38:10', '2021-02-08 17:38:10', '', '', '-1.307569', '36.775158'),
(656, '2021-02-08 17:38:10', '2021-02-08 17:38:10', '', '', '-1.307569', '36.775158'),
(657, '2021-02-08 17:38:10', '2021-02-08 17:38:10', '', '', '-1.307569', '36.775158'),
(658, '2021-02-08 17:38:11', '2021-02-08 17:38:11', '', '', '-1.307569', '36.775158'),
(659, '2021-02-08 17:38:11', '2021-02-08 17:38:11', '', '', '-1.307564', '36.775154'),
(660, '2021-02-08 17:38:11', '2021-02-08 17:38:11', '', '', '-1.307564', '36.775154'),
(661, '2021-02-08 17:38:11', '2021-02-08 17:38:11', '', '', '-1.307564', '36.775154'),
(662, '2021-02-08 17:38:12', '2021-02-08 17:38:12', '', '', '-1.307564', '36.775154'),
(663, '2021-02-08 17:38:12', '2021-02-08 17:38:12', '', '', '-1.307560', '36.775150'),
(664, '2021-02-08 17:38:12', '2021-02-08 17:38:12', '', '', '-1.307560', '36.775150'),
(665, '2021-02-08 17:38:13', '2021-02-08 17:38:13', '', '', '-1.307561', '36.775150'),
(666, '2021-02-08 17:38:13', '2021-02-08 17:38:13', '', '', '-1.307561', '36.775150'),
(667, '2021-02-08 17:38:14', '2021-02-08 17:38:14', '', '', '-1.307561', '36.775150'),
(668, '2021-02-08 17:38:14', '2021-02-08 17:38:14', '', '', '-1.307561', '36.775150'),
(669, '2021-02-08 17:38:14', '2021-02-08 17:38:14', '', '', '-1.307563', '36.775150'),
(670, '2021-02-08 17:38:14', '2021-02-08 17:38:14', '', '', '-1.307563', '36.775150'),
(671, '2021-02-08 17:38:14', '2021-02-08 17:38:14', '', '', '-1.307563', '36.775150'),
(672, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307563', '36.775150'),
(673, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307563', '36.775150'),
(674, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307564', '36.775150'),
(675, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307564', '36.775150'),
(676, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307564', '36.775150'),
(677, '2021-02-08 17:38:15', '2021-02-08 17:38:15', '', '', '-1.307564', '36.775150'),
(678, '2021-02-08 17:38:16', '2021-02-08 17:38:16', '', '', '-1.307563', '36.775150'),
(679, '2021-02-08 17:38:16', '2021-02-08 17:38:16', '', '', '-1.307563', '36.775150'),
(680, '2021-02-08 17:38:17', '2021-02-08 17:38:17', '', '', '-1.307563', '36.775150'),
(681, '2021-02-08 17:38:17', '2021-02-08 17:38:17', '', '', '-1.307565', '36.775150'),
(682, '2021-02-08 17:38:17', '2021-02-08 17:38:17', '', '', '-1.307565', '36.775150'),
(683, '2021-02-08 17:38:18', '2021-02-08 17:38:18', '', '', '-1.307562', '36.775146'),
(684, '2021-02-08 17:38:18', '2021-02-08 17:38:18', '', '', '-1.307562', '36.775146'),
(685, '2021-02-08 17:38:18', '2021-02-08 17:38:18', '', '', '-1.307562', '36.775146'),
(686, '2021-02-08 17:38:18', '2021-02-08 17:38:18', '', '', '-1.307562', '36.775146'),
(687, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307562', '36.775146'),
(688, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307562', '36.775146'),
(689, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307560', '36.775146'),
(690, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307560', '36.775146'),
(691, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307560', '36.775146'),
(692, '2021-02-08 17:38:19', '2021-02-08 17:38:19', '', '', '-1.307560', '36.775146'),
(693, '2021-02-08 17:38:20', '2021-02-08 17:38:20', '', '', '-1.307560', '36.775146'),
(694, '2021-02-08 17:38:20', '2021-02-08 17:38:20', '', '', '-1.307564', '36.775146'),
(695, '2021-02-08 17:38:20', '2021-02-08 17:38:20', '', '', '-1.307564', '36.775146'),
(696, '2021-02-08 17:38:20', '2021-02-08 17:38:20', '', '', '-1.307564', '36.775146'),
(697, '2021-02-08 17:38:20', '2021-02-08 17:38:20', '', '', '-1.307564', '36.775146'),
(698, '2021-02-08 17:38:21', '2021-02-08 17:38:21', '', '', '-1.307564', '36.775146'),
(699, '2021-02-08 17:38:21', '2021-02-08 17:38:21', '', '', '-1.307563', '36.775146'),
(700, '2021-02-08 17:38:21', '2021-02-08 17:38:21', '', '', '-1.307563', '36.775146'),
(701, '2021-02-08 17:38:21', '2021-02-08 17:38:21', '', '', '-1.307563', '36.775146'),
(702, '2021-02-08 17:38:22', '2021-02-08 17:38:22', '', '', '-1.307563', '36.775146'),
(703, '2021-02-08 17:38:22', '2021-02-08 17:38:22', '', '', '-1.307562', '36.775146'),
(704, '2021-02-08 17:38:22', '2021-02-08 17:38:22', '', '', '-1.307562', '36.775146'),
(705, '2021-02-08 17:38:22', '2021-02-08 17:38:22', '', '', '-1.307562', '36.775146'),
(706, '2021-02-08 17:38:23', '2021-02-08 17:38:23', '', '', '-1.307562', '36.775146'),
(707, '2021-02-08 17:38:23', '2021-02-08 17:38:23', '', '', '-1.307559', '36.775146'),
(708, '2021-02-08 17:38:23', '2021-02-08 17:38:23', '', '', '-1.307559', '36.775146'),
(709, '2021-02-08 17:38:23', '2021-02-08 17:38:23', '', '', '-1.307559', '36.775146'),
(710, '2021-02-08 17:38:24', '2021-02-08 17:38:24', '', '', '-1.307555', '36.775146'),
(711, '2021-02-08 17:38:24', '2021-02-08 17:38:24', '', '', '-1.307555', '36.775146'),
(712, '2021-02-08 17:38:24', '2021-02-08 17:38:24', '', '', '-1.307555', '36.775146'),
(713, '2021-02-08 17:38:25', '2021-02-08 17:38:25', '', '', '-1.307549', '36.775146'),
(714, '2021-02-08 17:38:25', '2021-02-08 17:38:25', '', '', '-1.307549', '36.775146'),
(715, '2021-02-08 17:38:26', '2021-02-08 17:38:26', '', '', '-1.307546', '36.775146'),
(716, '2021-02-08 17:38:26', '2021-02-08 17:38:26', '', '', '-1.307546', '36.775146'),
(717, '2021-02-08 17:38:26', '2021-02-08 17:38:26', '', '', '-1.307546', '36.775146'),
(718, '2021-02-08 17:38:26', '2021-02-08 17:38:26', '', '', '-1.307546', '36.775146'),
(719, '2021-02-08 17:38:27', '2021-02-08 17:38:27', '', '', '-1.307546', '36.775146'),
(720, '2021-02-08 17:38:27', '2021-02-08 17:38:27', '', '', '-1.307544', '36.775150'),
(721, '2021-02-08 17:38:27', '2021-02-08 17:38:27', '', '', '-1.307544', '36.775150'),
(722, '2021-02-08 17:38:27', '2021-02-08 17:38:27', '', '', '-1.307544', '36.775150'),
(723, '2021-02-08 17:38:28', '2021-02-08 17:38:28', '', '', '-1.307544', '36.775150'),
(724, '2021-02-08 17:38:28', '2021-02-08 17:38:28', '', '', '-1.307542', '36.775150'),
(725, '2021-02-08 17:38:28', '2021-02-08 17:38:28', '', '', '-1.307542', '36.775150'),
(726, '2021-02-08 17:38:28', '2021-02-08 17:38:28', '', '', '-1.307542', '36.775150'),
(727, '2021-02-08 17:38:29', '2021-02-08 17:38:29', '', '', '-1.307540', '36.775150'),
(728, '2021-02-08 17:38:29', '2021-02-08 17:38:29', '', '', '-1.307540', '36.775150'),
(729, '2021-02-08 17:38:30', '2021-02-08 17:38:30', '', '', '-1.307540', '36.775150'),
(730, '2021-02-08 17:38:30', '2021-02-08 17:38:30', '', '', '-1.307536', '36.775154'),
(731, '2021-02-08 17:38:30', '2021-02-08 17:38:30', '', '', '-1.307536', '36.775154'),
(732, '2021-02-08 17:38:30', '2021-02-08 17:38:30', '', '', '-1.307536', '36.775154'),
(733, '2021-02-08 17:38:30', '2021-02-08 17:38:30', '', '', '-1.307536', '36.775154'),
(734, '2021-02-08 17:38:31', '2021-02-08 17:38:31', '', '', '-1.307533', '36.775154'),
(735, '2021-02-08 17:38:31', '2021-02-08 17:38:31', '', '', '-1.307533', '36.775154'),
(736, '2021-02-08 17:38:31', '2021-02-08 17:38:31', '', '', '-1.307533', '36.775154'),
(737, '2021-02-08 17:38:31', '2021-02-08 17:38:31', '', '', '-1.307533', '36.775154'),
(738, '2021-02-08 17:38:32', '2021-02-08 17:38:32', '', '', '-1.307530', '36.775154'),
(739, '2021-02-08 17:38:32', '2021-02-08 17:38:32', '', '', '-1.307530', '36.775154'),
(740, '2021-02-08 17:38:33', '2021-02-08 17:38:33', '', '', '-1.307530', '36.775154'),
(741, '2021-02-08 17:38:33', '2021-02-08 17:38:33', '', '', '-1.307527', '36.775154'),
(742, '2021-02-08 17:38:33', '2021-02-08 17:38:33', '', '', '-1.307527', '36.775154'),
(743, '2021-02-08 17:38:34', '2021-02-08 17:38:34', '', '', '-1.307527', '36.775154'),
(744, '2021-02-08 17:38:34', '2021-02-08 17:38:34', '', '', '-1.307524', '36.775154'),
(745, '2021-02-08 17:38:34', '2021-02-08 17:38:34', '', '', '-1.307524', '36.775154'),
(746, '2021-02-08 17:38:34', '2021-02-08 17:38:34', '', '', '-1.307524', '36.775154'),
(747, '2021-02-08 17:38:34', '2021-02-08 17:38:34', '', '', '-1.307524', '36.775154'),
(748, '2021-02-08 17:38:35', '2021-02-08 17:38:35', '', '', '-1.307520', '36.775154'),
(749, '2021-02-08 17:38:35', '2021-02-08 17:38:35', '', '', '-1.307520', '36.775154'),
(750, '2021-02-08 17:38:35', '2021-02-08 17:38:35', '', '', '-1.307520', '36.775154'),
(751, '2021-02-08 17:38:35', '2021-02-08 17:38:35', '', '', '-1.307520', '36.775154'),
(752, '2021-02-08 17:38:36', '2021-02-08 17:38:36', '', '', '-1.307521', '36.775154'),
(753, '2021-02-08 17:38:36', '2021-02-08 17:38:36', '', '', '-1.307521', '36.775154'),
(754, '2021-02-08 17:38:36', '2021-02-08 17:38:36', '', '', '-1.307521', '36.775154'),
(755, '2021-02-08 17:38:37', '2021-02-08 17:38:37', '', '', '-1.307519', '36.775154'),
(756, '2021-02-08 17:38:37', '2021-02-08 17:38:37', '', '', '-1.307519', '36.775154'),
(757, '2021-02-08 17:38:38', '2021-02-08 17:38:38', '', '', '-1.307519', '36.775154'),
(758, '2021-02-08 17:38:38', '2021-02-08 17:38:38', '', '', '-1.307518', '36.775154'),
(759, '2021-02-08 17:38:38', '2021-02-08 17:38:38', '', '', '-1.307518', '36.775154'),
(760, '2021-02-08 17:38:38', '2021-02-08 17:38:38', '', '', '-1.307518', '36.775154'),
(761, '2021-02-08 17:38:39', '2021-02-08 17:38:39', '', '', '-1.307518', '36.775154'),
(762, '2021-02-08 17:38:39', '2021-02-08 17:38:39', '', '', '-1.307515', '36.775150'),
(763, '2021-02-08 17:38:39', '2021-02-08 17:38:39', '', '', '-1.307515', '36.775150'),
(764, '2021-02-08 17:38:39', '2021-02-08 17:38:39', '', '', '-1.307515', '36.775150'),
(765, '2021-02-08 17:38:40', '2021-02-08 17:38:40', '', '', '-1.307515', '36.775150'),
(766, '2021-02-08 17:38:40', '2021-02-08 17:38:40', '', '', '-1.307515', '36.775150'),
(767, '2021-02-08 17:38:40', '2021-02-08 17:38:40', '', '', '-1.307513', '36.775150'),
(768, '2021-02-08 17:38:40', '2021-02-08 17:38:40', '', '', '-1.307513', '36.775150'),
(769, '2021-02-08 17:38:41', '2021-02-08 17:38:41', '', '', '-1.307513', '36.775150'),
(770, '2021-02-08 17:38:41', '2021-02-08 17:38:41', '', '', '-1.307513', '36.775150'),
(771, '2021-02-08 17:38:41', '2021-02-08 17:38:41', '', '', '-1.307511', '36.775150'),
(772, '2021-02-08 17:38:41', '2021-02-08 17:38:41', '', '', '-1.307511', '36.775150'),
(773, '2021-02-08 17:38:41', '2021-02-08 17:38:41', '', '', '-1.307511', '36.775150'),
(774, '2021-02-08 17:38:42', '2021-02-08 17:38:42', '', '', '-1.307510', '36.775150'),
(775, '2021-02-08 17:38:42', '2021-02-08 17:38:42', '', '', '-1.307510', '36.775150'),
(776, '2021-02-08 17:38:42', '2021-02-08 17:38:42', '', '', '-1.307510', '36.775150'),
(777, '2021-02-08 17:38:42', '2021-02-08 17:38:42', '', '', '-1.307510', '36.775150'),
(778, '2021-02-08 17:38:43', '2021-02-08 17:38:43', '', '', '-1.307510', '36.775150'),
(779, '2021-02-08 17:38:43', '2021-02-08 17:38:43', '', '', '-1.307510', '36.775150'),
(780, '2021-02-08 17:38:43', '2021-02-08 17:38:43', '', '', '-1.307507', '36.775146'),
(781, '2021-02-08 17:38:43', '2021-02-08 17:38:43', '', '', '-1.307507', '36.775146'),
(782, '2021-02-08 17:38:43', '2021-02-08 17:38:43', '', '', '-1.307507', '36.775146'),
(783, '2021-02-08 17:38:44', '2021-02-08 17:38:44', '', '', '-1.307507', '36.775146'),
(784, '2021-02-08 17:38:44', '2021-02-08 17:38:44', '', '', '-1.307503', '36.775146'),
(785, '2021-02-08 17:38:44', '2021-02-08 17:38:44', '', '', '-1.307503', '36.775146'),
(786, '2021-02-08 17:38:44', '2021-02-08 17:38:44', '', '', '-1.307503', '36.775146'),
(787, '2021-02-08 17:38:45', '2021-02-08 17:38:45', '', '', '-1.307501', '36.775146'),
(788, '2021-02-08 17:38:45', '2021-02-08 17:38:45', '', '', '-1.307501', '36.775146'),
(789, '2021-02-08 17:38:45', '2021-02-08 17:38:45', '', '', '-1.307501', '36.775146'),
(790, '2021-02-08 17:38:45', '2021-02-08 17:38:45', '', '', '-1.307501', '36.775146'),
(791, '2021-02-08 17:38:45', '2021-02-08 17:38:45', '', '', '-1.307501', '36.775146'),
(792, '2021-02-08 17:38:46', '2021-02-08 17:38:46', '', '', '-1.307501', '36.775146'),
(793, '2021-02-08 17:38:46', '2021-02-08 17:38:46', '', '', '-1.307499', '36.775146'),
(794, '2021-02-08 17:38:46', '2021-02-08 17:38:46', '', '', '-1.307499', '36.775146'),
(795, '2021-02-08 17:38:46', '2021-02-08 17:38:46', '', '', '-1.307499', '36.775146'),
(796, '2021-02-08 17:38:46', '2021-02-08 17:38:46', '', '', '-1.307499', '36.775146'),
(797, '2021-02-08 17:38:47', '2021-02-08 17:38:47', '', '', '-1.307497', '36.775146'),
(798, '2021-02-08 17:38:47', '2021-02-08 17:38:47', '', '', '-1.307497', '36.775146'),
(799, '2021-02-08 17:38:47', '2021-02-08 17:38:47', '', '', '-1.307497', '36.775146'),
(800, '2021-02-08 17:38:47', '2021-02-08 17:38:47', '', '', '-1.307497', '36.775146'),
(801, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307497', '36.775146'),
(802, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307497', '36.775146'),
(803, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(804, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(805, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(806, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(807, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(808, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(809, '2021-02-08 17:38:48', '2021-02-08 17:38:48', '', '', '-1.307498', '36.775143'),
(810, '2021-02-08 17:38:49', '2021-02-08 17:38:49', '', '', '-1.307498', '36.775143'),
(811, '2021-02-08 17:38:49', '2021-02-08 17:38:49', '', '', '-1.307494', '36.775143'),
(812, '2021-02-08 17:38:49', '2021-02-08 17:38:49', '', '', '-1.307494', '36.775143'),
(813, '2021-02-08 17:38:49', '2021-02-08 17:38:49', '', '', '-1.307494', '36.775143'),
(814, '2021-02-08 17:38:49', '2021-02-08 17:38:49', '', '', '-1.307494', '36.775143'),
(815, '2021-02-08 17:38:50', '2021-02-08 17:38:50', '', '', '-1.307493', '36.775143'),
(816, '2021-02-08 17:38:50', '2021-02-08 17:38:50', '', '', '-1.307493', '36.775143'),
(817, '2021-02-08 17:38:50', '2021-02-08 17:38:50', '', '', '-1.307493', '36.775143'),
(818, '2021-02-08 17:38:50', '2021-02-08 17:38:50', '', '', '-1.307493', '36.775143'),
(819, '2021-02-08 17:38:51', '2021-02-08 17:38:51', '', '', '-1.307490', '36.775139'),
(820, '2021-02-08 17:38:51', '2021-02-08 17:38:51', '', '', '-1.307490', '36.775139'),
(821, '2021-02-08 17:38:51', '2021-02-08 17:38:51', '', '', '-1.307490', '36.775139'),
(822, '2021-02-08 17:38:52', '2021-02-08 17:38:52', '', '', '-1.307490', '36.775139'),
(823, '2021-02-08 17:38:52', '2021-02-08 17:38:52', '', '', '-1.307490', '36.775139'),
(824, '2021-02-08 17:38:52', '2021-02-08 17:38:52', '', '', '-1.307490', '36.775139'),
(825, '2021-02-08 17:38:52', '2021-02-08 17:38:52', '', '', '-1.307490', '36.775139'),
(826, '2021-02-08 17:38:53', '2021-02-08 17:38:53', '', '', '-1.307490', '36.775139'),
(827, '2021-02-08 17:38:53', '2021-02-08 17:38:53', '', '', '-1.307486', '36.775135'),
(828, '2021-02-08 17:38:53', '2021-02-08 17:38:53', '', '', '-1.307486', '36.775135'),
(829, '2021-02-08 17:38:53', '2021-02-08 17:38:53', '', '', '-1.307486', '36.775135'),
(830, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(831, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(832, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(833, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(834, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(835, '2021-02-08 17:38:54', '2021-02-08 17:38:54', '', '', '-1.307483', '36.775135'),
(836, '2021-02-08 17:38:55', '2021-02-08 17:38:55', '', '', '-1.307483', '36.775135'),
(837, '2021-02-08 17:38:55', '2021-02-08 17:38:55', '', '', '-1.307479', '36.775131'),
(838, '2021-02-08 17:38:55', '2021-02-08 17:38:55', '', '', '-1.307479', '36.775131'),
(839, '2021-02-08 17:38:55', '2021-02-08 17:38:55', '', '', '-1.307479', '36.775131'),
(840, '2021-02-08 17:38:56', '2021-02-08 17:38:56', '', '', '-1.307479', '36.775131'),
(841, '2021-02-08 17:38:56', '2021-02-08 17:38:56', '', '', '-1.307475', '36.775127'),
(842, '2021-02-08 17:38:56', '2021-02-08 17:38:56', '', '', '-1.307475', '36.775127'),
(843, '2021-02-08 17:38:56', '2021-02-08 17:38:56', '', '', '-1.307475', '36.775127'),
(844, '2021-02-08 17:38:57', '2021-02-08 17:38:57', '', '', '-1.307475', '36.775127'),
(845, '2021-02-08 17:38:57', '2021-02-08 17:38:57', '', '', '-1.307474', '36.775127'),
(846, '2021-02-08 17:38:57', '2021-02-08 17:38:57', '', '', '-1.307474', '36.775127'),
(847, '2021-02-08 17:38:57', '2021-02-08 17:38:57', '', '', '-1.307474', '36.775127'),
(848, '2021-02-08 17:38:58', '2021-02-08 17:38:58', '', '', '-1.307474', '36.775127'),
(849, '2021-02-08 17:38:58', '2021-02-08 17:38:58', '', '', '-1.307473', '36.775127'),
(850, '2021-02-08 17:38:58', '2021-02-08 17:38:58', '', '', '-1.307473', '36.775127'),
(851, '2021-02-08 17:40:00', '2021-02-08 17:40:00', 'Agnes Judy', '66', '', ''),
(852, '2021-02-08 17:43:01', '2021-02-08 17:43:01', 'Agnes Judy', '54', '', ''),
(853, '2021-02-08 17:43:38', '2021-02-08 17:43:38', 'Agnes Judy', '54', '', ''),
(854, '2021-02-08 17:50:48', '2021-02-08 17:50:48', 'Agnes Judy', '72', '-1.307248', '36.775089'),
(855, '2021-02-08 17:50:53', '2021-02-08 17:50:53', 'Agnes Judy', '66', '-1.307248', '36.775089'),
(856, '2021-02-08 17:50:59', '2021-02-08 17:50:59', 'Agnes Judy', '72', '-1.307248', '36.775089'),
(857, '2021-02-08 17:51:04', '2021-02-08 17:51:04', 'Agnes Judy', '96', '-1.307248', '36.775089'),
(858, '2021-02-08 17:51:09', '2021-02-08 17:51:09', 'Agnes Judy', '78', '-1.307343', '36.775124'),
(859, '2021-02-09 05:05:48', '2021-02-09 05:05:48', 'Linnet Chris', '84', '', ''),
(860, '2021-02-09 05:06:17', '2021-02-09 05:06:17', 'Linnet Chris', '186', '', ''),
(861, '2021-02-09 05:06:43', '2021-02-09 05:06:43', 'Linnet Chris', '270', '', ''),
(862, '2021-02-09 05:07:09', '2021-02-09 05:07:09', 'Linnet Chris', '336', '', ''),
(863, '2021-02-09 05:07:36', '2021-02-09 05:07:36', 'Linnet Chris', '204', '', ''),
(864, '2021-02-09 05:08:03', '2021-02-09 05:08:03', 'Linnet Chris', '210', '', ''),
(865, '2021-02-09 08:56:49', '2021-02-09 08:56:49', 'Paula Vanessa', '54', '-1.307186', '36.775017'),
(866, '2021-02-09 08:56:54', '2021-02-09 08:56:54', 'Paula Vanessa', '60', '-1.307186', '36.775017'),
(867, '2021-02-09 08:57:12', '2021-02-09 08:57:12', 'Paula Vanessa', '126', '-1.307256', '36.775085'),
(868, '2021-02-09 08:57:21', '2021-02-09 08:57:21', 'Paula Vanessa', '126', '-1.307256', '36.775085'),
(869, '2021-02-09 08:57:28', '2021-02-09 08:57:28', 'Paula Vanessa', '54', '-1.307262', '36.775085'),
(870, '2021-02-09 08:57:33', '2021-02-09 08:57:33', 'Paula Vanessa', '54', '-1.307262', '36.775085'),
(871, '2021-02-09 08:57:39', '2021-02-09 08:57:39', 'Paula Vanessa', '54', '-1.307274', '36.775112'),
(872, '2021-02-09 08:57:44', '2021-02-09 08:57:44', 'Paula Vanessa', '54', '-1.307274', '36.775112'),
(873, '2021-02-09 08:57:49', '2021-02-09 08:57:49', 'Paula Vanessa', '96', '-1.307274', '36.775112'),
(874, '2021-02-09 08:58:24', '2021-02-09 08:58:24', 'Paula Vanessa', '60', '-1.307257', '36.775078'),
(875, '2021-02-09 08:58:29', '2021-02-09 08:58:29', 'Paula Vanessa', '60', '-1.307257', '36.775078'),
(876, '2021-02-09 08:58:35', '2021-02-09 08:58:35', 'Paula Vanessa', '66', '-1.307249', '36.775078'),
(877, '2021-02-09 08:58:40', '2021-02-09 08:58:40', 'Paula Vanessa', '66', '-1.307249', '36.775078'),
(878, '2021-02-09 08:58:47', '2021-02-09 08:58:47', 'Paula Vanessa', '78', '-1.307250', '36.775082'),
(879, '2021-02-09 08:58:55', '2021-02-09 08:58:55', 'Paula Vanessa', '78', '-1.307250', '36.775082'),
(880, '2021-02-09 08:59:02', '2021-02-09 08:59:02', 'Paula Vanessa', '90', '-1.307285', '36.775116'),
(881, '2021-02-09 17:54:39', '2021-02-09 17:54:39', 'Paula Vanessa', '126', '-1.307322', '36.775108'),
(882, '2021-02-09 17:55:13', '2021-02-09 17:55:13', 'Paula Vanessa', '84', '-1.307350', '36.775124'),
(883, '2021-02-09 17:55:22', '2021-02-09 17:55:22', 'Paula Vanessa', '102', '-1.307350', '36.775124'),
(884, '2021-02-09 17:55:30', '2021-02-09 17:55:30', 'Paula Vanessa', '108', '-1.307360', '36.775120'),
(885, '2021-02-09 17:55:37', '2021-02-09 17:55:37', 'Paula Vanessa', '96', '-1.307360', '36.775120'),
(886, '2021-02-09 17:55:44', '2021-02-09 17:55:44', 'Paula Vanessa', '84', '-1.307314', '36.775097');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-01-18 06:51:53', '2021-01-18 06:51:53'),
(2, 'parent', 'Parent', '2021-01-18 06:51:53', '2021-01-18 07:00:02'),
(3, 'caregiver', 'Care Giver', '2021-02-05 08:16:03', '2021-02-05 08:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4tTtjoIU4NjS3oZQ4JL9lBcL13v1zoUovxGhkZzP', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQldiT29odVlVbTFpMTVWanpwWGFkNE9FZVBNaVFIZVpzSzQwVzdENSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXBvcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGVVR2FsYmFQRlo5TXFLTy5ZM1BSZC40Rm84cW5SdlFyb0Rld0RrSHpiNDEvRVdYRFBwMGwuIjt9', 1612887155),
('Afz1p7aVEL5Hn0b4p9O5b3qHo1sDT26C5GKlrSxF', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaDZCQzI0SWI3cUlJaDRSV0lQOXhOUFExMEQyS3BlTlRaMmw3a01zYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2NhdGlvbnJlcG9ydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE2O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZVVHYWxiYVBGWjlNcUtPLlkzUFJkLjRGbzhxblJ2UXJvRGV3RGtIemI0MS9FV1hEUHAwbC4iO30=', 1612901908),
('ySBOQtLYsM8BEDe2VjlOdWuQCSV3cHCGt8P6YXfb', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicDBGTG45YVpEYkdwQmU3YzJ1SldSRm1QVVh2U0dGbFVRTER6OVlJYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXBvcnQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGVVR2FsYmFQRlo5TXFLTy5ZM1BSZC40Rm84cW5SdlFyb0Rld0RrSHpiNDEvRVdYRFBwMGwuIjt9', 1612868414);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '268152274273-71a2qfc7ds33810c1a6b2fmmmonl45js.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '268152274273-71a2qfc7ds33810c1a6b2fmmmonl45js.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Miriam\'s Team', 1, '2021-01-18 06:56:08', '2021-01-18 06:56:08'),
(2, 3, 'Kieran\'s Team', 1, '2021-01-18 08:13:48', '2021-01-18 08:13:48'),
(3, 4, 'k\'s Team', 1, '2021-01-18 08:50:17', '2021-01-18 08:50:17'),
(4, 5, 'kk\'s Team', 1, '2021-01-18 08:51:34', '2021-01-18 08:51:34'),
(5, 6, 'kllll\'s Team', 1, '2021-01-18 09:00:00', '2021-01-18 09:00:00'),
(6, 7, 'Paul\'s Team', 1, '2021-02-04 05:13:14', '2021-02-04 05:13:14'),
(7, 11, 'Lucy\'s Team', 1, '2021-02-07 06:28:42', '2021-02-07 06:28:42'),
(8, 12, 'Jane\'s Team', 1, '2021-02-07 06:30:19', '2021-02-07 06:30:19'),
(9, 13, 'pk\'s Team', 1, '2021-02-07 13:13:24', '2021-02-07 13:13:24'),
(10, 14, 'hj\'s Team', 1, '2021-02-07 13:49:11', '2021-02-07 13:49:11'),
(11, 15, 'po\'s Team', 1, '2021-02-07 13:58:12', '2021-02-07 13:58:12'),
(12, 16, 'Brian\'s Team', 1, '2021-02-09 07:48:21', '2021-02-09 07:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_invitations`
--

INSERT INTO `team_invitations` (`id`, `team_id`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 12, 'mmboga.miriam@strathmore.edu', 'editor', '2021-02-09 16:14:07', '2021-02-09 16:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `childname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `childname`, `phone_number`) VALUES
(1, 2, 'Miriam Mmboga', 'mmboga.miriam@strathmore.edu', 'users/default.png', NULL, '$2y$10$UfWTt.pZYdV/J5vg.MRCre7/mRYvT17YtEscoYNiTi2FmTyOEwxFi', NULL, NULL, NULL, NULL, 1, NULL, '2021-01-18 06:56:08', '2021-01-18 06:56:09', 'Miriam Mmboga', ''),
(2, 1, 'SafeChild Admin', 'myautisec@gmail.com', 'users/default.png', NULL, '$2y$10$mVsZz1W5JUHagisGl898BuFf7vGKOBk0.yBRP2GQAGYjndr1lILKW', NULL, NULL, NULL, '{\"locale\":\"en\"}', NULL, NULL, '2021-01-18 06:58:10', '2021-01-18 09:08:59', NULL, ''),
(3, NULL, 'Kieran Kirema', 'kierankirema@gmail.com', 'users/default.png', NULL, '$2y$10$C1OTkFuIG5rzLrC3i.snXeDqOKJ0vRrp8Wlejt/4ZfYyilPFFq2IG', NULL, NULL, NULL, NULL, 2, NULL, '2021-01-18 08:13:48', '2021-01-18 08:14:02', NULL, ''),
(7, NULL, 'Paul Doe', 'pauldoe@gmail.com', 'users/default.png', NULL, '$2y$10$uFbykK1y9qzLwbHeyF5/FuINf6OjuaHEVgRARMde018R1rAvP51By', NULL, NULL, NULL, NULL, 6, NULL, '2021-02-04 05:13:14', '2021-02-04 05:13:15', 'Simon Lawrence', ''),
(11, 2, 'Lucy Jane', 'lucy@gmail.com', 'users/default.png', NULL, '$2y$10$lq8i9uFvVchwRwh2eDh7yeEUJH.0j/lQoFc2J25HD0xWaXnbp20V2', NULL, NULL, NULL, NULL, 7, NULL, '2021-02-07 06:28:42', '2021-02-07 06:28:43', 'Paul Michale', ''),
(12, 2, 'Jane June', 'jane@gmail.com', 'users/default.png', NULL, '$2y$10$BZuOBvVWrgpCy.Pv4PWUv.EqAoMKXRq4X3UsF.X5rDTAmcLY1Iua2', NULL, NULL, NULL, NULL, 8, NULL, '2021-02-07 06:30:19', '2021-02-07 06:30:20', 'Agnes Judy', ''),
(16, 2, 'Brian Dennis', 'briandennis@gmail.com', 'users/default.png', NULL, '$2y$10$eUGalbaPFZ9MqKO.Y3PRd.4Fo8qnRvQroDewDkHzb41/EWXDPp0l.', NULL, NULL, NULL, NULL, 12, NULL, '2021-02-09 07:48:21', '2021-02-09 07:48:22', 'Paula Vanessa', '0705793148');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
-- Indexes for table `location`
--
ALTER TABLE `location`
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
-- Indexes for table `pulses`
--
ALTER TABLE `pulses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_email_unique` (`email`),
  ADD KEY `team_invitations_team_id_foreign` (`team_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulses`
--
ALTER TABLE `pulses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

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
