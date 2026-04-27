-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2026 at 10:39 AM
-- Server version: 10.6.25-MariaDB
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nixsoftware_sobkisu`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `speech` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `page_desc` varchar(255) NOT NULL,
  `slider_img_one` varchar(255) DEFAULT NULL,
  `slider_img_two` varchar(255) DEFAULT NULL,
  `slider_img_three` varchar(255) DEFAULT NULL,
  `slider_caption_one` varchar(255) NOT NULL,
  `slider_caption_two` varchar(255) NOT NULL,
  `slider_caption_three` varchar(255) NOT NULL,
  `title_one` varchar(255) NOT NULL,
  `title_two` varchar(255) NOT NULL,
  `desc_one` varchar(255) NOT NULL,
  `desc_two` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `cover_image`, `page_title`, `sub_title`, `speech`, `signature`, `page_desc`, `slider_img_one`, `slider_img_two`, `slider_img_three`, `slider_caption_one`, `slider_caption_two`, `slider_caption_three`, `title_one`, `title_two`, `desc_one`, `desc_two`, `video`, `site_name`, `site_url`, `created_at`, `updated_at`) VALUES
(1, '0906_hp_lux_takeover_c06_img1666683720.jpg', 'About Us', 'Read More About Us', '“What I do is about living the best life you can and enjoying the fullness of the life around you. From what you wear to the way you live to the way you love.”', 'signature1666683720.svg', 'Ralph Lauren Corporation (NYSE:RL) is a global leader in the design, marketing and distribution of premium lifestyle products in five categories: apparel, accessories, home, fragrances, and hospitality. For more than 50 years, Ralph Lauren\'s reputation an', 'https://fabbystitch.com/frontend/img/0823_hp_c07_img.jpg', 'https://fabbystitch.com/frontend/img/0906_hp_lux_takeover_c06_img.jpg', 'https://fabbystitch.com/frontend/img/0906_hp_lux_takeover_c02_img.jpg', 'Mirpur, Dhaka\r\n\r\n\r\n', 'Paltan, Dhaka\r\n\r\n\r\n', 'Mohammadpur, Dhaka\r\n\r\n\r\n', 'Our Culture', 'Philanthropy', 'Ralph Lauren is an entrepreneurial, creative business that is built upon a foundation of strong, collaborative relationships. We are a world-class team that has been creating, elevating and celebrating authentic American design and culture since 1967. As', 'We have a strong commitment to giving back to the communities where we live and work. Over the years we have led a variety of philanthropic initiatives supporting programs for cancer care and prevention, education, volunteerism, and the environment.\r\nRalp', 'zxvyS_3tmHM', 'Fabby Stitch', 'Fabby Stitch', '2022-10-24 06:12:58', '2022-10-25 05:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `bangla_text`
--

CREATE TABLE `bangla_text` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_text` varchar(100) DEFAULT NULL,
  `cart_text` varchar(100) DEFAULT NULL,
  `checkout_form_top_text` varchar(100) DEFAULT NULL,
  `name_text` varchar(100) DEFAULT NULL,
  `mobile_text` varchar(100) DEFAULT NULL,
  `address_text` varchar(100) DEFAULT NULL,
  `order_confirm_text` varchar(100) DEFAULT NULL,
  `delivery_text` varchar(100) DEFAULT NULL,
  `select_text` varchar(100) DEFAULT NULL,
  `fshipping_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `bangla_text`
--

INSERT INTO `bangla_text` (`id`, `order_text`, `cart_text`, `checkout_form_top_text`, `name_text`, `mobile_text`, `address_text`, `order_confirm_text`, `delivery_text`, `select_text`, `fshipping_text`) VALUES
(1, 'অর্ডার করুন', 'কার্টে যোগ করুন', 'অর্ডার কনফার্ম করতে আপনার নাম, ঠিকানা, মোবাইল নাম্বার লিখে অর্ডার কনফার্ম করুন বাটনে ক্লিক করুন', 'আপনার নাম', 'আপনার মোবাইল নাম্বার', 'আপনার সম্পূর্ন ঠিকানা', 'অর্ডার কনফার্ম করুন', 'ডেলিভারি এলাকা নির্বাচন করুন', 'যেকোনো একটি নির্বাচন করুন', 'ফ্রি শিপিং');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_ips`
--

CREATE TABLE `blocked_ips` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test sdfgbvregb erre gher', '0906_hp_lux_takeover_c06_img1666696656.jpg', '2022-10-25 09:17:36', '2022-10-25 09:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `parent_id` tinyint(4) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL,
  `is_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type_id`, `parent_id`, `name`, `url`, `created_at`, `updated_at`, `image`, `is_popular`, `is_menu`) VALUES
