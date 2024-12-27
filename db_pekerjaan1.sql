-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2024 at 03:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pekerjaan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_pelamar`
--

CREATE TABLE `daftar_pelamar` (
  `id` int NOT NULL,
  `nama` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_tlp` int NOT NULL,
  `pendidikan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `skill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pekerjaan_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `cv_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_pelamar`
--

INSERT INTO `daftar_pelamar` (`id`, `nama`, `email`, `no_tlp`, `pendidikan`, `skill`, `pekerjaan_id`, `user_id`, `cv_path`) VALUES
(10, 'Muhammad Rifkie ', 'toha@gmail.com', 172984164, 'S1 Informatika', 'Jago Ngoding', 15, 7, 'Modul_Praktikum_KIMED_.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `kategori` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `job_count`) VALUES
(1, 'Development', 1),
(2, 'Design', 1),
(3, 'Marketing', 2),
(4, 'Business', 2),
(5, 'Customer Service', 1),
(6, 'Security', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int NOT NULL,
  `Perusahaan` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gaji` int NOT NULL,
  `posisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `kategori_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `Perusahaan`, `description`, `requirement`, `lokasi`, `gaji`, `posisi`, `created_at`, `kategori_id`) VALUES
(6, 'Tech Innovator', 'Perusahaan yang bergerak di bidang pengembangan perangkat lunak untuk aplikasi bisnis.', '- Pengalaman minimal 2 tahun di pengembangan software.\r\n- Menguasai Python dan Django.\r\n- Kemampuan analisis dan problem-solving yang baik.', 'Jakarta', 15000000, 'Software Engineer, development', '2024-12-16 19:09:54', 1),
(7, 'Creative Designs', 'Perusahaan desain yang fokus pada pembuatan antarmuka pengguna dan pengalaman pengguna.', '- Berpengalaman dengan Adobe Creative Suite.\r\n- Memiliki portofolio desain UI/UX.\r\n- Kreatif dan detail-oriented.', 'Bandung', 10000000, 'UI/UX Designer, design, designs', '2024-12-16 19:09:43', 2),
(8, 'Global Marketing Co.', 'Perusahaan global yang mengkhususkan diri dalam pemasaran digital dan strategi media sosial.', '- Pengalaman di bidang pemasaran digital minimal 3 tahun.\r\n- Penguasaan alat seperti Google Analytics dan SEO.\r\n- Kemampuan komunikasi yang baik.', 'Surabaya', 12000000, 'Digital Marketing Specialist', '2024-12-16 19:10:10', 3),
(9, 'Innovate Solutions', 'Perusahaan konsultan bisnis yang berfokus pada pengembangan strategi dan operasi bisnis.', '- Pengalaman dalam analisis bisnis dan konsultasi.\r\n- Kemampuan berkomunikasi dengan klien.\r\n- Gelar dalam bidang Ekonomi atau Manajemen.', 'Jakarta', 18000000, 'Business Consultant', '2024-12-16 19:10:25', 4),
(10, 'SecureTech', 'Perusahaan yang menyediakan solusi keamanan dunia maya untuk berbagai sektor industri.', '- Pengalaman di bidang keamanan IT minimal 2 tahun.\r\n- Menguasai tools keamanan seperti firewalls, VPN, dan enkripsi.\r\n- Sertifikasi CISSP lebih diutamakan.', 'Yogyakarta	', 20000000, 'Cybersecurity Analyst, security', '2024-12-16 19:10:36', 6),
(11, 'CustomerFirst', 'Perusahaan yang berfokus pada layanan pelanggan dan pengelolaan hubungan pelanggan.', '- Pengalaman dalam layanan pelanggan minimal 1 tahun.\r\n- Kemampuan komunikasi yang baik.\r\n- Pengetahuan tentang CRM dan pengelolaan keluhan pelanggan.', 'Medan', 8000000, 'Customer Service Representative', '2024-12-16 19:10:47', 5),
(13, 'monster.inc', 'mengelola jadwal perusahaan', '-minimal lulus S1\r\n-bisa menggunakan ms office ', 'amazon', 5000000, 'manager perusahaan', '2024-12-18 11:33:06', 4),
(15, 'monster.inc', 'deskripsi', 'xsscscd', 'jogja', 5000000, 'memasak', '2024-12-18 23:35:24', 3);

--
-- Triggers `pekerjaan`
--
DELIMITER $$
CREATE TRIGGER `after_pekerjaan_delete` AFTER DELETE ON `pekerjaan` FOR EACH ROW BEGIN
    UPDATE kategori
    SET job_count = job_count - 1
    WHERE id = OLD.kategori_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_pekerjaan_insert` AFTER INSERT ON `pekerjaan` FOR EACH ROW BEGIN
    UPDATE kategori
    SET job_count = job_count + 1
    WHERE id = NEW.kategori_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_pekerjaan_update` AFTER UPDATE ON `pekerjaan` FOR EACH ROW BEGIN
    IF NEW.kategori_id != OLD.kategori_id THEN
        -- Kurangi job_count dari kategori lama
        UPDATE kategori
        SET job_count = job_count - 1
        WHERE id = OLD.kategori_id;

        -- Tambah job_count ke kategori baru
        UPDATE kategori
        SET job_count = job_count + 1
        WHERE id = NEW.kategori_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `PASSWORD`, `email`, `profile_picture`) VALUES
(7, 'sibolot', 'scrypt:32768:8:1$MK1yKeSyPigF4GgJ$573cd6eaebcf1da5bc68a64b74e1667c6ebc4cb30801fa12d56d58cb4fc8845008dbca8be113f58fe641965c810968e1b5116d95b25b62774f4742dbda473d0e', 'bolot@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_pelamar`
--
ALTER TABLE `daftar_pelamar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pekerjaan_id` (`pekerjaan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_pelamar`
--
ALTER TABLE `daftar_pelamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_pelamar`
--
ALTER TABLE `daftar_pelamar`
  ADD CONSTRAINT `daftar_pelamar_ibfk_1` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`),
  ADD CONSTRAINT `daftar_pelamar_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
