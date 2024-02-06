-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2023 at 03:58 AM
-- Server version: 10.3.39-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `organisation` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postalcode` varchar(100) NOT NULL,
  `PIN` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `organisation`, `address`, `city`, `state`, `country`, `postalcode`, `PIN`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 707070),
(4, '2312', '2312', 'spadevion13@gmail.com', 'Super Admin', 'admin', 'admin', 'admin', 'Indonesia', 'admin', 2312),
(5, '1111', '1111', 'fajarsoleh13@gmail.com', '123', '213weq', 'wweq', 'wqeq', 'weqwq', 'wqeq', 1111),
(6, 'Super Admin', '@Super_Admin13', 'superadmin@gmail.com', 'JACS', '-', 'Bandung', 'Jawa Barat', 'Indonesia', '40135', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_trans`
--

CREATE TABLE `data_trans` (
  `id_transaksi` int(100) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `id_dokumen` varchar(10) NOT NULL,
  `status_dev1` int(1) NOT NULL DEFAULT 0,
  `status_dev2` int(1) NOT NULL DEFAULT 0,
  `status_dev3` int(1) NOT NULL DEFAULT 0,
  `waktu_trans` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_trans`
--

INSERT INTO `data_trans` (`id_transaksi`, `id_user`, `id_dokumen`, `status_dev1`, `status_dev2`, `status_dev3`, `waktu_trans`) VALUES
(133, 'admin', '4', 1, 1, 1, '2023-05-10 18:26:31'),
(135, 'admin', '23', 1, 1, 1, '2023-05-10 18:48:32'),
(136, 'admin', '14', 1, 1, 1, '2023-05-10 18:49:25'),
(137, 'admin', 'nama_dokum', 1, 1, 1, '2023-05-10 18:50:12'),
(139, 'admin', 'nama_dokum', 1, 1, 1, '2023-05-10 18:52:09'),
(140, 'admin', 'nama_dokum', 1, 1, 1, '2023-05-10 18:52:52'),
(141, 'admin', 'nama_dokum', 1, 1, 1, '2023-05-10 18:54:23'),
(142, 'admin', '23', 1, 1, 1, '2023-05-10 18:56:47'),
(143, 'Admin 2', '23', 1, 1, 1, '2023-05-10 19:07:26'),
(144, 'Admin 2', '14', 1, 1, 1, '2023-05-12 09:48:04'),
(145, '1', '14', 1, 1, 1, '2023-05-18 10:36:37'),
(146, '5', '14', 1, 1, 1, '2023-05-22 08:48:56'),
(147, '4', '14', 1, 1, 1, '2023-05-22 13:47:43'),
(148, '4', 'f336a93a0', 1, 1, 1, '2023-06-16 14:26:39'),
(149, '4', 'f336a93a0', 1, 1, 1, '2023-06-16 14:30:40'),
(150, '4', 'f336a93a0', 1, 1, 1, '2023-06-16 14:31:11'),
(151, '4', '14', 1, 1, 1, '2023-06-16 14:36:20'),
(152, '4', '14', 1, 1, 1, '2023-06-16 14:39:21'),
(153, '4', '14', 1, 1, 1, '2023-06-16 14:39:32'),
(154, '4', '14', 1, 1, 1, '2023-06-16 14:39:49'),
(155, '4', 'f336a93a0', 1, 1, 1, '2023-06-16 14:41:01'),
(156, '4', '14', 1, 1, 1, '2023-06-16 14:41:11'),
(157, '4', '14', 1, 1, 1, '2023-06-16 14:45:30'),
(158, '4', '14', 1, 1, 1, '2023-06-16 14:45:50'),
(159, '4', '14', 1, 1, 1, '2023-06-16 14:46:03'),
(160, '4', '14', 1, 1, 1, '2023-06-16 14:46:38'),
(161, '4', '14', 1, 1, 1, '2023-06-16 14:55:45'),
(162, '4', '14', 1, 1, 1, '2023-06-16 14:59:11'),
(163, '4', '14', 1, 1, 1, '2023-06-16 15:01:12'),
(164, '4', '14', 1, 1, 1, '2023-06-16 15:01:22'),
(165, '4', '14', 1, 1, 1, '2023-06-16 15:03:07'),
(166, '4', '14', 1, 1, 1, '2023-06-16 15:04:56'),
(167, '4', 'f336a93a0', 1, 1, 1, '2023-06-16 15:09:01'),
(168, '4', '14', 1, 1, 1, '2023-06-16 15:14:32'),
(169, '4', '14', 0, 0, 0, '2023-06-16 15:30:49'),
(170, '4', '14', 1, 1, 1, '2023-06-16 15:31:24'),
(171, '4', '14', 0, 0, 0, '2023-06-16 15:35:06'),
(172, '4', '14', 1, 1, 1, '2023-06-16 15:35:56'),
(173, '4', '14', 0, 0, 0, '2023-06-16 15:37:09'),
(174, '4', '14', 0, 0, 0, '2023-06-16 15:37:57'),
(175, '4', '14', 1, 1, 1, '2023-06-16 15:38:29'),
(176, '6', '14', 1, 1, 1, '2023-06-16 19:18:39'),
(177, '6', '14', 0, 0, 0, '2023-06-16 19:19:19'),
(178, '6', '14', 1, 1, 1, '2023-06-16 19:19:43'),
(179, '6', '14', 1, 1, 1, '2023-06-16 19:21:56'),
(180, '6', '14', 0, 0, 0, '2023-06-16 19:22:10'),
(181, '6', '14', 1, 1, 1, '2023-06-16 19:22:42'),
(182, '6', '14', 0, 0, 0, '2023-06-16 19:23:09'),
(183, '6', '14', 1, 1, 1, '2023-06-16 19:23:49'),
(184, '6', '87e2d4080', 1, 1, 1, '2023-06-20 10:44:28'),
(185, '6', '87e2d4080', 1, 1, 1, '2023-06-20 10:45:17'),
(186, '4', '7fade6902', 1, 1, 1, '2023-07-14 10:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `door_locks`
--

CREATE TABLE `door_locks` (
  `id_loker` int(5) NOT NULL,
  `device_ke` int(1) NOT NULL,
  `rak_ke` int(1) NOT NULL,
  `status_pintu` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `door_locks`
--

INSERT INTO `door_locks` (`id_loker`, `device_ke`, `rak_ke`, `status_pintu`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 2, 2, 0),
(4, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `list_dokumen`
--

CREATE TABLE `list_dokumen` (
  `id_dokumen` varchar(10) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `device_ke` int(11) NOT NULL,
  `rak_ke` int(1) NOT NULL,
  `baris_ke` int(11) NOT NULL,
  `kolom_ke` int(11) NOT NULL,
  `status_option` int(1) NOT NULL DEFAULT 0,
  `status_document` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list_dokumen`
--

INSERT INTO `list_dokumen` (`id_dokumen`, `nama_dokumen`, `device_ke`, `rak_ke`, `baris_ke`, `kolom_ke`, `status_option`, `status_document`) VALUES
('14', 'Dokumen 12', 1, 11, 1, 1, 1, 0),
('4', 'Dokumen 4', 21, 12, 1, 1, 0, 0),
('7fade6902', 'dasdas', 1, 1, 1, 1, 0, 0),
('87e2d4080', 'Daftar Inventaris Barang Demo', 2, 1, 1, 2, 0, 0),
('894efed8e', 'Dokuumen 12', 2, 1, 1, 3, 0, 0),
('deb4d86fe', 'Dokumen 12', 1, 11, 1, 1, 0, 0),
('f336a93a0', 'dokumen 13', 1, 1, 1, 1, 0, 0),
('f81bce710', 'dokumen 27', 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_history`
--

CREATE TABLE `register_history` (
  `id_register` int(11) NOT NULL,
  `user_register` varchar(255) NOT NULL,
  `register_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_history`
--

INSERT INTO `register_history` (`id_register`, `user_register`, `register_time`) VALUES
(1, '1111', '2023-05-12 16:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id_search` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `search_time` datetime NOT NULL DEFAULT current_timestamp(),
  `information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id_search`, `user_name`, `search_keyword`, `search_time`, `information`) VALUES
(4, 'Admin 2', 'Dokumen 12', '2023-05-11 09:33:03', 'Search'),
(5, 'Admin 2', 'Dokumen 432', '2023-05-11 10:02:57', 'Search'),
(6, 'Admin 2', 'Dokumen 423', '2023-05-11 10:04:37', 'Search'),
(7, 'Admin 2', 'Dokumen 4', '2023-05-11 10:05:46', 'Search'),
(8, 'Admin 2', 'Dokumen 12', '2023-05-12 09:47:58', 'Search'),
(9, 'Admin 2', 'Dokumen 4', '2023-05-12 10:04:20', 'Search'),
(10, 'Admin 2', 'Dokumen 12', '2023-05-12 10:20:10', 'Search'),
(11, '2312', 'dokumen 13', '2023-06-16 14:25:20', 'Store'),
(12, '2312', 'dokumen 13', '2023-06-16 14:26:36', 'Search'),
(13, '2312', 'dokumen 13', '2023-06-16 14:29:37', 'Search'),
(14, '2312', 'dokumen 13', '2023-06-16 14:31:05', 'Search'),
(15, '2312', 'dokumen 12', '2023-06-16 14:33:09', 'Search'),
(16, '2312', 'dokumen 12', '2023-06-16 14:36:24', 'Search'),
(17, '2312', 'dokumen 12', '2023-06-16 14:39:26', 'Search'),
(18, '2312', 'dokumen 12', '2023-06-16 14:39:40', 'Search'),
(19, '2312', 'dokumen 13', '2023-06-16 14:39:56', 'Search'),
(20, '2312', 'dokumen 12', '2023-06-16 14:41:06', 'Search'),
(21, '2312', 'dokumen 12', '2023-06-16 14:41:15', 'Search'),
(22, '2312', 'dokumen 12', '2023-06-16 14:45:42', 'Search'),
(23, '2312', 'dokumen 12', '2023-06-16 14:45:53', 'Search'),
(24, '2312', 'dokumen 12', '2023-06-16 14:46:31', 'Search'),
(25, '2312', 'dokumen 12', '2023-06-16 14:46:42', 'Search'),
(26, '2312', '{\'nama_dokumen\': \'Dokumen 12\'}', '2023-06-16 14:55:38', 'Take'),
(27, '2312', 'dokumen 12', '2023-06-16 14:59:06', 'Search'),
(28, '2312', 'dokumen 12', '2023-06-16 14:59:15', 'Search'),
(29, '2312', 'Dokumen 12', '2023-06-16 15:00:54', 'Take'),
(30, '2312', 'dokumen 12', '2023-06-16 15:01:16', 'Search'),
(31, '2312', 'dokumen 12', '2023-06-16 15:01:26', 'Search'),
(32, '2312', 'Dokumen 12', '2023-06-16 15:01:56', 'Take'),
(33, '2312', 'dokumen 12', '2023-06-16 15:04:52', 'Search'),
(34, '2312', 'Dokumen 12', '2023-06-16 15:04:53', 'Restore'),
(35, '2312', 'dokumen 27', '2023-06-16 15:08:25', 'Store'),
(36, '2312', 'dokumen 13', '2023-06-16 15:08:56', 'Search'),
(37, '2312', 'dokumen 13', '2023-06-16 15:08:58', 'Restore'),
(38, '2312', 'dokumen 12', '2023-06-16 15:14:22', 'Search'),
(39, '2312', 'Dokumen 12', '2023-06-16 15:14:24', 'Take'),
(40, '2312', 'dokumen 12', '2023-06-16 15:30:29', 'Search'),
(41, '2312', 'Dokumen 12', '2023-06-16 15:30:46', 'Restore'),
(42, '2312', 'dokumen 12', '2023-06-16 15:31:02', 'Search'),
(43, '2312', 'Dokumen 12', '2023-06-16 15:31:21', 'Restore'),
(44, '2312', 'dokumen 12', '2023-06-16 15:35:00', 'Search'),
(45, '2312', 'Dokumen 12', '2023-06-16 15:35:03', 'Take'),
(46, '2312', 'dokumen 12', '2023-06-16 15:35:40', 'Search'),
(47, '2312', 'Dokumen 12', '2023-06-16 15:35:47', 'Take'),
(48, '2312', 'dokumen 12', '2023-06-16 15:36:59', 'Search'),
(49, '2312', 'Dokumen 12', '2023-06-16 15:37:06', 'Restore'),
(50, '2312', 'dokumen 12', '2023-06-16 15:37:51', 'Search'),
(51, '2312', 'Dokumen 12', '2023-06-16 15:37:54', 'Restore'),
(52, '2312', 'dokumen 12', '2023-06-16 15:38:21', 'Search'),
(53, '2312', 'Dokumen 12', '2023-06-16 15:38:26', 'Restore'),
(54, 'Super Admin', 'dokumen 12', '2023-06-16 19:18:09', 'Search'),
(55, 'Super Admin', 'Dokumen 12', '2023-06-16 19:18:17', 'Take'),
(56, 'Super Admin', 'dokumen 12', '2023-06-16 19:18:26', 'Search'),
(57, 'Super Admin', 'Dokumen 12', '2023-06-16 19:18:31', 'Restore'),
(58, 'Super Admin', 'dokumen 12', '2023-06-16 19:19:01', 'Search'),
(59, 'Super Admin', 'Dokumen 12', '2023-06-16 19:19:02', 'Take'),
(60, 'Super Admin', 'dokumen 12', '2023-06-16 19:19:31', 'Search'),
(61, 'Super Admin', 'Dokumen 12', '2023-06-16 19:19:37', 'Take'),
(62, 'Super Admin', 'dokumen 12', '2023-06-16 19:21:48', 'Search'),
(63, 'Super Admin', 'Dokumen 12', '2023-06-16 19:21:53', 'Restore'),
(64, 'Super Admin', 'dokumen 12', '2023-06-16 19:22:04', 'Search'),
(65, 'Super Admin', 'Dokumen 12', '2023-06-16 19:22:07', 'Take'),
(66, 'Super Admin', 'dokumen 12', '2023-06-16 19:22:33', 'Search'),
(67, 'Super Admin', 'Dokumen 12', '2023-06-16 19:22:36', 'Take'),
(68, 'Super Admin', 'dokumen 12', '2023-06-16 19:22:53', 'Search'),
(69, 'Super Admin', 'Dokumen 12', '2023-06-16 19:23:06', 'Restore'),
(70, 'Super Admin', 'dokumen 12', '2023-06-16 19:23:18', 'Search'),
(71, 'Super Admin', 'Dokumen 12', '2023-06-16 19:23:46', 'Restore'),
(72, 'Super Admin', 'dokumen 12', '2023-06-16 19:23:52', 'Search'),
(73, 'Super Admin', 'Dokumen 12', '2023-06-16 19:23:53', 'Take'),
(74, 'Super Admin', 'Daftar Inventaris Barang Demo', '2023-06-20 10:42:50', 'Store'),
(75, 'Super Admin', 'Daftar Inventaris Barang Demo', '2023-06-20 10:44:11', 'Search'),
(76, 'Super Admin', 'Daftar Inventaris Barang Demo', '2023-06-20 10:44:16', 'Take'),
(77, 'Super Admin', 'Daftar Inventaris Barang Demo', '2023-06-20 10:45:02', 'Search'),
(78, 'Super Admin', 'Daftar Inventaris Barang Demo', '2023-06-20 10:45:10', 'Restore'),
(79, '2312', 'dasdas', '2023-07-14 10:12:04', 'Store'),
(80, '2312', 'dasdas', '2023-07-14 10:12:07', 'Search'),
(81, '2312', 'dasdas', '2023-07-14 10:12:10', 'Restore');

-- --------------------------------------------------------

--
-- Table structure for table `store_history`
--

CREATE TABLE `store_history` (
  `id_store` int(11) NOT NULL,
  `user_store` varchar(255) NOT NULL,
  `store_keyword` varchar(255) NOT NULL,
  `store_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_history`
--

INSERT INTO `store_history` (`id_store`, `user_store`, `store_keyword`, `store_time`) VALUES
(1, 'Admin 2', 'Dokumen 12', '2023-05-11 10:06:48'),
(2, 'Admin 2', 'Dokuumen 12', '2023-05-11 10:11:35'),
(4, '2312', 'dokumen 13', '2023-06-16 14:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `update_history`
--

CREATE TABLE `update_history` (
  `id_update` int(11) NOT NULL,
  `user_update` varchar(255) NOT NULL,
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `update_history`
--

INSERT INTO `update_history` (`id_update`, `user_update`, `update_time`, `information`) VALUES
(1, '2312', '0000-00-00 00:00:00', 'Update Account'),
(2, '2312', '2023-06-16 15:39:13', 'Update Account'),
(3, '2312', '2023-06-16 15:46:48', 'Update Account'),
(4, 'Super Admin', '2023-06-16 15:49:08', 'Register New Account'),
(5, '2312', '2023-06-16 16:11:18', 'Login'),
(6, '2312', '2023-06-16 16:16:10', 'Login'),
(7, '2312', '2023-06-16 16:16:31', 'Login'),
(8, '2312', '2023-06-16 16:16:40', 'Logout'),
(9, '2312', '2023-06-16 16:16:43', 'Login'),
(10, '2312', '2023-06-16 19:04:07', 'Logout'),
(11, 'Super Admin', '2023-06-16 19:06:49', 'Login'),
(12, 'Super Admin', '2023-06-16 19:14:02', 'Login'),
(13, 'Super Admin', '2023-06-16 19:24:01', 'Logout'),
(14, 'Super Admin', '2023-06-20 10:42:06', 'Login'),
(15, '2312', '2023-07-14 10:11:43', 'Login'),
(16, '2312', '2023-07-14 10:22:47', 'Login'),
(17, '2312', '2023-07-14 10:23:41', 'Login');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_trans`
--
ALTER TABLE `data_trans`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `door_locks`
--
ALTER TABLE `door_locks`
  ADD PRIMARY KEY (`id_loker`);

--
-- Indexes for table `list_dokumen`
--
ALTER TABLE `list_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `register_history`
--
ALTER TABLE `register_history`
  ADD PRIMARY KEY (`id_register`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id_search`);

--
-- Indexes for table `store_history`
--
ALTER TABLE `store_history`
  ADD PRIMARY KEY (`id_store`);

--
-- Indexes for table `update_history`
--
ALTER TABLE `update_history`
  ADD PRIMARY KEY (`id_update`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `data_trans`
--
ALTER TABLE `data_trans`
  MODIFY `id_transaksi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `door_locks`
--
ALTER TABLE `door_locks`
  MODIFY `id_loker` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `register_history`
--
ALTER TABLE `register_history`
  MODIFY `id_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id_search` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `store_history`
--
ALTER TABLE `store_history`
  MODIFY `id_store` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `update_history`
--
ALTER TABLE `update_history`
  MODIFY `id_update` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
