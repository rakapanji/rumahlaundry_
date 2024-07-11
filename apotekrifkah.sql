-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 02:02 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotekrifkah`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama` varchar(200) NOT NULL,
  `id_karyawan` varchar(11) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama`, `id_karyawan`, `divisi`, `email`, `username`, `password`) VALUES
('Erina', 'A01', 'admin', 'erinachyni@gmail.com', 'admin1', 'adminrifkah'),
('Namira', 'A001', 'Karyawan', 'namira@gmail.com', 'namira', 'namira'),
('Husnul', 'kry2', 'Kasir', 'Husnul@gmail.com', 'Husnul', 'husnul');

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_transaksi` varchar(20) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `kasir` varchar(50) NOT NULL,
  `produk1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id_karyawan` varchar(11) NOT NULL,
  `tanggal_transaksi` varchar(20) NOT NULL,
  `kategori` varchar(11) NOT NULL,
  `metode` varchar(11) NOT NULL,
  `jumlah` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id_karyawan`, `tanggal_transaksi`, `kategori`, `metode`, `jumlah`) VALUES
('112', '12 Juni 2024', 'Pengeluaran', 'Tunai', '200000'),
('11223', '12 Juni 2024', 'Pengeluaran', 'Tunai', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `tanggal` varchar(20) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `kd_produk` varchar(7) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_harga` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`tanggal`, `nama_supplier`, `kd_produk`, `nama_produk`, `jumlah`, `total_harga`, `keterangan`) VALUES
('21 Juni 2024', 'Agus', '112B', 'Alpara', '100', '800000', 'Tidak ada'),
('22 Juni 2024', 'Wawan', '110A', 'Imboost', '150', '7500000', 'Tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kd_produk` varchar(7) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `stock` varchar(10) NOT NULL,
  `tanggal_expired` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kd_produk`, `nama_produk`, `kategori`, `harga`, `stock`, `tanggal_expired`) VALUES
('999A', 'Ultraflu', 'Obat tablet', '3000', '200', '28 Juni 2028'),
('112B', 'Alpara', 'Obat tablet', '8000', '150', '29 Agustus 2025'),
('110A', 'Imboost 100ml', 'Obat sirup', '50000', '100', '16 Maret 2026');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `kd_produk` varchar(7) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kd_produk`, `nama_produk`, `jumlah`, `tanggal`, `harga`, `total`) VALUES
('12323', '111A', 'Paramex', '100', '21 Juni 2024', '2000', '200000'),
('12345', '112B', 'Alpara', '100', '21 Juni 2024', '8000', '800000'),
('12346', '113C', 'Bodrex', '50', '21 Juni 2024', '1000', '50000'),
('8764', '114F', 'Kasa', '10', '12 Juni 2024', '5000', '50000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
