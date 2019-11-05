-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2019 at 01:39 PM
-- Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdn_margomulyo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(2) NOT NULL,
  `nama_guru` varchar(32) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `NUPTK` int(16) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(32) NOT NULL,
  `NIP` int(16) NOT NULL,
  `status` enum('Guru Honorer','PNS') NOT NULL,
  `jenis_ptk` enum('Guru Kelas','Kepala Sekolah') NOT NULL,
  `jurusan` varchar(32) NOT NULL,
  `sertifikasi` varchar(25) NOT NULL,
  `tmt_kerja` date NOT NULL,
  `kompetensi` varchar(32) NOT NULL,
  `tugas_tambahan` varchar(20) NOT NULL,
  `id_user` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nama_guru`, `jenis_kelamin`, `NUPTK`, `tanggal_lahir`, `tempat_lahir`, `NIP`, `status`, `jenis_ptk`, `jurusan`, `sertifikasi`, `tmt_kerja`, `kompetensi`, `tugas_tambahan`, `id_user`) VALUES
(1, 'Anik Rohmawati', 'Perempuan', 2147483647, '1984-06-10', 'Bojonegoro', 0, 'Guru Honorer', 'Guru Kelas', 'Guru Kelas', '-', '2002-07-01', 'Guru Kelas ', '-', 1),
(2, 'Fidhiya Nuranisa', 'Perempuan', 2147483647, '1984-10-27', 'Bojonegoro', 2147483647, 'PNS', 'Guru Kelas', 'Guru Kelas', 'Guru Kelas', '2014-06-01', 'Guru Kelas ', '-', 5),
(3, 'Naning', 'Perempuan', 2147483647, '1986-03-20', 'Bojonegoro', 0, 'Guru Honorer', 'Guru Kelas', 'Guru Kelas', '-', '2004-07-01', 'Guru Kelas ', '-', 8),
(5, 'Parijan', 'Laki-Laki', 2147483647, '1961-05-25', 'Bojonegoro', 2147483647, 'PNS', 'Kepala Sekolah', 'Bahasa Indonesia', 'Guru Kelas', '1983-03-01', 'Guru Kelas ', 'Kepala Sekolah', 8),
(6, 'Roediana Imbarwati', 'Perempuan', 2147483647, '1960-07-14', 'Malang', 2147483647, 'PNS', 'Guru Kelas', 'Guru Kelas', 'Guru Kelas', '1979-07-01', 'Guru Kelas ', '-', 3),
(7, 'Rosida Fitriani', 'Perempuan', 2147483647, '1982-10-13', 'Bojonegoro', 2147483647, 'PNS', 'Guru Kelas', 'Guru Kelas', 'Guru Kelas', '2008-01-01', 'Guru Kelas ', '-', 6),
(8, 'Samiyadi', 'Laki-Laki', 2147483647, '1962-12-31', 'Tuban', 2147483647, 'PNS', '', 'lainnya', '-', '1983-03-01', '-', '-', 8),
(9, 'Sri Wajayanti', 'Perempuan', 2147483647, '1984-12-26', 'Bojonegoro', 0, 'Guru Honorer', 'Guru Kelas', 'Guru Kelas', '-', '2004-06-01', 'Guru Kelas ', '-', 2),
(10, 'Sukartini Nani Saputri', 'Perempuan', 0, '1987-06-07', 'Bojonegoro', 0, 'Guru Honorer', '', 'Bahasa Inggris', '-', '2010-07-01', 'Bahasa Inggris', '-', 8),
(11, 'Sulistiyowati', 'Perempuan', 2147483647, '1984-08-17', 'Bojonegoro', 2147483647, 'PNS', 'Guru Kelas', 'Guru Kelas', '-', '2010-04-01', 'Guru Kelas ', '-', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(2) NOT NULL,
  `id_guru` int(2) NOT NULL,
  `jam_ke` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jjm`
--

CREATE TABLE `tbl_jjm` (
  `id_jjm` int(2) NOT NULL,
  `jjm` int(2) NOT NULL,
  `total_jjm` int(2) NOT NULL,
  `id_guru` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_user` int(2) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` enum('Admin','Guru','Orangtua') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'guru_kelas1', '123456', 'Guru'),
(2, 'guru_kelas2', '123456', 'Guru'),
(3, 'guru_kelas3', '123456', 'Guru'),
(4, 'guru_kelas4', '123456', 'Guru'),
(5, 'guru_kelas5', '123456', 'Guru'),
(6, 'guru_kelas6', '123456', 'Guru'),
(8, 'admin', 'admin', 'Admin'),
(99, '3030', '0044927873', 'Orangtua');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(2) NOT NULL,
  `pkn` int(3) DEFAULT NULL,
  `bindo` int(3) DEFAULT NULL,
  `mtk` int(3) DEFAULT NULL,
  `ipa` int(3) DEFAULT NULL,
  `ips` int(3) DEFAULT NULL,
  `sbdp` int(3) DEFAULT NULL,
  `pjok` int(3) DEFAULT NULL,
  `semester` enum('Semester 1','Semester 2') DEFAULT NULL,
  `S` text NOT NULL,
  `I` varchar(2) NOT NULL,
  `A` varchar(2) NOT NULL,
  `id_rombel` int(2) NOT NULL,
  `nis` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `pkn`, `bindo`, `mtk`, `ipa`, `ips`, `sbdp`, `pjok`, `semester`, `S`, `I`, `A`, `id_rombel`, `nis`) VALUES
