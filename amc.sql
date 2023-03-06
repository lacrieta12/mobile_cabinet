-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 01:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amc`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_trans`
--

CREATE TABLE `data_trans` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_dokumen` varchar(10) NOT NULL,
  `status_dev1` int(1) NOT NULL,
  `status_dev2` int(1) NOT NULL,
  `status_dev3` int(1) NOT NULL,
  `waktu_trans` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_trans`
--

INSERT INTO `data_trans` (`id_transaksi`, `id_dokumen`, `status_dev1`, `status_dev2`, `status_dev3`, `waktu_trans`) VALUES
('621afe93a5', '621aee93a4', 1, 0, 0, '2023-03-05 16:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `list_dokumen`
--

CREATE TABLE `list_dokumen` (
  `id_dokumen` varchar(10) NOT NULL,
  `device_ke` int(11) NOT NULL,
  `rak_ke` int(1) NOT NULL,
  `baris_ke` int(11) NOT NULL,
  `kolom_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_dokumen`
--

INSERT INTO `list_dokumen` (`id_dokumen`, `device_ke`, `rak_ke`, `baris_ke`, `kolom_ke`) VALUES
('621aee93a4', 3, 1, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_trans`
--
ALTER TABLE `data_trans`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `list_dokumen`
--
ALTER TABLE `list_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
