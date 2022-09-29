-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 04:41 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_apotek_vb`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun_admin`
--

CREATE TABLE IF NOT EXISTS `akun_admin` (
  `Id` int(100) NOT NULL,
  `Nama_Lengkap` varchar(100) NOT NULL,
  `TTL` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_admin`
--

INSERT INTO `akun_admin` (`Id`, `Nama_Lengkap`, `TTL`, `Jenis_Kelamin`, `Alamat`, `Email`, `Password`) VALUES
(1, 'Eko Romad', 'Karawang, 17 Januari 1997', 'Laki-Laki', 'Cikampek', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_akun`
--

CREATE TABLE IF NOT EXISTS `daftar_akun` (
  `Nama_Lengkap` varchar(100) NOT NULL,
  `Tempat_Lahir` varchar(100) NOT NULL,
  `Tanggal_Lahir` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_akun`
--

INSERT INTO `daftar_akun` (`Nama_Lengkap`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `Email`, `Password`) VALUES
('Amid Rakhman', 'Kebumen', '17 September  1997', 'Laki-Laki', 'Jl.Melati No.12, Cidampa, Karawang', 'amid@gmail.com', 'amid'),
('Elma Adila', 'Karawang', '24 August  2000', 'Perempuan', 'Cikampek Utara', 'dila@gmail.com', 'dila'),
('Muhammad Eko Romadhon', 'Sleman', '27 January  1997', 'Laki-Laki', 'Jl. Onik 1, Kotabaru, Cikampek Utara, Karawang', 'eko@gmail.com', 'eko'),
('Oky Fajar', 'Karawang', '13 October  1999', 'Laki-Laki', 'Perum Regency, Jl. Onik Karawang', 'okyfajar@gmail.com', 'oky'),
('Satriyo Aji Laksono', 'Gunung Kidul', '24 November  1997', 'Laki-Laki', 'Perum Indah Mulia, Cidomba, Cikarang', 'satriyo@gmail.com', 'satriyo'),
('Udin', 'Rembang', '31 May  2020', 'Laki-Laki', 'PERUMNAS', 'udin1@gmail.com', 'udin');

-- --------------------------------------------------------

--
-- Table structure for table `data_obat`
--

CREATE TABLE IF NOT EXISTS `data_obat` (
  `Id_Barang` int(200) NOT NULL,
  `Nama_Obat` varchar(100) NOT NULL,
  `Jenis_Obat` varchar(100) NOT NULL,
  `Harga_Beli` int(200) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Stock` int(100) NOT NULL,
  `Expaired` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20012 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_obat`
--

INSERT INTO `data_obat` (`Id_Barang`, `Nama_Obat`, `Jenis_Obat`, `Harga_Beli`, `Harga_Jual`, `Stock`, `Expaired`, `Supplier`) VALUES
(20001, 'Bodrex', 'Tablet', 2500, 3000, 140, '24 / 08 / 2021', 'PT. Bodrex Indonesia'),
(20002, 'Ultrasiline', 'Bubuk', 4500, 5000, 250, '23 / 02 / 2022', 'PT. Ultrasiline Abadi'),
(20003, 'Antangin', 'Cair', 2500, 3000, 250, '27 / 06 / 2022', 'PT. Sido Muncul'),
(20004, 'Hemaviton', 'Sirup', 23000, 25000, 190, '01 / 07 / 2022', 'PT. Hemaviton Atc'),
(20005, 'Ultraflu', 'Tablet', 2500, 3000, 250, '04 / 10 / 2021', 'PT. Ultraflu Afp'),
(20006, 'Sakatonik Liver', 'Sirup', 25000, 27000, 180, '26 / 11 / 2021', 'PT. Sakatonic Skc'),
(20007, 'Decolgen', 'Tablet', 3500, 4000, 160, '12 / 04 / 2021', 'PT. Decolg'),
(20008, 'Panadol', 'Tablet', 2500, 3000, 230, '30 / 08 / 2022', 'PT. Panadol Abadi'),
(20010, 'Minyak Kayu Putih', 'Botol Besar', 15000, 17000, 210, '25 / 09 / 2022', 'PT. Minkay'),
(20011, 'Promag', 'Tablet', 18000, 20000, 180, '17 / 11 / 2021', 'PT. Promag Atd');

-- --------------------------------------------------------

--
-- Table structure for table `data_pesanan`
--

CREATE TABLE IF NOT EXISTS `data_pesanan` (
  `Id_Barang` int(200) NOT NULL,
  `Nama_Obat` varchar(100) NOT NULL,
  `Jenis_Obat` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Total_Harga` int(100) NOT NULL,
  `Stock_Tersedia` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `Id_Barang` int(100) NOT NULL,
  `Nama_Obat` varchar(100) NOT NULL,
  `Jenis_Obat` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Total_Harga` int(100) NOT NULL,
  `Waktu_Beli` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangan`
--

CREATE TABLE IF NOT EXISTS `laporan_keuangan` (
  `Id_Barang` int(100) NOT NULL,
  `Nama_Obat` varchar(100) NOT NULL,
  `Jenis_Obat` varchar(100) NOT NULL,
  `Harga_Beli` int(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Stock` int(100) NOT NULL,
  `Total_Beli` int(100) NOT NULL,
  `Total_Jual` int(100) NOT NULL,
  `Expaired` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20012 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_keuangan`
--

INSERT INTO `laporan_keuangan` (`Id_Barang`, `Nama_Obat`, `Jenis_Obat`, `Harga_Beli`, `Harga_Jual`, `Stock`, `Total_Beli`, `Total_Jual`, `Expaired`, `Supplier`) VALUES
(20001, 'Bodrex', 'Tablet', 2500, 3000, 150, 375000, 450000, '24 / 08 / 2021', 'PT. Bodrex Indonesia'),
(20002, 'Ultrasiline', 'Bubuk', 4500, 5000, 250, 1125000, 1250000, '23 / 02 / 2022', 'PT. Ultrasiline Abadi'),
(20003, 'Antangin', 'Cair', 2500, 3000, 270, 675000, 810000, '27 / 06 / 2022', 'PT. Sido Muncul'),
(20004, 'Hemaviton', 'Sirup', 23000, 25000, 200, 4600000, 5000000, '01 / 07 / 2022', 'PT. Hemaviton Atc'),
(20005, 'Ultraflu', 'Tablet', 2500, 3000, 250, 625000, 750000, '04 / 10 / 2021', 'PT. Ultraflu Afp'),
(20006, 'Sakatonik Liver', 'Sirup', 25000, 27000, 180, 4500000, 4860000, '26 / 11 / 2021', 'PT. Sakatonic Skc'),
(20007, 'Decolgen', 'Tablet', 3500, 4000, 160, 560000, 640000, '12 / 04 / 2021', 'PT. Decolg'),
(20008, 'Panadol', 'Tablet', 2500, 3000, 230, 575000, 690000, '30 / 08 / 2022', 'PT. Panadol Abadi'),
(20010, 'Minyak Kayu Putih', 'Botol Besar', 15000, 17000, 210, 3150000, 3570000, '25 / 09 / 2022', 'PT. Minkay'),
(20011, 'Promag', 'Tablet', 18000, 20000, 180, 3240000, 3600000, '17 / 11 / 2021', 'PT. Promag Atd');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `No` int(100) NOT NULL,
  `Nama_Kasir` varchar(100) NOT NULL,
  `Total_Jumlah` int(100) NOT NULL,
  `Total_Harga` int(100) NOT NULL,
  `Bayar` int(100) NOT NULL,
  `Kembalian` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
  ADD PRIMARY KEY (`Email`), ADD KEY `Nama_Lengkap` (`Nama_Lengkap`), ADD KEY `Nama_Lengkap_2` (`Nama_Lengkap`);

--
-- Indexes for table `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`Id_Barang`), ADD KEY `Stock` (`Stock`);

--
-- Indexes for table `data_pesanan`
--
ALTER TABLE `data_pesanan`
  ADD PRIMARY KEY (`Id_Barang`), ADD KEY `Total_Harga` (`Total_Harga`), ADD KEY `Total_Harga_2` (`Total_Harga`), ADD KEY `Stock_Tersedia` (`Stock_Tersedia`), ADD KEY `Id_Barang` (`Id_Barang`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD KEY `Total_Harga` (`Total_Harga`), ADD KEY `Total_Harga_2` (`Total_Harga`), ADD KEY `Total_Harga_3` (`Total_Harga`), ADD KEY `Total_Harga_4` (`Total_Harga`), ADD KEY `Jumlah` (`Jumlah`), ADD KEY `Id_Barang` (`Id_Barang`), ADD KEY `Id_Barang_2` (`Id_Barang`), ADD KEY `Id_Barang_3` (`Id_Barang`), ADD KEY `Id_Barang_4` (`Id_Barang`,`Nama_Obat`,`Jenis_Obat`,`Harga_Jual`,`Jumlah`,`Total_Harga`), ADD KEY `Id_Barang_5` (`Id_Barang`,`Total_Harga`), ADD KEY `Id_Barang_6` (`Id_Barang`), ADD KEY `Id_Barang_7` (`Id_Barang`);

--
-- Indexes for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`Id_Barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No`), ADD KEY `Total_Harga` (`Total_Harga`), ADD KEY `Nama_Kasir` (`Nama_Kasir`), ADD KEY `Total_Harga_2` (`Total_Harga`), ADD KEY `Total_Harga_3` (`Total_Harga`), ADD KEY `Total_Harga_4` (`Total_Harga`), ADD KEY `Total_Harga_5` (`Total_Harga`), ADD KEY `Total_Harga_6` (`Total_Harga`), ADD KEY `No` (`No`), ADD KEY `No_2` (`No`), ADD KEY `No_3` (`No`), ADD KEY `No_4` (`No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun_admin`
--
ALTER TABLE `akun_admin`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_obat`
--
ALTER TABLE `data_obat`
  MODIFY `Id_Barang` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20012;
--
-- AUTO_INCREMENT for table `data_pesanan`
--
ALTER TABLE `data_pesanan`
  MODIFY `Id_Barang` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `Id_Barang` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20012;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
