-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 07:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-11-15 23:04:23', '2022-11-15 23:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Hoodie', NULL, NULL),
(4, 'Topi', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_22_011639_create_categories_table', 1),
(5, '2022_09_22_023640_create_products_table', 1),
(6, '2022_10_26_171301_create_carts_table', 1),
(7, '2022_11_09_034419_create_transactions_table', 1),
(8, '2022_11_09_034601_create_transaction_details_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Armand', 899440, 'Sunt quos quia nisi aut explicabo libero. Est velit sit ex consequatur.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(2, 4, 'Cruz', 273535, 'Voluptatem maxime similique et saepe beatae. Rem voluptatum nihil eaque earum et suscipit. Nobis odit id facere totam.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(3, 4, 'Chadrick', 577698, 'Enim unde rerum omnis. Voluptatem blanditiis excepturi expedita laborum doloribus.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(4, 1, 'Isidro', 444507, 'Quia eum repudiandae explicabo ea aut. Et natus atque fugit reiciendis maiores quidem.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(5, 1, 'Valentin', 784174, 'Et natus aut commodi deleniti voluptatum ipsam quod. Id corrupti est aspernatur animi tempora ut in optio. Sunt laboriosam autem odio fugiat id.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(6, 4, 'Leland', 463191, 'Totam nulla nemo aspernatur at earum alias eum numquam. Earum aut ducimus dolor molestiae praesentium.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(7, 3, 'Quinton', 731124, 'Et aut sit atque doloribus dolorem et quibusdam. Dolores quam voluptatibus aliquam quas adipisci pariatur.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(8, 4, 'Giles', 617456, 'Enim ullam maiores aspernatur maxime. Et dolores necessitatibus dolorem optio dolor.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(9, 1, 'Jabari', 119664, 'Reiciendis aut minus quos. Qui facilis est odio nobis. Qui ut repellendus quis debitis est atque ut.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(10, 3, 'Janick', 830360, 'Consequatur doloribus et repudiandae nisi placeat est cumque deleniti. Fugit ut odit eos debitis alias quisquam. Aut autem consectetur autem exercitationem ex veritatis.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(11, 1, 'Nico', 908332, 'Velit et ut qui enim quia doloremque id nostrum. Odio sequi minima ab sunt.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(12, 3, 'Nasir', 172133, 'Possimus nesciunt facilis enim eligendi quod esse qui. Voluptas ut id veniam atque veritatis maiores molestiae minima. Magnam nesciunt in quo ea quisquam quia consequatur harum.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(13, 4, 'Isai', 944251, 'Eligendi quo assumenda sed itaque eum. Incidunt et ea placeat et non qui harum. Sint a deleniti iusto voluptas nesciunt autem.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(14, 2, 'Jerrold', 734917, 'Vel et iure voluptatem doloribus voluptas possimus. Temporibus quidem porro rerum dignissimos suscipit quia.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(15, 4, 'Columbus', 308818, 'Ut adipisci adipisci dolor ipsum qui. Quia vel aut maiores nihil saepe suscipit. Non omnis quas aut magnam.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(16, 2, 'Lionel', 507198, 'Officia est veniam sit ducimus dignissimos quia nemo. Sint sunt eius voluptas vel vero commodi eum.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(17, 2, 'Sean', 331179, 'Enim vel et velit assumenda cupiditate est. Quidem iusto rerum qui maxime.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(18, 1, 'Jordyn', 823265, 'Itaque nemo assumenda quod atque vel exercitationem nostrum. Et debitis reprehenderit asperiores recusandae fugit. Et quia amet quia est.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(19, 4, 'Vito', 727232, 'Qui blanditiis placeat dolor voluptates. Excepturi soluta qui aliquam quasi fugit dolorem. Voluptatem expedita et dolores voluptatibus ullam rem nulla.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(20, 3, 'Cale', 673823, 'Est exercitationem ducimus quia qui quod aut. Qui consequatur est nihil voluptates ipsum cum facilis. Qui et omnis velit doloremque corrupti.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(21, 3, 'Erik', 811772, 'Cumque cumque dolor qui est inventore ex totam. Provident ipsum veniam modi voluptas alias cupiditate sit qui. Voluptate tempora exercitationem aut qui qui.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(22, 2, 'Adrain', 118180, 'Facilis laborum qui aperiam omnis maxime. Ratione ut similique natus explicabo.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(23, 1, 'Armani', 541648, 'Officiis qui dolor maxime magni minima. Rerum id sint magnam qui consequuntur nobis vel ipsam.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(24, 3, 'Emmanuel', 487438, 'Id et id quia aut tempore architecto. Delectus iure neque deleniti mollitia.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(25, 2, 'Ambrose', 171080, 'Tempore soluta qui architecto ea aut. Corrupti et ipsa quae autem ratione est alias. Tempore qui eum id quos.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(26, 1, 'Alford', 563863, 'Aut placeat voluptates ullam est autem. Similique veniam sint pariatur magni eaque. Perspiciatis rerum cumque ut eum.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(27, 4, 'Lance', 865442, 'Officia omnis ea molestiae aut beatae eos iusto. Possimus odio sunt recusandae ullam corporis.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(28, 4, 'Edd', 771492, 'Voluptas ipsam ad atque ipsum rem et. Et voluptatem soluta ea et et id aliquam natus.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(29, 3, 'Chaz', 949101, 'Praesentium adipisci incidunt necessitatibus atque facere quisquam nesciunt. Itaque est nemo quo voluptatem eos. Eum saepe quia aut quaerat et ut.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(30, 3, 'Emery', 468615, 'Id voluptates debitis recusandae. Aut repudiandae id et consequatur esse.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(31, 2, 'Damian', 128166, 'Quis voluptatem accusantium qui maxime. Asperiores cum rem quis fugiat quas odio et. Id a quia ut fugiat delectus.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(32, 4, 'Olin', 139153, 'Est ut vero voluptatum quia omnis exercitationem esse. Sed veniam soluta molestias. Et ut nisi minima et.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(33, 1, 'Verner', 170220, 'Deserunt molestias molestiae a et. Omnis praesentium nesciunt libero rerum ex.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(34, 4, 'Elliott', 128599, 'Perferendis amet aut cumque at. Est voluptates consequatur reprehenderit quia.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(35, 3, 'Brown', 110705, 'Ut pariatur soluta aut et. Est sit nisi natus assumenda veritatis.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(36, 3, 'Eli', 100083, 'Non unde est in harum. Qui incidunt repellat aut qui illum dolores quasi. Laborum illum est officiis provident unde illum blanditiis possimus.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(37, 2, 'Antone', 269402, 'Est expedita totam autem tempore culpa consequuntur. Et fugit modi nemo necessitatibus ut.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(38, 4, 'Jaylan', 596394, 'Ut dolorem est odit beatae. Labore voluptas non molestiae corrupti qui.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(39, 2, 'Erik', 700232, 'Rerum eum eos incidunt expedita. Consequuntur omnis iste quae iure voluptas nobis. Molestias similique dolorem ut voluptas.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(40, 4, 'Wendell', 757415, 'Ullam sit ut quia voluptatibus qui sit. Inventore neque possimus quas repellat aut. Dolorum fuga voluptatem quo sint.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(41, 4, 'Dock', 216230, 'Esse aut itaque aut consequatur odio eius delectus quos. Enim temporibus consequatur nulla odio facilis itaque. Dolores dignissimos omnis natus illum nisi sint.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(42, 2, 'Angus', 412173, 'Non rerum sunt eaque et adipisci ut tempore. Illum dolores id et illum quas. Consequuntur omnis et fugiat labore molestias ea voluptatibus.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(43, 4, 'Cloyd', 784631, 'Iusto ducimus cumque dolorem voluptas deleniti hic commodi. Sed sit aspernatur natus. Ducimus alias rerum ut sapiente.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(44, 2, 'Santino', 636473, 'Quis consequatur dignissimos voluptate. Debitis error et voluptas laboriosam porro non dicta.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(45, 1, 'Narciso', 302799, 'Minima ut perspiciatis explicabo officia vero vel in veniam. Iusto omnis cum iure ratione et sit aut. Et corrupti libero perferendis expedita soluta nam.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(46, 4, 'Matteo', 991752, 'Velit laboriosam laboriosam cupiditate iste. Qui recusandae consectetur iusto dolorum eligendi est et.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(47, 1, 'Dion', 278296, 'Est officiis nam quia accusantium illo. Minus sint omnis qui qui dignissimos ut molestiae ipsum.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(48, 1, 'Giuseppe', 912535, 'Quasi aliquam necessitatibus quae est aut corrupti harum. Quasi iure consectetur qui deleniti consequatur.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(49, 2, 'Luis', 291078, 'Omnis et voluptates consequatur commodi quia eos et ex. Repellendus harum occaecati magni harum quia numquam et quae. Aut fuga pariatur iusto ut omnis.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09'),
(50, 4, 'Bobby', 117504, 'Minus dolore ipsum animi est. Aut accusamus aut aperiam ut vero et eligendi.', '/storage/images/product.jpg', '2022-11-08 21:11:09', '2022-11-08 21:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-15 23:04:28', '2022-11-15 23:04:28'),
(2, 1, '2022-11-15 23:04:36', '2022-11-15 23:04:36'),
(3, 1, '2022-11-15 23:13:29', '2022-11-15 23:13:29'),
(4, 2, '2022-11-15 23:15:30', '2022-11-15 23:15:30'),
(5, 2, '2022-11-30 18:47:27', '2022-11-30 18:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-11-15 23:04:28', '2022-11-15 23:04:28'),
(2, 2, 1, 1, '2022-11-15 23:04:36', '2022-11-15 23:04:36'),
(3, 3, 1, 1, '2022-11-15 23:13:29', '2022-11-15 23:13:29'),
(4, 4, 2, 10, '2022-11-15 23:15:30', '2022-11-15 23:15:30'),
(5, 5, 3, 1, '2022-11-30 18:47:27', '2022-11-30 18:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$3e8ZHfLpAr/fKiFk8c5gherBgBVyMlpKdXfoRTj.CWv1vb7X6Gzr.', 'Ciomas', '08214122003', NULL, '2022-11-15 20:55:44', '2022-11-15 20:55:44'),
(2, 'Muhammad Rafli Febrian', 'muhammadraflifebrian27@gmail.com', NULL, '$2y$10$dQ7zvV6e3T6UvyXrFHENLOC33Mn2rjDwX1TpWUTwvtts8zbn0LiBO', 'Ciapus', '082142086065', NULL, '2022-11-15 23:14:42', '2022-11-15 23:14:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
