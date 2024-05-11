-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2023 lúc 12:41 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttltmang1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlbh`
--

CREATE TABLE `qlbh` (
  `mahd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mabh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(20) NOT NULL,
  `thanhtien` int(20) NOT NULL,
  `ngaydd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qlbh`
--

INSERT INTO `qlbh` (`mahd`, `mabh`, `masp`, `tensp`, `soluong`, `thanhtien`, `ngaydd`) VALUES
('HD1', 'BH1', 'SP1', 'ROYAL CANIN Mini Puppy', 2, 430000, '2023-11-29 04:38:21'),
('HD2', 'BH10', 'SP18', 'Vòng cổ cho chó mèo kèm dây dắt AMBABY PET 1JXS083', 2, 450000, '2023-11-29 05:39:50'),
('HD1', 'BH2', 'SP3', 'JERHIGH Meat as Meals Beef Recipe', 2, 550000, '2023-11-29 04:40:13'),
('HD2', 'BH3', 'SP10', 'PAW Rubber Dog Toy Jingle Knobby Dumbbell', 2, 190000, '2023-11-29 05:38:47'),
('HD2', 'BH4', 'SP14', 'Quần áo cho chó mèo AMBABY PET 2JXF216', 2, 216000, '2023-11-29 05:38:54'),
('HD2', 'BH5', 'SP8', 'bóng thừng BOBO', 2, 60000, '2023-11-29 05:39:01'),
('HD2', 'BH6', 'SP17', 'Yếm cho chó mèo kèm dây dắt Ambaby 1JXS043', 2, 510000, '2023-11-29 05:39:01'),
('HD2', 'BH7', 'SP5', 'ROYAL CANIN Kitten', 2, 250000, '2023-11-29 05:39:26'),
('HD2', 'BH8', 'SP15', 'Quần áo cho chó mèo AMBABY PET 2JXF164', 2, 490000, '2023-11-29 05:39:26'),
('HD2', 'BH9', 'SP12', 'Đồ chơi cho chó mèo Paw hình con gà', 2, 100000, '2023-11-29 05:39:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlhd`
--

CREATE TABLE `qlhd` (
  `mahd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkh` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoiban` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qlhd`
--

INSERT INTO `qlhd` (`mahd`, `tenkh`, `sdt`, `diachi`, `tongtien`, `nguoiban`) VALUES
('HD1', 'Mạnh', '123', '123', '980000', 'manh'),
('HD2', 'Nam', '123', 'Hà nội', '2266000', 'manh1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qllsp`
--

CREATE TABLE `qllsp` (
  `maloai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qllsp`
--

INSERT INTO `qllsp` (`maloai`, `tenloai`, `mota`, `tt`) VALUES
('LSP2', 'Đồ chơi', 'Đồ chơi cho thú cưng', 1),
('LSP3', 'trang phục', 'Trang phục cho thú cưng', 1),
('LSP4', 'Thức ăn', 'Thức ăn cho thú cưng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlsp`
--

CREATE TABLE `qlsp` (
  `maloai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dvt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluongtonkho` bigint(20) NOT NULL,
  `tt` int(10) NOT NULL,
  `anhsp` varchar(200) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qlsp`
--

INSERT INTO `qlsp` (`maloai`, `masp`, `tensp`, `dvt`, `gia`, `soluongtonkho`, `tt`, `anhsp`) VALUES
('LSP4', 'SP1', 'ROYAL CANIN Mini Puppy', 'Túi', '215000', 994, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_cho.png'),
('LSP2', 'SP10', 'PAW Rubber Dog Toy Jingle Knobby Dumbbell', 'Cái', '95000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_3.png'),
('LSP2', 'SP11', 'Đĩa bay cho chó BOBO Pet Frisbee', 'Cái', '110000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_4.png'),
('LSP2', 'SP12', 'Đồ chơi cho chó mèo Paw hình con gà', 'Cái', '50000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_5.png'),
('LSP2', 'SP13', 'Roi huấn luyện chó mèo PAW', 'Cái', '50000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_6.png'),
('LSP3', 'SP14', 'Quần áo cho chó mèo AMBABY PET 2JXF216', 'Bộ', '108000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_trangphuc_1.png'),
('LSP3', 'SP15', 'Quần áo cho chó mèo AMBABY PET 2JXF164', 'Bộ', '245000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_trangphuc_2.png'),
('LSP3', 'SP16', 'Quần áo cho chó mèo AMBABY PET 2JXF167', 'Bộ', '160000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_trangphuc_3.png'),
('LSP3', 'SP17', 'Yếm cho chó mèo kèm dây dắt Ambaby 1JXS043', 'Bộ', '255000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_trangphuc_4.png'),
('LSP3', 'SP18', 'Vòng cổ cho chó mèo kèm dây dắt AMBABY PET 1JXS083', 'Bộ', '225000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_trangphuc_5.png'),
('LSP4', 'SP2', 'ROYAL CANIN Poodle Puppy', 'Túi', '175000', 11222, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_cho1.png'),
('LSP4', 'SP3', 'JERHIGH Meat as Meals Beef Recipe', 'Túi', '275000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_cho2.png'),
('LSP4', 'SP4', 'Thức ăn cho chó hạt mềm', 'Túi', '250000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_cho3.png'),
('LSP4', 'SP5', 'ROYAL CANIN Kitten', 'Túi', '125000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_meo.png'),
('LSP4', 'SP6', 'ROYAL CANIN Hair & Skin', 'Túi', '135000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_meo1.png'),
('LSP4', 'SP7', ' CATIDEA Mother & Baby Cat', 'Hộp', '30000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_thucan_meo2.png'),
('LSP2', 'SP8', 'bóng thừng BOBO', 'Cái', '30000', 998, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_1.png'),
('LSP2', 'SP9', 'Bóng đồ chơi', 'Cái', '45000', 1000, 1, 'D:\\THLTmang\\btl_ttltm\\m\\anhsp\\anhsp_dochoi_2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qltk`
--

CREATE TABLE `qltk` (
  `taikhoan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tentk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qltk`
--

INSERT INTO `qltk` (`taikhoan`, `matkhau`, `tentk`, `sdt`, `diachi`, `quyen`, `tt`) VALUES
('1', '1', '1', '1', '1', 'Nhân viên', 1),
('anh', '1234', 'Anh', '0987654322', 'Cao Bằng', 'Nhân viên', 1),
('hai', '123', 'Hải', '0942117601', 'Hà Nam', 'Nhân viên', 1),
('manh', '123', 'Manh', '0352032584', 'Ninh Bình', 'Admin', 1),
('manh1', '123', 'Na', '123', '123', 'Nhân viên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin`
--

CREATE TABLE `tb_admin` (
  `thoigian` datetime NOT NULL,
  `Noidung` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin`
--

INSERT INTO `tb_admin` (`thoigian`, `Noidung`) VALUES
('2023-11-29 10:34:07', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:35:08', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:35:27', 'bạn đã thêm loại sản phẩm có mã LSP4'),
('2023-11-29 10:44:27', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:45:50', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:48:04', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:49:05', 'bạn đã thêm  sản phẩm có mã SP1'),
('2023-11-29 10:49:19', 'bạn đã thêm  sản phẩm có mã SP1'),
('2023-11-29 10:49:51', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:51:41', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:52:09', 'bạn đã thêm  sản phẩm có mã SP2'),
('2023-11-29 10:52:47', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:54:10', 'bạn đã thêm  sản phẩm có mã SP1'),
('2023-11-29 10:55:13', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:56:08', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 10:58:06', 'bạn đã thêm  sản phẩm có mã SP2'),
('2023-11-29 10:58:57', 'bạn đã thêm  sản phẩm có mã SP2'),
('2023-11-29 11:00:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:00:45', 'bạn đã thêm  sản phẩm có mã SP2'),
('2023-11-29 11:01:07', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:01:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:02:22', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:02:45', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:04:54', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:05:27', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:06:13', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:06:37', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:06:48', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:06:58', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:07:12', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:07:20', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:09:09', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:09:15', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:09:23', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:09:39', 'bạn đã thêm  sản phẩm có mã SP3'),
('2023-11-29 11:09:46', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:09:49', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:10:47', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:10:54', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:12:31', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:12:39', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:12:44', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:12:58', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:15:20', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:15:23', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:15:26', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:15:28', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:16:19', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:16:25', 'bạn đã xóa  sản phẩm có mã SP3'),
('2023-11-29 11:16:36', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:17:29', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:17:44', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:20:25', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:20:37', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:22:08', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:22:29', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:24:38', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:24:54', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:25:34', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:25:54', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:27:00', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:28:20', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:28:27', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:29:59', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:30:10', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:30:35', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:32:54', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:33:25', 'bạn đã sửa  sản phẩm có mã SP2'),
('2023-11-29 11:34:21', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 11:36:08', 'bạn đã thêm  sản phẩm có mã SP3'),
('2023-11-29 11:37:19', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 12:03:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 12:04:07', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 12:04:41', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 12:07:37', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 12:09:10', 'bạn đã thêm  sản phẩm có mã SP4'),
('2023-11-29 12:11:04', 'bạn đã thêm  sản phẩm có mã SP5'),
('2023-11-29 12:12:36', 'bạn đã thêm  sản phẩm có mã SP6'),
('2023-11-29 12:14:26', 'bạn đã thêm  sản phẩm có mã SP7'),
('2023-11-29 12:18:37', 'bạn đã thêm  sản phẩm có mã SP8'),
('2023-11-29 12:20:12', 'bạn đã thêm  sản phẩm có mã SP9'),
('2023-11-29 12:22:35', 'bạn đã thêm  sản phẩm có mã SP10'),
('2023-11-29 12:24:11', 'bạn đã thêm  sản phẩm có mã SP11'),
('2023-11-29 12:26:04', 'bạn đã thêm  sản phẩm có mã SP12'),
('2023-11-29 12:27:30', 'bạn đã thêm  sản phẩm có mã SP13'),
('2023-11-29 12:29:40', 'bạn đã thêm  sản phẩm có mã SP14'),
('2023-11-29 12:31:16', 'bạn đã thêm  sản phẩm có mã SP15'),
('2023-11-29 12:32:26', 'bạn đã thêm  sản phẩm có mã SP16'),
('2023-11-29 12:34:29', 'bạn đã thêm  sản phẩm có mã SP17'),
('2023-11-29 12:35:49', 'bạn đã thêm  sản phẩm có mã SP18'),
('2023-11-29 12:38:23', 'tai khoan co ten  manh1 vua dang nhap'),
('2023-11-29 13:44:52', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 13:47:07', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 13:49:09', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 13:52:49', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 13:53:25', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 13:57:16', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 14:00:41', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 14:14:15', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 14:14:58', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 15:29:01', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 15:29:34', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:15:13', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:15:19', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:20:10', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:20:44', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:21:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:21:11', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:21:24', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:21:30', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:21:46', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:21:50', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:22:13', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 16:22:17', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 16:22:48', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:09:21', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:09:35', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:12:21', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:12:47', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:14:17', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:14:23', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:15:18', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:15:28', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:17:20', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:17:40', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:18:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:18:15', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:18:48', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:18:54', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:19:15', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:19:18', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:21:18', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:22:03', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:23:30', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:23:36', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:24:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:24:11', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:24:38', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:24:41', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:25:10', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:25:15', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:25:30', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:25:37', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:25:55', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:26:04', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:26:18', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 20:26:49', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 20:27:34', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:04:26', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:10:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:11:12', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:13:08', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:13:25', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:21:17', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:21:43', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:23:03', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:23:09', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:25:33', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:25:43', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:26:17', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:27:10', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:28:37', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:28:51', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:29:35', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:29:48', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:30:06', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:30:22', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:30:40', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:31:10', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:32:51', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:33:10', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:34:53', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:35:04', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:35:20', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:35:28', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:35:51', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:36:14', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 21:36:49', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 21:37:15', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:07:26', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:08:26', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:08:30', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:08:41', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:09:14', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:09:19', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:09:32', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:09:55', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:13:13', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:15:38', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:20:40', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:20:52', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:31:28', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:31:54', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:44:47', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:45:23', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:45:42', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:45:57', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 22:50:31', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 22:50:50', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:13:02', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:13:25', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:28:32', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:28:47', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:29:16', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:29:25', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:29:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:30:21', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:30:38', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:30:43', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:30:55', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:31:02', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:32:01', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:32:18', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:32:47', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:32:54', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:38:50', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:39:20', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:40:40', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:40:58', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:41:34', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:41:46', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:42:37', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:42:50', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:44:08', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:44:15', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:45:01', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:45:06', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:45:22', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:45:28', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:46:04', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:46:09', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:46:34', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:46:39', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:46:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:47:09', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:51:39', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:51:48', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:53:32', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:53:41', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:53:59', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:54:07', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:54:38', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:54:44', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:55:10', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:55:19', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:55:33', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:55:39', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:55:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:56:08', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-29 23:56:21', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-29 23:56:38', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:14:17', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:14:29', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:15:58', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:16:03', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:16:15', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:16:25', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:18:23', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:18:35', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:19:11', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:19:19', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:19:51', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:19:53', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:20:00', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:20:02', 'tai khoan co ten   vua dang xuat'),
('2023-11-30 00:20:29', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:20:36', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:20:46', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:20:50', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:21:07', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:21:13', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:21:35', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:21:48', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:27:10', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:27:18', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:27:36', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:27:43', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:27:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:28:03', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:30:56', 'tai khoan co ten  manh1 vua dang nhap'),
('2023-11-30 00:31:10', 'tai khoan co ten  manh1 vua dang xuat'),
('2023-11-30 00:36:14', 'tai khoan co ten  manh1 vua dang nhap'),
('2023-11-30 00:36:38', 'tai khoan co ten  manh1 vua dang xuat'),
('2023-11-30 00:37:34', 'tai khoan co ten  manh1 vua dang nhap'),
('2023-11-30 00:37:41', 'tai khoan co ten  manh1 vua dang xuat'),
('2023-11-30 00:38:09', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:38:45', 'manhĐã thêm tài khoản có tên là'),
('2023-11-30 00:39:13', 'manhĐã thêm tài khoản có tên là'),
('2023-11-30 00:40:14', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:40:43', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:42:30', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:43:41', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 00:45:50', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 00:46:01', 'tai khoan co ten  hai vua dang nhap'),
('2023-11-30 00:47:16', 'tai khoan co ten  hai vua dang nhap'),
('2023-11-30 00:47:36', 'tai khoan co ten  hai vua dang nhap'),
('2023-11-30 18:34:02', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 18:35:22', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 18:41:35', 'tai khoan co ten  manh vua dang nhap'),
('2023-11-30 18:41:41', 'tai khoan co ten  manh vua dang xuat'),
('2023-11-30 18:42:02', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 09:55:03', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 09:55:08', 'tai khoan co ten  manh vua dang xuat'),
('2023-12-03 09:55:17', 'tai khoan co ten  hai vua dang nhap'),
('2023-12-03 09:55:19', 'tai khoan co ten  hai vua dang xuat'),
('2023-12-03 09:55:24', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 10:07:39', 'tai khoan co ten  manh vua dang xuat'),
('2023-12-03 10:10:58', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 10:16:09', 'tai khoan co ten  manh vua dang xuat'),
('2023-12-03 10:59:10', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 11:02:44', 'tai khoan co ten  manh vua dang xuat'),
('2023-12-03 11:02:51', 'tai khoan co ten  hai vua dang nhap'),
('2023-12-03 11:04:37', 'tai khoan co ten  hai vua dang xuat'),
('2023-12-03 18:26:56', 'tai khoan co ten  manh vua dang nhap'),
('2023-12-03 18:27:30', 'tai khoan co ten  manh vua dang xuat');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `qlbh`
--
ALTER TABLE `qlbh`
  ADD PRIMARY KEY (`mabh`),
  ADD KEY `fk_sanp` (`masp`),
  ADD KEY `fk_banhang` (`mahd`);

--
-- Chỉ mục cho bảng `qlhd`
--
ALTER TABLE `qlhd`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `fk_nv` (`nguoiban`);

--
-- Chỉ mục cho bảng `qllsp`
--
ALTER TABLE `qllsp`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `qlsp`
--
ALTER TABLE `qlsp`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_loaisp` (`maloai`);

--
-- Chỉ mục cho bảng `qltk`
--
ALTER TABLE `qltk`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Chỉ mục cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`thoigian`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `qlbh`
--
ALTER TABLE `qlbh`
  ADD CONSTRAINT `fk_banhang` FOREIGN KEY (`mahd`) REFERENCES `qlhd` (`mahd`),
  ADD CONSTRAINT `fk_sanp` FOREIGN KEY (`masp`) REFERENCES `qlsp` (`masp`);

--
-- Các ràng buộc cho bảng `qlhd`
--
ALTER TABLE `qlhd`
  ADD CONSTRAINT `fk_nv` FOREIGN KEY (`nguoiban`) REFERENCES `qltk` (`taikhoan`);

--
-- Các ràng buộc cho bảng `qlsp`
--
ALTER TABLE `qlsp`
  ADD CONSTRAINT `fk_loaisp` FOREIGN KEY (`maloai`) REFERENCES `qllsp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
