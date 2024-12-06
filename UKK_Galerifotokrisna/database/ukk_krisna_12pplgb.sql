-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2024 pada 17.19
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_krisna_12pplgb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(5, 'Krisna Adi Saputra', 'Krisna', '1234', '085740594917', 'admin@gmail.com', 'Klaten'),
(6, 'Muhammad Abdullah', 'Migos', '1234', '09877654917', 'migossupernova@gmail.com', 'Sidoharjo'),
(7, 'Davina Putri Anandita', 'davina', '123', '087789412375', 'davinaanandita@gmail.com', 'Pekanbaru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'Album'),
(15, 'Vario'),
(16, 'Xmax'),
(17, 'Aerox'),
(18, 'Innova'),
(19, 'Fortuner'),
(20, 'Pajero'),
(21, 'Hilux'),
(22, 'isuzu'),
(23, 'Busmania');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(43, 15, '', 5, 'Krisna Adi Saputra', 'Vario Neptune', '<p>Vario ini adalah, vario milik Mas Dandy Rizki Narwandy basicnya vario 150 esp atau vario Led Old Proper style by @neptune.drn</p>\r\n', 'foto1732954229.jpg', 1, '2024-11-30 08:41:21'),
(44, 19, '', 5, 'Krisna Adi Saputra', '2GD DRACO', '<p>Fortuner dengan fitment yang gacor abisss, ini adalah <strong>2GD DRACO</strong> mobil ini sering sekali dicolong desain liverynya dan di pakai pada mobil lain ohh ya untuk designer-nya yaitu mas @pamzky.std ungkin kalian tidak asing dengan nama tersebut, ya benar beliau anak dari pemilik bengkel shockbreaker &quot;Pak Yono&quot; fortuner satu ini dengan fitment yang cukup ceper juga ditambahi dengan beberapa parts modif lainnya antara suspensi dari AIRBFT, perlampuan dari SABER dan sektor kaki kaki perpaduan antara velg <strong>TE37 dan RPF1</strong> @pamzky.std @2gd_dracco @bengkelpakyono @airbft @saber.industries</p>\r\n', 'foto1732955240.jpg', 1, '2024-12-01 00:54:54'),
(45, 19, 'Fortuner', 5, 'Krisna Adi Saputra', '2gd Anjana', 'fortuner Mexico style a.k.a 2GD Anjana, entah mengapa fortuner dengan modifan seperti ini terlihat begitu gahar, perpaduan look dan mesin yang EPIC menghasilkan maha karya 2GD ANJANA', 'foto1732955588.jpg', 1, '2024-11-30 08:33:08'),
(46, 23, 'Busmania', 5, 'Krisna Adi Saputra', 'Jetbus 5 Pesona', 'Jetbus 5, adalah segmen baru dari body bus buatan karoseri adiputro malang, update pada body bus ini terletak pada beberapa bagian antara lain,\r\n1.Lampu Depan\r\n2.Lampu Belakang\r\n3.Selendang\r\n4.Topi\r\n5.Wajah depan\r\n6.Wajah belakang\r\nselain dari tampilan saja, jetbus 5  juga diupgrade sektor mesinnya sehingga efisiensi bahan bakarnya bisa lebih irit', 'foto1733013715.jpeg', 1, '2024-12-01 00:41:55'),
(47, 17, 'Aerox', 6, 'Muhammad Abdullah', 'Migos', 'aerox supernovaa a.k.a aerox migoss', 'foto1733015475.png', 1, '2024-12-01 01:11:15'),
(48, 18, 'Innova', 6, 'Muhammad Abdullah', 'sijero2kd', 'abidkuba', 'foto1733015851.png', 1, '2024-12-01 01:17:31'),
(49, 21, '', 5, 'Krisna Adi Saputra', 'Swap face Hilux', '<p>gacorrrr sekaliii</p>\r\n', 'foto1733016164.jpeg', 1, '2024-12-01 01:22:44'),
(50, 16, 'Xmax', 6, 'Muhammad Abdullah', 'Gambuy XMAX', 'gambuy.reborn xmax', 'foto1733041701.jpeg', 1, '2024-12-01 08:28:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
