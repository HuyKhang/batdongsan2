-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2019 lúc 06:07 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydatabase`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `batdongsan`
--

CREATE TABLE `batdongsan` (
  `id` int(8) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `dientich` float NOT NULL,
  `dongia` float NOT NULL,
  `chieudai` float NOT NULL,
  `chieurong` float NOT NULL,
  `masoqsdd` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` blob NOT NULL,
  `mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `huehong` float NOT NULL,
  `tenduong` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sonha` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phuong` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `quan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `thanhpho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loaiid` int(8) NOT NULL,
  `khid` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhbds`
--

CREATE TABLE `hinhbds` (
  `id` int(8) NOT NULL,
  `hinh` varbinary(50) NOT NULL,
  `bdsid` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong_chuyennhuong`
--

CREATE TABLE `hopdong_chuyennhuong` (
  `id` int(8) NOT NULL,
  `khid` int(8) NOT NULL,
  `bdsid` int(8) NOT NULL,
  `dcid` int(8) NOT NULL,
  `giatri` float NOT NULL,
  `ngaylap` datetime NOT NULL,
  `trangthai` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong_datcoc`
--

CREATE TABLE `hopdong_datcoc` (
  `id` int(8) NOT NULL,
  `khid` int(8) NOT NULL,
  `bdsid` int(8) NOT NULL,
  `ngaylaphd` date NOT NULL,
  `giatri` float NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `ngayhethan` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong_kygui`
--

CREATE TABLE `hopdong_kygui` (
  `id` int(8) NOT NULL,
  `khid` int(8) NOT NULL,
  `bdsid` int(8) NOT NULL,
  `giatri` float NOT NULL,
  `chiphidv` float NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `trangthai` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(8) NOT NULL,
  `nvid` int(8) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachitt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(9) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` bigint(20) NOT NULL,
  `gioitinh` bit(1) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `loaikh` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_bds`
--

CREATE TABLE `loai_bds` (
  `id` int(8) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_bds`
--

INSERT INTO `loai_bds` (`id`, `tenloai`) VALUES
(1, 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `taikhoan` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `tennv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `doanhthu` float DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` tinyint(1) DEFAULT NULL,
  `trangthai` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `taikhoan`, `password`, `tennv`, `sdt`, `diachi`, `ngaysinh`, `gioitinh`, `doanhthu`, `email`, `quyen`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Khangsilver1603', '$2y$10$DDpop0zG1WI3C2JLDj0sdOgzSHIQl7yx7Hbbhcl7NxY.hrRIEMcq2', 'Huỳnh Huy Khang', '0981646415', '1041/62/181/4/3 Trần Xuân Soạn', '1997-03-16', 1, 10000000, 'huynh11khang@gmail.com', 1, b'1', '2019-03-27 06:54:02', '2019-04-08 18:48:51'),
(9, 'nguyen123456789', '$2y$10$4gGv2joD41gcUTAeQeUuIeWjLoVUupcfBIvTX2WxjjfMNrLYzWgou', 'Nguyễn Chí Nguyên', '0969698696', '180 Cao Lỗ', '1997-10-10', 0, 6900000, 'nguyennguyen@gamil.com', 1, NULL, '2019-03-30 08:18:57', '2019-03-30 08:18:57'),
(11, 'Minhanh1011', '$2y$10$rJDy6Q2tz2FZYIZv0.tHTewb/w9Zi1DkmUwsR3kgtgBd/0KzO6Wwi', 'Minh Anh', '0122564565', '180 Cao Lỗ', '1997-11-10', 1, 4000000, 'minhanh1603@gmail.com', 0, NULL, '2019-04-03 17:22:47', '2019-04-03 17:22:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeucau_khachhang`
--

CREATE TABLE `yeucau_khachhang` (
  `id` int(8) NOT NULL,
  `loaiid` int(8) NOT NULL,
  `khid` int(8) NOT NULL,
  `vitri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `dai` float NOT NULL,
  `rong` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `batdongsan`
--
ALTER TABLE `batdongsan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaiid` (`loaiid`),
  ADD KEY `khid` (`khid`);

--
-- Chỉ mục cho bảng `hinhbds`
--
ALTER TABLE `hinhbds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bdsid` (`bdsid`);

--
-- Chỉ mục cho bảng `hopdong_chuyennhuong`
--
ALTER TABLE `hopdong_chuyennhuong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bdsid` (`bdsid`),
  ADD KEY `khid` (`khid`),
  ADD KEY `dcid` (`dcid`);

--
-- Chỉ mục cho bảng `hopdong_datcoc`
--
ALTER TABLE `hopdong_datcoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khid` (`khid`),
  ADD KEY `bdsid` (`bdsid`);

--
-- Chỉ mục cho bảng `hopdong_kygui`
--
ALTER TABLE `hopdong_kygui`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khid` (`khid`),
  ADD KEY `bdsid` (`bdsid`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nvid` (`nvid`);

--
-- Chỉ mục cho bảng `loai_bds`
--
ALTER TABLE `loai_bds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `yeucau_khachhang`
--
ALTER TABLE `yeucau_khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaiid` (`loaiid`),
  ADD KEY `khid` (`khid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `batdongsan`
--
ALTER TABLE `batdongsan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhbds`
--
ALTER TABLE `hinhbds`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hopdong_chuyennhuong`
--
ALTER TABLE `hopdong_chuyennhuong`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hopdong_datcoc`
--
ALTER TABLE `hopdong_datcoc`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hopdong_kygui`
--
ALTER TABLE `hopdong_kygui`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai_bds`
--
ALTER TABLE `loai_bds`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `yeucau_khachhang`
--
ALTER TABLE `yeucau_khachhang`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
