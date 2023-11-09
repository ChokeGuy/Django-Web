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

-- Dumping structure for table shop_web.customer_user
CREATE TABLE IF NOT EXISTS `customer_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `is_shipper` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table shop_web.customer_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_user` DISABLE KEYS */;
INSERT INTO `customer_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `full_name`, `phone_number`, `address`, `date`, `avatar`, `is_shipper`) VALUES
	(1, 'pbkdf2_sha256$260000$B4xpOvp6AkaSxHj32BMVrW$SgddvinlN937dXABgwX0eGH8PQEceaf5+CFlvuCy+7s=', '2022-11-13 15:10:10.864107', 0, 'quy20082002', '', '', 'yenanh@gmail.com', 0, 1, '2022-11-13 15:09:57.074914', '', NULL, NULL, NULL, '', 0),
	(2, 'pbkdf2_sha256$260000$MH1NXAnuJGuCITieISv5vp$xD0Ot9JzK19g5eQjIqdFcvKdYmoONSGV1V4gRD5n87Q=', '2022-11-13 15:15:23.407864', 0, 'yenanh', '', '', 'anh@gmail.com', 0, 1, '2022-11-13 15:15:13.275536', '', NULL, NULL, NULL, '', 0),
	(3, 'pbkdf2_sha256$260000$0qDA7s4BJQi6YUHmPaw7jR$urp8E0waAKlZJnkv/dX1mf8n6x2CJJeJYsey8UoaRpA=', '2022-11-13 15:17:48.774081', 0, 'thuclinh', '', '', 'linh@gmail.com', 0, 1, '2022-11-13 15:17:39.504041', '', NULL, NULL, NULL, '', 0),
	(4, 'pbkdf2_sha256$260000$YeMFkkRT95o4hmhqhxvuGb$DY/XxiOBT3uGQ939uPo2JraqvcTjX/3+4K2MLNx76l4=', '2022-11-13 15:20:31.630650', 0, 'diemquynh', '', '', 'diemquynh@gmail.com', 0, 1, '2022-11-13 15:20:22.963291', '', NULL, NULL, NULL, '', 0),
	(5, 'pbkdf2_sha256$260000$yDKjHDBuk9iqHxiHhNSDY2$1PRs2i4RbgC82om4zD762bUElK0Y0sqCtxS9v6mPysc=', '2022-11-13 15:24:01.973349', 0, 'nhuquynh', '', '', 'nhuquynh@gmail.com', 0, 1, '2022-11-13 15:23:53.433577', '', NULL, NULL, NULL, '', 0),
	(6, 'pbkdf2_sha256$260000$AZzZrzjf8DuARD0hkoVV4U$GEPTTIfVGY5GJRWH8H9VIbRflIoIRvhAnTNFHdqc/fM=', '2022-11-13 15:26:36.821073', 0, 'dan', '', '', 'dan@gmail.com', 0, 1, '2022-11-13 15:26:28.859150', '', NULL, NULL, NULL, '', 0),
	(7, 'pbkdf2_sha256$260000$fYcz3Q8EA67NMU2pTflWap$ic6i8sVR3pyrjd/ZhUBqK1EzW84DyoZLKLoP/o41xNc=', '2022-11-13 15:29:17.619781', 0, 'ly', '', '', 'ly@gmail.com', 0, 1, '2022-11-13 15:29:08.294178', '', NULL, NULL, NULL, '', 0),
	(8, '!kQddoTNRJcQS7vf5yuzzNjbRtuQ8D87RzCREc4Fp', '2022-11-27 13:15:27.846212', 0, 'ducthonew', 'Đức Thọ', 'Ninh', 'ducthonew@gmail.com', 0, 1, '2022-11-27 10:29:16.943210', '', NULL, NULL, NULL, '', 1),
	(9, '!XsGZ2c7pnE5qFF12zo4yxKHE88ici6IYoRjo5f8y', '2022-11-27 12:43:56.672091', 0, 'ductho23pro', 'Võ', 'Ngọc', 'ductho23pro@gmail.com', 0, 1, '2022-11-27 10:45:13.898706', '', NULL, NULL, NULL, '', 0),
	(10, 'pbkdf2_sha256$320000$n4m9tJ6fYGE4Cq8ubb9qfG$uwywBLcOPp370RfOThZ5JBlJhjoAIzaxnLuk40/UbnI=', '2022-11-27 13:46:46.186321', 1, 'ninhtho', '', '', 'tho@gmail.com', 1, 1, '2022-11-27 13:33:12.715337', '', NULL, NULL, NULL, '', 0);
/*!40000 ALTER TABLE `customer_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
