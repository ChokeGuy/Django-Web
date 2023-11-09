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

-- Dumping structure for table shop_web.manufacturer_manufacturer
CREATE TABLE IF NOT EXISTS `manufacturer_manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table shop_web.manufacturer_manufacturer: ~15 rows (approximately)
/*!40000 ALTER TABLE `manufacturer_manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer_manufacturer` (`id`, `name`, `phone`, `address`, `image`, `status`) VALUES
	(4, 'Zanzea', '12344321', 'Lok Shun Path Barbecue Area, Lok Shun Path, Fo Tan, Hồng Kông', 'images/manufacturers/Zanzea.png', 0),
	(5, 'Afeg', '9819995634', 'AFEG, No. 201,Raj Mandir Apartment, Mira Bhayander Road, Gita Nagar, Mira Road East, Mira Bhayandar,', 'images/manufacturers/Afeg.jpg', 0),
	(6, 'Xiaozhainv', '0967122211', 'Lok Shun Path, Fo Tan, Hồng Kông', 'images/manufacturers/xiaozai.jpg', 0),
	(7, 'Ammin', '0987421111', 'òa nhà Melody, N1 Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Tp.HCM', 'images/manufacturers/ammin.jpg', 0),
	(8, 'Vonda', '094111232', 'A-33 Sector 83, Phase II Noida Gautam Buddha Nagar UP 201305 IN', 'images/manufacturers/vonda.jpg', 0),
	(9, 'Sero', '09831265742', '64-80 Hoàng Xuân Nhị, Phú Trung, Tân Phú, Thành phố Hồ Chí Minh', 'images/manufacturers/sezo.jpg', 0),
	(10, 'Tingoan', '0984054291', '62 Nguyễn Trãi Quận 1 TP.Hồ Chí Minh', 'images/manufacturers/tingoan.jpg', 0),
	(11, 'Owen', '0981235671', 'Số 380B Hai Bà Trưng, P. Tân Định, Quận 1, TP. HCM', 'images/manufacturers/owen.jpg', 0),
	(12, 'Mk Clever', '0308808576', 'Tòa nhà Saigon Centre – Tháp 2, 67 Lê Lợi, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh, Việt Nam.', 'images/manufacturers/mk_clever.jpeg', 0),
	(13, 'Vuug', '0971245631', '467 Điện Biên Phủ, Phường 3, Quận 3, Thành phố Hồ Chí Minh 700000', 'images/manufacturers/vuug.jpeg', 0),
	(14, 'Capman', '0774971020', 'KDC City LAND PRAKILL Phường 10, Gò Vấp , TP. Hồ Chí Minh', 'images/manufacturers/capman.png', 0),
	(15, '4 Men', '0868444644', '904C Hà Hoàng Hổ, P. Mỹ Xuyên, Tp. Long Xuyên, An Giang', 'images/manufacturers/4_men.jpeg', 0),
	(16, 'Gap', '18004277895', 'San Francisco, Califoria', 'images/manufacturers/gap.jpg', 0),
	(17, 'H&M', '09126374612', 'Thụy Điển', 'images/manufacturers/hm.png', 0),
	(18, 'Zara', '0982176252', 'Tây Ban Nha', 'images/manufacturers/zara.png', 0);
/*!40000 ALTER TABLE `manufacturer_manufacturer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
