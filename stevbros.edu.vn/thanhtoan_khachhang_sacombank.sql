-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2014 at 10:57 PM
-- Server version: 5.5.37-35.1
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bryansg3_stev`
--

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan_khachhang_sacombank`
--

CREATE TABLE IF NOT EXISTS `thanhtoan_khachhang_sacombank` (
  `id` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `country` varchar(2) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `address_line1` varchar(250) NOT NULL,
  `address_line2` varchar(250) DEFAULT NULL,
  `address_city` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `signed_date` datetime DEFAULT NULL,
  `khoahoc_id` int(3) NOT NULL,
  `khoahoc_name` varchar(250) NOT NULL,
  `card_scheme` varchar(30) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `card_expiry_date` varchar(8) NOT NULL,
  `card_type` varchar(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhtoan_khachhang_sacombank`
--

INSERT INTO `thanhtoan_khachhang_sacombank` (`id`, `name`, `last_name`, `country`, `postal_code`, `address_line1`, `address_line2`, `address_city`, `email`, `signed_date`, `khoahoc_id`, `khoahoc_name`, `card_scheme`, `card_number`, `card_expiry_date`, `card_type`, `amount`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
('stevbros1706035945_6', 'Nhan', 'Tran', 'VN', '00884', '1234 CMT 8', '', 'HCM', 'hieunhan@yahoo.com', NULL, 6, 'Accelerated PMP® Exam Prep: Workshop + E-learning', 'Visa Credit', '0', '12-2014', '001', '550', 1, '2014-06-17 04:00:37', NULL, 'khachhang', 'phuong', 1),
('stevbros1706033933_14', 'Nhan', 'Tran', 'VN', '00884', '123 CTM 8', '', 'HCM', 'hieunhan@yahoo.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '45', 1, '2014-06-17 03:50:30', NULL, 'khachhang', 'phuong', 1),
('stevbros1706035638_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:00:05', NULL, 'khachhang', 'phuong', 1),
('stevbros1706040050_6', 'Nhan', 'Tran', 'VN', '00884', '123 CTM 8', '', 'HCM', 'hieunhan@yahoo.com', NULL, 6, 'Accelerated PMP® Exam Prep: Workshop + E-learning', 'Visa Credit', '0', '12-2014', '001', '550', 1, '2014-06-17 04:05:03', NULL, 'khachhang', 'phuong', 1),
('stevbros1706040028_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:06:15', NULL, 'khachhang', 'phuong', 1),
('stevbros1706040807_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:09:18', NULL, 'khachhang', 'phuong', 1),
('stevbros1706041030_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:13:25', NULL, 'khachhang', 'phuong', 1),
('', '', '', '', '', '', '', '', '', NULL, 0, '', '', '0', '', '', '', 1, '2014-06-17 04:20:05', NULL, 'khachhang', 'phuong', 1),
('stevbros1706041519_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:22:46', NULL, 'khachhang', 'phuong', 1),
('stevbros1706042330_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 04:24:56', NULL, 'khachhang', 'phuong', 1),
('stevbros1706043125_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'MasterCard Credit', '0', '12-2014', '002', '55', 1, '2014-06-17 04:32:23', NULL, 'khachhang', 'phuong', 1),
('stevbros1706043321_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'MasterCard Credit', '0', '12-2014', '002', '55', 1, '2014-06-17 04:34:42', NULL, 'khachhang', 'phuong', 1),
('stevbros1706043515_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'MasterCard Credit', '0', '12-2014', '002', '55', 1, '2014-06-17 04:36:29', NULL, 'khachhang', 'phuong', 1),
('stevbros1706043658_14', 'Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'MasterCard Credit', '0', '12-2014', '002', '55', 1, '2014-06-17 04:44:46', NULL, 'khachhang', 'phuong', 1),
('1402998911814', 'Nhan', 'Tran', 'VN', '00884', '123 CTM 8', '', 'hcm', 'hieunhan@yahoo.com', NULL, 0, '', 'Visa Credit', '0', '12-2014', '001', '100.00', 1, '2014-06-17 04:56:07', NULL, 'khachhang', 'phuong', 1),
('stevbros1706050031_14', 'Nhan', 'Tran', 'VN', '00884', '123 CTM 8', '', 'HCM', 'hieunhan@yahoo.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 05:01:16', NULL, 'khachhang', 'phuong', 1),
('stevbros1706213001_14', 'nga', 'doan', 'VN', '00000', 'nkkn', '', 'HCM', 'ngadtm@sacombank.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '02-2015', '001', '55', 1, '2014-06-17 21:34:45', NULL, 'khachhang', 'phuong', 1),
('stevbros1706214255_14', 'Nhan', 'Tran', 'VN', '70000', '123 CTM 8', '', 'HCM', 'hieunhan112@gmail.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 22:02:27', NULL, 'khachhang', 'phuong', 1),
('stevbros1706221251_8', 'Nhan', 'Tran', 'VN', '70000', '123 CTM 8', '', 'HCM', 'hieunhan112@gmail.com', NULL, 8, '30 PDUs for PMP® Renewal', 'Visa Credit', '0', '12-2014', '001', '45', 1, '2014-06-17 22:13:41', NULL, 'khachhang', 'phuong', 1),
('stevbros1706221421_8', 'Nhan', 'Tran', 'VN', '70000', '123 CMT 8', '', 'HCM', 'hieunhan112@gmail.com', NULL, 8, '30 PDUs for PMP® Renewal', 'Visa Credit', '0', '12-2014', '001', '45', 1, '2014-06-17 22:17:55', NULL, 'khachhang', 'phuong', 1),
('stevbros1706222101_8', 'Nhan', 'Tran', 'VN', '70000', '123 CTM 8', '', 'HCM', 'hieunhan112@gmail.com', NULL, 8, '30 PDUs for PMP® Renewal', 'Visa Credit', '0', '12-2014', '001', '45', 1, '2014-06-17 22:25:32', NULL, 'khachhang', 'phuong', 1),
('stevbros1706222854_14', 'nga', 'doan', 'VN', '00000', 'nkkn', '', 'HCM', 'ngadtm@sacombank.com', NULL, 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '01-2015', '001', '55', 1, '2014-06-17 22:30:40', NULL, 'khachhang', 'phuong', 1),
('stevbros1706232730_14', 'Nhan', 'Tran', 'VN', '70000', '123 CTM 8', '', 'HCM', 'hieunhan112@gmail.com', '2014-06-18 04:29:06', 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 23:29:15', NULL, 'khachhang', 'phuong', 1),
('stevbros1706234542_14', 'Nhan', 'Tran', 'VN', '70000', '123 CMT 8, P10', '', 'HCM', 'admin@netspace.edu.vn', '2014-06-18 04:46:49', 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '0', '12-2014', '001', '55', 1, '2014-06-17 23:46:55', NULL, 'khachhang', 'phuong', 1),
('stevbros1906020544_14', 'Nguyen', 'Binh Phuong', 'VN', '700000', '45 DInh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', '2014-06-19 07:34:47', 14, '45 PDUs for PMP® Certificate Renewal lowest price', '', 'xxxxxxxxxxxx1373', '06-2016', '001', '1', 1, '2014-06-19 02:34:51', NULL, 'khachhang', 'phuong', 1),
('stevbros1906031322_3', 'Nguyen', 'Binh Phuong', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', '2014-06-19 08:16:00', 3, 'Test thanh toan 1 usd', '', 'xxxxxxxxxxxx1373', '06-2016', '001', '1', 1, '2014-06-19 03:16:04', NULL, 'khachhang', 'phuong', 1),
('stevbros1906203921_14', 'Nguyen', 'Binh Phuong', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryan@stevbros.com', '2014-06-20 01:41:36', 14, '45 PDUs for PMP® Certificate Renewal lowest price', 'Visa Debit', 'xxxxxxxxxxxx1373', '06-2016', '001', '1', 1, '2014-06-19 20:41:42', NULL, 'khachhang', 'phuong', 1),
('stevbros2006022222_3', 'Binh Phuong', 'Nguyen', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'bryansg@icloud.com', '2014-06-20 07:24:31', 3, 'Test thanh toan 1 usd', 'Visa Debit', 'xxxxxxxxxxxx1373', '06-2016', '001', '1', 1, '2014-06-20 02:24:41', NULL, 'khachhang', 'phuong', 1),
('stevbros2006032149_2', 'Binh Phuong', 'Nguyen', 'VN', '700000', '45 Đinh Tiên Hoàng', '', 'HCM', 'bryansg@icloud.com', '2014-06-20 09:49:26', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Debit', '422109xxxxxx1373', '06-2016', '001', '1', 1, '2014-06-20 04:49:30', NULL, 'khachhang', 'phuong', 1),
('stevbros2006060530_2', 'Anne', 'Delacruz', 'US', '90024', '10501 Wilshire Blvd. Unit 702', '', 'Los Angeles', 'annedelacruz@gmail.com', '2014-06-20 11:07:35', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '438857xxxxxx6464', '08-2017', '001', '60', 1, '2014-06-20 06:07:39', NULL, 'khachhang', NULL, 0),
('stevbros2006154818_2', 'Jayesh', 'Tolia', 'US', '75025', '2429 Royal Birkdale Dr.', '', 'Plano', 'jktolia@gmail.com', '2014-06-20 20:55:34', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '414720xxxxxx1203', '06-2017', '001', '60', 1, '2014-06-20 15:55:37', NULL, 'khachhang', NULL, 0),
('stevbros2106022835_2', 'Funeka', 'Radebe', 'ZA', '2090', '23 Kingfisher Close, 98 Caron Road', 'Lombardy East', 'Johannesburg', 'funeka.radebe@gmail.com', '2014-06-21 07:47:46', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '491236xxxxxx8144', '06-2019', '001', '60', 1, '2014-06-21 02:48:08', NULL, 'khachhang', NULL, 0),
('stevbros2106083422_2', 'Joseph', 'Varghese', 'US', '61704', '3 Valerie Ann Ct', '', 'Bloomington', 'josephvarghese@hotmail.com', '2014-06-21 13:39:02', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '414720xxxxxx3619', '08-2017', '001', '60', 1, '2014-06-21 08:39:03', NULL, 'khachhang', NULL, 0),
('stevbros2206125509_2', 'Mahesh', 'Yemula', 'US', '94086', '825 E Evelyn Ave.', 'Apt. 313', 'Sunnyvale', 'mahesh_yemula@yahoo.com', '2014-06-22 18:07:52', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '481583xxxxxx2564', '05-2018', '001', '60', 1, '2014-06-22 13:08:01', NULL, 'khachhang', NULL, 0),
('stevbros2306020840_2', 'Prasanjeet', 'Mohanty', 'IN', '560017', 'Amicorp, 1st Floor, RMZ Titanium, No. 135, Old Airport Road', '', 'Bangalore', 'mohanty.prasanjeet@gmail.com', '2014-06-23 07:22:58', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Credit', '438628xxxxxx3514', '02-2017', '001', '60', 1, '2014-06-23 02:23:00', NULL, 'khachhang', NULL, 0),
('stevbros2306132933_2', 'steven', 'baker', 'US', '77590', '3026 Kingston Drive', '', 'Texas City', 'steven.elmer.baker@gmail.com', '2014-06-23 18:39:19', 2, '60 PDUs for PMP® Certificate Renewal lowest price', 'Visa Debit', '460753xxxxxx1698', '07-2015', '001', '60', 1, '2014-06-23 13:39:20', NULL, 'khachhang', NULL, 0),
('stevbros2306125137_', 'Sai', 'Kondraju', 'US', '08054', '103 Starboard way', '', 'Mount Laurel', 'kondraju1@gmail.com', '2014-06-23 20:13:30', 0, '', 'Visa Credit', '431307xxxxxx7444', '09-2015', '001', '60', 1, '2014-06-23 15:13:31', NULL, 'khachhang', NULL, 0),
('stevbros2306211621_3', 'Nguyen', 'Binh Phuong', 'VN', '700000', '45 Dinh Tien Hoang', '', 'HCM', 'admin@netspace.edu.vn', '2014-06-24 02:19:38', 3, 'Test thanh toan 1 usd', 'Visa Debit', '422109xxxxxx1373', '06-2016', '001', '1', 1, '2014-06-23 21:19:45', '0000-00-00 00:00:00', 'khachhang', 'admin', 0),
('stevbros2306222325_15', '', '', '', '', '', '', '', '', '2014-06-24 03:25:57', 15, '45 PDUs for PgMP® Certificate Renewal lowest price', '', '', '', '', '55', 0, '2014-06-23 22:25:58', NULL, 'khachhang', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
