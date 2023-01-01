-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 12:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `usia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ktp`, `nama`, `no_hp`, `alamat`, `usia`, `created_at`, `updated_at`) VALUES
('2571593518', 'Hasipp', '08777712764', 'Genuk', 15, '2022-12-31 00:25:10', '2022-12-31 00:25:10'),
('5588442289', 'Earl', '089754314211', 'Jangli', 26, '2022-12-30 23:53:12', '2022-12-31 00:17:20');

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
(5, '2022_12_28_041530_create_produks_table', 1),
(6, '2022_12_28_041714_create_pesanans_table', 1),
(7, '2022_12_28_041731_create_customers_table', 1),
(8, '2022_12_28_041731_create_pelanggan_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `usia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `kode_pemesanan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `resi` varchar(255) NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`kode_pemesanan`, `jumlah`, `tanggal_pemesanan`, `tanggal_pengiriman`, `resi`, `kurir`, `nama_produk`, `produk_id`, `created_at`, `updated_at`) VALUES
('12327', 1, '2022-12-31', '2023-01-01', 'JT197UTB6', 'YTTA', 'Iphone 11 Pro Max', '3', '2022-12-31 00:14:37', '2022-12-31 00:16:49'),
('15271', 3, '2022-12-31', '2023-01-03', 'JT6UYF45', 'YTTA', 'Samsung A32 5G', '9', '2022-12-31 06:01:10', '2022-12-31 06:01:10'),
('17231', 2, '2023-01-02', '2023-01-04', 'JT9JL56HI', 'YTTA', 'Xiaomi Redmi Note 11', '6', '2022-12-31 00:26:34', '2022-12-31 00:26:34'),
('45281', 1, '2022-12-31', '2023-01-01', 'JT83GHY5', 'YTTA', 'Samsung J2 Prime', '4', '2022-12-31 00:20:27', '2022-12-31 00:20:27'),
('73561', 3, '2022-12-31', '2023-01-02', 'JT7YTT67', 'YTTA', 'Xiaomi Redmi Note 11', '6', '2022-12-31 00:27:15', '2022-12-31 00:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `minimal_pesan` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama`, `harga`, `jenis`, `minimal_pesan`, `kondisi`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, 'Iphone 11 Pro Max', 9000000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 00:13:35', '2022-12-31 00:15:57'),
(4, 'Samsung J2 Prime', 1200000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 00:18:18', '2022-12-31 00:18:18'),
(5, 'Oppo K3', 3500000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 00:18:51', '2022-12-31 00:18:51'),
(6, 'Xiaomi Redmi Note 11', 3000000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 00:19:29', '2022-12-31 00:19:29'),
(7, 'Asus Zenfone Max Pro M2', 2500000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 05:59:10', '2022-12-31 05:59:10'),
(8, 'Xiaomi Mi 12', 5000000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 05:59:55', '2022-12-31 05:59:55'),
(9, 'Samsung A32 5G', 3500000, 'Gadget', 1, 'Baru', 'Barang Garansi 1 Tahun', '2022-12-31 06:00:29', '2022-12-31 06:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'M.Hasif Rahman Al Zaki', 'G.231.21.0080', 'hasippo12327@gmail.com', NULL, '$2y$10$zTKnABnpChfJ/aHNj4j96uviTMYMiVJWUBTiclcAXQgt.KgzVkJ02', NULL, '2022-12-31 02:31:38', '2022-12-31 02:31:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ktp`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ktp`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`kode_pemesanan`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
