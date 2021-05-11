-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Bulan Mei 2021 pada 04.03
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_komik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Shonen Jump', 'One piece.jpg', NULL, '2021-05-09 23:31:38'),
(3, 'Jujutsu Kaisen', 'jujutsu-kaisen', 'Ihsan Miftahul Huda ', 'Gramedia', '1620629684_c9c4a8467798e9743d32.jpg', '2021-05-10 01:00:15', '2021-05-10 01:54:44'),
(7, 'Bleach ', 'bleach', 'Akira Toriyama ', 'Shonen', '1620704934_d0237d913a5e3bb93593.jpg', '2021-05-10 01:57:19', '2021-05-10 22:48:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(4, '2021-05-10-071314', 'App\\Database\\Migrations\\Student', 'default', 'App', 1620634764, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Calista Handayani', 'Kpg. Villa No. 207, Tanjungbalai 45680, Sumsel', '2006-11-20 07:41:03', '2021-05-10 03:19:29'),
(2, 'Nadine Yulianti', 'Jr. Sutarto No. 599, Bandung 59701, Jambi', '1987-01-25 02:47:44', '2021-05-10 03:19:29'),
(3, 'Harjaya Virman Lazuardi', 'Kpg. Aceh No. 254, Bandung 83617, Sulbar', '2014-11-16 11:18:51', '2021-05-10 03:19:29'),
(4, 'Bahuraksa Bakidin Simanjuntak', 'Ds. Madrasah No. 33, Jayapura 93438, Jatim', '1988-08-27 17:57:36', '2021-05-10 03:19:29'),
(5, 'Vicky Laksita', 'Kpg. Imam No. 551, Palembang 24176, Kepri', '1977-07-28 12:07:19', '2021-05-10 03:19:29'),
(6, 'Edi Prasetyo', 'Psr. Ujung No. 109, Sibolga 92205, Kepri', '1978-04-06 00:04:49', '2021-05-10 03:19:29'),
(7, 'Kamila Agustina S.Pd', 'Kpg. Bak Air No. 657, Tanjungbalai 74774, Kaltim', '2012-08-11 05:21:39', '2021-05-10 03:19:29'),
(8, 'Anom Pangestu', 'Psr. Suniaraja No. 132, Bandung 65685, Sulbar', '1976-03-20 15:07:14', '2021-05-10 03:19:29'),
(9, 'Melinda Carla Permata S.Pd', 'Jr. Antapani Lama No. 523, Serang 54078, Sumsel', '1992-08-04 08:56:28', '2021-05-10 03:19:29'),
(10, 'Julia Usamah M.Pd', 'Jr. Kyai Mojo No. 790, Banjarbaru 18538, Sulsel', '2000-03-17 23:38:48', '2021-05-10 03:19:29'),
(11, 'Cayadi Gunarto S.Sos', 'Ds. Basmol Raya No. 39, Padangpanjang 25908, Pabar', '2015-04-24 12:38:19', '2021-05-10 03:19:29'),
(12, 'Fitriani Lailasari', 'Jln. Raden Saleh No. 45, Yogyakarta 29500, Sultra', '1992-11-10 09:56:28', '2021-05-10 03:19:29'),
(13, 'Victoria Lailasari', 'Psr. Setia Budi No. 322, Pangkal Pinang 27932, Sultra', '1981-10-29 04:36:59', '2021-05-10 03:19:29'),
(14, 'Agus Wibowo', 'Ds. Jakarta No. 384, Bogor 21249, Kalbar', '2013-01-01 17:10:23', '2021-05-10 03:19:29'),
(15, 'Martana Saefullah', 'Gg. Suryo No. 886, Banjarmasin 93319, Sulut', '2000-10-11 15:27:32', '2021-05-10 03:19:29'),
(16, 'Olga Adiarja Nainggolan', 'Jr. Mahakam No. 312, Payakumbuh 80006, Kaltara', '2018-03-08 23:29:37', '2021-05-10 03:19:29'),
(17, 'Raina Namaga M.Kom.', 'Dk. Tangkuban Perahu No. 537, Administrasi Jakarta Pusat 25071, Aceh', '2018-05-05 23:35:21', '2021-05-10 03:19:29'),
(18, 'Candra Maryadi', 'Jln. Bak Mandi No. 272, Cilegon 76156, Maluku', '2007-08-09 16:53:19', '2021-05-10 03:19:29'),
(19, 'Qori Purnawati M.TI.', 'Dk. Cemara No. 648, Kotamobagu 68772, Babel', '1984-04-09 22:14:10', '2021-05-10 03:19:29'),
(20, 'Queen Kuswandari', 'Ki. Surapati No. 207, Sabang 48532, Banten', '1987-05-25 19:39:05', '2021-05-10 03:19:29'),
(21, 'Raisa Nasyiah', 'Kpg. Jaksa No. 39, Administrasi Jakarta Selatan 38847, Sulteng', '1999-01-23 22:12:00', '2021-05-10 03:19:29'),
(22, 'Dinda Nuraini', 'Psr. Jaksa No. 809, Semarang 48409, Aceh', '1984-12-16 21:40:57', '2021-05-10 03:19:29'),
(23, 'Kawaca Saptono', 'Ds. Sukabumi No. 575, Palopo 28591, Sumsel', '2011-02-02 00:51:27', '2021-05-10 03:19:29'),
(24, 'Danu Prayoga Manullang S.Pt', 'Jln. Flora No. 341, Mataram 82522, Pabar', '2016-10-11 03:47:42', '2021-05-10 03:19:29'),
(25, 'Hamzah Rajata S.Kom', 'Jln. Krakatau No. 980, Sabang 46648, Sulut', '2000-11-27 17:31:07', '2021-05-10 03:19:29'),
(26, 'Lili Hassanah S.E.I', 'Gg. Sutarto No. 169, Pasuruan 23926, Sumut', '2020-10-05 11:27:31', '2021-05-10 03:19:29'),
(27, 'Vicky Mandasari', 'Ki. Sunaryo No. 876, Cilegon 70673, Riau', '1984-06-19 00:08:29', '2021-05-10 03:19:29'),
(28, 'Aditya Nainggolan', 'Kpg. Bayan No. 713, Tebing Tinggi 69092, Kaltim', '1979-06-01 04:55:48', '2021-05-10 03:19:29'),
(29, 'Ulya Lidya Padmasari M.Kom.', 'Ds. Setiabudhi No. 712, Jayapura 79164, Sumsel', '2009-03-06 09:07:19', '2021-05-10 03:19:29'),
(30, 'Titi Laksmiwati', 'Gg. Adisucipto No. 315, Singkawang 98754, Sulteng', '1976-01-30 10:41:06', '2021-05-10 03:19:29'),
(31, 'Kasiran Latupono', 'Jln. Moch. Yamin No. 160, Bima 98858, Sumut', '1993-03-26 02:25:17', '2021-05-10 03:19:29'),
(32, 'Wulan Calista Hassanah', 'Psr. Sutarto No. 374, Tangerang Selatan 57709, DKI', '1977-10-28 23:40:02', '2021-05-10 03:19:29'),
(33, 'Wani Safitri', 'Jln. Bacang No. 952, Palangka Raya 48708, Malut', '2015-08-18 06:22:55', '2021-05-10 03:19:29'),
(34, 'Ulva Riyanti M.Ak', 'Jr. Samanhudi No. 899, Cirebon 88516, Kepri', '2012-12-06 23:53:22', '2021-05-10 03:19:29'),
(35, 'Gatra Suryono', 'Ds. Industri No. 79, Tidore Kepulauan 81683, Sulteng', '2020-01-18 00:41:00', '2021-05-10 03:19:29'),
(36, 'Prayoga Asmianto Pratama M.Ak', 'Psr. Bara No. 334, Denpasar 63752, Kaltara', '2009-11-18 22:44:09', '2021-05-10 03:19:29'),
(37, 'Jamalia Kani Anggraini', 'Jln. Qrisdoren No. 283, Tasikmalaya 11310, Bali', '1978-08-05 18:55:53', '2021-05-10 03:19:29'),
(38, 'Carla Ratna Suartini', 'Kpg. Veteran No. 932, Binjai 27112, Jatim', '2016-10-09 04:47:44', '2021-05-10 03:19:29'),
(39, 'Garang Damanik', 'Ds. Dipenogoro No. 631, Pekalongan 16928, Gorontalo', '1977-07-16 17:00:00', '2021-05-10 03:19:29'),
(40, 'Mutia Namaga M.Kom.', 'Gg. Kebonjati No. 812, Surakarta 15001, Sumut', '1993-02-13 17:45:49', '2021-05-10 03:19:29'),
(41, 'Putri Nasyidah', 'Gg. Yos No. 323, Cilegon 68054, DIY', '2002-12-10 12:48:37', '2021-05-10 03:19:29'),
(42, 'Anastasia Puspita', 'Jln. Wora Wari No. 556, Tual 14881, Sulbar', '1996-12-25 05:36:10', '2021-05-10 03:19:29'),
(43, 'Ira Fitriani Yulianti', 'Dk. Abdul Rahmat No. 148, Tidore Kepulauan 32945, Kalbar', '1980-06-20 15:26:45', '2021-05-10 03:19:29'),
(44, 'Pardi Mansur', 'Jr. Supono No. 105, Banjarbaru 31365, Sulbar', '2002-04-12 21:47:34', '2021-05-10 03:19:29'),
(45, 'Akarsana Sihotang', 'Jln. Nanas No. 593, Probolinggo 61461, Riau', '1970-11-19 11:42:44', '2021-05-10 03:19:29'),
(46, 'Elon Pradana', 'Dk. Pasirkoja No. 774, Sawahlunto 48470, Lampung', '1993-04-10 09:51:02', '2021-05-10 03:19:29'),
(47, 'Sari Yuni Nasyidah', 'Dk. Otto No. 700, Solok 88706, Sulut', '2014-06-15 00:30:39', '2021-05-10 03:19:29'),
(48, 'Wani Permata S.T.', 'Ds. Banda No. 785, Bau-Bau 45401, Aceh', '2001-11-30 23:47:32', '2021-05-10 03:19:29'),
(49, 'Cornelia Novi Oktaviani', 'Dk. Daan No. 869, Medan 80790, DKI', '1974-07-13 17:12:59', '2021-05-10 03:19:29'),
(50, 'Ajeng Lili Lailasari', 'Jln. Villa No. 705, Sorong 80190, Papua', '2011-10-17 03:32:24', '2021-05-10 03:19:29'),
(51, 'Novi Puspasari', 'Ds. Madrasah No. 624, Madiun 87272, NTT', '2000-10-01 16:28:08', '2021-05-10 03:19:29'),
(52, 'Tedi Simbolon', 'Gg. Bakaru No. 860, Tasikmalaya 57421, Bali', '1998-02-04 14:54:38', '2021-05-10 03:19:29'),
(53, 'Lili Suartini', 'Ki. Imam No. 989, Malang 17242, NTB', '1996-06-06 19:07:48', '2021-05-10 03:19:29'),
(54, 'Umi Lestari S.Pd', 'Gg. Elang No. 4, Manado 97602, DIY', '2005-03-06 18:58:17', '2021-05-10 03:19:29'),
(55, 'Hadi Maryanto Kuswoyo S.E.', 'Gg. Ahmad Dahlan No. 60, Tual 84629, NTT', '1998-05-29 05:12:25', '2021-05-10 03:19:29'),
(56, 'Kadir Gambira Jailani S.E.I', 'Dk. Untung Suropati No. 409, Sabang 32663, Kaltara', '2006-08-29 06:09:45', '2021-05-10 03:19:29'),
(57, 'Irfan Mandala', 'Ds. W.R. Supratman No. 232, Tegal 73868, Jambi', '1975-06-19 16:20:58', '2021-05-10 03:19:29'),
(58, 'Liman Suryono S.Pd', 'Ki. Reksoninten No. 985, Tarakan 83641, Sultra', '1981-05-10 02:15:44', '2021-05-10 03:19:29'),
(59, 'Unjani Lala Usamah', 'Gg. Baranang Siang No. 121, Cilegon 89073, Kaltim', '1971-09-27 22:50:16', '2021-05-10 03:19:29'),
(60, 'Lidya Purnawati S.Ked', 'Jr. Ters. Pasir Koja No. 319, Pekanbaru 23796, NTB', '1989-08-13 16:51:01', '2021-05-10 03:19:29'),
(61, 'Jarwa Laksana Waskita S.H.', 'Psr. Ciwastra No. 877, Padangsidempuan 85971, Sumbar', '2014-08-17 20:24:03', '2021-05-10 03:19:29'),
(62, 'Wisnu Aris Utama S.Pd', 'Kpg. Padma No. 105, Batam 61834, Riau', '1989-12-12 05:00:54', '2021-05-10 03:19:29'),
(63, 'Tirta Zulkarnain', 'Dk. Cihampelas No. 67, Pagar Alam 28188, Jatim', '2006-11-07 21:49:23', '2021-05-10 03:19:29'),
(64, 'Victoria Rini Permata', 'Kpg. Dipenogoro No. 948, Yogyakarta 84676, Sulut', '1997-06-28 09:55:44', '2021-05-10 03:19:29'),
(65, 'Gara Hidayanto', 'Kpg. Thamrin No. 888, Gorontalo 52639, DIY', '1997-12-21 04:12:05', '2021-05-10 03:19:29'),
(66, 'Vinsen Kasiran Siregar S.Gz', 'Psr. Bappenas No. 745, Bandung 62908, Riau', '1997-03-07 11:34:21', '2021-05-10 03:19:29'),
(67, 'Balangga Dongoran M.Ak', 'Jr. Elang No. 385, Pasuruan 55987, Malut', '2019-05-16 00:01:43', '2021-05-10 03:19:29'),
(68, 'Safina Mardhiyah', 'Jln. Bhayangkara No. 356, Banjarmasin 72505, Sulbar', '1996-05-16 08:14:05', '2021-05-10 03:19:29'),
(69, 'Siti Ani Kusmawati S.E.I', 'Jr. S. Parman No. 863, Administrasi Jakarta Utara 55038, Babel', '1972-06-08 04:38:10', '2021-05-10 03:19:29'),
(70, 'Hendra Jaga Uwais S.Gz', 'Ki. Pahlawan No. 201, Singkawang 70628, NTB', '2016-08-30 14:39:00', '2021-05-10 03:19:29'),
(71, 'Vivi Calista Mayasari', 'Kpg. Muwardi No. 945, Medan 65212, Jabar', '2007-08-28 16:35:57', '2021-05-10 03:19:29'),
(72, 'Hafshah Lailasari', 'Dk. Otista No. 986, Bitung 13175, Sumut', '1975-10-03 22:44:23', '2021-05-10 03:19:29'),
(73, 'Victoria Winda Mayasari', 'Gg. B.Agam Dlm No. 166, Kupang 68589, Jateng', '1988-10-16 02:38:40', '2021-05-10 03:19:29'),
(74, 'Sabrina Suci Suartini', 'Jr. Otista No. 734, Surabaya 27039, NTT', '1986-11-21 02:17:56', '2021-05-10 03:19:29'),
(75, 'Maras Ramadan M.M.', 'Psr. Bakau Griya Utama No. 855, Surakarta 85533, Kalsel', '1986-07-31 10:44:19', '2021-05-10 03:19:29'),
(76, 'Legawa Mursita Sitompul M.Ak', 'Dk. Thamrin No. 657, Tanjung Pinang 62749, Sulteng', '2007-05-06 08:35:34', '2021-05-10 03:19:29'),
(77, 'Purwa Iswahyudi S.T.', 'Ds. Barat No. 354, Tasikmalaya 44178, Malut', '2002-01-05 18:42:42', '2021-05-10 03:19:29'),
(78, 'Kayla Sudiati S.E.I', 'Ki. Bappenas No. 338, Administrasi Jakarta Selatan 75869, Jambi', '2001-05-18 04:17:41', '2021-05-10 03:19:29'),
(79, 'Cawisadi Dongoran S.Kom', 'Dk. Laswi No. 174, Cirebon 90149, Sumsel', '2020-08-24 03:57:01', '2021-05-10 03:19:29'),
(80, 'Gabriella Agustina', 'Psr. Dipatiukur No. 339, Administrasi Jakarta Utara 40687, Jatim', '1988-03-14 06:44:56', '2021-05-10 03:19:29'),
(81, 'Teguh Cengkir Budiman S.IP', 'Jln. Ciumbuleuit No. 728, Pontianak 47853, Sumut', '2009-02-27 08:11:38', '2021-05-10 03:19:29'),
(82, 'Tirtayasa Tampubolon', 'Jr. Gatot Subroto No. 714, Administrasi Jakarta Selatan 12872, DIY', '2009-02-17 22:08:15', '2021-05-10 03:19:29'),
(83, 'Dwi Hardiansyah', 'Gg. Bahagia No. 436, Payakumbuh 81592, Pabar', '2006-11-26 23:32:11', '2021-05-10 03:19:29'),
(84, 'Fathonah Ulva Pertiwi S.T.', 'Ki. Pahlawan No. 573, Makassar 33314, Kepri', '1993-05-24 13:16:04', '2021-05-10 03:19:29'),
(85, 'Usman Hutasoit M.Kom.', 'Psr. Tambak No. 900, Lubuklinggau 65658, Sulteng', '2011-07-27 16:18:09', '2021-05-10 03:19:29'),
(86, 'Umi Novitasari S.Psi', 'Psr. Laksamana No. 484, Pekalongan 50714, Papua', '1971-04-03 17:05:33', '2021-05-10 03:19:29'),
(87, 'Rahayu Aryani', 'Ki. Kyai Gede No. 608, Madiun 41580, Kepri', '1990-04-13 11:03:58', '2021-05-10 03:19:29'),
(88, 'Hamima Julia Agustina', 'Ds. Thamrin No. 589, Pagar Alam 91869, Jatim', '1992-05-11 08:03:03', '2021-05-10 03:19:29'),
(89, 'Pranawa Manah Rajasa S.T.', 'Ds. Gajah Mada No. 141, Malang 17947, Lampung', '2006-07-05 05:32:44', '2021-05-10 03:19:29'),
(90, 'Gangsa Saefullah', 'Ds. Mulyadi No. 775, Blitar 22208, Kalbar', '1992-05-19 21:35:40', '2021-05-10 03:19:29'),
(91, 'Ana Melani', 'Psr. Siliwangi No. 943, Makassar 80538, Babel', '1970-09-13 04:48:02', '2021-05-10 03:19:29'),
(92, 'Mutia Maryati', 'Kpg. Cikutra Barat No. 363, Depok 23849, Gorontalo', '1979-03-27 22:43:08', '2021-05-10 03:19:29'),
(93, 'Mala Laksmiwati S.Kom', 'Jr. Nakula No. 494, Yogyakarta 11718, Babel', '1986-08-03 13:22:51', '2021-05-10 03:19:29'),
(94, 'Wani Olivia Anggraini M.TI.', 'Jr. Sutan Syahrir No. 329, Tangerang 37627, Jateng', '1985-09-04 23:55:17', '2021-05-10 03:19:29'),
(95, 'Kemal Mandala', 'Jln. Bakau Griya Utama No. 338, Sawahlunto 78876, Bali', '1972-08-07 23:49:42', '2021-05-10 03:19:29'),
(96, 'Heru Jais Wibowo S.Farm', 'Gg. Villa No. 922, Lhokseumawe 19830, Maluku', '1980-02-14 14:10:17', '2021-05-10 03:19:29'),
(97, 'Ilyas Ozy Nainggolan S.IP', 'Jr. Ki Hajar Dewantara No. 553, Magelang 58573, Babel', '1976-09-24 20:17:55', '2021-05-10 03:19:29'),
(98, 'Drajat Maheswara', 'Jln. Sugiono No. 432, Binjai 64173, DKI', '1971-01-31 16:26:41', '2021-05-10 03:19:29'),
(99, 'Ilsa Dinda Rahmawati', 'Gg. Bacang No. 520, Padangsidempuan 62710, Jabar', '1978-02-13 17:23:11', '2021-05-10 03:19:29'),
(100, 'Banawi Setiawan', 'Gg. Cikutra Barat No. 402, Prabumulih 48846, Sumbar', '2015-10-10 19:42:07', '2021-05-10 03:19:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
