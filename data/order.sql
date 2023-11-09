-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shop_web
CREATE DATABASE IF NOT EXISTS `shop_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `shop_web`;

-- Dumping structure for table shop_web.orders_order
CREATE TABLE IF NOT EXISTS `orders_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_user_id_e9b59eb1_fk_customer_user_id` (`user_id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table shop_web.orders_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` (`id`, `name`, `address`, `phone`, `pin_code`, `city`, `paid`, `created`, `updated`, `status`, `total_price`, `user_id`) VALUES
	(1, 'Lưu Xuân Ngọc', 'Ninh Thuận', '(84-8) 3843 3167 ', '7000', 'Phan Rang', 0, '2022-11-13 15:11:52.554187', '2022-11-13 15:11:52.554187', 'Giao hàng thành công', 180000, 1),
	(2, 'Ngọc Thắng', 'Ninh Thuận', '(04) 37734322 ', '7000', 'Phan Rang', 0, '2022-11-13 15:12:42.813152', '2022-11-13 15:12:42.813152', 'Giao hàng thành công', 381000, 1),
	(3, 'Phương Tuấn', 'Ninh Thuận', '(84-650) 3 848 963 ', '7000', 'Phan Rang', 0, '2022-11-13 15:13:03.808528', '2022-11-13 15:13:03.808528', 'Giao hàng thành công', 346000, 1),
	(4, 'Văn Hải', 'Bình Thuận', '(84-66) 3 822 478 ', '8000', 'Phan Thiết', 0, '2022-11-13 15:16:06.823933', '2022-11-13 15:16:06.823933', 'Giao hàng thành công', 375000, 2),
	(5, 'Xuân Như', 'Bình Thuận', '(84-4) 38 812 152 ', '8000', 'Phan Thiết', 0, '2022-11-13 15:16:40.673868', '2022-11-13 15:16:40.673868', 'Giao hàng thành công', 329000, 2),
	(6, 'Đình Vũ', 'Bình Thuận', '(84-8) 2509395 ', '8000', 'Phan Thiết', 0, '2022-11-13 15:17:06.723742', '2022-11-13 15:17:06.723742', 'Giao hàng thành công', 389000, 2),
	(7, 'An Nhiên', 'Hồ Chí Minh', '0689426781', '9000', 'Hồ Chí Minh', 0, '2022-11-13 15:18:45.893759', '2022-11-13 15:18:45.893759', 'Giao hàng thành công', 266000, 3),
	(8, 'Thị Thảo', 'Hồ Chí Minh', '0978563710', '9000', 'Hồ Chí Minh', 0, '2022-11-13 15:19:11.193455', '2022-11-13 15:19:11.193455', 'Giao hàng thành công', 304000, 3),
	(9, 'Thiên An', 'Hồ Chí Minh', '0234569745', '9000', 'Hồ Chí Minh', 0, '2022-11-13 15:19:49.168555', '2022-11-13 15:19:49.168555', 'Giao hàng thành công', 351000, 3),
	(10, 'Quốc Thiên', 'Ninh Thuận', '0311821586', '7000', 'Phan Rang', 0, '2022-11-13 15:20:50.963020', '2022-11-13 15:20:50.963020', 'Giao hàng thành công', 393000, 4),
	(11, 'Nguyễn Quốc Thi', 'Ninh Thuận', '38 35482 ', '7000', 'Phan Rang', 0, '2022-11-13 15:21:19.276633', '2022-11-13 15:21:19.276633', 'Giao hàng thành công', 546000, 4),
	(12, 'Nguyễn Xuân Vũ', 'Ninh Thuận', '(08) 39690215 ', '7000', 'Phan Rang', 0, '2022-11-13 15:22:28.733697', '2022-11-13 15:22:28.733697', 'Giao hàng thành công', 284000, 4),
	(13, 'Trần Thanh Thảo', 'Ninh Thuận', '(84-8) 3842 0572 ', '7000', 'Phan Rang', 0, '2022-11-13 15:22:49.132045', '2022-11-13 15:22:49.132045', 'Giao hàng thành công', 234000, 4),
	(14, 'Võ Văn Hân', 'Ninh Thuận', '33 861 770 ', '7000', 'Phan Rang', 0, '2022-11-13 15:23:11.123283', '2022-11-13 15:23:11.123283', 'Giao hàng thành công', 367000, 4),
	(15, 'Ngô Quốc Thái', 'Ninh Thuận', '38418996 ', '7000', 'Phan Rang', 0, '2022-11-13 15:24:27.810266', '2022-11-13 15:24:27.810266', 'Giao hàng thành công', 915000, 5),
	(16, 'Văn Dũng', 'Ninh Thuận', ' 3 861 339 ', '7000', 'Phan Rang', 0, '2022-11-13 15:24:58.323902', '2022-11-13 15:24:58.323902', 'Giao hàng thành công', 587000, 5),
	(17, 'Trần Đức', 'Ninh Thuận', '3848 9610', '7000', 'Phan Rang', 0, '2022-11-13 15:25:49.483007', '2022-11-13 15:25:49.483007', 'Giao hàng thành công', 720000, 5),
	(18, 'Văn Tài', 'Đăk Nông', '3 861 452 ', '2000', 'Gia Nghĩa', 0, '2022-11-13 15:27:49.519631', '2022-11-13 15:27:49.519631', 'Giao hàng thành công', 918000, 6),
	(19, 'Thị Nguyệt', 'Đăk Nông', '672974 ', '2000', 'Gia Nghĩa', 0, '2022-11-13 15:28:13.836180', '2022-11-13 15:28:13.836180', 'Giao hàng thành công', 1077000, 6),
	(20, 'Út Nhâm', 'Đăk Nông', '(84-62) 3834651 ', '2000', 'Gia Nghĩa', 0, '2022-11-13 15:28:33.960023', '2022-11-13 15:28:33.960023', 'Giao hàng thành công', 120000, 6),
	(21, 'Vũ Lệ', 'Khánh Hòa', '(04) 38359410 ', '3000', 'Gia Nghĩa', 0, '2022-11-13 15:29:50.788594', '2022-11-13 15:29:50.788594', 'Giao hàng thành công', 136000, 7),
	(22, 'Xuân Hoa', 'Khánh Hòa', '(84-511) 684139 ', '3000', 'Gia Nghĩa', 0, '2022-11-13 15:30:04.836374', '2022-11-13 15:30:04.836374', 'Giao hàng thành công', 324000, 7),
	(23, 'Võ Thị Thu Nguyệt', 'Khánh Hòa', '84-8-2944904 ', '3000', 'Gia Nghĩa', 0, '2022-11-13 15:30:19.598937', '2022-11-13 15:30:19.598937', 'Giao hàng thành công', 138000, 7),
	(24, 'Quốc Bảo', '303 Phạm Văn Đồng - Phường 1 - Q.Gò Vấp', '0918276484', '70000', 'Hồ Chí Minh', 0, '2022-11-27 10:30:18.766511', '2022-11-27 10:30:18.767510', 'Đang chờ xác nhận', 319000, 8),
	(25, 'Võ Ngọc', '228 đường số 6, Linh Chiểu-Thủ Đức', '09786543120', '70000', 'Hồ Chí Minh', 0, '2022-11-27 10:47:28.179166', '2022-11-27 10:47:28.179166', 'Đang chờ xác nhận', 147000, 9),
	(26, 'Văn Khang', '123 Nguyễn Văn Linh, Quận 7', '0957902100', '70000', 'Hồ Chí Minh', 0, '2022-11-27 12:51:05.698980', '2022-11-27 12:51:05.698980', 'Đang chờ xác nhận', 180000, 9),
	(27, 'Trần Ngọc', '118 Điện Biên Phủ, Bình Thạnh', '0357129876', '70000', 'Hồ Chí Minh', 0, '2022-11-27 13:04:50.536049', '2022-11-27 13:04:50.536049', 'Đang chờ xác nhận', 754000, 9);
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
