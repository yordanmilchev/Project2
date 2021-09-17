-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 03:58 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `chat_room_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(30, 41, 5, 'kpr', '2021-09-10 15:15:58', '2021-09-10 15:15:58'),
(31, 80, 1, 'zdravei', '2021-09-15 03:49:22', '2021-09-15 03:49:22'),
(32, 87, 1, 'yes', '2021-09-15 06:55:07', '2021-09-15 06:55:07'),
(33, 87, 1, 'ei', '2021-09-16 10:01:42', '2021-09-16 10:01:42'),
(34, 47, 1, 'hei', '2021-09-16 10:04:42', '2021-09-16 10:04:42'),
(35, 89, 1, 'zdr', '2021-09-16 11:25:46', '2021-09-16 11:25:46'),
(36, 89, 1, '3', '2021-09-16 11:28:37', '2021-09-16 11:28:37'),
(37, 48, 1, 'o', '2021-09-16 11:35:36', '2021-09-16 11:35:36'),
(38, 40, 3, '6', '2021-09-16 11:38:29', '2021-09-16 11:38:29'),
(39, 40, 1, '66', '2021-09-16 11:38:38', '2021-09-16 11:38:38'),
(63, 57, 1, 'Hi hello how are you', '2021-09-17 10:45:31', '2021-09-17 10:45:31'),
(64, 57, 12, 'good thanks', '2021-09-17 10:46:05', '2021-09-17 10:46:05'),
(65, 57, 12, 'you', '2021-09-17 10:46:09', '2021-09-17 10:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(40, 'sTanka - third', '2021-09-10 15:13:18', '2021-09-10 15:13:18'),
(41, 'PenchoBG - sTanka', '2021-09-10 15:15:36', '2021-09-10 15:15:36'),
(44, 'PenchoBG - svetla', '2021-09-10 15:43:04', '2021-09-10 15:43:04'),
(47, 'ym - PenchoBG', '2021-09-15 06:54:58', '2021-09-15 06:54:58'),
(48, 'ym - svetla', '2021-09-16 11:25:30', '2021-09-16 11:25:30'),
(51, 'Snejan - qba5', '2021-09-16 14:05:04', '2021-09-16 14:05:04'),
(52, 'Snejan - PenchoBG', '2021-09-16 14:05:05', '2021-09-16 14:05:05'),
(54, 'Snejan - qba3', '2021-09-16 14:05:07', '2021-09-16 14:05:07'),
(57, 'Snejan - ym', '2021-09-17 10:27:00', '2021-09-17 10:27:00'),
(61, 'qba - Snejan', '2021-09-17 10:55:51', '2021-09-17 10:55:51');

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
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `friend_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `room_id`, `created_at`, `updated_at`) VALUES
(73, 5, 3, 40, '2021-09-10 15:13:18', '2021-09-10 15:13:18'),
(74, 3, 5, 40, '2021-09-10 15:13:18', '2021-09-10 15:13:18'),
(75, 6, 5, 41, '2021-09-10 15:15:36', '2021-09-10 15:15:36'),
(76, 5, 6, 41, '2021-09-10 15:15:36', '2021-09-10 15:15:36'),
(81, 6, 2, 44, '2021-09-10 15:43:04', '2021-09-10 15:43:04'),
(82, 2, 6, 44, '2021-09-10 15:43:04', '2021-09-10 15:43:04'),
(87, 1, 6, 47, '2021-09-15 06:54:58', '2021-09-15 06:54:58'),
(88, 6, 1, 47, '2021-09-15 06:54:58', '2021-09-15 06:54:58'),
(89, 1, 2, 48, '2021-09-16 11:25:30', '2021-09-16 11:25:30'),
(90, 2, 1, 48, '2021-09-16 11:25:30', '2021-09-16 11:25:30'),
(95, 12, 11, 51, '2021-09-16 14:05:04', '2021-09-16 14:05:04'),
(96, 11, 12, 51, '2021-09-16 14:05:04', '2021-09-16 14:05:04'),
(97, 12, 6, 52, '2021-09-16 14:05:05', '2021-09-16 14:05:05'),
(98, 6, 12, 52, '2021-09-16 14:05:05', '2021-09-16 14:05:05'),
(101, 12, 9, 54, '2021-09-16 14:05:07', '2021-09-16 14:05:07'),
(102, 9, 12, 54, '2021-09-16 14:05:07', '2021-09-16 14:05:07'),
(107, 12, 1, 57, '2021-09-17 10:27:00', '2021-09-17 10:27:00'),
(108, 1, 12, 57, '2021-09-17 10:27:00', '2021-09-17 10:27:00');

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
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_30_192623_create_sessions_table', 1),
(7, '2021_08_30_145428_create_chat_rooms_table', 2),
(8, '2021_08_30_145444_create_chat_messages_table', 2),
(9, '2021_09_04_055211_create_friends_table', 3);

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
('kt4FjzaiUQj8RJIQe5sYQ1GvTEBTXYzNM5VSpn8j', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.47', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieUNidGE1bmRuM2hZU1FURmNrV1VaT256UlZVR3d5Q29UNEllVXM4QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Blb3BsZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO319', 1631887049),
('Yqn7RjXv8SGDBDB3ibgVBP1qeuo6g0z2rElaCIBx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.47', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRk5MRzdXWXU4S25kUjB1N2NaNHhZMDNTUkc0N1lBQ2IzNERDd09EZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631887036);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'ym', '1@abv.bg', NULL, '$2y$10$lNBA0oRSbOhWnXq05jN0pu9ZqoQGJWZT3rox0Qv0R.GpGKJhuSLV6', NULL, NULL, '3h3O7PlkF8s3eoZmo1l4765PtysrhezInvbMHebUy8GJI3pfhAolRN3Eu2dW', NULL, NULL, '2021-08-30 16:38:30', '2021-09-08 10:50:40'),
(2, 'svetla', '123@abv.bg', NULL, '$2y$10$dKC1WdvI7cKjkbbK1B7l0uralEJhgygLPVFNDm3h5YyAfmNg/Ue4a', NULL, NULL, NULL, NULL, NULL, '2021-08-31 12:47:43', '2021-08-31 12:47:43'),
(3, 'third', '3@abv.bg', NULL, '$2y$10$ib4LRBXdPb0M2AZbBUvdautk9vdmTy8IeGa7VaZ35g5QM74vYtJX6', NULL, NULL, NULL, NULL, NULL, '2021-09-05 07:17:36', '2021-09-05 07:17:36'),
(5, 'sTanka', '4@abv.bg', NULL, '$2y$10$xW8Po6RDHnCwF4w9OUS2ieDIHQV.1AObHg50NBFQ9GDJWixKKGzL6', NULL, NULL, NULL, NULL, NULL, '2021-09-05 08:27:34', '2021-09-05 08:27:34'),
(6, 'PenchoBG', 'pencho@abv.bg', NULL, '$2y$10$d8zh6wj4IkpDP6e1JyyyDugpbQJ.y2DaDtRl7KLEBMXJ8xtLhdyfO', NULL, NULL, NULL, NULL, NULL, '2021-09-10 15:14:38', '2021-09-10 15:14:38'),
(7, 'qba', 'qba@abv.bg', NULL, '$2y$10$KFh0Ns90vQd0U5ICPeEGa.dBtDVpLY4gr5n3.41cI5ck9/6.iFBRi', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:49:20', '2021-09-16 13:49:20'),
(8, 'qba2', 'qba2@abv.bg', NULL, '$2y$10$msN0/y2E4f2uC90RLbxOsuBunrSIRXKKkib1vNncacCiD8d66j4OG', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:49:46', '2021-09-16 13:49:46'),
(9, 'qba3', 'qba3@abv.bg', NULL, '$2y$10$pGwmu5oYULxGqdHNXy5akuWmdq8ZcZKuDf2avlJEplR0YWypVy6DW', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:50:25', '2021-09-16 13:50:25'),
(10, 'qba4', 'qba4@abv.bg', NULL, '$2y$10$BknpLI79VukvGEB38G6CoehQstOfOmSiB1daSCnCRISD.2XjdSHmi', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:50:47', '2021-09-16 13:50:47'),
(11, 'qba5', 'qba5@abv.bg', NULL, '$2y$10$fbQAvq8xm7q5Q8A7r74SdeVeBZb/JlgRlMjjYLoGs0X1gkz64auTC', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:51:07', '2021-09-16 13:51:07'),
(12, 'Snejan', 'snejan@abv.bg', NULL, '$2y$10$571hgP1Tgm1s1srdN4006u9EvNTbbs0Ll.f2ubfScX3IJDUlg9quK', NULL, NULL, NULL, NULL, NULL, '2021-09-16 13:51:36', '2021-09-16 13:51:36'),
(13, 'qnko', 'qnko@abv.bg', NULL, '$2y$10$3K6PFd8A37s9bNFrbMnBxextI.6iOlaoYRKpHIlHZ1PoDlbKWsz0e', NULL, NULL, NULL, NULL, NULL, '2021-09-16 14:14:26', '2021-09-16 14:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
