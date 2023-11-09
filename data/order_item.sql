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

-- Dumping structure for table shop_web.orders_orderitem
CREATE TABLE IF NOT EXISTS `orders_orderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL CHECK (`quantity` >= 0),
  `total` double NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  KEY `orders_orderitem_product_id_afe4254a_fk_product_product_id` (`product_id`),
  CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table shop_web.orders_orderitem: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders_orderitem` DISABLE KEYS */;
INSERT INTO `orders_orderitem` (`id`, `quantity`, `total`, `order_id`, `product_id`) VALUES
	(1, 1, 180000, 1, 4),
	(2, 1, 229000, 2, 8),
	(3, 1, 152000, 2, 10),
	(4, 1, 133000, 3, 9),
	(5, 1, 213000, 3, 13),
	(6, 1, 168000, 4, 14),
	(7, 1, 207000, 4, 22),
	(8, 1, 231000, 5, 16),
	(9, 1, 98000, 5, 23),
	(10, 1, 180000, 6, 4),
	(11, 1, 209000, 6, 24),
	(12, 1, 171000, 7, 7),
	(13, 1, 95000, 7, 65),
	(14, 1, 180000, 8, 4),
	(15, 1, 124000, 8, 6),
	(16, 1, 138000, 9, 5),
	(17, 1, 213000, 9, 13),
	(18, 1, 180000, 10, 4),
	(19, 1, 213000, 10, 13),
	(20, 1, 239000, 11, 15),
	(21, 1, 159000, 11, 17),
	(22, 1, 148000, 11, 18),
	(23, 1, 148000, 12, 18),
	(24, 1, 136000, 12, 21),
	(25, 1, 136000, 13, 21),
	(26, 1, 98000, 13, 23),
	(27, 1, 180000, 14, 4),
	(28, 1, 187000, 14, 20),
	(29, 1, 138000, 15, 5),
	(30, 1, 207000, 15, 22),
	(31, 1, 570000, 15, 40),
	(32, 1, 148000, 16, 18),
	(33, 1, 319000, 16, 52),
	(34, 1, 120000, 16, 56),
	(35, 1, 180000, 17, 4),
	(36, 1, 138000, 17, 5),
	(37, 1, 124000, 17, 6),
	(38, 1, 133000, 17, 9),
	(39, 1, 145000, 17, 71),
	(40, 1, 213000, 18, 13),
	(41, 1, 425000, 18, 48),
	(42, 1, 280000, 18, 57),
	(43, 1, 138000, 19, 5),
	(44, 1, 570000, 19, 40),
	(45, 1, 369000, 19, 49),
	(46, 1, 120000, 20, 56),
	(47, 1, 136000, 21, 21),
	(48, 1, 324000, 22, 41),
	(49, 1, 138000, 23, 5),
	(50, 1, 319000, 24, 51),
	(51, 1, 147000, 25, 11),
	(52, 1, 180000, 26, 4),
	(53, 2, 350000, 27, 47),
	(54, 1, 404000, 27, 59);
/*!40000 ALTER TABLE `orders_orderitem` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
