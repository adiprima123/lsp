-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 08:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptopzidan`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `foto` text DEFAULT NULL,
  `harga` int(25) NOT NULL,
  `stok` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `foto`, `harga`, `stok`, `deskripsi`) VALUES
(4, 'Ace', 'ace.png', 1500000, '1', 'diskon 50%'),
(5, 'Acer', 'acer.png', 1000000, '1', '15%'),
(6, 'Lenovo Legion', 'LL.png', 1900000, '0', 'Terjangkau'),
(7, 'Tuf Gaming', 'TUF.png', 1900000, '8', '18%'),
(14, 'Predator Gaming', 'predator.png', 10000, '10', '123'),
(17, 'MSI Gaming', 'msi.png', 18000000, '12', 'Lancar'),
(18, 'Razer Gaming', 'raze.png', 15000, '10', 'Mantap'),
(19, 'Pavillion Gaming', 'pg.png', 11000000, '0', 'Muantap'),
(20, 'ipong', 'Msi_modern_14-removebg-preview.png', 90000000, '90', 'wiiajdawd');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  `foto` text DEFAULT NULL,
  `status` enum('proses','ditolak','terverifikasi','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal_transaksi`, `alamat`, `no_telp`, `nama_lengkap`, `nama_produk`, `harga`, `subtotal`, `foto`, `status`) VALUES
(38, '2023-04-09', 'jakut', '90123123', 'Dan', 'Ace', '', '3000000', 'ace.png', 'terverifikasi'),
(39, '2023-04-09', 'bojong', '09090090909', 'ucup', 'Acer', '', '5000000', 'acer.png', 'ditolak'),
(40, '2023-04-09', 'kkkkkk', '00000000000', 'ucup', 'Pavillion Gaming', '', '11000000', 'pg.png', 'proses'),
(41, '2023-04-09', 'iiiiiiiiii', '9999999', 'ucup', 'Predator Gaming', '', '20000', 'predator.png', 'proses'),
(42, '2023-04-09', 'awdaw', '12303', 'Dan', 'Acer', '', '1000000', 'acer.png', 'proses'),
(43, '2023-04-09', '', '', 'ucup', 'Ace', '', '7500000', 'ace.png', 'proses'),
(44, '2023-04-09', 'rusun', '909090', 'ucup', 'Ace', '', '1500000', 'ace.png', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roles` enum('Admin','Customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `roles`) VALUES
(1, 'ucup', 'admin', 'admin', 'Admin'),
(13, 'Dan', 'user', 'user', 'Customer'),
(14, 'Fathir', 'fathir', '123', 'Customer'),
(18, 'Samsul', 'samsul', '123', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
