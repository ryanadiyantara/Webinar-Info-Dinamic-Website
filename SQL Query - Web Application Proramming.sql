-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2022 at 09:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-wap-group-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_whatsapp` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `username`, `email`, `no_whatsapp`, `password`) VALUES
(4, 'Ryan', 'adiyantararyan@gmail.com', '082128428935', 'ryanccit21'),
(5, 'admin', 'mikasa.chan.850@gmail.com', '082128428935', 'admin'),
(6, 'admin2', 'ahbrewlinkscb010703@gmail.com', '082128428935', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `data_webinar`
--

CREATE TABLE `data_webinar` (
  `id` int(5) NOT NULL,
  `judul_webinar` varchar(100) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `tanggal_waktu` varchar(100) NOT NULL,
  `nama_pembicara` varchar(100) NOT NULL,
  `foto_pembicara` varchar(100) NOT NULL,
  `profil_pembicara` varchar(255) NOT NULL,
  `minimal_usia` varchar(100) NOT NULL,
  `level_webinar` varchar(100) NOT NULL,
  `bahasa_webinar` varchar(100) NOT NULL,
  `kategori_webinar` varchar(100) NOT NULL,
  `reward_webinar` varchar(255) NOT NULL,
  `ringkasan_webinar` varchar(255) NOT NULL,
  `harga_webinar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_webinar`
--

INSERT INTO `data_webinar` (`id`, `judul_webinar`, `thumbnail`, `tanggal_waktu`, `nama_pembicara`, `foto_pembicara`, `profil_pembicara`, `minimal_usia`, `level_webinar`, `bahasa_webinar`, `kategori_webinar`, `reward_webinar`, `ringkasan_webinar`, `harga_webinar`) VALUES
(10, 'Mengenal Investasi Cryptocurrency dan Resikonya', 'aset/Thumbnail-1.png', 'Senin, 01 Agustus 2022 | 10:00 WIB', 'Ryan Adi', 'aset/Pembicara-1.png', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Semua Umur', 'Pemula', 'Indonesia', 'Sales & Marketing', 'E-sertifikat dan saldo Go-Pay untuk 2 orang penanya.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Gratis'),
(11, 'Membangun Karir Sampai Level Tertinggi di Perusahaan', 'aset/Thumbnail-2.png', 'Senin, 08 Agustus 2022 | 10:00 WIB', 'Ibu Mega', 'aset/Pembicara-2.png', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Semua Umur', 'Pemula', 'Indonesia', 'Personal Development', 'E-sertifikat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Gratis'),
(12, 'Cara Mematangkan Skill Coding Kamu', 'aset/Thumbnail-3.png', 'Senin, 15 Agustus 2022 | 10:00 WIB', 'Eyang Luhut', 'aset/Pembicara-3.png', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '18', 'Expert', 'Indonesia', 'Teaching & Academics', 'E-sertifikat dan saldo Go-Pay untuk 2 orang penanya.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Rp.50.000'),
(13, 'Tips dan Trik Bekerja Sama Dalam Tim', 'aset/Thumbnail-4.png', 'Senin, 22 Agustus 2022 | 10:00 WIB', 'Pakde Joko', 'aset/Pembicara-4.png', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Semua Umur', 'Pemula', 'Indonesia', 'Teaching & Academics', 'E-sertifikat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Gratis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `data_webinar`
--
ALTER TABLE `data_webinar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_webinar`
--
ALTER TABLE `data_webinar`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
