-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 03:34 AM
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
-- Database: `db_pensiun`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_datapensiun`
--

CREATE TABLE `tb_datapensiun` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `pangkat` varchar(100) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `tanggal_pensiun` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_datapensiun`
--

INSERT INTO `tb_datapensiun` (`id`, `nama`, `tanggal_lahir`, `jabatan`, `pangkat`, `golongan`, `tanggal_pensiun`) VALUES
(1, 'John Doe', '1980-05-15', 'Manajer', 'IV/a', 'III', '2045-07-01'),
(2, 'Jane Smith', '1975-09-20', 'Supervisor', 'III/b', 'II', '2043-10-15'),
(3, 'Michael Johnson', '1982-11-10', 'Analisis Data', 'IV/c', 'IV', '2047-03-20'),
(4, 'Sarah Brown', '1968-03-25', 'Konsultan', 'V/a', 'V', '2042-12-10'),
(5, 'David Lee', '1973-07-08', 'Direktur Keuangan', 'I/a', 'I', '2040-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_datapensiun`
--
ALTER TABLE `tb_datapensiun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_datapensiun`
--
ALTER TABLE `tb_datapensiun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
