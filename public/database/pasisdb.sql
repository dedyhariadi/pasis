-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 08:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` int(11) NOT NULL,
  `namaBarang` varchar(100) NOT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `satuan`) VALUES
(1, 'PDH Pasis', 'Stell'),
(2, 'Blacknavy', 'set'),
(3, 'Sepatu PDH', 'pcs'),
(4, 'Sepatu Wisuda', 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `cetak`
--

CREATE TABLE `cetak` (
  `idCetak` int(11) NOT NULL,
  `namaCetak` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `idJurusan` int(11) NOT NULL,
  `namaJurusan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idKelas` int(11) NOT NULL,
  `namaKelas` varchar(10) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `jurusanId` tinyint(2) DEFAULT NULL,
  `kertasId` int(11) DEFAULT NULL,
  `tglWisuda` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kertas`
--

CREATE TABLE `kertas` (
  `idKertas` int(11) NOT NULL,
  `warna` varchar(25) NOT NULL,
  `ukuran` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listsetor`
--

CREATE TABLE `listsetor` (
  `idListSetor` int(11) NOT NULL,
  `pasisId` int(11) DEFAULT NULL,
  `setorId` int(11) DEFAULT NULL,
  `barangId` int(11) DEFAULT NULL,
  `jmlBarang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pasis`
--

CREATE TABLE `pasis` (
  `idPasis` int(11) NOT NULL,
  `namaPasis` varchar(45) DEFAULT NULL,
  `ukSepatu` tinyint(2) DEFAULT NULL,
  `ukKaos` varchar(5) DEFAULT NULL,
  `ukTopi` tinyint(2) DEFAULT NULL,
  `ukBN` varchar(45) DEFAULT NULL,
  `ukHem` varchar(45) DEFAULT NULL,
  `ukBaju` varchar(45) DEFAULT NULL,
  `ukCelana` varchar(45) DEFAULT NULL,
  `kelasId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `tglSetor` datetime DEFAULT NULL,
  `penerima` varchar(45) DEFAULT NULL,
  `hpPenerima` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statuscetak`
--

CREATE TABLE `statuscetak` (
  `idStatusCetak` int(11) NOT NULL,
  `cetakId` int(11) DEFAULT NULL,
  `tglCetak` datetime DEFAULT NULL,
  `pasisId` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `cetak`
--
ALTER TABLE `cetak`
  ADD PRIMARY KEY (`idCetak`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`idJurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idKelas`);

--
-- Indexes for table `kertas`
--
ALTER TABLE `kertas`
  ADD PRIMARY KEY (`idKertas`);

--
-- Indexes for table `listsetor`
--
ALTER TABLE `listsetor`
  ADD PRIMARY KEY (`idListSetor`);

--
-- Indexes for table `pasis`
--
ALTER TABLE `pasis`
  ADD PRIMARY KEY (`idPasis`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`);

--
-- Indexes for table `statuscetak`
--
ALTER TABLE `statuscetak`
  ADD PRIMARY KEY (`idStatusCetak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cetak`
--
ALTER TABLE `cetak`
  MODIFY `idCetak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `idJurusan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idKelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kertas`
--
ALTER TABLE `kertas`
  MODIFY `idKertas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listsetor`
--
ALTER TABLE `listsetor`
  MODIFY `idListSetor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasis`
--
ALTER TABLE `pasis`
  MODIFY `idPasis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuscetak`
--
ALTER TABLE `statuscetak`
  MODIFY `idStatusCetak` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
