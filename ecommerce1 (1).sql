-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2022 pada 16.24
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Sepatu', NULL, NULL),
(4, 'Hoodie', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_09_002219_create_categories_table', 1),
(5, '2022_09_29_183913_create_products_table', 1),
(6, '2022_11_01_064151_create_carts_table', 1),
(7, '2022_11_10_005838_create_transactions_table', 1),
(8, '2022_11_10_011836_create_transaction_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'Ulises', '756111', 'Illo reiciendis ut ipsa ea dolores exercitationem. Consequatur aspernatur optio ut doloremque. Nisi quo illum rerum dignissimos similique porro quis.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(2, 1, 'Reid', '892817', 'Vitae molestiae molestiae cum placeat. Rem odit occaecati doloribus et fugiat odit. Et quod eum explicabo ea eaque vel.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(3, 2, 'Maxwell', '614098', 'Enim sed non voluptate sit perspiciatis praesentium. Unde modi aliquid nam quis et. Explicabo architecto quia deserunt fugit sequi.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(4, 2, 'Rocky', '880473', 'Amet pariatur labore quae ipsa occaecati omnis ut. Quia neque quisquam quibusdam architecto nulla.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(5, 4, 'Deshawn', '518249', 'Eum deserunt ut repellat sit. Voluptatibus porro aliquid molestiae est est doloremque quae. Quia explicabo velit doloremque enim ipsum id cupiditate.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(6, 3, 'Samson', '605259', 'Quidem fuga ea dolores rerum molestiae aut minus ab. Accusamus dolorem libero dolor provident. Omnis sunt alias ab sunt aut.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(7, 1, 'Gregory', '392696', 'Ut ea facilis sunt. Rerum voluptates nulla ipsam et recusandae eum libero.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(8, 2, 'Lorenza', '207132', 'Fugiat unde voluptatem nihil omnis officiis natus. Delectus vel inventore delectus fugiat possimus laudantium.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(9, 1, 'Fausto', '596122', 'Est illum excepturi ut vel nemo saepe. Id similique a id doloribus et repudiandae.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(10, 2, 'Melvin', '874868', 'Eius harum voluptas atque qui velit ipsam sequi. Est nostrum placeat et corporis aliquid quo nostrum. Harum molestiae occaecati autem sunt velit.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(11, 4, 'Wilmer', '558320', 'Eum corrupti non dolorem non praesentium assumenda veritatis rerum. Velit mollitia animi culpa suscipit. Ea pariatur nemo blanditiis.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(12, 4, 'Darrion', '745675', 'Eligendi eum et dicta facere. Et voluptatem fugiat est ab debitis et et qui.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(13, 1, 'Cory', '877995', 'Excepturi et nisi accusamus. Natus sint nemo dolores aut.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(14, 4, 'Sanford', '410137', 'Ducimus praesentium praesentium rerum qui incidunt. Laudantium quia nobis quaerat qui.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(15, 2, 'Kristopher', '188847', 'Rerum est placeat quia nam itaque asperiores quod. Quo aliquam eum est earum vitae natus placeat.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(16, 3, 'Leopoldo', '507885', 'Excepturi ut fugiat accusantium repellat quod non sapiente. Unde ipsam consequatur necessitatibus. Cum atque soluta aperiam quia.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(17, 2, 'Ernesto', '984886', 'Iste nisi quas cumque veritatis deserunt quas corrupti. Facere possimus eligendi eligendi molestias ut accusantium architecto.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(18, 1, 'Trey', '988988', 'Consequatur quasi quia sequi sed. Quia nisi autem modi doloremque. Labore nihil voluptates consequuntur aliquam qui deleniti.', '/storage/images/product.jpg', '2022-11-18 21:26:36', '2022-11-18 21:26:36'),
(19, 4, 'Keanu', '421086', 'Nihil nisi tempora nesciunt laborum enim. Quisquam tempore consequuntur qui est consequatur quia. Distinctio maiores qui quae.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(20, 3, 'Preston', '215537', 'Neque consequuntur sed nulla sit. Consectetur aut pariatur ad fugiat.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(21, 2, 'Kelley', '407578', 'Consequuntur dolores consequuntur aut id omnis necessitatibus unde. Eos fugit maxime ducimus et quo iure aliquid. Fugiat voluptates nobis ad non.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(22, 2, 'Tomas', '325819', 'Dolore eum rem similique delectus explicabo dignissimos numquam deleniti. Hic fugit voluptas laudantium quod ipsum magni voluptate.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(23, 1, 'Cesar', '456813', 'Accusantium aut in dolorem et ea. Distinctio rerum reiciendis velit sunt dignissimos. Omnis dolorum maxime quibusdam quo a aut.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(24, 1, 'Gavin', '307675', 'Debitis numquam labore excepturi. Officia voluptatem aperiam sunt quae nostrum. Qui eos reiciendis odit molestiae.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37'),
(25, 2, 'Enrique', '294684', 'Veniam sed maiores ut nesciunt. Dolores inventore est nostrum eos ut. Sint labore rerum accusamus ipsa sunt voluptate.', '/storage/images/product.jpg', '2022-11-18 21:26:37', '2022-11-18 21:26:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-11 08:22:45', '2022-12-11 08:22:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
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
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, '2022-12-11 08:22:45', '2022-12-11 08:22:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gibran', 'gibranabut17@gmail.com', NULL, '$2y$10$REb/pBiNSlox5qrYFRpLhOgT6932sQ8LjKL1rYOQvKKvUmXFvFnzq', 'Rasamala', '081517512347', NULL, '2022-12-11 08:22:22', '2022-12-11 08:22:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
