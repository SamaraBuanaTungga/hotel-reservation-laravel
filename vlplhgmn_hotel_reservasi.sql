-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2026 at 08:45 PM
-- Server version: 10.11.18-MariaDB-cll-lve
-- PHP Version: 8.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vlplhgmn_hotel_reservasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `old_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_data`)),
  `new_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_data`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(512) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `record_id`, `description`, `old_data`, `new_data`, `ip_address`, `user_agent`, `created_at`) VALUES
(2, NULL, 'created', 'user', 2, 'Akun user baru dibuat: Petugas Front Desk (petugas)', NULL, '{\"id\": 2, \"name\": \"Petugas Front Desk\", \"role\": \"petugas\", \"email\": \"petugas@hotel.com\", \"no_hp\": \"081234567891\", \"is_active\": true, \"created_at\": \"2026-07-01 19:14:06\", \"updated_at\": \"2026-07-01 19:14:06\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:06'),
(3, NULL, 'created', 'user', 3, 'Akun user baru dibuat: Rika Astuti (petugas)', NULL, '{\"id\": 3, \"name\": \"Rika Astuti\", \"role\": \"petugas\", \"email\": \"isabell.schinner@example.net\", \"no_hp\": \"08204507841\", \"is_active\": true, \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(4, NULL, 'created', 'user', 4, 'Akun user baru dibuat: Dagel Rajata (petugas)', NULL, '{\"id\": 4, \"name\": \"Dagel Rajata\", \"role\": \"petugas\", \"email\": \"cristobal67@example.net\", \"no_hp\": \"08173288571\", \"is_active\": true, \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(5, NULL, 'created', 'user', 5, 'Akun user baru dibuat: Enteng Halim (petugas)', NULL, '{\"id\": 5, \"name\": \"Enteng Halim\", \"role\": \"petugas\", \"email\": \"erdman.johanna@example.org\", \"no_hp\": \"08136303181\", \"is_active\": true, \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(6, NULL, 'created', 'kamar', 1, 'Kamar baru ditambahkan: No. 101 (Lantai 1)', NULL, '{\"id\": 1, \"images\": \"[]\", \"lantai\": 1, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"101\", \"tipe_kamar_id\": 1}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(7, NULL, 'created', 'kamar', 2, 'Kamar baru ditambahkan: No. 102 (Lantai 1)', NULL, '{\"id\": 2, \"images\": \"[]\", \"lantai\": 1, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"102\", \"tipe_kamar_id\": 1}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(8, NULL, 'created', 'kamar', 3, 'Kamar baru ditambahkan: No. 103 (Lantai 1)', NULL, '{\"id\": 3, \"images\": \"[]\", \"lantai\": 1, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"103\", \"tipe_kamar_id\": 1}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(9, NULL, 'created', 'kamar', 4, 'Kamar baru ditambahkan: No. 104 (Lantai 1)', NULL, '{\"id\": 4, \"images\": \"[]\", \"lantai\": 1, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"104\", \"tipe_kamar_id\": 1}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(10, NULL, 'created', 'kamar', 5, 'Kamar baru ditambahkan: No. 201 (Lantai 2)', NULL, '{\"id\": 5, \"images\": \"[]\", \"lantai\": 2, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"201\", \"tipe_kamar_id\": 2}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(11, NULL, 'created', 'kamar', 6, 'Kamar baru ditambahkan: No. 202 (Lantai 2)', NULL, '{\"id\": 6, \"images\": \"[]\", \"lantai\": 2, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"202\", \"tipe_kamar_id\": 2}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(12, NULL, 'created', 'kamar', 7, 'Kamar baru ditambahkan: No. 203 (Lantai 2)', NULL, '{\"id\": 7, \"images\": \"[]\", \"lantai\": 2, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"203\", \"tipe_kamar_id\": 2}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(13, NULL, 'created', 'kamar', 8, 'Kamar baru ditambahkan: No. 204 (Lantai 2)', NULL, '{\"id\": 8, \"images\": \"[]\", \"lantai\": 2, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"204\", \"tipe_kamar_id\": 2}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(14, NULL, 'created', 'kamar', 9, 'Kamar baru ditambahkan: No. 301 (Lantai 3)', NULL, '{\"id\": 9, \"images\": \"[]\", \"lantai\": 3, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"301\", \"tipe_kamar_id\": 3}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(15, NULL, 'created', 'kamar', 10, 'Kamar baru ditambahkan: No. 302 (Lantai 3)', NULL, '{\"id\": 10, \"images\": \"[]\", \"lantai\": 3, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"302\", \"tipe_kamar_id\": 3}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(16, NULL, 'created', 'kamar', 11, 'Kamar baru ditambahkan: No. 303 (Lantai 3)', NULL, '{\"id\": 11, \"images\": \"[]\", \"lantai\": 3, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"303\", \"tipe_kamar_id\": 4}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(17, NULL, 'created', 'kamar', 12, 'Kamar baru ditambahkan: No. 304 (Lantai 3)', NULL, '{\"id\": 12, \"images\": \"[]\", \"lantai\": 3, \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:14:07\", \"keterangan\": \"Peti istirahat standar kastil, anti sinar matahari.\", \"updated_at\": \"2026-07-01 19:14:07\", \"nomor_kamar\": \"304\", \"tipe_kamar_id\": 4}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(18, NULL, 'created', 'tamu', 1, 'Data tamu baru didaftarkan: Budi Santoso (NIK: 3273010101900001)', NULL, '{\"id\": 1, \"nik\": \"3273010101900001\", \"email\": \"budi@email.com\", \"no_hp\": \"08123456001\", \"alamat\": \"Jl. Contoh Bandung\", \"pekerjaan\": \"Wiraswasta\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Budi Santoso\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1990-01-01 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(19, NULL, 'created', 'tamu', 2, 'Data tamu baru didaftarkan: Siti Rahayu (NIK: 3273020202920002)', NULL, '{\"id\": 2, \"nik\": \"3273020202920002\", \"email\": \"siti@email.com\", \"no_hp\": \"08123456002\", \"alamat\": \"Jl. Contoh Bandung\", \"pekerjaan\": \"Karyawan Swasta\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Siti Rahayu\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"1990-01-01 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(20, NULL, 'created', 'tamu', 3, 'Data tamu baru didaftarkan: Ahmad Fauzi (NIK: 3273030303880003)', NULL, '{\"id\": 3, \"nik\": \"3273030303880003\", \"email\": null, \"no_hp\": \"08123456003\", \"alamat\": \"Jl. Contoh Bandung\", \"pekerjaan\": \"PNS\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Ahmad Fauzi\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1990-01-01 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(21, NULL, 'created', 'tamu', 4, 'Data tamu baru didaftarkan: Dewi Lestari (NIK: 3273040404950004)', NULL, '{\"id\": 4, \"nik\": \"3273040404950004\", \"email\": \"dewi@email.com\", \"no_hp\": \"08123456004\", \"alamat\": \"Jl. Contoh Bandung\", \"pekerjaan\": \"Dokter\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Dewi Lestari\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"1990-01-01 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(22, NULL, 'created', 'tamu', 5, 'Data tamu baru didaftarkan: Rendi Pratama (NIK: 3273050505870005)', NULL, '{\"id\": 5, \"nik\": \"3273050505870005\", \"email\": \"rendi@email.com\", \"no_hp\": \"08123456005\", \"alamat\": \"Jl. Contoh Bandung\", \"pekerjaan\": \"Pedagang\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Rendi Pratama\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1990-01-01 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(23, NULL, 'created', 'tamu', 6, 'Data tamu baru didaftarkan: Karna Laksita (NIK: 5570910302191254)', NULL, '{\"id\": 6, \"nik\": \"5570910302191254\", \"email\": \"ybaumbach@example.com\", \"no_hp\": \"08796373007\", \"alamat\": \"Kpg. Gajah No. 56, Palembang 66583, Sulbar\", \"pekerjaan\": \"Karyawan Swasta\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Karna Laksita\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1969-09-14 00:00:00\", \"kewarganegaraan\": \"Singapura\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(24, NULL, 'created', 'tamu', 7, 'Data tamu baru didaftarkan: Ophelia Megantara (NIK: 7575491007198067)', NULL, '{\"id\": 7, \"nik\": \"7575491007198067\", \"email\": \"beulah.bruen@example.org\", \"no_hp\": \"08934955939\", \"alamat\": \"Jln. Baladewa No. 600, Lhokseumawe 77496, Jatim\", \"pekerjaan\": \"PNS\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Ophelia Megantara\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"1981-09-13 00:00:00\", \"kewarganegaraan\": \"Australia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(25, NULL, 'created', 'tamu', 8, 'Data tamu baru didaftarkan: Atma Utama (NIK: 9883701503195386)', NULL, '{\"id\": 8, \"nik\": \"9883701503195386\", \"email\": \"fheller@example.org\", \"no_hp\": \"08778306069\", \"alamat\": \"Gg. Sukabumi No. 685, Payakumbuh 21189, Jabar\", \"pekerjaan\": \"Wiraswasta\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Atma Utama\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1986-08-02 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(26, NULL, 'created', 'tamu', 9, 'Data tamu baru didaftarkan: Kamal Safitri (NIK: 0193392403191516)', NULL, '{\"id\": 9, \"nik\": \"0193392403191516\", \"email\": \"mitchell.bridget@example.com\", \"no_hp\": \"08944639331\", \"alamat\": \"Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 722, Samarinda 34930, Sulteng\", \"pekerjaan\": \"Guru\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Kamal Safitri\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1977-08-22 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(27, NULL, 'created', 'tamu', 10, 'Data tamu baru didaftarkan: Gambira Saefullah (NIK: 2107762609201849)', NULL, '{\"id\": 10, \"nik\": \"2107762609201849\", \"email\": \"imogene.muller@example.com\", \"no_hp\": \"08467788209\", \"alamat\": \"Kpg. Salak No. 92, Padangsidempuan 30973, Riau\", \"pekerjaan\": \"Karyawan Swasta\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Gambira Saefullah\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1977-02-28 00:00:00\", \"kewarganegaraan\": \"Belanda\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(28, NULL, 'created', 'tamu', 11, 'Data tamu baru didaftarkan: Rina Gunawan (NIK: 9628612812209073)', NULL, '{\"id\": 11, \"nik\": \"9628612812209073\", \"email\": null, \"no_hp\": \"08228825875\", \"alamat\": \"Gg. Antapani Lama No. 638, Ambon 19265, DKI\", \"pekerjaan\": \"Pedagang\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Rina Gunawan\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"2003-05-10 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(29, NULL, 'created', 'tamu', 12, 'Data tamu baru didaftarkan: Lanang Nuraini (NIK: 6296080808195695)', NULL, '{\"id\": 12, \"nik\": \"6296080808195695\", \"email\": \"clarissa.moore@example.net\", \"no_hp\": \"08847189145\", \"alamat\": \"Ds. Flores No. 32, Malang 49838, Kaltim\", \"pekerjaan\": \"Pedagang\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Lanang Nuraini\", \"jenis_kelamin\": \"L\", \"tanggal_lahir\": \"1983-01-25 00:00:00\", \"kewarganegaraan\": \"Singapura\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(30, NULL, 'created', 'tamu', 13, 'Data tamu baru didaftarkan: Lala Rahayu (NIK: 1615221808198428)', NULL, '{\"id\": 13, \"nik\": \"1615221808198428\", \"email\": null, \"no_hp\": \"08333415942\", \"alamat\": \"Psr. Bappenas No. 624, Kediri 78242, Sumbar\", \"pekerjaan\": \"Pengacara\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Lala Rahayu\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"1969-04-20 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(31, NULL, 'created', 'tamu', 14, 'Data tamu baru didaftarkan: Paramita Simbolon (NIK: 2821482406193735)', NULL, '{\"id\": 14, \"nik\": \"2821482406193735\", \"email\": null, \"no_hp\": \"08525020202\", \"alamat\": \"Dk. Supomo No. 531, Bontang 45749, Kalsel\", \"pekerjaan\": \"Ibu Rumah Tangga\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Paramita Simbolon\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"2002-03-20 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(32, NULL, 'created', 'tamu', 15, 'Data tamu baru didaftarkan: Siska Nashiruddin (NIK: 5030642901200528)', NULL, '{\"id\": 15, \"nik\": \"5030642901200528\", \"email\": \"kaleigh.ortiz@example.com\", \"no_hp\": \"08056119380\", \"alamat\": \"Kpg. PHH. Mustofa No. 972, Kediri 34185, Sumbar\", \"pekerjaan\": \"Ibu Rumah Tangga\", \"created_at\": \"2026-07-01 19:14:07\", \"updated_at\": \"2026-07-01 19:14:07\", \"nama_lengkap\": \"Siska Nashiruddin\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"2002-03-03 00:00:00\", \"kewarganegaraan\": \"Australia\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:07'),
(33, NULL, 'created', 'booking', 1, 'Booking baru dibuat: BK-20260701-0001 untuk tamu ID 1', NULL, '{\"id\": 1, \"status\": \"checkout\", \"tamu_id\": 1, \"user_id\": 2, \"uang_muka\": 315000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1050000, \"kode_booking\": \"BK-20260701-0001\", \"tanggal_checkin\": \"2026-06-21 00:00:00\", \"tanggal_checkout\": \"2026-06-24 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(34, NULL, 'created', 'booking', 2, 'Booking baru dibuat: BK-20260701-0002 untuk tamu ID 2', NULL, '{\"id\": 2, \"status\": \"checkin\", \"tamu_id\": 2, \"user_id\": 2, \"uang_muka\": 495000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1650000, \"kode_booking\": \"BK-20260701-0002\", \"tanggal_checkin\": \"2026-06-30 00:00:00\", \"tanggal_checkout\": \"2026-07-03 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(35, NULL, 'updated', 'kamar', 5, 'Status kamar 201 diubah menjadi \"ditempati\"', '{\"status\": \"tersedia\", \"updated_at\": \"2026-07-01T19:14:07.000000Z\"}', '{\"status\": \"ditempati\", \"updated_at\": \"2026-07-01 19:14:08\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(36, NULL, 'created', 'booking', 3, 'Booking baru dibuat: BK-20260701-0003 untuk tamu ID 3', NULL, '{\"id\": 3, \"status\": \"confirmed\", \"tamu_id\": 3, \"user_id\": 2, \"uang_muka\": 1080000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 3600000, \"kode_booking\": \"BK-20260701-0003\", \"tanggal_checkin\": \"2026-07-03 00:00:00\", \"tanggal_checkout\": \"2026-07-06 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(37, NULL, 'created', 'booking', 4, 'Booking baru dibuat: BK-20260701-0004 untuk tamu ID 4', NULL, '{\"id\": 4, \"status\": \"pending\", \"tamu_id\": 4, \"user_id\": 2, \"uang_muka\": 450000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1500000, \"kode_booking\": \"BK-20260701-0004\", \"tanggal_checkin\": \"2026-07-08 00:00:00\", \"tanggal_checkout\": \"2026-07-10 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(38, NULL, 'created', 'booking', 5, 'Booking baru dibuat: BK-20260701-0005 untuk tamu ID 5', NULL, '{\"id\": 5, \"status\": \"cancelled\", \"tamu_id\": 5, \"user_id\": 2, \"uang_muka\": 0, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 700000, \"kode_booking\": \"BK-20260701-0005\", \"tanggal_checkin\": \"2026-06-26 00:00:00\", \"tanggal_checkout\": \"2026-06-28 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(39, NULL, 'created', 'booking', 6, 'Booking baru dibuat: BK-20260701-0006 untuk tamu ID 5', NULL, '{\"id\": 6, \"status\": \"checkout\", \"tamu_id\": 5, \"user_id\": 2, \"uang_muka\": 330000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1100000, \"kode_booking\": \"BK-20260701-0006\", \"tanggal_checkin\": \"2026-05-21 00:00:00\", \"tanggal_checkout\": \"2026-05-23 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(40, NULL, 'created', 'booking', 7, 'Booking baru dibuat: BK-20260701-0007 untuk tamu ID 2', NULL, '{\"id\": 7, \"status\": \"checkout\", \"tamu_id\": 2, \"user_id\": 2, \"uang_muka\": 660000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 2200000, \"kode_booking\": \"BK-20260701-0007\", \"tanggal_checkin\": \"2026-03-22 00:00:00\", \"tanggal_checkout\": \"2026-03-26 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(41, NULL, 'created', 'booking', 8, 'Booking baru dibuat: BK-20260701-0008 untuk tamu ID 2', NULL, '{\"id\": 8, \"status\": \"checkout\", \"tamu_id\": 2, \"user_id\": 2, \"uang_muka\": 825000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 2750000, \"kode_booking\": \"BK-20260701-0008\", \"tanggal_checkin\": \"2026-04-29 00:00:00\", \"tanggal_checkout\": \"2026-05-04 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(42, NULL, 'created', 'booking', 9, 'Booking baru dibuat: BK-20260701-0009 untuk tamu ID 5', NULL, '{\"id\": 9, \"status\": \"checkout\", \"tamu_id\": 5, \"user_id\": 2, \"uang_muka\": 420000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1400000, \"kode_booking\": \"BK-20260701-0009\", \"tanggal_checkin\": \"2026-05-15 00:00:00\", \"tanggal_checkout\": \"2026-05-19 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(43, NULL, 'created', 'booking', 10, 'Booking baru dibuat: BK-20260701-0010 untuk tamu ID 2', NULL, '{\"id\": 10, \"status\": \"checkout\", \"tamu_id\": 2, \"user_id\": 2, \"uang_muka\": 450000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1500000, \"kode_booking\": \"BK-20260701-0010\", \"tanggal_checkin\": \"2026-03-31 00:00:00\", \"tanggal_checkout\": \"2026-04-02 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(44, NULL, 'created', 'booking', 11, 'Booking baru dibuat: BK-20260701-0011 untuk tamu ID 5', NULL, '{\"id\": 11, \"status\": \"checkout\", \"tamu_id\": 5, \"user_id\": 2, \"uang_muka\": 165000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 550000, \"kode_booking\": \"BK-20260701-0011\", \"tanggal_checkin\": \"2026-05-18 00:00:00\", \"tanggal_checkout\": \"2026-05-19 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(45, NULL, 'created', 'booking', 12, 'Booking baru dibuat: BK-20260701-0012 untuk tamu ID 4', NULL, '{\"id\": 12, \"status\": \"checkout\", \"tamu_id\": 4, \"user_id\": 2, \"uang_muka\": 660000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 2200000, \"kode_booking\": \"BK-20260701-0012\", \"tanggal_checkin\": \"2026-03-28 00:00:00\", \"tanggal_checkout\": \"2026-04-01 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(46, NULL, 'created', 'booking', 13, 'Booking baru dibuat: BK-20260701-0013 untuk tamu ID 5', NULL, '{\"id\": 13, \"status\": \"checkout\", \"tamu_id\": 5, \"user_id\": 2, \"uang_muka\": 1125000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 3750000, \"kode_booking\": \"BK-20260701-0013\", \"tanggal_checkin\": \"2026-03-13 00:00:00\", \"tanggal_checkout\": \"2026-03-18 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(47, NULL, 'created', 'booking', 14, 'Booking baru dibuat: BK-20260701-0014 untuk tamu ID 3', NULL, '{\"id\": 14, \"status\": \"checkout\", \"tamu_id\": 3, \"user_id\": 2, \"uang_muka\": 210000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 700000, \"kode_booking\": \"BK-20260701-0014\", \"tanggal_checkin\": \"2026-05-27 00:00:00\", \"tanggal_checkout\": \"2026-05-29 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(48, NULL, 'created', 'booking', 15, 'Booking baru dibuat: BK-20260701-0015 untuk tamu ID 1', NULL, '{\"id\": 15, \"status\": \"checkout\", \"tamu_id\": 1, \"user_id\": 2, \"uang_muka\": 495000, \"created_at\": \"2026-07-01 19:14:08\", \"updated_at\": \"2026-07-01 19:14:08\", \"jumlah_tamu\": 2, \"total_harga\": 1650000, \"kode_booking\": \"BK-20260701-0015\", \"tanggal_checkin\": \"2026-04-27 00:00:00\", \"tanggal_checkout\": \"2026-04-30 00:00:00\"}', '127.0.0.1', 'Symfony', '2026-07-01 12:14:08'),
(49, 1, 'created', 'user', 6, 'Akun user baru dibuat: Samara Buana Tungga (admin)', NULL, '{\"id\": 6, \"name\": \"Samara Buana Tungga\", \"role\": \"admin\", \"email\": \"samarabuanat@gmail.com\", \"created_at\": \"2026-07-01 19:16:28\", \"updated_at\": \"2026-07-01 19:16:28\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 12:16:28'),
(50, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 12:16:34'),
(51, 6, 'login', 'auth', 6, 'User \"Samara Buana Tungga\" berhasil login.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 12:17:21'),
(52, 6, 'created', 'kamar', 13, 'Kamar baru ditambahkan: No. 401 (Lantai 1)', NULL, '{\"id\": 13, \"images\": \"[]\", \"lantai\": \"1\", \"status\": \"tersedia\", \"created_at\": \"2026-07-01 19:20:18\", \"updated_at\": \"2026-07-01 19:20:18\", \"nomor_kamar\": \"401\", \"tipe_kamar_id\": \"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 12:20:18'),
(53, 6, 'updated', 'kamar', 13, 'Data kamar 401 diperbarui', '{\"lantai\": 1, \"updated_at\": \"2026-07-01T19:20:18.000000Z\"}', '{\"lantai\": \"4\", \"updated_at\": \"2026-07-01 19:20:36\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 12:20:36'),
(54, 6, 'login', 'auth', 6, 'User \"Samara Buana Tungga\" berhasil login.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 13:21:11'),
(55, 6, 'created', 'tamu', 16, 'Data tamu baru didaftarkan: Samara Buana Tungga (NIK: 3273010101900000)', NULL, '{\"id\": 16, \"nik\": \"3273010101900000\", \"email\": \"samarabuanat@gmail.com\", \"no_hp\": \"088229162240\", \"alamat\": \"jl\", \"pekerjaan\": null, \"created_at\": \"2026-07-01 20:22:22\", \"updated_at\": \"2026-07-01 20:22:22\", \"nama_lengkap\": \"Samara Buana Tungga\", \"jenis_kelamin\": \"P\", \"tanggal_lahir\": \"2004-07-31 00:00:00\", \"kewarganegaraan\": \"Indonesia\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 13:22:22'),
(56, 6, 'created', 'kamar', 14, 'Kamar baru ditambahkan: No. 402 (Lantai 4)', NULL, '{\"id\": 14, \"images\": \"[]\", \"lantai\": \"4\", \"status\": \"tersedia\", \"created_at\": \"2026-07-01 20:23:40\", \"keterangan\": null, \"updated_at\": \"2026-07-01 20:23:40\", \"nomor_kamar\": \"402\", \"tipe_kamar_id\": \"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 13:23:40'),
(57, 6, 'deleted', 'booking', 4, 'Status booking BK-20260701-0004 berubah dari \"pending\" menjadi \"cancelled\"', '{\"status\": \"pending\"}', '{\"status\": \"cancelled\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-01 13:25:29'),
(58, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.55.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 05:46:51'),
(59, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '114.79.55.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 06:30:56'),
(60, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.55.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 07:14:25'),
(61, 1, 'created', 'kamar', 15, 'Kamar baru ditambahkan: No. 404 (Lantai 4)', NULL, '{\"nomor_kamar\":\"404\",\"tipe_kamar_id\":\"3\",\"lantai\":\"4\",\"status\":\"tersedia\",\"keterangan\":null,\"images\":\"[\\\"kamar\\\\\\/pNQ0ZBTFaF9cC3JMKS2ZEWfkrBZJt4Wmv4ABDzt3.jpg\\\",\\\"kamar\\\\\\/4P0l3XD5XEnd2eRBbMLdfbdMICThFUgYl814NBiO.jpg\\\"]\",\"updated_at\":\"2026-07-06 15:09:40\",\"created_at\":\"2026-07-06 15:09:40\",\"id\":15}', '114.79.55.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 08:09:40'),
(62, 1, 'updated', 'kamar', 1, 'Data kamar 101 diperbarui', '{\"images\":[],\"updated_at\":\"2026-07-01T19:14:07.000000Z\"}', '{\"images\":\"[\\\"kamar\\\\\\/qHrNdzjIIIbQfWS1ejNcUW8SeIyuIa6YROZn45EB.jpg\\\"]\",\"updated_at\":\"2026-07-06 16:29:52\"}', '114.79.54.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 09:29:52'),
(63, 1, 'updated', 'kamar', 1, 'Data kamar 101 diperbarui', '{\"keterangan\":\"Peti istirahat standar kastil, anti sinar matahari.\",\"updated_at\":\"2026-07-06T16:29:52.000000Z\"}', '{\"keterangan\":null,\"updated_at\":\"2026-07-06 16:30:06\"}', '114.79.54.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 09:30:06'),
(64, 1, 'updated', 'kamar', 1, 'Data kamar 101 diperbarui', '{\"images\":[\"kamar\\/qHrNdzjIIIbQfWS1ejNcUW8SeIyuIa6YROZn45EB.jpg\"],\"updated_at\":\"2026-07-06T16:30:06.000000Z\"}', '{\"images\":\"[\\\"kamar\\\\\\/zjGXvHunI5b7TwGOWxtTzC2qIPBN5E8I5GfJh4gL.jpg\\\"]\",\"updated_at\":\"2026-07-06 16:34:47\"}', '114.79.54.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 09:34:47'),
(65, NULL, 'updated', 'user', 6, 'Data user Samara Buana Tungga diperbarui', '{\"google_id\":null,\"updated_at\":\"2026-07-01T19:16:28.000000Z\"}', '{\"google_id\":\"100396671660471256283\",\"updated_at\":\"2026-07-06 19:13:57\"}', '114.79.55.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 12:13:57'),
(66, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '113.11.180.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 22:53:28'),
(67, 1, 'created', 'booking', 16, 'Booking baru dibuat: BK-20260707-0001 untuk tamu ID 16', NULL, '{\"kode_booking\":\"BK-20260707-0001\",\"tamu_id\":\"16\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-07 00:00:00\",\"tanggal_checkout\":\"2026-07-08 00:00:00\",\"jumlah_tamu\":\"2\",\"status\":\"confirmed\",\"total_harga\":1200000,\"uang_muka\":\"300000\",\"catatan\":null,\"updated_at\":\"2026-07-07 05:54:02\",\"created_at\":\"2026-07-07 05:54:02\",\"id\":16}', '113.11.180.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 22:54:02'),
(68, 1, 'checkin', 'booking', 16, 'Status booking BK-20260707-0001 berubah dari \"confirmed\" menjadi \"checkin\"', '{\"status\":\"confirmed\"}', '{\"status\":\"checkin\"}', '113.11.180.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-06 22:54:29'),
(69, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.54.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:19:36'),
(70, 1, 'created', 'booking', 17, 'Booking baru dibuat: BK-20260707-0002 untuk tamu ID 16', NULL, '{\"kode_booking\":\"BK-20260707-0002\",\"tamu_id\":\"16\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-07 00:00:00\",\"tanggal_checkout\":\"2026-07-08 00:00:00\",\"jumlah_tamu\":\"2\",\"status\":\"confirmed\",\"total_harga\":550000,\"uang_muka\":\"250000\",\"catatan\":null,\"updated_at\":\"2026-07-07 12:20:05\",\"created_at\":\"2026-07-07 12:20:05\",\"id\":17}', '114.79.54.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:20:05'),
(71, 1, 'updated', 'tamu', 8, 'Data tamu Atma Utama diperbarui', '{\"email\":\"fheller@example.org\",\"no_hp\":\"08778306069\",\"updated_at\":\"2026-07-01T19:14:07.000000Z\"}', '{\"email\":\"samarabuanat@gmail.com\",\"no_hp\":\"088229162240\",\"updated_at\":\"2026-07-07 12:32:21\"}', '114.79.49.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:32:21'),
(72, 1, 'created', 'booking', 18, 'Booking baru dibuat: BK-20260707-0003 untuk tamu ID 8', NULL, '{\"kode_booking\":\"BK-20260707-0003\",\"tamu_id\":\"8\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-07 00:00:00\",\"tanggal_checkout\":\"2026-07-08 00:00:00\",\"jumlah_tamu\":\"1\",\"status\":\"confirmed\",\"total_harga\":550000,\"uang_muka\":\"200000\",\"catatan\":null,\"updated_at\":\"2026-07-07 12:32:42\",\"created_at\":\"2026-07-07 12:32:42\",\"id\":18}', '114.79.49.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:32:42'),
(73, 1, 'checkin', 'booking', 18, 'Status booking BK-20260707-0003 berubah dari \"confirmed\" menjadi \"checkin\"', '{\"status\":\"confirmed\"}', '{\"status\":\"checkin\"}', '114.79.49.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:32:57'),
(74, 1, 'checkout', 'booking', 18, 'Status booking BK-20260707-0003 berubah dari \"checkin\" menjadi \"checkout\"', '{\"status\":\"checkin\"}', '{\"status\":\"checkout\"}', '114.79.49.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 05:33:48'),
(75, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.49.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 10:35:59'),
(76, 1, 'deleted', 'activity_log', NULL, 'Menghapus 1 log lama (lebih dari 30 hari)', NULL, NULL, '114.79.54.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 10:44:24'),
(77, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '114.79.49.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:02:58'),
(78, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:32:57'),
(79, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:33:19'),
(80, 6, 'logout', 'auth', 6, 'User \"Samara Buana Tungga\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:34:23'),
(81, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:36:05'),
(82, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:36:25'),
(83, 6, 'logout', 'auth', 6, 'User \"Samara Buana Tungga\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:37:52'),
(84, 6, 'created', 'user', 7, 'Akun user baru dibuat: Samara Buana (petugas)', NULL, '{\"name\":\"Samara Buana\",\"email\":\"samarabuana@gmail.com\",\"role\":\"petugas\",\"updated_at\":\"2026-07-07 18:41:00\",\"created_at\":\"2026-07-07 18:41:00\",\"id\":7}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:41:00'),
(85, 6, 'logout', 'auth', 6, 'User \"Samara Buana Tungga\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:41:10'),
(86, NULL, 'updated', 'user', 7, 'Data user Samara Buana diperbarui', '{\"google_id\":null,\"updated_at\":\"2026-07-07T18:41:00.000000Z\"}', '{\"google_id\":\"106438452803922905830\",\"updated_at\":\"2026-07-07 18:41:21\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:41:21'),
(87, 7, 'logout', 'auth', 7, 'User \"Samara Buana\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:41:32'),
(88, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:41:43'),
(89, 1, 'created', 'tamu', 17, 'Data tamu baru didaftarkan: Anif Burhanudin (NIK: 2341526781927528)', NULL, '{\"nama_lengkap\":\"Anif Burhanudin\",\"nik\":\"2341526781927528\",\"email\":\"samarabuana@gmail.com\",\"no_hp\":\"088229162240\",\"jenis_kelamin\":\"L\",\"alamat\":\"Jalan Arhanudri 12b\",\"tanggal_lahir\":\"2002-07-08 00:00:00\",\"pekerjaan\":null,\"kewarganegaraan\":\"Indonesia\",\"updated_at\":\"2026-07-07 18:43:20\",\"created_at\":\"2026-07-07 18:43:20\",\"id\":17}', '114.79.55.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:43:20'),
(90, 1, 'created', 'kamar', 16, 'Kamar baru ditambahkan: No. 405 (Lantai 4)', NULL, '{\"nomor_kamar\":\"405\",\"tipe_kamar_id\":\"3\",\"lantai\":\"4\",\"status\":\"tersedia\",\"keterangan\":\"kamar mewah yang nyaman\",\"images\":\"[\\\"kamar\\\\\\/p3pJpBgnmcTFCkupWcdfFYXBgyRKVa9S7Yk3p8OJ.jpg\\\",\\\"kamar\\\\\\/HjnQAkbemVXdMenmx1KrddiJ9ghr47jHPc42YBf6.jpg\\\"]\",\"updated_at\":\"2026-07-07 18:44:45\",\"created_at\":\"2026-07-07 18:44:45\",\"id\":16}', '114.79.55.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:44:45'),
(91, 1, 'updated', 'kamar', 16, 'Data kamar 405 diperbarui', '{\"tipe_kamar_id\":3,\"updated_at\":\"2026-07-07T18:44:45.000000Z\"}', '{\"tipe_kamar_id\":\"4\",\"updated_at\":\"2026-07-07 18:45:31\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:45:31'),
(92, 1, 'created', 'tipe_kamar', 5, 'Tipe kamar baru ditambahkan: Imperial Suite', NULL, '{\"nama_tipe\":\"Imperial Suite\",\"harga_per_malam\":\"1500000\",\"kapasitas\":\"4\",\"deskripsi\":null,\"fasilitas\":\"[\\\"AC\\\",\\\"Bathtub\\\",\\\"Wi-Fi\\\"]\",\"updated_at\":\"2026-07-07 18:47:54\",\"created_at\":\"2026-07-07 18:47:54\",\"id\":5}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:47:54'),
(93, 1, 'updated', 'tipe_kamar', 5, 'Data tipe kamar Imperial Suite diperbarui', '{\"kapasitas\":4,\"updated_at\":\"2026-07-07T18:47:54.000000Z\"}', '{\"kapasitas\":\"2\",\"updated_at\":\"2026-07-07 18:48:19\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:48:19'),
(94, 1, 'deleted', 'tipe_kamar', 5, 'Tipe kamar Imperial Suite dihapus', '{\"id\":5,\"nama_tipe\":\"Imperial Suite\",\"deskripsi\":null,\"harga_per_malam\":\"1500000.00\",\"kapasitas\":2,\"fasilitas\":\"[\\\"AC\\\",\\\"Bathtub\\\",\\\"Wi-Fi\\\"]\",\"created_at\":\"2026-07-07 18:47:54\",\"updated_at\":\"2026-07-07 18:48:19\"}', NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:48:30'),
(95, 1, 'created', 'booking', 19, 'Booking baru dibuat: BK-20260707-0004 untuk tamu ID 17', NULL, '{\"kode_booking\":\"BK-20260707-0004\",\"tamu_id\":\"17\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-07 00:00:00\",\"tanggal_checkout\":\"2026-07-08 00:00:00\",\"jumlah_tamu\":\"2\",\"status\":\"confirmed\",\"total_harga\":550000,\"uang_muka\":\"200000\",\"catatan\":null,\"updated_at\":\"2026-07-07 18:52:22\",\"created_at\":\"2026-07-07 18:52:22\",\"id\":19}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:52:22'),
(96, 1, 'deleted', 'booking', 19, 'Status booking BK-20260707-0004 berubah dari \"confirmed\" menjadi \"cancelled\"', '{\"status\":\"confirmed\"}', '{\"status\":\"cancelled\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:53:59'),
(97, 1, 'deleted', 'booking', 19, 'Booking BK-20260707-0004 dihapus', '{\"id\":19,\"kode_booking\":\"BK-20260707-0004\",\"tamu_id\":17,\"user_id\":1,\"tanggal_checkin\":\"2026-07-07\",\"tanggal_checkout\":\"2026-07-08\",\"jumlah_tamu\":2,\"status\":\"cancelled\",\"total_harga\":\"550000.00\",\"uang_muka\":\"200000.00\",\"catatan\":null,\"created_at\":\"2026-07-07 18:52:22\",\"updated_at\":\"2026-07-07 18:53:59\"}', NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:54:04'),
(98, 1, 'created', 'booking', 20, 'Booking baru dibuat: BK-20260707-0004 untuk tamu ID 17', NULL, '{\"kode_booking\":\"BK-20260707-0004\",\"tamu_id\":\"17\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-07 00:00:00\",\"tanggal_checkout\":\"2026-07-08 00:00:00\",\"jumlah_tamu\":\"2\",\"status\":\"confirmed\",\"total_harga\":750000,\"uang_muka\":\"500000\",\"catatan\":null,\"updated_at\":\"2026-07-07 18:58:07\",\"created_at\":\"2026-07-07 18:58:07\",\"id\":20}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 11:58:07'),
(99, 1, 'checkin', 'booking', 20, 'Status booking BK-20260707-0004 berubah dari \"confirmed\" menjadi \"checkin\"', '{\"status\":\"confirmed\"}', '{\"status\":\"checkin\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:00:10'),
(100, 1, 'deleted', 'booking', 17, 'Status booking BK-20260707-0002 berubah dari \"confirmed\" menjadi \"cancelled\"', '{\"status\":\"confirmed\"}', '{\"status\":\"cancelled\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:00:49'),
(101, 1, 'deleted', 'booking', 17, 'Booking BK-20260707-0002 dihapus', '{\"id\":17,\"kode_booking\":\"BK-20260707-0002\",\"tamu_id\":16,\"user_id\":1,\"tanggal_checkin\":\"2026-07-07\",\"tanggal_checkout\":\"2026-07-08\",\"jumlah_tamu\":2,\"status\":\"cancelled\",\"total_harga\":\"550000.00\",\"uang_muka\":\"250000.00\",\"catatan\":null,\"created_at\":\"2026-07-07 12:20:05\",\"updated_at\":\"2026-07-07 19:00:49\"}', NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:01:16'),
(102, 1, 'checkout', 'booking', 20, 'Status booking BK-20260707-0004 berubah dari \"checkin\" menjadi \"checkout\"', '{\"status\":\"checkin\"}', '{\"status\":\"checkout\"}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:10:38'),
(103, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke PDF: Export activity log', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:14:47'),
(104, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke EXCEL: Export activity log', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:15:00'),
(105, 1, 'logout', 'auth', 1, 'User \"Super Admin\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:16:38'),
(106, 7, 'login', 'auth', 7, 'User \"Samara Buana\" berhasil login.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:16:48'),
(107, 7, 'logout', 'auth', 7, 'User \"Samara Buana\" logout.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:17:19'),
(108, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:20:34'),
(109, 1, 'created', 'user', 8, 'Akun user baru dibuat: test (petugas)', NULL, '{\"name\":\"test\",\"email\":\"tes@gmail.com\",\"role\":\"petugas\",\"updated_at\":\"2026-07-07 19:21:50\",\"created_at\":\"2026-07-07 19:21:50\",\"id\":8}', '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:21:50'),
(110, 1, 'deleted', 'user', 8, 'Akun user test dihapus', '{\"id\":8,\"name\":\"test\",\"email\":\"tes@gmail.com\",\"google_id\":null,\"role\":\"petugas\",\"no_hp\":null,\"is_active\":1,\"created_at\":\"2026-07-07 19:21:50\",\"updated_at\":\"2026-07-07 19:21:50\"}', NULL, '114.79.49.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-07 12:21:57'),
(111, 6, 'deleted', 'activity_log', NULL, 'Menghapus 0 log lama (lebih dari 30 hari)', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:42:22'),
(112, 6, 'exported', 'activity_log', NULL, 'Export data activity_log ke EXCEL: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:42:24'),
(113, 6, 'exported', 'activity_log', NULL, 'Export data activity_log ke PDF: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:42:25'),
(114, 6, 'logout', 'auth', 6, 'User \"Samara Buana Tungga\" logout.', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:51:51'),
(115, 2, 'login', 'auth', 2, 'User \"Petugas Front Desk\" berhasil login.', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:51:56'),
(116, 2, 'logout', 'auth', 2, 'User \"Petugas Front Desk\" logout.', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:52:07'),
(117, 1, 'login', 'auth', 1, 'User \"Super Admin\" berhasil login.', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 05:52:13'),
(118, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke EXCEL: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:00:35'),
(119, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke PDF: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:00:42'),
(120, 1, 'updated', 'tamu', 17, 'Data tamu Anif Burhanudin diperbarui', '{\"email\":\"samarabuana@gmail.com\",\"updated_at\":\"2026-07-07T18:43:20.000000Z\"}', '{\"email\":\"jamananip@gmail.com\",\"updated_at\":\"2026-07-08 13:06:57\"}', '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:06:57'),
(121, 1, 'created', 'booking', 21, 'Booking baru dibuat: BK-20260708-0001 untuk tamu ID 16', NULL, '{\"kode_booking\":\"BK-20260708-0001\",\"tamu_id\":\"16\",\"user_id\":1,\"tanggal_checkin\":\"2026-07-08 00:00:00\",\"tanggal_checkout\":\"2026-07-09 00:00:00\",\"jumlah_tamu\":\"4\",\"status\":\"confirmed\",\"total_harga\":2400000,\"uang_muka\":\"1000000\",\"catatan\":null,\"updated_at\":\"2026-07-08 13:13:23\",\"created_at\":\"2026-07-08 13:13:23\",\"id\":21}', '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:13:23'),
(122, 1, 'checkin', 'booking', 21, 'Status booking BK-20260708-0001 berubah dari \"confirmed\" menjadi \"checkin\"', '{\"status\":\"confirmed\"}', '{\"status\":\"checkin\"}', '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:13:45'),
(123, 1, 'checkout', 'booking', 21, 'Status booking BK-20260708-0001 berubah dari \"checkin\" menjadi \"checkout\"', '{\"status\":\"checkin\"}', '{\"status\":\"checkout\"}', '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:14:15'),
(124, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke EXCEL: Export activity log', NULL, NULL, '114.79.49.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:31:40');
INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `record_id`, `description`, `old_data`, `new_data`, `ip_address`, `user_agent`, `created_at`) VALUES
(125, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke PDF: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:35:59'),
(126, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke EXCEL: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:36:06'),
(127, 1, 'exported', 'activity_log', NULL, 'Export data activity_log ke PDF: Export activity log', NULL, NULL, '114.79.55.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', '2026-07-08 06:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_booking` varchar(20) NOT NULL,
  `tamu_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `jumlah_tamu` int(11) NOT NULL DEFAULT 1,
  `status` enum('pending','confirmed','checkin','checkout','cancelled') NOT NULL DEFAULT 'pending',
  `total_harga` decimal(12,2) NOT NULL DEFAULT 0.00,
  `uang_muka` decimal(12,2) NOT NULL DEFAULT 0.00,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `kode_booking`, `tamu_id`, `user_id`, `tanggal_checkin`, `tanggal_checkout`, `jumlah_tamu`, `status`, `total_harga`, `uang_muka`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 'BK-20260701-0001', 1, 2, '2026-06-21', '2026-06-24', 2, 'checkout', 1050000.00, 315000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(2, 'BK-20260701-0002', 2, 2, '2026-06-30', '2026-07-03', 2, 'checkin', 1650000.00, 495000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(3, 'BK-20260701-0003', 3, 2, '2026-07-03', '2026-07-06', 2, 'confirmed', 3600000.00, 1080000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(4, 'BK-20260701-0004', 4, 2, '2026-07-08', '2026-07-10', 2, 'cancelled', 1500000.00, 450000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 13:25:29'),
(5, 'BK-20260701-0005', 5, 2, '2026-06-26', '2026-06-28', 2, 'cancelled', 700000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(6, 'BK-20260701-0006', 5, 2, '2026-05-21', '2026-05-23', 2, 'checkout', 1100000.00, 330000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(7, 'BK-20260701-0007', 2, 2, '2026-03-22', '2026-03-26', 2, 'checkout', 2200000.00, 660000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(8, 'BK-20260701-0008', 2, 2, '2026-04-29', '2026-05-04', 2, 'checkout', 2750000.00, 825000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(9, 'BK-20260701-0009', 5, 2, '2026-05-15', '2026-05-19', 2, 'checkout', 1400000.00, 420000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(10, 'BK-20260701-0010', 2, 2, '2026-03-31', '2026-04-02', 2, 'checkout', 1500000.00, 450000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(11, 'BK-20260701-0011', 5, 2, '2026-05-18', '2026-05-19', 2, 'checkout', 550000.00, 165000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(12, 'BK-20260701-0012', 4, 2, '2026-03-28', '2026-04-01', 2, 'checkout', 2200000.00, 660000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(13, 'BK-20260701-0013', 5, 2, '2026-03-13', '2026-03-18', 2, 'checkout', 3750000.00, 1125000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(14, 'BK-20260701-0014', 3, 2, '2026-05-27', '2026-05-29', 2, 'checkout', 700000.00, 210000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(15, 'BK-20260701-0015', 1, 2, '2026-04-27', '2026-04-30', 2, 'checkout', 1650000.00, 495000.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(16, 'BK-20260707-0001', 16, 1, '2026-07-07', '2026-07-08', 2, 'checkin', 1200000.00, 300000.00, NULL, '2026-07-06 22:54:02', '2026-07-06 22:54:29'),
(18, 'BK-20260707-0003', 8, 1, '2026-07-07', '2026-07-08', 1, 'checkout', 550000.00, 200000.00, NULL, '2026-07-07 05:32:42', '2026-07-07 05:33:48'),
(20, 'BK-20260707-0004', 17, 1, '2026-07-07', '2026-07-08', 2, 'checkout', 750000.00, 500000.00, NULL, '2026-07-07 11:58:07', '2026-07-07 12:10:38'),
(21, 'BK-20260708-0001', 16, 1, '2026-07-08', '2026-07-09', 4, 'checkout', 2400000.00, 1000000.00, NULL, '2026-07-08 06:13:23', '2026-07-08 06:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `booking_kamar`
--

CREATE TABLE `booking_kamar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `harga_malam` decimal(10,2) NOT NULL,
  `jumlah_malam` int(11) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_kamar`
--

INSERT INTO `booking_kamar` (`id`, `booking_id`, `kamar_id`, `harga_malam`, `jumlah_malam`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 350000.00, 3, 1050000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(2, 2, 5, 550000.00, 3, 1650000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(3, 3, 9, 1200000.00, 3, 3600000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(4, 4, 11, 750000.00, 2, 1500000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(5, 5, 2, 350000.00, 2, 700000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(6, 6, 7, 550000.00, 2, 1100000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(7, 7, 6, 550000.00, 4, 2200000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(8, 8, 7, 550000.00, 5, 2750000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(9, 9, 2, 350000.00, 4, 1400000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(10, 10, 12, 750000.00, 2, 1500000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(11, 11, 6, 550000.00, 1, 550000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(12, 12, 6, 550000.00, 4, 2200000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(13, 13, 12, 750000.00, 5, 3750000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(14, 14, 2, 350000.00, 2, 700000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(15, 15, 6, 550000.00, 3, 1650000.00, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(16, 16, 14, 1200000.00, 1, 1200000.00, '2026-07-06 22:54:02', '2026-07-06 22:54:02'),
(18, 18, 6, 550000.00, 1, 550000.00, '2026-07-07 05:32:42', '2026-07-07 05:32:42'),
(20, 20, 16, 750000.00, 1, 750000.00, '2026-07-07 11:58:07', '2026-07-07 11:58:07'),
(21, 21, 13, 1200000.00, 1, 1200000.00, '2026-07-08 06:13:23', '2026-07-08 06:13:23'),
(22, 21, 14, 1200000.00, 1, 1200000.00, '2026-07-08 06:13:23', '2026-07-08 06:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `waktu_checkin` datetime NOT NULL,
  `no_identitas` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`id`, `booking_id`, `user_id`, `waktu_checkin`, `no_identitas`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2026-06-21 14:00:00', '3273010101900001', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(2, 2, 2, '2026-06-30 14:00:00', '3273020202920002', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(3, 6, 2, '2026-05-21 14:00:00', '3273050505870005', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(4, 7, 2, '2026-03-22 14:00:00', '3273020202920002', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(5, 8, 2, '2026-04-29 14:00:00', '3273020202920002', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(6, 9, 2, '2026-05-15 14:00:00', '3273050505870005', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(7, 10, 2, '2026-03-31 14:00:00', '3273020202920002', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(8, 11, 2, '2026-05-18 14:00:00', '3273050505870005', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(9, 12, 2, '2026-03-28 14:00:00', '3273040404950004', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(10, 13, 2, '2026-03-13 14:00:00', '3273050505870005', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(11, 14, 2, '2026-05-27 14:00:00', '3273030303880003', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(12, 15, 2, '2026-04-27 14:00:00', '3273010101900001', NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(13, 16, 1, '2026-07-07 05:54:29', NULL, NULL, '2026-07-06 22:54:29', '2026-07-06 22:54:29'),
(14, 18, 1, '2026-07-07 12:32:57', NULL, NULL, '2026-07-07 05:32:57', '2026-07-07 05:32:57'),
(15, 20, 1, '2026-07-07 19:00:10', NULL, NULL, '2026-07-07 12:00:10', '2026-07-07 12:00:10'),
(16, 21, 1, '2026-07-08 13:13:45', NULL, NULL, '2026-07-08 06:13:45', '2026-07-08 06:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `waktu_checkout` datetime NOT NULL,
  `total_tagihan` decimal(12,2) NOT NULL,
  `biaya_tambahan` decimal(10,2) NOT NULL DEFAULT 0.00,
  `keterangan_biaya` text DEFAULT NULL,
  `metode_pembayaran` enum('cash','transfer','kartu_kredit','debit') NOT NULL DEFAULT 'cash',
  `total_bayar` decimal(12,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL DEFAULT 0.00,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `booking_id`, `user_id`, `waktu_checkout`, `total_tagihan`, `biaya_tambahan`, `keterangan_biaya`, `metode_pembayaran`, `total_bayar`, `kembalian`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2026-06-24 12:00:00', 735000.00, 0.00, NULL, 'cash', 735000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(2, 6, 2, '2026-05-23 12:00:00', 770000.00, 0.00, NULL, 'cash', 770000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(3, 7, 2, '2026-03-26 12:00:00', 1540000.00, 0.00, NULL, 'cash', 1540000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(4, 8, 2, '2026-05-04 12:00:00', 1925000.00, 0.00, NULL, 'cash', 1925000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(5, 9, 2, '2026-05-19 12:00:00', 980000.00, 0.00, NULL, 'cash', 980000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(6, 10, 2, '2026-04-02 12:00:00', 1050000.00, 0.00, NULL, 'cash', 1050000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(7, 11, 2, '2026-05-19 12:00:00', 385000.00, 0.00, NULL, 'cash', 385000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(8, 12, 2, '2026-04-01 12:00:00', 1540000.00, 0.00, NULL, 'cash', 1540000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(9, 13, 2, '2026-03-18 12:00:00', 2625000.00, 0.00, NULL, 'cash', 2625000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(10, 14, 2, '2026-05-29 12:00:00', 490000.00, 0.00, NULL, 'cash', 490000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(11, 15, 2, '2026-04-30 12:00:00', 1155000.00, 0.00, NULL, 'cash', 1155000.00, 0.00, NULL, '2026-07-01 12:14:08', '2026-07-01 12:14:08'),
(12, 18, 1, '2026-07-07 12:33:48', 550000.00, 0.00, NULL, 'cash', 350000.00, 0.00, NULL, '2026-07-07 05:33:48', '2026-07-07 05:33:48'),
(13, 20, 1, '2026-07-07 19:10:38', 750000.00, 0.00, NULL, 'transfer', 250000.00, 0.00, NULL, '2026-07-07 12:10:38', '2026-07-07 12:10:38'),
(14, 21, 1, '2026-07-08 13:14:15', 2400000.00, 0.00, NULL, 'cash', 2000000.00, 600000.00, NULL, '2026-07-08 06:14:15', '2026-07-08 06:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_kamar` varchar(10) NOT NULL,
  `tipe_kamar_id` bigint(20) UNSIGNED NOT NULL,
  `lantai` int(11) NOT NULL,
  `status` enum('tersedia','ditempati','maintenance') NOT NULL DEFAULT 'tersedia',
  `keterangan` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id`, `nomor_kamar`, `tipe_kamar_id`, `lantai`, `status`, `keterangan`, `images`, `created_at`, `updated_at`) VALUES
(1, '101', 1, 1, 'tersedia', NULL, '[\"kamar\\/zjGXvHunI5b7TwGOWxtTzC2qIPBN5E8I5GfJh4gL.jpg\"]', '2026-07-01 12:14:07', '2026-07-06 09:34:47'),
(2, '102', 1, 1, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(3, '103', 1, 1, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(4, '104', 1, 1, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(5, '201', 2, 2, 'ditempati', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:08'),
(6, '202', 2, 2, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-07 11:53:59'),
(7, '203', 2, 2, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(8, '204', 2, 2, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-07 12:00:49'),
(9, '301', 3, 3, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(10, '302', 3, 3, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(11, '303', 4, 3, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 13:25:29'),
(12, '304', 4, 3, 'tersedia', 'Kamar istirahat.', '[]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(13, '401', 3, 4, 'tersedia', NULL, '[]', '2026-07-01 12:20:18', '2026-07-08 06:14:15'),
(14, '402', 3, 4, 'tersedia', NULL, '[]', '2026-07-01 13:23:40', '2026-07-08 06:14:15'),
(15, '404', 3, 4, 'tersedia', NULL, '[\"kamar\\/pNQ0ZBTFaF9cC3JMKS2ZEWfkrBZJt4Wmv4ABDzt3.jpg\",\"kamar\\/4P0l3XD5XEnd2eRBbMLdfbdMICThFUgYl814NBiO.jpg\"]', '2026-07-06 08:09:40', '2026-07-06 08:09:40'),
(16, '405', 4, 4, 'tersedia', 'kamar mewah yang nyaman', '[\"kamar\\/p3pJpBgnmcTFCkupWcdfFYXBgyRKVa9S7Yk3p8OJ.jpg\",\"kamar\\/HjnQAkbemVXdMenmx1KrddiJ9ghr47jHPc42YBf6.jpg\"]', '2026-07-07 11:44:45', '2026-07-07 12:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2026_06_28_152701_create_users_table', 1),
(4, '2026_06_28_152702_create_tipe_kamar_table', 1),
(5, '2026_06_28_152703_create_kamar_table', 1),
(6, '2026_06_28_152704_create_tamu_table', 1),
(7, '2026_06_28_152705_create_booking_table', 1),
(8, '2026_06_28_152706_create_booking_kamar_table', 1),
(9, '2026_06_28_152707_create_checkin_table', 1),
(10, '2026_06_28_152708_create_checkout_table', 1),
(11, '2026_06_28_152709_create_activity_logs_table', 1),
(12, '2026_06_28_152710_create_notifications_table', 1),
(13, '2026_06_28_152755_add_google_id_to_users_table', 1),
(14, '2026_07_01_174529_create_settings_table', 1),
(15, '2026_07_01_180426_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `group` varchar(255) NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `group`, `created_at`, `updated_at`) VALUES
(1, 'hotel_name', 'LuxeHotel Premium', 'general', '2026-07-06 05:48:23', '2026-07-06 05:48:23'),
(2, 'hotel_email', 'contact@luxehotel.com', 'general', '2026-07-06 05:48:23', '2026-07-06 05:48:23'),
(3, 'hotel_phone', '+62 882 2916 2240', 'general', '2026-07-06 05:48:23', '2026-07-06 05:48:32'),
(4, 'hotel_address', 'Jl. Kemewahan No. 1, Bandung', 'general', '2026-07-06 05:48:23', '2026-07-06 05:48:23'),
(5, 'fonnte_token', 'jEkuAEzC6R3sJqUphxQJ', 'general', '2026-07-06 05:48:23', '2026-07-07 05:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `kewarganegaraan` varchar(255) NOT NULL DEFAULT 'Indonesia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `nama_lengkap`, `nik`, `email`, `no_hp`, `alamat`, `jenis_kelamin`, `tanggal_lahir`, `pekerjaan`, `kewarganegaraan`, `created_at`, `updated_at`) VALUES
(1, 'Budi Santoso', '3273010101900001', 'budi@email.com', '08123456001', 'Jl. Contoh Bandung', 'L', '1990-01-01', 'Wiraswasta', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(2, 'Siti Rahayu', '3273020202920002', 'siti@email.com', '08123456002', 'Jl. Contoh Bandung', 'P', '1990-01-01', 'Karyawan Swasta', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(3, 'Ahmad Fauzi', '3273030303880003', NULL, '08123456003', 'Jl. Contoh Bandung', 'L', '1990-01-01', 'PNS', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(4, 'Dewi Lestari', '3273040404950004', 'dewi@email.com', '08123456004', 'Jl. Contoh Bandung', 'P', '1990-01-01', 'Dokter', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(5, 'Rendi Pratama', '3273050505870005', 'rendi@email.com', '08123456005', 'Jl. Contoh Bandung', 'L', '1990-01-01', 'Pedagang', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(6, 'Karna Laksita', '5570910302191254', 'ybaumbach@example.com', '08796373007', 'Kpg. Gajah No. 56, Palembang 66583, Sulbar', 'L', '1969-09-14', 'Karyawan Swasta', 'Singapura', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(7, 'Ophelia Megantara', '7575491007198067', 'beulah.bruen@example.org', '08934955939', 'Jln. Baladewa No. 600, Lhokseumawe 77496, Jatim', 'P', '1981-09-13', 'PNS', 'Australia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(8, 'Atma Utama', '9883701503195386', 'samarabuanat@gmail.com', '088229162240', 'Gg. Sukabumi No. 685, Payakumbuh 21189, Jabar', 'L', '1986-08-02', 'Wiraswasta', 'Indonesia', '2026-07-01 12:14:07', '2026-07-07 05:32:21'),
(9, 'Kamal Safitri', '0193392403191516', 'mitchell.bridget@example.com', '08944639331', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 722, Samarinda 34930, Sulteng', 'L', '1977-08-22', 'Guru', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(10, 'Gambira Saefullah', '2107762609201849', 'imogene.muller@example.com', '08467788209', 'Kpg. Salak No. 92, Padangsidempuan 30973, Riau', 'L', '1977-02-28', 'Karyawan Swasta', 'Belanda', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(11, 'Rina Gunawan', '9628612812209073', NULL, '08228825875', 'Gg. Antapani Lama No. 638, Ambon 19265, DKI', 'P', '2003-05-10', 'Pedagang', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(12, 'Lanang Nuraini', '6296080808195695', 'clarissa.moore@example.net', '08847189145', 'Ds. Flores No. 32, Malang 49838, Kaltim', 'L', '1983-01-25', 'Pedagang', 'Singapura', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(13, 'Lala Rahayu', '1615221808198428', NULL, '08333415942', 'Psr. Bappenas No. 624, Kediri 78242, Sumbar', 'P', '1969-04-20', 'Pengacara', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(14, 'Paramita Simbolon', '2821482406193735', NULL, '08525020202', 'Dk. Supomo No. 531, Bontang 45749, Kalsel', 'P', '2002-03-20', 'Ibu Rumah Tangga', 'Indonesia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(15, 'Siska Nashiruddin', '5030642901200528', 'kaleigh.ortiz@example.com', '08056119380', 'Kpg. PHH. Mustofa No. 972, Kediri 34185, Sumbar', 'P', '2002-03-03', 'Ibu Rumah Tangga', 'Australia', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(16, 'Samara Buana Tungga', '3273010101900000', 'samarabuanat@gmail.com', '088229162240', 'jl', 'P', '2004-07-31', NULL, 'Indonesia', '2026-07-01 13:22:22', '2026-07-01 13:22:22'),
(17, 'Anif Burhanudin', '2341526781927528', 'jamananip@gmail.com', '088229162240', 'Jalan Arhanudri 12b', 'L', '2002-07-08', NULL, 'Indonesia', '2026-07-07 11:43:20', '2026-07-08 06:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_tipe` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga_per_malam` decimal(10,2) NOT NULL,
  `kapasitas` int(11) NOT NULL DEFAULT 2,
  `fasilitas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fasilitas`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipe_kamar`
--

INSERT INTO `tipe_kamar` (`id`, `nama_tipe`, `deskripsi`, `harga_per_malam`, `kapasitas`, `fasilitas`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 'Kamar standar nyaman.', 350000.00, 2, '[\"AC\", \"TV\", \"WiFi\", \"Kamar Mandi\"]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(2, 'Deluxe', 'Kamar deluxe premium.', 550000.00, 2, '[\"AC\", \"TV 42\\\"\", \"WiFi\", \"Minibar\", \"Bathtub\", \"kursi\"]', '2026-07-01 12:14:07', '2026-07-01 13:24:12'),
(3, 'Suite', 'Kamar suite mewah.', 1200000.00, 4, '[\"AC\", \"TV 55\\\"\", \"WiFi\", \"Minibar\", \"Bathtub\", \"Ruang Tamu\"]', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(4, 'Family', 'Kamar keluarga luas.', 750000.00, 4, '[\"AC\", \"TV\", \"WiFi\", \"2 Tempat Tidur\", \"Sofa\"]', '2026-07-01 12:14:07', '2026-07-01 12:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `role` enum('admin','petugas') NOT NULL DEFAULT 'petugas',
  `no_hp` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `google_id`, `role`, `no_hp`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@hotel.com', '$2y$12$XR9u9q/71kM.P7VbnqoqTOC8U8dqS9885YDinjX5I.UaJGhxsNBwm', NULL, 'admin', '081234567890', 1, NULL, '2026-07-01 12:14:06', '2026-07-01 12:14:06'),
(2, 'Petugas Front Desk', 'petugas@hotel.com', '$2y$12$nlHlO9svf/LligE5dqW5f.czNGlK8I4Q7rMR3J0mQ8p35MqangHni', NULL, 'petugas', '081234567891', 1, NULL, '2026-07-01 12:14:06', '2026-07-01 12:14:06'),
(3, 'Rika Astuti', 'isabell.schinner@example.net', '$2y$12$S9yHQk.pPyBYw9shmmHHL.ym0zy7Wx4hFdk.cRNDrD2AzDNesJc5O', NULL, 'petugas', '08204507841', 1, 'epN7ClZOem', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(4, 'Dagel Rajata', 'cristobal67@example.net', '$2y$12$5G2A2C4PkhwiSfWreZpg8.s0HDBAJ.BEP1SD9JtEttViKJoqZlDQu', NULL, 'petugas', '08173288571', 1, 'izqMC8gfF9', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(5, 'Enteng Halim', 'erdman.johanna@example.org', '$2y$12$.mtf14Edrt1o6.7a7O3Z/.wfm./kBYXOTcA5269ZY193aGx/HpXDG', NULL, 'petugas', '08136303181', 1, 'H9XXvbqKBF', '2026-07-01 12:14:07', '2026-07-01 12:14:07'),
(6, 'Samara Buana Tungga', 'samarabuanat@gmail.com', '$2y$12$dJFBT.FIm/kz.6nngMn76./mi9Z3CgBTrM.6/paMSPaNtUlPef0RG', '100396671660471256283', 'admin', NULL, 1, NULL, '2026-07-01 12:16:28', '2026-07-06 12:13:57'),
(7, 'Samara Buana', 'samarabuana@gmail.com', '$2y$12$IazS4KCaRmUI6CshZZyxcOGGWHhWNq9U1p1OPeB0C3ASCM8xX1JOq', '106438452803922905830', 'petugas', NULL, 1, NULL, '2026-07-07 11:41:00', '2026-07-07 11:41:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `activity_logs_module_action_index` (`module`,`action`),
  ADD KEY `activity_logs_created_at_index` (`created_at`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_kode_booking_unique` (`kode_booking`),
  ADD KEY `booking_tamu_id_foreign` (`tamu_id`),
  ADD KEY `booking_user_id_foreign` (`user_id`);

--
-- Indexes for table `booking_kamar`
--
ALTER TABLE `booking_kamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_kamar_booking_id_kamar_id_unique` (`booking_id`,`kamar_id`),
  ADD KEY `booking_kamar_kamar_id_foreign` (`kamar_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkin_booking_id_unique` (`booking_id`),
  ADD KEY `checkin_user_id_foreign` (`user_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkout_booking_id_unique` (`booking_id`),
  ADD KEY `checkout_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kamar_nomor_kamar_unique` (`nomor_kamar`),
  ADD KEY `kamar_tipe_kamar_id_foreign` (`tipe_kamar_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tamu_nik_unique` (`nik`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking_kamar`
--
ALTER TABLE `booking_kamar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_tamu_id_foreign` FOREIGN KEY (`tamu_id`) REFERENCES `tamu` (`id`),
  ADD CONSTRAINT `booking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `booking_kamar`
--
ALTER TABLE `booking_kamar`
  ADD CONSTRAINT `booking_kamar_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_kamar_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`id`);

--
-- Constraints for table `checkin`
--
ALTER TABLE `checkin`
  ADD CONSTRAINT `checkin_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `checkin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `checkout_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_tipe_kamar_id_foreign` FOREIGN KEY (`tipe_kamar_id`) REFERENCES `tipe_kamar` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
