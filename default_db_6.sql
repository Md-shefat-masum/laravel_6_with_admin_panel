-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2019 at 05:24 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `default_db_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_cruds`
--

CREATE TABLE `ajax_cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ajax_cruds`
--

INSERT INTO `ajax_cruds` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(81, 'shefat masum asdf', 'shefat masumadsf', 'uploads/ajaxCrud/image/FM5anSjNStDStDp9SmOXxfkUMGyiokMdOwRivLP5.jpeg', 1, '2019-10-27 01:33:16', '2019-10-27 07:33:09'),
(82, 'habi', 'sub title 2', 'uploads/ajaxCrud/image/X9ZxibcxEFgspoEOKm3t0zmlRB4QX74NSh1POhWR.jpeg', 0, '2019-10-27 01:35:33', '2019-10-27 07:57:47'),
(83, 'Deputy manager2', 'sub title2', 'uploads/ajaxCrud/image/OPtV3a5Vspkbb7xKNsBPRRjsJ6vAuHCqrDqT7Tqt.jpeg', 0, '2019-10-27 04:56:44', '2019-10-27 06:48:10'),
(84, 'new', 'newsadfasdfdsafe ewfasdf', 'uploads/ajaxCrud/image/fj3LDvPGQnKrTRjOFBybXCo7TDsK1VQVvZqKaZiH.jpeg', 0, '2019-10-27 06:48:26', '2019-10-27 07:57:42'),
(85, 'new  85', 'new 85', 'uploads/ajaxCrud/image/YqXlvXmU4IaPfmHuvwoxSQCfsKovjRKHhbfF1yg5.jpeg', 0, '2019-10-27 07:03:44', '2019-10-27 07:57:38'),
(86, 'shefat ullah', 'masum', 'uploads/ajaxCrud/image/7lovpf8cXwe9SBHuuTEPedMfBttDeDs6CDcRS5nj.jpeg', 0, '2019-10-27 07:05:10', '2019-10-27 07:57:34'),
(87, 'masum', 'masum', 'uploads/ajaxCrud/image/YXxUms0lWZhZGxsG0ybVnhhFU9fAGVZSUGFewtDF.jpeg', 0, '2019-10-27 07:05:43', '2019-10-27 07:57:30'),
(88, 'logo2', 'sub title', 'uploads/ajaxCrud/image/pQVAL6dZeJCyfpXnBoQPI1XBYMke9wIW59igq940.jpeg', 0, '2019-10-27 07:06:42', '2019-10-27 07:57:26'),
(89, 'logo2', 'sub title', 'uploads/ajaxCrud/image/fpKjmrvXvGBsqIFrL1woMSujezNu9ScozYkERyCH.jpeg', 0, '2019-10-27 07:08:58', '2019-10-27 07:57:21'),
(90, 'logo2', 'shefat', 'uploads/ajaxCrud/image/kSyHEKoWVVuklpKJbGsvDx3ccWWwATaiitHibigY.jpeg', 1, '2019-10-27 07:58:37', '2019-10-27 07:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheading` text COLLATE utf8mb4_unicode_ci,
  `button_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sdfdsfvdff',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_08_25_063000_create_user_roles_table', 2),
(5, '2019_08_25_063135_create_contact_messages_table', 3),
(6, '2019_08_25_071118_create_SocialLinks_table', 3),
(7, '2019_08_25_174434_create_banners_table', 3),
(8, '2019_10_24_095137_create_social_links_table', 4),
(9, '2019_10_26_163427_create_ajax_cruds_table', 5);

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
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sdfdsfvdff',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_serial` int(11) NOT NULL DEFAULT '3',
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_serial`, `slug`, `photo`, `status`, `creator`, `updator`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shefat', 'shefat@gmail.com', 1, '955fg14', 'uploads/users/bs05Q46dN2EF25dEADwY3kSPp6vSeD6yP2WPve4s.png', 1, NULL, NULL, NULL, '$2y$10$hc.Ov0ZhE9zLkNloPRj1mO3ux1TwaXJNFoAxokAapsN0dE0cgOkN2', '6VuiPsF4LOPOZTA6V69TVtPS4vqJAXk5x2kttDfdwGULaUMY75uSKJbXfBRj', '2019-10-24 03:24:12', '2019-10-24 03:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_serial` int(11) NOT NULL,
  `slug` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sdfdsfvdff',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `role_serial`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 1, 'slug205d8469b0001eb', 1, '2019-10-23 18:00:00', NULL),
(2, 'admin', 2, 'slug205d8469c141c4c', 1, '2019-10-23 18:00:00', '2019-10-24 08:00:52'),
(3, 'user', 3, 'slug205d8469b8651eb', 1, '2019-10-23 18:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
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
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_role_serial_unique` (`role_serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
