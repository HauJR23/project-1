-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2025 at 03:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da1n1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` int NOT NULL,
  `id_dh` int DEFAULT NULL,
  `id_ct_sp` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `don_gia` decimal(10,2) DEFAULT NULL,
  `thanh_tien` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `id_dh`, `id_ct_sp`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 1, 3, '250000.00', '750000.00'),
(2, 2, 3, 1, '500000.00', '500000.00'),
(3, 3, 3, 1, '500000.00', '500000.00'),
(4, 4, 1, 4, '250000.00', '1000000.00'),
(5, 5, 2, 1, '250000.00', '250000.00'),
(6, 6, 3, 1, '500000.00', '500000.00'),
(7, 7, 3, 2, '500000.00', '1000000.00'),
(8, 8, 1, 2, '250000.00', '500000.00'),
(9, 8, 3, 1, '500000.00', '500000.00'),
(10, 9, 2, 1, '250000.00', '250000.00'),
(11, 9, 3, 1, '500000.00', '500000.00'),
(12, 10, 2, 3, '250000.00', '750000.00'),
(13, 11, 6, 2, '320000.00', '640000.00'),
(14, 11, 15, 1, '430000.00', '430000.00'),
(15, 11, 3, 1, '500000.00', '500000.00'),
(16, 12, 3, 1, '500000.00', '500000.00'),
(17, 13, 3, 1, '500000.00', '500000.00'),
(18, 14, 3, 1, '500000.00', '555000.00'),
(19, 15, 1, 1, '250000.00', '300000.00'),
(20, 16, 12, 2, '430000.00', '922200.00'),
(21, 17, 12, 2, '430000.00', '1942200.00'),
(22, 17, 3, 2, '500000.00', '1942200.00'),
(23, 18, 3, 1, '500000.00', '500000.00'),
(24, 18, 1, 2, '250000.00', '500000.00'),
(25, 19, 3, 1, '500000.00', '500000.00'),
(26, 20, 3, 4, '500000.00', '2000000.00'),
(27, 21, 3, 4, '500000.00', '2000000.00'),
(28, 22, 3, 4, '500000.00', '2000000.00'),
(29, 23, 1, 4, '250000.00', '1000000.00'),
(30, 24, 3, 2, '500000.00', '1000000.00'),
(31, 25, 1, 1, '250000.00', '250000.00'),
(32, 26, 1, 1, '250000.00', '250000.00'),
(33, 27, 3, 2, '500000.00', '1000000.00'),
(34, 28, 3, 3, '500000.00', '1500000.00'),
(35, 29, 6, 3, '320000.00', '960000.00'),
(36, 30, 12, 2, '430000.00', '860000.00'),
(37, 31, 15, 1, '430000.00', '430000.00'),
(38, 32, 3, 1, '500000.00', '500000.00'),
(39, 33, 3, 1, '500000.00', '500000.00'),
(40, 34, 3, 1, '500000.00', '500000.00'),
(41, 35, 3, 1, '500000.00', '500000.00'),
(42, 36, 3, 1, '500000.00', '500000.00'),
(43, 37, 3, 1, '500000.00', '500000.00'),
(44, 38, 84, 2, '430000.00', '860000.00'),
(45, 39, 80, 1, '1300000.00', '1300000.00'),
(46, 40, 88, 2, '230000.00', '2400000.00'),
(47, 40, 64, 2, '1200000.00', '2400000.00'),
(48, 41, 84, 1, '430000.00', '430000.00');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_sp`
--

