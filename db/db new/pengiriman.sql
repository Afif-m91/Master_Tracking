-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 14 Mei 2020 pada 12.07
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `pengiriman`
--
CREATE DATABASE IF NOT EXISTS `pengiriman` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pengiriman`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `del_no` varchar(15) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `tgl_barang` date NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `satuan`, `del_no`, `id_kategori`, `nama_kategori`, `tgl_barang`) VALUES
('BRG0001', 'Oli Mpx 200 800Ml', 'SATUAN 1', 'Liter', 'KTG01', '', '2020-05-10'),
('BRG0002', 'Kertas', 'Lembar', '5 Box', 'KTG02', '', '2020-04-17'),
('BRG0003', 'Ballpoint', 'Pcs', '10 Box', 'KTG03', '', '2020-03-04'),
('BRG0004', 'Motor', 'Unit', '5', 'KTG02', '', '2020-02-04'),
('BRG0006', 'Botol Kecap', 'Botol', '121', 'KTG02', '', '2020-05-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengiriman`
--

CREATE TABLE IF NOT EXISTS `detail_pengiriman` (
  `id_detail` int(4) NOT NULL AUTO_INCREMENT,
  `id_pengiriman` varchar(14) NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `qty` int(4) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data untuk tabel `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`id_detail`, `id_pengiriman`, `id_barang`, `qty`) VALUES
(1, 'KRM20160820001', 'BRG0001', 1),
(2, 'KRM20160820001', 'BRG0002', 3),
(3, 'KRM20161015001', 'BRG0006', 1),
(4, 'KRM20161015001', 'BRG0035', 1),
(5, 'KRM20200406991', 'BRG0001', 2),
(6, 'KRM20200423700', 'BRG0002', 3),
(7, 'KRM20200423700', 'BRG0001', 1),
(8, 'KRM20200423700', 'BRG0001', 1),
(16, 'KRM20200514371', 'BRG0006', 1),
(17, 'KRM20200514371', 'BRG0006', 1),
(18, 'KRM20200514371', 'BRG0002', 3),
(19, 'KRM20200514371', 'BRG0002', 3),
(20, 'KRM20200514371', 'BRG0002', 3),
(21, 'KRM20200514371', 'BRG0002', 3),
(22, 'KRM20200514371', 'BRG0001', 1),
(23, 'KRM20200514371', 'BRG0001', 1),
(24, 'KRM20200514371', 'BRG0001', 1),
(25, 'KRM20200514371', 'BRG0001', 1),
(26, 'KRM20200514371', 'BRG0001', 1),
(27, 'KRM20200514371', 'BRG0001', 1),
(28, 'KRM20200514371', 'BRG0001', 1),
(29, 'KRM20200514371', 'BRG0001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `keterangan`) VALUES
('KTG01', 'KATEGORI 1', 'KATEGORI 1'),
('KTG02', 'KATEGORI 2', 'KATEGORI 2'),
('KTG03', 'KATEGORI 3', 'KATEGORI 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE IF NOT EXISTS `kurir` (
  `id_kurir` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama`, `jenis_kelamin`, `telepon`, `alamat`, `password`) VALUES
('KRR01', 'EKO ', 'Laki-Laki', '081385195955', 'TANGERANG', 'ee9cc68e583241dcb548e4217d8c8eb9'),
('KRR02', 'ERIK', 'Laki-Laki', '081284959589', 'TANGERANG', '6faae43d506a230beedcdbff231b478e'),
('KRR03', 'TRIBUDI', 'Laki-Laki', '081219900381', 'TANGERANG', 'b4ae1f68447e3df8a1ce6c4dc3660c5b'),
('KRR04', 'SUMANTA', 'Laki-Laki', '081382630321', 'TANGERANG', 'af7ece06ca8c285657e6a8860e58c44f'),
('KRR05', 'UDRI', 'Laki-Laki', '081210426881', 'TANGERANG', 'a82ae164e11127090055c6c7fbb6a888'),
('KRR06', 'SAEPUL', 'Laki-Laki', '081314485383', 'TANGERANG', '1cdb001697052dcdf055da6b82124bc3'),
('KRR07', 'yanto', 'Laki-Laki', '081284213311', 'Gandul, 16512', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `telepon`, `alamat`) VALUES
('CST0001', 'ASTRA OTOPART', '021-4603550', 'jakarta'),
('CST0002', 'Idemitsu Lube Indonesia', '021-8911 4611', 'JL Permata Raya, Kawasan Industri KIIC, Lot BB/4A, Karawang, Jawa Barat,');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id_pengiriman` varchar(14) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(7) NOT NULL,
  `id_kurir` varchar(5) NOT NULL,
  `no_kendaraan` varchar(8) NOT NULL,
  `no_po` varchar(15) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `tanggal`, `id_pelanggan`, `id_kurir`, `no_kendaraan`, `no_po`, `keterangan`, `penerima`, `photo`, `status`) VALUES
('KRM20190829901', '2019-08-29', 'CST0001', 'KRR06', 'B3340TXP', '-', NULL, NULL, NULL, 1),
('KRM20200406991', '2020-04-06', 'CST0002', 'KRR02', 'B3789TXP', '0001', NULL, NULL, NULL, 1),
('KRM20200423700', '2020-04-23', 'CST0001', 'KRR07', '123', 'B 1 RI', 'ok', 'DIAN', NULL, 2),
('KRM20200514371', '2020-05-14', 'CST0002', 'KRR07', '1', 'B 1 RI', 'Alamat Sudah Pindah', '-', NULL, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
('USR01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
('USR02', 'finance', '57336afd1f4b40dfd9f5731e35302fe5', 2),
('USR03', 'gudang', '202446dd1d6028084426867365b0c7a1', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