(1, 80, 78, 75, 0, 0, 80, 75, 'Semester 1', '0', '0', '0', 1, '3133'),
(2, 78, 78, 75, 0, 0, 82, 75, 'Semester 1', '0', '0', '0', 1, '3134'),
(3, 79, 80, 78, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 1, '3135'),
(4, 80, 81, 78, 0, 0, 83, 79, 'Semester 1', '0', '0', '0', 1, '3136'),
(6, 79, 83, 80, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 1, '0'),
(7, 80, 82, 79, 0, 0, 82, 78, 'Semester 1', '0', '0', '0', 1, '3140'),
(8, 81, 80, 81, 0, 0, 80, 78, 'Semester 1', '0', '0', '0', 1, '3141'),
(9, 78, 79, 80, 0, 0, 80, 79, 'Semester 1', '0', '0', '0', 1, '3142'),
(10, 79, 80, 78, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 1, '3146'),
(11, 80, 81, 79, 0, 0, 80, 81, 'Semester 1', '0', '0', '0', 1, '3143'),
(12, 80, 81, 79, 0, 0, 80, 81, 'Semester 1', '0', '0', '0', 1, '3144'),
(13, 78, 78, 81, 0, 0, 82, 79, 'Semester 1', '0', '0', '0', 1, '3145'),
(14, 78, 80, 80, 0, 0, 85, 76, 'Semester 1', '0', '0', '0', 1, '3137'),
(16, 79, 80, 80, 0, 0, 80, 75, 'Semester 1', '0', '0', '0', 1, '3147'),
(17, 80, 79, 75, 0, 0, 78, 78, 'Semester 1', '0', '0', '0', 3, '3095'),
(18, 85, 84, 86, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 3, '3130'),
(19, 75, 76, 78, 0, 0, 78, 80, 'Semester 1', '0', '0', '0', 3, '3096'),
(20, 75, 76, 78, 0, 0, 78, 80, 'Semester 1', '0', '0', '0', 3, '3097'),
(21, 84, 83, 80, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 3, '3098'),
(22, 76, 77, 75, 0, 0, 78, 79, 'Semester 1', '0', '0', '0', 3, '3099'),
(23, 85, 84, 80, 0, 0, 80, 80, 'Semester 1', '0', '2', '0', 3, '3100'),
(24, 78, 79, 80, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 3, '3102'),
(25, 75, 75, 75, 0, 0, 75, 78, 'Semester 1', '0', '0', '0', 3, '3104'),
(26, 81, 84, 83, 0, 0, 79, 80, 'Semester 1', '0', '0', '0', 3, '3101'),
(27, 75, 75, 76, 0, 0, 75, 78, 'Semester 1', '0', '0', '0', 3, '3103'),
(28, 78, 78, 77, 0, 0, 78, 79, 'Semester 1', '0', '0', '0', 3, '3105'),
(29, 78, 80, 81, 0, 0, 79, 80, 'Semester 1', '0', '0', '0', 3, '3106'),
(30, 80, 81, 82, 0, 0, 78, 80, 'Semester 1', '0', '0', '0', 3, '3107'),
(31, 80, 80, 79, 0, 0, 80, 80, 'Semester 1', '0', '0', '0', 3, '3108'),
(32, 78, 79, 80, 0, 0, 78, 80, 'Semester 1', '0', '0', '0', 3, '3109'),
(33, 79, 80, 80, 0, 0, 79, 80, 'Semester 1', '0', '0', '0', 3, '3110'),
(34, 80, 81, 78, 75, 76, 80, 81, 'Semester 1', '0', '0', '0', 4, '3072'),
(35, 81, 80, 79, 74, 78, 79, 82, 'Semester 1', '0', '0', '1', 4, '3073'),
(36, 78, 80, 81, 76, 80, 80, 84, 'Semester 1', '3', '0', '0', 4, '3074'),
(37, 80, 85, 84, 80, 78, 78, 80, 'Semester 1', '1', '0', '0', 4, '3075'),
(38, 79, 82, 82, 81, 81, 75, 78, 'Semester 1', '0', '0', '0', 4, '3076'),
(39, 76, 83, 80, 79, 81, 79, 81, 'Semester 1', '0', '0', '0', 4, '3077'),
(40, 78, 81, 78, 75, 79, 80, 79, 'Semester 1', '0', '0', '0', 4, '3078'),
(41, 78, 82, 81, 78, 75, 80, 80, 'Semester 1', '2', '0', '0', 4, '3079'),
(42, 78, 82, 81, 78, 75, 80, 80, 'Semester 1', '0', '0', '0', 4, '3111'),
(43, 80, 85, 82, 75, 78, 80, 81, 'Semester 1', '0', '0', '0', 4, '3080'),
(44, 78, 80, 79, 78, 81, 75, 80, 'Semester 1', '0', '0', '2', 4, '3081'),
(45, 76, 81, 78, 80, 78, 79, 76, 'Semester 1', '1', '0', '0', 4, '3082'),
(46, 80, 82, 80, 78, 75, 75, 78, 'Semester 1', '0', '0', '0', 4, '3083'),
(47, 81, 84, 81, 79, 80, 78, 81, 'Semester 1', '0', '0', '0', 4, '3112'),
(48, 80, 81, 78, 79, 79, 76, 80, 'Semester 1', '0', '0', '0', 4, '3084'),
(49, 81, 82, 80, 81, 78, 79, 82, 'Semester 1', '0', '0', '0', 4, '3085'),
(50, 80, 84, 81, 76, 78, 80, 78, 'Semester 1', '0', '0', '0', 4, '3113'),
(51, 82, 83, 84, 80, 78, 80, 81, 'Semester 1', '0', '0', '0', 4, '3086'),
(52, 83, 82, 82, 78, 80, 78, 78, 'Semester 1', '1', '0', '0', 4, '3087'),
(53, 79, 80, 81, 78, 79, 80, 79, 'Semester 1', '0', '0', '0', 4, '3088'),
(54, 78, 80, 79, 78, 79, 80, 80, 'Semester 1', '0', '0', '0', 4, '3089'),
(55, 80, 81, 78, 80, 78, 79, 81, 'Semester 1', '6', '0', '3', 4, '3090'),
(56, 78, 82, 79, 80, 80, 79, 80, 'Semester 1', '0', '0', '1', 4, '3091'),
(57, 80, 84, 80, 80, 81, 78, 80, 'Semester 1', '0', '0', '0', 4, '3092'),
(58, 78, 80, 80, 81, 79, 78, 81, 'Semester 1', '1', '0', '0', 4, '3093'),
(59, 80, 78, 75, 76, 75, 78, 78, 'Semester 1', '0', '0', '0', 5, '3131'),
(60, 86, 84, 78, 85, 80, 80, 86, 'Semester 1', '0', '0', '0', 5, '3068'),
(61, 84, 82, 80, 76, 79, 80, 82, 'Semester 1', '0', '0', '0', 5, '3060'),
(62, 84, 83, 81, 78, 79, 78, 83, 'Semester 1', '0', '0', '0', 5, '3061'),
(63, 79, 80, 78, 75, 76, 79, 78, 'Semester 1', '0', '0', '0', 5, '3062'),
(64, 85, 83, 79, 76, 78, 80, 81, 'Semester 1', '0', '0', '0', 5, '3063'),
(65, 88, 86, 78, 77, 80, 79, 81, 'Semester 1', '0', '0', '0', 5, '3064'),
(66, 80, 81, 79, 80, 75, 80, 82, 'Semester 1', '0', '0', '0', 5, '-'),
(67, 84, 85, 84, 82, 81, 80, 80, 'Semester 1', '0', '0', '0', 5, '3066'),
(68, 79, 78, 80, 75, 76, 79, 82, 'Semester 1', '0', '0', '0', 5, '3065'),
(69, 80, 80, 79, 80, 80, 80, 80, 'Semester 1', '0', '0', '0', 6, '3036'),
(70, 80, 78, 81, 78, 78, 81, 80, 'Semester 1', '0', '0', '0', 6, '3037'),
(71, 78, 76, 80, 79, 78, 80, 81, 'Semester 1', '0', '0', '0', 6, '3038'),
(72, 76, 80, 77, 81, 80, 80, 84, 'Semester 1', '0', '0', '0', 6, '3039'),
(73, 77, 81, 78, 80, 79, 80, 81, 'Semester 1', '0', '0', '0', 6, '3040'),
(74, 78, 79, 80, 79, 80, 80, 80, 'Semester 1', '0', '0', '0', 6, '3132'),
(75, 80, 81, 80, 85, 79, 82, 81, 'Semester 1', '0', '0', '0', 6, '3041'),
(76, 78, 80, 78, 81, 78, 79, 80, 'Semester 1', '0', '0', '0', 6, '3042'),
(77, 78, 80, 79, 80, 79, 78, 80, 'Semester 1', '0', '0', '0', 6, '3042'),
(78, 85, 86, 80, 88, 84, 85, 84, 'Semester 1', '0', '0', '0', 6, '3044'),
(79, 76, 78, 80, 81, 80, 80, 80, 'Semester 1', '0', '0', '0', 6, '3046'),
(80, 80, 78, 82, 80, 81, 79, 79, 'Semester 1', '0', '0', '0', 6, '3046'),
(81, 78, 82, 84, 78, 80, 80, 75, 'Semester 1', '0', '0', '0', 6, '3051'),
(82, 77, 80, 81, 82, 78, 80, 79, 'Semester 1', '0', '0', '0', 6, '3049'),
(83, 86, 80, 81, 78, 81, 85, 80, 'Semester 1', '0', '0', '0', 6, '3047'),
(84, 78, 82, 79, 80, 78, 80, 80, 'Semester 1', '0', '0', '0', 6, '3048'),
(85, 75, 76, 77, 78, 76, 78, 78, 'Semester 1', '0', '0', '0', 6, '3030'),
(86, 85, 84, 82, 85, 87, 88, 85, 'Semester 1', '0', '0', '0', 6, '3052'),
(87, 80, 79, 80, 78, 81, 80, 80, 'Semester 1', '0', '0', '0', 6, '3053'),
(88, 79, 81, 78, 81, 78, 81, 80, 'Semester 1', '0', '0', '0', 6, '3054'),
(89, 78, 80, 78, 80, 78, 80, 80, 'Semester 1', '0', '0', '0', 6, '3055'),
(90, 80, 81, 80, 80, 79, 81, 75, 'Semester 1', '0', '0', '0', 6, '3056'),
(91, 78, 77, 78, 80, 81, 75, 77, 'Semester 1', '0', '0', '0', 6, '3057'),
(92, 78, 78, 77, 76, 76, 76, 77, 'Semester 1', '0', '0', '0', 2, '3114'),
(93, 83, 82, 83, 82, 82, 80, 83, 'Semester 1', '0', '0', '0', 2, '3115'),
(94, 93, 92, 92, 92, 81, 93, 93, 'Semester 1', '0', '0', '0', 2, '3116'),
(95, 81, 80, 80, 75, 78, 77, 80, 'Semester 1', '0', '0', '0', 2, '3117'),
(96, 78, 75, 65, 73, 73, 73, 73, 'Semester 1', '0', '0', '0', 2, '3119'),
(97, 80, 76, 78, 79, 78, 77, 80, 'Semester 1', '0', '0', '0', 2, '3120'),
(98, 91, 75, 73, 82, 78, 80, 81, 'Semester 1', '0', '0', '0', 2, '3121'),
(99, 78, 80, 80, 83, 80, 70, 84, 'Semester 1', '0', '0', '0', 2, '3122'),
(100, 75, 73, 82, 77, 80, 73, 73, 'Semester 1', '0', '0', '0', 2, '3123'),
(101, 80, 75, 75, 82, 75, 82, 81, 'Semester 1', '0', '0', '0', 2, '3126'),
(102, 78, 78, 77, 78, 72, 73, 81, 'Semester 1', '0', '0', '0', 2, '3124'),
(103, 75, 75, 75, 80, 70, 75, 80, 'Semester 1', '0', '0', '0', 2, '3127');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orangtua`
--

CREATE TABLE `tbl_orangtua` (
  `id_orangtua` varchar(18) NOT NULL,
  `nama_orangtua` varchar(32) NOT NULL,
  `alamat_orangtua` varchar(32) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir_orangtua` date NOT NULL,
  `nomor_telepon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orangtua`
