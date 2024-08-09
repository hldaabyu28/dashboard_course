-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2024 pada 16.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard_course`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `duration`, `created_at`, `updated_at`) VALUES
(5, 'Full Stack Developer', 'Secara garis besar, full stack developer adalah seseorang yang nyaman bekerja atau merangkap tugas sebagai back end dan front end developer. Lebih spesifiknya, developer bisa bekerja dengan javascript, PHP, java, database (backend) dan juga bisa mengkonversi desain ke dalam kode pemrograman seperti HTML, CSS, XML (front end).', 54, '2024-08-08 08:46:38', '2024-08-08 08:46:38'),
(6, 'Laravel 11', 'Laravel adalah sebuah framework PHP yang bersifat open-source dan dirancang untuk memudahkan pengembangan aplikasi web dengan sintaks yang elegan dan ekspresif. Dibuat oleh Taylor Otwell, Laravel pertama kali dirilis pada tahun 2011 dan telah menjadi salah satu framework PHP yang paling populer.\r\n\r\nBeberapa fitur utama Laravel meliputi:\r\n\r\n1. **Routing**: Laravel menyediakan sistem routing yang fleksibel, memungkinkan pengembang untuk mendefinisikan rute dengan mudah.\r\n2. **Eloquent ORM**: Sebuah ORM (Object-Relational Mapping) yang kuat dan sederhana, memungkinkan interaksi dengan basis data menggunakan model dan hubungan antar tabel.\r\n3. **Blade Templating**: Laravel memiliki engine template yang disebut Blade, yang memungkinkan pengembangan antarmuka pengguna yang dinamis dan bersih.\r\n4. **Migration dan Seeding**: Memudahkan pengelolaan versi skema basis data dan pengisian data awal.\r\n5. **Authentication dan Authorization**: Laravel menyediakan sistem autentikasi dan otorisasi yang siap pakai dan mudah dikustomisasi.\r\n6. **Artisan Console**: Sebuah CLI (Command Line Interface) bawaan yang memungkinkan pengembang untuk menjalankan perintah untuk tugas-tugas rutin seperti migrasi database, pengujian, dan pengelolaan aplikasi.\r\n\r\nDengan semua fitur ini, Laravel menjadi pilihan utama bagi banyak pengembang untuk membuat aplikasi web yang skalabel, maintainable, dan berkinerja tinggi.', 52, '2024-08-08 23:47:03', '2024-08-08 23:47:03'),
(7, 'Front End Developer', 'Bahasa pemrograman HTML dan CSS untuk membuat halaman website dengan visualisasi menarik.\r\nJavaScript untuk menciptakan halaman website yang tidak hanya menarik namun juga interaktif.\r\nFramework CSS dan JavaScript untuk mengoptimalkan fungsi dari JavaScript.\r\nPreprocessor CSS merupakan layanan yang memungkinkan adanya penambahan fitur dari sekedar CSS murni. Contoh Preprocessor CSS adalah Stylus, LESS, danSASS.\r\nVersion Control System (Git) digunakan untuk membuat aplikasi dan sistem sehingga mempermudah proses pengembangan website atau aplikasi secara efektif dan nyaman.\r\nResponsive Mobile Design untuk memastikan bahwa website atau aplikasi yang dikembangkan tetap nyaman digunakan saat diakses melalui perangkat mobile.\r\nTesting/Debugging yang bertujuan untuk menemukan kemungkinan adanya error atau kegagalan pada aplikasi yang dikembangkan.\r\nBrowser Developer Tools untuk memastikan bahwa website yang dikembangkan dapat diakses dengan baik saat diakses melalui browser.\r\nMembangun dan Mengoptimalisasi Tools/Website bermanfaat untuk memastikan bahwa website memiliki kecepatan akses.\r\nCommand Line untuk menggunakan aplikasi yang berbasis Command Line Interface (CLI) karena memiliki fungsionalitas lebih banyak dibandingkan aplikasi berbasis Graphic User Interface (GUI).', 40, '2024-08-09 06:51:28', '2024-08-09 06:51:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `materials`
--

INSERT INTO `materials` (`id`, `course_id`, `title`, `description`, `embed_link`, `created_at`, `updated_at`) VALUES
(13, 6, '1. Intro', 'Indroduction Laravel', 'https://www.youtube.com/watch?v=T1TR-RGf2Pw&list=PLFIM0718LjIW1Xb7cVj7LdAr32ATDQMdr', '2024-08-08 23:47:39', '2024-08-08 23:47:39'),
(14, 6, '2. Instalasi & Konfigurasi', 'instalasi laravel siapkan php,xampp, dan composer', 'https://www.youtube.com/watch?v=nW60yGRoUrs&list=PLFIM0718LjIW1Xb7cVj7LdAr32ATDQMdr&index=2', '2024-08-08 23:48:29', '2024-08-08 23:48:29'),
(16, 5, 'CSS', 'CSS adalah salah satu bahasa yang wajib Anda ketahui saat belajar membuat website. Tanpanya, tampilan website akan kurang menarik, dan perlu upaya lebih untuk melakukan perubahan pada elemen tampilan.', 'https://www.youtube.com/watch?v=AQOBN9XByf0&list=PLZS-MHyEIRo4UKr7AshnKmDSsdUOkyKwe', '2024-08-08 23:50:32', '2024-08-08 23:50:32'),
(17, 7, 'CSS 1', 'Setelah mengetahui serba-serbi tentang front end developer, kamu pasti juga ingin tahu sebenarnya berapa gaji front end developer, khususnya di Indonesia? Profesi ini dapat dibilang salah satu yang paling banyak dicari terutama di era digital saat ini. Oleh karena itu, kisaran gaji mereka juga terbilang tinggi berkisar antara Rp4.000.000 – Rp25.000.000.', 'https://www.youtube.com/watch?v=T1TR-RGf2Pw&list=PLFIM0718LjIW1Xb7cVj7LdAr32ATDQMdr', '2024-08-09 06:52:06', '2024-08-09 06:52:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_08_134248_create_courses_table', 1),
(6, '2024_08_08_134327_create_materials_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
