-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2023 at 02:24 PM
-- Server version: 10.5.18-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autonomous_mobile_cabinet`
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
(1, 'admin', 'admin', 'admin@admin.com', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 707070);

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
(1, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:32:25'),
(2, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:32:42'),
(3, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:33:11'),
(4, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:33:53'),
(5, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:34:14'),
(6, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:34:41'),
(7, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:35:12'),
(8, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:35:38'),
(9, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:36:11'),
(10, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:36:39'),
(11, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:37:00'),
(12, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:37:35'),
(13, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:38:05'),
(14, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:38:28'),
(15, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:39:35'),
(16, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:40:04'),
(17, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:40:28'),
(18, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:20:33'),
(19, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:21:08'),
(20, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:24:22'),
(21, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:20:17'),
(22, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:21:11'),
(23, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:21:52'),
(24, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:24:39'),
(25, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:27:32'),
(26, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:30:29'),
(27, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:33:49'),
(28, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:35:45'),
(29, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:36:34'),
(30, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:37:09'),
(31, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:40:55'),
(32, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:45:36'),
(33, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:48:52'),
(34, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:49:52'),
(35, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:50:51'),
(36, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:52:47'),
(37, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:54:32'),
(38, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:56:33'),
(39, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:57:46'),
(40, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:19:29'),
(41, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:20:10'),
(42, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:20:46'),
(43, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:21:32'),
(44, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:23:32'),
(45, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:24:13'),
(46, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:17:46'),
(47, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:24:04'),
(48, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:18:27'),
(49, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:21:26'),
(50, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:22:14'),
(51, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:22:46'),
(52, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:23:54'),
(53, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:24:51'),
(54, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:25:35'),
(55, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:26:23'),
(56, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:27:16'),
(57, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:27:54'),
(58, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:29:25'),
(59, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:31:02'),
(60, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:31:24'),
(61, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:35:42'),
(62, '1', '621aee93a4', 1, 1, 1, '2023-03-17 12:41:44'),
(63, '1', '621aee93a5', 1, 1, 1, '2023-03-17 12:42:21'),
(64, '1', '621aee93a7', 1, 1, 1, '2023-03-17 12:42:51'),
(65, '1', '621aee93a6', 1, 1, 1, '2023-03-17 12:44:35'),
(66, '1', '621aee93a4', 1, 1, 1, '2023-03-17 13:03:11'),
(67, '1', '621aee93a4', 1, 1, 1, '2023-03-17 13:05:04'),
(68, '1', '621aee93a5', 1, 1, 1, '2023-03-17 13:06:25'),
(69, '1', '621aee93a7', 1, 1, 1, '2023-03-17 13:07:17'),
(70, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:07:57'),
(71, '1', '621aee93a5', 1, 1, 1, '2023-03-17 13:08:44'),
(72, '1', '621aee93a4', 1, 1, 1, '2023-03-17 13:09:12'),
(73, '1', '621aee93a7', 1, 1, 1, '2023-03-17 13:09:43'),
(74, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:10:07'),
(75, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:18:01'),
(76, '1', '621aee93a5', 1, 1, 1, '2023-03-17 13:18:53'),
(77, '1', '621aee93a4', 1, 1, 1, '2023-03-17 13:17:59'),
(78, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:18:49'),
(79, '1', '621aee93a7', 1, 1, 1, '2023-03-17 13:19:15'),
(80, '1', '621aee93a4', 1, 1, 1, '2023-03-17 13:17:43'),
(81, '1', '621aee93a5', 1, 1, 1, '2023-03-17 13:18:12'),
(82, '1', '621aee93a7', 1, 1, 1, '2023-03-17 13:18:40'),
(83, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:18:59'),
(84, '1', '621aee93a6', 1, 1, 1, '2023-03-17 13:19:13'),
(85, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:26'),
(86, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:56'),
(87, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:22:24'),
(88, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:22:54'),
(89, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:19'),
(90, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:56'),
(91, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:25'),
(92, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:21'),
(93, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:25'),
(94, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:49'),
(95, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:22:36'),
(96, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:23:12'),
(97, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:24:10'),
(98, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:24:46'),
(99, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:25:48'),
(100, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:27:05'),
(101, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:27:38'),
(102, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:29'),
(103, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:24:23'),
(104, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:25:34'),
(105, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:26:01'),
(106, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:54'),
(107, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:22:45'),
(108, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:28'),
(109, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:21:40'),
(110, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:22:52'),
(111, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:21:18'),
(112, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:21:17'),
(113, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:22:17'),
(114, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:23:03'),
(115, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:24:43'),
(116, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:27:05'),
(117, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:29:21'),
(118, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:30:11'),
(119, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:30:55'),
(120, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:32:27'),
(121, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:33:03'),
(122, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:33:39'),
(123, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:21:16'),
(124, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:21:54'),
(125, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:22:26'),
(126, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:23:00'),
(127, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:24:58'),
(128, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:26:43'),
(129, '1', '621aee93a6', 1, 1, 1, '2023-03-17 14:27:36'),
(130, '1', '621aee93a7', 1, 1, 1, '2023-03-17 14:28:05'),
(131, '1', '621aee93a5', 1, 1, 1, '2023-03-17 14:28:27'),
(132, '1', '621aee93a4', 1, 1, 1, '2023-03-17 14:28:49');

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
  `kolom_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list_dokumen`
--

INSERT INTO `list_dokumen` (`id_dokumen`, `nama_dokumen`, `device_ke`, `rak_ke`, `baris_ke`, `kolom_ke`) VALUES
('621aee93a4', 'Dokumen 1', 1, 1, 2, 3),
('621aee93a5', 'Dokumen 21', 2, 1, 3, 1),
('621aee93a6', 'Dokumen 3', 3, 1, 1, 1),
('621aee93a7', 'Dokumen 22', 2, 2, 3, 1),
('92f55c2ac', 'Jdkasd', 1, 1, 1, 1);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_trans`
--
ALTER TABLE `data_trans`
  MODIFY `id_transaksi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `door_locks`
--
ALTER TABLE `door_locks`
  MODIFY `id_loker` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