--

INSERT INTO `tbl_orangtua` (`id_orangtua`, `nama_orangtua`, `alamat_orangtua`, `jenis_kelamin`, `tgl_lahir_orangtua`, `nomor_telepon`) VALUES
('352206090598001', 'Aditya Rahman ', 'Ds Kemamang', 'Laki-laki', '1994-05-09', '081336601129'),
('352209516738725639', 'Sakur', 'Desa Margomulyo', 'Laki-laki', '1970-01-20', '-'),
('352209516738725640', 'Samidin', 'Desa Margomulyo', 'Laki-laki', '1991-03-11', '-'),
('352209516738725641', 'Solikhin', 'Desa Margomulyo', 'Laki-laki', '1970-01-20', '-'),
('352209516738725643', 'M.Supriyadi', 'Desa Suwaloh', 'Laki-laki', '1970-08-11', '-'),
('352209516738725645', 'Saelan', 'Desa Margomulyo', 'Laki-laki', '1970-01-20', '-'),
('352209516738725649', 'Darto', 'Desa Margomulyo', 'Laki-laki', '1970-01-22', '-'),
('352212356784936254', 'Sugihartono', 'Desa Suwaloh', 'Laki-laki', '1952-12-16', '-'),
('352212637849836475', 'Rusdiono', 'Desa Suwaloh', 'Laki-laki', '1970-08-10', '-'),
('35221264789364753', 'A.Arifin', 'Desa Suwaloh', 'Laki-laki', '1952-12-01', '-'),
('352212678903456251', 'M.Handoko', 'Desa Suwaloh', 'Laki-laki', '1965-03-02', '-'),
('3522130100087651', 'Rahmayani', 'Ds Sentoel', 'Laki-laki', '1984-05-27', '6281257653411'),
('3522131000234543', 'Sumarji', 'Ds Bulu', 'Laki-laki', '1975-01-02', '6281264576889'),
('3522131900076891', 'Sumarno', 'Ds Bulu', 'Laki-laki', '1989-09-25', '6285347789987'),
('3522132000234543', 'Mualim', 'Ds Bulu', 'Laki-laki', '1989-08-26', '-'),
('3522133100065481', 'Masudi', 'Ds Bulu', 'Laki-laki', '1989-12-26', '6281278767889'),
('3522133100077881', 'Mashadi', 'Ds Kemamang', 'Laki-laki', '1989-07-22', '6285347766771'),
('3522134100023543', 'Ramido', 'Ds Bulu', 'Laki-laki', '1991-12-16', '6285557789987'),
('3522134100052421', 'Purwanto', 'Ds Sentoel', 'Laki-laki', '1989-12-26', '-'),
('3522134300054467', 'Suwartno', 'Ds Sentoel', 'Laki-laki', '1987-01-17', '6281274578798'),
('352213510002547', 'Bidari', 'Ds Bulu', 'Laki-laki', '1989-04-30', '-'),
('3522136100023454', 'Nursam', 'Ds Bulu', 'Laki-laki', '1988-02-01', '6281259925241'),
('3522136100025157', 'Panidi', 'Ds Bulu', 'Laki-laki', '1978-02-08', '-'),
('3522136100044321', 'Fadli', 'Ds Bulu', 'Laki-laki', '1989-11-11', '-'),
('352213670002345', 'Sakur', 'Desa Margomulyo', 'Laki-laki', '1990-01-27', '6285347789989'),
('3522137100014691', 'Chandi', 'Ds Sentoel', 'Laki-laki', '1981-09-24', '6285341571991'),
('352213710002345', 'Susanto', 'Ds Kemamang', 'Laki-laki', '1988-12-21', '6285347789999'),
('3522137100023451', 'Djumari', 'Ds Kemamang', 'Laki-laki', '1965-11-13', '-'),
('3522137100081871', 'Arifianto', 'Ds Bulu', 'Laki-laki', '1981-10-14', '6285347788992'),
('3522137100088199', 'Nursahid', 'Ds Bulu', 'Laki-laki', '1979-11-25', '6285865789987'),
('3522138100025143', 'Wardi', 'Ds Kemamang', 'Laki-laki', '1986-02-11', '6285347788997'),
('3522138100025459', 'Saelan', 'Desa Margomulyo', 'Laki-laki', '1970-01-24', '6285347789988'),
('3522139100000982', 'Sumardam', 'Ds Bulu', 'Laki-laki', '1981-01-14', '6285343588981'),
('3522139100001451', 'Mundhofar', 'Ds Bulu', 'Laki-laki', '1988-11-25', '-'),
('3522139100004476', 'Arifianto', 'Ds Bulu', 'Laki-laki', '1985-04-26', '6281678965431'),
('3522139100007481', 'Wiano', 'Ds Bulu', 'Laki-laki', '1981-11-24', '6285345588992'),
('3522139100009871', 'Wirno', 'Ds Sentoel', 'Laki-laki', '1976-10-24', '-'),
('3522139100012378', 'Solikhin', 'Desa Margmulyo', 'Laki-laki', '1985-09-06', '6282778811238'),
('3522139100012567', 'Gunawan', 'Desa Margomulyo', 'Laki-laki', '1985-01-16', '6281259925747'),
('3522139100015457', 'Dian', 'Ds Sentoel', 'Laki-laki', '1981-11-24', '-'),
('352213910001998', 'Supardi', 'Desa Margoulyo', 'Laki-laki', '1969-01-10', '6281359957778'),
('3522139100020001', 'Samat', 'Desa Margomulyo', 'Laki-laki', '1979-10-01', '6285347789977'),
('35221391000234543', 'Imas .S', 'Desa Margomulyo', 'Laki-laki', '1985-11-06', '628534778899'),
('3522139100023761', 'Nur Kharim', 'Ds Sentoel', 'Laki-laki', '1988-12-28', '6285345588987'),
('3522139100025457', 'Alek', 'Desa Margomulyo', 'Laki-laki', '1985-05-12', '6281259925343'),
('3522139100025458', 'Ngatmon', 'Ds Bulu', 'Laki-laki', '1976-04-16', '-'),
('3522139100025517', 'Basuki', 'Ds Kemamang', 'Laki-laki', '1988-08-08', '6289823457812'),
('3522139100034543', 'Muhammad Ali', 'Ds Bulu', 'Laki-laki', '1970-01-10', '6285345577991'),
('3522139100043218', 'Salihin', 'Ds Sentoel', 'Laki-laki', '1978-03-27', '-'),
('3522139100044321', 'Sunardi', 'Ds Bulu', 'Laki-laki', '1977-07-15', '6281347789982'),
('3522139100044412', 'Yunus', 'Ds Kemamang', 'Laki-laki', '1988-12-01', '-'),
('3522139100054481', 'Supriyanto', 'Desa margomulyo', 'Laki-laki', '1978-12-05', '6281274577889'),
('3522139100054491', 'Sugono', 'Ds Kemamang', 'Laki-laki', '1985-01-24', '6285347788793'),
('3522139100054878', 'Adi', 'Ds Sentoel', 'Laki-laki', '1971-11-16', '-'),
('3522139100068731', 'Ali Muchamad', 'Ds Kemamang', 'Laki-laki', '1985-07-17', '6285347788991'),
('3522139100069569', 'Adiriyatno', 'Ds Sentoel', 'Laki-laki', '1985-05-12', '6281259925348'),
('3522139100075491', 'Tafsir', 'Ds Bulu', 'Laki-laki', '1974-11-23', '6281543277889'),
('3522139100076457', 'Darminto', 'Ds Sentoel', 'Laki-laki', '1981-02-14', '-'),
('3522139100076879', 'Hariyanto', 'Ds Sentoel', 'Laki-laki', '1984-10-13', '-'),
('3522139100077569', 'Munakit', 'Desa Margomulyo', 'Laki-laki', '1981-10-14', '6285347789987'),
('3522139100077589', 'Samian', 'Ds Sentoel', 'Laki-laki', '1990-10-15', '-'),
('3522139100077881', 'Suradi', 'Ds Bulu', 'Laki-laki', '1985-10-26', '6285259925343'),
('3522139100077892', 'Anang', 'Desa Magomulyo', 'Laki-laki', '1970-10-09', '6282778811234'),
('3522139100078761', 'Sisyanto', 'Ds Bulu', 'Laki-laki', '1989-11-25', '-'),
('3522139100078981', 'Gunawan', 'Desa Margomulyo', 'Laki-laki', '1979-10-05', '6285347789998'),
('3522139100078991', 'Supingi', 'Ds Bulu', 'Laki-laki', '1985-10-22', '-'),
('3522139100087621', 'Mariyono', 'Ds Kemamang', 'Laki-laki', '1991-05-12', '-'),
('3522139100088761', 'Safii', 'Desa Margomulyo', 'Laki-laki', '1969-05-10', '6285347789978'),
('3522139100088912', 'Eko', 'Desa Margomulyo', 'Laki-laki', '1988-12-06', '6281259925389'),
('3522139100088978', 'Sunardi', 'Desa Balen Rejo', 'Laki-laki', '1988-10-15', '0865678114253'),
('352213910009871', 'Sholiki', 'Ds Sentoel', 'Laki-laki', '1979-12-02', '6285679925348'),
('3522139100118761', 'Riyadi', 'Ds Sentoel', 'Laki-laki', '1986-09-23', '-'),
('3522139100652315', 'Darmian', 'Ds Bulu', 'Laki-laki', '1967-06-30', '-'),
('3522139120024482', 'Kasdi', 'Ds Sentoel', 'Laki-laki', '1981-11-27', '-'),
('3522141100076457', 'Endro', 'Ds Sentoel', 'Laki-laki', '1975-10-23', '6285347788987'),
('35221478906543678', 'Mueh.Gunawan', 'Desa Balen Rejo', 'Laki-laki', '1970-02-10', '082615897651'),
('352216352718298765', 'Hendi P', 'Desa Suwaloh', 'Laki-laki', '1970-08-04', '-'),
('352216378473625478', 'Ali Mustofa', 'Desa Suwaloh', 'Laki-laki', '1953-02-12', '-'),
('352217265371827653', 'Jiono', 'Desa Suwaloh', 'Laki-laki', '1965-02-19', '-'),
('35221728635271890', 'Wahyudianto', 'Desa Suwaloh', 'Laki-laki', '1970-08-20', '-'),
('352217384903726483', 'Riyaman', 'Desa Suwaloh', 'Laki-laki', '1961-08-17', '-'),
('35221746386538', 'Suripin', 'Desa Suwaloh', 'Laki-laki', '1970-08-11', '-'),
('352218297635261783', 'Mukari', 'Desa Suwaloh', 'Laki-laki', '1966-11-26', '-'),
('352218372643526783', 'M.Ilham', 'Desa Suwaloh', 'Laki-laki', '1952-12-01', '-'),
('352218736251728976', 'Nachrawi', 'Desa Suwaloh', 'Laki-laki', '1970-08-19', '-'),
('35221876517186535', 'Sukir', 'Desa Balen Rejo', 'Laki-laki', '1970-03-09', '085671526413'),
('35221876517186536', 'Mokhamad Syafii', 'Desa Balen Rejo', 'Laki-laki', '1970-08-12', '-'),
('352219761452345261', 'Matlikan', 'Desa Suwaloh', 'Laki-laki', '1952-12-04', '-'),
('352219836278192076', 'Solikin', 'Desa Suwaloh', 'Laki-laki', '1970-08-14', '-'),
('352241278916352467', 'Suntari', 'Desa Suwaloh', 'Laki-laki', '1965-03-04', '-'),
('352271264736487632', 'Edi', 'Desa Suwaloh', 'Laki-laki', '1952-12-17', '-'),
('352278164779865347', 'Abdul Adhim', 'Desa Balen Rejo', 'Laki-laki', '1955-12-20', '-'),
('352278164782657', 'Darjan', 'Desa Balen rejo', 'Laki-laki', '1970-05-14', '-'),
('352281635246378964', 'Kuncoro', 'Desa Balen Rejo', 'Laki-laki', '1961-05-11', '-'),
('352281746387564783', 'Djirman', 'Desa Suwaloh', 'Laki-laki', '1960-12-12', '-'),
('352281761753672891', 'Moh.Rusdi', 'Desa Balen Rejo', 'Laki-laki', '1960-12-10', '-'),
('352281765714526716', 'Subakri', 'Desa Balen Rejo', 'Laki-laki', '1960-12-20', '-'),
('352281767186154167', 'Hasan Susanto', 'Desa Balen Rejo', 'Laki-laki', '1960-12-24', '-'),
('35228715367263548', 'Masrukan', 'Desa Balen Rejo', 'Laki-laki', '1955-12-22', '-'),
('352287154673245637', 'Eli Murtakim', 'Desa Suwaloh', 'Laki-laki', '1952-12-11', '-'),
('35228719748759648', 'Lugito', 'Desa Balen Rejo', 'Laki-laki', '1963-08-12', '-'),
('352287365217287365', 'Darmijan', 'Desa Balen Rejo', 'Laki-laki', '1952-12-23', '-'),
('352289364525135673', 'Pandi', 'Desa Balen Rejo', 'Laki-laki', '1952-12-21', '-'),
('352291536728654263', 'Mat Kaeri', 'Desa Suwaloh', 'Laki-laki', '1952-12-10', '-'),
('352291847362718274', 'Nur Kamit', 'Desa Suwaloh', 'Laki-laki', '1952-12-18', '-'),
('352291847583459823', 'Mukohir', 'Desa Suwaloh', 'Laki-laki', '1952-12-01', '-'),
('352291857643657846', 'Sansuri', 'Desa Suwaloh', 'Laki-laki', '1952-12-02', '-'),
('352291876342561423', 'Imam', 'Desa Suwaloh', 'Laki-laki', '1954-03-21', '-'),
('352291876378495860', 'Kiswari', 'Desa Balen Rejo', 'Laki-laki', '1955-12-27', '-'),
('352298175894876378', 'M.Sofyan Ali', 'Desa Balen Rejo', 'Laki-laki', '1966-07-22', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rombel`
--

CREATE TABLE `tbl_rombel` (
  `id_rombel` int(2) NOT NULL,
  `nama_rombel` varchar(32) NOT NULL,
  `jumlah_siswaL` int(2) NOT NULL,
  `jumlah_siswaP` int(2) NOT NULL,
  `kurikulum` varchar(25) NOT NULL,
  `ruangan` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rombel`
--

INSERT INTO `tbl_rombel` (`id_rombel`, `nama_rombel`, `jumlah_siswaL`, `jumlah_siswaP`, `kurikulum`, `ruangan`) VALUES
(1, 'Kelas 1', 9, 7, 'SD 2013', 1),
(2, 'Kelas 2', 9, 7, 'SD 2013', 2),
(3, 'Kelas 3', 7, 10, 'SD 2013', 3),
(4, 'Kelas 4', 12, 13, 'SD 2013', 4),
(5, 'Kelas 5', 6, 5, 'SD 2013', 5),
(6, 'Kelas 6', 10, 13, 'SD 2013', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarana`
--

CREATE TABLE `tbl_sarana` (
  `id_sarana` int(3) NOT NULL,
  `jenis_sarana` varchar(32) NOT NULL,
  `kepimilikan` varchar(32) NOT NULL,
  `spesifikasi` int(3) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `status` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` varchar(225) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Buddha','Konghucu') NOT NULL,
  `id_rombel` int(2) NOT NULL,
  `id_orangtua` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nisn`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `jenis_kelamin`, `agama`, `id_rombel`, `id_orangtua`) VALUES
('-', '0074734958', 'Mochammad Rahmawan Wildani', 'Bojonegoro', '2008-09-16', 'Ds Kemamang                     ', 'Laki-laki', 'Islam', 5, '3522139100068731'),
('0', '0122704260', 'Dini Ariyani Putri', 'Bojonegoro', '2012-07-24', '                                ', 'Laki-laki', 'Islam', 1, '352278164782657'),
('3030', '0044927873', 'Mulyono', 'Bojonegoro', '2007-05-27', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100034543'),
('3036', '0074851083', 'Ahmad Sahrul Efendi', 'Bojonegoro', '2005-02-15', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522131000234543'),
('3037', '0075256481', 'Aldi Rahmat Prasetyo', 'Bojonegoro', '2007-09-01', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522131900076891'),
('3038', '0135940915', 'Alfin Dyas Anggara', 'Bojonegoro', '2007-06-07', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522132000234543'),
('3039', '0074865637', 'Arief Eka Nugraha', 'Bojonegoro', '2007-08-13', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522133100065481'),
('3040', '0087863519', 'Bella Jihan Mei Pratiwi', 'Bojonegoro', '2007-11-23', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522134100023543'),
('3041', '0072280043', 'Dwi Susanti', 'Bojonegoro', '2007-03-20', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522136100023454'),
('3042', '0084923301', 'Febby Oktavia', 'Bojonegoro', '2008-03-06', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522136100025157'),
('3043', '0071331955', 'Febby Oktaviana', 'Bojonegoro', '2007-03-26', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522136100044321'),
('3044', '0075129011', 'Intan Lidya Firnanda', 'Bojonegoro', '2007-08-20', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522137100081871'),
('3045', '0078150426', 'Khesa Lailatul Octaviara', 'Bojonegoro', '2007-11-24', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100000982'),
('3046', '0074290128', 'Kharisma Audia Azzahra', 'Bojonegoro', '2007-10-02', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522137100088199'),
('3047', '0071797399', 'Muhammad Badrul Kukama', 'Bojonegoro', '2008-03-04', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100007481'),
('3048', '0131149958', 'Muhammad Ferdiansyah', 'Bojonegoro', '2007-03-13', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100025458'),
('3049', '0085286292', 'Moch.Lutfi Candra Pratama', 'Bojonegoro', '2007-12-08', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100004476'),
('3051', '0137466883', 'M.Viky Riyan Jaya Saputra', 'Bojonegoro', '2007-04-10', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100001451'),
('3052', '0074492404', 'Nela Alisya Yumeika', 'Bojonegoro', '2007-06-04', 'Ds Bulu                         ', 'Laki-laki', 'Islam', 6, '3522139100044321'),
('3053', '0139770191', 'Rossa Amelia', 'Bojonegoro', '2007-02-05', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100075491'),
('3054', '0078103139', 'Sheirly Aura Sholikhati', 'Bojonegoro', '2007-05-03', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100077881'),
('3055', '0073469234', 'Sinta Amelia Putri', 'Bojonegoro', '2007-01-03', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100078761'),
('3056', '0078853265', 'Sofhia Dini Rahmawati', 'Bojonegoro', '2006-04-02', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100078991'),
('3057', '0067248172', 'Wiludi Dafa Pramata', 'Bojonegoro', '2007-05-06', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '3522139100652315'),
('3060', '0087068284', 'Budi Utomo', 'Bojonegoro', '2008-03-02', 'Ds Kemamang                     ', 'Laki-laki', 'Islam', 5, '3522137100023451'),
('3061', '0087334901', 'Cinta Kasih', 'Bojonegoro', '2008-07-25', 'Ds Kemamang                     ', 'Perempuan', 'Islam', 5, '3522138100025143'),
('3062', '0084775082', 'Dedi Andika Putra', 'Sidoarjo', '2008-05-12', 'Ds Kemamang                     ', 'Laki-laki', 'Islam', 5, '3522139100025517'),
('3063', '0089877946', 'Dianita Aulia Rahma', 'Bojonegoro', '2008-02-19', 'Ds Kemamang                     ', 'Perempuan', 'Islam', 5, '3522139100044412'),
('3064', '0088005344', 'Lusiana Febrianti', 'Bojonegoro', '2007-08-05', 'Ds Kemamang                     ', 'Perempuan', 'Islam', 5, '3522139100054491'),
('3065', '0098492346', 'Risya Ayu Ramadhani', 'Bojonegoro', '2007-04-30', 'Ds Kemamang                     ', 'Perempuan', 'Islam', 5, '352206090598001'),
('3066', '0073675466', 'Regita Dwi Cahyani', 'Bojonegoro', '2007-07-28', 'Ds Kemamang                     ', 'Perempuan', 'Islam', 5, '3522139100087621'),
('3068', '0085141275', 'Arga Ari Saputra', 'Bojonegoro', '2008-03-21', 'Ds Kemamang                     ', 'Laki-laki', 'Islam', 5, '352213710002345'),
('3072', '0087882781', 'Abid Maulana Jabir', 'Kudus', '2008-06-07', 'Ds.margomulyo RT 7', 'Laki-laki', 'Islam', 4, '352209516738725643'),
('3073', '0091361383', 'Amanda Septiana Putri', 'Bojonegoro', '2009-09-11', '              DS.Margomulyo RT 7', 'Perempuan', 'Islam', 4, '352212356784936254'),
('3074', '0096261088', 'Aura Dwi Herman Pertiwi', 'Bojonegoro', '2009-08-05', 'Ds Suwaloh                      ', 'Perempuan', 'Islam', 4, '352212637849836475'),
('3075', '0105921001', 'Aurelliaq Putri Febriana', 'kediri', '2010-02-21', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '35221264789364753'),
('3076', '0094565929', 'Elviana Lidia Safitri', 'Bojonegoro', '2009-09-21', 'DS. Suwaloh ', 'Perempuan', 'Islam', 4, '352212678903456251'),
('3077', '0092756887', 'Fiqi Khafid Kalamulloh', 'Bojonegoro', '2009-06-24', 'DS. Suwaloh    ', 'Laki-laki', 'Islam', 4, '352216352718298765'),
('3078', '0095017843', 'Kania Sekar Kinanti', 'Bojonegoro', '2009-08-10', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352216378473625478'),
('3079', '0094954596', 'Lutfiyana Fatma Pratiwi', 'Bojonegoro', '0000-00-00', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352217265371827653'),
('3080', '0093305403', 'M. Kevin Al-izzam Maulana', 'Bojonegoro', '2009-05-16', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352217384903726483'),
('3081', '0095609003', 'Mey Puspitasari', 'Bojonegoro', '2008-09-13', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '35221746386538'),
('3082', '0081273773', 'Nia Antikasari', 'Bojonegoro', '2009-11-11', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352218297635261783'),
('3083', '0099068183', 'Moch. David Aditya Pratama', 'Bojonegoro', '2008-12-11', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352218372643526783'),
('3084', '0089493414', 'Mochammad Aidhil Mustafiq', 'Bojonegoro', '2009-10-12', 'Desa Suwaloh', 'Laki-laki', 'Islam', 4, '352219761452345261'),
('3085', '0096599651', 'Moh Novan Setya', 'Bojonegoro', '2009-10-28', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352219836278192076'),
('3086', '0093234776', 'Muhammad Dhafa Ramadhani', 'Bojonegoro', '2009-01-04', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352271264736487632'),
('3087', '0096114687', 'Muhammad Radhitya Andhika Putra', 'Bojonegoro', '2008-03-26', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352281746387564783'),
('3088', '0096114480', 'Mustafidha Shofia', 'Bojonegoro', '2009-12-27', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352287154673245637'),
('3089', '0099297367', 'Risma Susiana', 'Bojonegoro', '2009-10-08', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352291536728654263'),
('3090', '0089851646', 'Rizka Maulidiya', 'Bojonegoro', '2008-12-30', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352291847362718274'),
('3091', '0099285196', 'Safira Nur Rizqya Rahmawati', 'Bojonegoro', '2007-11-27', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352291847583459823'),
('3092', '0094269516', 'Shifana Aurelya', 'Bojonegoro', '2009-05-14', 'DS. Suwaloh', 'Perempuan', 'Islam', 4, '352291857643657846'),
('3093', '0087916680', 'Tegar Gunawan', 'Bojonegoro', '2009-10-14', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352291876342561423'),
('3095', '010131933', 'Amira Ziva Zara Zabiya', 'Bojonegoro', '2010-10-19', 'Ds.Margomulyo                   ', 'Laki-laki', 'Islam', 3, '3522130100087651'),
('3096', '0106683595', 'Arthalita Ika Wardana', 'Bojonegoro', '2010-06-01', 'Ds.Morgomulyo                   ', 'Perempuan', 'Islam', 3, '3522134300054467'),
('3097', '0104213108', 'Bima Irsyad Laksana Putra', 'Bojonegoro', '2010-10-20', 'Ds.Margomulyo                   ', 'Laki-laki', 'Islam', 3, '3522137100014691'),
('3098', '0107876764', 'Dafa Al-Fadillah', 'Bojonegoro', '0000-00-00', 'Ds.mARGOMULYO                   ', 'Laki-laki', 'Islam', 3, '3522139100009871'),
('3099', '0109845436', 'Ikwan Mirza Yafi Rifana', 'Bojonegoro', '2010-05-22', 'Ds.Margomulyo                   ', 'Laki-laki', 'Islam', 3, '3522139100015457'),
('3100', '0109983895', 'Lailatul Jamilah Nur Auliya', 'Bojonegoro', '2010-02-12', 'Ds.Margomulyo                   ', 'Perempuan', 'Islam', 3, '3522139100023761'),
('3101', '0108623820', 'Malika Zahrotul Ula Kurniawan', 'Bojonegoro', '2009-06-01', 'Ds Sentoel', 'Perempuan', 'Islam', 3, '3522139100069569'),
('3102', '0107779428', 'M. Beryl Aldora Pratama', 'Bojonegoro', '2010-10-08', 'Ds.Margomulyo                   ', 'Laki-laki', 'Islam', 3, '3522139100043218'),
('3103', '0105021001', 'Muhammad Ferdi Kurniawan`', 'Bojonegoro', '0000-00-00', 'Ds. Margomulyo                  ', 'Laki-laki', 'Islam', 3, '3522139100076457'),
('3104', '0096912925', 'M. Rizky Bayu Ramandani', 'Bojonegoro', '2010-01-01', 'Ds.Margomulyo                   ', 'Laki-laki', 'Islam', 3, '3522139100054878'),
('3105', '0096343060', 'Muhammad Ulumuddin Azhar', 'Bojonegoro', '2010-10-04', 'Ds. Margomulyo                  ', 'Laki-laki', 'Islam', 3, '3522139100076879'),
('3106', '0108954543', 'Nafiza Ilma Izzati', 'Bojonegoro', '2010-10-17', 'Ds. Margomulyo                  ', 'Perempuan', 'Islam', 3, '3522139100077589'),
('3107', '0104025801', 'Nasywa Zahida Brilian', 'Bojonegoro', '2010-10-26', 'Ds. Margomulyo                  ', 'Perempuan', 'Islam', 3, '352213910009871'),
('3108', '0101544701', 'Saskia Aulia Putri', 'Bojonegoro', '2010-04-11', 'Ds. Margpomulyo                 ', 'Perempuan', 'Islam', 3, '352213910009871'),
('3109', '0106155260`', 'Sintiya Dewi Anggraini', 'Bojonegoro', '2010-06-06', 'Ds. Margomulyo                  ', 'Perempuan', 'Islam', 3, '3522139120024482'),
('3110', '0095011764', 'Zahrotul Laili', 'Pamekasan`', '2009-11-11', 'Ds. Margomulyo                  ', 'Perempuan', 'Islam', 3, '3522141100076457'),
('3111', '0076270173', 'M. Airlangga Alfaris', 'Bojonegoro', '2009-04-16', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '35221728635271890'),
('3112', '0093303272', 'Moch. Khozainun Naja', 'Bojonegoro', '2009-02-04', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352218736251728976'),
('3113', '0093223395', 'Muhammad Alfi Syahri', 'Bojonegoro', '2009-06-29', 'DS. Suwaloh', 'Laki-laki', 'Islam', 4, '352241278916352467'),
('3114', '0119332716', 'Aerlangga Febrisa Agus Saputra', 'Bojonegoro', '2011-07-17', '', 'Laki-laki', 'Islam', 2, '352209516738725639'),
('3115', '0117624336', 'Debby Verisa Gabriellia Hariyant', 'Bojonegoro', '2011-04-06', '                        Desa Mar', 'Perempuan', 'Islam', 2, '352209516738725640'),
('3116', '0129979681', 'Dwi Mutia Safira', 'Bojonegoro', '2012-01-22', '                         Desa Ma', 'Perempuan', 'Islam', 2, '352209516738725641'),
('3117', '0118598776', 'Febry Maulidiya Fatimatus Azzaha', 'Bojonegoro', '2011-02-15', '', 'Perempuan', 'Islam', 2, '3522138100025459'),
('3119', '0114558157', 'Firda Maulifatul Hikmah', 'Bojonegoro', '2011-12-01', '                                ', 'Perempuan', 'Islam', 2, '352213670002345'),
('3120', '0117905178', 'Moch. Bagas Ardi Pratama', 'Bojonegoro', '2011-04-22', '                                ', 'Laki-laki', 'Islam', 2, '3522139100012567'),
('3121', '0113541221', 'Mohammad Fadhil Maulana Hidayatu', 'Bojonegoro', '2011-04-02', '                                ', 'Laki-laki', 'Islam', 2, '35221391000234543'),
('3122', '0102736062', 'Mokhamad Sabian Putra Pramana', 'Bojonegoro', '2010-12-13', '                                ', 'Laki-laki', 'Islam', 2, '3522139100012567'),
('3123', '0117830006', 'Muhammad Alfi Furqon Al Azril', 'Bojonegoro', '2011-08-21', '                  Desa Margomuly', 'Laki-laki', 'Islam', 2, '35221391000234543'),
('3124', '0101152648', 'Muhammad Febri Kurniawan', 'Bojonegoro', '2010-02-18', '                       Desa Marg', 'Laki-laki', 'Islam', 2, '3522139100025457'),
('3126', '0117925701', 'Nafa Harisya Putri', 'Bojonegoro', '2011-08-20', '                 Desa Margomulyo', 'Perempuan', 'Islam', 2, '3522139100054481'),
('3127', '0112102230', 'Nazuwa Putri Angelina', 'Bojonegoro', '2011-09-26', '                   Desa Margomul', 'Perempuan', 'Islam', 2, '3522139100077569'),
('3130', '0104236854', 'Angel Saputri Dewi', 'Jember', '2010-01-14', 'Ds.Margomulyo                   ', 'Perempuan', 'Islam', 3, '3522134100052421'),
('3131', '0078285867', 'Alviyandika Hafidh Saputra', 'Bojonegoro', '2008-02-07', 'Ds Kemamang                     ', 'Laki-laki', 'Islam', 5, '3522133100077881'),
('3132', '0072964558', 'Dwi Maina Wati', 'Bojonegoro', '2008-05-31', 'Ds Bulu                         ', 'Perempuan', 'Islam', 6, '352213510002547'),
('3133', '0114987935', 'Ahmad Ajijoyo Hidayat', 'Bojonegoro', '2011-07-19', 'Desa Balen Rejo', 'Laki-laki', 'Islam', 1, '3522139100088978'),
('3134', '0128389621', 'Ahmad Nur Ahsanun Nitam', 'Bojonegoro', '2012-07-01', 'Desa Balen Rejo', 'Laki-laki', 'Islam', 1, '35221478906543678'),
('3135', '0121681732', 'Ahmad Taqiyyuddin Fathan', 'Bojonegoro', '2012-10-19', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '35221876517186535'),
('3136', '0127335096', 'Azzahra Shafira Putri Ramadhina', 'Bojonegoro', '2012-08-14', 'Desa Balen Rejo', 'Laki-laki', 'Islam', 1, '35221876517186536'),
('3137', '0122997737', 'Nadya Martha Lutfita Sari', 'Bojonegoro', '2012-01-06', '    Desa Balen Rejo             ', 'Laki-laki', 'Islam', 1, '352289364525135673'),
('3140', '0127020418', 'Fabril Yusuf Ubaidillah', 'Bojonegoro', '2012-06-03', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '352281635246378964'),
('3141', '0123577642', 'Fera Luni Safitri', 'Bojonegoro', '2012-10-31', 'Desa Balen rejo                 ', 'Perempuan', 'Islam', 1, '352281761753672891'),
('3142', '0122010949', 'Kevin Wahyu Utomo', 'Bojonegoro', '2012-06-27', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '352281765714526716'),
('3143', '0114742895', 'Muhammad Agha Naafi Alfiansyah', 'Bojonegoro', '2012-09-18', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '35228715367263548'),
('3144', '0121707856', 'Muhammad Erlangga Dwi Ramadhani', 'Bojonegoro', '2012-08-12', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '35228719748759648'),
('3145', '0111883282', 'Muhammad Rafif Nail Zayyan', 'Bojonegoro', '2011-11-18', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '352287365217287365'),
('3146', '0128582397', 'Moch. Nizam Ganjar Prasetyo', 'Bojonegoro', '2012-04-18', 'Desa Balen Rejo                 ', 'Laki-laki', 'Islam', 1, '352281767186154167'),
('3147', '0126018665', 'Revaline Putri Ramadhani', 'Bojonegoro', '2012-04-07', ' Desa Balen Rejo                ', 'Perempuan', 'Islam', 1, '352298175894876378');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tbl_jjm`
--
ALTER TABLE `tbl_jjm`
  ADD PRIMARY KEY (`id_jjm`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_rombel` (`id_rombel`);

--
-- Indexes for table `tbl_orangtua`
--
ALTER TABLE `tbl_orangtua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `tbl_rombel`
--
ALTER TABLE `tbl_rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `tbl_sarana`
--
ALTER TABLE `tbl_sarana`
  ADD PRIMARY KEY (`id_sarana`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_orangtua` (`id_orangtua`),
  ADD KEY `id_rombel` (`id_rombel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_jjm`
--
ALTER TABLE `tbl_jjm`
  MODIFY `id_jjm` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `tbl_sarana`
--
ALTER TABLE `tbl_sarana`
  MODIFY `id_sarana` int(3) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD CONSTRAINT `tbl_guru_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_login` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`id_rombel`) REFERENCES `tbl_rombel` (`id_rombel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_rombel`) REFERENCES `tbl_rombel` (`id_rombel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_siswa_ibfk_2` FOREIGN KEY (`id_orangtua`) REFERENCES `tbl_orangtua` (`id_orangtua`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