(4, NULL, NULL, 'Laptop', 'Laptop', '2022-12-17 21:39:58', '2023-09-13 00:42:46', 'laptop cat167135290916795551571694544166.jpg', NULL, NULL),
(5, NULL, NULL, 'Kitchen', 'kitchen', '2022-12-17 21:41:53', '2023-09-13 00:42:57', 'kitchen cat167135289416795551461694544177.jpg', 1, 0),
(9, NULL, NULL, 'Grocery', 'Grocery', '2022-12-18 16:59:16', '2023-09-13 00:43:28', 'Grocery16795551181694544208.jpg', 1, 0),
(10, NULL, NULL, 'Fashion', 'fashion', '2022-12-18 16:59:35', '2023-09-13 00:43:39', 'fashion16795548151694544219.jpg', 1, 1),
(11, NULL, NULL, 'Cosmetics', 'cosmetics', '2022-12-18 17:00:02', '2023-03-23 12:56:47', 'cosmetics1679554607.jpg', 1, 1),
(15, NULL, NULL, 'Hand Bag', 'Hand Bag', '2023-02-18 03:04:20', '2023-09-13 00:43:48', 'bg pink16766680291694544228.jpg', NULL, 1),
(18, NULL, NULL, 'Gadgets', 'Gadgets', '2023-02-27 17:28:37', '2023-09-13 00:43:57', 'il_1140xN.4108445418_d1om16844988481694544237.jpg', 1, 1),
(19, NULL, NULL, 'Tshirt', 'tshirt', '2023-03-18 22:31:24', '2025-10-13 04:44:11', 'ST2000-OBLU16844988401694544247.jpg', 1, 1),
(31, NULL, 31, 'Home Furnishing', 'Bed Sheet & Comforter Set', '2023-11-01 16:12:19', '2023-11-01 16:20:01', 'whinney-pre-washed-microfiber-reversible-3-piece-comforter-set.jpg', 1, NULL),
(40, NULL, NULL, 'Oragnic', 'Oragnic', '2024-03-29 15:51:25', '2024-03-29 15:52:44', 'organic-circle.png', 1, 1),
(41, NULL, NULL, 'Spice', 'Spice', '2024-03-29 15:51:45', '2024-03-29 15:55:07', 'spice.png', 1, 1),
(44, NULL, NULL, 'saree', 'saree', '2026-02-19 12:44:45', '2026-02-19 12:44:45', 'f173586e1f4fe5d7be8ffba5177190f0.jpg_720x720q80.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Default', '000', NULL, '2022-12-17 07:21:06', '2022-12-17 07:21:06'),
(3, 'Black', '#E74C3C', NULL, '2023-02-07 17:23:42', '2026-02-19 14:04:29'),
(28, 'Red', '12', NULL, '2025-11-15 11:07:17', '2025-11-15 11:07:17'),
(29, 'White', '13', NULL, '2025-11-15 11:07:37', '2025-11-15 11:07:37'),
(30, 'Marron', '14', NULL, '2025-11-15 11:07:50', '2025-11-15 11:07:50'),
(31, 'Green', '15', NULL, '2025-11-15 11:08:06', '2025-11-15 11:08:06'),
(32, 'Coffee', '16', NULL, '2025-11-15 11:08:21', '2025-11-15 11:08:21'),
(33, 'Pink', '17', NULL, '2025-11-15 11:08:34', '2025-11-15 11:08:34'),
(34, 'Golden Biscuit', '18', NULL, '2025-11-15 11:10:49', '2025-11-15 11:10:49'),
(35, 'Sky Blue', '110', NULL, '2025-11-15 11:15:02', '2025-11-15 11:15:02'),
(36, 'Royal Blue', '111', NULL, '2025-11-15 11:16:16', '2025-11-15 11:16:16'),
(37, 'Biscute+Marron', '21', NULL, '2025-11-15 11:50:14', '2025-11-15 11:50:14'),
(38, 'Green+Marron', '22', NULL, '2025-11-15 11:50:53', '2025-11-15 11:50:53'),
(39, 'Black+White', '23', NULL, '2025-11-15 11:51:13', '2025-11-15 11:51:13'),
(40, 'Red+Black', '24', NULL, '2025-11-15 11:51:40', '2025-11-15 11:51:40'),
(41, 'Red+White', '25', NULL, '2025-11-15 11:52:03', '2025-11-15 11:52:03'),
(42, 'Green+White', '27', NULL, '2025-11-15 11:55:46', '2025-11-15 11:55:46'),
(43, 'Red+Black+White', '31', NULL, '2025-11-15 11:56:28', '2025-11-15 11:56:28'),
(44, 'Black+Red+White', '32', NULL, '2025-11-15 11:56:44', '2025-11-15 11:56:44'),
(45, 'Green+Marron+Biscute', '000', NULL, '2025-11-15 11:57:04', '2026-02-19 12:47:54'),
(46, 'Maroon+White+Green', '35', NULL, '2025-11-15 11:57:52', '2025-11-15 11:57:52'),
(47, 'Red+White+Green', '37', NULL, '2025-11-15 11:58:10', '2025-11-15 11:58:10'),
(48, 'Nerob Pikash', 'bdf', NULL, '2025-11-15 17:07:15', '2025-11-15 17:07:15'),
(49, 'bdfb', 'bdfbdf', NULL, '2025-11-15 17:07:19', '2025-11-15 17:07:19'),
(50, 'Cash', '40', NULL, '2026-02-19 12:48:44', '2026-02-19 12:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_products`
--

CREATE TABLE `combo_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `combo_id` smallint(6) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `size_id` tinyint(4) NOT NULL,
  `quantity` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Arif Hossain', '0156456456', 'tutul@faanush.com', 'test', '2022-11-24 16:53:17', '2022-11-24 16:53:17'),
(2, 'Arsenio Cline', '01310186926', 'hymov@mailinator.com', 'Dolores dolore nobis', '2023-01-29 16:02:27', '2023-01-29 16:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `discount_type` varchar(40) DEFAULT NULL,
  `minimum_amount` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `code`, `amount`, `start`, `end`, `status`, `discount_type`, `minimum_amount`, `created_at`, `updated_at`) VALUES
(2, 'www1', 100.00, '2022-12-16', '2022-12-16', NULL, 'fixed', 1000.00, '2022-12-16 16:41:25', '2022-12-16 21:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Redx', '01627212113', 'no-reply@bizcareit.com', 'Dhaka', '2022-12-17 07:59:45', '2025-10-13 07:33:43'),
(2, 'Pathao', '01627212113', 'no-reply@bizcareit.com', 'Dhaka', '2023-05-23 14:17:12', '2025-10-13 07:33:59'),
(3, 'Steadfast', '01627212113', 'no-reply@bizcareit.com', 'Dhaka', '2023-07-12 17:41:20', '2025-10-13 07:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `title`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ঢাকার ভিতর', 80.00, 1, NULL, '2025-10-11 19:02:55'),
(3, 'ঢাকার বাহির', 150.00, 1, '0000-00-00 00:00:00', '2025-10-13 08:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `serial` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `serial`, `created_at`, `updated_at`) VALUES
(27, 5, '4', '2026-02-03 17:22:04', '2026-02-03 17:22:04'),
(28, 10, '5', '2026-02-03 17:22:28', '2026-02-03 17:22:28'),
(29, 18, '6', '2026-02-03 17:23:24', '2026-02-03 17:23:24'),
(30, 4, '7', '2026-02-09 11:04:37', '2026-02-09 11:04:37'),
(31, 40, '1', '2026-02-09 11:07:27', '2026-02-09 11:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `home_section_images`
--

CREATE TABLE `home_section_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_for_small` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_section_images`
--

INSERT INTO `home_section_images` (`id`, `title`, `text`, `image`, `mobile_image`, `section`, `link`, `is_for_small`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'bnmnn1698761863.jpg', 'bnmnn1698761863.jpg', 2, 'discount-products', NULL, '2023-01-03 19:32:30', '2023-10-31 20:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `fav_icon` varchar(250) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `whats_num` varchar(100) DEFAULT NULL,
  `whats_active` tinyint(1) NOT NULL DEFAULT 1,
  `msngr_chat` tinyint(1) NOT NULL DEFAULT 1,
  `owner_email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tracking_code` text DEFAULT NULL,
  `msngr_plugin` text DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `recommend_num` int(11) DEFAULT NULL,
  `discount_num` int(11) DEFAULT NULL,
  `newarrival_num` int(11) DEFAULT NULL,
  `bkash` tinyint(4) DEFAULT NULL,
  `bkash_number` varchar(100) DEFAULT NULL,
  `nogod` tinyint(4) DEFAULT NULL,
  `nogod_number` varchar(100) NOT NULL,
  `rocket` tinyint(4) DEFAULT NULL,
  `rocket_number` varchar(100) DEFAULT NULL,
  `paypal` tinyint(4) DEFAULT NULL,
  `paypal_account` varchar(100) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_account` varchar(100) DEFAULT NULL,
  `supp_num1` varchar(20) DEFAULT NULL,
  `supp_num2` varchar(20) DEFAULT NULL,
  `supp_num3` varchar(20) DEFAULT NULL,
  `number_visibility` int(11) DEFAULT NULL,
  `coupon_visibility` tinyint(4) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `redx_status` tinyint(1) NOT NULL DEFAULT 0,
  `redx_api_base_url` varchar(255) DEFAULT NULL,
  `redx_api_access_token` varchar(1000) DEFAULT NULL,
  `pathao_status` tinyint(1) NOT NULL DEFAULT 0,
  `pathao_api_base_url` varchar(255) DEFAULT NULL,
  `pathao_api_access_token` varchar(1500) DEFAULT NULL,
  `pathao_store_id` int(11) DEFAULT NULL,
  `steadfast_api_base_url` varchar(255) DEFAULT NULL,
  `steadfast_api_key` varchar(255) DEFAULT NULL,
  `steadfast_secret_key` varchar(255) DEFAULT NULL,
  `topbar_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_pixel_id` varchar(255) DEFAULT NULL,
  `fb_pixel_test_code` varchar(255) DEFAULT NULL,
  `fb_access_token` longtext DEFAULT NULL,
  `fraudApi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ip_check` int(11) DEFAULT 1,
  `is_mobile_check` int(11) DEFAULT 1,
  `time_limit` int(11) DEFAULT NULL,
  `primary_style` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `primary_background` varchar(255) DEFAULT NULL,
  `primary_background2` varchar(255) DEFAULT NULL,
  `primary_background3` varchar(255) DEFAULT NULL,
  `gradient_code` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `site_name`, `site_logo`, `fav_icon`, `owner_phone`, `whats_num`, `whats_active`, `msngr_chat`, `owner_email`, `address`, `tracking_code`, `msngr_plugin`, `copyright`, `facebook`, `instagram`, `youtube`, `tiktok`, `twitter`, `recommend_num`, `discount_num`, `newarrival_num`, `bkash`, `bkash_number`, `nogod`, `nogod_number`, `rocket`, `rocket_number`, `paypal`, `paypal_account`, `stripe`, `stripe_account`, `supp_num1`, `supp_num2`, `supp_num3`, `number_visibility`, `coupon_visibility`, `currency`, `redx_status`, `redx_api_base_url`, `redx_api_access_token`, `pathao_status`, `pathao_api_base_url`, `pathao_api_access_token`, `pathao_store_id`, `steadfast_api_base_url`, `steadfast_api_key`, `steadfast_secret_key`, `topbar_notice`, `fb_pixel_id`, `fb_pixel_test_code`, `fb_access_token`, `fraudApi`, `is_ip_check`, `is_mobile_check`, `time_limit`, `primary_style`, `primary_color`, `primary_background`, `primary_background2`, `primary_background3`, `gradient_code`) VALUES
(1, 'Nix Software E-Commerce Website', '1109455343.png', '465816762.png', '01310799699', '01310799699', 1, 0, 'info@nixsoftware.net', 'Dhaka 10', NULL, '<div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"101565682830088\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n    </script>\r\n\r\n    <!-- Your SDK code -->\r\n    <script>\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v18.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', '© 2026. All rights reserved.', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', NULL, NULL, 6, 10, 6, 1, '01627212113', 0, '01627212113', 0, '01627212113', 0, 'no-reply@bizcareit.com', 0, 'no-reply@bizcareit.com', '01310799699', '01627212113', '01627212113', 3, 0, 'BDT', 0, 'https://sandbox.redx.com.bd/v1.0.0-beta/', NULL, 1, 'https://api-hermes.pathao.com', NULL, NULL, 'https://portal.packzy.com/api/v1', 'okynh23ge6qcipqzxay2afgcdi3i0xzc', 'khtngdkdnzxuml5wyyy8dmgv', 'অনলাইন শপে আপনাকে স্বাগতম |অনলাইনে আস্থা ও বিশ্বস্ততার সাথে সারা বাংলাদেশে হোম ডেলিভারী দেওয়া হয়। অর্ডার করতে অগ্রিম কোন টাকা দিতে হয় না।২-৪ দিনের মধ্যে  সারাদেশে হোম ডেলিভারী দেওয়া হয়।ক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে,ধন্যবাদ।', '00000000', NULL, NULL, '4bf3c91af744a150d2f74c', 0, 0, 60, 'style1', '#ffffff', '#052042', '#052042', '#052042', 'linear-gradient(90deg, rgba(5, 32, 66, 1) 0%, rgba(5, 32, 66, 1) 35%, rgba(5, 32, 66, 1) 100%)');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `title2` text DEFAULT NULL,
  `video_url` text DEFAULT NULL,
  `des1` text DEFAULT NULL,
  `call_text` varchar(255) DEFAULT NULL,
  `regular_price_text` text DEFAULT NULL,
  `offer_price_text` text DEFAULT NULL,
  `left_side_title` varchar(255) DEFAULT NULL,
  `left_side_desc` text DEFAULT NULL,
  `right_side_title` varchar(255) DEFAULT NULL,
  `right_side_desc` text DEFAULT NULL,
  `top_heading_text` varchar(255) DEFAULT NULL,
  `left_product_details` text DEFAULT NULL,
  `right_product_image` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `review_top_text` varchar(255) DEFAULT NULL,
  `landing_bg` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `old_price` varchar(200) DEFAULT NULL,
  `new_price` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `des3` text DEFAULT NULL,
  `page_type` tinyint(1) DEFAULT NULL,
  `pay_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `product_id`, `title1`, `title2`, `video_url`, `des1`, `call_text`, `regular_price_text`, `offer_price_text`, `left_side_title`, `left_side_desc`, `right_side_title`, `right_side_desc`, `top_heading_text`, `left_product_details`, `right_product_image`, `feature`, `review_top_text`, `landing_bg`, `image`, `old_price`, `new_price`, `phone`, `des3`, `page_type`, `pay_text`, `created_at`, `updated_at`) VALUES
(85, 177, 'ড্রাই ফ্রুটের অনন্য স্বাদ আর ন্যাচারাল হানির পুষ্টিকর গুন এখন এক জায়গায়', '<p><br />\r\nঅরিজিনাল ইমপোর্টেড শার্টিং ফাইন কটন কাপরের ফরমাল শার্ট, যা আপনার অফিস বা পার্টি তে যাওয়ার জন্য বেস্ট চয়েজ হতে পারে</p>', '<iframe width=\"1296\" height=\"480\" src=\"https://www.youtube.com/embed/tgvXXbONtQw\" title=\"মিক্সড মাসালা ড্রাই ফ্রুটস/মধুময় বাদাম মিক্সড/ Mixed Dry Fruits/Honey Nuts Recipe\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '<ul>\r\n	<li>প্রত্যেকটি শার্ট সিলিকন প্রিমিয়াম ওয়াস করা, খুবই সফট ও সুন্দর</li>\r\n	<li>চায়না থেকে ইমপোর্ট করা ফেব্রিক্স ব্যাবহারে খুবই আরামদায়ক</li>\r\n</ul>', 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন', 'মধুময় বাদাম এর আগের দাম  ১২০০/=', 'মধুময় বাদাম এর বর্তমান দাম ১০০০/=', 'মধুময় বাদাম খাওয়ার উপকারিতা', '<ul>\r\n	<li>কোষ্ঠকাঠিন্য (কষা) দূর করতে সাহায্য করে,</li>\r\n	<li>&nbsp;প্রস্রাবে ক্ষয়/ প্রস্রাবে জ্বালাপোড়া দূর করতে সাহায্য করে,</li>\r\n	<li>&nbsp;হিট স্ট্রোকের চিকিৎসায় মাড়ি শীতলকারী হিসেবে কাজ করে</li>\r\n	<li>&nbsp;নতুন মায়ের স্বাস্থ্যের জন্য কাতিলাগাম দুর্দান্ত ।</li>\r\n	<li>&nbsp;এটি মা এবং শিশু উভয়ের জন্যই উপকারী বলে জানা যায়।</li>\r\n	<li>হার্টের ব্যাধি থেকে মুক্তি দিন।</li>\r\n	<li>হজমে সহায়তা করে।</li>\r\n	<li>&nbsp; খারাপ কোলেস্টেরলের মাত্রা কমিয়ে দিতে পারে।</li>\r\n	<li>&nbsp; বুস্ট ইমিউন সিস্টেম।</li>\r\n	<li>&nbsp; ডায়াবেটিসের ঝুঁকি কমায়।</li>\r\n</ul>', 'মধুময় বাদাম খাওয়ার নিয়ম', '<ul>\r\n	<li>&nbsp;এটি মা এবং শিশু উভয়ের জন্যই উপকারী বলে জানা যায়।</li>\r\n	<li>হার্টের ব্যাধি থেকে মুক্তি দিন।</li>\r\n	<li>হজমে সহায়তা করে।</li>\r\n	<li>&nbsp; খারাপ কোলেস্টেরলের মাত্রা কমিয়ে দিতে পারে।</li>\r\n	<li>&nbsp; বুস্ট ইমিউন সিস্টেম।</li>\r\n	<li>&nbsp; ডায়াবেটিসের ঝুঁকি কমায়।</li>\r\n	<li>&nbsp;কোষ্ঠকাঠিন্য (কষা) দূর করতে সাহায্য করে,</li>\r\n	<li>&nbsp;প্রস্রাবে ক্ষয়/ প্রস্রাবে জ্বালাপোড়া দূর করতে সাহায্য করে,</li>\r\n	<li>&nbsp;হিট স্ট্রোকের চিকিৎসায় মাড়ি শীতলকারী হিসেবে কাজ করে</li>\r\n	<li>&nbsp;নতুন মায়ের স্বাস্থ্যের জন্য কাতিলাগাম দুর্দান্ত ।</li>\r\n</ul>', 'হানি নাট (মধু ও বাদাম)', '<h2>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>এই মধু প্রাকৃতিক চাক থেকে সংগৃহীত।</li>\r\n	<li>আমাদের কাছে খাঁটি মধুর নিশ্চয়তা পাবেন।</li>\r\n	<li>আমাদের কাছে খাঁটি মধুর নিশ্চয়তা পাবেন।</li>\r\n	<li>মধু সংগ্রহ থেকে প্যাকেজিং পর্যন্ত কার্যাবলী</li>\r\n	<li>&nbsp;নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</li>\r\n	<li>বেস্ট ড্রাই ফ্রুট এর কম্বিনেশন দিয়ে তৈরি কর</li>\r\n	<li>&nbsp;নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</li>\r\n	<li>বেস্ট ড্রাই ফ্রুট এর কম্বিনেশন দিয়ে তৈরি কর</li>\r\n</ul>', 'img31701861295170201336417023151281713857730.png', '১ টাকাও এডভান্স করতে হবে না পোডাক্ট হাতে পেয়ে দেখে পেমেন্ট করবেন।', 'সম্মানিত কাষ্টমারদের রিভিউ সমূহ', 'b117023934721713857730.jpg', NULL, '1200', '990', '01615597820', '<ul>\r\n	<li><tt>সাইজ: M =&gt; দৈর্ঘ্য ২৯.৫&quot; - বুক ৪১&quot;</tt></li>\r\n	<li><tt>সাইজ: L =&gt; দৈর্ঘ্য ৩০.৫&quot; - বুক ৪৩&quot;</tt></li>\r\n	<li><tt>সাইজ: XL =&gt; দৈর্ঘ্য ৩১.৫&quot; - বুক ৪৬&quot;</tt></li>\r\n	<li><tt>সাইজ: XXL =&gt; দৈর্ঘ্য ৩২.৫&quot; - বুক ৪৮&quot;</tt></li>\r\n</ul>', 1, NULL, '2023-11-02 13:04:23', '2024-04-23 13:38:03'),
(86, 10, 'Test One', NULL, '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/o0SU8YoVG0I\" title=\"Forgot Password | Laravel 8 Tutorials # 44 | Urdu &amp; Hindi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন', '৪০০ গ্রাম সজিনা পাতার পাউডারের রেগুলার প্রাইস- ১৫০০/=', '৪০০ গ্রাম সজিনা পাতার পাউডারের অফার প্রাইস- ১০৫০/=', 'সজিনা পাতার উপকারিতা', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', 'সেবনে সঠিক নিয়ম', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', 'আমাদের উপর কেন আস্থা রাখবেন ??', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', '112ba354221823db48dcdf61ac2a6d45 - Copy1702466846.jpg', '১ টাকাও এডভান্স করতে হবে না পোডাক্ট হাতে পেয়ে দেখে পেমেন্ট করবেন।', NULL, '1e381892e95970455dbc7b4e9590852b1702466846.jpg', NULL, '1200', '1000', '01762223972', NULL, 1, NULL, '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(87, 10, 'Test One', NULL, '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/o0SU8YoVG0I\" title=\"Forgot Password | Laravel 8 Tutorials # 44 | Urdu &amp; Hindi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন', '৪০০ গ্রাম সজিনা পাতার পাউডারের রেগুলার প্রাইস- ১৫০০/=', '৪০০ গ্রাম সজিনা পাতার পাউডারের অফার প্রাইস- ১০৫০/=', 'সজিনা পাতার উপকারিতা', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', 'সেবনে সঠিক নিয়ম', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', 'আমাদের উপর কেন আস্থা রাখবেন ??', '<ul>\r\n	<li>zsdgdshsdhdzsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n	<li>zsdgdshsdhd</li>\r\n</ul>', '112ba354221823db48dcdf61ac2a6d45 - Copy1702466855.jpg', '১ টাকাও এডভান্স করতে হবে না পোডাক্ট হাতে পেয়ে দেখে পেমেন্ট করবেন।', NULL, '1e381892e95970455dbc7b4e9590852b1702466855.jpg', NULL, '1200', '1000', '01762223972', NULL, 1, NULL, '2023-12-13 17:27:35', '2023-12-13 17:27:35'),
(88, 320, 'Page Title Updated', NULL, '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/o0SU8YoVG0I\" title=\"Forgot Password | Laravel 8 Tutorials # 44 | Urdu &amp; Hindi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন updted', '৪০০ গ্রাম সজিনা পাতার পাউডারের রেগুলার প্রাইস- ১৫০০/= updsetd', '৪০০ গ্রাম সজিনা পাতার পাউডারের অফার প্রাইস- ১০৫০/= updated', 'সজিনা পাতার উপকারিতা updted', '<ul>\r\n	<li>dgdgdgddfasg updated</li>\r\n	<li>dgdgdgddfasg</li>\r\n	<li>dgdgdgddfasg</li>\r\n	<li>dgdgdgddfasg</li>\r\n</ul>', 'সেবনে সঠিক নিয়ম updated', '<ul>\r\n	<li>zdgsdfhdsfhd updated</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n</ul>', 'আমাদের উপর কেন আস্থা রাখবেন ?? updated', '<ul>\r\n	<li>zdgsdfhdsfhd updted</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n	<li>zdgsdfhdsfhd</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '8efd04182468e4a667524ab975e42dd01702468389.jpg', '১ টাকাও এডভান্স করতে হবে না পোডাক্ট হাতে পেয়ে দেখে পেমেন্ট করবেন।', NULL, 'b317019325241703065983.jpg', NULL, '12000', '10000', '01762223977', NULL, 1, NULL, '2023-12-13 17:53:09', '2023-12-20 16:08:46'),
(89, 332, 'Last Test', NULL, '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/tWPePzWo7_E\" title=\"আমের নতুন রাজধানীর দাবিদার নওগাঁর সাপাহার || Mango World of Sapahar || Naogaon\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন', '৪০০ গ্রাম সজিনা পাতার পাউডারের রেগুলার প্রাইস- ১৫০০/=', '৪০০ গ্রাম সজিনা পাতার পাউডারের অফার প্রাইস- ১০৫০/=', 'সজিনা পাতার উপকারিতা', '<ul>\r\n	<li>sssssss</li>\r\n	<li>sssssss</li>\r\n	<li>ssssssss</li>\r\n	<li>sssssss</li>\r\n</ul>', 'সেবনে সঠিক নিয়ম', '<ul>\r\n	<li>sssssss</li>\r\n	<li>sssssss</li>\r\n	<li>ssssssss</li>\r\n	<li>sssssss</li>\r\n</ul>', 'আমাদের উপর কেন আস্থা রাখবেন ??', '<ul>\r\n	<li>sssssss</li>\r\n	<li>sssssss</li>\r\n	<li>ssssssss</li>\r\n	<li>sssssss</li>\r\n</ul>', 'img31701861295170201336417023151281703756014.png', '১ টাকাও এডভান্স করতে হবে না পোডাক্ট হাতে পেয়ে দেখে পেমেন্ট করবেন।', '\"সম্মানিত কাষ্টমারদের রিভিউ সমূহ\"', 'b117023934721703756071.jpg', NULL, '1200', '1000', '01762223976', NULL, 1, NULL, '2023-12-20 17:07:26', '2024-01-03 17:45:34'),
(91, 324, 'অসাধারণ প্রিমিয়াম কোয়ালিটি পলো টি-শার্ট।', NULL, '<iframe width=\"1284\" height=\"468\" src=\"https://www.youtube.com/embed/hlx6tSF6V7g\" title=\"Branded tshirt wholesaler in Kolkata | COD-EMI | Barabazar\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', NULL, 'আমাদের থেকে বিস্তারিত জানতে এই নাম্বারে কল করুন', NULL, NULL, 'কোন প্রকার এডভান্স ছাড়াই সমগ্র বাংলাদেশের হোম ডেলিভারি।', '<ul>\r\n	<li>ঈদ স্পেশাল কানেকশন</li>\r\n	<li>অসাধারণ প্রিমিয়াম কোয়ালিটি পলো টি-শার্ট।</li>\r\n	<li>Fabric Details: 100%  PK Cotton.</li>\r\n	<li>Measurement Chart:</li>\r\n	<li>Size:M/Chest-38/Long-28</li>\r\n	<li>Size:L/Chest-40/Long-29</li>\r\n	<li>Size:XL/Chest-42/Long-30</li>\r\n	<li>কোন প্রকার এডভান্স ছাড়াই সমগ্র বাংলাদেশের হোম ডেলিভারি।</li>\r\n	<li>ঢাকার মধ্যে ডেলিভারি চার্জ 60 টাকা এবং ঢাকার বাইরে ডেলিভারি চার্জ 130 টাকা।</li>\r\n</ul>\r\n\r\n<p> </p>', NULL, NULL, NULL, NULL, NULL, 'অসাধারণ প্রিমিয়াম কোয়ালিটি পলো টি-শার্ট।', '\"সম্মানিত কাষ্টমারদের রিভিউ সমূহ\"', 't11713858408.jpg', NULL, NULL, NULL, '01762223975', NULL, 2, NULL, '2024-02-06 19:02:37', '2025-10-13 04:52:22'),
(92, 118, 'প্রিয়জনকে উপহার কেন দিবেন?', NULL, NULL, NULL, 'call us', 'discount', 'discount', 'res res RES RES RES', '<p>MMHJKKK&nbsp; &nbsp;KKKKK&nbsp; KKKK&nbsp;&nbsp;</p>', 'sss yes  yes yes yes', '<p>asdxdkjhasldjnAKSNKLnak KAJNHLaknsklANS ajnSKNaksnklaSN KajbslASBLKaklsnA S KjbaljsbajsnA SaalshALKSHKAs ADKadhlkxaDKS D</p>', 'YES YES YES YES', '<p>sdxigsuidbuksbjka JKASNSXLAKNAMS alksjnKASNKLNAs AKJSNLkasnlnSKKlaa jkslAS&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>SXBAsjkAJKSKa kjbLJASLas&nbsp;</p>', 'photo_6203833724110488146_y1724990208.jpg', 'নেকলেসটি আপনার প্রিয়জনের জন্য সেরা উপহার', 'alhamdulillah', 'photo_6203833724110488146_y1724990208.jpg', NULL, '2000', '750', '01924615814', NULL, NULL, NULL, '2024-08-30 09:56:48', '2024-08-30 09:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sliders`
--

CREATE TABLE `landing_page_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landing_page_id` bigint(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `landing_page_sliders`
--

INSERT INTO `landing_page_sliders` (`id`, `landing_page_id`, `image`, `created_at`, `updated_at`) VALUES
(35, 62, '116910414571691150636.webp', '2023-08-04 12:03:56', '2023-08-04 12:03:56'),
(36, 62, '316908920741691150636.jpg', '2023-08-04 12:03:56', '2023-08-04 12:03:56'),
(38, 62, '516908867501691151082.jpg', '2023-08-04 12:11:22', '2023-08-04 12:11:22'),
(39, 63, 'e2_16780111241691216549.jpg', '2023-08-05 06:22:29', '2023-08-05 06:22:29'),
(40, 63, 'h1_16777031951691216549.jpg', '2023-08-05 06:22:29', '2023-08-05 06:22:29'),
(41, 63, 'h2_16777032121691216549.jpg', '2023-08-05 06:22:29', '2023-08-05 06:22:29'),
(42, 64, 'Itel-Vision-2-Plus-120x120 (2)1691239199.jpg', '2023-08-05 12:39:59', '2023-08-05 12:39:59'),
(43, 64, 'Itel-Vision-2-Plus-120x1201691239199.jpg', '2023-08-05 12:39:59', '2023-08-05 12:39:59'),
(44, 65, 'Itel-Vision-2-Plus-120x120 (1)1691239285.jpg', '2023-08-05 12:41:25', '2023-08-05 12:41:25'),
(45, 65, 'Itel-Vision-2-Plus-120x120 (2)1691239285.jpg', '2023-08-05 12:41:25', '2023-08-05 12:41:25'),
(46, 65, 'Itel-Vision-2-Plus-120x1201691239285.jpg', '2023-08-05 12:41:25', '2023-08-05 12:41:25'),
(47, 66, 'Itel-Vision-2-Plus-120x120 (1)1691311259.jpg', '2023-08-06 08:40:59', '2023-08-06 08:40:59'),
(48, 66, 'Itel-Vision-2-Plus-120x120 (2)1691311259.jpg', '2023-08-06 08:40:59', '2023-08-06 08:40:59'),
(49, 66, 'Itel-Vision-2-Plus-120x1201691311259.jpg', '2023-08-06 08:40:59', '2023-08-06 08:40:59'),
(53, 68, 'wh1692610139.png', '2023-08-21 15:28:59', '2023-08-21 15:28:59'),
(54, 69, '64e379726d677 (1)1693129581.jpg', '2023-08-27 15:46:21', '2023-08-27 15:46:21'),
(57, 67, 'slider11693682306.jpg', '2023-09-03 01:18:26', '2023-09-03 01:18:26'),
(58, 67, 'slider21693682306.jpg', '2023-09-03 01:18:26', '2023-09-03 01:18:26'),
(59, 67, 'slider31693682306.jpg', '2023-09-03 01:18:26', '2023-09-03 01:18:26'),
(60, 71, '64f77c9fcacc8_800x8001694010009.webp', '2023-09-06 20:20:09', '2023-09-06 20:20:09'),
(61, 72, 'graphics-card1694191718.png', '2023-09-08 22:48:38', '2023-09-08 22:48:38'),
(62, 72, 'laptop1694191718.png', '2023-09-08 22:48:38', '2023-09-08 22:48:38'),
(66, 74, 'Itel-Vision-2-Plus-120x120 (1)1694327689.jpg', '2023-09-10 12:34:49', '2023-09-10 12:34:49'),
(67, 74, 'Itel-Vision-2-Plus-120x120 (2)1694327689.jpg', '2023-09-10 12:34:49', '2023-09-10 12:34:49'),
(68, 75, '360_F_510360390_fKaUh2zBsp96AXBjZbyty7b8mXEykk9y1694496935.jpg', '2023-09-12 11:35:35', '2023-09-12 11:35:35'),
(69, 75, 'cal button1694496935.jpg', '2023-09-12 11:35:35', '2023-09-12 11:35:35'),
(70, 75, 'home1694496935.png', '2023-09-12 11:35:35', '2023-09-12 11:35:35'),
(71, 76, 'cal button1694497997.jpg', '2023-09-12 11:53:17', '2023-09-12 11:53:17'),
(72, 76, 'home1694497997.png', '2023-09-12 11:53:17', '2023-09-12 11:53:17'),
(73, 77, '64e379726d677 (1)1694517122.jpg', '2023-09-12 17:12:02', '2023-09-12 17:12:02'),
(74, 77, '64e379726d6771694517122.jpg', '2023-09-12 17:12:02', '2023-09-12 17:12:02'),
(75, 78, '64e379726d677 - Copy1694533854.jpg', '2023-09-12 21:50:54', '2023-09-12 21:50:54'),
(76, 78, '64e379726d677 (1)1694533854.jpg', '2023-09-12 21:50:54', '2023-09-12 21:50:54'),
(77, 78, '64e379726d6771694533854.jpg', '2023-09-12 21:50:54', '2023-09-12 21:50:54'),
(78, 79, '11695581387.jpg', '2023-09-25 00:49:47', '2023-09-25 00:49:47'),
(79, 79, '21695581387.jpg', '2023-09-25 00:49:47', '2023-09-25 00:49:47'),
(80, 79, '31695581387.jpg', '2023-09-25 00:49:47', '2023-09-25 00:49:47'),
(81, 79, '41695581387.jpg', '2023-09-25 00:49:47', '2023-09-25 00:49:47'),
(83, 80, '21695591698.jpg', '2023-09-25 03:41:38', '2023-09-25 03:41:38'),
(88, 82, '3169089444916911400501695618073.jpg', '2023-09-25 11:01:13', '2023-09-25 11:01:13'),
(89, 82, '5169088675016911427821695618073.jpg', '2023-09-25 11:01:13', '2023-09-25 11:01:13'),
(90, 82, 'car mobile116911797421695618073.jpg', '2023-09-25 11:01:13', '2023-09-25 11:01:13'),
(91, 83, '312237946_471533318376882_2887324828416828911_n_169078108916911387661695624828.jpg', '2023-09-25 12:53:48', '2023-09-25 12:53:48'),
(92, 83, 'car mobile116911596601695624828.jpg', '2023-09-25 12:53:48', '2023-09-25 12:53:48'),
(93, 83, 'Elegant-Inlaid-Rhinestone-Korean-Bracelets-Gold-Colour-Flower-Charm-Bracelet-For-Women-Fashion-Jewelry-Accessories-Party.jpg_Q90.jpg_ (4)_169077888916911383941695624828.webp', '2023-09-25 12:53:48', '2023-09-25 12:53:48'),
(98, 73, 'm11695842514.jpg', '2023-09-28 01:21:54', '2023-09-28 01:21:54'),
(99, 73, 'm21695842514.jpg', '2023-09-28 01:21:54', '2023-09-28 01:21:54'),
(100, 73, 'm31695842514.jpg', '2023-09-28 01:21:54', '2023-09-28 01:21:54'),
(101, 73, 'm51695842514.jpg', '2023-09-28 01:21:54', '2023-09-28 01:21:54'),
(102, 81, 'a11695844074.jpg', '2023-09-28 01:47:54', '2023-09-28 01:47:54'),
(103, 81, 'a21695844074.jpg', '2023-09-28 01:47:54', '2023-09-28 01:47:54'),
(104, 81, 'a31695844074.jpg', '2023-09-28 01:47:54', '2023-09-28 01:47:54'),
(105, 81, 'a41695844074.jpg', '2023-09-28 01:47:54', '2023-09-28 01:47:54'),
(106, 81, 'a51695844074.jpg', '2023-09-28 01:47:54', '2023-09-28 01:47:54'),
(107, 84, '1K (1)1695885737.jpg', '2023-09-28 13:22:17', '2023-09-28 13:22:17'),
(108, 84, '1K1695885737.jpg', '2023-09-28 13:22:17', '2023-09-28 13:22:17'),
(109, 84, '1N16943390231695885737.jpg', '2023-09-28 13:22:17', '2023-09-28 13:22:17'),
(115, 86, '8c30afc60616ca7750706de6191ddab01702466846.jpg', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(116, 86, '33b160764b1a0f98a88238fce8dd08b41702466846.jpg', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(117, 86, '112ba354221823db48dcdf61ac2a6d451702466846.jpg', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(118, 87, '8c30afc60616ca7750706de6191ddab01702466856.jpg', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(119, 87, '33b160764b1a0f98a88238fce8dd08b41702466856.jpg', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(120, 87, '112ba354221823db48dcdf61ac2a6d451702466856.jpg', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(121, 88, '1e381892e95970455dbc7b4e9590852b1702468389.jpg', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(122, 88, '8efd04182468e4a667524ab975e42dd01702468389.jpg', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(123, 88, '33b160764b1a0f98a88238fce8dd08b41702468389.jpg', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(127, 89, 'h117023151281703755116.webp', '2023-12-28 15:18:36', '2023-12-28 15:18:36'),
(131, 89, 'h217023151281703755904.png', '2023-12-28 15:31:44', '2023-12-28 15:31:44'),
(132, 90, 'ladies-fashionable-long-sleeved-single-breasted-shirt-womens-western-style-tops-2023-12-08-10-10-46-52671704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(133, 90, 'ladies-fashionable-long-sleeved-single-breasted-shirt-womens-western-style-tops-2023-12-08-10-10-46-54871704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(134, 90, 'ladies-fashionable-long-sleeved-single-breasted-shirt-womens-western-style-tops-2023-12-08-10-10-46-78911704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(135, 91, 'a11695844074 (1)1707224557.jpg', '2024-02-06 19:02:37', '2024-02-06 19:02:37'),
(136, 91, 'a416958440741707224557.jpg', '2024-02-06 19:02:37', '2024-02-06 19:02:37'),
(138, 91, 'a216958440741707226094.jpg', '2024-02-06 19:28:14', '2024-02-06 19:28:14'),
(139, 85, 'a11713857883.webp', '2024-04-23 13:38:03', '2024-04-23 13:38:03'),
(140, 85, 'a21713857883.png', '2024-04-23 13:38:03', '2024-04-23 13:38:03'),
(141, 92, 'photo_6203833724110488144_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48'),
(142, 92, 'photo_6203833724110488145_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48'),
(143, 92, 'photo_6203833724110488146_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_21_061530_create_products_table', 2),
(6, '2022_09_21_105808_create_sliders_table', 3),
(7, '2022_09_21_105823_create_categories_table', 3),
(8, '2022_09_21_110337_add_title_to_sliders_table', 4),
(9, '2022_09_22_073647_add_image_to_categories_table', 5),
(10, '2022_09_27_092211_create_orders_table', 6),
(11, '2022_09_27_092410_create_order_details_table', 6),
(12, '2022_09_27_092547_create_order_payments_table', 6),
(13, '2022_09_28_152539_create_types_table', 7),
(14, '2022_09_28_152648_create_sizes_table', 7),
(15, '2022_09_28_152701_create_product_sizes_table', 8),
(16, '2022_10_13_111702_create_home_section_images_table', 9),
(17, '2022_10_14_104010_create_purchase_payments_table', 10),
(18, '2022_10_14_104112_create_purchases_table', 10),
(19, '2022_10_14_104348_create_purchase_lines_table', 10),
(20, '2022_10_14_105435_create_product_stocks_table', 10),
(21, '2022_10_14_120042_create_suppliers_table', 11),
(22, '2022_10_19_115117_create_permission_tables', 12),
(23, '2022_10_24_114941_create_about_us_table', 13),
(24, '2022_10_24_120601_create_careers_table', 13),
(25, '2022_10_25_173552_create_social_icons_table', 13),
(26, '2022_10_27_123708_create_combos_table', 14),
(27, '2022_10_27_123729_create_combo_products_table', 14),
(28, '2022_11_11_150834_create_product_images_table', 15),
(29, '2022_11_20_001912_create_colors_table', 16),
(30, '2022_11_20_002214_create_variations_table', 16),
(31, '2022_11_24_224227_create_contacts_table', 17),
(32, '2022_12_17_134049_create_couriers_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(6, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1241),
(8, 'App\\Models\\User', 1392);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'due',
  `status` varchar(50) DEFAULT 'pending',
  `order_status` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `total_purchase` varchar(255) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `final_amount` decimal(10,2) DEFAULT 0.00,
  `delivery_charge_id` tinyint(4) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT 0.00,
  `delivery_type` tinyint(4) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `courier_id` tinyint(4) DEFAULT NULL,
  `courier_tracking_id` varchar(255) DEFAULT NULL,
  `courier_tracking_code` text DEFAULT NULL,
  `courier_status` varchar(100) DEFAULT NULL,
  `assign_user_id` mediumint(9) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `shipping_address`, `ip_address`, `area_id`, `area_name`, `city`, `state`, `zip_code`, `first_name`, `last_name`, `mobile`, `email`, `date`, `payment_status`, `status`, `order_status`, `amount`, `total_purchase`, `tax`, `discount`, `final_amount`, `delivery_charge_id`, `shipping_charge`, `delivery_type`, `note`, `courier_id`, `courier_tracking_id`, `courier_tracking_code`, `courier_status`, `assign_user_id`, `store_id`, `weight`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 1666, '413595', 'fghmfgh sdvfsd', '103.210.56.104', NULL, NULL, NULL, NULL, NULL, 'Nerob Pikash', NULL, '01711111111', NULL, '2025-11-20', 'due', 'pending', NULL, 850.00, NULL, 0.00, 550.00, 700.00, 3, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, '0.5', '2025-11-20 10:12:58', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(10, 1700, '550234', 'fghmfgh sdvfsd', '103.210.56.104', NULL, NULL, NULL, NULL, NULL, 'Nerob Pikash', NULL, '01975400073', NULL, '2025-11-20', 'due', 'pending', NULL, 2100.00, NULL, 0.00, 1050.00, 1200.00, 3, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, NULL, '2025-11-20 10:13:44', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(11, 1701, '196097', 'test', '103.86.108.185', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '01191999999', NULL, '2025-12-05', 'due', 'pending', NULL, 2500.00, NULL, 0.00, 1250.00, 1330.00, 2, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, NULL, '2025-12-05 08:03:03', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(12, 1702, '412299', '', NULL, NULL, NULL, NULL, NULL, NULL, 'OK', NULL, '01791224455', NULL, '2025-12-05', 'due', 'cancell', NULL, 1100.00, NULL, 0.00, 550.00, 550.00, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, NULL, '2025-12-05 13:33:27', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(13, 1703, '397467', 'DHAKA', '103.86.108.188', NULL, NULL, NULL, NULL, NULL, 'JALAL', NULL, '01711111111', NULL, '2025-12-06', 'due', 'cancell', NULL, 1100.00, NULL, 0.00, 550.00, 550.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, NULL, '2025-12-06 11:00:19', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(14, 1666, '211035', 'Mymensingh', '118.67.208.57', NULL, NULL, NULL, NULL, NULL, 'Pikash', NULL, '01627212113', NULL, '2025-12-06', 'due', 'courier', NULL, 1400.00, NULL, 0.00, 550.00, 1250.00, 3, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, '0.5', '2025-12-06 12:14:04', '2025-12-07 06:17:33', '2025-12-07 06:17:33'),
(15, 1704, '647280', 'dhaka rfrfrf', '118.67.208.57', NULL, NULL, NULL, NULL, NULL, 'sarna', NULL, '01705174061', NULL, '2025-12-07', 'due', 'processing', NULL, 850.00, NULL, 0.00, 550.00, 700.00, 3, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, '0.5', '2025-12-07 10:36:03', '2025-12-10 07:12:14', '2025-12-10 07:12:14'),
(16, 1666, '731577', '8iju8ij98i', '202.134.14.232', NULL, NULL, NULL, NULL, NULL, '6ujn67uj', NULL, '01627212113', NULL, '2025-12-09', 'due', 'pending', NULL, 800.00, NULL, 0.00, 0.00, 950.00, 3, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 1667, NULL, NULL, '2025-12-08 19:05:44', '2025-12-10 07:12:14', '2025-12-10 07:12:14'),
(17, 1, '504007', 'dhaka, uttara-10', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'raisul', NULL, '01310799699', NULL, '2026-02-03', 'due', 'courier', NULL, 2660.00, NULL, 0.00, 0.00, 2580.00, 2, 80.00, NULL, NULL, 3, '217276938', 'SFR260209ST31E5409BD', 'in_review', 1667, NULL, '0.5', '2026-02-03 17:50:23', '2026-02-09 11:10:52', NULL),
(18, 1, '351407', 'dhaka, uttara-10', '103.72.212.233', NULL, NULL, NULL, NULL, NULL, 'abu taher', NULL, '01310799699', NULL, '2026-02-09', 'due', 'courier', NULL, 1250.00, NULL, 0.00, 0.00, 1330.00, 2, 80.00, NULL, NULL, 3, '217277733', 'SFR260209ST7556EACBD', 'in_review', NULL, NULL, NULL, '2026-02-09 11:12:07', '2026-02-09 11:14:23', NULL),
(19, 1715, '949557', 'Uttara, Dhaka', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'Jalal', NULL, '01740247505', NULL, '2026-02-15', 'due', 'pending', NULL, 859.00, NULL, 0.00, 0.00, 859.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-15 13:00:05', '2026-02-15 13:00:13', NULL),
(20, 1, '570223', 'dhaka, uttara-10', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'raisul', NULL, '01310799699', NULL, '2026-02-16', 'due', 'pending', NULL, 3436.00, NULL, 0.00, 0.00, 3436.00, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-16 19:33:28', '2026-02-16 19:33:51', NULL),
(21, 1, '911620', 'dhaka,uttara', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'NAZMUL', NULL, '01310799699', NULL, '2026-02-19', 'due', 'processing', NULL, 14160.00, NULL, 0.00, 0.00, 14080.00, 2, 80.00, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, '0.5', '2026-02-19 12:58:17', '2026-02-19 13:04:03', NULL),
(22, 1716, '258765', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Hafej', NULL, '09876543212', NULL, '2026-02-19', 'due', 'incomplete', NULL, 1500.00, NULL, 0.00, 10.00, 1490.00, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-19 13:07:34', '2026-02-19 13:07:34', NULL),
(23, 1715, '968145', 'Uttara, Dhaka', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'Shah Jalal', NULL, '01740247505', NULL, '2026-02-19', 'due', 'pending', NULL, 320.00, NULL, 0.00, 0.00, 400.00, 2, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-19 13:36:16', '2026-02-19 13:36:28', NULL),
(24, 1715, '486109', 'Uttara, Dhaka', '103.72.212.244', NULL, NULL, NULL, NULL, NULL, 'Shah Jalal', NULL, '01740247505', NULL, '2026-02-19', 'due', 'pending', NULL, 2800.00, NULL, 0.00, 0.00, 2880.00, 2, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-19 14:00:46', '2026-02-19 14:00:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `quantity` decimal(5,2) DEFAULT NULL,
  `variation_id` mediumint(9) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT 0.00,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `is_stock` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `variation_id`, `unit_price`, `purchase_price`, `discount`, `is_stock`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 17, 366, 2.00, 535, 1250.00, 0.00, 0.00, 1, '2026-02-03 17:50:33', '2026-02-03 17:56:21', NULL),
(35, 18, 366, 1.00, 535, 1250.00, 0.00, 0.00, 1, '2026-02-09 11:12:13', '2026-02-09 11:12:13', NULL),
(37, 19, 367, 1.00, 536, 859.00, 0.00, 0.00, 1, '2026-02-15 13:00:13', '2026-02-15 13:00:13', NULL),
(39, 20, 367, 4.00, 536, 859.00, 0.00, 0.00, 1, '2026-02-16 19:33:51', '2026-02-16 19:33:51', NULL),
(41, 21, 370, 5.00, 540, 2800.00, 2000.00, 0.00, 1, '2026-02-19 12:59:57', '2026-02-19 13:04:03', NULL),
(42, 22, 353, 1.00, 519, 1490.00, 0.00, 10.00, 1, '2026-02-19 13:07:34', '2026-02-19 13:07:34', NULL),
(44, 23, 341, 1.00, 486, 320.00, 0.00, 0.00, 1, '2026-02-19 13:36:28', '2026-02-19 13:36:28', NULL),
(46, 24, 370, 1.00, 541, 2800.00, 2000.00, 0.00, 1, '2026-02-19 14:00:49', '2026-02-19 14:00:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `method` varchar(50) DEFAULT 'cash',
  `amount` decimal(10,2) DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `tnx_id` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 'About us', '<p>About us</p>', '2023-02-01 02:39:15', '2025-10-13 12:45:31'),
(2, 'return-policy', 'Return Policy', '<p>Return Policy</p>', '2023-02-01 02:39:31', '2023-10-25 14:23:18'),
(3, 'privacy-policy', 'Privacy Policy', '<p>Privacy Policy</p>', '2023-07-09 00:25:19', '2023-10-25 14:23:57'),
(4, 'terms-condition', 'Term And Condition', '<p>Term And Condition...</p>', '2023-10-25 14:24:41', '2025-10-11 12:01:34'),
(5, 'contact-us', 'Contact Us', '<p>Contact</p>', '2025-10-11 12:07:38', '2025-10-13 12:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$tnCwrSX9.d1.R.H1caiwVe4W7reWc8F/BZU6PnSYctLp2NTIIJiNW', '2023-09-24 16:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'purchase.create', 'web', '2022-10-19 06:04:26', '2022-10-19 09:18:47'),
(2, 'purchase.edit', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(3, 'purchase.delete', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(4, 'role.create', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(5, 'role.edit', 'web', '2022-10-19 08:46:38', '2022-10-19 08:46:38'),
(6, 'role.delete', 'web', '2022-10-19 08:49:08', '2022-10-19 08:49:08'),
(7, 'product.create', 'web', '2022-10-19 08:51:46', '2022-10-19 08:51:46'),
(8, 'product.edit', 'web', '2022-10-19 08:52:01', '2022-10-19 08:52:01'),
(10, 'product.delete', 'web', '2022-10-19 09:21:11', '2022-10-19 09:21:11'),
(11, 'permission.create', 'web', '2022-10-19 09:22:11', '2022-10-19 09:22:11'),
(12, 'permission.edit', 'web', '2022-10-19 09:22:19', '2022-10-19 09:22:19'),
(13, 'permission.delete', 'web', '2022-10-19 09:22:29', '2022-10-19 09:22:29'),
(14, 'order.create', 'web', '2022-10-19 09:22:48', '2022-10-19 09:22:48'),
(15, 'order.edit', 'web', '2022-10-19 09:22:56', '2022-10-19 09:22:56'),
(16, 'order.delete', 'web', '2022-10-19 09:23:03', '2022-10-19 09:23:03'),
(17, 'slider.create', 'web', '2022-10-19 09:23:33', '2022-10-19 09:23:33'),
(18, 'slider.edit', 'web', '2022-10-19 09:23:40', '2022-10-19 09:23:40'),
(19, 'slider.delete', 'web', '2022-10-19 09:23:47', '2022-10-19 09:23:47'),
(20, 'image.create', 'web', '2022-10-19 09:24:00', '2022-10-19 09:24:00'),
(21, 'image.edit', 'web', '2022-10-19 09:24:18', '2022-10-19 09:24:18'),
(22, 'image.delete', 'web', '2022-10-19 09:24:27', '2022-10-19 09:24:27'),
(23, 'type.create', 'web', '2022-10-19 09:24:41', '2022-10-19 09:24:41'),
(24, 'type.edit', 'web', '2022-10-19 09:24:48', '2022-10-19 09:24:48'),
(25, 'type.delete', 'web', '2022-10-19 09:25:21', '2022-10-19 09:25:21'),
(26, 'category.create', 'web', '2022-10-19 09:25:31', '2022-10-19 09:25:31'),
(27, 'category.edit', 'web', '2022-10-19 09:25:41', '2022-10-19 09:25:41'),
(28, 'category.delete', 'web', '2022-10-19 09:25:49', '2022-10-19 09:25:49'),
(29, 'size.create', 'web', '2022-10-19 09:26:02', '2022-10-19 09:26:02'),
(30, 'size.edit', 'web', '2022-10-19 09:26:12', '2022-10-19 09:26:12'),
(31, 'size.delete', 'web', '2022-10-19 09:26:21', '2022-10-19 09:26:21'),
(32, 'discount.create', 'web', '2022-10-19 09:27:11', '2022-10-19 09:27:11'),
(33, 'discount.edit', 'web', '2022-10-19 09:27:18', '2022-10-19 09:27:18'),
(34, 'discount.delete', 'web', '2022-10-19 09:27:26', '2022-10-19 09:27:26'),
(35, 'user.create', 'web', '2022-10-23 05:38:25', '2022-10-23 05:38:25'),
(36, 'user.edit', 'web', '2022-10-23 05:38:36', '2022-10-23 05:38:36'),
(37, 'user.delete', 'web', '2022-10-23 05:38:45', '2022-10-23 05:38:45'),
(42, 'delivery_charge.view', 'web', '2022-12-02 00:44:55', '2022-12-02 00:44:55'),
(43, 'delivery_charge.create', 'web', '2022-12-02 00:45:02', '2022-12-02 00:45:02'),
(44, 'delivery_charge.delete', 'web', '2022-12-02 00:45:08', '2022-12-02 00:45:08'),
(45, 'delivery_charge.edit', 'web', '2022-12-02 00:45:17', '2022-12-02 00:47:08'),
(46, 'purchase.view', 'web', '2022-12-09 01:25:59', '2022-12-09 01:25:59'),
(47, 'category.view', 'web', '2022-12-09 01:27:06', '2022-12-09 01:27:06'),
(48, 'discount.view', 'web', '2022-12-09 01:27:34', '2022-12-09 01:27:34'),
(49, 'image.view', 'web', '2022-12-09 01:28:07', '2022-12-09 01:28:07'),
(50, 'order.view', 'web', '2022-12-09 01:28:19', '2022-12-09 01:28:19'),
(51, 'permission.view', 'web', '2022-12-09 01:28:28', '2022-12-09 01:28:28'),
(52, 'role.view', 'web', '2022-12-09 01:28:49', '2022-12-09 01:28:49'),
(53, 'size.view', 'web', '2022-12-09 01:29:02', '2022-12-09 01:29:02'),
(54, 'user.view', 'web', '2022-12-09 01:29:11', '2022-12-09 01:29:11'),
(55, 'slider.view', 'web', '2022-12-09 01:29:23', '2022-12-09 01:29:23'),
(56, 'type.view', 'web', '2022-12-09 01:29:31', '2022-12-09 01:29:31'),
(57, 'page.create', 'web', '2022-12-09 01:29:44', '2022-12-09 01:29:44'),
(58, 'page.view', 'web', '2022-12-09 01:29:49', '2022-12-09 01:29:49'),
(59, 'page.edit', 'web', '2022-12-09 01:29:56', '2022-12-09 01:29:56'),
(60, 'page.delete', 'web', '2022-12-09 01:30:04', '2022-12-09 01:30:04'),
(61, 'color.view', 'web', '2022-12-09 01:39:50', '2022-12-09 01:39:50'),
(62, 'color.create', 'web', '2022-12-09 01:39:59', '2022-12-09 01:39:59'),
(63, 'color.edit', 'web', '2022-12-09 01:40:07', '2022-12-09 01:40:07'),
(64, 'color.delete', 'web', '2022-12-09 01:40:12', '2022-12-09 01:40:12'),
(65, 'dashboard.access', 'web', '2022-12-09 01:46:46', '2022-12-09 01:46:46'),
(66, 'product.view', 'web', '2022-12-09 13:51:54', '2022-12-09 13:51:54'),
(67, 'coupon_codes.view', 'web', '2022-12-16 16:27:26', '2022-12-16 16:27:26'),
(68, 'coupon_codes.create', 'web', '2022-12-16 16:27:32', '2022-12-16 16:27:32'),
(69, 'coupon_codes.edit', 'web', '2022-12-16 16:27:38', '2022-12-16 16:27:38'),
(70, 'coupon_codes.delete', 'web', '2022-12-16 16:27:43', '2022-12-16 16:27:43'),
(71, 'couriers.view', 'web', '2022-12-17 07:55:45', '2022-12-17 07:55:45'),
(72, 'couriers.create', 'web', '2022-12-17 07:55:51', '2022-12-17 07:55:51'),
(73, 'couriers.edit', 'web', '2022-12-17 07:55:56', '2022-12-17 07:55:56'),
(74, 'couriers.delete', 'web', '2022-12-17 07:56:02', '2022-12-17 07:56:02'),
(75, 'Sumi', 'web', '2023-08-13 22:05:46', '2023-08-13 22:05:46'),
(76, 'Admin', 'web', '2023-08-28 10:46:35', '2023-08-28 10:46:35'),
(78, 'orderStatusUPdate', 'web', '2023-09-07 22:23:34', '2023-09-07 22:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(200) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `category_id` smallint(6) DEFAULT NULL,
  `sub_category_id` smallint(6) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `purchase_prices` decimal(8,2) DEFAULT 0.00,
  `sell_price` decimal(12,2) DEFAULT 0.00,
  `regular_price` decimal(12,2) DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `thumb_image` varchar(255) DEFAULT NULL,
  `com_image` text DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `optional_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `feature` text DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `discount_type` varchar(40) DEFAULT NULL,
  `after_discount` decimal(8,2) DEFAULT 0.00,
  `dicount_amount` decimal(8,2) DEFAULT 0.00,
  `discount` decimal(8,2) DEFAULT 0.00,
  `stock_quantity` int(11) DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_free_shipping` tinyint(4) DEFAULT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `is_stock` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `type`, `priority`, `category_id`, `sub_category_id`, `type_id`, `purchase_prices`, `sell_price`, `regular_price`, `image`, `thumb_image`, `com_image`, `video_link`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `stock_quantity`, `is_recommended`, `is_free_shipping`, `user_id`, `is_stock`, `status`, `created_at`, `updated_at`) VALUES
(3, 'AMOLED IP68 NFC Control New', NULL, 'single', NULL, 2, NULL, NULL, 3800.00, 7800.00, NULL, 't1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>✅ System:&nbsp;Android OS, iOS Supported&nbsp;</p>\r\n\r\n<p>✅&nbsp;&nbsp;Bluetooth Call, Custom Dial,&nbsp;NFC&nbsp;Door Unlock, Amoled Display,&nbsp;SMS Alerts Push, Sleep Monitor,&nbsp;Heart Rate, Blood Pressure Monitor, Music Watch.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'fixed', 4000.00, 3800.00, 3800.00, NULL, 1, NULL, 1, 0, 0, '2022-12-17 22:46:41', '2023-10-03 11:59:50'),
(4, 'Best LIGE Luxary watch', NULL, 'single', NULL, 2, NULL, NULL, 3500.00, 4500.00, 5500.00, 'u1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 0.00, 4500.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-17 22:56:48', '2023-09-24 19:27:13'),
(5, 'LIGE® Aqua Malva', NULL, 'single', NULL, 2, NULL, NULL, 2500.00, 3900.00, 3900.00, 'v1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Brand: LIGE<br />\r\nDisplay: Analog Quartz Watch<br />\r\nStyle: Fashion, Casual, Business, Luxury, Sport<br />\r\nFeatures: Water Resistant, Auto Date, Chronograph, Shock Resistant, Swim,<br />\r\nMain Feature:<br />\r\n&ndash; 100% New With Tag And High Quality;<br />\r\n&ndash; Top Brand Luxury High-Quality Design Dial, Date Display Function;<br />\r\n&ndash; 3ATM / 30M Water Resistant (Support Cold Shower and Swim, do not operate watch when underwater, Do not support hot water);<br />\r\n&ndash; Quality Zinc Alloy Case;<br />\r\n&ndash; Quality Stainless Steel Strap ;<br />\r\nSpecification approximation:<br />\r\n&ndash; Case Diameter: 4.2 cm<br />\r\n&ndash; Case Thickness: 1.2 cm<br />\r\n&ndash; Band Width: 2.2 cm<br />\r\n&ndash; Total Length: 21cm~24cm</p>', NULL, NULL, 'fixed', 1400.00, 2500.00, 2500.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-17 23:06:23', '2023-09-24 19:28:25'),
(6, 'Ninja 2-in-1 Blender', NULL, 'single', NULL, 5, NULL, NULL, 2400.00, 3500.00, NULL, 'w.jpg', NULL, NULL, NULL, NULL, NULL, '<p>2 Blenders in 1 &ndash; Multi-serve blender and personal blender<br />\r\nAuto-iQ Technology &ndash; One-touch blending programs do all the hard work for you<br />\r\nDurable and Powerful &ndash; 1200W motor drives interchangeable stainless-steel blades to blend tough ingredients<br />\r\nEasy to Use &ndash; Simple controls, manual settings and dishwasher-safe parts<br />\r\nIncludes 2.1L Jug, 700ml Cup with Lid, Pro Extractor Blade, Stacked Blade, Recipe Guide</p>', NULL, NULL, 'fixed', 1100.00, 2400.00, 2400.00, NULL, 1, NULL, 1, 0, 1, '2022-12-17 23:15:59', '2023-09-24 19:29:08'),
(7, '5-in-1 Vegetable Cutter', NULL, 'single', NULL, 5, NULL, NULL, 900.00, 1600.00, 1700.00, 'img1671536602.jpg', NULL, NULL, NULL, NULL, NULL, '<p>This is a 5-in-1 vegetable cutting slicer that allows you to cut a variety of vegetables and fruits 0.5mm to 8mm thick by simply turning the controllers and pressing the handle. This product is made with a premium hygienic material and the blades are made with 420j stainless steel which is more sharp and durable. There is no need to change the blade of this cutter so you can use water for a long time. This vegetable cutter has hidden blades so it is safer to use.</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-17 23:18:07', '2023-10-03 12:01:37'),
(9, 'Analog-Digital Waterproof Original Watch AEQ-110BW-9AV', 'AEQ-110BW-9AV', 'single', NULL, 2, NULL, NULL, 4870.00, 5490.00, NULL, 'AEQ-110BW-9AV_l1671343787.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Function</p>\r\n\r\n<ul>\r\n	<li>10-Year Battery Life</li>\r\n	<li>100-Meter Water Resistance</li>\r\n	<li>World Time</li>\r\n	<li>Telememo 30</li>\r\n	<li>1/100-Second Stopwatch</li>\r\n	<li>Alarms</li>\r\n	<li>Resin Glass</li>\r\n	<li>Case-Bezel Material: Resin</li>\r\n	<li>Resin Band</li>\r\n	<li>World Time</li>\r\n	<li>Countdown Timer</li>\r\n	<li>3-Daily Alarms with-1 Snooze Alarm</li>\r\n	<li>Hourly Time Signal</li>\r\n	<li>Full Auto-Calendar</li>\r\n	<li>12/24-Hour Format</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;30 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 10 Years</li>\r\n	<li>Size of Case: 52.2&times;46.6&times;16.6 mm</li>\r\n	<li>Total Weight: 49g</li>\r\n	<li>True International&nbsp;Warranty/Guaranty&nbsp;1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', NULL, NULL, 'fixed', 4690.00, 800.00, 800.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:09:47', '2023-07-23 17:34:34'),
(10, 'Multifunction Scissors Professional Chicken/Fish Cutter', NULL, 'single', 10, 5, NULL, NULL, 1080.00, 1690.00, NULL, '4c98c8ebc1b8c5ef379759dcfd5a11b31671344008.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img src=\"https://ae01.alicdn.com/kf/S5ad71836013c4e76b98b8fde9ef4f145B.jpg\" /><img src=\"https://ae01.alicdn.com/kf/S24174b30fb764e489be50ccbf7f353f19.jpg\" /><img src=\"https://ae01.alicdn.com/kf/Sa768f68938aa4f07b068509597f720cew.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:13:28', '2025-10-13 09:58:56'),
(11, 'Metal Fashion Original Watch MTP-1314SG-1AV', 'MTP-1314SG-1AV', 'single', NULL, 2, NULL, NULL, 4900.00, 5700.00, NULL, 'MTP-1314SG-1AV_l1671344077.jpg', NULL, NULL, NULL, NULL, NULL, '<h2>Description</h2>\r\n\r\n<p>Function</p>\r\n\r\n<ul>\r\n	<li>50-Meter Water Resistance</li>\r\n	<li>Date Display at 3 O&rsquo;clock</li>\r\n	<li>A Simple, Easy-to-Use Design</li>\r\n	<li>Mineral Glass</li>\r\n	<li>Case-Bezel: Ion Plated</li>\r\n	<li>Stainless Steel Band</li>\r\n	<li>Triple-Fold Buckle</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;20 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 3 Years</li>\r\n	<li>Size of Case: 50&times;44.9&times;9.4mm</li>\r\n	<li>Total Weight: 126g</li>\r\n	<li>True International Warranty/Guaranty 1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', NULL, NULL, 'fixed', 0.00, 5700.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:14:37', '2023-07-23 17:41:39'),
(12, 'Multifunctional Original Watch MTP-1374L-1AV', 'MTP-1374L-1AV', 'single', NULL, 2, NULL, NULL, 5200.00, 6000.00, NULL, '61awFXzj8RL._SL1000_16763991281694543774.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Function</p>\r\n\r\n<ul>\r\n	<li>50-Meter Water Resistance</li>\r\n	<li>Day and Date Indicator</li>\r\n	<li>Genuine Leather Band</li>\r\n	<li>Mineral Glass</li>\r\n	<li>Case-Bezel: Ion Plated</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;20 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 3 Years</li>\r\n	<li>Size of Case: 47&times;43.5&times;10.4 mm</li>\r\n	<li>Total Weight: 66g</li>\r\n	<li>True International Warranty/Guaranty 1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:18:41', '2023-10-03 12:03:16'),
(13, 'Garlic Press Manual Garlic Mincer Chopping Garlic Tools', NULL, 'single', 9, 5, NULL, NULL, 320.00, 670.00, NULL, 'c80c2675adbed59aa0be051f403829ef1671344344.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"রসুন সরঞ্জাম - Buy রসুন সরঞ্জাম at Best Price in Bangladesh |  www.daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/87093095aa88ef7776907eb64f5b780b.jpg\" /></p>\r\n\r\n<p><img alt=\"Hot Sale] Stainless Steel Garlic Press Manual Garlic Mincer Chopping Garlic  Tools Curve Fruit Vegetable Tools Kitchen Gadgets | Lazada PH\" src=\"https://lzd-img-global.slatic.net/g/p/4d51b435f37c0d8fb10448eb1cf9bfa7.jpg_720x720q80.jpg_.webp\" /><img alt=\"Stainless Steel Garlic Press Manual Garlic Mincer Crusher Garlic Grater Chopping  Garlic Tools Vegetable Tools Kitchen Gadget - Peeling Garlic - AliExpress\" src=\"https://ae01.alicdn.com/kf/H90a06000793944b2925fb04d1747d3f3i/Stainless-Steel-Garlic-Press-Manual-Garlic-Mincer-Crusher-Garlic-Grater-Chopping-Garlic-Tools-Vegetable-Tools-Kitchen.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:19:04', '2025-10-13 09:58:52'),
(14, 'Strap Fashion Original Watch MTP-B105BL-1AV', 'MTP-B105BL-1AV', 'single', NULL, 2, NULL, NULL, 6500.00, 7680.00, NULL, 'MTP-B105BL-1AV1671344477.jpg', NULL, NULL, NULL, NULL, NULL, '<h1>Strap Fashion Original Watch MTP-B105BL-1AV</h1>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:21:17', '2023-10-03 12:04:10'),
(15, 'Multi-function Vegetable Peeler', 'v2222', 'single', 8, 5, NULL, NULL, 190.00, 390.00, NULL, '525f0f2ac360e6d14dd6a5615a8debfd1671344584.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"Stainless Steel Multi-function Vegetable Peeler &amp; amp Julienne Cutter  Julienne Peeler Potato Carrot Grater Kitchen Tool: Buy Online at Best  Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/0bf5232b0268455357d7dd9d0a043be1.jpg\" /></p>\r\n\r\n<p><img alt=\"Stainless Steel Multi-function Vegetable Double Peeler Cutter Julienne Peeler  Potato Carrot Grater Kitchen Tool: Buy Online at Best Prices in Bangladesh  | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/28942018aac3811457777242baf9a6db.jpg\" /></p>\r\n\r\n<p><img alt=\"Stainless Steel Multi-function Vegetable Double Peeler Cutter Julienne Peeler  Potato Carrot Grater Kitchen Tool: Buy Online at Best Prices in Bangladesh  | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/d6ab21e3de23389be8635a7a9ae1beb4.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:23:04', '2025-10-13 09:55:56'),
(16, 'AGR – Luxury Aventadori waterproof watch', 'AGR', 'single', NULL, 2, NULL, NULL, 1450.00, 1950.00, NULL, 'b11671344750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 1450.00, 500.00, 500.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:25:50', '2023-10-03 12:05:18'),
(17, 'Fitness-centered Stainless Steel Omelet Mold Breakfast Maker', NULL, 'single', 7, 5, NULL, NULL, 110.00, 280.00, NULL, 'Fitness-centered Stainless Steel Omelet Mold Breakfast Maker.jpeg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"1PC Fitness centered Stainless Steel Omelet Mold Breakfast Maker Fried Egg  Device Five form Durable Molds Kitchen Accessories|Egg &amp; Pancake Rings| -  AliExpress\" src=\"https://ae01.alicdn.com/kf/H87208ecc91d3440497ba86a0159a9899u/1PC-Fitness-centered-Stainless-Steel-Omelet-Mold-Breakfast-Maker-Fried-Egg-Device-Five-form-Durable-Molds.jpg_Q90.jpg_.webp\" /><img alt=\"10pcs Fitness-centered Stainless Steel Omelet Mold Breakfast Maker Kitchen  Cooking Kit Fried Egg Device Durable Molds | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/7991dfb5-6ecf-4b9f-991e-d8ee585d2055.49c5eb5c12a591e0e79cc6f32053bf48.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /><img alt=\"10pcs Fitness-centered Stainless Steel Omelet Mold Breakfast Maker Kitchen  Cooking Kit Fried Egg Device Durable Molds | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/96b53c54-2ec3-4d16-8b46-027f5bded54c.40c55b49e525af2cac602267ed54b461.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /><img alt=\"Infancy Store - Amazing prodcuts with exclusive discounts on AliExpress\" src=\"https://ae04.alicdn.com/kf/H84b1645f651a45ab8bb56fe6a299c58c8.png_640x640.png\" /></p>', NULL, NULL, 'fixed', 230.00, 50.00, 50.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:26:13', '2025-10-13 09:55:55'),
(18, 'DIY Plastic Dumplings Maker Mold', NULL, 'single', 6, 5, NULL, NULL, 90.00, 190.00, NULL, 'beedcc3dee4d353f8ba2c51ee348ed631671344913.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Plastica Polpetta Stampi Cibo Cinese Jiaozi Maker Pasta Presse Polpetta Pie Ravioli A Mano Da Cucina di Stampo Creativo FAI DA TE di Strumenti di</p>\r\n\r\n<p><img src=\"https://ae01.alicdn.com/kf/S0f0530ab637949b7bf330553b48a00a4K.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"3Pcs Dumpling Mold Ravioli Mould Dumpling Maker Pierogi Turnover Empanada  Dough Press Mould Maker Kitchen Gadgets | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/412146cf-76b8-4fd2-ac9a-0acabae0fd8b_1.2058a45f7b0ef4e2e5234e456edf6cb3.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /></p>', NULL, NULL, 'fixed', 160.00, 30.00, 30.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:28:33', '2025-10-13 09:55:54'),
(19, 'Business Class Golden chronograph watch NV02GL', 'NV02GL', 'single', NULL, 2, NULL, NULL, 2750.00, 3250.00, NULL, '760763efb7a3a1f5fc50f95db5f14d821671344916.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:28:36', '2023-10-03 12:06:32'),
(20, 'Piping Cream Pastry Bag + 6 Stainless Steel Nozzle Set', NULL, 'single', 5, 5, NULL, NULL, 190.00, 390.00, NULL, '95a6119dcd0eaf41eeb03a9aa3274b281671345162.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>Product Description:</strong><br />\r\nName: Cake Decorating Nozzle Set<br />\r\nMaterial: Silicone+Stainless steel<br />\r\nSize :spend directly under high 3.3CM diameter 1.8CM.<br />\r\nThe piping bag length 31CM* diameter 17CM<br />\r\nPackage:1pcs Pastry bag + 6pcs Stainless steel Nozzle + 1pcs White converter<br />\r\n<br />\r\n<strong>Package Included:</strong><br />\r\n1 Set Cake Decorating Nozzle Set<br />\r\n<br />\r\n<strong>Please Note:</strong><br />\r\n-Due to hand measure, the size may have 1-2 cm error<br />\r\n-Due to Different Monitor, the color may have difference<br />\r\n-Due to long shipping, the item may damage in transit, if the item damage, pls contact us firstly immediately before leave feedback, thanks for your understanding.<br />\r\n<img src=\"https://ae01.alicdn.com/kf/H2eaf7932fb5e4afe939f398b7eee0773g.jpg?width=800&amp;height=60&amp;hash=860\" /><img src=\"https://ae01.alicdn.com/kf/Hca34723f2cbd4ad897c6390657a778d4r.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"6 Piece Cake Decorating Set Frosting Icing Piping Bag Tips with Steel  Nozzles, Reusable &amp; Washable: Buy Online at Best Prices in Bangladesh |  Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/f3a755a4f1b8d15269732cfecf01b380.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:32:43', '2025-10-13 09:55:53'),
(21, 'Business class golden watch, color guaranty and waterproof AY03GL', 'AY03GL', 'single', NULL, 2, NULL, NULL, 1970.00, 2450.00, NULL, 'Business class golden watch, color guaranty and waterproof AY03GL.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img src=\"https://trustshop24.net/wp-content/uploads/2022/11/312237946_471533318376882_2887324828416828911_n.webp\" /></p>', NULL, NULL, 'fixed', 2150.00, 300.00, 300.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:32:58', '2023-09-24 19:40:54'),
(22, 'Creative orange juice squeezer lemon sprayer', NULL, 'single', 4, 5, NULL, NULL, 90.00, 180.00, NULL, 'Creative orange juice squeezer lemon sprayer.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/H87e0456cea204decbea3f5fac36ce27eS.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/Hac2ad298cce04e69b90280c8ab2417175.jpg?width=582&amp;height=592&amp;hash=1174\" /><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/H11f1e17cf52a46379bb4c1c626735b3fb.jpg?width=749&amp;height=713&amp;hash=1462\" /><img alt=\"2PCS Lemon Sprayer Gadget Creative Fruit Juice Squeezer Tool Easy Use &amp;  Clean Perfect Christmas Gift Kitchen Accessories - AliExpress\" src=\"https://ae01.alicdn.com/kf/He0076d7fa6da4bdcbe1c9b4056e6da98J/2PCS-Lemon-Sprayer-Gadget-Creative-Fruit-Juice-Squeezer-Tool-Easy-Use-Clean-Perfect-Christmas-Gift-Kitchen.jpg_.webp\" /></p>', NULL, NULL, 'fixed', 160.00, 20.00, 20.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:35:44', '2025-10-13 09:55:48'),
(23, 'vivo X70 Pro - Official', 'X70', 'single', NULL, 3, NULL, NULL, 65000.00, 70000.00, NULL, 'x701671345420.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The latest<strong>&nbsp;Vivo X70 Pro - Official Price in Bangladesh</strong>&nbsp;starts from BDT 70,000. Vivo X70 Pro is now available in only&nbsp;<strong>one version, 12/256GB.&nbsp;</strong>Most exclusive features are-&nbsp;<strong>Android 11,</strong>&nbsp;<strong>Dual sim</strong>,&nbsp;<strong>6.56 inches</strong>&nbsp;display,&nbsp;<strong>Octa-core</strong>&nbsp;CPU,&nbsp;<strong>50MP+8MP+12MP+12MP</strong>&nbsp;Main camera,&nbsp;<strong>32MP</strong>&nbsp;Selfie camera and&nbsp;<strong>Li-Po 4450</strong>&nbsp;mAh battery. X70 pro price in Bangladesh is very legitimate at Apple Gadgets ltd. You can find the best cheap rate at Apple Gadgets Ltd.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Vivo X70 pro phone is one of the best vivo available on Bangladesh&#39;s market. It also has a very&nbsp;<strong>affordable price in Bangladesh.</strong>&nbsp;It is sturdy and offers&nbsp;<strong>Li-Po 4450 mAh</strong>, the longest battery life. So what are you waiting to do? Take advantage of the Vivo X70 Pro - Official for the&nbsp;<strong>lowest available price in BD.&nbsp;</strong>Order now.&nbsp;</p>', NULL, NULL, 'fixed', 69000.00, 1000.00, 1000.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:37:00', '2023-06-10 23:35:01'),
(25, 'iPhone SE 2022', 'se 3', 'single', NULL, 3, NULL, NULL, 42000.00, 47000.00, NULL, 'se31671345679.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Storage:&nbsp; 64GB</p>\r\n\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/5020-58821.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:41:19', '2023-06-10 23:35:39'),
(26, 'VIS PRIME CEILING FAN', NULL, 'single', NULL, 18, NULL, NULL, 3200.00, 4800.00, NULL, 'crompton-fans-500x5001671345879.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>Features:&nbsp;</strong><br />\r\n* 99.9% pure copper wire<br />\r\n* High quality electric silicon sheet<br />\r\n* High precisions chrome steel ball bearings<br />\r\n* Powder coating paint<br />\r\n* Whisper quiet motor<br />\r\n* Regulated/Dimmer control<br />\r\n* Ideal for year round operation&nbsp;<br />\r\n* Safety wire for preventing any unwanted accidents<br />\r\n* Aerodynamic blades allow high velocity and maximum air delivery throughout the room<br />\r\n<br />\r\n<strong>Technical Specifications:</strong><br />\r\n* Rated Voltage: 220-230 Volt<br />\r\n* Rated Power: 80 Watt<br />\r\n* Frequency: 50Hz<br />\r\n* Speed: 320 R.P.M.<br />\r\n* Air Delivery: 220 M&sup3;/Min</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:44:39', '2023-06-10 23:35:59'),
(27, 'iPhone 11', '11', 'single', NULL, 3, NULL, NULL, 52000.00, 56500.00, NULL, '111671345962.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>Storage:&nbsp; &nbsp;64GB</strong></p>\r\n\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/iphone%2011%20price%20in%20bangladesh-3459.png\" style=\"height:462px; width:817px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><strong>iPhone 11</strong></h1>\r\n\r\n<p>iPhone 11 is a combination of everything but in a proper amount. It holds a completely new dual-camera system and a marvelous chipset.&nbsp; It has the toughest glass in a smartphone and day-long battery backup. All these features make the iPhone 11 pioneer among recent flagships.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Alluring Design</p>\r\n\r\n<p>Magnificent Camera</p>\r\n\r\n<p>Sustainable Battery Life</p>\r\n\r\n<p>Powerful Performance</p>\r\n\r\n<p>Top-notch Security</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>iPhone 11 - Overview</strong></h2>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Alluring Design</strong></h3>\r\n\r\n<p>iPhone 11 pro is a complete phone. Whether it comes to design or alluring colors. It packs a matte-finished back glass with perfectly fitted buttons. The round edge and the perfectly aligned dual camera make it even more beautiful. The design accomplishes with the colors. Black, Red, White, Yellow, Purple, Green every color makes the outlook different but still gorgeous.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Magnificent Camera</strong></h3>\r\n\r\n<p>Comes with two different cameras: Wide and Ultrawide. But both cameras do the same. Takes awesome photos.&nbsp; Ultrawide mode increases the field of view more than four times. You can get a top-notch quality video. Furthermore, the night mode is surprising, you will get the best low-light pictures ever.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Sustainable Battery Life</strong></h3>\r\n\r\n<p>Comes with an upgraded non-removable battery with great battery life. In exact point, Li-Ion 3110 mAh non-remove-able battery. Alongside the battery, it holds a fast wired charging system. You can charge it fully with a charging cable in less than&nbsp; 1.5 hours. You can also charge the phone with a Qi wireless charger.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Powerful Performance</strong></h3>\r\n\r\n<p>The phone is among the greatest performances ever thanks to the newest A13 bionic chipset with a neural engine. The chipset is a smart chip that can sustain every feature in a wiser approach in addition to being a powerful performer. Particularly in terms of battery life.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Top-notch Security</strong></h3>\r\n\r\n<p>Privacy concerns are a constant problem for iPhone. iPhone 11&nbsp; did not modify anything. Your personal information is constantly in your hands thanks to the iPhone. Safari&#39;s smart blocking capabilities stop trackers from monitoring your browsing. It displays the banned information from your Privacy Report. So, whether you browse the web or use apps on your iPhone, it is entirely safe. Face Id is the most reliable lock solution when it comes to locking phones.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Look over the specifications of the iPhone 11 in the &ldquo;Specification&rdquo; part.</p>', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:46:02', '2023-06-10 23:36:13'),
(28, 'iPhone 12 Mini', '12mini', 'single', 1, 18, NULL, NULL, 54700.00, 60500.00, NULL, '12mini1671346173.jpg', NULL, NULL, NULL, NULL, NULL, '<h1><strong>iPhone 12 Mini</strong></h1>\r\n\r\n<p>Blast past fast- the motto of the iPhone 12 series shows the significant upgrade of the iPhone 12. Unlike the other 12 series phone,iPhone 12 mini comes with some extraordinary features. It holds a super powerful chip along with an advanced dual‑camera system. Built with a ceramic shield front that\'s tougher than any smartphone glass. It has a bright, beautiful OLED display. Altogether, every upgraded feature comes to iPhone 12 mini yet in a compact size. </p>\r\n\r\n<p> </p>\r\n\r\n<h2><strong>iPhone 12 Mini Key Features</strong></h2>\r\n\r\n<p>Impeccable Design</p>\r\n\r\n<p>Advanced & Impressive Chipset</p>\r\n\r\n<p>Mega Battery Life</p>\r\n\r\n<p>Excellent Camera</p>\r\n\r\n<p>MagSafe Compatibility</p>\r\n\r\n<p>Water and Dust Resistance</p>\r\n\r\n<p>Substantial Security Options</p>\r\n\r\n<p> </p>\r\n\r\n<h2><strong>iPhone 12 Mini Features Overview</strong></h2>\r\n\r\n<h3><strong>Compact in Size</strong></h3>\r\n\r\n<p>iPhone 12 mini is the smallest phone in iPhone 12 series. It has a 5.7-inch display but is full of advanced features.  This phone is perfect for those who love compact-sized phones. Though the size is compact.</p>\r\n\r\n<p> </p>\r\n\r\n<h3><strong>Here Comes Something Great</strong> </h3>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Performance</strong></p>\r\n\r\n<p>iPhone 12 mini fills with some extraordinary hardware and software. The hardware and software work together seamlessly. As a result, a great performance is coming out. iPhone holds an  A14 Bionic chipset with the latest iOS and groundbreaking GPU. Overall this powerful and fast chipset with the latest updateable software delivers smooth performance in every aspect.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Battery Life</strong></p>\r\n\r\n<p>Comes with an upgraded non-removable battery with great battery life. In exact point, Li-Ion 2227 mAh non-remove-able battery. Alongside the battery, for the first time, iPhone introduced Magsafe, a 15W wireless charging system. You can also charge the phone with a 7.5W Qi wireless charger. </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Display</strong></p>\r\n\r\n<p>iPhone 12 mini has a great Super Retina XDR display with wide color and haptic touch capacity. The iPhone 12 mini display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. It increases the viewable area. The display is so much strong and durable for its ceramic shield protection.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Design</strong></p>\r\n\r\n<p>iPhone 12 mini holds a simple yet gorgeous design. It features a  completely new flat-edged design with aluminum edges. The phone is thinner and smarter than ever. The buttons are set in an ideal way and the camera is perfectly fitted in a great place. iPhone 12 mini is available in six colors: Blue, Green, Black, White, Product Red, and special Purple.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Camera</strong></p>\r\n\r\n<p>The phone feature a dual-camera setup with wide and ultra-wide lenses. It holds a more capable Smart HDR and improved Night mode with support for the selfie camera. Moreover, the camera introduces ultra-wide for the first time. The exclusive Night mode Time-lapse feature is added to the iPhone 12 mini camera. The camera is capable of recording Dolby Vision with 700 million colors.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Security</strong></p>\r\n\r\n<p>iPhone always helps put you in control of your personal information. Safari intelligently helps block trackers from profiling you’re browsing. It shows you the data that have been blocked in your Privacy Report. So you can browse or run apps on your iPhone with complete security. </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Resistance</strong></p>\r\n\r\n<p>It holds an IP68-rated Splash, Water, and Dust Resistant. Apple calls it the Oops resistance. So you can use the phone however you want as well as where ever you want. </p>\r\n\r\n<p> </p>\r\n\r\n<h3><strong>Some Extra Greatness Comes with these Extra Features</strong></h3>\r\n\r\n<p>The Long-listing features are not finished yet. Here is the name of some must mentionable features </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Solution for Everything </strong></p>\r\n\r\n<p>The hardware and software of the iPhone 12 mini work together seamlessly to bring everything with one tap. If you want to pair new AirPods with your iPhone 12 mini, pair it with a simple one‑tap setup. On the other hand, sharing photos, videos, or contacts with nearby friends become so easy. Just AirDrop lists their names onscreen, so you can choose with a tap.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Great Durability</strong></p>\r\n\r\n<p>iPhone 12 mini is designed for long-lasting. Superstrong material build quality and IP68 resistance make iPhone incredibly durable.  Automatic iOS updates deliver new features and security enhancements that keep your iPhone up to date. That helps your iPhone to run beautifully for a long time</p>', NULL, NULL, 'fixed', NULL, 200.00, 200.00, 98, NULL, NULL, 1, 0, 1, '2022-12-18 12:49:33', '2025-10-13 06:21:30'),
(29, 'Mini Wireless Earbuds Earphone', NULL, 'single', NULL, 18, NULL, NULL, 900.00, 1700.00, NULL, '9eaceae9888fb39ff7635d7d457d735c1671346183.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"M32B TWS Wireless Earbuds Price in Bangladesh - ShopZ BD\" src=\"https://ae03.alicdn.com/kf/H69ff3e1541ae4e01a76ca6a51786b1d2D.jpg\" /><img alt=\"M32B TWS Touch Bluetooth-compatible 5.1 Earphones Mini Wireless Earbuds  Earphone Deep Bass Sports Headset With Charging Box Call time: about 4  hours: Buy Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/44eaf05d27d7b03aa0ba0b754292833c.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:49:43', '2023-06-10 23:36:43'),
(32, 'Smart Music Led Light Bulb With Remote', NULL, 'single', NULL, 18, NULL, NULL, 270.00, 570.00, NULL, 'Smart Music Led Light Bulb With Remote.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Product details of LED Bluetooth Smart Music Colored led Light Bulb With Remote Control&amp; Bluetooth Speaker RGB Changing Color Music Lamp Built-in Audio Speaker-Pass Folder</li>\r\n	<li>Item Name: Led Music Bulb With Bluetooth &amp; Speaker</li>\r\n	<li>Product Color: White</li>\r\n	<li>Light Color : Multi Colors</li>\r\n	<li>Light Source: LED</li>\r\n	<li>Compatible Product: Universal</li>\r\n	<li>Bluetooth Version: V4.2</li>\r\n	<li>Supported Profile: A2DP</li>\r\n	<li>Base Type: E27</li>\r\n	<li>Rated power: 12W</li>\r\n	<li>Speaker Power: 3W</li>\r\n	<li>Special Feature: Super Bass, Portable, Wireless</li>\r\n	<li>Voltage: 100-240V/50Hz-60Hz</li>\r\n	<li>Bluetooth distance: Around 10 meter</li>\r\n	<li>Remote controller : 24 keys type</li>\r\n	<li>Material : PC/ABShttps://youtu.be/Bwr_sB-ZCG4</li>\r\n	<li><img alt=\"Smart Led Remote Control Bluetooth Speaker Music Bulb - AC, RGB remote  control Bluetooth music bulb lamp, Led Music Bulb With Bluetooth Speaker -  multycolour: Buy Online at Best Prices in Bangladesh |\" src=\"https://static-01.daraz.com.bd/p/e08f90fe3772d1dffc4106f5332986b3.jpg\" /><img alt=\"Smart Speaker Bulb With Remote Control LED Light Smart Bulb: Buy Online at  Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/b25f87ef5bdd09e779e23292a2b7217c.jpg\" /></li>\r\n</ul>', NULL, NULL, 'fixed', 470.00, 100.00, 100.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 12:54:52', '2025-10-13 06:21:32'),
(33, 'Oppo F21 Pro - Official', 'F21 Pro', 'single', NULL, 3, NULL, NULL, 26000.00, 2200.00, NULL, 'Oppo F21 Pro - Official.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/oppo-f21-pro-price-in-bangladesh-8557.png\" /></p>\r\n\r\n<h1><strong>Oppo F21 Pro Official</strong></h1>\r\n\r\n<p>When it\'s time to talk about Oppo F21 Pro, then the first thing coming out is it’s ultimate self portrait taking capability. It  comes with an astounding camera that takes the standard of selfie to a new level. Alongside camera features it also holds a system performance optimizer with a long battery backup.</p>\r\n\r\n<p> </p>\r\n\r\n<p>All these things can be possible on a very friendly budget. So many dynamic camera modes surely gives you an opportunity  to capture every precious moment.  </p>\r\n\r\n<p> </p>\r\n\r\n<p>The sleek outlook  combines with alluring colors and makes the phone  the prime of mid level.</p>\r\n\r\n<p> </p>\r\n\r\n<p>4 key factors that makes the difference</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Flagship Sony IMX709 Selfie Sensor</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>AI Portrait Enhancement</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Fiberglass Leather</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ultra Slim Retro Design</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2> </h2>\r\n\r\n<h2><strong>Specifications of Oppo F21Pro</strong></h2>\r\n\r\n<h3><strong>Selfie Master Camera</strong></h3>\r\n\r\n<p>The phone breaks the silence with its ultimate selfie camera. With flagship Sony IMX709 selfie sensor and several selfie modes take out of the world quality selfies in every light whether it is low or highlight.</p>\r\n\r\n<p> </p>\r\n\r\n<p>The 64MP Triple camera gives you a great photography experience with its multiple camera features. You can capture your perfect moment with a 48MP wide main camera with great details  and 2MP each depth and macro camera. Which helps to get precise and natural depth photos and also explore the miniature world.The dynamic night plus makes your night more dazzling by taking extraordinary night photos.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Night Plus Mode Flash Snapshot Segment 1st Microlens Camera features make the photography totally impressive and blow your mind.</p>\r\n\r\n<p> </p>\r\n\r\n<p>32 MP HDR selfie camera with Sony IMX709 selfie sensor, AI Portrait Enhancement, Bokeh Flare Portrait features are changing the definition of selfie capable of taking share worthy crisp self portraits and makes your moment beautiful then ever.</p>\r\n\r\n<h3> </h3>\r\n\r\n<h3><strong>Main Camera</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>64 MP(wide)</p>\r\n	</li>\r\n	<li>\r\n	<p>2 MP (macro)</p>\r\n	</li>\r\n	<li>\r\n	<p>2 MP(depth)</p>\r\n	</li>\r\n	<li>\r\n	<p>Night Plus Mode </p>\r\n	</li>\r\n	<li>\r\n	<p>Flash Snapshot</p>\r\n	</li>\r\n	<li>\r\n	<p>Segment 1st Microlens Camera</p>\r\n	</li>\r\n	<li>\r\n	<p>1080p Video at 30fps</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3> </h3>\r\n\r\n<h3><strong>Selfie Camera</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>32MP Selfie Camera</p>\r\n	</li>\r\n	<li>\r\n	<p>Sony IMX709 selfie sensor</p>\r\n	</li>\r\n	<li>\r\n	<p>AI Portrait Enhancement</p>\r\n	</li>\r\n	<li>\r\n	<p>Bokeh Flare Portrait</p>\r\n	</li>\r\n	<li>\r\n	<p>1080p Videography at 30fps</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3> </h3>\r\n\r\n<h3><strong>Mind Blowing Performance</strong> </h3>\r\n\r\n<p>The phone holds an Octa core Qualcomm SM6225 Snapdragon 680 4G (6 nm) processor and PowerVR GM9446.These powerful elements boost the phones performance better than ever. You will feel the smooth performance when using the phone. The phone also serves it best while gaming and increases the gaming performance.</p>\r\n\r\n<p> </p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Qualcomm SM6225 Snapdragon 680 4G (6 nm)</p>\r\n	</li>\r\n	<li>\r\n	<p>Octa-core </p>\r\n	</li>\r\n	<li>\r\n	<p>2.4GHz Kryo 265 Gold</p>\r\n	</li>\r\n	<li>\r\n	<p>Adreno 610</p>\r\n	</li>\r\n	<li>\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>ColorOS 12.1</p>\r\n	</li>\r\n	<li>\r\n	<p>8GB RAM</p>\r\n	</li>\r\n	<li>\r\n	<p>256 GB Storage</p>\r\n	</li>\r\n	<li>\r\n	<p>MicroSDXC support</p>\r\n	</li>\r\n	<li>\r\n	<p>UFS 2.2 Storage System</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3> </h3>\r\n\r\n<h3><strong>Luxurious Retro Design</strong> </h3>\r\n\r\n<p>The ultra thin design with exclusive dazzling finish with fiberglass leather attached retro look makes it more fascinating to the users. It is also fingerprint proof and wear resistant and the back is so shiny. The giant AMOLED display with punch hole pattern and under display optical fingerprint makes it smoother than ever.</p>\r\n\r\n<p> </p>\r\n\r\n<p>The AI quad Cameras set in a fantastic fitted with a vector module. </p>\r\n\r\n<p> </p>\r\n\r\n<p>The elegance of the phone  is filled with its color. The discerning finish with 2 marvelous colors takes the elegance level to a new level. Cosmic Black  and Sunset orange  are available colors of Oppo F21 Pro .</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Luxurious Retro Design</p>\r\n	</li>\r\n	<li>\r\n	<p>Lavish Back with Fiberglass Leather</p>\r\n	</li>\r\n	<li>\r\n	<p>Well patterned body design</p>\r\n	</li>\r\n	<li>\r\n	<p>Vector Patterned Camera Module</p>\r\n	</li>\r\n	<li>\r\n	<p>Ultra Slim (7.5mm)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ultra Thin (175gm)</p>\r\n	</li>\r\n	<li>\r\n	<p>AMOLED Display with punch hole Pattern</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\n </p>\r\n\r\n<h3><strong>Mega Battery</strong></h3>\r\n\r\n<p>This Oppo phone contains a massive battery. 4500mAh in exact measurement. So you have not to worry about battery backup. Just go on with this long lasting battery.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Because it also has a 33W fast charging that boosts your battery within minutes.</p>\r\n\r\n<p> </p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Li-Po 4500 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Non-removable</p>\r\n	</li>\r\n	<li>\r\n	<p>33W Fast Charging </p>\r\n	</li>\r\n	<li>\r\n	<p>Reverse Charging</p>\r\n	</li>\r\n</ul>', NULL, NULL, 'fixed', 2150.00, 50.00, 50.00, NULL, NULL, NULL, 1, 0, 1, '2022-12-18 12:58:46', '2024-10-12 22:48:57'),
(34, 'Wireless Bluetooth Speaker TF USB FM', NULL, 'single', NULL, 18, NULL, NULL, 270.00, 470.00, NULL, '4382efe82d3065217e6e876ce2a532a61671346862.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Multimedia speakers</li>\r\n	<li>Simple design</li>\r\n	<li>Sound Booster</li>\r\n	<li>Low noise amplifier design</li>\r\n	<li>Color: blue,balck,red,golden,silver.</li>\r\n	<li>Size: 38*38*47cm.</li>\r\n	<li>Material: Plastic.</li>\r\n	<li>TF card supporteded: Yes.</li>\r\n	<li>Battery type: Lithium polymer.</li>\r\n	<li>Battery Capacity: 300 mAh.(Build in)</li>\r\n	<li>Charging mode: Charging seat.</li>\r\n	<li>Major function: TF-card support,answer phone call,listen to music.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Best WS 887 Wireless Bluetooth Speaker TF USB FM AUX Portable Music Mini  Speaker For all: Buy Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/704992fc534a322c8d7eb60f922ea5a9.jpg\" /></p>\r\n\r\n<p><img alt=\"Portable Mini Bluetooth Wireless Speaker Stereo Music\" src=\"https://udvabony.com/wp-content/uploads/2021/05/Portable-Rechargeable-Mini-Bluetooth-Wireless-Speaker-WS-887-Stereo-Music-Speaker-Hand-Free-TF-Card-FM-Memory-Card-Bluetooth-USB-4-247x296.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 13:01:02', '2025-10-13 06:21:33'),
(40, 'Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1\" HD Touch Laptop', 'D330', 'single', NULL, 4, NULL, NULL, 32600.00, 36500.00, NULL, '331671347993.jpg', NULL, NULL, NULL, NULL, NULL, '<h2>Description</h2>\r\n\r\n<h2>Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1&quot; HD Touch Laptop</h2>\r\n\r\n<p>The Ideapad D330 has computing power and all the fun and mobility of a lightweight tablet. From multitasking to connecting with friends online and streaming shows. This Ideapad D330 featured 4GB DDR4 RAM, 128GB eMMC and Intel UHD 600 Graphics, and Windows 10 Home. The Lenovo Ideapad D330 comes with 10.1&quot; (1280 x 800) HD IPS WXGA LED Antiscratch Brightness: 300nits, Aspect Ratio: 16:10, Color Gamut: 50% NTSC Display. This Lenovo IdeaPad D330 has an abundance of ports, including a USB-C 3.1 to help you charge other devices or transfer data at speeds up to 10 Gbps. Its display can generate lifelike clarity with 2S stereo Speakers Dolby Premium Audio is the perfect combination for entertainment. This Lenovo IdeaPad D330 10IGL comes with 1 year Limited Warranty (1 year for Battery and Adapter, Terms &amp; Conditions Apply As Per Lenovo)</p>', '<p>Feature</p>', NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2022-12-18 13:19:53', '2023-09-24 18:33:45'),
(79, 'M35 TWS True Wireless Earbuds Stylish Wood Design', 'm35', 'single', NULL, 18, NULL, NULL, 760.00, 1450.00, NULL, 'a1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h1_1677703195.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h2_1677703212.jpg\" style=\"height:698px; width:698px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Bluetooth specification : V5.3</li>\r\n	<li>&nbsp;Bluetooth Profile : A2DP, AVRCP, HFP, HSP</li>\r\n	<li>&nbsp;Working voltage : 3.1V~4.2V</li>\r\n	<li>&nbsp;Charging voltage : 5V-1A</li>\r\n	<li>&nbsp;Battery capacity of the headset : 50MAH</li>\r\n	<li>&nbsp;Battery capacity of the storage box : 2000MAH</li>\r\n	<li>&nbsp;Transmission distance : &gt;10M</li>\r\n	<li>&nbsp;Call time : About 4-5h</li>\r\n	<li>&nbsp;Play time : About 6h</li>\r\n	<li>&nbsp;Waterproof : IPX6</li>\r\n	<li>Charging time of headset : 1h</li>\r\n	<li>Charging time of the Charging box : 2h</li>\r\n</ul>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-02-27 18:09:21', '2025-10-13 06:21:34'),
(81, 'Rechargeable Diamond Crystal Multicolor Table Lamp', NULL, 'single', NULL, 18, NULL, NULL, 880.00, 1580.00, NULL, 'b1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/lc_1677528220.jpg\" style=\"height:627px; width:627px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Hf3416bbbc9444e79a53699f25e0a560bA_1677528347.jpg\" style=\"height:631px; width:631px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/H27da7e68363042dca144cff49d7b1783z_1677528242.jpg\" style=\"height:632px; width:632px\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-02-28 02:06:31', '2025-10-13 06:21:36'),
(84, 'T800 Pro Max Smart Watch', 'T800', 'single', NULL, 18, NULL, NULL, 1000.00, 1800.00, NULL, 'c1.png', NULL, NULL, NULL, NULL, NULL, '<p>Model Number: T800 Pro Max</p>\r\n\r\n<p>Place of Origin: Guangdong, China</p>\r\n\r\n<p>Certification: RoHS, CE, FCC, etc</p>\r\n\r\n<p>Warranty: 1 Year</p>\r\n\r\n<p>CPU: YC1133</p>\r\n\r\n<p>Flash: 32MB</p>\r\n\r\n<p>G-Sensor: Yes</p>\r\n\r\n<p>M-Sensor: Yes</p>\r\n\r\n<p>Bluetooth: 5.0</p>\r\n\r\n<p>LCD: 1.81 Inch</p>\r\n\r\n<p>Motor: Yes</p>\r\n\r\n<p>Microphone: Yes</p>\r\n\r\n<p>Side Key: Yes</p>\r\n\r\n<p>Power Amplifier: Yes</p>\r\n\r\n<p>Battery Capacity: 220mAh</p>\r\n\r\n<p>APP: Hiwatch Pro</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-02-28 11:58:14', '2023-09-24 18:52:19'),
(89, 'LP V9A WIRELESS SPEAKER (GOOD BASS)', 'LP V9A', 'single', 1, 18, NULL, NULL, 840.00, 1700.00, NULL, 'f6.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Type: Bluetooth Speaker<br />\r\nConnection method: Bluetooth connection<br />\r\nInterface type: USB<br />\r\nBattery capacity: 1800<br />\r\nFrequency response range: 100HZ-20KHZ<br />\r\nSignal to noise ratio: ≥75dB<br />\r\nPower supply mode: built-in lithium battery<br />\r\nChannel: 2.1<br />\r\nPlay time: 2 hours<br />\r\nExtended storage: 32GB<br />\r\nBluetooth protocol: 4.1<br />\r\nNumber of speakers: 2<br />\r\nEffective distance: 10 meters<br />\r\nFunction: card, radio<br />\r\nMode of operation: button<br />\r\nApplicable people: General<br />\r\nDisplay: Yes<br />\r\nPlay format: MP3<br />\r\nShell material: plastic<br />\r\nWhether to support APP: No<br />\r\nSupport format: U disk<br />\r\nSpeaker adjustment mode: button<br />\r\nIs there a radio function: there is<br />\r\nBox material: plastic</p>', NULL, NULL, NULL, 1500.00, NULL, 0.00, NULL, 1, NULL, 1, 0, 1, '2023-02-28 12:44:53', '2025-10-09 12:39:28'),
(90, 'M10 TWS WIRELESS EARBUD', 'M10', 'single', NULL, 18, NULL, NULL, 400.00, 790.00, NULL, 'd1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Bluetooth version: 5.1</p>\r\n\r\n<p>Protocol: HFP 1.7 / HSP1.2 / A2DP 1 / AVRCP 1.6/ SPP1.2 / PBAP1.0</p>\r\n\r\n<p>Noise reduction version: CVC8.0</p>\r\n\r\n<p>Frequency range: 2402MHz ~ 2480MHz</p>\r\n\r\n<p>Working distance: 10m</p>\r\n\r\n<p>Charging input voltage and current: 5V</p>\r\n\r\n<p>Headphone battery capacity：50mAh</p>\r\n\r\n<p>Charging compartment battery capacity: 2000mAh</p>\r\n\r\n<p>Headphone charging time 2 hours</p>\r\n\r\n<p>Music playback time: 4-5 hours</p>\r\n\r\n<p>Talk time: 4-5 hours</p>\r\n\r\n<p><strong>Specifications:</strong>The latest Bluetooth V5.1 technology&nbsp;Using CVC8.0 digital noise reduction technology&nbsp;High capacity batteries are used for a long time&nbsp;IPX7 waterproof and sweatproof&nbsp;Binaural separation design&nbsp;Designed for sports</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-02-28 12:57:47', '2023-09-24 18:53:44'),
(91, 'M28 TWS Wireless Gaming Earbuds', 'M28', 'single', NULL, 18, NULL, NULL, 530.00, 1050.00, NULL, 'e1.webp', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Product model: M28</li>\r\n	<li>Bluetooth version: V5.1</li>\r\n	<li>Battery life: about 5 hours</li>\r\n	<li>Standby time: about 180 hours</li>\r\n	<li>Impedance: 320</li>\r\n	<li>Rated input: 5V</li>\r\n	<li>Frequency response: 20Hz 20KHz</li>\r\n	<li>Transmission distance: about 10 m</li>\r\n	<li>Lighting ffect: colorful atmosphere light</li>\r\n	<li>Control method: smart Press</li>\r\n	<li>Noise reduction version: CVC8.0</li>\r\n	<li>Headset battery:50mAh</li>\r\n	<li>Charging case battery:2000mAh</li>\r\n	<li>Colour: black</li>\r\n	<li>Material: ABS</li>\r\n	<li>Size: 12 x 7.3 x 4.7CM</li>\r\n	<li>Speaker size: 8mm</li>\r\n</ul>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 0, '2023-02-28 13:04:45', '2023-09-24 18:55:43'),
(92, 'Joyroom T03s PRO ANC Noise Cancellation Bluetooth Earbuds', 'T03s', 'single', NULL, 18, NULL, NULL, 1650.00, 3300.00, NULL, '1Y1694589252.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Specifications:</p>\r\n\r\n<p>Brand： JOYROOM</p>\r\n\r\n<p>Model: JR-T03s Pro</p>\r\n\r\n<p>Wearing method:in-ear</p>\r\n\r\n<p>Bluetooth: V5.0</p>\r\n\r\n<p>Earphone battery capacity:30mAh</p>\r\n\r\n<p>Charging case battery capacity:360mAh</p>\r\n\r\n<p>Music time:2 ~ 3h</p>\r\n\r\n<p>Call time:2 ~ 3h</p>\r\n\r\n<p>Charging time of charging case:1.3 hours</p>\r\n\r\n<p>Charging time of earphone:1.2 hours</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-02-28 13:16:13', '2023-09-27 23:36:13'),
(93, 'Multi functional Extendable Bluetooth Selfie Stick with Remote', 'N08S', 'single', NULL, 18, NULL, NULL, 280.00, 650.00, NULL, '115_11691051404.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Bluetooth Extendable Selfie Stick with Wireless Remote for Making , Vlog Videos and Tripod Stand Selfie Stick for Mobile and All Smart Phones Three-in-one Compact selfie stick with Wireless Remote Control and integrated with tripod, with led light , product length up to 750MM, the range of the wireless connection can be up to 10 meters. New experience great for Selfies, Group Photos, Face-time, Life-logging, Video shooting, Social live. Designed For: Mobile, Video Camera, Point &amp; Shoot Camera Load Capacity: 400 g Height Range: 185 mm - 750 mm Number of Leg Sections: 3 Material: ABS Plastic, steel</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-02-28 16:26:50', '2023-09-27 23:36:51'),
(94, 'Smart Voice Command Control USB Light-multimood', 'light03', 'single', NULL, 18, NULL, NULL, 280.00, 680.00, NULL, 'h1.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>[Easy to use] No WIFI, no Bluetooth, built-in voice module, can be used directly</li>\r\n	<li>[Powerful function] It can change color, adjust brightness, turn on and off</li>\r\n	<li>[USB power supply] It can be powered by laptop, power bank and charger, and can be placed anywhere in the home</li>\r\n	<li>[Angle adjustment] Use soft materials to adjust the angle at will</li>\r\n	<li>Voice command: turn on the light, turn off the light, Dim the light, Brighten the light</li>\r\n	<li>Operation method: USB plug-in</li>\r\n	<li>Input: DC 5V Product</li>\r\n	<li>color: white Pillar: silicone hose</li>\r\n	<li>Applications: reading, learning, working, office, bedroom</li>\r\n</ul>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-03-01 23:12:13', '2023-09-24 19:06:29'),
(95, 'M18 Pro Flashlight Earbuds', 'M18', 'single', NULL, 18, NULL, NULL, 750.00, 1550.00, NULL, 'e1.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>M18 Pro Flashlight Earbuds Hifi Sound Wireless Bluetooth With Charging LCD And Magnet Power Bank Case</li>\r\n	<li>a lightweight, small, and waterproof body</li>\r\n	<li>Practical LED lamp that supports the SOS global distress signal</li>\r\n	<li>suitable for trekking and camping</li>\r\n	<li>support for bicycle lights includes</li>\r\n	<li>Perfect for bicycle supplemental lights</li>\r\n	<li>supports the ability to charge mobile devices</li>\r\n	<li>2000mAh lithium-ion rechargeable built-in power bank</li>\r\n	<li>circuit with intelligent integrated charge and discharge</li>\r\n	<li>Integrated Bluetooth speaker for TF and radio playback of MP3 songs</li>\r\n	<li>has a hands-free feature for making hands-free phone calls.Size: 125 x 35mm in diameter</li>\r\n</ul>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-05 14:29:16', '2023-09-26 15:25:42'),
(96, 'Elf Table Lamp', 'Elf', 'single', NULL, 18, NULL, NULL, 360.00, 750.00, NULL, 'i1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/e1_1678011078.jpg\" style=\"height:865px; width:865px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/e2_1678011124.jpg\" style=\"height:865px; width:865px\" /></p>\r\n\r\n<p>Material: ABS</p>\r\n\r\n<p>&nbsp;Battery Capacity: 400mAh</p>\r\n\r\n<p>Voltage Input: 5V</p>\r\n\r\n<p>Voltage Output: 4V</p>\r\n\r\n<p>Power Input: 3W</p>\r\n\r\n<p>Power Output: 1.6W</p>\r\n\r\n<p>Input Current: 1A</p>\r\n\r\n<p>Output Current: 0.5A</p>\r\n\r\n<p>Input Frequency: 50Hz</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-03-05 14:46:22', '2023-09-24 19:08:33'),
(97, 'Rechargeable Diamond Crystal Multicolor Table Lamp-touch, Remote', 'tl01', 'single', NULL, 18, NULL, NULL, 800.00, 1480.00, NULL, 'j1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l1_1678014918.jpg\" style=\"height:873px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l2_1678014935.jpg\" style=\"height:873px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l6_1678014953.jpg\" style=\"height:813px; width:800px\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-03-05 17:16:05', '2023-09-24 19:10:13');
INSERT INTO `products` (`id`, `name`, `sku`, `type`, `priority`, `category_id`, `sub_category_id`, `type_id`, `purchase_prices`, `sell_price`, `regular_price`, `image`, `thumb_image`, `com_image`, `video_link`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `stock_quantity`, `is_recommended`, `is_free_shipping`, `user_id`, `is_stock`, `status`, `created_at`, `updated_at`) VALUES
(98, 'WOW Skin Science Red Onion Black Seed Oil Shampoo', 'w1', 'single', NULL, 6, NULL, NULL, 200.00, 860.00, NULL, 'k1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>WOW Skin Science Red Onion Black Seed Oil Shampoo&nbsp;- 300ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Get strong and lustrous hair with WOW Skin Science Red Onion Black Seed Oil Shampoo. This shampoo may help tackle hair loss, scalp buildups and dull, weak hair. The shampoo, formulated with natural ingredients, helps strengthen hair follicles and clarify blocked roots. It is infused with red onion extract with strong antioxidant properties that help protect the scalp and hair, promotes blood circulation to the roots. Black seed oil rich in fatty acids nourishes scalp and roots. Sweet almond oil keeps the scalp and hair conditioned. It can be used to hydrate the roots and scalp and help make hair look healthy and lustrous. Red onion extract, black seed oil aid in rejuvenating tired scalp and weak hair. Suitable for all hair types, this shampoo cleanses and moisturizes your hair and scalp and helps to improve hair texture. This shampoo helps to revive your tired scalp and hair. Use this shampoo to help improve hair texture and strengthen the strands</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MADE IN INDIA</p>\r\n\r\n<p>Net Weight - 300ml</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-08 04:10:07', '2023-09-24 19:11:37'),
(99, 'Desktop smart multi-function lamp socket - with remote', 'lamp11', 'single', NULL, 18, NULL, NULL, 950.00, 1650.00, NULL, 'l1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S2f4bcc2627864365bb814fb148d23dbcJ_1678351269.jpg\" style=\"height:1201px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S42bcb4e7d2a04d479d0a2133b03e7d4at_1678351289.jpg\" style=\"height:1249px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S170c8fce862a41c6a52c39899e743bcfo_1678351320.jpg\" style=\"height:1506px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S260404064ec4489388ae63e43cf65cddO_1678351340.jpg\" style=\"height:1050px; width:790px\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-03-09 14:43:30', '2023-09-24 19:14:02'),
(101, 'Hairmax Hair Growth Serum 10x more powerfull (3pc course )', 'Hairmax01', 'single', NULL, 11, NULL, NULL, 160.00, 650.00, NULL, 'd4.jpeg', NULL, NULL, NULL, NULL, NULL, '<p>Hairmax Miracle Hair Growth Serum intensively stimulates hair growth 10x and prevents hair loss. Stimulates micro-circulation and thus nourishes and revitalizes hair follicles a root lifting viscosity that promotes visibly thicker hair. Formulated with the highest concentration of Hairmax unique Hair Growth Serum, this performance led, non-greasy serum is dermatologically tested for use on sensitive scalps and lightweight enough for everyday use. Results can be expected between 2 - 4 months, with daily use.</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h3_1678818028.jpeg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Untitled_1679688211.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Untitled1_1679688234.jpg\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-15 00:21:50', '2023-09-26 15:23:47'),
(103, 'Wireless Bluetooth Speaker - Torch-table lamp. 3 in 1', '3in1specker', 'single', NULL, 18, NULL, NULL, 400.00, 800.00, NULL, 'm1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Wireless Bluetooth Speaker - Torch-table lamp. 3 in 1</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-18 23:44:40', '2023-09-24 19:16:26'),
(104, 'Color changing bathroom-kitchen Faucet Head', NULL, 'single', 3, 5, NULL, NULL, 240.00, 750.00, 0.00, 'c5.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li><strong>100% একদম নতুন এবং উচ্চ মানের।</strong></li>\r\n	<li><strong>ABS ক্রোমিং উপাদান, চমৎকার জারা প্রতিরোধের, টেকসই।</strong></li>\r\n	<li><strong>জলের স্রোতকে রূপান্তরিত করে আলোর সুন্দর জলপ্রপাত।</strong></li>\r\n	<li><strong>আলো জলের চাপ দ্বারা সক্রিয় হয় এবং জলের সাথে স্বয়ংক্রিয়ভাবে বন্ধ হয়ে যায়।</strong></li>\r\n	<li><strong>এটি চমত্কার করতে বাথরুম বা রান্নাঘরের জন্য আদর্শ।</strong></li>\r\n	<li><strong>নীল আলো এবং 7 টি রঙ জলের তাপমাত্রা দ্বারা প্রভাবিত হয় না।</strong></li>\r\n	<li><strong>1 রঙ: নীল আলো, জল প্রবাহিত হলে কলটি নীল রঙে আলোকিত হবে।</strong></li>\r\n	<li><strong>3 রঙ: রঙের পরিবর্তন আপনাকে জলের তাপমাত্রা মনে করিয়ে দেয়।</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 1) জল ঠান্ডা হলে জল নীল হয়ে যায় (তাপমাত্রা 31 ডিগ্রি সেলসিয়াসের নিচে)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 2) জল উষ্ণ হলে জল সবুজ হয়ে যায় (তাপমাত্রা 32&deg;C 43&deg;C)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 3) জল গরম হলে জল লাল হয়ে যায় (তাপমাত্রা 44-50 ডিগ্রি সেলসিয়াসের উপরে)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 4) তাপমাত্রা 50 ডিগ্রি সেলসিয়াসের উপরে হলে জল লাল হয়ে যায়।</strong></li>\r\n	<li><strong>যখন জলের তাপমাত্রা 51 ডিগ্রি সেন্টিগ্রেডের উপরে, লাল ফ্ল্যাশ আপনাকে সতর্ক করার জন্য স্ক্যাল্ড হওয়া এড়াতে হবে।</strong></li>\r\n	<li><strong>7 রঙ: জল প্রবাহিত হওয়ার পরে অনেক রঙ একই সময়ে এলোমেলোভাবে হালকা হবে।</strong></li>\r\n	<li><strong>(বিজ্ঞপ্তি: অনুগ্রহ করে মনে রাখবেন যে কাজের প্রক্রিয়া চলাকালীন গোলমাল স্বাভাবিক।)</strong></li>\r\n	<li><strong>(দ্রষ্টব্য: অনুগ্রহ করে ম্যানুয়াল পরিমাপের কারণে 1-3 মিমি ত্রুটির অনুমতি দিন এবং আলো এবং পর্দার কারণে সামান্য রঙের পার্থক্য।)</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/a2_1679517102.jpg\" style=\"height:1000px; width:1000px\" /></strong></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 1, 1, '2023-03-23 02:31:47', '2025-10-13 09:55:47'),
(105, 'Belly Drainage Slimming Ginger Oil', NULL, 'single', NULL, 6, NULL, NULL, 100.00, 550.00, 0.00, 'b3.jpg', NULL, NULL, NULL, NULL, NULL, '<p>বেলি ড্রেনেজ আদা এসেনশিয়াল অয়েল ডিটক্সিফাই করে এবং স্লিম করে, চর্বি কমায় এবং ত্বককে সতেজ করে।<br />\r\n<br />\r\n&nbsp;রক্ত সঞ্চালনকে উৎসাহিত করে এবং রক্তের স্থবিরতা দূর করে।<br />\r\n<br />\r\n&nbsp;ব্যবহার: পেট, পা, নিতম্ব, ঘাড় সহ শরীরের যেকোনো অংশে ব্যাবহার করতে পারবেন<br />\r\n<br />\r\n&nbsp;তেল শোষণ করতে সাহায্য করার জন্য আপনার আঙ্গুল দিয়ে ত্বকে ফ্লিক করুন।<br />\r\n<br />\r\n&nbsp;Belly Drainage Ginger Oil apply the product to belly button and let it absorb to achieve slimming effect. Fast fat burning and eliminate cellulite cell 10 times more effective than applying on skin. It is quite safe and effective, and it can be used on a daily basis.<br />\r\n<br />\r\n&nbsp;Belly button deep absorption to achieve slimming effectively.<br />\r\n<br />\r\n&nbsp;Improves blood, boost vital fluid circulation body to fit.<br />\r\n<br />\r\n&nbsp;Burn Fats naturally with no harm effect.<br />\r\n<br />\r\n&nbsp;Herbal formula that made from high quality need oil extract.<br />\r\n<br />\r\n&nbsp;How to Use:------<br />\r\n<br />\r\n&nbsp;Clean belly button carefully.<br />\r\n<br />\r\n&nbsp;Apply this product.<br />\r\n<br />\r\n&nbsp;Let your belly button absorbed.</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-25 01:11:56', '2023-09-26 14:54:01'),
(106, 'Original Facial Exfoliating Gel Soft Clean Weekly Peeling PAPAYA', NULL, 'single', NULL, 6, NULL, NULL, 180.00, 690.00, 0.00, 'a1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Usage:</p>\r\n\r\n<p>Step 1: After cleansing face, take appropriate products smear on the face.</p>\r\n\r\n<p>Step 2: Along the skin texture and gently massage in circular motions for 1-2 minutes, until the dead skin off the dirt.</p>\r\n\r\n<p>Step 3: The rinse with water.</p>\r\n\r\n<p>Please Note:</p>\r\n\r\n<p>1.That due to lighting effect and computer color, the actual colors may be slightly different from the picture.</p>\r\n\r\n<p>2.If the skin wound, do not use this product in the wound, sensitive skin with caution.</p>\r\n\r\n<p>3.Please do a skin test before use, no irritation can use.</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p1_1679690177.jpg\" style=\"height:1600px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p2_1679690213.PNG\" style=\"height:288px; width:775px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p3_1679690238.png\" style=\"height:1024px; width:2666px\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-03-25 02:38:35', '2023-09-26 14:51:28'),
(109, 'High quality 18k gold plated bling zircon shell pearl necklace N928', 'N928', 'single', 29, 10, NULL, NULL, 500.00, 540.00, 0.00, 'x3.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 460.00, 80.00, 80.00, NULL, NULL, NULL, 1, 1, 1, '2023-04-12 16:01:02', '2024-01-09 12:30:24'),
(110, 'Couple Jewelry Stainless Steel Bracelet- Love Heart Lock', 'LOVE LOCKET', 'single', 28, 10, NULL, NULL, 500.00, 560.00, 0.00, 'y1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 510.00, 50.00, 50.00, NULL, NULL, NULL, 1, 1, 1, '2023-04-12 16:03:46', '2024-01-09 12:26:06'),
(111, 'ম্যানুয়াল হ্যান্ড প্রেস জুসার বড় সাইজ', 'juicer', 'single', 2, 5, NULL, NULL, 480.00, 940.00, 0.00, 'n1.webp', NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/j4_1683054997.webp\" style=\"height:600px; width:600px\" /></p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, 1, NULL, 1, 0, 1, '2023-05-03 01:16:41', '2025-10-13 09:55:45'),
(112, 'Airplane Launcher Toys Soft Foam', 'Airplane Launcher', 'single', 2, 18, NULL, NULL, 550.00, 1150.00, 0.00, 'o1.jpg', NULL, NULL, NULL, NULL, NULL, '<p><span dir=\"auto\">ফোম প্লেন গান(কোড:PG1 : ১টি ফোম প্লেন &amp; ১টি বন্দুক সহজে নষ্ট হবে না। ঘরে এবং বাইরেও খেলতে পারবে। দেয়ালে লাগলেও নষ্ট হবে না সহজে, শরীর এ লাগলেও ইনজুরি হবে না । খুবই মজার আর নিরাপদ একটা খেলেন। (১ টি প্লেন + ১ টি বন্দুক ), প্লেন সাইজ- ১ ফিট এর বেশি। এক্সট্রা প্লেন আছে । </span></p>\r\n\r\n<p><span dir=\"auto\">Cash on delivery available (COD). শুধুমাত্র ঢাকার বাইরের হলে ডেলিভারী চার্জ অ্যাডভান্স দিতে হবে।</span></p>\r\n\r\n<p>Material:EVA+ABS</p>\r\n\r\n<p>Size:as shown</p>\r\n\r\n<p>includes: 1 set x Plane Toy</p>\r\n\r\n<p>kjhkk</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/71tYARDt8UL._AC_SY450__1683144131.jpg\" style=\"height:450px; width:474px\" /></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 0.00, NULL, 0.00, NULL, 1, NULL, 1, 0, 1, '2023-05-04 02:02:25', '2025-08-27 09:11:52'),
(113, '3 in 1 rechargeable kitchen tool, chopper, blender beater', 'blender beater', 'single', 1, 5, NULL, NULL, 800.00, 1390.00, 0.00, 'z1.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 1190.00, 200.00, 200.00, NULL, 1, NULL, 1, 0, 1, '2023-05-07 17:50:35', '2025-10-13 09:55:45'),
(118, 'Bladeless Neck Fan, Portable Neck Fan', 'fan321', 'single', 1, 18, NULL, NULL, 400.00, 850.00, 0.00, 'zz1.jpg', NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Description :</p>\r\n\r\n<ul>\r\n	<li>❄️【Skin-Friendly Soft Rubber Material】The neck fan is made of environmentally and durable premium Silicone materials, which makes you warm to the touch and soft against your skin. Ergonomic design can be adjusted neck hanging at will for better-fit skin, and the back of your neck has a soft rubber texture that can effectively prevent sliding.</li>\r\n	<li>❄️【Safety &amp; 360&deg; Airflow Design】The bladeless design ensures safe use for the long-haired, children, and, the elderly. Adjust the angle of the fan so that the airflow is directed toward your face and neck, which allows you to feel the 360&deg; air flowing and feel cool instantly.</li>\r\n	<li>❄️【3 Speeds &amp; Button Control】One button to switch three different wind speeds, which helps you get cool in seconds. 1s press gets a light breeze blowing; 2s press will cool immediately to dispel the hot; 3s press superwind will be activated immediately to dispel the heat.</li>\r\n	<li>❄️【5000mAh Battery Power】All-day cool in one USB-C charge for 3 hours, which can keep cool for up to 16hrs (depending on the wind speed) with a 5000mAh battery on low settings, so you do not need to worry about cooling time more. And on the 3-speed setting, it can work for 3-4 hours running, with a USB-C rechargeable, to keep you cool on a hot summer day.</li>\r\n	<li>❄️【Lightweight &amp; Portable Design】The compact style neck fan hanging on the neck makes you look so cool, and the lightweight design helps you put less strain on the neck. If you are sitting at your desk working, on a lounger by a pool, on a chair in the garden, or even just going for a stroll, this little item will give your neck and head a good blast of refreshing air to keep you from melting.</li>\r\n</ul>', NULL, NULL, 'percentage', 680.00, 170.00, 20.00, NULL, 1, NULL, 1, 0, 1, '2023-07-06 14:09:30', '2024-08-30 09:35:27'),
(149, 'Polo T-Shirt P1', 'P1', 'single', NULL, 19, NULL, 8, 0.00, 995.00, 0.00, 'p.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Casual Shirt Measurement:</p>\r\n\r\n<p>15 &ndash; Chest: 40inch, Sleeve: 24, Body Length: 27.5</p>\r\n\r\n<p>15.5 &ndash; Chest: 42inch, Sleeve: 24.5, Body Length: 28.5</p>\r\n\r\n<p>16 &ndash; Chest: 44inch, Sleeve: 25, Body Length: 29.5</p>\r\n\r\n<p>16.5 &ndash; Chest: 46inch, Sleeve: 25.5, Body Length: 30.5</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-13 14:54:23', '2023-09-24 19:20:51'),
(150, 'Polo T-Shirt P2', 'P2', 'single', NULL, 19, NULL, 8, 0.00, 995.00, 0.00, 'q.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Casual Shirt Measurement:</p>\r\n\r\n<p>15 &ndash; Chest: 40inch, Sleeve: 24, Body Length: 27.5</p>\r\n\r\n<p>15.5 &ndash; Chest: 42inch, Sleeve: 24.5, Body Length: 28.5</p>\r\n\r\n<p>16 &ndash; Chest: 44inch, Sleeve: 25, Body Length: 29.5</p>\r\n\r\n<p>16.5 &ndash; Chest: 46inch, Sleeve: 25.5, Body Length: 30.5</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-13 14:55:47', '2023-09-24 19:21:32'),
(151, 'Designed Printed T-Shirt T2', 'T2', 'single', NULL, 19, NULL, 8, 0.00, 1250.00, 0.00, 's-l4001694599630.png', NULL, NULL, NULL, NULL, NULL, '<p><strong>T Shirt Measurement:</strong></p>\r\n\r\n<p>L &ndash; Chest: 38inch, Sleeve: 8.5, Body Length: 26.5</p>\r\n\r\n<p>XL &ndash; Chest: 39inch, Sleeve: 8.5, Body Length: 27</p>\r\n\r\n<p>2XL &ndash; Chest: 41inch, Sleeve: 9 Body Length: 27.5</p>\r\n\r\n<p>3XL &ndash; Chest: 42inch, Sleeve: 9.5, Body Length: 28.5</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-13 14:58:43', '2023-09-13 16:07:10'),
(152, 'Designed Printed T-Shirt Combo Offer', 'T3', 'single', NULL, 19, NULL, 8, 0.00, 1250.00, 0.00, 'r.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>T Shirt Measurement:</strong></p>\r\n\r\n<p>L &ndash; Chest: 38inch, Sleeve: 8.5, Body Length: 26.5</p>\r\n\r\n<p>XL &ndash; Chest: 39inch, Sleeve: 8.5, Body Length: 27</p>\r\n\r\n<p>2XL &ndash; Chest: 41inch, Sleeve: 9 Body Length: 27.5</p>\r\n\r\n<p>3XL &ndash; Chest: 42inch, Sleeve: 9.5, Body Length: 28.5</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-13 14:59:59', '2023-09-25 00:46:07'),
(154, 'Designed Printed T-Shirt T5', 'T5', 'single', NULL, 19, NULL, 8, 0.00, 1250.00, 0.00, 's.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>T Shirt Measurement:</strong></p>\r\n\r\n<p>L &ndash; Chest: 38inch, Sleeve: 8.5, Body Length: 26.5</p>\r\n\r\n<p>XL &ndash; Chest: 39inch, Sleeve: 8.5, Body Length: 27</p>\r\n\r\n<p>2XL &ndash; Chest: 41inch, Sleeve: 9 Body Length: 27.5</p>\r\n\r\n<p>3XL &ndash; Chest: 42inch, Sleeve: 9.5, Body Length: 28.5</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-13 15:02:54', '2023-09-24 19:23:28'),
(177, 'Designed Printed T-Shirt T7', 'T7', 'variable', NULL, 19, NULL, 8, 0.00, 990.00, 0.00, 'a4.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Designed Printed T-Shirt T7</p>', NULL, NULL, 'fixed', 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-25 03:53:12', '2023-09-28 01:48:24'),
(207, 'Premium Quality Mango', 'mango1', 'variable', NULL, 9, NULL, 11, 0.00, 200.00, 0.00, 'nurserylive-plants-mango-tree-grown-through-seeds-plant-16969021128844.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Premium Quality Mango</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 1, 0, 1, '2023-09-28 01:29:00', '2023-09-28 01:29:37'),
(281, 'Multi-Color Cotton Stripes Polo Shirt PS-6', 'PS-6', 'single', 27, 10, NULL, 10, 0.00, 1750.00, 0.00, 'multi-color-cotton-stripes-polo-shirt-ps-6-2023-10-21-02-09-31-6622.jpg', NULL, NULL, NULL, NULL, NULL, '<p>gggggggggggggggggg</p>\r\n\r\n<p>hhhhhhhhhhhhhhhhhhh</p>\r\n\r\n<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n\r\n<p>kkkkkkkkkkkkkkkkkkkkkkkkkkk</p>', NULL, NULL, NULL, 1650.00, NULL, 0.00, 60, NULL, NULL, 1, 1, 1, '2023-10-21 14:09:31', '2024-01-09 12:25:46'),
(282, 'Cotton Short Sleeve Polo Shirt PS-1', 'PS-1', 'variable', 26, 10, NULL, 3, 0.00, 1350.00, 0.00, 'cotton-short-sleeve-polo-shirt-ps-1-2023-10-21-02-14-19-6979.jpg', NULL, NULL, NULL, NULL, NULL, '<p>dfshsdfh</p>', '<p>dfgdfh</p>', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 1, 1, 1, '2023-10-21 14:14:19', '2024-01-09 12:25:44'),
(289, 'Mens Premium T-Shirt TS-1', 'TS-1', 'single', 25, 10, NULL, NULL, 0.00, 550.00, 0.00, 'mens-premium-t-shirt-ts-1-2023-10-26-04-23-23-2103.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n	<li>Silk Screen printed</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-26 16:23:23', '2025-12-06 12:14:08'),
(290, 'Premium T-Shirt TS-2', 'TS-2', 'single', 24, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-2-2023-10-26-04-28-03-5412.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n	<li>Silk Screen printed</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, 1, 1, 1, 0, 1, '2023-10-26 16:26:31', '2025-12-06 11:00:25'),
(291, 'Premium T-Shirt TS-3', 'TS-3', 'single', 23, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-3-2023-10-26-04-31-04-4343.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 'fixed', 100.00, 450.00, 450.00, 0, 1, NULL, 1, 0, 1, '2023-10-26 16:31:04', '2025-10-13 06:21:37'),
(292, 'Premium T-Shirt TS-4', 'TS-4', 'single', 22, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-4-2023-10-26-04-43-28-2510.png', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n	<li>Silk Screen printed</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-26 16:36:21', '2025-10-11 08:03:20'),
(293, 'Premium T-Shirt TS-5', 'TS-5', 'single', 21, 10, NULL, NULL, 300.00, 550.00, 0.00, 'premium-t-shirt-ts-5-2023-10-26-04-38-52-9242.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, NULL, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-26 16:38:52', '2024-05-22 14:11:22'),
(294, 'Premium T-Shirt TS-6', 'TS-6', 'single', 20, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-6-2023-10-26-04-47-16-2204.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Finest quality Polyester</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 145gsm.</li>\r\n	<li>Sharp and long-lasting sublimation print</li>\r\n	<li>Preshrunk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-26 16:47:16', '2024-01-09 12:25:18'),
(295, 'Premium T-Shirt TS-7', 'TS-7', 'single', 19, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-7-2023-10-26-04-50-41-1799.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-26 16:50:41', '2024-01-09 12:25:15'),
(296, 'Premium T-Shirt TS-8', 'TS-8', 'single', 18, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-8-2023-10-26-04-54-07-2237.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n	<li>Silk Screen printed</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-26 16:54:07', '2024-01-09 12:25:12'),
(297, 'Premium T-Shirt TS-9', 'TS-9', 'single', 17, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-9-2023-10-26-04-58-07-9901.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Finest quality Polyester</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 145gsm.</li>\r\n	<li>Sharp and long-lasting sublimation print</li>\r\n	<li>Preshrunk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-26 16:58:07', '2024-01-09 12:25:10'),
(298, 'Premium T-Shirt TS-10', 'TS-10', 'single', 16, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-10-2023-10-26-05-02-48-9608.jpg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n	<li>Silk Screen printed</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 1, 0, 1, '2023-10-26 17:02:48', '2025-10-13 10:47:03'),
(299, 'Premium T-Shirt TS-11', 'TS-11', 'single', 15, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-11-2023-10-28-01-14-00-4784.jpeg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, NULL, 0.00, 8, 1, NULL, 1, 0, 1, '2023-10-28 13:14:00', '2025-12-07 10:36:08'),
(300, 'Premium T-Shirt TS-12', 'TS-12', 'single', 14, 10, NULL, NULL, 0.00, 550.00, 0.00, 'premium-t-shirt-ts-12-2023-10-28-01-17-51-3260.jpeg', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>Organic Ringspun Combed Compact Cotton</li>\r\n	<li>100% Cotton</li>\r\n	<li>Regular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)</li>\r\n	<li>Reactive Dye, enzyme and silicon washed</li>\r\n	<li>Preshurnk to minimize shrinkage</li>\r\n</ul>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28</td>\r\n			<td>8.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.25</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-28 13:17:51', '2025-11-20 10:13:00'),
(301, 'Premium Polo-Shirt PS-1', 'PS-1', 'single', 13, 10, NULL, NULL, 0.00, 1050.00, 0.00, 'premium-polo-shirt-ps-1-2023-10-28-01-30-37-5911.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage.&nbsp;</p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p><strong>Yarn type:</strong>&nbsp;Ringspun Combed CompactYarn Construction: 100% Cotton, Organic</p>\r\n\r\n<p><strong>Yarn Count:</strong>&nbsp;26s</p>\r\n\r\n<p><strong>Color type:</strong>&nbsp;Reactive Dye, Dye Finishing: Enzyme and Silicon Washed,</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-28 13:30:37', '2025-11-20 10:13:46'),
(302, 'Premium Polo-Shirt PS-2', 'PS-2', 'single', 12, 10, NULL, NULL, 0.00, 990.00, 0.00, 'premium-polo-shirt-ps-2-2023-10-28-03-19-47-2812.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with Double&nbsp;PK fabric which features premium 80% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage.&nbsp;</p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p>Fabric type&nbsp; :&nbsp; Double&nbsp;PK</p>\r\n\r\n<p>Yarn count&nbsp; &nbsp;:&nbsp; 26/1</p>\r\n\r\n<p>Composition : Cvc ( 80% cotton + 20% polyester )&nbsp;</p>\r\n\r\n<p>GSM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 210-220</p>\r\n\r\n<p>Color type: Reactive Dye, Dye Finishing: Enzyme and Silicon Washed</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-28 15:16:40', '2025-10-13 10:04:09'),
(303, 'Premium Polo-Shirt PS-3', 'PS-3', 'single', 11, 10, NULL, NULL, 0.00, 850.00, 0.00, 'premium-polo-shirt-ps-3-2023-10-28-04-06-42-8271.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with&nbsp;Double&nbsp;PK&nbsp;fabric which features premium 80% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage.&nbsp;</p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p>Fabric type&nbsp; :&nbsp; Double&nbsp;PK</p>\r\n\r\n<p>Yarn count&nbsp; &nbsp;:&nbsp; 26/1</p>\r\n\r\n<p>Composition : Cvc ( 80% cotton + 20% polyester )&nbsp;</p>\r\n\r\n<p>GSM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 210-220</p>\r\n\r\n<p>Color type: Reactive Dye, Dye Finishing: Enzyme and Silicon Washed</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0, 1, NULL, 1, 0, 1, '2023-10-28 16:06:42', '2025-10-11 12:18:04'),
(304, 'Premium Polo-Shirt PS-4', 'PS-4', 'single', 10, 10, NULL, NULL, 0.00, 850.00, 0.00, 'premium-polo-shirt-ps-4-2023-10-28-04-13-10-5796.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with Double PK fabric which features premium 80% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p>Fabric type  :  Double PK</p>\r\n\r\n<p>Yarn count   :  26/1</p>\r\n\r\n<p>Composition : Cvc ( 80% cotton + 20% polyester ) </p>\r\n\r\n<p>GSM              : 210-220</p>\r\n\r\n<p>Color type: Reactive Dye, Dye Finishing: Enzyme and Silicon Washed</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 850.00, 0.00, 0.00, 12, 1, NULL, 1, 1, 1, '2023-10-28 16:13:10', '2026-02-03 17:38:22'),
(305, 'Premium Polo-Shirt PS-5', 'PS-5', 'single', 9, 10, NULL, NULL, 0.00, 850.00, 0.00, 'premium-polo-shirt-ps-5-2023-10-28-04-27-10-3945.jpg', NULL, NULL, NULL, NULL, NULL, '<p>This Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p><strong>Detailed Specification:</strong></p>\r\n\r\n<p>Organic Ringspun Combed Compact Cotton</p>\r\n\r\n<p>100% Cotton</p>\r\n\r\n<p>Regular fit, Shirt collar., 5.16 oz/yd2(~175GSM)</p>\r\n\r\n<p>Reactive Dye, enzyme, and silicon washed</p>\r\n\r\n<p>Preshrunk to minimize shrinkage</p>\r\n\r\n<p>Design panels all are fabric ; cut and sew</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 850.00, 0.00, 0.00, 12, 1, NULL, 1, 1, 1, '2023-10-28 16:27:10', '2026-02-03 17:37:53'),
(306, 'Premium Polo-Shirt PS-6', 'PS-6', 'single', 8, 10, NULL, NULL, 0.00, 950.00, 0.00, 'premium-polo-shirt-ps-6-2023-10-28-04-30-48-4486.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage.&nbsp;</p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p><strong>Yarn type:</strong>&nbsp;Ringspun Combed CompactYarn Construction: 100% Cotton, Organic</p>\r\n\r\n<p><strong>Yarn Count:</strong>&nbsp;26s</p>\r\n\r\n<p><strong>Color type:</strong>&nbsp;Reactive Dye, Dye Finishing: Enzyme and Silicon Washed,</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-10-28 16:30:48', '2024-01-09 12:24:44'),
(307, 'Premium Polo-Shirt PS-7', 'PS-7', 'single', 7, 10, NULL, NULL, 0.00, 850.00, 0.00, 'premium-polo-shirt-ps-7-2023-10-28-04-34-45-8085.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p><strong>Yarn type:</strong> Ringspun Combed CompactYarn Construction: 100% Cotton, Organic</p>\r\n\r\n<p><strong>Yarn Count:</strong> 26s</p>\r\n\r\n<p><strong>Color type:</strong> Reactive Dye, Dye Finishing: Enzyme and Silicon Washed,</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 850.00, 0.00, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 16:34:45', '2026-02-03 17:18:40'),
(308, 'Premium Polo-Shirt PS-8', 'PS-8', 'single', 6, 10, NULL, NULL, 0.00, 950.00, 0.00, 'premium-polo-shirt-ps-8-2023-10-28-04-37-40-9190.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p><strong>Yarn type:</strong> Ringspun Combed CompactYarn Construction: 100% Cotton, Organic</p>\r\n\r\n<p><strong>Yarn Count:</strong> 26s</p>\r\n\r\n<p><strong>Color type:</strong> Reactive Dye, Dye Finishing: Enzyme and Silicon Washed,</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 950.00, 0.00, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 16:37:40', '2026-02-03 17:18:22'),
(309, 'Premium Polo-Shirt PS-9', 'PS-9', 'single', 5, 10, NULL, NULL, 0.00, 1050.00, 0.00, 'premium-polo-shirt-ps-9-2023-10-28-04-41-01-4322.jpg', NULL, NULL, NULL, NULL, NULL, '<p>This Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p><strong>Detailed Specification:</strong></p>\r\n\r\n<p>Organic Ringspun Combed Compact Cotton</p>\r\n\r\n<p>100% Cotton</p>\r\n\r\n<p>Regular fit, Shirt collar., 5.16 oz/yd2(~175GSM)</p>\r\n\r\n<p>Reactive Dye, enzyme, and silicon washed</p>\r\n\r\n<p>Preshrunk to minimize shrinkage</p>\r\n\r\n<p>Design panels all are fabric ; cut and sew</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 1050.00, 0.00, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 16:41:01', '2026-02-03 17:18:05'),
(310, 'Premium Polo-Shirt PS-10', 'PS-10', 'single', 4, 10, NULL, NULL, 350.00, 850.00, 0.00, 'premium-polo-shirt-ps-10-2023-10-28-05-12-04-5691.jpeg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with single jersey fabric which features premium 100% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p><strong>Yarn type:</strong> Ringspun Combed CompactYarn Construction: 100% Cotton, Organic</p>\r\n\r\n<p><strong>Yarn Count:</strong> 26s</p>\r\n\r\n<p><strong>Color type:</strong> Reactive Dye, Dye Finishing: Enzyme and Silicon Washed,</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 850.00, NULL, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 17:12:05', '2026-02-03 17:17:49'),
(311, 'Premium Polo-Shirt PS-11', 'PS-11', 'single', 1, 10, NULL, NULL, 0.00, 1150.00, 0.00, 'premium-polo-shirt-ps-11-2023-10-28-05-14-50-8826.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with Double PK fabric which features premium 80% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p>Fabric type  :  Double PK</p>\r\n\r\n<p>Yarn count   :  26/1</p>\r\n\r\n<p>Composition : Cvc ( 80% cotton + 20% polyester ) </p>\r\n\r\n<p>GSM              : 210-220</p>\r\n\r\n<p>Color type: Reactive Dye, Dye Finishing: Enzyme and Silicon Washed</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 1150.00, 0.00, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 17:14:50', '2026-02-03 17:17:33');
INSERT INTO `products` (`id`, `name`, `sku`, `type`, `priority`, `category_id`, `sub_category_id`, `type_id`, `purchase_prices`, `sell_price`, `regular_price`, `image`, `thumb_image`, `com_image`, `video_link`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `stock_quantity`, `is_recommended`, `is_free_shipping`, `user_id`, `is_stock`, `status`, `created_at`, `updated_at`) VALUES
(312, 'Premium Polo-Shirt PS-12', 'PS-12', 'single', 2, 10, NULL, NULL, 0.00, 1300.00, 0.00, 'premium-polo-shirt-ps-12-2023-10-28-05-18-31-5546.jpg', NULL, NULL, NULL, NULL, NULL, '<p>The Polo t-shirt is made with Double PK fabric which features premium 80% combed compact organic cotton. The t-shirt has a soft touch which makes it very comfortable for day-long usage. </p>\r\n\r\n<p>Regular fit, Shirt collar.</p>\r\n\r\n<p>Fabric type  :  Double PK</p>\r\n\r\n<p>Yarn count   :  26/1</p>\r\n\r\n<p>Composition : Cvc ( 80% cotton + 20% polyester ) </p>\r\n\r\n<p>GSM              : 210-220<br />\r\n<br />\r\nDesign Panel  : Cut & Stich </p>\r\n\r\n<p>Color type: Reactive Dye, Dye Finishing: Enzyme and Silicon Washed</p>\r\n\r\n<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"5\">\r\n	<thead>\r\n		<tr>\r\n			<th>Size</th>\r\n			<th>Chest (Round)</th>\r\n			<th>Length</th>\r\n			<th>Sleeve</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M</td>\r\n			<td>39</td>\r\n			<td>27.5</td>\r\n			<td>8.25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L</td>\r\n			<td>40.5</td>\r\n			<td>28.5</td>\r\n			<td>8.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>XL</td>\r\n			<td>43</td>\r\n			<td>29</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2XL</td>\r\n			<td>45</td>\r\n			<td>30</td>\r\n			<td>9.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, 1300.00, NULL, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-10-28 17:18:31', '2026-02-03 17:17:14'),
(324, 'Another Testing Pro', 'sdgdasg', 'variable', NULL, 9, NULL, NULL, 0.00, 1200.00, 0.00, 'another-testing-pro-2023-12-03-03-03-01-1052.jpg', NULL, NULL, 'sgag', NULL, NULL, '<p>sfsdfgdsg</p>', NULL, NULL, 'percentage', 960.00, 20.00, 0.00, 1, NULL, NULL, 1, 1, 1, '2023-12-03 15:03:01', '2026-02-03 17:09:49'),
(331, 'Earphone', NULL, 'single', NULL, 3, 32, 11, 0.00, 520.00, 0.00, 'earphone-2023-12-17-05-13-04-2431.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 500.00, 20.00, 0.00, 50, NULL, NULL, 1, 1, 1, '2023-12-17 17:13:04', '2023-12-17 17:13:04'),
(332, 'Onion oil', 'Oil', 'variable', NULL, 40, NULL, NULL, 0.00, 290.00, 0.00, 'onion-oil-2023-12-18-05-39-27-7799.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 290.00, 0.00, 0.00, 10, 1, NULL, 1, 1, 1, '2023-12-18 17:39:27', '2026-02-03 17:16:56'),
(333, 'তিলের তেল', 'Oil', 'variable', NULL, 9, NULL, NULL, 0.00, 180.00, 0.00, 'tiler-tel-2023-12-18-05-41-01-4027.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180.00, 0.00, 0.00, 10, NULL, NULL, 1, 1, 1, '2023-12-18 17:41:01', '2026-02-03 17:15:38'),
(334, 'তিসির তেল', 'Oil', 'variable', NULL, 9, NULL, NULL, 0.00, 180.00, 0.00, 'tisir-tel-2023-12-18-05-42-29-4745.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180.00, 0.00, 0.00, 20, NULL, NULL, 1, 1, 1, '2023-12-18 17:42:29', '2026-02-03 17:15:08'),
(335, 'Olive oil', 'Oil', 'variable', NULL, 38, NULL, NULL, 0.00, 230.00, 0.00, 'olive-oil-2023-12-18-05-43-39-2478.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2023-12-18 17:43:39', '2023-12-18 17:43:39'),
(336, 'Caster oil', 'Oil', 'variable', 2, 9, NULL, NULL, 0.00, 150.00, 0.00, 'caster-oil-2023-12-18-05-44-48-7441.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150.00, 0.00, 0.00, 10, NULL, NULL, 1, 1, 1, '2023-12-18 17:44:48', '2026-02-03 17:13:46'),
(337, 'Pumpkin oil', 'Oil', 'variable', NULL, 40, NULL, NULL, 0.00, 320.00, 0.00, 'pumpkin-oil-2023-12-18-05-45-49-5661.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 320.00, 0.00, 0.00, 10, 1, NULL, 1, 1, 1, '2023-12-18 17:45:49', '2026-02-03 17:13:20'),
(338, 'Almond oil', 'Oil', 'variable', NULL, 40, NULL, NULL, 0.00, 300.00, 0.00, 'almond-oil-2023-12-18-05-47-01-2094.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300.00, 0.00, 0.00, 10, 1, NULL, 1, 1, 1, '2023-12-18 17:47:01', '2026-02-03 17:12:38'),
(339, 'Black seed oil( কালোজিরা তেল)', 'Oil', 'single', NULL, 40, NULL, NULL, 120.00, 220.00, 0.00, 'black-seed-oil-kalojira-tel-2023-12-18-05-49-48-4042.jpg', NULL, NULL, NULL, NULL, NULL, '<p>gggg</p>', NULL, NULL, NULL, NULL, NULL, 0.00, 10, 1, NULL, 1, 1, 1, '2023-12-18 17:49:48', '2026-02-03 17:12:16'),
(340, 'Vitamin e oil', 'Oil', 'variable', NULL, 41, NULL, NULL, 0.00, 350.00, 0.00, 'vitamin-e-oil-2023-12-18-05-50-47-4462.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350.00, 0.00, 0.00, 10, NULL, NULL, 1, 1, 1, '2023-12-18 17:50:47', '2026-02-03 17:11:46'),
(341, 'Jojoba essential oil', 'Oil', 'variable', 800, 41, NULL, NULL, 0.00, 320.00, 0.00, 'jojoba-essential-oil-2023-12-18-05-51-57-5664.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 320.00, 0.00, 0.00, 9, NULL, NULL, 1, 1, 1, '2023-12-18 17:51:58', '2026-02-19 13:36:28'),
(342, 'Argan oil', 'Oil', 'variable', 1, 41, NULL, NULL, 0.00, 400.00, 0.00, 'argan-oil-2023-12-18-05-53-23-4487.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400.00, 0.00, 0.00, 12, NULL, NULL, 1, 1, 1, '2023-12-18 17:53:23', '2026-02-03 17:10:24'),
(343, 'Lavender Essential Oil', 'Oil', 'variable', 3, 41, NULL, NULL, 0.00, 320.00, 0.00, 'lavender-essential-oil-2023-12-18-05-54-41-6900.jpg', NULL, NULL, NULL, NULL, NULL, '<p><strong>Benefits</strong></p>\r\n\r\n<p>1.      Calming Effects: Lavender oil is known for its ability to reduce anxiety, stress, and promote a sense of calm.</p>\r\n\r\n<p>2.      Natural Sleep Aid: Its relaxing properties can help improve sleep quality.</p>\r\n\r\n<p>3.      Skin Care: Lavender oil can soothe minor skin irritations, promote skin healing, and provide anti-aging benefits.</p>\r\n\r\n<p>4.      Muscle Relaxation: Works great in massages to alleviate muscle tension and pain.</p>\r\n\r\n<p>5.      Boosts Mood: The floral aroma uplifts spirits and combats feelings of sadness or depression.</p>\r\n\r\n<p>6.      Natural Antiseptic: Can be used to cleanse cuts, bruises, and skin irritations.</p>\r\n\r\n<p>7.      Headache Relief: Helps in reducing the severity of headaches when inhaled or applied topically.</p>', NULL, NULL, 'fixed', 120.00, 200.00, 200.00, 10, NULL, NULL, 1, 1, 1, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(344, 'Rosemary Essential Oil', 'Oil', 'variable', 10, 41, NULL, NULL, 250.00, 300.00, 0.00, 'rosemary-essential-oil-2023-12-18-05-56-15-3627.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300.00, NULL, 0.00, 10, NULL, NULL, 1, 1, 1, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(350, 'Ladies Kurties -3/4 Sleeve', 'WK-1', 'single', NULL, 10, NULL, NULL, 0.00, 2480.00, 0.00, 'ladies-kurties-34-sleeve-2024-01-29-03-43-04-8148.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Product Type: Women Kurtis - Color: Dark Green - Sleeve: 3/4 Sleeve - Best Production quality. Wash Instruction: - Machine wash cold. Gentle Cycle. Use only non-chlorine. Tumble dry low. Warm iron as needed. Made in Bangladesh Material &amp; Care 100% Cotton/Print</p>', NULL, NULL, NULL, NULL, NULL, 280.00, 1, NULL, NULL, 1, 0, 1, '2024-01-29 15:43:04', '2024-01-29 15:55:41'),
(353, 'test 2 for flat sale', 'sgddsg', 'single', NULL, 4, NULL, 2, 0.00, 1500.00, 0.00, 'test-2-for-flat-sale-2024-01-29-04-53-39-9873.jpg', NULL, NULL, 'sdgdsg', NULL, NULL, '<p>ssssssss</p>', NULL, NULL, 'fixed', 1490.00, 10.00, 0.00, 10, 1, NULL, 1, 1, 1, '2024-01-29 16:53:39', '2024-01-29 16:53:39'),
(354, 'Loafer ML-1', 'ML-2', 'single', NULL, 10, NULL, NULL, 0.00, 2780.00, 0.00, 'loafer-ml-1-2024-01-29-05-39-13-1153.jpg', NULL, NULL, NULL, NULL, NULL, '<p>mmmmmmmmmmmmmmmkmkm</p>', NULL, NULL, NULL, NULL, NULL, 0.00, 1, NULL, NULL, 1, 0, 1, '2024-01-29 17:39:13', '2024-01-29 17:40:24'),
(361, 'Olevs 2049 watch', NULL, 'single', NULL, 3, 32, 10, 0.00, 1450.00, 0.00, 'olevs-2049-watch-2024-03-05-11-34-33-8708.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fixed', 1250.00, 0.00, 0.00, 1, NULL, NULL, 1, 0, 1, '2024-03-05 23:34:33', '2024-03-05 23:34:33'),
(364, 'দানাদার ঘি', 'দানাদার ঘি', 'single', 4, 40, NULL, 11, 0.00, 850.00, 0.00, 'danadar-ghi-2024-03-29-04-09-36-3174.png', NULL, NULL, NULL, NULL, NULL, '<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Weight: 0.5 KG</th>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>গাওয়া ঘি এর উপকারিতাঃ</h3>\r\n\r\n<p><strong>&nbsp;হাড়ের জন্য:&nbsp;</strong>ঘিয়ের ভিটামিন &lsquo;কে&rsquo; ক্যালসিয়ামের সঙ্গে মিলে হাড়ের স্বাস্থ্য ও গঠন বজায় রাখে। স্বাস্থ্যকর ইনসুলিন ও শর্করার মাত্রা বজায় রাখতে কাজে লাগে ভিটামিন &lsquo;কে।&rdquo; বলেন চ্যাডউইক। ঘিতে যেসব ভিটামিন রয়েছে -এ, ডি, ই এবং কে, যা আমাদের হৃৎপিন্ড,হাড়ের জন্য খুব উপকারী। এই ঘিয়ের মধ্যে রয়েছে প্রাকৃতিক লুব্রিকেন্ট যা গিঁটে ব্যথা ও আর্থ্রাইটিসের সমস্যা সমাধানে কাজ করে। তাছাড়া এর মধ্যে রয়েছে ওমেগা-৩ ফ্যাটি এসিড। এটি অস্টিওপরোসিস প্রতিরোধে কাজ করে এবং হাড়কে ভালো রাখে।</p>\r\n\r\n<p><strong>&nbsp;চুল পড়া প্রতিরোধ করে:&nbsp;</strong>খালি পেটে ঘি খেলে চুলের স্বাস্থ্য ভালো থাকে। এটি চুল পড়া প্রতিরোধে সাহায্য করে। ঘি চুল নরম, উজ্জ্বল করতে উপকারী।</p>\r\n\r\n<p><strong>&nbsp;উপকারি কোলস্টেরল:&nbsp;</strong>কোলস্টেরল দু ধরনের- উপকারি ও ক্ষতিকর।ঘিতে রয়েছে উপকারি কোলস্টেরল। ঘিতে রয়েছে কনজুগেটেড লিনোলেক অ্যাসিড। এই অ্যান্টিঅক্সিড্যান্টের অ্যান্টি-ভাইরাল গুণ রয়েছে।যা ক্ষত সারাতে সাহায্য করে।ডেলিভারির পর নতুন মায়েদের ঘি খাওয়ানো হয় এই কারণেই।</p>\r\n\r\n<p><strong>&nbsp;স্মৃতিশক্তি বাড়ায় :&nbsp;</strong>নিউট্রিশনিস্টদের মতে নার্ভের কর্মক্ষমতা বৃদ্ধির পাশাপাশি সার্বিকবাবে ব্রেন পাওয়ারের উন্নতিতে ঘি-এর কোনও বিকল্প হয় না বললেই চলে। আসলে এত উপস্থিত ওমাগা- ৬ এবং ৩ ফ্যাটি অ্যাসিড শরীর এবং মস্তিষ্ককে চাঙ্গা রাখতে বিশেষ ভূমিকা পালন করে থাকে। প্রসঙ্গত, সম্প্রতি প্রাকাশিত বেশ কিছু গবেষমায় দেখা গেছে এই দুই ধরনের ফ্যাটি অ্যাসিড ডিমেনশিয়া এবং অ্যালঝাইমারসের মতো রোগের প্রকোপ কমাতে বিশেষ ভূমিকা পালন করে থাকে।</p>\r\n\r\n<p><strong>&nbsp;কনজুগেটেড লিনোলেক অ্যাসিড:&nbsp;</strong>এই অ্যান্টিঅক্সিড্যান্টের অ্যান্টি-ভাইরাল গুণ রয়েছে। যা ক্ষত সারাতে সাহায্য করে। ডেলিভারির পর নতুন মায়েদের ঘি খাওয়ানো হয় এই কারণেই।</p>\r\n\r\n<p><strong>&nbsp;ওজন কমায় ও এনার্জি বাড়ায়:&nbsp;</strong>ঘিয়ের মধ্যে থাকা মিডিয়াম চেন ফ্যাটি অ্যাসিড খুব দ্রুত এনার্জি বাড়াতে সহায়তা করে থাকে।অধিকাংশ অ্যাথলিট দৌড়নোর আগে ঘি খান। এর ফলে ওজনও কমে।</p>\r\n\r\n<p><strong>&nbsp;হজম ক্ষমতা বাড়ায়:&nbsp;</strong>ঘিতে রয়েছে প্রচু বাটাইরিক অ্যাসিড, যা আমাদের খাবার তাড়াতাড়ি হজম করতে সাহায্য করে।যারা কোষ্ঠকাঠিন্যে ভোগেন, তাদের জন্য ঘি খুবই উপকারী।</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, 1, NULL, 1, 0, 1, '2024-03-29 16:09:36', '2025-10-13 09:46:25'),
(365, 'মধু কালোজিরা ১ কেজি', 'মধু কালোজিরা ১ কেজি', 'single', 3, 40, NULL, 11, 0.00, 1650.00, 0.00, 'mdhu-kalojira-1-keji-2024-03-29-04-12-41-1351.jpg', NULL, NULL, NULL, NULL, NULL, '<p>WEIGHT: 1 KG</p>\r\n\r\n<p>মধু খাওয়ার উপকারিতাঃ</p>\r\n\r\n<p>পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে &lsquo;মধু&rsquo;র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</p>\r\n\r\n<p><strong>&nbsp;শক্তি প্রদায়ী :&nbsp;</strong>মধু ভালো শক্তি প্রদায়ী খাদ্য। তাপ ও শক্তির ভালো উৎস। মধু দেহে তাপ ও শক্তি জুগিয়ে শরীরকে সুস্থ রাখে।</p>\r\n\r\n<p><strong>&nbsp;হজমে সহায়তা:&nbsp;</strong>এতে যে শর্করা থাকে, তা সহজেই হজম হয়। কারণ, এতে যে ডেক্সট্রিন থাকে, তা সরাসরি রক্তে প্রবেশ করে এবং তাৎক্ষণিকভাবে ক্রিয়া করে। পেটরোগা মানুষের জন্য মধু বিশেষ উপকারী।</p>\r\n\r\n<p><strong>&nbsp;কোষ্ঠকাঠিন্য দূর করে:&nbsp;</strong>মধুতে রয়েছে ভিটামিন বি-কমপ্লেক্স। এটি ডায়রিয়া ও কোষ্ঠকাঠিন্য দূর করে। ১ চা&ndash;চামচ খাঁটি মধু ভোরবেলা পান করলে কোষ্ঠবদ্ধতা এবং অম্লত্ব দূর হয়।</p>\r\n\r\n<p><strong>&nbsp;রক্তশূন্যতায়:&nbsp;</strong>মধু রক্তের হিমোগ্লোবিন গঠনে সহায়তা করে বলে এটি রক্তশূন্যতায় বেশ ফলদায়ক। কারণ, এতে থাকে খুব বেশি পরিমাণে কপার, লৌহ ও ম্যাঙ্গানিজ।</p>\r\n\r\n<p><strong>&nbsp;ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে:&nbsp;</strong>বলা হয়, ফুসফুসের যাবতীয় রোগে মধু উপকারী। যদি একজন অ্যাজমা (শ্বাসকষ্ট) রোগীর নাকের কাছে মধু ধরে শ্বাস টেনে নেওয়া হয়, তাহলে সে স্বাভাবিক এবং গভীরভাবে শ্বাস টেনে নিতে পারবে। অনেকে মনে করে, এক বছরের পুরোনো মধু শ্বাসকষ্টের রোগীদের জন্য বেশ ভালো।</p>\r\n\r\n<p><strong>&nbsp;অনিদ্রায়:&nbsp;</strong>মধু অনিদ্রার ভালো ওষুধ। রাতে শোয়ার আগে এক গ্লাস পানির সঙ্গে দুই চা&ndash;চামচ মধু মিশিয়ে খেলে এটি গভীর ঘুম ও সম্মোহনের কাজ করে।</p>\r\n\r\n<p><strong>&nbsp;প্রশান্তিদায়ক পানীয়:&nbsp;</strong>হালকা গরম দুধের সঙ্গে মিশ্রিত মধু একটি প্রশান্তিদায়ক পানীয়।</p>\r\n\r\n<p><strong>&nbsp;মুখগহ্বরের স্বাস্থ্য রক্ষায়:&nbsp;</strong>মুখগহ্বরের স্বাস্থ্য রক্ষায় মধু ব্যবহৃত হয়। এটা দাঁতের ওপর ব্যবহার করলে দাঁতের ক্ষয়রোধ করে। দাঁতে পাথর জমাট বাঁধা রোধ করে এবং দাঁত পড়ে যাওয়াকে বিলম্বিত করে। মধু রক্তনালিকে সম্প্রসারিত করে দাঁতের মাড়ির স্বাস্থ্য রক্ষা করে। যদি মুখের ঘায়ের জন্য গর্ত হয়, এটি সেই গর্ত ভরাট করতে সাহায্য করে এবং সেখানে পুঁজ জমতে দেয় না। মধু মিশ্রিত পানি দিয়ে গড়গড়া করলে মাড়ির প্রদাহ দূর হয়।</p>\r\n\r\n<p>&nbsp;<strong>পাকস্থলীর সুস্থতায়:&nbsp;</strong>মধু পাকস্থলীর কাজকে জোরালো করে এবং হজমের গোলমাল দূর করে। এর ব্যবহার হাইড্রোক্রলিক অ্যাসিড ক্ষরণ কমিয়ে দেয় বলে অরুচি, বমিভাব, বুকজ্বালা এগুলো দূর করা সম্ভব হয়।</p>\r\n\r\n<p><strong>&nbsp;তাপ উৎপাদনে:&nbsp;</strong>শীতের ঠান্ডায় এটি শরীরকে গরম রাখে। এক অথবা দুই চা&ndash;চামচ মধু এক কাপ ফুটানো পানির সঙ্গে খেলে শরীর ঝরঝরে ও তাজা থাকে।</p>\r\n\r\n<p><strong>&nbsp;পানিশূন্যতায়:&nbsp;</strong>ডায়রিয়া হলে এক লিটার পানিতে ৫০ মিলিলিটার মধু মিশিয়ে খেলে দেহে পানিশূন্যতা রোধ করা যায়।</p>\r\n\r\n<p><strong>&nbsp;দৃষ্টিশক্তি বাড়াতে:</strong>&nbsp;চোখের জন্য ভালো। গাজরের রসের সঙ্গে মধু মিশিয়ে খেলে দৃষ্টিশক্তি বাড়ে।</p>\r\n\r\n<p><strong>&nbsp;রূপচর্চায়:&nbsp;</strong>মেয়েদের রূপচর্চার ক্ষেত্রে মাস্ক হিসেবে মধুর ব্যবহার বেশ জনপ্রিয়। মুখের ত্বকের মসৃণতা বৃদ্ধির জন্যও মধু ব্যবহৃত হয়।</p>\r\n\r\n<p><strong>&nbsp;ওজন কমাতে:&nbsp;</strong>মধুতে নেই কোনো চর্বি। পেট পরিষ্কার করে, চর্বি কমায়, ফলে ওজন কমে।</p>', NULL, NULL, NULL, 0.00, 0.00, 0.00, 1, 1, NULL, 1, 0, 1, '2024-03-29 16:12:41', '2025-10-13 09:46:19'),
(366, 'আখরোট ১ কেজি', 'আখরোট ১ কেজি', 'single', 1, 40, NULL, NULL, 0.00, 1250.00, 0.00, 'akhrot-1-keji-2024-03-29-04-13-42-5073.jpg', NULL, NULL, NULL, NULL, NULL, '<h3>আখরোট এর উপকারিতাঃ</h3>\r\n\r\n<p><strong> হার্ট ভালো রাখে:</strong> হার্ট সুস্থ রাখতে আখরোট বিশেষ ভূমিকা পালন করে । এতে রয়েছে ওমেগা থ্রি ফ্যাটি অ্যাসিড যা শরীরে খারাপ কোলেস্টোরলের মাত্রা কমিয়ে ভালো কোলেস্টোরলের মাত্রা বৃদ্ধি করে । ফলে হার্টের রোগের সম্ভাবনা কমে যায় আর হার্ট সুস্থ এবং ভালো থাকে।</p>\r\n\r\n<p><strong> ডায়াবিটিসের ঝুঁকি কমায়: </strong>যারা ডায়াবিটিসের সমস্যায় ভোগেন তাদের জন্য চিকিৎসকরা আখরোট খাওয়ার পরামর্শ দিয়ে থাকেন । একটি গবেষণা মতে , যে নারীরা সপ্তাহে ২দিন ২৮ গ্রাম আখরোট খেয়েছে তাদের টাইপ- ২ ডায়াবেটিস হওয়ার ঝুঁকি ২৪ শতাংশ কমে গিয়েছে । যদিও গবেষণাটি শুধু নারীদের ওপর করা হয়েছিল কিন্তু বিশেষজ্ঞদের মতে ছেলেদের ক্ষেত্রেও কোনো হেরফের ঘটবে না।</p>\r\n\r\n<p><strong> ওজন নিয়ন্ত্রণ করে: </strong>আখরোটে প্রোটিন , ফাইবার ও ওমেগা থ্রি ফ্যাটি অ্যাসিড এর পরিমান যথাযথ ভাবে রয়েছে । এই ওমেগা থ্রি ফ্যাটি অ্যাসিডকে ‘গুড ফ্যাট ‘ বলা হয় , যা ওজন কমাতে সাহায্য করে । তাই ওজন নিয়ন্ত্রণ রাখতে খাদ্য তালিকায় অবশ্যই আখরোট রাখবে ।</p>\r\n\r\n<p><strong> অনিদ্রা দূর করে: </strong>আখরোটে মেলাটোনিন নামক এক প্রকার যৌগ থাকে । এই মেলাটোনিন ঘুমের পক্ষে বিশেষ সহায়ক । কারণ শরীরে মেলাটোনিন এর মাত্রা বৃদ্ধি পেলে ঘুম ভালো হয়। যারা অনিদ্রা রোগে ভুগছেন তারা নিয়মিত আখরোট খেলে এর হাত থেকে রক্ষা পাবে।</p>\r\n\r\n<p><strong> স্বাস্থ্যোজ্জ্বল চুল পেতে: </strong>আখরোটে থাকে বায়োটিন ( ভিটামিন বি সেভেন ) যা চুলকে শক্তিশালী করে । এই ভিটামিন চুল পড়া কমিয়ে চুলের গোড়া মজবুত করে চুলের বৃদ্ধিতে সাহায্য করে।</p>\r\n\r\n<p><strong> ত্বকের উজ্জ্বলতা বৃদ্ধি করে: </strong>ত্বক উজ্বল ও টানটান রাখতে নিয়মিত আখরোট খান কারণ আখরোটে থাকে ভিটামিন ডি এবং প্রচুর পরিমানে আন্টিঅক্সিডেন্ট যা ত্বককে free radical এর হাত থেকে রক্ষা করে এবং বলিরেখা ও বয়সের ছাপ পড়তে দেয় না ।</p>', NULL, NULL, NULL, 1250.00, 200.00, 0.00, 7, 1, NULL, 1, 1, 1, '2024-03-29 16:13:43', '2026-02-09 11:12:13'),
(367, 'কাজু বাদাম কাচা জাম্বো ০.৫ কেজি', 'কাজু বাদাম কাচা জাম্বো ০.৫ কেজি', 'single', 2, 40, NULL, 8, 0.00, 859.00, 0.00, 'kaju-badam-kaca-jambo-05-keji-2024-03-29-04-14-53-9112.png', NULL, NULL, NULL, NULL, NULL, '<h3><strong>কাজু ভাজা বাদাম এর উপকারিতাঃ</strong></h3>\r\n\r\n<p> শরীরের জন্য উপকারী কোলেস্টেরল পাওয়া যায় বাদাম থেকে।</p>\r\n\r\n<p> বাদামে রয়েছে সি-রিঅ্যাক্টিভ প্রোটিন ও ইন্টারলিউকিন যা শরীরের রোগ প্রতিরোধ ক্ষমতা বাড়িয়ে তোলে।</p>\r\n\r\n<p> ফাইবার সমৃদ্ধ বাদাম দূর করে হজমের গণ্ডগোল।</p>\r\n\r\n<p> বাদাম খেলে হৃদপিণ্ড সক্রিয় থাকে। নিয়মিত বাদাম খেলে রক্তচাপ থাকে নিয়ন্ত্রণে। এমনকি রক্তে শর্করার পরিমাণ নিয়ন্ত্রণে রাখতে সাহায্য করে বাদাম।</p>\r\n\r\n<p> নিয়মিত বাদাম খেলে হাড় শক্ত থাকে।</p>\r\n\r\n<p> বাদামে থাকা প্রাকৃতিক তেল ত্বককে সতেজ রাখতে সাহায্য করে।</p>\r\n\r\n<p> বাদাম খেলে দাঁতের ক্ষয় প্রতিরোধ হয়।</p>\r\n\r\n<p> স্মৃতিশক্তি বাড়াতে বাদামের উপকারিতা প্রচুর।</p>', NULL, NULL, NULL, 859.00, NULL, 0.00, 95, 1, 1, 1, 1, 0, '2024-03-29 16:14:53', '2026-02-19 12:40:02'),
(370, 'Fleck Splash Round Kitchen Mat', 'JKSDH67R', 'variable', NULL, 44, NULL, NULL, 2000.00, 2800.00, 0.00, 'fleck-splash-round-kitchen-mat-2026-02-19-12-54-52-7688.jpg', NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size: 14.4px;\">Silk: Banarasi (UP) with metallic threadwork, Kanjeevaram (Tamil Nadu) with bold colors, and Rajshahi Silk (Bangladesh).</span></p><p><span style=\"font-size: 14.4px;\">Cotton &amp; Handloom: Jamdani (Bengal) known for fine motifs, Taant (West Bengal) light cotton, and Sambalpuri (Odisha) using Ikat techniques.</span></p>', NULL, NULL, NULL, NULL, 0.00, 0.00, 94, NULL, NULL, 1, 1, 1, '2026-02-19 12:54:52', '2026-02-19 14:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(7, 7, 'v21671297487.jpg', '2022-12-17 23:18:07', '2022-12-17 23:18:07'),
(265, 40, '31671347993.jpg', '2023-09-24 18:33:45', '2023-09-24 18:33:45'),
(266, 40, '3331671347993.jpg', '2023-09-24 18:33:45', '2023-09-24 18:33:45'),
(267, 40, '33331671347993.jpg', '2023-09-24 18:33:45', '2023-09-24 18:33:45'),
(268, 40, '333331671347993.jpg', '2023-09-24 18:33:45', '2023-09-24 18:33:45'),
(275, 79, 'a2.jpg', '2023-09-24 18:47:51', '2023-09-24 18:47:51'),
(276, 81, 'b2.jpg', '2023-09-24 18:50:39', '2023-09-24 18:50:39'),
(277, 81, 'b3.jpg', '2023-09-24 18:50:39', '2023-09-24 18:50:39'),
(278, 81, 'b4.jpg', '2023-09-24 18:50:39', '2023-09-24 18:50:39'),
(279, 81, 'b5.jpg', '2023-09-24 18:50:39', '2023-09-24 18:50:39'),
(280, 84, 'c2.jpg', '2023-09-24 18:52:19', '2023-09-24 18:52:19'),
(281, 84, 'c3.jpg', '2023-09-24 18:52:19', '2023-09-24 18:52:19'),
(282, 90, 'd2.webp', '2023-09-24 18:53:44', '2023-09-24 18:53:44'),
(283, 91, 'e2.jpg', '2023-09-24 18:55:43', '2023-09-24 18:55:43'),
(284, 91, 'e3.jpg', '2023-09-24 18:55:43', '2023-09-24 18:55:43'),
(285, 91, 'e4.jpg', '2023-09-24 18:55:43', '2023-09-24 18:55:43'),
(286, 91, 'e5.jpg', '2023-09-24 18:55:43', '2023-09-24 18:55:43'),
(289, 93, 'g2.jpg', '2023-09-24 19:03:40', '2023-09-24 19:03:40'),
(290, 93, 'g3.jpg', '2023-09-24 19:03:40', '2023-09-24 19:03:40'),
(291, 94, 'h2.jpg', '2023-09-24 19:06:29', '2023-09-24 19:06:29'),
(292, 94, 'h3.webp', '2023-09-24 19:06:29', '2023-09-24 19:06:29'),
(293, 94, 'h4.jpg', '2023-09-24 19:06:29', '2023-09-24 19:06:29'),
(294, 94, 'h5.webp', '2023-09-24 19:06:29', '2023-09-24 19:06:29'),
(295, 96, 'i2.jpg', '2023-09-24 19:08:33', '2023-09-24 19:08:33'),
(296, 96, 'i3.jpg', '2023-09-24 19:08:33', '2023-09-24 19:08:33'),
(297, 96, 'i4.jpg', '2023-09-24 19:08:33', '2023-09-24 19:08:33'),
(298, 96, 'i5.jpg', '2023-09-24 19:08:33', '2023-09-24 19:08:33'),
(299, 97, 'j2.jpg', '2023-09-24 19:10:13', '2023-09-24 19:10:13'),
(300, 97, 'j3.jpg', '2023-09-24 19:10:13', '2023-09-24 19:10:13'),
(301, 97, 'j4.jpg', '2023-09-24 19:10:13', '2023-09-24 19:10:13'),
(302, 98, 'k2.jpg', '2023-09-24 19:11:37', '2023-09-24 19:11:37'),
(303, 98, 'k3.jpg', '2023-09-24 19:11:37', '2023-09-24 19:11:37'),
(304, 99, 'l2.jpg', '2023-09-24 19:14:02', '2023-09-24 19:14:02'),
(305, 99, 'l3.jpg', '2023-09-24 19:14:02', '2023-09-24 19:14:02'),
(306, 103, 'm2.jpg', '2023-09-24 19:16:26', '2023-09-24 19:16:26'),
(307, 103, 'm3.jpg', '2023-09-24 19:16:26', '2023-09-24 19:16:26'),
(308, 103, 'm4.jpg', '2023-09-24 19:16:26', '2023-09-24 19:16:26'),
(309, 111, 'n2.jpg', '2023-09-24 19:18:16', '2023-09-24 19:18:16'),
(310, 111, 'n3.jpg', '2023-09-24 19:18:16', '2023-09-24 19:18:16'),
(311, 111, 'n4.webp', '2023-09-24 19:18:16', '2023-09-24 19:18:16'),
(312, 112, 'o2.jpg', '2023-09-24 19:20:06', '2023-09-24 19:20:06'),
(313, 112, 'o4.jpg', '2023-09-24 19:20:06', '2023-09-24 19:20:06'),
(314, 3, 't2.jpg', '2023-09-24 19:25:37', '2023-09-24 19:25:37'),
(315, 4, 'u2.jpg', '2023-09-24 19:27:13', '2023-09-24 19:27:13'),
(316, 4, 'u3.jpg', '2023-09-24 19:27:13', '2023-09-24 19:27:13'),
(317, 5, 'v2.jpg', '2023-09-24 19:28:25', '2023-09-24 19:28:25'),
(318, 5, 'v3.jpg', '2023-09-24 19:28:25', '2023-09-24 19:28:25'),
(319, 109, 'x1.webp', '2023-09-24 19:46:07', '2023-09-24 19:46:07'),
(320, 109, 'x2.webp', '2023-09-24 19:46:07', '2023-09-24 19:46:07'),
(321, 109, 'x4.webp', '2023-09-24 19:46:07', '2023-09-24 19:46:07'),
(322, 110, 'y2.jpg', '2023-09-24 19:47:55', '2023-09-24 19:47:55'),
(323, 110, 'y3.jpg', '2023-09-24 19:47:55', '2023-09-24 19:47:55'),
(324, 110, 'y4.jpg', '2023-09-24 19:47:55', '2023-09-24 19:47:55'),
(325, 113, 'z2.jpg', '2023-09-24 19:50:15', '2023-09-24 19:50:15'),
(326, 113, 'z3.jpg', '2023-09-24 19:50:15', '2023-09-24 19:50:15'),
(327, 113, 'z4.jpg', '2023-09-24 19:50:15', '2023-09-24 19:50:15'),
(328, 118, 'zz2.jpeg', '2023-09-24 19:52:45', '2023-09-24 19:52:45'),
(329, 118, 'zz3.webp', '2023-09-24 19:52:45', '2023-09-24 19:52:45'),
(330, 118, 'zz4.jpg', '2023-09-24 19:52:45', '2023-09-24 19:52:45'),
(371, 177, '1.jpg', '2023-09-25 04:38:33', '2023-09-25 04:38:33'),
(372, 177, '2.jpg', '2023-09-25 04:38:33', '2023-09-25 04:38:33'),
(373, 177, '3.jpg', '2023-09-25 04:38:33', '2023-09-25 04:38:33'),
(374, 177, '4.jpg', '2023-09-25 04:38:33', '2023-09-25 04:38:33'),
(375, 177, '5.jpg', '2023-09-25 04:38:33', '2023-09-25 04:38:33'),
(457, 106, 'a2.png', '2023-09-26 14:51:28', '2023-09-26 14:51:28'),
(458, 106, 'a3.png', '2023-09-26 14:51:28', '2023-09-26 14:51:28'),
(459, 105, 'b2.jpg', '2023-09-26 14:54:01', '2023-09-26 14:54:01'),
(460, 104, 'c2.jpg', '2023-09-26 14:59:28', '2023-09-26 14:59:28'),
(461, 104, 'c3.jpg', '2023-09-26 14:59:28', '2023-09-26 14:59:28'),
(462, 104, 'c4.jpg', '2023-09-26 14:59:28', '2023-09-26 14:59:28'),
(463, 101, 'd2.jpg', '2023-09-26 15:21:42', '2023-09-26 15:21:42'),
(464, 101, 'd3.jpg', '2023-09-26 15:21:42', '2023-09-26 15:21:42'),
(465, 101, 'd4.jpeg', '2023-09-26 15:21:42', '2023-09-26 15:21:42'),
(466, 95, 'e2.jpg', '2023-09-26 15:25:42', '2023-09-26 15:25:42'),
(467, 95, 'e3.webp', '2023-09-26 15:25:42', '2023-09-26 15:25:42'),
(468, 95, 'e4.jpg', '2023-09-26 15:25:42', '2023-09-26 15:25:42'),
(469, 89, 'f2.webp', '2023-09-26 15:28:01', '2023-09-26 15:28:01'),
(470, 89, 'f3.jpg', '2023-09-26 15:28:01', '2023-09-26 15:28:01'),
(471, 89, 'f4.jpg', '2023-09-26 15:28:01', '2023-09-26 15:28:01'),
(472, 89, 'f5.webp', '2023-09-26 15:28:01', '2023-09-26 15:28:01'),
(473, 92, 'g2.jpg', '2023-09-26 15:34:42', '2023-09-26 15:34:42'),
(474, 92, 'g3.png', '2023-09-26 15:34:42', '2023-09-26 15:34:42'),
(475, 92, '1O.jpg', '2023-09-27 23:36:13', '2023-09-27 23:36:13'),
(476, 92, '2E1694944984.jpg', '2023-09-27 23:36:13', '2023-09-27 23:36:13'),
(477, 92, '2H1694945206.jpg', '2023-09-27 23:36:13', '2023-09-27 23:36:13'),
(478, 207, 'Raw_Mango_898.jpg', '2023-09-28 01:29:00', '2023-09-28 01:29:00'),
(618, 281, 'multi-color-cotton-stripes-polo-shirt-ps-6-2023-10-21-02-09-31-5341.jpg', '2023-10-21 14:09:32', '2023-10-21 14:09:32'),
(619, 281, 'multi-color-cotton-stripes-polo-shirt-ps-6-2023-10-21-02-09-31-2795.jpg', '2023-10-21 14:09:32', '2023-10-21 14:09:32'),
(620, 281, 'multi-color-cotton-stripes-polo-shirt-ps-6-2023-10-21-02-09-32-2133.jpg', '2023-10-21 14:09:32', '2023-10-21 14:09:32'),
(621, 282, 'cotton-short-sleeve-polo-shirt-ps-1-2023-10-21-02-14-19-3716.jpg', '2023-10-21 14:14:19', '2023-10-21 14:14:19'),
(622, 282, 'cotton-short-sleeve-polo-shirt-ps-1-2023-10-21-02-14-19-9329.jpg', '2023-10-21 14:14:19', '2023-10-21 14:14:19'),
(659, 324, 'another-testing-pro-2023-12-03-03-03-01-1649.jpg', '2023-12-03 15:03:02', '2023-12-03 15:03:02'),
(661, 324, 'another-testing-pro-2023-12-03-03-03-02-4633.jpg', '2023-12-03 15:03:02', '2023-12-03 15:03:02'),
(682, 350, 'ladies-kurties-34-sleeve-2024-01-29-03-43-04-3711.jpg', '2024-01-29 15:43:04', '2024-01-29 15:43:04'),
(683, 350, 'ladies-kurties-34-sleeve-2024-01-29-03-43-04-5447.jpg', '2024-01-29 15:43:04', '2024-01-29 15:43:04'),
(684, 350, 'ladies-kurties-34-sleeve-2024-01-29-03-43-04-3223.jpg', '2024-01-29 15:43:04', '2024-01-29 15:43:04'),
(689, 353, 'test-2-for-flat-sale-2024-01-29-04-53-39-6402.jpg', '2024-01-29 16:53:40', '2024-01-29 16:53:40'),
(690, 353, 'test-2-for-flat-sale-2024-01-29-04-53-40-3877.webp', '2024-01-29 16:53:40', '2024-01-29 16:53:40'),
(703, 361, 'olevs-2049-watch-2024-03-05-11-34-33-3985.jpg', '2024-03-05 23:34:34', '2024-03-05 23:34:34'),
(704, 361, 'olevs-2049-watch-2024-03-05-11-34-34-2647.jpg', '2024-03-05 23:34:34', '2024-03-05 23:34:34'),
(731, 367, 'kaju-badam-kaca-jambo-05-keji-2024-11-20-06-29-19-7890.webp', '2024-11-20 18:29:19', '2024-11-20 18:29:19'),
(732, 367, 'kaju-badam-kaca-jambo-05-keji-2024-11-20-06-29-19-5089.jpg', '2024-11-20 18:29:19', '2024-11-20 18:29:19'),
(733, 370, 'fleck-splash-round-kitchen-mat-2026-02-19-12-54-52-2160.jpg', '2026-02-19 12:54:52', '2026-02-19 12:54:52'),
(734, 370, 'fleck-splash-round-kitchen-mat-2026-02-19-12-54-52-1351.jpg', '2026-02-19 12:54:52', '2026-02-19 12:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `review` decimal(4,0) DEFAULT 0,
  `user_id` mediumint(9) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `message`, `name`, `review`, `user_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 367, 'nice product', 'NAZMUL HUDA LITON', 5, NULL, 'reviews/6996b72f95c14.jpg', 1, '2026-02-19 13:09:35', '2026-02-19 13:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` tinyint(4) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `variation_id` mediumint(9) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variation_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0.00, '2022-12-17 07:33:13', '2023-03-11 15:59:20'),
(2, 3, 2, 11.00, '2022-12-17 23:19:35', '2023-10-12 17:10:06'),
(3, 4, 3, 8.00, '2022-12-17 23:20:04', '2023-10-10 17:55:15'),
(4, 5, 4, 20.00, '2022-12-17 23:23:20', '2023-10-10 19:49:31'),
(5, 6, 5, 9.00, '2022-12-17 23:23:42', '2024-04-25 19:48:27'),
(6, 7, 6, 2.00, '2022-12-17 23:24:11', '2024-05-21 13:48:08'),
(7, 9, 8, 5.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(8, 10, 9, 5.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(9, 11, 10, 4.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(10, 12, 11, 12.00, '2022-12-20 17:40:05', '2023-10-28 20:02:20'),
(11, 13, 12, 3.00, '2022-12-20 17:40:05', '2023-10-10 19:49:31'),
(12, 14, 13, 1.00, '2022-12-20 17:40:05', '2023-09-09 15:50:14'),
(13, 15, 14, 108.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(14, 45, 44, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(15, 44, 43, NULL, '2022-12-20 17:40:05', '2023-12-09 12:05:06'),
(16, 43, 42, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(17, 42, 41, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(18, 41, 40, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(19, 40, 39, 25.00, '2022-12-20 17:40:05', '2024-04-25 19:48:27'),
(20, 39, 38, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(21, 34, 33, 11.00, '2022-12-20 17:40:05', '2025-01-06 14:45:02'),
(22, 33, 32, NULL, '2022-12-20 17:40:05', '2024-03-29 16:29:28'),
(23, 32, 31, 0.00, '2022-12-20 17:40:05', '2024-04-01 19:20:52'),
(24, 31, 30, 1.00, '2022-12-20 17:40:05', '2023-08-03 13:21:31'),
(25, 30, 29, 13.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(26, 29, 28, -3.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(27, 28, 27, 100.00, '2022-12-20 17:40:05', '2025-10-11 13:05:26'),
(28, 27, 26, 2.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(29, 26, 25, 2.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(30, 25, 24, 4.00, '2022-12-20 17:40:05', '2024-04-25 19:48:18'),
(31, 24, 23, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(32, 23, 22, 3.00, '2022-12-20 17:40:05', '2024-05-21 13:48:08'),
(33, 22, 21, 3.00, '2022-12-20 17:40:05', '2023-07-17 00:14:13'),
(34, 21, 20, 5.00, '2022-12-20 17:40:05', '2023-10-10 17:55:15'),
(35, 19, 18, 0.00, '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(36, 17, 16, 4.00, '2022-12-20 17:40:05', '2023-12-08 04:34:40'),
(37, 16, 15, 1.00, '2022-12-20 17:40:05', '2023-07-17 00:14:13'),
(38, 58, 59, 9.00, '2023-02-19 23:39:07', '2023-08-15 13:00:13'),
(39, 58, 60, 10.00, '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(40, 58, 61, 10.00, '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(41, 58, 62, 10.00, '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(42, 59, 63, 10.00, '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(43, 59, 64, 10.00, '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(44, 59, 65, 10.00, '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(45, 60, 66, 10.00, '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(46, 60, 67, 10.00, '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(47, 60, 68, 10.00, '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(48, 60, 69, 10.00, '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(49, 60, 70, 10.00, '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(50, 61, 71, 10.00, '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(51, 61, 72, 10.00, '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(52, 61, 73, 10.00, '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(53, 61, 74, 10.00, '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(54, 61, 75, 10.00, '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(55, 62, 76, 10.00, '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(56, 62, 77, 10.00, '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(57, 62, 78, 10.00, '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(58, 63, 79, 10.00, '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(59, 63, 80, 10.00, '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(60, 63, 81, 10.00, '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(61, 63, 82, 10.00, '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(62, 63, 83, 10.00, '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(63, 64, 84, 10.00, '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(64, 64, 85, 10.00, '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(65, 64, 86, 10.00, '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(66, 65, 87, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(67, 65, 88, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(68, 65, 89, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(69, 65, 90, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(70, 65, 91, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(71, 65, 92, 10.00, '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(72, 66, 93, 10.00, '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(73, 66, 94, 10.00, '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(74, 66, 95, 10.00, '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(75, 66, 96, 10.00, '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(76, 67, 97, 10.00, '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(77, 67, 98, 10.00, '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(78, 67, 99, 10.00, '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(79, 67, 100, 10.00, '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(80, 68, 101, 10.00, '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(81, 68, 102, 9.00, '2023-02-20 00:25:08', '2023-07-11 23:40:19'),
(82, 68, 103, 9.00, '2023-02-20 00:25:08', '2023-05-22 15:35:04'),
(83, 68, 104, 10.00, '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(84, 69, 105, 10.00, '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(85, 69, 106, 10.00, '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(86, 69, 107, 10.00, '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(87, 70, 108, 10.00, '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(88, 70, 109, 10.00, '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(89, 70, 110, 10.00, '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(90, 71, 111, 9.00, '2023-02-20 00:29:33', '2023-08-11 15:21:11'),
(91, 71, 112, 11.00, '2023-02-20 00:29:33', '2023-09-25 22:21:22'),
(92, 71, 113, 10.00, '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(93, 71, 114, 10.00, '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(94, 71, 115, 10.00, '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(95, 72, 116, 10.00, '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(96, 72, 117, 10.00, '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(97, 72, 118, 10.00, '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(98, 72, 119, 10.00, '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(99, 73, 120, 10.00, '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(100, 73, 121, 10.00, '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(101, 73, 122, 10.00, '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(102, 73, 123, 10.00, '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(103, 73, 124, 10.00, '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(104, 74, 125, 10.00, '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(105, 74, 126, 10.00, '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(106, 74, 127, 10.00, '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(107, 74, 128, 10.00, '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(108, 74, 129, 10.00, '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(109, 75, 130, 10.00, '2023-02-20 00:32:32', '2023-03-23 10:29:36'),
(110, 75, 131, 10.00, '2023-02-20 00:32:32', '2023-02-20 00:32:32'),
(111, 76, 132, 10.00, '2023-02-20 00:33:12', '2023-02-20 00:33:12'),
(112, 79, 135, 4008.00, '2023-02-27 18:28:47', '2023-08-08 17:30:36'),
(113, 80, 136, 4009.00, '2023-02-27 18:29:11', '2023-06-10 11:33:15'),
(114, 78, 134, 4019.00, '2023-02-27 18:29:45', '2023-08-20 12:33:46'),
(115, 77, 133, 123976.00, '2023-02-27 18:30:23', '2023-08-06 10:52:20'),
(116, 81, 137, 11988.00, '2023-02-28 02:07:06', '2025-08-08 16:37:44'),
(117, 92, 148, 4010.00, '2023-02-28 13:49:49', '2023-02-28 16:31:01'),
(118, 91, 147, 4014.00, '2023-02-28 13:50:07', '2023-09-25 22:21:22'),
(119, 90, 146, 4002.00, '2023-02-28 13:50:26', '2025-10-09 13:09:34'),
(120, 89, 145, NULL, '2023-02-28 13:50:47', '2025-10-09 12:39:28'),
(121, 88, 144, 4010.00, '2023-02-28 13:51:06', '2023-03-11 12:24:07'),
(122, 87, 143, 4009.00, '2023-02-28 13:51:25', '2023-09-25 22:21:22'),
(123, 86, 142, 14009.00, '2023-02-28 13:51:44', '2023-08-06 11:41:54'),
(124, 85, 141, 4009.00, '2023-02-28 13:52:00', '2023-07-19 09:45:36'),
(125, 84, 140, 3978.00, '2023-02-28 13:52:19', '2025-10-09 15:00:07'),
(126, 83, 139, 4019.00, '2023-02-28 13:52:36', '2023-07-10 23:08:41'),
(127, 82, 138, 4008.00, '2023-02-28 13:52:52', '2023-08-20 14:55:46'),
(128, 93, 149, 3996.00, '2023-02-28 16:31:01', '2024-07-30 17:49:43'),
(129, 94, 150, 974.00, '2023-03-01 23:12:37', '2024-07-01 07:17:57'),
(130, 95, 151, 4996.00, '2023-03-05 14:47:24', '2024-02-02 22:25:17'),
(131, 96, 152, 4010.00, '2023-03-05 14:47:24', '2025-05-11 16:25:14'),
(132, 97, 153, 49988.00, '2023-03-05 17:17:05', '2025-10-09 11:50:08'),
(133, 98, 154, 100001.00, '2023-03-08 04:10:32', '2024-06-24 03:44:48'),
(134, 99, 155, 12255.00, '2023-03-09 14:44:04', '2025-10-11 06:24:49'),
(135, 100, 156, 2.00, '2023-03-11 15:41:20', '2023-05-31 21:00:11'),
(136, 101, 157, 987.00, '2023-03-15 02:24:28', '2025-10-09 15:00:07'),
(137, 104, 160, 9994.00, '2023-03-23 02:32:12', '2025-10-10 17:29:18'),
(138, 103, 159, 49995.00, '2023-03-24 00:56:09', '2023-07-17 02:09:25'),
(139, 105, 161, 49996.00, '2023-03-25 01:12:28', '2024-06-24 03:44:48'),
(140, 106, 162, 59934.00, '2023-03-25 02:39:09', '2023-10-10 17:55:15'),
(141, 110, 166, 1006.00, '2023-04-12 16:05:14', '2023-12-05 23:04:51'),
(142, 109, 165, 9994.00, '2023-04-12 16:05:14', '2024-10-08 22:11:35'),
(143, 108, 164, 1.00, '2023-04-16 11:54:39', '2023-04-16 11:54:39'),
(144, 111, 167, 2.00, '2023-05-03 01:30:54', '2023-05-03 01:30:54'),
(145, 112, 168, 2.00, '2023-05-07 21:53:54', '2025-10-09 09:32:58'),
(146, 113, 169, 4.00, '2023-05-07 21:53:54', '2023-10-10 17:55:15'),
(147, 115, 171, 0.00, '2023-05-30 12:49:10', '2023-05-30 12:49:48'),
(148, 8, 7, 10.00, '2023-06-16 02:23:26', '2023-09-05 16:06:59'),
(149, 120, 180, 1.00, '2023-07-10 17:46:25', '2023-07-10 17:47:28'),
(153, 125, 185, 1.00, '2023-08-07 18:07:52', '2023-08-07 18:07:52'),
(154, 18, 17, 2.00, '2023-08-15 13:00:13', '2023-09-13 03:00:18'),
(155, 130, 195, 1.00, '2023-09-06 20:30:31', '2023-09-06 20:30:31'),
(156, 144, 225, 1.00, '2023-09-13 01:02:52', '2023-09-13 01:02:52'),
(157, 107, 163, 2.00, '2023-09-13 03:00:18', '2023-09-25 22:21:22'),
(158, 144, 226, 2.00, '2023-09-13 03:00:18', '2023-09-13 03:00:18'),
(159, 152, 241, 100.00, '2023-09-25 00:48:31', '2023-09-25 00:48:31'),
(160, 38, 37, 1.00, '2023-09-25 22:21:22', '2023-09-25 22:21:22'),
(161, 178, 274, 1.00, '2023-09-25 22:21:22', '2023-09-25 22:21:22'),
(162, 178, 275, 12.00, '2023-09-25 22:21:22', '2023-10-10 17:55:15'),
(163, 207, 324, 1.00, '2023-10-10 17:55:15', '2023-10-10 17:55:15'),
(164, 207, 323, 1.00, '2023-10-10 17:55:15', '2024-05-21 13:48:08'),
(165, 37, 36, 1.00, '2023-10-10 17:55:15', '2023-10-10 17:55:15'),
(166, 177, 268, 3.00, '2023-10-10 17:55:15', '2023-10-10 17:55:15'),
(167, 177, 271, 6.00, '2023-10-10 17:55:15', '2023-10-10 17:55:15'),
(168, 20, 19, 1.00, '2023-10-10 17:55:15', '2023-10-10 17:55:15'),
(169, 207, 326, 2.00, '2023-10-10 17:55:23', '2023-10-10 17:55:27'),
(170, 118, 175, 3.00, '2023-10-12 19:01:55', '2025-10-09 09:50:14'),
(174, 270, 373, 20.00, '2023-10-19 13:46:38', '2023-10-19 13:46:38'),
(175, 270, 374, 20.00, '2023-10-19 13:46:38', '2023-10-19 13:46:38'),
(176, 270, 375, 30.00, '2023-10-19 13:46:38', '2023-10-19 13:46:38'),
(177, 272, 377, 17.00, '2023-10-19 13:55:50', '2023-10-19 13:55:50'),
(178, 273, 378, 1.00, '2023-10-19 13:56:45', '2023-10-19 13:56:45'),
(179, 274, 379, 50.00, '2023-10-19 14:00:19', '2023-10-19 14:00:19'),
(180, 274, 380, 50.00, '2023-10-19 14:00:19', '2023-10-19 14:00:19'),
(181, 274, 381, 60.00, '2023-10-19 14:00:19', '2023-10-19 14:00:19'),
(182, 275, 382, 14.00, '2023-10-19 14:25:09', '2023-10-19 14:40:58'),
(183, 275, 383, 15.00, '2023-10-19 14:25:09', '2023-10-19 14:40:58'),
(184, 275, 384, 16.00, '2023-10-19 14:25:09', '2023-10-19 14:40:58'),
(185, 276, 385, 10.00, '2023-10-19 15:14:22', '2023-10-19 15:14:22'),
(186, 277, 386, 17.00, '2023-10-19 15:27:25', '2023-10-19 15:27:25'),
(187, 278, 387, 40.00, '2023-10-19 16:17:06', '2023-10-19 18:21:03'),
(188, 279, 388, 10.00, '2023-10-19 17:30:24', '2023-10-19 17:30:24'),
(189, 279, 389, 15.00, '2023-10-19 17:30:24', '2023-10-19 17:30:24'),
(190, 280, 390, 80.00, '2023-10-19 17:40:52', '2023-10-19 17:49:03'),
(191, 280, 391, 80.00, '2023-10-19 17:40:52', '2023-10-19 17:49:03'),
(192, 281, 392, 60.00, '2023-10-21 14:09:32', '2024-05-21 13:48:08'),
(193, 282, 393, 30.00, '2023-10-21 14:14:19', '2023-10-22 23:17:53'),
(194, 282, 394, 19.00, '2023-10-21 14:14:19', '2025-03-03 02:32:26'),
(195, 282, 395, 25.00, '2023-10-21 14:14:19', '2023-10-22 23:17:53'),
(196, 283, 396, 10.00, '2023-10-22 23:22:23', '2023-10-27 23:55:43'),
(197, 283, 397, 10.00, '2023-10-22 23:22:23', '2023-10-27 23:55:43'),
(198, 284, 398, 20.00, '2023-10-22 23:26:29', '2023-10-22 23:28:41'),
(199, 285, 399, 1.00, '2023-10-24 11:14:32', '2023-10-24 11:14:32'),
(200, 286, 400, 1.00, '2023-10-24 15:19:45', '2023-10-24 15:19:45'),
(201, 287, 401, 20.00, '2023-10-26 10:37:48', '2023-10-26 10:37:48'),
(202, 287, 402, 20.00, '2023-10-26 10:37:48', '2023-10-26 10:37:48'),
(203, 287, 403, 20.00, '2023-10-26 10:37:48', '2023-10-26 10:37:48'),
(204, 288, 404, 20.00, '2023-10-26 10:37:50', '2023-10-26 10:38:03'),
(205, 288, 405, 20.00, '2023-10-26 10:37:50', '2023-10-26 10:38:03'),
(206, 288, 406, 20.00, '2023-10-26 10:37:50', '2023-10-26 10:37:50'),
(207, 289, 407, 4.00, '2023-10-26 16:23:23', '2025-12-07 06:17:33'),
(208, 290, 408, 3.00, '2023-10-26 16:26:31', '2025-12-07 06:17:33'),
(209, 291, 409, 1.00, '2023-10-26 16:31:04', '2023-10-26 16:31:04'),
(210, 292, 410, 3.00, '2023-10-26 16:36:21', '2024-05-21 13:48:08'),
(211, 293, 411, 1.00, '2023-10-26 16:38:52', '2024-05-22 14:11:22'),
(212, 294, 412, 1.00, '2023-10-26 16:47:16', '2023-10-26 16:47:16'),
(213, 295, 413, 1.00, '2023-10-26 16:50:41', '2023-10-26 16:50:41'),
(214, 296, 414, 1.00, '2023-10-26 16:54:07', '2023-10-26 16:54:07'),
(215, 297, 415, 1.00, '2023-10-26 16:58:07', '2023-10-26 16:58:07'),
(216, 298, 416, 2.00, '2023-10-26 17:02:48', '2025-10-13 11:03:16'),
(217, 299, 417, 12.00, '2023-10-28 13:14:00', '2025-12-10 07:12:14'),
(218, 300, 418, 3.00, '2023-10-28 13:17:51', '2025-12-07 06:17:33'),
(219, 301, 419, 2.00, '2023-10-28 13:30:37', '2025-12-07 06:17:33'),
(220, 302, 420, 3.00, '2023-10-28 15:16:40', '2025-10-13 10:06:52'),
(221, 303, 421, 1.00, '2023-10-28 16:06:42', '2023-10-28 16:06:42'),
(222, 304, 422, NULL, '2023-10-28 16:13:10', '2026-02-03 17:38:22'),
(223, 305, 423, NULL, '2023-10-28 16:27:10', '2026-02-03 17:37:53'),
(224, 306, 424, 1.00, '2023-10-28 16:30:48', '2023-10-28 16:30:48'),
(225, 307, 425, 12.00, '2023-10-28 16:34:45', '2026-02-03 17:18:40'),
(226, 308, 426, NULL, '2023-10-28 16:37:40', '2026-02-03 17:18:22'),
(227, 309, 427, 12.00, '2023-10-28 16:41:01', '2026-02-03 17:18:05'),
(228, 310, 428, 12.00, '2023-10-28 17:12:05', '2026-02-03 17:17:49'),
(229, 311, 429, 12.00, '2023-10-28 17:14:50', '2026-02-03 17:17:33'),
(230, 312, 430, 12.00, '2023-10-28 17:18:31', '2026-02-03 17:17:14'),
(231, 313, 431, 20.00, '2023-11-02 21:29:18', '2023-11-02 21:29:50'),
(232, 313, 432, 20.00, '2023-11-02 21:29:18', '2023-11-02 21:29:50'),
(233, 314, 434, 20.00, '2023-11-03 00:34:51', '2023-11-03 00:38:33'),
(234, 314, 435, 30.00, '2023-11-03 00:34:51', '2023-11-03 00:38:33'),
(235, 315, 437, 39.00, '2023-11-03 00:40:52', '2024-01-11 13:09:19'),
(236, 315, 438, 50.00, '2023-11-03 00:40:52', '2023-11-05 14:14:31'),
(237, 315, 439, 90.00, '2023-11-03 00:52:50', '2023-11-05 14:14:31'),
(238, 315, 440, 60.00, '2023-11-03 00:54:48', '2023-11-03 00:54:48'),
(239, 315, 441, 90.00, '2023-11-03 01:19:25', '2023-11-05 14:14:31'),
(240, 315, 442, 90.00, '2023-11-03 01:19:25', '2023-11-03 01:19:25'),
(241, 177, 269, 1.00, '2023-11-05 13:45:47', '2023-11-05 13:45:47'),
(242, 315, 443, 90.00, '2023-11-05 14:12:56', '2023-11-05 14:14:31'),
(243, 315, 444, 90.00, '2023-11-05 14:13:03', '2023-11-05 14:14:31'),
(244, 315, 445, 90.00, '2023-11-05 14:13:03', '2023-11-05 14:14:31'),
(245, 315, 446, 90.00, '2023-11-05 14:13:03', '2023-11-05 14:14:31'),
(246, 315, 447, 90.00, '2023-11-05 14:14:31', '2023-11-05 14:14:31'),
(247, 315, 448, 90.00, '2023-11-05 14:14:31', '2023-11-05 14:14:31'),
(248, 315, 449, 90.00, '2023-11-05 14:14:31', '2023-11-05 14:14:31'),
(249, 316, 450, 1.00, '2023-11-05 16:27:22', '2023-11-05 16:27:27'),
(250, 317, 451, 1.00, '2023-11-07 13:42:42', '2023-11-07 13:42:42'),
(251, 320, 453, 1.00, '2023-11-09 14:43:57', '2023-11-25 16:01:40'),
(252, 321, 454, 1.00, '2023-11-09 17:34:01', '2023-11-09 17:34:01'),
(253, 322, 455, 1.00, '2023-11-11 16:32:22', '2023-11-11 16:32:22'),
(254, 323, 456, 1.00, '2023-11-27 14:55:48', '2023-11-27 15:03:49'),
(255, 324, 457, 12.00, '2023-12-03 15:03:02', '2026-02-03 17:09:49'),
(256, 324, 458, 12.00, '2023-12-03 15:03:02', '2026-02-03 17:09:49'),
(257, 327, 461, 12.00, '2023-12-03 16:37:02', '2023-12-07 15:08:03'),
(258, 327, 462, 12.00, '2023-12-03 16:37:02', '2023-12-07 15:08:03'),
(259, 328, 463, 1.00, '2023-12-06 00:30:42', '2023-12-06 00:30:42'),
(260, 327, 464, 12.00, '2023-12-07 15:07:38', '2023-12-07 15:08:03'),
(261, 327, 465, 12.00, '2023-12-07 15:08:03', '2023-12-07 15:08:03'),
(262, 329, 466, 1.00, '2023-12-09 02:04:18', '2023-12-09 02:04:18'),
(263, 330, 467, 9.00, '2023-12-09 16:49:00', '2023-12-09 16:49:18'),
(264, 331, 468, 43.00, '2023-12-17 17:13:04', '2025-05-26 13:05:47'),
(265, 332, 469, 10.00, '2023-12-18 17:39:27', '2026-02-03 17:16:56'),
(266, 332, 470, 10.00, '2023-12-18 17:39:27', '2026-02-03 17:16:56'),
(267, 333, 471, 10.00, '2023-12-18 17:41:01', '2026-02-03 17:15:38'),
(268, 333, 472, 10.00, '2023-12-18 17:41:01', '2026-02-03 17:15:38'),
(269, 334, 473, 20.00, '2023-12-18 17:42:29', '2026-02-03 17:15:08'),
(270, 334, 474, 20.00, '2023-12-18 17:42:29', '2026-02-03 17:15:08'),
(271, 335, 475, NULL, '2023-12-18 17:43:39', '2023-12-18 17:43:39'),
(272, 335, 476, NULL, '2023-12-18 17:43:39', '2023-12-18 17:43:39'),
(273, 336, 477, 10.00, '2023-12-18 17:44:48', '2026-02-03 17:13:46'),
(274, 336, 478, 10.00, '2023-12-18 17:44:48', '2026-02-03 17:13:47'),
(275, 337, 479, 10.00, '2023-12-18 17:45:49', '2026-02-03 17:13:20'),
(276, 337, 480, 10.00, '2023-12-18 17:45:49', '2026-02-03 17:13:20'),
(277, 338, 481, 10.00, '2023-12-18 17:47:01', '2026-02-03 17:12:38'),
(278, 338, 482, 10.00, '2023-12-18 17:47:01', '2026-02-03 17:12:38'),
(279, 339, 483, 10.00, '2023-12-18 17:49:48', '2026-02-03 17:12:16'),
(280, 340, 484, 10.00, '2023-12-18 17:50:47', '2026-02-03 17:11:46'),
(281, 340, 485, 10.00, '2023-12-18 17:50:47', '2026-02-03 17:11:46'),
(282, 341, 486, 9.00, '2023-12-18 17:51:58', '2026-02-19 13:36:16'),
(283, 341, 487, 10.00, '2023-12-18 17:51:58', '2026-02-03 17:10:52'),
(284, 342, 488, 12.00, '2023-12-18 17:53:23', '2026-02-03 17:10:24'),
(285, 342, 489, 12.00, '2023-12-18 17:53:23', '2026-02-03 17:10:24'),
(286, 343, 490, 10.00, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(287, 343, 491, 10.00, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(288, 343, 492, 10.00, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(289, 344, 493, 10.00, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(290, 344, 494, 10.00, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(291, 344, 495, 10.00, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(292, 345, 496, 10.00, '2023-12-18 19:27:39', '2023-12-18 19:36:40'),
(293, 345, 497, 10.00, '2023-12-18 19:27:39', '2023-12-18 19:36:40'),
(294, 346, 498, 10.00, '2023-12-18 19:38:10', '2023-12-18 19:38:39'),
(295, 346, 499, 10.00, '2023-12-18 19:38:10', '2023-12-18 19:38:39'),
(296, 347, 500, 10.00, '2023-12-18 19:48:53', '2023-12-18 19:49:18'),
(297, 347, 501, 10.00, '2023-12-18 19:48:53', '2023-12-18 19:49:18'),
(298, 348, 502, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(299, 348, 503, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(300, 348, 504, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(301, 348, 505, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(302, 348, 506, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(303, 348, 507, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(304, 348, 508, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(305, 348, 509, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(306, 348, 510, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(307, 348, 511, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(308, 348, 512, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(309, 348, 513, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(310, 348, 514, 10.00, '2023-12-19 14:38:31', '2024-01-06 11:31:35'),
(311, 349, 515, 1.00, '2023-12-22 14:16:29', '2023-12-22 14:36:15'),
(312, 350, 516, 1.00, '2024-01-29 15:43:04', '2024-01-29 16:48:38'),
(313, 351, 517, 10.00, '2024-01-29 16:51:05', '2024-01-29 16:58:21'),
(314, 352, 518, 7.00, '2024-01-29 16:52:36', '2025-10-12 08:00:37'),
(315, 353, 519, 9.00, '2024-01-29 16:53:40', '2026-02-19 13:07:34'),
(316, 354, 520, 1.00, '2024-01-29 17:39:13', '2024-01-29 17:40:24'),
(317, 355, 521, 9.00, '2024-01-29 18:34:18', '2025-02-03 23:51:06'),
(318, 356, 522, 10.00, '2024-01-29 18:41:49', '2024-02-01 20:37:52'),
(319, 357, 523, 10.00, '2024-02-07 16:18:43', '2025-10-12 07:32:10'),
(320, 357, 524, 10.00, '2024-02-07 16:18:43', '2025-10-12 07:32:10'),
(321, 358, 525, 10.00, '2024-02-07 16:25:05', '2024-02-07 16:25:05'),
(322, 358, 526, 10.00, '2024-02-07 16:25:05', '2024-02-07 16:27:59'),
(323, 359, 527, 1.00, '2024-02-15 17:42:39', '2024-02-15 17:42:39'),
(324, 360, 528, 10.00, '2024-02-22 00:35:57', '2024-02-22 00:35:57'),
(325, 360, 529, 10.00, '2024-02-22 00:35:57', '2024-02-22 00:35:57'),
(326, 361, 530, 1.00, '2024-03-05 23:34:34', '2024-03-05 23:34:34'),
(327, 362, 531, 1.00, '2024-03-13 15:02:18', '2024-03-13 15:02:18'),
(328, 363, 532, 1.00, '2024-03-15 13:26:33', '2024-03-15 13:26:33'),
(329, 364, 533, 1.00, '2024-03-29 16:09:36', '2024-03-29 16:09:36'),
(330, 365, 534, 1.00, '2024-03-29 16:12:41', '2024-03-29 16:12:41'),
(331, 366, 535, 197.00, '2024-03-29 16:13:43', '2026-02-09 11:12:07'),
(332, 367, 536, 100.00, '2024-03-29 16:14:54', '2026-02-19 12:40:02'),
(333, 150, 239, 1.00, '2024-04-25 19:48:18', '2024-04-25 19:48:18'),
(334, 368, 537, 1.00, '2024-05-21 12:25:11', '2025-10-13 12:10:02'),
(335, 369, 538, 20.00, '2024-05-21 13:15:27', '2025-12-10 06:26:11'),
(336, 370, 539, 9.00, '2024-05-21 14:38:12', '2024-08-08 13:22:46'),
(337, 371, 540, 9.00, '2024-05-21 14:41:38', '2024-05-21 14:49:39'),
(338, 373, 541, 10.00, '2024-05-21 18:38:34', '2024-05-22 14:10:32'),
(339, 373, 542, 10.00, '2024-05-21 18:38:34', '2024-05-22 14:10:32'),
(340, 375, 543, 10.00, '2024-05-22 15:47:34', '2024-05-22 15:47:34'),
(341, 376, 544, 7.00, '2024-05-22 15:50:46', '2024-05-22 16:01:55'),
(342, 377, 545, 10.00, '2024-05-24 17:37:44', '2024-05-24 17:37:44'),
(343, 378, 546, 10.00, '2024-06-01 14:14:09', '2024-06-01 14:15:22'),
(344, 378, 547, 8.00, '2024-06-01 14:14:09', '2024-06-01 15:05:38'),
(345, 379, 548, 6.00, '2024-06-01 14:24:25', '2024-06-04 17:26:22'),
(346, 379, 549, 9.00, '2024-06-01 14:24:25', '2024-06-01 14:27:05'),
(347, 380, 550, 0.00, '2024-06-14 22:28:04', '2024-06-14 23:06:56'),
(348, 381, 551, 1000.00, '2024-06-28 11:34:27', '2024-06-28 11:34:27'),
(349, 381, 552, 1000.00, '2024-06-28 11:34:27', '2024-06-28 11:34:27'),
(350, 382, 553, 1.00, '2024-07-13 11:51:32', '2024-07-13 11:51:32'),
(351, 383, 554, 100.00, '2024-07-13 12:02:21', '2024-07-13 12:07:18'),
(352, 384, 555, 1.00, '2024-08-12 17:32:10', '2024-08-12 17:32:10'),
(353, 385, 556, 98.00, '2024-08-30 09:28:56', '2025-02-03 23:51:06'),
(354, 386, 557, NULL, '2024-10-28 19:03:26', '2024-10-28 19:03:26'),
(355, 386, 558, NULL, '2024-10-28 19:03:26', '2024-10-28 19:03:26'),
(356, 386, 559, NULL, '2024-10-28 19:03:26', '2024-10-28 19:03:26'),
(357, 149, 238, 1.00, '2025-01-06 14:45:02', '2025-01-06 14:45:02'),
(358, 387, 560, 1.00, '2025-10-08 09:35:28', '2025-10-08 09:35:28'),
(359, 388, 561, 10.00, '2025-10-08 09:41:45', '2025-10-08 09:41:45'),
(360, 389, 562, 10.00, '2025-10-08 09:41:45', '2025-10-08 09:43:30'),
(361, 390, 563, 1.00, '2025-10-09 10:05:39', '2025-10-09 10:05:39'),
(362, 391, 564, 1.00, '2025-10-09 16:23:34', '2025-10-09 16:23:34'),
(363, 392, 565, 1.00, '2025-10-11 19:00:52', '2025-10-11 19:01:37'),
(364, 368, 537, 1.00, '2025-10-13 11:43:09', '2025-10-13 11:43:09'),
(365, 369, 538, 20.00, '2025-12-10 06:21:40', '2025-12-10 06:21:40'),
(366, 369, 539, 20.00, '2025-12-10 06:21:40', '2025-12-10 06:26:11'),
(367, 370, 540, 15.00, '2026-02-19 12:54:52', '2026-02-19 12:58:17'),
(368, 370, 541, 19.00, '2026-02-19 12:54:52', '2026-02-19 14:00:46'),
(369, 370, 542, 20.00, '2026-02-19 12:54:52', '2026-02-19 12:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` smallint(6) DEFAULT NULL,
  `user_id` smallint(6) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `user_id`, `note`, `ref`, `date`, `status`, `discount_type`, `discount_amount`, `shipping_cost`, `amount`, `created_at`, `updated_at`) VALUES
(68, 1, 1, 'fffffff', '436436', '2024-05-21', 'received', NULL, NULL, NULL, 20000.00, '2024-05-21 12:30:18', '2024-05-21 12:30:18'),
(69, 1, 1, NULL, '4364346', '2024-05-21', 'received', NULL, NULL, NULL, 10000.00, '2024-05-21 12:49:40', '2024-05-21 12:49:40'),
(70, 1, 1, 'abc', '32521343', '2024-06-28', 'received', NULL, NULL, NULL, 182000.00, '2024-06-28 11:18:19', '2024-06-28 11:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `variation_id` smallint(6) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_lines`
--

INSERT INTO `purchase_lines` (`id`, `purchase_id`, `variation_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(166, 68, 537, 368, 20.00, 1000.00, '2024-05-21 12:30:18', '2024-05-21 12:30:18'),
(167, 69, 486, 341, 10.00, 1000.00, '2024-05-21 12:49:40', '2024-05-21 12:49:40'),
(168, 70, 155, 99, 350.00, 520.00, '2024-06-28 11:18:19', '2024-06-28 11:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` mediumint(9) NOT NULL,
  `date` date DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_product_images`
--

CREATE TABLE `review_product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landing_page_id` bigint(20) NOT NULL,
  `review_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_product_images`
--

INSERT INTO `review_product_images` (`id`, `landing_page_id`, `review_image`, `created_at`, `updated_at`) VALUES
(1, 20, 'S4d83047279cf49a48175fd1e2523cc73i.jpg_750x750.jpg_1701778318.webp', '2023-12-05 18:11:58', '2023-12-05 18:11:58'),
(2, 20, 'S62b1cacd35e94a14b2033ab3b2564fbaa.jpg_750x750.jpg_1701778318.webp', '2023-12-05 18:11:58', '2023-12-05 18:11:58'),
(3, 20, 'Sc54533c1ebe24e1c8023777c13627481f.jpg_750x750.jpg_1701778318.webp', '2023-12-05 18:11:58', '2023-12-05 18:11:58'),
(4, 21, 'r11701861295.png', '2023-12-06 17:14:55', '2023-12-06 17:14:55'),
(5, 21, 'r21701861295.png', '2023-12-06 17:14:55', '2023-12-06 17:14:55'),
(6, 21, 'r31701861295.png', '2023-12-06 17:14:55', '2023-12-06 17:14:55'),
(7, 21, 'r41701861295.png', '2023-12-06 17:14:55', '2023-12-06 17:14:55'),
(8, 22, 'r117018612951701943809.png', '2023-12-07 16:10:09', '2023-12-07 16:10:09'),
(9, 22, 'r217018612951701943809.png', '2023-12-07 16:10:09', '2023-12-07 16:10:09'),
(10, 22, 'r317018612951701943809.png', '2023-12-07 16:10:09', '2023-12-07 16:10:09'),
(11, 22, 'r417018612951701943809.png', '2023-12-07 16:10:09', '2023-12-07 16:10:09'),
(12, 86, 'S4d83047279cf49a48175fd1e2523cc73i.jpg_750x750.jpg_1702466846.webp', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(13, 86, 'S62b1cacd35e94a14b2033ab3b2564fbaa.jpg_750x750.jpg_1702466846.webp', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(14, 86, 'Sc54533c1ebe24e1c8023777c13627481f.jpg_750x750.jpg_1702466846.webp', '2023-12-13 17:27:26', '2023-12-13 17:27:26'),
(15, 87, 'S4d83047279cf49a48175fd1e2523cc73i.jpg_750x750.jpg_1702466856.webp', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(16, 87, 'S62b1cacd35e94a14b2033ab3b2564fbaa.jpg_750x750.jpg_1702466856.webp', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(17, 87, 'Sc54533c1ebe24e1c8023777c13627481f.jpg_750x750.jpg_1702466856.webp', '2023-12-13 17:27:36', '2023-12-13 17:27:36'),
(18, 88, 'S4d83047279cf49a48175fd1e2523cc73i.jpg_750x750.jpg_1702468389.webp', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(19, 88, 'S62b1cacd35e94a14b2033ab3b2564fbaa.jpg_750x750.jpg_1702468389.webp', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(20, 88, 'Sc54533c1ebe24e1c8023777c13627481f.jpg_750x750.jpg_1702468389.webp', '2023-12-13 17:53:09', '2023-12-13 17:53:09'),
(21, 89, 'ashwaghum-31703070446.jpg', '2023-12-20 17:07:26', '2023-12-20 17:07:26'),
(22, 89, 'Black-Rice-800x8001703070446.jpg', '2023-12-20 17:07:26', '2023-12-20 17:07:26'),
(26, 90, 'ladies-puff-sleeve-summer-linen-shirts-women-tunics-ladies-loose-vintage-tops-short-sleeve-female-shirt-blouse-casual-tops-t-shirts-2023-12-09-12-31-32-72471704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(27, 90, 'ladies-puff-sleeve-summer-linen-shirts-women-tunics-ladies-loose-vintage-tops-short-sleeve-female-shirt-blouse-casual-tops-t-shirts-2023-12-09-12-31-32-78731704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(28, 90, 'ladies-puff-sleeve-summer-linen-shirts-women-tunics-ladies-loose-vintage-tops-short-sleeve-female-shirt-blouse-casual-tops-t-shirts-2023-12-09-12-31-32-98751704186217.jpg', '2024-01-02 15:03:37', '2024-01-02 15:03:37'),
(32, 85, 'c11713857883.png', '2024-04-23 13:38:03', '2024-04-23 13:38:03'),
(34, 85, 'c31713857883.png', '2024-04-23 13:38:03', '2024-04-23 13:38:03'),
(35, 85, 'c41713857883.png', '2024-04-23 13:38:03', '2024-04-23 13:38:03'),
(36, 91, 'c11713858441.png', '2024-04-23 13:47:21', '2024-04-23 13:47:21'),
(37, 91, 'c21713858441.png', '2024-04-23 13:47:21', '2024-04-23 13:47:21'),
(38, 91, 'c31713858441.png', '2024-04-23 13:47:21', '2024-04-23 13:47:21'),
(39, 91, 'c41713858441.png', '2024-04-23 13:47:21', '2024-04-23 13:47:21'),
(40, 92, 'photo_6203833724110488144_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48'),
(41, 92, 'photo_6203833724110488145_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48'),
(42, 92, 'photo_6203833724110488146_y1724990208.jpg', '2024-08-30 09:56:48', '2024-08-30 09:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'web', '2022-10-19 11:26:05', '2022-10-19 11:26:05'),
(7, 'user', 'web', '2022-10-20 05:17:08', '2022-10-20 05:17:08'),
(8, 'worker', 'web', '2022-10-20 05:17:20', '2022-10-20 05:17:20'),
(10, 'Client', 'web', '2023-01-09 13:03:59', '2023-01-09 13:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(7, 7),
(8, 7),
(10, 7),
(1, 8),
(2, 8),
(3, 8),
(7, 8),
(14, 8),
(15, 8),
(50, 8),
(65, 8),
(1, 10),
(2, 10),
(7, 10),
(8, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),
(23, 10),
(24, 10),
(26, 10),
(27, 10),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(36, 10),
(42, 10),
(43, 10),
(45, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(53, 10),
(54, 10),
(55, 10),
(56, 10),
(57, 10),
(58, 10),
(59, 10),
(61, 10),
(62, 10),
(63, 10),
(65, 10),
(66, 10),
(67, 10),
(68, 10),
(69, 10),
(71, 10),
(72, 10),
(73, 10),
(75, 10),
(76, 10),
(78, 10),
(76, 6),
(26, 6),
(28, 6),
(27, 6),
(47, 6),
(62, 6),
(64, 6),
(63, 6),
(61, 6),
(68, 6),
(70, 6),
(69, 6),
(67, 6),
(72, 6),
(74, 6),
(73, 6),
(71, 6),
(65, 6),
(43, 6),
(44, 6),
(45, 6),
(42, 6),
(32, 6),
(34, 6),
(33, 6),
(48, 6),
(20, 6),
(22, 6),
(21, 6),
(49, 6),
(14, 6),
(16, 6),
(15, 6),
(50, 6),
(78, 6),
(57, 6),
(60, 6),
(59, 6),
(58, 6),
(11, 6),
(13, 6),
(12, 6),
(51, 6),
(7, 6),
(10, 6),
(8, 6),
(66, 6),
(1, 6),
(3, 6),
(2, 6),
(46, 6),
(4, 6),
(6, 6),
(5, 6),
(52, 6),
(29, 6),
(31, 6),
(30, 6),
(53, 6),
(17, 6),
(19, 6),
(18, 6),
(55, 6),
(75, 6),
(23, 6),
(25, 6),
(24, 6),
(56, 6),
(35, 6),
(37, 6),
(36, 6),
(54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_default` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `is_default`, `created_at`, `updated_at`) VALUES
(3, 'Single', NULL, '2023-02-19 17:40:22', '2023-02-19 17:40:22'),
(4, 'M', NULL, '2023-05-27 23:04:22', '2023-05-27 23:04:22'),
(5, 'L', NULL, '2023-05-27 23:04:27', '2023-05-27 23:04:27'),
(6, 'Xl', NULL, '2023-05-27 23:04:32', '2023-05-27 23:04:32'),
(7, '40', NULL, '2023-06-08 17:07:56', '2023-06-08 17:07:56'),
(9, 'XXL', NULL, '2023-07-12 16:36:23', '2025-11-07 08:38:52'),
(11, '1 ltr', NULL, '2023-09-25 04:26:48', '2023-09-25 04:26:48'),
(12, '2 ltr', NULL, '2023-09-25 04:26:57', '2023-09-25 04:26:57'),
(13, '5 ltr', NULL, '2023-09-25 04:27:09', '2023-09-25 04:27:09'),
(17, '500grm', NULL, '2023-11-06 19:21:12', '2023-11-06 19:21:12'),
(18, 'watt', NULL, '2023-11-18 20:53:26', '2023-11-18 20:53:26'),
(19, '10 ml', NULL, '2023-12-18 17:34:26', '2023-12-18 17:34:26'),
(20, '20 ml', NULL, '2023-12-18 17:34:32', '2023-12-18 17:34:32'),
(21, '30 ml', NULL, '2023-12-18 17:34:36', '2023-12-18 17:34:36'),
(22, '40 ml', NULL, '2023-12-18 17:34:45', '2023-12-18 17:34:45'),
(23, '50 ml', NULL, '2023-12-18 17:34:52', '2023-12-18 17:34:52'),
(24, '100 ml', NULL, '2023-12-18 17:35:05', '2023-12-18 17:35:05'),
(25, '200 ml', NULL, '2023-12-18 17:35:12', '2023-12-18 17:35:12'),
(26, '300 ml', NULL, '2023-12-18 17:35:18', '2023-12-18 17:35:18'),
(31, 'Free Size (Up to 38)', NULL, '2025-11-15 11:20:20', '2025-11-15 11:29:59'),
(32, 'bdfbdf', NULL, '2025-11-15 17:07:23', '2025-11-15 17:07:23'),
(33, 'bdfbdfbdfb', NULL, '2025-11-15 17:07:27', '2025-11-15 17:07:27'),
(34, '4 Years', NULL, '2025-12-05 13:27:28', '2025-12-05 13:27:28'),
(35, 'saree', NULL, '2026-02-19 12:46:31', '2026-02-19 12:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `created_at`, `updated_at`, `title`, `link`, `description`) VALUES
(18, 'web-banner_1771238555.jpg', 'web-banner_1771238555.jpg', '2026-02-03 17:01:18', '2026-02-16 16:42:35', 'slider', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_top` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(200) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT NULL,
  `curier_summery` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `business_name`, `first_name`, `last_name`, `email`, `username`, `mobile`, `email_verified_at`, `password`, `image`, `remember_token`, `status`, `is_seller`, `curier_summery`, `created_at`, `updated_at`) VALUES
(1, 'Nix Software', 'Admin', 'Admin', 'admin@mail.com', 'admin', '01310799699', NULL, '$2y$10$pcclLSHmq4w/qvx.YiHRIupCeqEKn9ySbMaMic0x.G2OYmZl3HdS6', '235152200.png', NULL, 1, NULL, '{\"error\":\"Invalid or Inactive API Key\"}', '2022-09-20 23:53:37', '2026-02-19 13:31:20'),
(1715, NULL, 'Shah Jalal', NULL, NULL, 'shahjalal1', '01740247505', NULL, NULL, NULL, NULL, 1, NULL, '{\"error\":\"Invalid or Inactive API Key\"}', '2026-02-15 13:00:05', '2026-02-19 14:00:49'),
(1716, NULL, 'Hafej', NULL, NULL, 'hafej', '09876543212', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2026-02-19 13:07:34', '2026-02-19 13:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` tinyint(4) DEFAULT NULL,
  `color_id` tinyint(4) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `after_discount_price` float DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `product_id`, `size_id`, `color_id`, `purchase_price`, `price`, `after_discount_price`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 1, NULL, NULL, NULL, NULL, '2022-12-17 22:46:41', '2023-06-10 23:29:05'),
(3, 4, 3, 1, NULL, NULL, NULL, NULL, '2022-12-17 22:56:48', '2023-06-10 23:29:58'),
(4, 5, 3, 1, NULL, NULL, NULL, NULL, '2022-12-17 23:06:23', '2023-06-10 23:30:09'),
(5, 6, 3, 1, NULL, NULL, NULL, NULL, '2022-12-17 23:15:59', '2023-06-10 23:30:53'),
(6, 7, 3, 1, NULL, NULL, NULL, NULL, '2022-12-17 23:18:07', '2023-06-10 23:31:03'),
(8, 9, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:09:47', '2023-06-10 23:31:21'),
(9, 10, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:13:28', '2023-06-10 23:31:37'),
(10, 11, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:14:37', '2023-06-10 23:31:48'),
(11, 12, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:18:41', '2023-06-10 23:32:50'),
(12, 13, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:19:04', '2023-06-10 23:33:01'),
(13, 14, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:21:17', '2023-06-10 23:33:13'),
(14, 15, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:23:04', '2023-06-10 23:33:26'),
(15, 16, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:25:50', '2023-06-10 23:33:35'),
(16, 17, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:26:13', '2023-06-10 23:33:45'),
(17, 18, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:28:33', '2023-06-10 23:33:57'),
(18, 19, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:28:36', '2023-06-10 23:34:07'),
(19, 20, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:32:43', '2023-06-10 23:34:32'),
(20, 21, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:32:58', '2023-06-10 23:34:42'),
(21, 22, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:35:44', '2023-06-10 23:34:51'),
(22, 23, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:37:00', '2023-06-10 23:35:01'),
(24, 25, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:41:19', '2023-06-10 23:35:39'),
(25, 26, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:44:39', '2023-06-10 23:35:59'),
(26, 27, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:46:03', '2023-06-10 23:36:13'),
(27, 28, 3, 1, NULL, 60500, NULL, NULL, '2022-12-18 12:49:33', '2025-10-11 13:05:26'),
(28, 29, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:49:43', '2023-06-10 23:36:43'),
(31, 32, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 12:54:52', '2023-06-10 23:37:32'),
(32, 33, 3, 1, NULL, 2200, 0, NULL, '2022-12-18 12:58:46', '2024-03-29 16:29:28'),
(33, 34, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 13:01:02', '2023-06-10 23:38:28'),
(39, 40, 3, 1, NULL, NULL, NULL, NULL, '2022-12-18 13:19:53', '2023-06-10 23:44:23'),
(135, 79, 3, 1, NULL, NULL, NULL, NULL, '2023-02-27 18:09:21', '2023-02-27 18:09:21'),
(137, 81, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(140, 84, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 11:58:14', '2023-02-28 11:58:14'),
(145, 89, 3, 1, NULL, 1700, 1500, NULL, '2023-02-28 12:44:53', '2025-10-09 12:39:28'),
(146, 90, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 12:57:47', '2023-02-28 12:57:47'),
(147, 91, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(148, 92, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 13:16:13', '2023-02-28 13:16:13'),
(149, 93, 3, 1, NULL, NULL, NULL, NULL, '2023-02-28 16:26:50', '2023-02-28 16:26:50'),
(150, 94, 3, 1, NULL, NULL, NULL, NULL, '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(151, 95, 3, 1, NULL, NULL, NULL, NULL, '2023-03-05 14:29:16', '2023-03-05 14:29:16'),
(152, 96, 3, 1, NULL, NULL, NULL, NULL, '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(153, 97, 3, 1, NULL, NULL, NULL, NULL, '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(154, 98, 3, 1, NULL, NULL, NULL, NULL, '2023-03-08 04:10:07', '2023-03-08 04:10:07'),
(155, 99, 3, 1, NULL, NULL, NULL, NULL, '2023-03-09 14:43:30', '2023-03-09 14:43:30'),
(157, 101, 3, 1, NULL, NULL, NULL, NULL, '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(159, 103, 3, 1, NULL, NULL, NULL, NULL, '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(160, 104, 3, 1, NULL, NULL, NULL, NULL, '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(161, 105, 3, 1, NULL, NULL, NULL, NULL, '2023-03-25 01:11:56', '2023-03-25 01:11:56'),
(162, 106, 3, 1, NULL, NULL, NULL, NULL, '2023-03-25 02:38:35', '2023-03-25 02:38:35'),
(165, 109, 3, 1, NULL, NULL, NULL, NULL, '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(166, 110, 3, 1, NULL, NULL, NULL, NULL, '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(167, 111, 3, 1, NULL, NULL, NULL, NULL, '2023-05-03 01:16:41', '2023-05-03 01:16:41'),
(168, 112, 3, 1, NULL, 1150, 0, NULL, '2023-05-04 02:02:25', '2025-08-27 09:11:52'),
(169, 113, 3, 1, NULL, NULL, NULL, NULL, '2023-05-07 17:50:35', '2023-05-07 17:50:35'),
(175, 118, 3, 1, NULL, 850, 700, NULL, '2023-07-06 14:09:30', '2024-06-27 20:32:29'),
(238, 149, 3, 1, NULL, 995, NULL, NULL, '2023-09-13 14:54:23', '2023-09-13 14:54:23'),
(239, 150, 3, 1, NULL, 995, NULL, NULL, '2023-09-13 14:55:47', '2023-09-13 14:55:47'),
(240, 151, 3, 1, NULL, 1250, NULL, NULL, '2023-09-13 14:58:43', '2023-09-13 14:58:43'),
(241, 152, 3, 1, NULL, 1250, NULL, NULL, '2023-09-13 14:59:59', '2023-09-13 14:59:59'),
(243, 154, 3, 1, NULL, 1250, NULL, NULL, '2023-09-13 15:02:54', '2023-09-13 15:02:54'),
(268, 177, 3, 1, NULL, 990, 0, NULL, '2023-09-25 03:53:13', '2023-09-25 03:53:13'),
(269, 177, 4, 2, NULL, 850, NULL, NULL, '2023-09-25 03:53:13', '2023-09-25 03:53:13'),
(270, 177, 5, 21, NULL, 890, NULL, NULL, '2023-09-25 03:53:13', '2023-09-25 03:53:13'),
(271, 177, 6, 2, NULL, 990, NULL, NULL, '2023-09-25 03:53:13', '2023-09-25 03:53:13'),
(323, 207, 11, 1, NULL, 200, 0, NULL, '2023-09-28 01:29:00', '2023-10-10 23:32:18'),
(324, 207, 12, 1, NULL, 500, NULL, NULL, '2023-09-28 01:29:00', '2023-10-10 23:32:18'),
(325, 207, 12, 1, NULL, 500, 500, NULL, '2023-09-28 01:29:00', '2023-10-10 23:32:18'),
(326, 207, 13, 1, NULL, 900, 900, NULL, '2023-09-28 01:29:00', '2023-10-10 23:32:18'),
(392, 281, 3, 1, NULL, 1750, 1650, NULL, '2023-10-21 14:09:32', '2023-10-22 20:59:47'),
(393, 282, 3, 17, NULL, 1350, 1250, 30, '2023-10-21 14:14:19', '2023-10-22 20:58:53'),
(394, 282, 3, 12, NULL, 1350, 1300, 20, '2023-10-21 14:14:19', '2023-10-22 23:17:53'),
(395, 282, 3, 14, NULL, 1350, 1100, 25, '2023-10-21 14:14:19', '2023-10-22 23:07:01'),
(407, 289, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:23:23', '2023-10-26 16:23:23'),
(408, 290, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:26:31', '2023-10-26 16:28:03'),
(409, 291, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:31:04', '2023-10-26 16:31:04'),
(410, 292, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:36:21', '2023-10-26 16:43:29'),
(411, 293, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:38:52', '2024-05-22 14:11:22'),
(412, 294, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:47:16', '2023-10-26 16:47:16'),
(413, 295, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:50:41', '2023-10-26 16:50:41'),
(414, 296, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:54:07', '2023-10-26 16:54:07'),
(415, 297, 3, 1, NULL, 550, 0, NULL, '2023-10-26 16:58:07', '2023-10-26 16:58:07'),
(416, 298, 3, 1, NULL, 550, 0, NULL, '2023-10-26 17:02:48', '2023-10-26 17:02:48'),
(417, 299, 3, 1, NULL, 550, 0, NULL, '2023-10-28 13:14:00', '2025-10-11 12:53:28'),
(418, 300, 3, 1, NULL, 550, 0, NULL, '2023-10-28 13:17:51', '2023-10-28 13:17:51'),
(419, 301, 3, 1, NULL, 1050, 0, NULL, '2023-10-28 13:30:37', '2023-10-28 13:30:37'),
(420, 302, 3, 1, NULL, 990, 0, NULL, '2023-10-28 15:16:40', '2023-10-28 15:19:48'),
(421, 303, 3, 1, NULL, 850, 0, NULL, '2023-10-28 16:06:42', '2023-10-28 16:06:42'),
(422, 304, 3, 1, NULL, 850, 0, NULL, '2023-10-28 16:13:10', '2023-10-28 16:13:10'),
(423, 305, 3, 1, NULL, 850, 0, NULL, '2023-10-28 16:27:10', '2023-10-28 16:27:10'),
(424, 306, 3, 1, NULL, 950, 0, NULL, '2023-10-28 16:30:48', '2023-10-28 16:30:48'),
(425, 307, 3, 1, NULL, 850, 0, 12, '2023-10-28 16:34:45', '2026-02-03 17:18:40'),
(426, 308, 3, 1, NULL, 950, 0, NULL, '2023-10-28 16:37:40', '2023-10-28 16:37:40'),
(427, 309, 3, 1, NULL, 1050, 0, 12, '2023-10-28 16:41:01', '2026-02-03 17:18:05'),
(428, 310, 3, 1, NULL, 850, 0, 12, '2023-10-28 17:12:05', '2026-02-03 17:17:49'),
(429, 311, 3, 1, NULL, 1150, 0, 12, '2023-10-28 17:14:50', '2026-02-03 17:17:33'),
(430, 312, 3, 1, NULL, 1300, 1200, 12, '2023-10-28 17:18:31', '2026-02-03 17:17:14'),
(452, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 324, 7, 1, NULL, 1300, 1040, 12, '2023-12-03 15:03:02', '2026-02-03 17:09:49'),
(458, 324, 9, 1, NULL, 1400, 1120, 12, '2023-12-03 15:03:02', '2026-02-03 17:09:49'),
(468, 331, 3, 1, NULL, 520, 500, NULL, '2023-12-17 17:13:04', '2023-12-17 17:13:04'),
(469, 332, 20, 1, NULL, 290, NULL, 10, '2023-12-18 17:39:27', '2026-02-03 17:16:56'),
(470, 332, 22, 1, NULL, 550, 550, 10, '2023-12-18 17:39:27', '2026-02-03 17:16:56'),
(471, 333, 24, 1, NULL, 180, NULL, 10, '2023-12-18 17:41:01', '2026-02-03 17:15:38'),
(472, 333, 25, 1, NULL, 350, 350, 10, '2023-12-18 17:41:01', '2026-02-03 17:15:38'),
(473, 334, 24, 1, NULL, 180, NULL, 20, '2023-12-18 17:42:29', '2026-02-03 17:15:08'),
(474, 334, 25, 1, NULL, 340, 340, 20, '2023-12-18 17:42:29', '2026-02-03 17:15:08'),
(475, 335, 24, 1, NULL, 230, NULL, NULL, '2023-12-18 17:43:39', '2023-12-18 17:43:39'),
(476, 335, 25, 1, NULL, 420, 420, NULL, '2023-12-18 17:43:39', '2023-12-18 17:43:39'),
(477, 336, 24, 1, NULL, 150, NULL, 10, '2023-12-18 17:44:48', '2026-02-03 17:13:46'),
(478, 336, 25, 1, NULL, 300, 300, 10, '2023-12-18 17:44:48', '2026-02-03 17:13:47'),
(479, 337, 19, 1, NULL, 320, NULL, 10, '2023-12-18 17:45:49', '2026-02-03 17:13:20'),
(480, 337, 20, 1, NULL, 600, 600, 10, '2023-12-18 17:45:49', '2026-02-03 17:13:20'),
(481, 338, 23, 1, NULL, 300, NULL, 10, '2023-12-18 17:47:01', '2026-02-03 17:12:38'),
(482, 338, 24, 1, NULL, 600, 600, 10, '2023-12-18 17:47:01', '2026-02-03 17:12:38'),
(483, 339, 3, 1, NULL, 220, NULL, 10, '2023-12-18 17:49:48', '2026-02-03 17:12:16'),
(484, 340, 19, 1, NULL, 350, NULL, 10, '2023-12-18 17:50:47', '2026-02-03 17:11:46'),
(485, 340, 20, 1, NULL, 650, 650, 10, '2023-12-18 17:50:47', '2026-02-03 17:11:46'),
(486, 341, 19, 1, NULL, 320, NULL, 10, '2023-12-18 17:51:58', '2026-02-03 17:10:52'),
(487, 341, 20, 1, NULL, 600, 600, 10, '2023-12-18 17:51:58', '2026-02-03 17:10:52'),
(488, 342, 19, 1, NULL, 400, NULL, 12, '2023-12-18 17:53:23', '2026-02-03 17:10:24'),
(489, 342, 20, 1, NULL, 750, 750, 12, '2023-12-18 17:53:23', '2026-02-03 17:10:24'),
(490, 343, 19, 1, NULL, 320, NULL, 10, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(491, 343, 20, 1, NULL, 600, 600, 10, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(492, 343, 21, 1, NULL, 850, 850, 10, '2023-12-18 17:54:41', '2026-02-03 17:07:22'),
(493, 344, 19, 1, NULL, 300, NULL, 10, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(494, 344, 20, 1, NULL, 550, NULL, 10, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(495, 344, 21, 1, NULL, 800, NULL, 10, '2023-12-18 17:56:15', '2026-02-03 17:04:33'),
(516, 350, 3, 1, NULL, 2480, NULL, NULL, '2024-01-29 15:43:04', '2024-01-29 16:48:38'),
(519, 353, 3, 1, NULL, 1500, 1490, NULL, '2024-01-29 16:53:40', '2024-01-29 18:42:58'),
(520, 354, 3, 1, NULL, 2780, NULL, NULL, '2024-01-29 17:39:13', '2024-01-29 17:40:24'),
(530, 361, 3, 1, NULL, 1450, 1250, NULL, '2024-03-05 23:34:34', '2024-03-05 23:34:34'),
(533, 364, 3, 1, NULL, 850, 0, NULL, '2024-03-29 16:09:36', '2024-03-29 16:09:36'),
(534, 365, 3, 1, NULL, 1650, 0, NULL, '2024-03-29 16:12:41', '2024-03-29 16:12:41'),
(535, 366, 3, 1, NULL, 1250, 1050, 200, '2024-03-29 16:13:43', '2025-12-10 05:29:48'),
(536, 367, 3, 1, NULL, 859, 500, 100, '2024-03-29 16:14:54', '2025-12-09 13:32:22'),
(540, 370, 7, 28, NULL, 2800, 2500, 20, '2026-02-19 12:54:52', '2026-02-19 12:54:52'),
(541, 370, 7, 31, NULL, 2800, 2500, 20, '2026-02-19 12:54:52', '2026-02-19 12:54:52'),
(542, 370, 6, 1, NULL, 2800, 2500, 20, '2026-02-19 12:54:52', '2026-02-19 12:54:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bangla_text`
--
ALTER TABLE `bangla_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_ips`
--
ALTER TABLE `blocked_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_products`
--
ALTER TABLE `combo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_section_images`
--
ALTER TABLE `home_section_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sliders`
--
ALTER TABLE `landing_page_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_product_images`
--
ALTER TABLE `review_product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangla_text`
--
ALTER TABLE `bangla_text`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocked_ips`
--
ALTER TABLE `blocked_ips`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_products`
--
ALTER TABLE `combo_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `home_section_images`
--
ALTER TABLE `home_section_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `landing_page_sliders`
--
ALTER TABLE `landing_page_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_product_images`
--
ALTER TABLE `review_product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1717;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
