-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Mei 2017 pada 08.28
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homerunstore_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `addressline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `addresses`
--

INSERT INTO `addresses` (`id`, `addressline`, `city`, `state`, `zip`, `country`, `phone`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'asdasd', 'asdasd', 'asdads', 2342, 'adad', '32424', '2017-05-20 16:55:40', '2017-05-20 16:55:40', 1),
(2, 'ewqeq', 'qeqwe', 'qwe', 1211, 'asda', '1234567', '2017-05-20 17:11:32', '2017-05-20 17:11:32', 1),
(3, 'asdad', 'qeqe', 'awe', 1231, 'asdad', '12313', '2017-05-20 22:42:07', '2017-05-20 22:42:07', 2),
(4, 'asdasd', 'asds', 'sfs', 3242, 'sdfsd', '24234', '2017-05-21 00:32:30', '2017-05-21 00:32:30', 2),
(5, 'asdasd', 'sdsd', 'sds', 2342, 'adsa', '234', '2017-05-21 00:35:26', '2017-05-21 00:35:26', 2),
(6, 'hehe', 'hehe', 'hehe', 234234, 'hehe', '234234', '2017-05-24 10:07:46', '2017-05-24 10:07:46', 2),
(7, 'z', 'z', 'z', 1, 'z', '1', '2017-05-24 13:08:32', '2017-05-24 13:08:32', 2),
(8, 'c', 'c', 'c', 2, 'c', '3', '2017-05-24 13:17:57', '2017-05-24 13:17:57', 2),
(9, 'v', 'v', 'v', 3, 'v', '4', '2017-05-24 13:19:06', '2017-05-24 13:19:06', 2),
(10, 'b', 'b', 'b', 3, 'b', '3', '2017-05-24 13:46:36', '2017-05-24 13:46:36', 2),
(11, 'm', 'm', 'm', 4, 'm', '4', '2017-05-24 13:54:11', '2017-05-24 13:54:11', 2),
(12, 'w', 'w', 'w', 2, 'q', '3', '2017-05-24 13:57:01', '2017-05-24 13:57:01', 2),
(13, 'q', 'q', 'q', 3, 'q', '4', '2017-05-24 13:58:09', '2017-05-24 13:58:09', 2),
(14, 'wqwqw', 'aa', 'aa', 121, 'adad', '1123', '2017-05-24 22:35:03', '2017-05-24 22:35:03', 1),
(15, 'qqq', 'qqq', 'qqq', 1231, 'qeqwe', '1313', '2017-05-24 23:04:51', '2017-05-24 23:04:51', 1),
(16, '123123', '13313', '31231', 31231, '31231', '31231', '2017-05-24 23:20:12', '2017-05-24 23:20:12', 1),
(17, 'hrh', 'hfghf', 'hfgh', 3453, 'fghfg', '34535', '2017-05-24 23:20:54', '2017-05-24 23:20:54', 1),
(18, 'trete', 'rtyr', '3453', 123, 'fgdgf', '3453', '2017-05-24 23:22:45', '2017-05-24 23:22:45', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Glove', '2017-05-20 16:51:01', '2017-05-20 16:51:01'),
(4, 'Bat', '2017-05-20 16:51:08', '2017-05-20 16:51:08'),
(5, 'Batting Glove', '2017-05-20 16:51:17', '2017-05-20 16:51:17'),
(6, 'Shoes', '2017-05-20 16:51:23', '2017-05-20 16:51:23'),
(7, 'Helmet', '2017-05-20 16:51:29', '2017-05-20 16:51:29'),
(8, 'Catcher set', '2017-05-24 22:44:18', '2017-05-24 22:44:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_20_205340_create_products_table', 1),
(4, '2017_05_20_205516_create_categories_table', 1),
(5, '2017_05_20_205610_add_price_to_products_table', 1),
(6, '2017_05_20_205729_add_admin_column_to_users', 1),
(7, '2017_05_20_205810_create_addresses_table', 1),
(8, '2017_05_20_205900_add_user_id_to_address_table_new', 1),
(9, '2017_05_20_205942_create_orders_table', 1),
(10, '2017_05_20_210012_create_order_product_table', 1),
(11, '2017_05_24_222216_create_messages_table', 2),
(12, '2017_05_25_011325_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `delivered` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `delivered`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1, '2017-05-21 00:35:50', '2017-05-24 23:12:02'),
(2, 2, 605000, 1, '2017-05-24 13:12:17', '2017-05-24 21:58:45'),
(3, 1, 272, 1, '2017-05-24 22:36:12', '2017-05-24 23:12:01'),
(4, 1, 182, 1, '2017-05-24 23:05:03', '2017-05-24 23:11:58'),
(5, 1, 182, 0, '2017-05-24 23:05:23', '2017-05-24 23:05:23'),
(6, 1, 182, 1, '2017-05-24 23:05:49', '2017-05-24 23:12:11'),
(7, 1, 182, 0, '2017-05-24 23:05:54', '2017-05-24 23:05:54'),
(8, 1, 182, 0, '2017-05-24 23:06:01', '2017-05-24 23:06:01'),
(9, 1, 182, 0, '2017-05-24 23:06:50', '2017-05-24 23:06:50'),
(10, 1, 182, 0, '2017-05-24 23:07:34', '2017-05-24 23:07:34'),
(11, 1, 182, 0, '2017-05-24 23:07:39', '2017-05-24 23:07:39'),
(12, 1, 182, 0, '2017-05-24 23:07:46', '2017-05-24 23:07:46'),
(13, 1, 182, 0, '2017-05-24 23:08:34', '2017-05-24 23:08:34'),
(14, 1, 42, 0, '2017-05-24 23:21:06', '2017-05-24 23:21:06'),
(15, 1, 42, 0, '2017-05-24 23:22:54', '2017-05-24 23:22:54'),
(16, 1, 42, 0, '2017-05-24 23:24:53', '2017-05-24 23:24:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 500000.00, NULL, NULL),
(2, 1, 3, 1, 225.00, NULL, NULL),
(3, 2, 4, 1, 150.00, NULL, NULL),
(4, 2, 5, 1, 150.00, NULL, NULL),
(5, 2, 6, 1, 150.00, NULL, NULL),
(6, 2, 7, 1, 150.00, NULL, NULL),
(7, 2, 8, 1, 150.00, NULL, NULL),
(8, 2, 9, 1, 150.00, NULL, NULL),
(9, 2, 10, 1, 150.00, NULL, NULL),
(10, 2, 11, 1, 150.00, NULL, NULL),
(11, 2, 12, 1, 150.00, NULL, NULL),
(12, 2, 13, 1, 150.00, NULL, NULL),
(13, 3, 14, 1, 35.00, NULL, NULL),
(14, 3, 15, 1, 35.00, NULL, NULL),
(15, 3, 16, 1, 35.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `size`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'GLOBAL ELITE INFIELD GLOVE', 'Counter Balanced: Weight is removed from the finger tips', 'large', '225', '312254_R520.png', 3, '2017-05-20 17:10:24', '2017-05-24 22:45:41'),
(2, 'GENERATION SENIOR YOUTH (-8)', 'In fact, we\'ve worked as hard as you over the past 110 years by creating the highest-performing baseball gear.', 'small', '150', '340403_9000_01.png', 4, '2017-05-20 19:00:27', '2017-05-24 22:42:21'),
(3, 'MBH601 PROSPECT BATTER\'S HELMET', 'MBH601 Prospect Batter\'s Helmet . . .', 'medium', '35', '380315_1200.png', 7, '2017-05-20 19:03:32', '2017-05-24 22:31:19'),
(4, 'MBH101 AEROLITE BATTER\'S HELMET', 'In-mold process significantly reduces weight while maintaining a high standard of protection.', 'large', '75', '380370_0000.png', 7, '2017-05-20 19:06:11', '2017-05-24 22:32:39'),
(5, '9-SPIKE ADVANCED MIZUNO PRO ELITE', '9-Spike Advanced Mizuno Pro Elite: The Soul of Your GameThe 9-Spike® metal cleat for the complete player. Lightweight Pro model with premium suede upper for ultim . .', 'medium', '125', '320440_9000.png', 6, '2017-05-20 19:08:19', '2017-05-24 22:32:19'),
(6, 'GHOST SOFTBALL BAT (-10)', 'Mizuno’s newest 2-Piece bat takes our lineup to another level. We took our Patented 2-Piece Link™ construction joining our Black Onyx™ Carbon barrel and handle . . .', 'large', '350', '340443_0020_01.png', 4, '2017-05-24 22:39:36', '2017-05-24 22:39:36'),
(7, 'PROSPECT SERIES GLA5 CATCHER\'S MITT', 'PROSPECT FAST PITCH SERIES GXS101 CATCHER\'S MITT: CRAFTED FOR YOUNGER PLAYER', 'medium', '60', '311663_FR90.png', 3, '2017-05-24 22:40:28', '2017-05-24 22:47:59'),
(8, 'YOUTH SAMURAI BOX SET CATCHER PROTECTOR\'S JAPAN', 'Youth Samurai Box Set: No Fear Protective Gear . . .', 'small', '245', '380222_9091.png', 8, '2017-05-24 22:44:54', '2017-05-24 22:54:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$7vb5Hpz8LCO7/DJJVz/FkuyJykBCRgm.PUphWT.6x1FLCwKezR8bi', 'M98f00SvCoWBTnVfVuD8ebAlZZNyk3dTGO2Jl1mjX59tvjfy5GAoAjO6jpwc', '2017-05-20 15:53:30', '2017-05-20 15:53:30', 1),
(2, 'test', 'test@test.com', '$2y$10$L42.fEXnRdbyRFx1r8iGfOeCjwxqGtAARDBjBLQtpFCcx6GeeC2lm', '8gGlTfhR2ufhblKFMkLaqjZrLl9WbMzHDJtgdz5zztWBYHJGwXwesrVgBmoa', '2017-05-20 22:09:04', '2017-05-20 22:09:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