CREATE TABLE `chi_tiet_sp` (
  `id` int NOT NULL,
  `id_sp` int DEFAULT NULL,
  `id_mau` int DEFAULT NULL,
  `id_kich_co` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `don_gia` int NOT NULL,
  `gia_km` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chi_tiet_sp`
--

INSERT INTO `chi_tiet_sp` (`id`, `id_sp`, `id_mau`, `id_kich_co`, `so_luong`, `don_gia`, `gia_km`) VALUES
(1, 1, 4, 2, 13, 250000, 199000),
(2, 1, 1, 2, 20, 250000, 199000),
(3, 2, 1, 1, 102, 500000, 399000),
(6, 4, 5, 3, 0, 320000, 180000),
(7, 4, 4, 2, 4, 320000, 180000),
(8, 4, 3, 1, 5, 320000, 180000),
(9, 4, 2, 4, 4, 320000, 180000),
(10, 4, 2, 5, 3, 320000, 180000),
(11, 4, 1, 3, 8, 320000, 180000),
(12, 5, 5, 3, 7, 430000, 320000),
(13, 5, 2, 2, 4, 430000, 320000),
(14, 5, 1, 4, 3, 430000, 320000),
(15, 5, 4, 1, 5, 430000, 320000),
(16, 5, 3, 4, 7, 430000, 320000),
(17, 6, 5, 3, 6, 1000000, 900000),
(18, 6, 4, 2, 4, 1000000, 800000),
(21, 8, 5, 3, 3, 300000, 280000),
(22, 8, 3, 1, 7, 300000, 280000),
(23, 8, 2, 2, 6, 300000, 280000),
(24, 9, 5, 3, 7, 600000, 450000),
(25, 9, 4, 2, 4, 600000, 450000),
(26, 9, 3, 1, 5, 600000, 450000),
(27, 10, 5, 3, 5, 220000, 200000),
(28, 10, 4, 2, 3, 220000, 200000),
(29, 10, 3, 1, 6, 220000, 200000),
(30, 10, 1, 4, 7, 220000, 200000),
(31, 11, 5, 4, 6, 350000, 280000),
(32, 11, 4, 1, 4, 350000, 280000),
(33, 11, 3, 2, 6, 350000, 280000),
(34, 11, 1, 3, 8, 350000, 280000),
(35, 12, 5, 3, 5, 430000, 360000),
(36, 12, 4, 2, 3, 430000, 360000),
(37, 12, 3, 1, 5, 430000, 360000),
(38, 12, 1, 4, 7, 430000, 360000),
(39, 12, 2, 5, 7, 430000, 360000),
(40, 13, 5, 2, 12, 750000, 640000),
(41, 13, 4, 3, 4, 750000, 640000),
(42, 13, 3, 1, 5, 750000, 640000),
(43, 13, 1, 4, 4, 750000, 640000),
(44, 14, 5, 3, 5, 330000, 210000),
(45, 14, 4, 2, 5, 330000, 210000),
(46, 14, 4, 1, 4, 330000, 210000),
(47, 14, 3, 4, 5, 330000, 210000),
(48, 15, 5, 3, 5, 750000, 630000),
(49, 15, 4, 2, 6, 750000, 630000),
(50, 15, 3, 1, 4, 750000, 630000),
(51, 15, 1, 4, 2, 750000, 630000),
(52, 16, 5, 3, 2, 270000, 210000),
(53, 16, 4, 2, 4, 270000, 210000),
(54, 16, 3, 1, 5, 270000, 210000),
(55, 16, 1, 4, 6, 270000, 210000),
(56, 17, 5, 3, 5, 320000, 219000),
(57, 17, 4, 2, 4, 320000, 219000),
(58, 17, 3, 1, 3, 320000, 219000),
(59, 17, 2, 4, 6, 320000, 219000),
(60, 18, 5, 3, 3, 220000, 140000),
(61, 18, 4, 2, 2, 220000, 140000),
(62, 18, 3, 1, 5, 220000, 140000),
(63, 18, 2, 4, 34, 220000, 140000),
(64, 19, 5, 3, 7, 1200000, 980000),
(65, 19, 4, 2, 6, 1200000, 980000),
(66, 19, 3, 1, 4, 1200000, 980000),
(67, 19, 2, 4, 4, 1200000, 980000),
(68, 20, 5, 3, 6, 189000, 129000),
(69, 20, 4, 2, 5, 189000, 129000),
(70, 20, 3, 1, 4, 189000, 129000),
(71, 20, 3, 4, 5, 189000, 129000),
(72, 21, 5, 2, 6, 460000, 380000),
(73, 21, 4, 3, 6, 460000, 380000),
(74, 21, 3, 4, 3, 460000, 380000),
(75, 22, 5, 3, 5, 540000, 430000),
(76, 22, 4, 2, 4, 540000, 430000),
(77, 22, 3, 1, 3, 540000, 430000),
(78, 22, 1, 4, 4, 540000, 430000),
(79, 22, 2, 5, 5, 540000, 430000),
(80, 23, 5, 3, 6, 1300000, 980000),
(81, 23, 4, 2, 4, 1300000, 980000),
(82, 23, 3, 1, 7, 1300000, 980000),
(83, 23, 1, 4, 3, 1300000, 980000),
(84, 24, 5, 3, 6, 430000, 390000),
(85, 24, 4, 2, 5, 430000, 390000),
(86, 24, 3, 1, 5, 430000, 390000),
(87, 24, 1, 4, 6, 430000, 390000),
(88, 25, 5, 3, 5, 230000, 190000),
(89, 25, 4, 2, 3, 230000, 190000),
(90, 25, 2, 4, 6, 230000, 190000),
(91, 25, 1, 1, 3, 230000, 190000);

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int NOT NULL,
  `ten_dm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mo_ta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_dm`, `mo_ta`) VALUES
(33, 'Thời Trang Nam', 'Quần áo nam nhà ZENCA'),
(34, 'Thời Trang Nữ', 'Quần áo nữ nhà ZENCA'),
(37, 'Áo Thun Nam', 'Các mẫu áo thun nam thời trang, năng động, phù hợp đi học, đi chơi và hoạt động thường ngày.'),
(38, 'Áo Sơ Mi Nữ', 'Áo sơ mi dành cho nữ công sở hoặc đi chơi, thiết kế thanh lịch, chất liệu mát mẻ.\r\n\r\n'),
(39, 'Quần Jean Nam', 'Tổng hợp các mẫu quần jean nam với nhiều kiểu dáng từ skinny đến baggy, bền bỉ và thời trang.'),
(40, 'Đầm Dự Tiệc', 'Các mẫu váy đầm sang trọng, tinh tế, thích hợp cho các buổi tiệc hoặc sự kiện đặc biệt.'),
(41, 'Quần Short Nữ', 'Quần short nữ trẻ trung, thoải mái, thích hợp mặc hàng ngày hoặc đi du lịch.'),
(42, 'Váy Công Sở', 'Các mẫu váy phù hợp môi trường văn phòng, thiết kế gọn gàng, chuyên nghiệp.'),
(43, 'Thời Trang Trẻ Em', 'hời Trang Trẻ Em\r\nTrang phục dành cho trẻ em từ 2–12 tuổi, nhiều màu sắc, kiểu dáng dễ thương và an toàn.'),
(44, 'Set Đồ Nữ Cá Tính', 'Trang phục thời trang dành cho người có thân hình ngoại cỡ, đảm bảo vừa vặn và thoải mái.'),
(45, 'Áo Croptop Nữ', 'Áo croptop trẻ trung, cá tính, tôn dáng, thích hợp phối đồ đi chơi, du lịch.'),
(46, 'Áo Hoodie Nữ', 'Áo hoodie ấm áp, phù hợp cho mùa đông hoặc phối đồ phong cách Hàn Quốc.'),
(47, 'Thời Trang Big Size', 'Trang phục thời trang dành cho người có thân hình ngoại cỡ, đảm bảo vừa vặn và thoải mái.'),
(48, 'Quần Tây Nam', 'Quần tây lịch lãm, chuyên nghiệp, thường mặc trong môi trường công sở hoặc đi họp.');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int NOT NULL,
  `id_tai_khoan` int DEFAULT NULL,
  `ngay_dat` date DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tong_tien` decimal(10,2) DEFAULT NULL,
  `id_pt_van_chuyen` int DEFAULT NULL,
  `id_km` int DEFAULT NULL,
  `ghi_chu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id_pt_thanh_toan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id`, `id_tai_khoan`, `ngay_dat`, `trang_thai`, `dia_chi`, `so_dien_thoai`, `tong_tien`, `id_pt_van_chuyen`, `id_km`, `ghi_chu`, `id_pt_thanh_toan`) VALUES
