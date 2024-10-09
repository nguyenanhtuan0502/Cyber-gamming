-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2024 lúc 04:09 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cyber`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_room`
--

CREATE TABLE `book_room` (
  `id_book` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `book_room`
--

INSERT INTO `book_room` (`id_book`, `room_id`, `customer_id`, `check_in`, `check_out`) VALUES
(1, 1, 1, '2024-01-06 04:26:32', '2024-01-06 11:37:20'),
(2, 2, 2, '2024-01-06 07:31:52', '2024-01-06 09:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `computer`
--

CREATE TABLE `computer` (
  `id` int(11) NOT NULL,
  `device` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `computer`
--

INSERT INTO `computer` (`id`, `device`, `status`) VALUES
(1, 'core i5 13500H, RTX 3060, Kimtigo 8GB 3200 X2,LG 27GN750-B UltraGear™ 27\" IPS 240Hz', 1),
(2, 'Intel I3 12100F, ASRock RX 5600 6G, Kimtigo 8GB 3200 X2, LG 27GN750-B UltraGear™ 27\" IPS 240Hz', 1),
(3, 'Intel I5 12400F, ASRock 6600xt, Silicon DDR4-3200 C16 OC-UDIMM 8GB X2, BenQ XL2540K', 1),
(4, 'Intel I7 12700F, RTX 4060 Ti,Kimtigo 16GB 3200 X2, BenQ XL2566K + HKC MB24V13', 1),
(5, 'Intel I7 12700F, RTX 4060, Kimtigo 16GB 3200 X2, BenQ XL2566K.', 1),
(6, 'Intel I5 12400F, RTX 4060, Kimtigo 16GB 3200 X2, ASUS ROG Strix XG259QN / LG UltraGear 25GR75FG', 1),
(7, 'CPU Intel I5 12400F, VGA MSI RTX 3060, RAM 16GB, ASUS ROG Swift PG259QN 25\" 360hz', 1),
(8, 'CPU Intel I7 12400F, VGA ASUS RTX 3060, RAM 16GB, ASUS ROG Swift XG259CM 25\" 240hz', 1),
(9, 'CPU Intel I7 12700F, VGA ASUS RTX 3060, RAM 16GB, ASUS ROG Swift PG259QN 25\" 360hz', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `dob`, `phone_no`, `password`) VALUES
(1, 'Le Hong Thach', '2002-03-29', '0123456789', '123thach@'),
(2, 'Nguyen Anh Tuan', '2002-01-24', '01212132456', '111tuan#'),
(3, 'Khuất Đăng Sơn', '2002-07-09', '03461347641', '123son@@'),
(4, 'Nguyen Van A', '1997-01-23', '02647842154', 'abc123@2'),
(5, 'Le Thi B', '2004-06-23', '03512342154', 'leb321?##');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cyber`
--

CREATE TABLE `cyber` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cyber`
--

INSERT INTO `cyber` (`id`, `name`, `location`, `open_time`, `close_time`) VALUES
(1, 'loka', 'Vu Tong Phan, Thanh Xuan, Ha Noi', '07:00:00', '23:59:59'),
(2, 'Loka Minh Khai', '488 Minh Khai, Vĩnh Tuy, Hai Bà Trưng, Hà Nội', '07:00:00', '23:59:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `working_shift` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `dob`, `name`, `email`, `salary`, `working_shift`) VALUES
(1, '2002-02-20', 'jack', 'jack@gmail.com', 10000000, 'security'),
(2, '1998-08-20', 'Jayce', 'Jayce20@gmail.com', 10000000, 'security'),
(3, '2004-01-31', 'jane', 'jane04@gmail.com', 10000000, 'cashier'),
(4, '2001-06-07', 'Alex', 'alex01@gmail.com', 15000000, 'chef'),
(5, '1989-04-13', 'Marry', 'marry89@gmail.com', 8000000, 'cleaning staff'),
(6, '1995-01-24', 'nami', 'nami95@gmail.com', 8000000, 'cleaning staff'),
(7, '2004-05-20', 'alice', 'alice04@gmail.com', 10000000, 'cashier'),
(8, '1999-09-16', 'james', 'jamei99@gmail.com', 12000000, 'concierge');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `has_service`
--

CREATE TABLE `has_service` (
  `cyber_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `has_service`
--

INSERT INTO `has_service` (`cyber_id`, `service_id`) VALUES
(1, 1),
(1, 2),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manage_room`
--

CREATE TABLE `manage_room` (
  `employee_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `manage_room`
--

INSERT INTO `manage_room` (`employee_id`, `room_id`) VALUES
(1, 1),
(8, 1),
(6, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_service`
--

CREATE TABLE `oder_service` (
  `id_order` int(11) NOT NULL,
  `ID_Customer` int(11) NOT NULL,
  `ID_Service` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_service`
--

INSERT INTO `oder_service` (`id_order`, `ID_Customer`, `ID_Service`, `amount`) VALUES
(1, 1, 2, 1),
(2, 2, 1, 1),
(3, 3, 4, 3),
(4, 4, 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `own_pc`
--

CREATE TABLE `own_pc` (
  `room_id` int(11) NOT NULL,
  `pc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `own_pc`
--

INSERT INTO `own_pc` (`room_id`, `pc_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 2),
(2, 8),
(3, 5),
(3, 7),
(4, 9),
(5, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `own_room`
--

CREATE TABLE `own_room` (
  `cyber_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `own_room`
--

INSERT INTO `own_room` (`cyber_id`, `room_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_no_employee`
--

CREATE TABLE `phone_no_employee` (
  `id` int(255) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `phone_no` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phone_no_employee`
--

INSERT INTO `phone_no_employee` (`id`, `emp_id`, `phone_no`) VALUES
(1, 1, '0353618948'),
(2, 2, '05467412457'),
(3, 3, '054879512452, 024658124571'),
(4, 5, '05467512424, 05474451245');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id`, `price`, `status`) VALUES
(1, 7000, 1),
(2, 10000, 1),
(3, 13500, 1),
(4, 15000, 1),
(5, 20000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `price` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `price`, `name`) VALUES
(1, '30000vnd', 'morning_combo'),
(2, '10000vnd', 'pepsi'),
(3, '20000vnd', 'banhmi'),
(4, '20000vnd', 'my_trung'),
(5, '5000vnd', 'them_trung'),
(6, '20000vnd', 'my_xuc_xich'),
(7, '8000vnd', 'them_my'),
(8, '50000vnd', 'combo_eve');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `work_for`
--

CREATE TABLE `work_for` (
  `emp_id` int(11) NOT NULL,
  `cyber_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `work_for`
--

INSERT INTO `work_for` (`emp_id`, `cyber_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book_room`
--
ALTER TABLE `book_room`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `room_id_fk` (`room_id`);

--
-- Chỉ mục cho bảng `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password_unique` (`password`);

--
-- Chỉ mục cho bảng `cyber`
--
ALTER TABLE `cyber`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `has_service`
--
ALTER TABLE `has_service`
  ADD KEY `cyber_id_fk` (`cyber_id`),
  ADD KEY `service_id_fk` (`service_id`);

--
-- Chỉ mục cho bảng `manage_room`
--
ALTER TABLE `manage_room`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employee_id_fk` (`employee_id`),
  ADD KEY `room_id_fk` (`room_id`);

--
-- Chỉ mục cho bảng `oder_service`
--
ALTER TABLE `oder_service`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `Customer_id` (`ID_Customer`),
  ADD KEY `Service_id` (`ID_Service`);

--
-- Chỉ mục cho bảng `own_pc`
--
ALTER TABLE `own_pc`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `room_id_fk` (`room_id`),
  ADD KEY `pc_id_fk` (`pc_id`);

--
-- Chỉ mục cho bảng `own_room`
--
ALTER TABLE `own_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `cyber_id_fk` (`cyber_id`),
  ADD KEY `room_id_fk` (`room_id`);

--
-- Chỉ mục cho bảng `phone_no_employee`
--
ALTER TABLE `phone_no_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id_fk` (`emp_id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `work_for`
--
ALTER TABLE `work_for`
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD KEY `emp_id_fk` (`emp_id`),
  ADD KEY `cyber_id_fk` (`cyber_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book_room`
--
ALTER TABLE `book_room`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `computer`
--
ALTER TABLE `computer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cyber`
--
ALTER TABLE `cyber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oder_service`
--
ALTER TABLE `oder_service`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phone_no_employee`
--
ALTER TABLE `phone_no_employee`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `book_room`
--
ALTER TABLE `book_room`
  ADD CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `has_service`
--
ALTER TABLE `has_service`
  ADD CONSTRAINT `has_service_ibfk_1` FOREIGN KEY (`cyber_id`) REFERENCES `cyber` (`id`),
  ADD CONSTRAINT `has_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);

--
-- Các ràng buộc cho bảng `manage_room`
--
ALTER TABLE `manage_room`
  ADD CONSTRAINT `manage_room_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `manage_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `oder_service`
--
ALTER TABLE `oder_service`
  ADD CONSTRAINT `Customer_id` FOREIGN KEY (`ID_Customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `Service_id` FOREIGN KEY (`ID_Service`) REFERENCES `service` (`id`);

--
-- Các ràng buộc cho bảng `own_pc`
--
ALTER TABLE `own_pc`
  ADD CONSTRAINT `own_pc_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `own_pc_ibfk_2` FOREIGN KEY (`pc_id`) REFERENCES `computer` (`id`);

--
-- Các ràng buộc cho bảng `own_room`
--
ALTER TABLE `own_room`
  ADD CONSTRAINT `own_room_ibfk_1` FOREIGN KEY (`cyber_id`) REFERENCES `cyber` (`id`),
  ADD CONSTRAINT `own_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `phone_no_employee`
--
ALTER TABLE `phone_no_employee`
  ADD CONSTRAINT `phone_no_employee_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`);

--
-- Các ràng buộc cho bảng `work_for`
--
ALTER TABLE `work_for`
  ADD CONSTRAINT `work_for_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `work_for_ibfk_2` FOREIGN KEY (`cyber_id`) REFERENCES `cyber` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
