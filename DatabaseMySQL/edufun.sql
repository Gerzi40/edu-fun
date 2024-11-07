-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 03:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(2, 'Network Security', '2024-11-05 10:39:19', '2024-11-05 10:39:19');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(91, '0001_01_01_000000_create_users_table', 1),
(92, '0001_01_01_000001_create_cache_table', 1),
(93, '0001_01_01_000002_create_jobs_table', 1),
(94, '2024_11_02_012859_create_categories_table', 1),
(95, '2024_11_02_015628_create_writers_table', 1),
(96, '2024_11_03_012813_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `photo_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `writer_id`, `body`, `photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Machine Learning', 1, 1, 'Est eligendi nulla dolor illum non aliquam dolor. Ad qui ad cumque repudiandae. Architecto aut aut quis dolore aut iusto quis. Natus autem rem iure neque nobis molestias. Voluptas voluptatem ipsa et autem rerum. Suscipit nesciunt rem nostrum temporibus autem in aut. Sit sed et aut velit asperiores impedit. Similique et quas voluptatem. Ut et ut tenetur repellendus velit. Exercitationem voluptatum placeat ab nihil doloribus. Repudiandae voluptatum delectus ut. Distinctio ea harum nesciunt aspernatur totam quia tempora. Ut aspernatur facere aut. Cum vel laborum molestias aut qui.\n\nNostrum magni officiis quo ut assumenda. Error similique ipsum libero ea. Deserunt ipsa praesentium nulla beatae. Eveniet rerum enim necessitatibus tempora. Eaque deserunt porro occaecati et sed. Amet hic dolor et beatae dicta. Hic neque incidunt consectetur. Soluta doloremque eum deserunt autem labore.', '/assets/postPhoto/DataScience/machineLearning.avif', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(2, 'Deep Learning', 1, 1, 'Ipsum nulla voluptatem at voluptatem iure. Fugit quis vitae voluptas maxime reiciendis. Sunt occaecati nemo quia in dolor commodi vel. Id non a aut impedit. Est voluptatem voluptas sapiente nobis saepe illo adipisci. Quisquam eligendi voluptatem reiciendis odio ipsam minus. Delectus excepturi a amet expedita corporis. Quo omnis enim perferendis voluptas ipsa ipsa. Accusamus modi quam est et.\n\nVoluptatem ut eos eaque omnis odit dolore. Laborum esse et in fugiat voluptas. Rem ipsam unde cupiditate ut itaque voluptatem. Velit illum a molestiae aut minima eveniet. Ratione deleniti et sint dolores. Aut molestias eligendi vero hic ducimus deserunt. Nulla tempore voluptatem dolorem hic aut repudiandae. Officiis rerum quia magnam totam quas est. Id amet in a qui animi ea. Et inventore sit ut neque quos sunt. Quia optio quia et facere rem totam. Officiis rerum quia officiis vel molestiae dolore aut. Sit saepe non natus odio eveniet totam officiis. Ut in cupiditate eum magnam ut facilis.', '/assets/postPhoto/DataScience/deepLearning.avif', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(3, 'Natural Language Processing', 1, 1, 'Eum nisi laborum aut optio nihil sint perferendis. Eius voluptatem eaque eveniet molestias voluptatem aut. Qui et tempore id vel dolorem sed nemo. Eos omnis temporibus quia omnis delectus similique aliquam. Asperiores illum voluptatem placeat neque sint occaecati dolor. Ipsam corporis eveniet aut dolore ut rerum dolorem eaque. Similique asperiores sed voluptate. Eius rem et vero qui rerum repudiandae. Vero natus et aliquam explicabo voluptate. Incidunt numquam id voluptates et qui ut molestias. Neque ut sint esse molestiae voluptates eos unde. Et quia sint ea velit repudiandae. Dolores itaque repellat atque optio.\n\nEt est necessitatibus saepe ut. Voluptatum illum ullam qui repellat. Voluptatem quam porro iure aut sunt ut. Qui error cum odio cupiditate. Omnis non qui ut accusantium ut ut. Quibusdam et voluptates rerum impedit. Optio nostrum maxime enim maxime accusamus libero eum. Deserunt sint et molestiae voluptates. Quia voluptas eveniet distinctio eum illo. Officiis fuga quidem placeat qui quia ab dolor nemo. Aut rerum nihil natus necessitatibus omnis sed facere. Qui natus harum autem quaerat et adipisci.', '/assets/postPhoto/DataScience/NLP.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(4, 'Software Security', 2, 2, 'Tempora illo explicabo exercitationem magnam. Natus velit et aliquam officiis eaque. Pariatur sunt maxime expedita cumque eum. Rerum iure temporibus ipsum reprehenderit dolores ea mollitia. Nemo magni quo cupiditate nostrum laborum voluptate. Unde ut ipsum qui recusandae dolor culpa. Sed a ea excepturi. Tenetur et doloribus non. Voluptatem sit velit inventore voluptatibus. Ex at voluptatem et excepturi voluptas nesciunt. Pariatur saepe rem hic odit iste sit eveniet. Aut repellat molestiae et earum aut. Sint commodi aspernatur qui deserunt. Vero quibusdam sit culpa delectus incidunt delectus.\n\nAut dolores illum optio quasi. Illo molestiae aperiam nostrum delectus rem. At sed consequuntur explicabo perspiciatis unde esse adipisci dolorem. Sed animi officiis ab veritatis ea et rem. Impedit voluptatum facere aut minima cumque recusandae ut qui. Itaque aliquam corporis quisquam sed at. Eius voluptatibus dolorum non corporis. Omnis rerum a accusantium quia eum magnam incidunt. Earum eaque aut nihil dolorem quam impedit ipsa. Ex laborum cupiditate eum commodi repellat. Similique natus aliquam corporis consequatur. Accusamus tempora possimus nam voluptas est est. Quia eius consequuntur quis enim dignissimos quae quia. Voluptatem alias velit molestias exercitationem ipsam velit.', '/assets/postPhoto/NetworkSecurity/softwareSecurity.avif', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(5, 'Network Administration', 2, 2, 'Eligendi commodi ea aliquid ea aut. Ex pariatur exercitationem aut molestiae recusandae aut quibusdam. Odio rerum deleniti amet. Sed voluptates neque iure et et in molestiae. Et quod repudiandae quia veniam incidunt eos. Ducimus quae odit omnis impedit accusamus non. Tempora cupiditate ullam soluta qui accusamus. Esse enim quibusdam totam eaque harum. Autem inventore placeat provident. Voluptas ad quo autem nihil. Eligendi accusantium odio saepe illum aut. Id voluptates sed eum et libero iste vel et.\n\nFugiat et et qui et. Nam dolorem rerum nihil. Rerum inventore et ut. Deleniti nihil quos et ab vel suscipit voluptatem. Nisi aliquam explicabo dolor amet et. Sed consectetur autem minima est ea architecto. Tempore ipsa dolorem voluptas velit dolorem sit rem ut. Suscipit qui adipisci odit nulla facere possimus magnam. Qui animi velit ut velit eos inventore non asperiores. Optio omnis doloribus tenetur repellat cumque vel.', '/assets/postPhoto/NetworkSecurity/networkAdmin.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(6, 'Popular Network Technology', 2, 3, 'Dolorum totam voluptatem et et ut suscipit et necessitatibus. Iste totam sint laudantium ut. Unde exercitationem molestias quidem amet. Dolores ut temporibus nostrum rerum. Ratione repudiandae in consequuntur vero pariatur rem. Reiciendis eius est debitis illo modi. Vero dolor perspiciatis facere ut rerum facere. Quam voluptas aliquam enim non. Quae quis provident quo. Dolore expedita fugiat cumque soluta explicabo molestiae laborum sequi. Nulla nulla quibusdam quasi sit.\n\nUt recusandae autem repellendus cumque et rerum. Dolorem eligendi aut nam dolor. Velit architecto eum eum aperiam ea animi. Expedita ipsa cumque officia eveniet unde est. Molestias ullam inventore rem. Totam ut enim ut voluptatibus ipsam voluptates. Soluta excepturi omnis aperiam minus velit. Voluptate consequatur at dolore est sunt et. Repellendus ad magnam optio eveniet sit ut. Dicta iure possimus atque atque soluta sunt sint. Magnam consequatur illum pariatur aliquid consectetur. Nesciunt hic explicabo doloremque fugiat nam.', '/assets/postPhoto/NetworkSecurity/PNT.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c2Tctnt91BXuxxgkewwPrfyI3dZUNAFrLggvBHMr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.10.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUxPUGUwbzBGeDRqc0kwaWhBU0F3dDlnbTIxSWVoRURjbFhLMUFWRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9lZHVmdW4udGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730985779),
('jNH3m2w07lml8jjhKwHjpAY3gO4PKe6tgqPCdGjw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVU5ZnlZNkZ5ZTByRlBZczZjS09mVk4zUU4xc1A3OU54QXFCcVBnRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9lZHVmdW4udGVzdC93cml0ZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730987956),
('nUx4nB34nKSL2NB3wBs9hvfvTu9I5weADpGt4G2h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHNYM1hGcGVMWHFjVUJSMHZtWFBSaU5aNnpjd0U2c3JRVVRrT3pEYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9lZHVmdW4udGVzdC9yZWFkbW9yZS80Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730989522);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `photo_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `category_id`, `photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Dacin Prasetya', 1, '/assets/writerPhoto/writer1.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(2, 'Balapati Simanjuntak', 2, '/assets/writerPhoto/writer2.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(3, 'Unjani Nuraini', 2, '/assets/writerPhoto/writer3.jpg', '2024-11-05 10:39:19', '2024-11-05 10:39:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id` (`category_id`),
  ADD KEY `posts_writer_id` (`writer_id`);

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
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writers_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_writer_id` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Constraints for table `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `writers_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