(1, 11, '2025-04-13', 2, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '795000.00', 1, NULL, NULL, 1),
(2, 11, '2025-04-13', 5, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '540000.00', 1, NULL, NULL, 1),
(3, 11, '2025-04-13', 4, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '540000.00', 1, NULL, NULL, 1),
(4, 11, '2025-04-14', 5, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '1050000.00', 1, NULL, NULL, 3),
(5, 11, '2025-04-14', 0, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '285000.00', 1, NULL, NULL, 3),
(6, 11, '2025-04-14', 0, 'Nguyễn Thái Hoàng, Hà Tĩnh, 0912345678', '0912345678', '540000.00', 1, NULL, NULL, 1),
(7, 13, '2025-04-15', 0, 'van ban, thai binh, 0865763082', '0865763082', '1050000.00', 1, NULL, NULL, 1),
(8, 13, '2025-04-15', 0, 'van ban, thai binh, 0865763082', '0865763082', '1050000.00', 1, NULL, NULL, 1),
(9, 13, '2025-04-15', 0, 'van ban, thai binh, 0865763082', '0865763082', '795000.00', 1, NULL, NULL, 1),
(10, 6, '2025-04-15', 0, 'admin3, ha noi, 0865763081', '0865763081', '795000.00', 1, NULL, NULL, 1),
(11, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '1631400.00', 2, NULL, NULL, 1),
(12, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '540000.00', 2, NULL, NULL, 1),
(13, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '555000.00', 2, NULL, NULL, 1),
(14, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '555000.00', 2, NULL, NULL, 1),
(15, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '300000.00', 2, NULL, NULL, 1),
(16, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '922200.00', 2, NULL, NULL, 1),
(17, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '1942200.00', 2, NULL, NULL, 1),
(18, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '1065000.00', 2, NULL, NULL, 1),
(19, 6, '2025-04-15', 0, 'admin3, thai binh, 0865763082', '0865763082', '555000.00', 2, NULL, NULL, 1),
(20, 6, '2025-04-16', 0, 'admin3, thai binh, 0865763082', '0865763082', '2070000.00', 1, 15, NULL, 1),
(21, 6, '2025-04-16', 0, 'admin3, thai binh, 0865763082', '0865763082', '2100000.00', 2, 15, NULL, 1),
(22, 6, '2025-04-16', 0, 'admin3, thai binh, 0865763082', '0865763082', '2070000.00', 2, 15, NULL, 1),
(23, 6, '2025-04-16', 2, 'admin3, thai binh, 0865763082', '0865763082', '1050000.00', 1, 16, NULL, 1),
(24, 6, '2025-04-16', 0, 'admin3, thai binh, 0865763082', '0865763082', '950000.00', 1, 16, NULL, 1),
(25, 6, '2025-04-16', 6, 'admin3, thai binh, 0865763082', '0865763082', '200000.00', 2, 16, NULL, 1),
(26, 6, '2025-04-16', 2, 'admin3, thai binh, 0865763082', '0865763082', '200000.00', 2, 16, NULL, 1),
(27, 6, '2025-04-16', 1, 'admin3, thai binh, 0865763082', '0865763082', '950000.00', 1, 16, NULL, 3),
(28, 6, '2025-04-19', 6, 'admin3, thai binh, 0865763082', '0865763082', '1460000.00', 1, 16, NULL, 3),
(29, 6, '2025-04-19', 4, 'admin3, thai binh, 0865763082', '0865763082', '909200.00', 1, 16, NULL, 1),
(30, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '807200.00', 1, 16, NULL, 1),
(31, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '468600.00', 1, NULL, NULL, 1),
(32, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '540000.00', 1, NULL, NULL, 1),
(33, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '440000.00', 1, 16, NULL, 1),
(34, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '440000.00', 1, 16, NULL, 1),
(35, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '440000.00', 1, 16, NULL, 1),
(36, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '440000.00', 1, 16, NULL, 1),
(37, 6, '2025-04-19', 0, 'admin3, thai binh, 0865763082', '0865763082', '540000.00', 1, NULL, NULL, 1),
(38, 6, '2025-04-20', 6, 'admin3, thai binh, 0865763082', '0865763082', '822200.00', 2, 16, NULL, 1),
(39, 6, '2025-04-20', 6, 'admin3, thai binh, 0865763082', '0865763082', '1355988.00', 1, 17, NULL, 1),
(40, 6, '2025-04-20', 0, 'admin3, thai, 0865763082', '0865763082', '2947200.00', 1, NULL, NULL, 1),
(41, 6, '2025-04-20', 0, 'admin3, thai, 0865763082', '0865763082', '468600.00', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` int NOT NULL,
  `id_tai_khoan` int DEFAULT NULL,
  `id_ct_sp` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `id_tai_khoan`, `id_ct_sp`, `so_luong`) VALUES
(63, 6, 88, 5),
(64, 6, 80, 6);

-- --------------------------------------------------------

--
-- Table structure for table `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `id` int NOT NULL,
  `ten_km` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ma_km` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `loai_km` tinyint(1) DEFAULT NULL,
  `so_tien_giam` decimal(10,2) DEFAULT '0.00',
  `don_toi_thieu` decimal(10,2) DEFAULT '0.00',
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`id`, `ten_km`, `ma_km`, `loai_km`, `so_tien_giam`, `don_toi_thieu`, `ngay_bat_dau`, `ngay_ket_thuc`, `trang_thai`) VALUES
(15, 'Giảm giá 200K', 'GIAM200K', 1, '15000.00', '1500000.00', '2025-04-10', '2025-04-20', 1),
(16, 'Mã 1', '123123', 1, '100000.00', '10000.00', '2025-04-13', '2025-05-11', 1),
(17, 'ban', 'FLASH12', 1, '12.00', '12232.00', '2025-04-03', '2025-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kich_co`
--

CREATE TABLE `kich_co` (
  `id` int NOT NULL,
  `ten_kich_co` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kich_co`
--

INSERT INTO `kich_co` (`id`, `ten_kich_co`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `so_dien_thoai` int NOT NULL,
  `noi_dung` text NOT NULL,
  `chu_de` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`id`, `ten`, `email`, `so_dien_thoai`, `noi_dung`, `chu_de`) VALUES
(1, 'admin3', 'banvvph51383@gmail.com', 865763082, '1vsaducv', '123'),
(2, 'admin3', 'banvvph51383@gmail.com', 865763082, '1vsaducv', '123'),
(3, 'admin3', 'banvvph51383@gmail.com', 865763082, '1vsaducv', '123'),
(4, 'admin3', 'admin@123', 865763082, '12346', '123'),
(5, 'admin3', 'hsbafiw09@gmail.com', 865763082, '1wdqdsdsdsdadsda', '123'),
(6, 'admin3', 'hsbafiw09@gmail.com', 865763082, '1wdqdsdsdsdadsda', '123'),
(7, 'admin3', 'hsbafiw09@gmail.com', 865763082, '1wdqdsdsdsdadsda', '123'),
(8, 'admin3', 'banvvph51383@gmail.com', 865763082, '12345', '123'),
(9, 'admin2', 'q@h.c', 865763082, '111111', '1111'),
(10, 'admin2', 'q@h.c', 865763082, '111111', '1111'),
(11, 'admin2', 'q@h.c', 865763082, '111111', '1111'),
(12, 'sasda', 'q@h.c', 865763022, '22222', '2222'),
(13, 'admin3', 'banvvph51383@gmail.com', 865763082, '3333', '333'),
(14, 'bannnn', 'banvvph51383@gmail.com', 865763082, '444444', '4444'),
(15, 'admin3', 'banvvph51383@gmail.com', 865763082, '12232323', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `mau_sac`
--

CREATE TABLE `mau_sac` (
  `id` int NOT NULL,
  `ten_mau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mau_sac`
--

INSERT INTO `mau_sac` (`id`, `ten_mau`) VALUES
(1, 'Đen'),
(2, 'Xanh lá'),
(3, 'Vàng'),
(4, 'Trắng'),
(5, 'Nâu');

-- --------------------------------------------------------

--
-- Table structure for table `pt_thanh_toan`
--

CREATE TABLE `pt_thanh_toan` (
  `id` int NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pt_thanh_toan`
--

INSERT INTO `pt_thanh_toan` (`id`, `name`) VALUES
(1, 'Thanh toán khi nhận hàng (COD)'),
(3, 'Ví điện tử (VNPay)');

-- --------------------------------------------------------

--
-- Table structure for table `pt_van_chuyen`
--

CREATE TABLE `pt_van_chuyen` (
  `id` int NOT NULL,
  `phuong_thuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pt_van_chuyen`
--

INSERT INTO `pt_van_chuyen` (`id`, `phuong_thuc`, `gia`) VALUES
(1, 'Giao hàng tiêu chuẩn', 30000),
(2, 'Giao hàng nhanh', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int NOT NULL,
  `ten_sp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_dm` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `mo_ta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hinh_anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten_sp`, `id_dm`, `so_luong`, `mo_ta`, `hinh_anh`, `trang_thai`) VALUES
(1, 'Áo Len Nhung Tăm', 34, 32, 'Áo Len Nhung Tăm', '1744553148_1.jpg', 1),
(2, 'Áo Phao Bóng Chày', 33, 100, 'Áo phao bóng chày nhà zenca', '1744553281_9.jpg', 1),
(4, 'Áo thun tay cộc ', 34, 27, 'Quần short nữ trẻ trung, thoải mái, thích hợp mặc hàng ngày hoặc đi du lịch.', '1744705786_4.jpg', 1),
(5, 'Áo xẻ vai thời trang ', 45, 26, 'Các mẫu váy đầm sang trọng, tinh tế, thích hợp cho các buổi tiệc hoặc sự kiện đặc biệt.', '1744705920_3.jpg', 1),
(6, 'Đầm nữ báo đốm ', 44, 10, 'Áo nữ siêu gợi cảm ', '1745121767_13.jpg', 1),
(8, 'Áo hai', 34, 16, 'áo hai dây mát mẻ', '1745157423_7.jpg', 1),
(9, 'Váy dạ hội ', 40, 16, 'váy gợi cảm xinh đẹp cho nữ', '1745157565_19.jpg', 1),
(10, 'Áo sơ mi ', 38, 21, 'áo sơ mi nữ', '1745157653_1.jpg', 1),
(11, 'Áo thể thao nam', 33, 24, 'áo thể thao nam co giãn hai chiều', '1745157746_3.jpg', 1),
(12, 'Áo len hot trend  2025', 33, 27, 'Áo len hot trend  2025', '1745157897_8.jpg', 1),
(13, 'Áo thu đông ', 33, 25, 'Áo giữ ấm thu đông ', '1745158010_14.jpg', 1),
(14, 'Áo thời trang nam', 37, 19, 'Áo thời trang nam ', '1745158169_20.jpg', 1),
(15, 'Váy thời trang nữ', 40, 17, 'Váy thời trang nữ', '1745158270_16.jpg', 1),
(16, 'Áo sơ mi công sở', 38, 17, 'Áo sơ mi công sở', '1745158390_21.jpg', 1),
(17, 'Áo lưới nữ', 45, 18, 'Áo lưới nữ ', '1745158574_15.jpg', 1),
(18, 'Áo thun không họa tiết ', 37, 44, 'Áo thun không họa tiết ', '1745158683_18.jpg', 1),
(19, 'Áo manto nam', 33, 21, 'Áo manto nam', '1745159701_16.jpg', 1),
(20, 'Áo thun nam ', 37, 20, 'Áo thun nam  cá tính', '1745159818_3.jpg', 1),
(21, 'Quần bò phong cách', 39, 15, 'Quần bò phong cách', '1745159923_3.jpg', 1),
(22, 'Dầm nữ ', 34, 21, 'đầm nữ phong cách ', '1745160105_13.jpg', 1),
(23, 'Áo vest ', 33, 19, 'áo vest nam lịch thiệp', '1745160200_8.jpg', 1),
(24, 'Áo Croptop', 34, 20, 'Áo Croptop nữ hot trend 2023', '1745160324_3.jpg', 1),
(25, 'Áo sơ mi nam', 33, 17, 'Áo sơ mi nam mat mẻ lịch sự', '1745160421_12.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `name`, `email`, `mat_khau`, `dia_chi`, `so_dien_thoai`, `role`) VALUES
(2, 'Trần Thị Bbb545', 'tranthib@email.com', '$2y$10$FAccxTunLLxm1x9oLLIEr.mHo9yu2IAQPZy5rXEDQZ4n0GK4XD8gS', 'Hồ Chí Minh', '0912345678', 1),
(6, 'admin3', 'Admin@123', '$2y$10$IlMMM8W3N92Q/nsMHufG.OE4swyNK/VDDsgwc.OqFzkgkxaoFvsha', 'thai', '0865763082', 0),
(9, 'Nguyễn Thái Hoàng', 'Hoang1802.elkun@gmail.com', '$2y$10$VmBJShZRBRIqcjMmZQpUhu///RDa2ov/SrWIUfmpQdYUDMs1uAWVe', 'Hà Nam', '0888317782', 1),
(10, 'Thái Hoàng', 'hoang1802@gmail.com', '$2y$10$In9Us4RLw8ojizUGJxfq5ec01WzBGcCqeku0edmDZcPJ9DCy/dZDS', 'Hà Tĩnh', '0705205644', 1),
(11, 'Nguyễn Thái Hoàng', 'Hoang180205@gmail.com', '$2y$10$8cjP1micmmBT9g1bHGFO4OUe8JOuldhh68GON7BAj05T8zxI2uXjO', 'Hà Tĩnh', '0912345678', 1),
(12, 'Trương T Hồng Hạnh', 'hanhtthph48758@gmail.com', '$2y$10$TitHm8DurexLa/ruJ1UCbu85NtEPr2zD5EJpIGEz1LHPky.nps03S', 'Hà nội', '0862774663', 1),
(13, 'van ban', 'banvvph51383@gmail.com', '$2y$10$1omd9bcUvBCBKyZzYwH6S.W8heFeVwP4LzhXEkQjfbt7VJce6ZVoe', 'thai binh', '0865763082', 1),
(14, 'van ban', 'hsbafiw09@gmail.com', '$2y$10$pFkkdhUBo06btsoTkoW38uXeyeY15u7QG4drZ7LIR.sVFIPAbWANe', 'thai binh', '0865763082', 1),
(15, 'van ban', 'q@h.c1', '$2y$10$1fc6nNxGlpMhEFy3aNYNjOxI6WedTg0KG/9GGAZwPXYeIfsfaHobW', 'thai binh', '0865763082', 1),
(16, 'ban vu', 'bajndubf456@gmail.com', '$2y$10$yUJ8tODTwjNs9SYV.n/zreyXfpPxU8fKk1D5743EdIG9Ap82wa17u', 'thai binh', '123', 1),
(17, 'van ban', 'banvvph51383111@gmail.com', '$2y$10$2myO3iPUuVKt6qePclGd8.bPWDoGaIw9RijGGwzxloHX3pXYlTd1u', 'thai binh', '0865763054', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_don_hang`
--

CREATE TABLE `trang_thai_don_hang` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_thai_don_hang`
--

INSERT INTO `trang_thai_don_hang` (`id`, `ten_trang_thai`) VALUES
(0, 'Chờ xác nhận'),
(1, 'Đang xử lí'),
(2, 'Đang giao hàng'),
(4, 'Đã giao'),
(5, 'Hoàn thành'),
(6, 'Đã hủy'),
(7, 'Trả hàng/Hoàn tiền');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaDonHang` (`id_dh`),
  ADD KEY `MaChiTiet` (`id_ct_sp`);

--
-- Indexes for table `chi_tiet_sp`
--
ALTER TABLE `chi_tiet_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSP` (`id_sp`),
  ADD KEY `MaMau` (`id_mau`),
  ADD KEY `MaKichCo` (`id_kich_co`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaKH` (`id_tai_khoan`),
  ADD KEY `MaPhiVanChuyen` (`id_pt_van_chuyen`),
  ADD KEY `MaKhuyenMai` (`id_km`),
  ADD KEY `don_hang_ibfk_4` (`id_pt_thanh_toan`),
  ADD KEY `fk_trang_thai` (`trang_thai`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaKH` (`id_tai_khoan`),
  ADD KEY `MaChiTiet` (`id_ct_sp`);

--
-- Indexes for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kich_co`
--
ALTER TABLE `kich_co`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pt_thanh_toan`
--
ALTER TABLE `pt_thanh_toan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pt_van_chuyen`
--
ALTER TABLE `pt_van_chuyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaDanhMuc` (`id_dm`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trang_thai_don_hang`
--
ALTER TABLE `trang_thai_don_hang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `chi_tiet_sp`
--
ALTER TABLE `chi_tiet_sp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kich_co`
--
ALTER TABLE `kich_co`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mau_sac`
--
ALTER TABLE `mau_sac`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pt_thanh_toan`
--
ALTER TABLE `pt_thanh_toan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pt_van_chuyen`
--
ALTER TABLE `pt_van_chuyen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_1` FOREIGN KEY (`id_dh`) REFERENCES `don_hang` (`id`),
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_2` FOREIGN KEY (`id_ct_sp`) REFERENCES `chi_tiet_sp` (`id`);

--
-- Constraints for table `chi_tiet_sp`
--
ALTER TABLE `chi_tiet_sp`
  ADD CONSTRAINT `chi_tiet_sp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `chi_tiet_sp_ibfk_2` FOREIGN KEY (`id_mau`) REFERENCES `mau_sac` (`id`),
  ADD CONSTRAINT `chi_tiet_sp_ibfk_3` FOREIGN KEY (`id_kich_co`) REFERENCES `kich_co` (`id`);

--
-- Constraints for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id`),
  ADD CONSTRAINT `don_hang_ibfk_2` FOREIGN KEY (`id_pt_van_chuyen`) REFERENCES `pt_van_chuyen` (`id`),
  ADD CONSTRAINT `don_hang_ibfk_3` FOREIGN KEY (`id_km`) REFERENCES `khuyen_mai` (`id`),
  ADD CONSTRAINT `don_hang_ibfk_4` FOREIGN KEY (`id_pt_thanh_toan`) REFERENCES `pt_thanh_toan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_trang_thai` FOREIGN KEY (`trang_thai`) REFERENCES `trang_thai_don_hang` (`id`);

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_ibfk_1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id`),
  ADD CONSTRAINT `gio_hang_ibfk_2` FOREIGN KEY (`id_ct_sp`) REFERENCES `chi_tiet_sp` (`id`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`id_dm`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
