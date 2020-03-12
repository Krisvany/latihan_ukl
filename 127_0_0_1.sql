-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 09:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aku`
--
CREATE DATABASE IF NOT EXISTS `aku` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aku`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `stok` double NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `penulis`, `genre`, `stok`, `image`) VALUES
('1', 'kamu', 'nashiya alfi', 'romansa remaja', 5, '1-534.jpg'),
('2', 'aku', 'nashiya alfi', 'romansa remaja', 7, '2-196.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(200) NOT NULL,
  `kode_buku` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `kode_buku`) VALUES
('63495', '1'),
('90189', '2'),
('5308', '2');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` varchar(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `nisn`, `nip`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
('5308', '01', '', '2019-05-02', '0000-00-00'),
('53635', '01', '', '2019-05-02', '0000-00-00'),
('56876', '01', '', '2019-05-01', '0000-00-00'),
('63495', '01', '', '2019-05-01', '0000-00-00'),
('68955', '01', '', '2019-05-02', '0000-00-00'),
('85230', '01', '', '2019-05-01', '0000-00-00'),
('90189', '01', '', '2019-05-01', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `nip` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pustakawan`
--

INSERT INTO `pustakawan` (`nip`, `nama`, `kontak`, `username`, `password`, `image`) VALUES
('01', 'nashiya', '085339292835', 'alfi', 'alfi', '01-597.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `alamat`, `kontak`, `username`, `password`, `image`) VALUES
('01', 'nashiya', 'Banyuwangi', '085339292835', 'nana', 'nana', '01-528.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);
--
-- Database: `alfi`
--
CREATE DATABASE IF NOT EXISTS `alfi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alfi`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `status`) VALUES
('alfi', 'halo', 1),
('nashiya', 'hai', 2),
('ramadhani', 'hi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `status`) VALUES
('joko', 'rahasia', 0),
('budi', 'gakpakek', 1),
('joko', 'rahasia', 0),
('budi', 'gakpakek', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `status` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `api-crud`
--
CREATE DATABASE IF NOT EXISTS `api-crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api-crud`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Database: `api_poin`
--
CREATE DATABASE IF NOT EXISTS `api_poin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api_poin`;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id` int(20) NOT NULL,
  `nama_pelanggaran` text NOT NULL,
  `kategori` enum('kedisiplinan','kerapian','kerajianan','') NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id`, `nama_pelanggaran`, `kategori`, `poin`, `created_at`, `updated_at`) VALUES
(2, 'telat', 'kedisiplinan', 100, '2019-12-10 07:39:26', '0000-00-00 00:00:00'),
(4, 'bolos', 'kedisiplinan', 56, '2019-12-10 08:36:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poin_siswa`
--

CREATE TABLE `poin_siswa` (
  `id` int(20) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelanggaran` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` text NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(20) NOT NULL,
  `nis` varchar(191) NOT NULL,
  `nama_siswa` varchar(191) NOT NULL,
  `kelas` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama_siswa`, `kelas`, `created_at`, `updated_at`) VALUES
(3, 'ysgdasdhgvshdg', 'kedisihvjsdhvjdhsghvjplinan', 'dvcsjdvhdsv', '2019-12-10 08:18:00', '0000-00-00 00:00:00'),
(4, 'ysgdasdhkjsvcsjcvhhjhjgvshdg', 'hfdwsvjcsdbvhjdhjhd', 'dvcsjddvhdsfv', '2019-12-10 08:38:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('admin','petugas','','') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'uwuu', 'alya@gmail', 'alyaaaa', 'petugas', '2019-12-10 08:33:11', '0000-00-00 00:00:00'),
(5, 'alya', 'alya@gmail', 'alyaaaa', 'petugas', '2019-12-10 08:32:09', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`,`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `baru`
--
CREATE DATABASE IF NOT EXISTS `baru` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `baru`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `stock` int(200) NOT NULL,
  `images` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `penulis`, `genre`, `stock`, `images`) VALUES
('01', 'titik kembali', 'nashiya alfi', 'romansa remaja', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(300) NOT NULL,
  `kode_buku` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `kode_buku`) VALUES
('46509', '01');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` varchar(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `nisn`, `nip`, `tgl_pinjam`, `tgl_kembali`) VALUES
('35169', '3', '', '2019-05-01', '0000-00-00'),
('46509', '3', '', '2019-05-01', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `nip` int(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pustakawan`
--

INSERT INTO `pustakawan` (`nip`, `nama`, `kontak`, `username`, `password`, `image`) VALUES
(2, 'uco', '09897866575', 'uco', 'uco', '2-60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `alamat`, `kontak`, `username`, `password`, `image`) VALUES
('01', 'ramadhani', 'banyuwangi', '087654321123', 'ramadhani', 'a123', '01-464.jpg'),
('02', 'kyungsoo', 'korea', '081234567890', 'cimol', 'uco', '02-17.jpg'),
('04', 'nbkjsaffdg', 'fewfw', '9898786', 'uwu', 'uwu', '04-916.jpg'),
('3', 'sdfhjsadf', 'jksdhfkds', 'djvksh', 'alfi', 'alfi', '3-263.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
--
-- Database: `belajar_laravel`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `belajar_laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `isbn` varchar(100) NOT NULL,
  `judul_buku` varchar(300) NOT NULL,
  `penulis` varchar(200) NOT NULL,
  `penerbit` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`isbn`, `judul_buku`, `penulis`, `penerbit`, `image`, `created_at`, `updated_at`) VALUES
('1', 'pacarku orang korea', 'alfi', 'sm entertaiment', '1-1564545383.jpeg', '2019-07-30 20:56:23', '2019-07-30 20:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_07_25_040339_create_siswas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `nis` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`nis`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
('1', 'Alfi', 'Banyuwangi', '2019-07-28 19:35:34', '2019-07-28 19:35:34'),
('2', 'Ahmad', 'Malang', '2019-07-28 19:35:59', '2019-07-28 19:35:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Perempuan Manis', 'hari ini pertama kali aku dan keluargaku tinggal di sebuah perumahan yang agak jauh dari kota. sebuah desa yang sepi', '2019-10-15 07:24:58'),
(2, 'dia yang sendiri', 'iwhfdiwf', '2019-10-15 07:16:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `gudang`
--
CREATE DATABASE IF NOT EXISTS `gudang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gudang`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(200) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `deskripsi_barang` text NOT NULL,
  `stock_barang` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `deskripsi_barang`, `stock_barang`) VALUES
(1, 'penghapus', 'untuk menghapus tulisan', 5),
(2, 'pensil', 'untuk menulis di buku', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `hello`
--
CREATE DATABASE IF NOT EXISTS `hello` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hello`;

-- --------------------------------------------------------

--
-- Table structure for table `exo`
--

CREATE TABLE `exo` (
  `id_nama` varchar(10) NOT NULL,
  `nama_member` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `alamat_member` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exo`
--

INSERT INTO `exo` (`id_nama`, `nama_member`, `jenis_kelamin`, `alamat_member`) VALUES
('001', 'kim minseok', 'laki-laki', 'korea'),
('002', 'kim jumyeon', 'laki-laki', 'korea'),
('003', 'byun baekhyun', 'laki-laki', 'korea'),
('004', 'kim jongdae', 'laki-laki', 'korea'),
('005', 'park chanyeol', 'laki-laki', 'korea'),
('006', 'do kyungsoo', 'laki-laki', 'korea'),
('007', 'kim jongin', 'laki-laki', 'korea'),
('008', 'oh sehun', 'laki-laki', 'korea');

-- --------------------------------------------------------

--
-- Table structure for table `kpop_show`
--

CREATE TABLE `kpop_show` (
  `id_kpop` int(30) NOT NULL,
  `nama_kpop` varchar(50) DEFAULT NULL,
  `judul_kpop` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpop_show`
--

INSERT INTO `kpop_show` (`id_kpop`, `nama_kpop`, `judul_kpop`) VALUES
(1, 'exo', 'Growl'),
(2, 'twice', 'cheer_up'),
(3, 'blackpink', 'Whistle'),
(4, 'red_velvet', 'Bad_Boy'),
(5, 'bts', 'DNA');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_nama` varchar(10) NOT NULL,
  `nama_member` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_nama`, `nama_member`, `jenis_kelamin`, `alamat`) VALUES
('001', 'kim minseok', 'laki-laki', 'korea');

-- --------------------------------------------------------

--
-- Table structure for table `sampah`
--

CREATE TABLE `sampah` (
  `id_sampah` int(30) NOT NULL,
  `nama_sampah` varchar(40) DEFAULT NULL,
  `jenis_sampah` varchar(40) DEFAULT NULL,
  `fungsi_3r` varchar(40) DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `tekstur` varchar(40) DEFAULT NULL,
  `manfaat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampah`
--

INSERT INTO `sampah` (`id_sampah`, `nama_sampah`, `jenis_sampah`, `fungsi_3r`, `kategori`, `tekstur`, `manfaat`) VALUES
(2, 'botol plastik', 'plastik', 'recycle', 'anorganik', 'kering', 'kerajinan tangan'),
(4, 'daun kering', 'tumbuhan', 'recycle', 'organik', 'basah', 'pupuk'),
(7, 'aaa', 'alami', 'bbb', 'ccc', 'ddd', 'eee'),
(8, 'a', 'kertas', 'b', 'organik', 'c', 'd'),
(9, 'd', 'alami', 'e', 'organik', 'f', 'untuk pupuk');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(20) NOT NULL,
  `nama_supplier` varchar(30) DEFAULT NULL,
  `alamat_supplier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`) VALUES
(4, 'Siti', 'Italia'),
(5, 'Heru', 'Dubai'),
(6, 'Alea Ramadhani', 'Korea'),
(7, 'Febryan Nathaniell', 'Korea'),
(27, 'Kadaffi Ramadhan', 'Banyuwangi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exo`
--
ALTER TABLE `exo`
  ADD PRIMARY KEY (`id_nama`);

--
-- Indexes for table `kpop_show`
--
ALTER TABLE `kpop_show`
  ADD PRIMARY KEY (`id_kpop`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_nama`);

--
-- Indexes for table `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id_sampah`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);
--
-- Database: `hijab`
--
CREATE DATABASE IF NOT EXISTS `hijab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hijab`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `jumlah` double NOT NULL,
  `harga` double NOT NULL,
  `warna` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(190) NOT NULL,
  `jumlah` int(90) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(200) NOT NULL,
  `kontak` double NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(190) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `jwt`
--
CREATE DATABASE IF NOT EXISTS `jwt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jwt`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(59) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` int(122) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(59) NOT NULL AUTO_INCREMENT;
--
-- Database: `latihan_ukl`
--
CREATE DATABASE IF NOT EXISTS `latihan_ukl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_ukl`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_barang` int(11) NOT NULL,
  `hrg_sewa` int(11) NOT NULL,
  `deskripsi` int(11) NOT NULL,
  `tgl_sewa` int(11) NOT NULL,
  `tgl_kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `nip` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`nip`);
--
-- Database: `magermart`
--
CREATE DATABASE IF NOT EXISTS `magermart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `magermart`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
('01', 'alfi', 'alfi', 'alfi2711');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga` double NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_produk`, `nama_produk`, `deskripsi_produk`, `jenis_produk`, `stok`, `harga`, `gambar`, `created_at`, `updated_at`) VALUES
('1', 'uuihuuhhu', 'knjljhgjbn bjnbjn', 'jnkjnjknlml', 7, 676779878989, '1-1570151109.jpeg', '2019-10-03 18:05:09', '2019-10-03 18:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `id_produk` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(100) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat_pembeli` varchar(100) NOT NULL,
  `telepon_pembeli` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `alamat_pembeli`, `telepon_pembeli`, `username`, `password`, `created_at`, `updated_at`) VALUES
('001', 'nashiya', 'Banyuwangi', '085339292835', 'alfi', 'uwu', '2019-10-02 03:42:15', '2019-10-01 20:42:15'),
('002', 'heru', 'banyuwangi', '097766565656', 'heru', 'uwu', '2019-10-02 20:55:05', '2019-10-02 20:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `id_pembeli` varchar(100) NOT NULL,
  `id_admin` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);
--
-- Database: `nashiyaalfiramadhani_xrpl5_29`
--
CREATE DATABASE IF NOT EXISTS `nashiyaalfiramadhani_xrpl5_29` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nashiyaalfiramadhani_xrpl5_29`;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` varchar(20) NOT NULL,
  `nama_guru` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`) VALUES
('001', 'Shelvy Fitria'),
('002', 'Siti Kurniawati'),
('003', 'Ukhty Aulia');

-- --------------------------------------------------------

--
-- Table structure for table `kbm`
--

CREATE TABLE `kbm` (
  `kode_mapel` varchar(20) DEFAULT NULL,
  `kode_kelas` varchar(20) DEFAULT NULL,
  `id_guru` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kbm`
--

INSERT INTO `kbm` (`kode_mapel`, `kode_kelas`, `id_guru`) VALUES
('KIM', 'XR4', '002'),
('MTK', 'XR4', '001'),
('MTK', 'XR3', '001'),
('MTK', 'XR2', '001'),
('MTK', 'XR1', '001'),
('MTK', 'XR5', '001'),
('BIN', 'XR5', '003'),
('BIN', 'XR4', '003'),
('BIG', 'XR5', '003'),
('SI', 'XR4', '001'),
('SI', 'XR5', '001'),
('KIM', 'XR1', '002'),
('KIM', 'XR2', '002');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(20) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`) VALUES
('XR1', 'X RPL 1'),
('XR2', 'X RPL 2'),
('XR3', 'X RPL 3'),
('XR4', 'X RPL 4'),
('XR5', 'X RPL 5');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(200) DEFAULT NULL,
  `kkm` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kode_mapel`, `nama_mapel`, `kkm`) VALUES
('BIG', 'Bahasa Inggris', 80),
('BIN', 'Bahasa Indonesia', 80),
('KIM', 'Kimia', 70),
('MTK', 'Matematika', 75),
('PKN', 'Pendidikan Kewarganegaraan', 75),
('SI', 'Sejarah Indonesia', 78);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nis` varchar(20) DEFAULT NULL,
  `kode_mapel` varchar(20) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nis`, `kode_mapel`, `nilai`) VALUES
('111', 'KIM', 90),
('112', 'KIM', 60),
('113', 'KIM', 60),
('114', 'KIM', 75),
('113', 'MTK', 85),
('114', 'MTK', 70),
('115', 'MTK', 76),
('118', 'MTK', 80),
('120', 'MTK', 98),
('111', 'MTK', 76),
('111', 'SI', 90),
('112', 'SI', 75),
('112', 'BIN', 60),
('111', 'BIN', 70),
('117', 'BIN', 70);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(100) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `kode_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kode_kelas`) VALUES
('111', 'Ana Putri', 0),
('112', 'Annisa Rachmawati', 0),
('113', 'Alipah Nurhidayati', 0),
('114', 'Aguwin Ardi Pranata', 0),
('115', 'Abdul Widodo', 0),
('116', 'Darmo Joyo', 0),
('117', 'Rosidatul Maghfiroh', 0),
('118', 'Salwatul', 0),
('119', 'Widya Yunitha', 0),
('120', 'Yudhawan Anis', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `a` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `b` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `node_employees`
--
CREATE DATABASE IF NOT EXISTS `node_employees` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `node_employees`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;
--
-- Database: `node_library`
--
CREATE DATABASE IF NOT EXISTS `node_library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `node_library`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `author` varchar(50) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(3, 'alfi', '2711', '2020-02-20 08:03:21', '2020-02-20 08:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_book`
--

CREATE TABLE `user_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_book`
--
ALTER TABLE `user_book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_book`
--
ALTER TABLE `user_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `online_shop`
--
CREATE DATABASE IF NOT EXISTS `online_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(300) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
('111', 'nashiya', 'alfi', 'b21c2c8ad2942f6ee091e56810a08c7b'),
('112', 'Nashiya ', 'alfi', 'b21c2c8ad2942f6ee091e56810a08c7b');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(300) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `harga` double NOT NULL,
  `stok` double NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
('111', 'CD Album TULUS', '28 September 2011, album perdana TULUS yang bertajuk namanya sendiri, dirilis resmi oleh TulusCompany.  Bersamaan dengan rilisnya album ini, TULUS juga memulai langkah awal di perjalanan musiknya. Sewindu, Teman Hidup, Diorama adalah beberapa karya lagu yang menjadi hits single di banyak radio seluruh Indonesia.', 35000, -11, '111-883.jpg'),
('112', 'CD Album TULUS Gajah', 'Gajah, dirilis oleh TulusCompany sebagai perusahaan label rekaman, pada tanggal 19 Februari 2014. Kantung album kedua TULUS ini, menjadi album terbaik tahun 2015 versi majalah Rolling Stone Indonesia dan versi AMI Awards. TULUS sendiri yang menciptakan 9 nomor lagu yang ada di dalamnya.', 35000, -5, '112-3.jpg'),
('113', 'CD Album TULUS Monokrom', 'Kantung album ketiga dari TULUS ini, bertajuk Monokrom. TulusCompany sebagai perusahaan label rekaman, telah merilis album ini pada tanggal 3 Agustus 2016 lalu. 10 nomor lagu didalamnya, ditulis oleh TULUS dan dibantu oleh Ari Renaldi selaku produser untuk membangun aransemen musiknya.', 35000, -14, '113-378.jpg'),
('114', 'Botol Minum Konser Monokrom', 'Botol minum berbahan baja tahan karat yang disablon.  Dimensi : 21 x 5,5 cm  Kapasitas : 500 ml', 200000, 117, '114-561.jpg'),
('115', 'Kartu Pos Konser Monokrom Tulus', 'Kumpulan foto-foto dokumentasi selama Konser Monokrom Tulus yang kemudian digunakan sebagai kartu pos', 500000, 40, '115-360.jpg'),
('116', 'Buku Catatan Konser Monokrom', 'Tebal buku catatan : 240 halaman â€“ bookpaper 70 gsm â€“ warna kertas ivory  Ukuran buku : 13 x 21 cm', 150000, 111, '116-565.jpg'),
('117', 'Pin Enamel Logo Konser Monokrom', 'Dimensi ukuran : 3 x 3 cm', 75000, 78, '117-127.jpg'),
('118', 'Instax Mini 70 Deluxe Package', 'Buku Catatan 13.6 x 16.4 cm Kartu garansi &amp; buku panduan 16.3 x 13.7 cm Kotak garansi&amp;buku panduan 14.1 x 8.2 cm Kotak cartridge 6.7 x 9.7 cm Pena 13.9 x 1.1 cm Tali kamera kulit pendek 19.9 x 1cm', 1499000, 6, '118-192.jpg'),
('119', 'Buku Edisi Terbatas \"Yang Juga Mendengar\"', 'Sampul tebal (hard cover)  Jumlah halaman 132  Ukuran buku : 16.5 x 22.5 x 1.5 cm  Berat : 850 gram  Berisi foto-foto hasil karya Davy Linggar dengan narasi yang ditulis oleh TULUS.', 800000, 102, '119-888.jpg'),
('120', 'Buku Edisi Reguler \"Yang Juga Mendengar\"', 'Sampul kertas (soft cover)  Jumlah halaman 132  Ukuran buku : 16.5 x 22.5 x 1.5 cm  Berat : 750 gram  Berisi foto-foto hasil karya Davy Linggar dengan narasi yang ditulis oleh TULUS.', 300000, 627, '120-799.jpg'),
('121', 'Lilin Aromatik', 'Ilustrasi dicetak digital dan ditempel di gelas keramik transparan berukuran diameter 7 cm, dan tinggi 8 cm.  Lilin berwarna abu-abu muda dengan aroma lavender.  Dikemas dengan kotak edisi khusus â€œKonser Monokrom Jakartaâ€.', 180000, 243, '121-83.jpg'),
('122', 'Tas Diorama', 'Bahan : Kain Belacu  Panjang Tali : 28 cm', 65000, 19, '122-770.jpg'),
('123', 'Tas Sewindu', 'Bahan : Kain Belacu  Panjang Tali : 28 cm', 65000, 9, '123-636.jpg'),
('124', 'Edisi Khusus TULUS Monokrom', 'Ukuran kemasan kotak: 17cm x 17cm  Kertas kemasan kotak: Grey Board 2.5mm + Papur Natural Black  Tahap akhir: Hot Foil Pearl + Hot Foil Black  Ukuran buku: 14cm x 14cm (kondisi terlipat) 28cm x 14cm (kondisi terbuka)  Kertas buku: Cougar Opaque White Smooth 118gr + Kalkir 102gr + Kalkir 150gr', 220000, -2, '124-948.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_transaksi` varchar(300) NOT NULL,
  `kode_barang` varchar(300) NOT NULL,
  `jumlah` varchar(300) NOT NULL,
  `harga_beli` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_transaksi`, `kode_barang`, `jumlah`, `harga_beli`) VALUES
('45824042019', '111', '23', 35000),
('45824042019', '124', '1', 220000),
('48324042019', '124', '2', 220000),
('31326042019', '112', '5', 35000),
('31326042019', '113', '20', 35000),
('92826042019', '112', '39', 35000),
('92826042019', '113', '45', 35000),
('92826042019', '116', '22', 150000),
('21803052019', '111', '1', 35000);

--
-- Triggers `detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `update_stok` AFTER INSERT ON `detail_transaksi` FOR EACH ROW UPDATE barang SET stok = stok - NEW.jumlah
WHERE kode_barang = NEW.kode_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(300) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `kontak` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama`, `alamat`, `kontak`, `username`, `password`, `gambar`) VALUES
('111', 'kariiiinn', 'wkwkland', '0812345678910', 'karinaaa', '827ccb0eea8a706c4c34a16891f84e7b', '-566.jpg'),
('1111', 'lee dong wook', 'wkwkland', '2234', 'dongwook_lee', '81dc9bdb52d04dc20036dbd8313ed055', '1111-347.jpg'),
('1112', 'alfi', 'jsavhcdshgcb', 'jdvkjdvbkj', 'fi', '75778bf8fde7266d416b0089e7b8b793', '1112-237.'),
('112', 'badak', 'kok kepo ya', '0011', 'akubadak', 'e4488a0398501a35f910c10341b476c0', '112-405.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(300) NOT NULL,
  `id_pembeli` varchar(300) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pembeli`, `tanggal`) VALUES
('21803052019', '1112', '2019-05-03'),
('31326042019', '112', '2019-04-26'),
('45824042019', '112', '2019-04-24'),
('48324042019', '112', '2019-04-24'),
('92826042019', '112', '2019-04-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
--
-- Database: `penyewaan`
--
CREATE DATABASE IF NOT EXISTS `penyewaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `penyewaan`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_sewa` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_sewa`, `id_mobil`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(200) NOT NULL,
  `nama_karyawan` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat`, `kontak`, `username`, `password`) VALUES
(' 02', ' heru', ' banyu', ' 34567', ' fdjdhf', ' hjfsdgjhgdf'),
(' 03', ' Alfian', 'Banyuwangi', ' 08765433456', ' alfian', ' alfian'),
('01', 'nashiya', 'banyuwangi', '08765432345', 'alfi', 'alfi');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nomor_mobil` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `warna` varchar(200) NOT NULL,
  `tahun_pembuatan` varchar(200) NOT NULL,
  `stok` double NOT NULL,
  `biaya` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nomor_mobil`, `merk`, `jenis`, `warna`, `tahun_pembuatan`, `stok`, `biaya`) VALUES
(11, '032438747', ' honda', 'xenia', ' hitam', ' 2008', 21, 2000000),
(12, ' 34', ' toyota', ' metic', ' abu-abu', ' 2009', 12, 1500000),
(13, ' 33', ' avansa', ' metic', ' merah', ' 2011', 2, 1750000);

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `id_pelanggan` varchar(200) NOT NULL,
  `nama_pelanggan` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `kontak`, `username`, `password`) VALUES
(' 2', 'Suga', ' Paiton', ' 083214657483', ' kangsuga', ' kangsuga'),
(' 4', ' kyungsoo', ' korea', ' 081201199227', 'do', ' uco'),
('1', 'adi', 'jakarta', '08765432345', 'adi', 'prayitno');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_sewa` varchar(200) NOT NULL,
  `id_mobil` varchar(200) NOT NULL,
  `id_karyawan` varchar(200) NOT NULL,
  `id_pelanggan` varchar(200) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_sewa`, `id_mobil`, `id_karyawan`, `id_pelanggan`, `tgl_sewa`, `tgl_kembali`) VALUES
('3330', '01', '', '2019-05-02', '0000-00-00', '0000-00-00'),
('67145', '01', '', '2019-05-02', '0000-00-00', '0000-00-00'),
('83399', '01', '', '2019-05-02', '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_sewa`);
--
-- Database: `perpus`
--
CREATE DATABASE IF NOT EXISTS `perpus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpus`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` int(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `stok` int(30) NOT NULL,
  `tgl_register` varchar(0) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `penulis`, `stok`, `tgl_register`, `image`) VALUES
(123, 'hujan', 'Tere Liye', 9, '', '123-353.png'),
(124, 'titik kembali', 'rahasiapena', 6, '', '124-346.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(30) NOT NULL,
  `kode_buku` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `kode_buku`, `stok`) VALUES
('994-970', '', 0),
('927-837', '', 0),
('927-837', '', 0),
('294-256', ' 089', 0),
('294-256', ' 099', 0),
('977-684', ' 089', 0),
('108-166', ' 089', 1),
('599-395', ' 090', 1),
('815-976', ' 089', 1),
('938-328', '123', 2),
('938-328', ' 089', 2),
('783-597', ' 089', 2),
('783-597', ' 090', 2),
('107-821', ' 090', 1),
('377-467', ' 089', 2),
('377-467', ' 090', 2),
('341-145', ' 089', 1),
('252-498', ' 090', 1),
('994-752', ' 090', 1),
('319-839', ' 090', 1),
('232-864', ' 099', 2),
('232-864', '123', 2),
('806-976', ' 090', 2),
('806-976', '123', 2),
('574-406', '123', 1),
('662-936', ' 099', 1),
('504-243', ' 090', 1),
('44-492', ' 090', 2),
('44-492', '123', 2),
('38-231', ' 090', 1),
('334-272', ' 090', 2),
('334-272', '123', 2);

--
-- Triggers `detail_pinjam`
--
DELIMITER $$
CREATE TRIGGER `update_buku` AFTER INSERT ON `detail_pinjam` FOR EACH ROW BEGIN
UPDATE buku SET stok=stok-NEW.stok
WHERE kode_buku=NEW.kode_buku;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` int(200) NOT NULL,
  `kode_buku` int(10) NOT NULL,
  `id_siswa` int(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `id_pustakawan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `kode_buku`, `id_siswa`, `tgl_pinjam`, `tgl_kembali`, `id_pustakawan`) VALUES
(5, 0, 0, '2019-04-27', '0000-00-00', 0),
(38, 0, 0, '2019-04-29', '0000-00-00', 0),
(44, 0, 0, '2019-04-28', '0000-00-00', 0),
(107, 0, 0, '2019-04-28', '0000-00-00', 0),
(108, 0, 0, '2019-04-27', '0000-00-00', 0),
(217, 0, 0, '2019-04-27', '0000-00-00', 0),
(232, 0, 0, '2019-04-28', '0000-00-00', 0),
(252, 0, 0, '2019-04-28', '0000-00-00', 0),
(282, 0, 0, '2019-04-27', '0000-00-00', 0),
(294, 0, 0, '2019-03-12', '0000-00-00', 0),
(319, 0, 0, '2019-04-28', '0000-00-00', 0),
(334, 0, 0, '2019-04-29', '0000-00-00', 0),
(341, 0, 0, '2019-04-28', '0000-00-00', 0),
(356, 0, 0, '2019-04-27', '0000-00-00', 0),
(377, 0, 0, '2019-04-28', '0000-00-00', 0),
(401, 0, 0, '2019-04-27', '0000-00-00', 0),
(470, 0, 0, '2019-04-27', '0000-00-00', 0),
(504, 0, 0, '2019-04-28', '0000-00-00', 0),
(510, 0, 0, '2019-04-27', '0000-00-00', 0),
(573, 0, 0, '2019-04-27', '0000-00-00', 0),
(574, 0, 0, '2019-04-28', '0000-00-00', 0),
(599, 0, 0, '2019-04-27', '0000-00-00', 0),
(608, 0, 0, '2019-04-27', '0000-00-00', 0),
(662, 0, 0, '2019-04-28', '0000-00-00', 0),
(733, 0, 0, '2019-04-27', '0000-00-00', 0),
(783, 0, 0, '2019-04-28', '0000-00-00', 0),
(789, 0, 0, '2019-04-27', '0000-00-00', 0),
(806, 0, 0, '2019-04-28', '0000-00-00', 0),
(810, 0, 0, '2019-04-27', '0000-00-00', 0),
(815, 0, 0, '2019-04-27', '0000-00-00', 0),
(884, 0, 0, '2019-04-27', '0000-00-00', 0),
(938, 0, 0, '2019-04-28', '0000-00-00', 0),
(977, 0, 0, '2019-04-26', '0000-00-00', 0),
(982, 0, 0, '2019-04-27', '0000-00-00', 0),
(994, 0, 0, '2019-04-28', '0000-00-00', 0),
(2147483647, 0, 0, '2019-04-27', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `id_pustakawan` int(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pustakawan`
--

INSERT INTO `pustakawan` (`id_pustakawan`, `nama`, `kontak`, `username`, `password`) VALUES
(0, 'wati', '085799332211', 'becca', '5678'),
(2, 'ahai', '23113', 'hai', 'hai');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `kelas`, `kontak`, `username`, `password`) VALUES
(212, 'feas', '2rpl', '34141421', 'ahai', 'ahai'),
(214, 'erwr', '72727', '24144329', 'sjsjk', '8289289'),
(2147483647, ' aardad', ' X RPL 3', ' 08123456789', '8765', '65555');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(2, 'ade', 'ade', 'pembeli'),
(3, 'adel', 'adel', 'pembeli'),
(4, 'sifa', 'sifa', 'pembeli'),
(6, 'hai', 'hai', 'admin'),
(7, 'dear', '123', 'admin'),
(8, 'alfi', 'alfi', 'pembeli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `kode_barang` (`kode_buku`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pustakawan` (`id_pustakawan`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(200) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `penulis` varchar(500) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `stok` double NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `penulis`, `genre`, `stok`, `image`) VALUES
('000', 'tips hidup ala karin wkwk', 'karin ft. Mister Gepeng', 'horror', 28, '000-696.jpg'),
('0001', 'titik kembali', 'rahasiapena', 'romansa remaja', 7, '0001-947.jpg'),
('0002', 'skjfgjfash', 'jdshfijg', 'vhjdxwudguqwgfyuyg', 0, '0002-566.');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(300) NOT NULL,
  `kode_buku` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `kode_buku`) VALUES
('80152', '000'),
('36673', '000'),
('15796', '000'),
('43998', '000'),
('43998', '000'),
('43998', '000'),
('69306', '000'),
('69306', '000'),
('28028', '000'),
('13117', '000'),
('89484', '0001');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` varchar(300) NOT NULL,
  `nisn` varchar(300) NOT NULL,
  `nip` varchar(300) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `nisn`, `nip`, `tgl_pinjam`, `tgl_kembali`) VALUES
('11997', '1111', '', '2019-04-29', '0000-00-00'),
('13117', '1111', '', '2019-04-04', '0000-00-00'),
('15796', '1111', '', '2019-03-12', '0000-00-00'),
('18424', '1111', '', '2019-04-29', '0000-00-00'),
('25638', '1111', '', '2019-04-29', '0000-00-00'),
('28028', '1111', '', '2019-03-13', '0000-00-00'),
('36673', '1111', '', '2019-03-11', '0000-00-00'),
('43998', '1111', '', '2019-03-12', '0000-00-00'),
('48761', '1114', '', '2019-04-29', '0000-00-00'),
('68134', '1111', '', '2019-04-29', '0000-00-00'),
('68470', '1111', '', '2019-04-30', '0000-00-00'),
('69306', '1113', '', '2019-03-12', '0000-00-00'),
('80152', '1111', '', '2019-03-11', '0000-00-00'),
('89484', '1111', '', '2019-04-30', '0000-00-00'),
('90601', '1111', '', '2019-04-29', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pustakawan`
--

CREATE TABLE `pustakawan` (
  `nip` varchar(300) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `kontak` varchar(300) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pustakawan`
--

INSERT INTO `pustakawan` (`nip`, `nama`, `kontak`, `username`, `password`, `image`) VALUES
('0001', 'Abdul Tulus', '089453246783143', 'tulus.abd', 'wkwkwk', '0001-904.jpg'),
('0002', 'rian ardianto sitorus', '081786524826', 'mazjom', 'imammasadepan', '0002-4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(100) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `alamat`, `kontak`, `username`, `password`, `image`) VALUES
('1111', 'chris evans halilintar', 'planet ziggy zagga', '081234567890', 'chrishalilintar', '010101', '1111-411.jpg'),
('1112', 'abdul chris hemsworth', 'Asgardian Gang V, RT/RW: 03/02', '081567891011', 'abdul.hemsworth', '1010', '1112-216.jpg'),
('1113', 'siti emma watson', 'The Burrow', '085678123489071', 'watsonsiti', 'hehehe', '1113-49.jpg'),
('1114', 'nashiya', 'Banyuwangi', '085339292835', 'alfi', 'alfi2711', '1114-159.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'login', 'root', 'alter', 'SELECT * FROM `buku` WHERE 1');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'latihan_ukl', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"aku\",\"alfi\",\"api-crud\",\"api_poin\",\"baru\",\"belajar_laravel\",\"blog\",\"gudang\",\"hello\",\"hijab\",\"jwt\",\"latihan_ukl\",\"login\",\"magermart\",\"nashiyaalfiramadhani_xrpl5_29\",\"new\",\"node_employees\",\"node_library\",\"online_shop\",\"penyewaan\",\"perpus\",\"perpustakaan\",\"phpmyadmin\",\"ppdb\",\"profile\",\"rentt_car\",\"rent_car\",\"restful_db\",\"rest_api\",\"sekolah\",\"sewa_mobil\",\"tabungan\",\"test\",\"tes_db\",\"toko_hijab\",\"tugas\",\"ukl\",\"ukl1\",\"universitas\",\"web\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'pegawai', 'table', 'rest_api', ''),
('root', 'supplier', 'table', 'hello', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"latihan_ukl\",\"table\":\"barang\"},{\"db\":\"latihan_ukl\",\"table\":\"user\"},{\"db\":\"node_library\",\"table\":\"user_book\"},{\"db\":\"node_library\",\"table\":\"users\"},{\"db\":\"node_library\",\"table\":\"books\"},{\"db\":\"toko_hijab\",\"table\":\"transaksi\"},{\"db\":\"toko_hijab\",\"table\":\"hijabs\"},{\"db\":\"toko_hijab\",\"table\":\"admins\"},{\"db\":\"hijab\",\"table\":\"admin\"},{\"db\":\"ukl1\",\"table\":\"pelanggaran\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('sekolah', 'karyawan', 'id_dep', 'sekolah', 'departemen', 'id_dep');

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'alfi', 'user', '{\"sorted_col\":\"`user`.`status`  DESC\"}', '2019-04-12 06:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-03-12 08:03:50', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":34,\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `ppdb`
--
CREATE DATABASE IF NOT EXISTS `ppdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ppdb`;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `asal_sekolah` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama`, `asal_sekolah`) VALUES
(1, '7813', 'Nashiya Alfi', 'SMPN 1 Banyuwangi\r\n'),
(2, '', '', ''),
(3, '7931', 'Neta Minkhatul Maula', 'MTs Negeri 1 Kediri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `profile`
--
CREATE DATABASE IF NOT EXISTS `profile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `profile`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `years_experience` varchar(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `role`, `availability`, `age`, `location`, `years_experience`, `email`) VALUES
(1, 'Arkademy', 'Frontend Developer', 'Full Time', 20, 'Jakarta', '2', 'user@arkademy.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
--
-- Database: `rentt_car`
--
CREATE DATABASE IF NOT EXISTS `rentt_car` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rentt_car`;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyan` varchar(100) NOT NULL,
  `nama_karyawan` varchar(300) NOT NULL,
  `alamat_karyawan` varchar(300) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(100) NOT NULL,
  `nomor_mobil` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `warna` varchar(200) NOT NULL,
  `tahun_pembuatan` varchar(20) NOT NULL,
  `biaya_sewa_per_hari` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nomor_mobil`, `merk`, `jenis`, `warna`, `tahun_pembuatan`, `biaya_sewa_per_hari`, `created_at`, `updated_at`) VALUES
('1', 'AG 6969 OK', 'Toyota', 'avanza', 'silver', '2009', 500, '2019-08-04 19:53:01', '2019-08-04 19:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaan`
--

CREATE TABLE `pelanggaan` (
  `id_pelanggan` varchar(200) NOT NULL,
  `nama_pelanggan` varchar(300) NOT NULL,
  `alamat_pelanggan` varchar(400) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` varchar(200) NOT NULL,
  `id_mobil` varchar(100) NOT NULL,
  `id_karyawan` varchar(100) NOT NULL,
  `id_pelanggan` varchar(100) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total_bayar` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyan`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pelanggaan`
--
ALTER TABLE `pelanggaan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `sewa_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`),
  ADD CONSTRAINT `sewa_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggaan` (`id_pelanggan`),
  ADD CONSTRAINT `sewa_ibfk_3` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyan`);
--
-- Database: `rent_car`
--
CREATE DATABASE IF NOT EXISTS `rent_car` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rent_car`;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(200) NOT NULL,
  `nama_karyawan` varchar(200) NOT NULL,
  `alamat_karyawan` varchar(200) NOT NULL,
  `kontak` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `kontak`, `username`, `password`, `updated_at`, `created_at`) VALUES
('1', 'alfi', 'banyuwangi', '98787675547687', 'alfi', 'alfi2711', '2019-09-09 01:09:21', '0000-00-00 00:00:00'),
('2', 'kim minseok', 'korea', '083655667667', 'xiumin', 'umin', '2019-09-09 01:08:19', '0000-00-00 00:00:00'),
('3', 'kim jumyeon', 'korea', '082563674336', 'suho', 'kangsuho', '2019-09-09 00:59:49', '0000-00-00 00:00:00'),
('4', 'yixing zhang', 'china', '023546576843', 'lay', 'banglay', '2019-09-09 01:00:49', '0000-00-00 00:00:00'),
('5', 'byun baekhyun', 'korea', '082567435789', 'baekhyun', 'mbakyun', '2019-09-09 01:02:04', '0000-00-00 00:00:00'),
('6', 'kim jongdae', 'korea', '08456736587', 'chen', 'chendol', '2019-09-09 01:03:17', '0000-00-00 00:00:00'),
('7', 'park chanyeol', 'korea', '085665443442', 'chanyeol', 'genter', '2019-09-09 01:04:15', '0000-00-00 00:00:00'),
('8', 'do kyungsoo', 'korea', '083243656512', 'do', 'uco', '2019-09-09 01:05:08', '0000-00-00 00:00:00'),
('9', 'kim jongin', 'korea', '087676524673', 'kai', 'kaii', '2019-09-09 01:06:14', '0000-00-00 00:00:00'),
('91', 'oh sehun', 'korea', '082445654567', 'sehun', 'dedek', '2019-09-09 01:09:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(200) NOT NULL,
  `nomor_mobil` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `warna` varchar(200) NOT NULL,
  `tahun_pembuatan` varchar(200) NOT NULL,
  `biaya_sewa_per_harii` double NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nomor_mobil`, `merk`, `jenis`, `warna`, `tahun_pembuatan`, `biaya_sewa_per_harii`, `image`) VALUES
('001', '1', 'avansa', 'metic', 'hitam', '2002', 5000000, ''),
('002', 'uyiwefiui', 'metic', 'ahsdgjah', 'wefwefwe', '1231', 4324353454, ''),
('003', '86768556', 'saefdsgfs', 'dsgsadgasg', 'dgdsaagsdg', '353345', 132434, ''),
('004', '12432423', 'dsfdsgdfvcx', 'fdfsfdhdfgvxc', 'dsgsagsdg', '23542', 32355, ''),
('005', '3232413', 'sgfdsgdsvs', 'dasdvsdvd', 'asffsdfasrda', '8776', 123214235, ''),
('006', '67867', 'dsrqagefdsg', 'agdgewggd', 'dgfdsfwere', '123321', 1231241, ''),
('007', '12', 'as', 'sd', 'df', '09', 98, ''),
('008', '09', 'qe', 'de', 'bg', '34', 234, ''),
('009', '67', 'fr', 'xc', 'jy', '75', 2443, ''),
('099', '14', 'po', 'ok', 'yu', '67', 3456, '');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(200) NOT NULL,
  `nama_pelanggan` varchar(300) NOT NULL,
  `alamat_pelanggan` varchar(300) NOT NULL,
  `kontak` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `kontak`) VALUES
('0001', 'xiumin', 'korea', '089'),
('0002', 'suho', 'korea', '088'),
('0003', 'lay', 'korea', '087'),
('0004', 'baekhyun', '086', '');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` varchar(200) NOT NULL,
  `id_mobil` varchar(200) NOT NULL,
  `id_karyawan` varchar(200) NOT NULL,
  `id_pelanggan` varchar(200) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total_bayar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_mobil`, `id_karyawan`, `id_pelanggan`, `tgl_sewa`, `tgl_kembali`, `total_bayar`) VALUES
('01', '001', '0001', '00001', '2019-08-01', '2019-08-02', 1000000),
('02', '002', '0002', '00002', '2019-08-03', '2019-08-04', 500000),
('03', '003', '0003', '00003', '2019-08-05', '2019-08-06', 100000),
('04', '004', '0004', '00004', '2019-08-07', '2019-08-08', 200000),
('05', '005', '0005', '00005', '2019-08-09', '2019-08-10', 800000);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
('271102', 'Nashiya Alfi Ramadhani', 'Banyuwangi', '2019-09-01 20:23:43', '2019-09-01 20:23:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `restful_db`
--
CREATE DATABASE IF NOT EXISTS `restful_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restful_db`;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(191) NOT NULL,
  `nama_karyawan` varchar(191) NOT NULL,
  `kontak` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(191) NOT NULL,
  `id_siswa` int(191) NOT NULL,
  `id_kursus` int(191) NOT NULL,
  `id_karyawan` int(191) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `total_bayar` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id_kursus` int(191) NOT NULL,
  `nama_kursus` varchar(119) NOT NULL,
  `biaya` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(191) NOT NULL,
  `nis` varchar(191) NOT NULL,
  `nama_siswa` varchar(191) NOT NULL,
  `kelas` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id_kursus`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id_kursus` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(191) NOT NULL AUTO_INCREMENT;
--
-- Database: `rest_api`
--
CREATE DATABASE IF NOT EXISTS `rest_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rest_api`;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawaii`
--

CREATE TABLE `pegawaii` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawaii`
--

INSERT INTO `pegawaii` (`nip`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
('111', 'Osas Saha', 'malang', '2019-09-18 03:21:02', '0000-00-00 00:00:00'),
('112', 'Konate', 'Malang', '2019-09-18 03:21:02', '0000-00-00 00:00:00'),
('Kayame113', 'Kayame', 'Sorong', '2019-09-18 03:21:02', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawaii`
--
ALTER TABLE `pegawaii`
  ADD PRIMARY KEY (`nip`);
--
-- Database: `sekolah`
--
CREATE DATABASE IF NOT EXISTS `sekolah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sekolah`;

-- --------------------------------------------------------

--
-- Table structure for table `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `Nim` int(3) NOT NULL,
  `kode_mk` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(8) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_pegawai`
--

CREATE TABLE `daftar_pegawai` (
  `id_pegawai` int(3) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `th_masuk` int(4) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_pegawai`
--

INSERT INTO `daftar_pegawai` (`id_pegawai`, `nama`, `jk`, `th_masuk`, `alamat`) VALUES
(123, 'Muhammad Cahyo', 'L', 2012, 'Malang'),
(124, 'Dewi Kusuma', 'P', 2010, 'Kediri'),
(125, 'Rafif Daniswara', 'L', 2013, 'Pasuruan'),
(126, 'Muhammad Alfian', 'L', 2009, 'Malang'),
(127, 'Fitriani Ari', 'P', 2010, 'Surabaya'),
(128, 'Rizal Abidin', 'L', 2012, 'Malang');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_dep` int(5) NOT NULL,
  `nama_dep` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_dep`, `nama_dep`) VALUES
(10, 'penelitian'),
(11, 'pemasaran'),
(12, 'SDM'),
(13, 'Keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(3) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`) VALUES
(1, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama` varchar(30) NOT NULL,
  `id_dep` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama`, `id_dep`) VALUES
('Agus', 10),
('Budi', 16),
('Citra', 12),
('Dani', 17);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan2`
--

CREATE TABLE `karyawan2` (
  `nama` varchar(10) NOT NULL,
  `id_dep` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan2`
--

INSERT INTO `karyawan2` (`nama`, `id_dep`) VALUES
('Bagus', 12),
('Dani', 17),
('Anisa', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Nim` int(3) NOT NULL,
  `Nama` varchar(8) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Nim`, `Nama`, `jenis_kelamin`, `Alamat`) VALUES
(101, 'Arif', 'L', 'Jl.Kenangan'),
(102, 'Budi', 'L', 'Jl.Jombang'),
(103, 'Wati', 'P', 'Jl.Surabaya'),
(104, 'Ika', 'P', 'Jl.Jombang'),
(105, 'Tono', 'L', 'Jl.Jakarta'),
(106, 'Iwan', 'L', 'Jl.Bandung'),
(107, 'Sari', 'P', 'Jl.Malang');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(12) NOT NULL,
  `nama_mk` varchar(60) NOT NULL,
  `sks` int(1) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Komputer', 3, 5),
('PTI333', 'Basis Data Terdistribusi', 3, 5),
('PTI447', 'Pratikum Basis Data', 1, 3),
('PTI777', 'Sistem Informasi', 2, 3),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('TIK342', 'Pratikum Basis Data', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_barang`
--

CREATE TABLE `penjualan_barang` (
  `kode_barang` char(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `daftar_pegawai`
--
ALTER TABLE `daftar_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_dep`),
  ADD KEY `id_dep` (`id_dep`);

--
-- Indexes for table `karyawan2`
--
ALTER TABLE `karyawan2`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `sewa_mobil`
--
CREATE DATABASE IF NOT EXISTS `sewa_mobil` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sewa_mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sewa`
--

CREATE TABLE `detail_sewa` (
  `id_sewa` varchar(200) NOT NULL,
  `id_mobil` varchar(100) NOT NULL,
  `jumlah` double NOT NULL,
  `lama_sewa` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_sewa`
--

INSERT INTO `detail_sewa` (`id_sewa`, `id_mobil`, `jumlah`, `lama_sewa`, `status`) VALUES
('672002052019', '002', 1, 0, '0'),
('206902052019', '002', 1, 0, ''),
('314402052019', '002', 9, 0, ''),
('394902052019', '002', 1, 1, ''),
('227302052019', '002', 1, 9, ''),
('907503052019', '002', 1, 10, ''),
('677503052019', '002', 1, 9, ''),
('589603052019', '002', 1, 1, ''),
('560803052019', '002', 1, 1, ''),
('354803052019', '002', 1, 1, ''),
('619703052019', '002', 1, 1, ''),
('396403052019', '002', 1, 10, ''),
('781403052019', '002', 1, 1, ''),
('550803052019', '002', 1, 1, ''),
('811903052019', '002', 1, 1, ''),
('789103052019', '002', 1, 1, ''),
('960303052019', '002', 1, 1, ''),
('116003052019', '002', 1, 1, ''),
('429603052019', '002', 1, 1, ''),
('823003052019', '002', 4, 9, ''),
('823003052019', '124', 7, 9, ''),
('212803052019', '124', 2, 6, ''),
('913103052019', '124', 1, 1, ''),
('609903052019', '001', 1, 2, ''),
('609903052019', '124', 1, 1, ''),
('673603052019', '001', 1, 1, ''),
('430503052019', '002', 1, 2, ''),
('430503052019', '001', 1, 2, ''),
('44703052019', '124', 1, 1, ''),
('44703052019', '001', 1, 1, ''),
('415523052019', '001', 1, 1, ''),
('431923052019', '001', 1, 1, ''),
('714523052019', '001', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(100) NOT NULL,
  `nama_karyawan` varchar(300) NOT NULL,
  `alamat_karyawan` varchar(300) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `kontak`, `username`, `password`) VALUES
('000000002', 'alfi', 'banyuwangi', '087654321334', 'alfi', 'alfi123');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(100) NOT NULL,
  `nomor_mobil` varchar(100) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `warna` varchar(200) NOT NULL,
  `tahun_pembuatan` varchar(20) NOT NULL,
  `biaya_sewa_perhari` double NOT NULL,
  `stok` double NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nomor_mobil`, `merk`, `jenis`, `warna`, `tahun_pembuatan`, `biaya_sewa_perhari`, `stok`, `image`) VALUES
('001', 'B 1212 C', 'Toyota', 'toyota 2002', 'putih', '2018', 50000, 3, '-6.jpg'),
('002', 'B 20 C', 'Toyota', 'roda empat', 'Merah', '2001', 50000, 0, '-988.jpg'),
('124', 'N 4 SA', 'Suzuki', 'roda empat', 'putih', '2012', 50000, 195, '-303.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(200) NOT NULL,
  `nama_pelanggan` varchar(300) NOT NULL,
  `alamat_pelanggan` varchar(400) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `kontak`, `image`) VALUES
('001', 'Sang Ellok', 'Mojokerto', '0898979098', '001-652.jpg'),
('002', 'anin', 'Bayuwangi', '085654643221', '002-559.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` varchar(200) NOT NULL,
  `id_pelanggan` varchar(100) NOT NULL,
  `tgl_sewa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_pelanggan`, `tgl_sewa`) VALUES
('116003052019', '002', '2019-05-03'),
('206902052019', '', '2019-05-02'),
('212803052019', '001', '2019-05-03'),
('227302052019', '', '2019-05-02'),
('28503052019', '001', '2019-05-03'),
('314402052019', '', '2019-05-02'),
('354803052019', '', '2019-05-03'),
('38123052019', '002', '2019-05-23'),
('394902052019', '', '2019-05-02'),
('396403052019', '', '2019-05-03'),
('415523052019', '002', '2019-05-23'),
('429603052019', '001', '2019-05-03'),
('430503052019', '001', '2019-05-03'),
('431923052019', '001', '2019-05-23'),
('44703052019', '001', '2019-05-03'),
('550803052019', '001', '2019-05-03'),
('560803052019', '', '2019-05-03'),
('589603052019', '', '2019-05-03'),
('609903052019', '001', '2019-05-03'),
('619703052019', '', '2019-05-03'),
('673603052019', '001', '2019-05-03'),
('677503052019', '', '2019-05-03'),
('714523052019', '001', '2019-05-23'),
('781403052019', 'id_pelanggan', '2019-05-03'),
('789103052019', '001', '2019-05-03'),
('811903052019', '001', '2019-05-03'),
('823003052019', '001', '2019-05-03'),
('907503052019', '', '2019-05-03'),
('913103052019', '001', '2019-05-03'),
('960303052019', '001', '2019-05-03'),
('998303052019', '001', '2019-05-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_sewa`
--
ALTER TABLE `detail_sewa`
  ADD KEY `id_sewa` (`id_sewa`,`id_mobil`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);
--
-- Database: `tabungan`
--
CREATE DATABASE IF NOT EXISTS `tabungan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tabungan`;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_user` int(10) NOT NULL,
  `tgl_nabung` date NOT NULL,
  `jml_nabung` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_user` int(20) NOT NULL,
  `tgl_tarik` date NOT NULL,
  `jml_tarik` int(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saldo_akhir`
--

CREATE TABLE `saldo_akhir` (
  `id_user` int(90) NOT NULL,
  `jml_saldo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `nama_user` varchar(190) NOT NULL,
  `telpon` double NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `telpon`, `username`, `password`) VALUES
(1, 'nashiya', 85339292835, 'alfi', 'alfi123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `saldo_akhir`
--
ALTER TABLE `saldo_akhir`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saldo_akhir`
--
ALTER TABLE `saldo_akhir`
  MODIFY `id_user` int(90) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tes_db`
--
CREATE DATABASE IF NOT EXISTS `tes_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tes_db`;

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `email`, `password`) VALUES
(1, 'nasyaalfi2016@gmail.com', 'alfi2711');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `toko_hijab`
--
CREATE DATABASE IF NOT EXISTS `toko_hijab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `toko_hijab`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hijabs`
--

CREATE TABLE `hijabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `warna` varchar(191) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `harga` varchar(191) NOT NULL,
  `stock` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `hijab_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hijabs`
--
ALTER TABLE `hijabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hijabs`
--
ALTER TABLE `hijabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `tugas`
--
CREATE DATABASE IF NOT EXISTS `tugas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tugas`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_motor`
--

CREATE TABLE `tb_motor` (
  `plat_nomor` varchar(90) NOT NULL,
  `tipe_motor` varchar(90) NOT NULL,
  `harga_sewa` int(90) NOT NULL,
  `jumlah_tersedia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_motor`
--

INSERT INTO `tb_motor` (`plat_nomor`, `tipe_motor`, `harga_sewa`, `jumlah_tersedia`) VALUES
('', '', 0, 0),
('1234', 'fff', 234, 2),
('A271102', 'scoopypink', 500000, 3),
('B31231', 'crf150', 600000, 4),
('K12011994', 'klx500', 1000000, 1),
('N35157A6', 'klx250', 700000, 5),
('N51512', 'klx150', 750000, 8),
('S14032003', 'SCOOPY', 700000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `no_pinjam` int(90) NOT NULL,
  `plat_nomor` varchar(90) NOT NULL,
  `tgl_pinjam` varchar(90) NOT NULL,
  `tgl_kembali` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`no_pinjam`, `plat_nomor`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, 'B31231', '24 April 2019', '25 April 2019'),
(2, 'N35157A6', '24 April 2019', '26 April 2019'),
(3, 'K12011994', '26 April 2019', '30 April 2019'),
(4, 'S14032003', '2019-04-26', '2019-05-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_motor`
--
ALTER TABLE `tb_motor`
  ADD PRIMARY KEY (`plat_nomor`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`no_pinjam`);
--
-- Database: `ukl`
--
CREATE DATABASE IF NOT EXISTS `ukl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ukl`;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `plat_mobil` varchar(200) NOT NULL,
  `merk_mobil` varchar(200) NOT NULL,
  `harga_sewa` varchar(200) NOT NULL,
  `stok` double NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`plat_mobil`);
--
-- Database: `ukl1`
--
CREATE DATABASE IF NOT EXISTS `ukl1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ukl1`;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id` int(20) NOT NULL,
  `nama_pelanggaran` text NOT NULL,
  `kategori` enum('kedisiplinan','kerapian','kerajianan','') NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id`, `nama_pelanggaran`, `kategori`, `poin`, `created_at`, `updated_at`) VALUES
(1, 'berisik', 'kedisiplinan', 30, '2019-12-10 03:03:31', '0000-00-00 00:00:00'),
(2, 'membuang sampah sembarangan', 'kerajianan', 14, '2019-12-10 05:49:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poin_siswa`
--

CREATE TABLE `poin_siswa` (
  `id` int(20) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelanggaran` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` text NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_a` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poin_siswa`
--

INSERT INTO `poin_siswa` (`id`, `id_siswa`, `id_pelanggaran`, `tanggal`, `keterangan`, `id_petugas`, `created_at`, `updated_a`) VALUES
(2, 4, 2, '2019-12-10 00:00:00', 'dvjnkdsfjvnkjds nfvkjnv', 1, '2019-12-10 05:53:31', '0000-00-00 00:00:00'),
(3, 3, 1, '2019-12-11 00:00:00', 'kbkjbknjllklk', 2, '2019-12-10 05:54:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(191) NOT NULL,
  `nama_siswa` varchar(191) NOT NULL,
  `kelas` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama_siswa`, `kelas`, `created_at`, `updated_at`) VALUES
(3, 'ewfwf12313', 'undefisfqwefwaefned', 'rap', '2019-12-10 05:42:01', '0000-00-00 00:00:00'),
(4, 'asd32424', 'minhyun', 'menyanyi', '2019-12-10 05:51:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('admin','petugas','','') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'nashiya', 'nasyaalfi@gmail.com', 'djcdivjdhvj', 'petugas', '2019-12-10 05:52:12', '0000-00-00 00:00:00'),
(2, 'alfi', 'alfi123@gmail.com', 'haiiii', 'admin', '2019-12-10 05:52:44', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  ADD CONSTRAINT `poin_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `poin_siswa_ibfk_2` FOREIGN KEY (`id_pelanggaran`) REFERENCES `pelanggaran` (`id`),
  ADD CONSTRAINT `poin_siswa_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `user` (`id`);
--
-- Database: `universitas`
--
CREATE DATABASE IF NOT EXISTS `universitas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `universitas`;

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `nip` int(3) NOT NULL,
  `namains` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `asal_kota` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`nip`, `namains`, `jurusan`, `asal_kota`) VALUES
(1, 'Steve Wozniak', 'Ilmu Komputer', 'Bantul'),
(2, 'Steve jobs', 'Seni rupa', 'Solo'),
(3, 'James Gosling', 'Ilmu Komputer', 'Klaten'),
(4, 'Bill Gates', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `nip` int(1) NOT NULL,
  `nomk` char(15) NOT NULL,
  `ruangan` int(101) NOT NULL,
  `jmlmhs` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `nomk` char(10) NOT NULL,
  `namamk` varchar(30) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`nomk`, `namamk`, `sks`) VALUES
('KOM101', 'Algoritma dan Pemrograman', 3),
('KOM102', 'Basis Data', 3),
('KOM201', 'Pemrograman Berorientasi Objek', 3),
('SR101', 'Desain Elementer', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`nomk`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`nomk`);
--
-- Database: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `web`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `nomor_buku` int(90) NOT NULL,
  `nm_buku` varchar(150) NOT NULL,
  `penulis` varchar(90) NOT NULL,
  `harga` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`nomor_buku`, `nm_buku`, `penulis`, `harga`) VALUES
(1, 'Daun yang Jatuh Tak Pernah Membenci Angin', 'Tere Liye', 'Rp 59000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`nomor_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
