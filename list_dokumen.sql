-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 10:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
-- Table structure for table `list_dokumen`
--

CREATE TABLE `list_dokumen` (
  `id_dokumen` varchar(10) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `device_ke` int(11) NOT NULL,
  `rak_ke` int(1) NOT NULL,
  `baris_ke` int(11) NOT NULL,
  `kolom_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_dokumen`
--

INSERT INTO `list_dokumen` (`id_dokumen`, `nama_dokumen`, `device_ke`, `rak_ke`, `baris_ke`, `kolom_ke`) VALUES
('1', 'Dokumen 1', 1, 1, 1, 1),
('10', 'Dokumen 10', 1, 1, 5, 2),
('11', 'Dokumen 11', 1, 1, 6, 1),
('12', 'Dokumen 12', 1, 1, 6, 2),
('13', 'Dokumen 13', 2, 1, 1, 1),
('14', 'Dokumen 14', 2, 1, 1, 2),
('15', 'Dokumen 15', 2, 1, 2, 1),
('16', 'Dokumen 16', 2, 1, 2, 2),
('17', 'Dokumen 17', 2, 1, 3, 1),
('18', 'Dokumen 18', 2, 1, 3, 2),
('19', 'Dokumen 19', 2, 1, 4, 1),
('2', 'Dokumen 2', 1, 1, 2, 1),
('20', 'Dokumen 20', 2, 1, 4, 2),
('21', 'Dokumen 21', 2, 1, 5, 1),
('22', 'Dokumen 22', 2, 1, 5, 2),
('23', 'Dokumen 23', 2, 1, 6, 1),
('24', 'Dokumen 24', 2, 1, 6, 2),
('25', 'Dokumen 25', 2, 2, 1, 1),
('26', 'Dokumen 26', 2, 2, 1, 2),
('27', 'Dokumen 27', 2, 2, 2, 1),
('28', 'Dokumen 28', 2, 2, 2, 2),
('29', 'Dokumen 29', 2, 2, 3, 1),
('3', 'Dokumen 3', 1, 1, 2, 1),
('30', 'Dokumen 30', 2, 2, 3, 2),
('31', 'Dokumen 31', 2, 2, 4, 1),
('32', 'Dokumen 32', 2, 2, 4, 2),
('33', 'Dokumen 33', 2, 2, 5, 1),
('34', 'Dokumen 34', 2, 2, 5, 2),
('35', 'Dokumen 35', 2, 2, 6, 1),
('36', 'Dokumen 36', 2, 2, 6, 2),
('37', 'Dokumen 37', 3, 1, 1, 1),
('38', 'Dokumen 38', 3, 1, 1, 2),
('39', 'Dokumen 39', 3, 1, 2, 1),
('4', 'Dokumen 4', 1, 1, 2, 2),
('40', 'Dokumen 40', 3, 1, 2, 2),
('41', 'Dokumen 41', 3, 1, 3, 1),
('42', 'Dokumen 42', 3, 1, 3, 2),
('43', 'Dokumen 43', 3, 1, 4, 1),
('44', 'Dokumen 44', 3, 1, 4, 2),
('45', 'Dokumen 45', 3, 1, 5, 1),
('46', 'Dokumen 46', 3, 1, 5, 2),
('47', 'Dokumen 47', 3, 1, 6, 1),
('48', 'Dokumen 48', 3, 1, 6, 2),
('5', 'Dokumen 5', 1, 1, 3, 1),
('6', 'Dokumen 1', 1, 1, 3, 1),
('7', 'Dokumen 7', 1, 1, 4, 1),
('8', 'Dokumen 8', 1, 1, 4, 2),
('9', 'Dokumen 9', 1, 1, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_dokumen`
--
ALTER TABLE `list_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
