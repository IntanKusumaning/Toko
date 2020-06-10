-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2020 pada 08.32
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Nama produk` varchar(100) NOT NULL,
  `Harga` varchar(100) NOT NULL,
  `Jumlah` varchar(100) NOT NULL,
  `Produk rusak` varchar(100) NOT NULL,
  `Tanggal kadaluarsa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Nama produk`, `Harga`, `Jumlah`, `Produk rusak`, `Tanggal kadaluarsa`) VALUES
('baju', '67.000', '25', '1', '-'),
('celana', '56.000', '50', '3', '-'),
('kemeja', '40.000', '35', '0', '-'),
('sweater', '25.000', '15', '1', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `type`) VALUES
('Pemilik', '12345', 'Home'),
('Pegawai', '23456', 'Home2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Nama` varchar(100) NOT NULL,
  `No.Telp` varchar(100) NOT NULL,
  `Produk` varchar(100) NOT NULL,
  `Harga` varchar(100) NOT NULL,
  `Status datang` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`Nama`, `No.Telp`, `Produk`, `Harga`, `Status datang`, `Alamat`) VALUES
('siska', '081234678943', 'sweater', '25.000', '1', 'perum. indah karya'),
('rudy', '081567982670', 'kemeja', '40.000', '1', 'perum. indah karya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `Tanggal` varchar(100) NOT NULL,
  `Nama produk` varchar(100) NOT NULL,
  `Harga` varchar(100) NOT NULL,
  `Jumlah` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`Tanggal`, `Nama produk`, `Harga`, `Jumlah`, `Status`) VALUES
('25 Maret 2019', 'kemeja', '40.000', '1', 'lunas'),
('27 Maret 2019', 'sweater', '25.000', '2', 'lunas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
