-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 26, 2013 at 04:16 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `dattiec_v2`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `config`
-- 

CREATE TABLE `config` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL default '',
  `slogan` varchar(100) default NULL,
  `domain` varchar(30) default NULL,
  `max_product` int(2) default NULL,
  `max_news` int(2) default NULL,
  `max_picture` int(2) default NULL,
  `max_video` int(2) default NULL,
  `footer` text,
  `contact` text,
  `contact_form` text NOT NULL,
  `email` varchar(100) default NULL,
  `yahoo` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
  `facebook` varchar(255) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `config`
-- 

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/dattiec_v2', 30, 10, 5, 6, 'Copyright © 2012-2017 by FOOD SAO VIET Co.,', 'Địa chỉ: 100A Nguyễn Đình Chính, Phường 15, Quận Phú Nhuận, Tp.HCM<br />         Điện thoại: (08) 399.006.12 <br />Email: info@dattiec.com', '<h1><span style="color:#FF0000;">Thông tin liên hệ</span></h1>\r\n\r\n<p style="font-size: 13px;"><strong>Địa chỉ:</strong>&nbsp;21 DCT 15, Khu phố 1, Tân Hưng, Q.12, HCM</p>\r\n\r\n<p style="font-size: 13px;"><strong>Phone:</strong>&nbsp;08. 344 344 - 0937 501 457</p>\r\n\r\n<p style="font-size: 13px;"><strong>Email:&nbsp;</strong>contact@thienphat.com</p>\r\n', 'support@thienphat.com', 'hieunhan112@gmail.com', '0908 687 510', '', 1, '2013-02-20 13:35:24', '2013-03-01 15:19:36', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `id` int(11) NOT NULL auto_increment,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `status` tinyint(1) default '0',
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` VALUES (1, '2013-09-26 14:40:05', '2013-09-26 14:40:05', 'Thông tin liên hệ Thông tin liên hệ', 'hieu_nhan1@yahoo.com', 'Trần Hiếu Nhân', '0988388003', 'Lê Đức Thọ , Gò Vấp', 0, 'khachhang', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `dathang`
-- 

CREATE TABLE `dathang` (
  `id` char(15) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `name_sp` varchar(200) NOT NULL,
  `link_sp` varchar(200) NOT NULL,
  `status` tinyint(1) default '0',
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `dathang`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `info`
-- 

CREATE TABLE `info` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `description` text,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=278 ;

-- 
-- Dumping data for table `info`
-- 

INSERT INTO `info` VALUES (270, 'Gỏi Mực Chua Cay', 'goi-muc-chua-cay', 'hinh-anh5.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst.', '<p>Tìm hiểu về Thiên Phát</p>\r\n', '2013-08-10 11:57:43', '2013-08-10 15:03:48', 1, 'Gỏi Mực Chua Cay', 1, 'en', ',3,9,8,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (273, 'Soup Tuyết Nhĩ Hải Sản', 'soup-tuyet-nhi-hai-san', 'hinh-anh4.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst.', '<p>Xem thông tin Cửa hàng</p>\r\n', '2013-08-12 16:16:11', '2013-08-12 15:26:15', 1, 'Soup Tuyết Nhĩ Hải Sản', 1, 'vi', ',3,12,6,8,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (274, 'Soup Bóng Cá Cua', 'soup-bong-ca-cua', 'hinh-anh1.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus.', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Địa chỉ: <span style="color:#B22222;"><strong>21 DCT 15, Khu phố 1, P.Tân Hưng Thuận, Q.12, TP.HCM</strong></span> &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp;Điện thoại: <span style="color:#008000;"><strong>&nbsp;0937 501 457</strong></span></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus.</p>\r\n', '2013-08-12 16:16:22', '2013-08-12 15:05:35', 1, 'Soup Bóng Cá Cua', 1, 'vi', ',3,11,5,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (259, 'Đặt tiệc. Nơi hội tụ tinh hoa Ẩm thực', 'dat-tiec-noi-hoi-tu-tinh-hoa-am-thuc', 'gioi-thieu-dat-tiec.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst.</h2>\r\n\r\n<p>Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna. Quisque placerat erat quis neque. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/dattiec_v2/public/images/articles/gioi-thieu-dat-tiec.jpg" style="width: 250px; height: 200px;" /></p>\r\n', '2013-07-15 13:58:14', '2013-07-15 16:11:37', 1, 'Đặt tiệc nơi hội tụ tinh hoa Ẩm thực', 0, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (271, 'Heo rừng nướng ngũ vị', 'tim-san-pham-ve-kinh', 'hinh-anh6.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst.', '<p>Tìm sản phẩm về Kính</p>\r\n', '2013-08-12 13:26:18', '2013-08-12 15:26:10', 1, 'Heo rừng nướng ngũ vị', 1, 'vi', ',3,12,6,8,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (272, 'Gà tiềm hạt sen', 'ga-tiem-hat-sen', 'hinh-anh3.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst.', '<p>Đặt hàng sản phẩm</p>\r\n', '2013-08-12 13:28:48', '2013-08-12 15:15:50', 1, 'Gà tiềm hạt sen', 1, 'vi', ',3,14,8,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (275, 'Lẩu hải sản', 'lau-hai-san', 'hinh-anh2.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst. ', '<p>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst.&nbsp;</p>\r\n', '2013-08-12 16:17:16', '2013-08-12 15:05:58', 1, 'Lẩu hải sản', 1, 'vi', ',3,13,5,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (276, 'Gỏi Bao Tử Tai Heo', 'chung-nhan-iso-2011', 'hinh-anh.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst. ', '<p>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst.&nbsp;</p>\r\n', '2013-08-12 16:17:24', '2013-08-12 15:26:20', 1, 'Gỏi Bao Tử Tai Heo', 1, 'vi', ',3,12,5,6,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (277, 'Tôm Rang Me', 'maecenas-sed-ante-in-hacei-haasse-dictumst', 'hinh-anh6.jpg', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst. ', '<h2>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst.&nbsp;</h2>\r\n', '2013-08-12 16:17:32', '2013-08-12 15:26:24', 1, 'Tôm Rang Me', 1, 'vi', ',3,15,5,6,', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `info_comment`
-- 

CREATE TABLE `info_comment` (
  `id` int(11) NOT NULL auto_increment,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '0',
  `info_alias` varchar(200) NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `info_comment`
-- 

INSERT INTO `info_comment` VALUES (1, '2013-05-23 10:28:34', '2013-05-23 10:28:36', 'nhan xet abc ', 'hieu@yahoo.com', 'Trần Nhân', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', NULL, 0);
INSERT INTO `info_comment` VALUES (2, '2013-05-23 11:36:11', '2013-05-23 11:36:11', 'Về phương diện đông y: Sim thuộc họ myrtaceae, có chứa nhiều chất sắt , có chức năng làm mát, giúp bổ huyết , giúp an thần , kích thích tiêu hóa ….', 'hieunhan112@gmail.com', 'Thu Thủy', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (3, '2013-05-23 11:37:48', '2013-05-23 11:37:48', 'Về cảm quan: sim có vị ngọt thanh nhẹ tự nhiên, màu sắc tím mang sự ấm áp lãng mạn.', 'hieu_nhan1@yahoo.com', 'Tran Van A', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (4, '2013-05-23 11:38:33', '2013-05-23 11:38:33', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (5, '2013-05-23 11:38:44', '2013-05-23 11:38:44', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (6, '2013-05-23 11:38:46', '2013-05-23 11:38:46', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (7, '2013-05-23 11:38:48', '2013-05-23 11:38:48', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (8, '2013-05-23 11:38:51', '2013-05-23 11:38:51', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (9, '2013-05-23 11:38:53', '2013-05-23 11:38:53', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (10, '2013-05-23 11:38:55', '2013-05-23 11:38:55', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (11, '2013-05-23 11:38:58', '2013-05-23 11:38:58', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (12, '2013-05-23 11:39:01', '2013-05-23 11:39:01', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày.', 'hieu_nhan111@yahoo.com', 'Tran van B', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (13, '2013-05-23 11:41:11', '2013-05-23 11:41:11', 'Tại sao than hoạt tính lại lọc được chất bẩn trong nước', 'hieu_nhan111@yahoo.com', 'Tran Van C', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (14, '2013-05-23 11:41:56', '2013-05-23 11:41:56', 'Nhưng có lẻ rất ít ai biết được công dụng của quả sim tím này mang lại cho chúng ta trong đời sống hàng ngày. sdsdsd', 'hieu_nhan1111@yahoo.com', 'Tran Van D', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (15, '2013-05-23 12:14:39', '2013-05-23 12:14:39', 'sjfhsikhfs s fs fs f', 'hieunhan112@gmail.com', 'tran nhan', 1, 'dac-diem-ruou-sim-phu-quoc', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (16, '2013-05-23 12:24:13', '2013-05-23 12:24:13', 'ajhsaklh sa sa s a', 'hieu_nhan1@yahoo.com', 'Trần Hiếu Nhân', 1, 'than-hoat-tinh-gia-re', 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (17, '2013-05-23 12:43:40', '2013-05-23 12:43:40', 'asasasa', 'hieu_nhan111@yahoo.com', 'asas', 1, 'than-hoat-tinh-gia-re', 'khachhang', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `language`
-- 

CREATE TABLE `language` (
  `idLang` int(3) NOT NULL auto_increment,
  `MoTa` varchar(20) NOT NULL,
  `file` varchar(10) NOT NULL,
  `ThuTu` int(3) default '0',
  `AnHien` tinyint(1) default '1',
  PRIMARY KEY  (`idLang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `language`
-- 

INSERT INTO `language` VALUES (1, 'Việt Nam', 'vi', 0, 1);
INSERT INTO `language` VALUES (2, 'English', 'en', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `menu`
-- 

CREATE TABLE `menu` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `parent_id` int(3) default '0',
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  `title` varchar(200) default NULL,
  `metaDescription` varchar(250) default NULL,
  `metaKeyword` varchar(150) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `type_id` int(1) default NULL,
  `position_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'trang-chu', 'http://localhost/all/dattiec_v2', '', '2013-08-09 17:21:05', '2013-08-09 11:44:59', 0, 1, 1, 'Thien Phat Glass', 'Thien Phat Glass', 'Thien Phat Glass', 0, 'vi', 1, ',2,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', '2013-08-09 17:21:29', '2013-08-09 15:25:48', 0, 2, 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 'vi', 2, ',2,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (3, 'Thực đơn mặn', 'thuc-don-man', 'thuc-don-man/', '', '2013-08-09 17:21:52', '2013-08-09 15:25:56', 0, 3, 1, 'Thực đơn mặn', 'Thực đơn mặn', 'Thực đơn mặn', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (4, 'Thực đơn chay', 'thuc-don-chay', 'thuc-don-chay/', '', '2013-08-09 17:23:09', '2013-08-09 12:12:53', 0, 4, 1, 'Thực đơn chay', 'Thực đơn chay', 'Thực đơn chay', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (5, 'Món ăn bài thuốc', 'mon-an-bai-thuoc', 'mon-an-bai-thuoc/', '', '2013-08-09 17:23:27', '2013-08-09 14:25:14', 0, 5, 1, 'Món ăn bài thuốc', 'Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse dictumst.', 'Món ăn bài thuốc', 0, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (6, 'Thông tin món ăn', 'thong-tin-mon-an', 'thong-tin-mon-an/', '', '2013-08-30 17:19:51', '2013-08-30 15:14:50', 0, 6, 1, 'Thông tin món ăn', 'Thông tin món ăn', 'Thông tin món ăn', 1, NULL, 2, ',2,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (7, 'Liên hệ', 'lien-he', 'lien-he/', '', '2013-08-30 17:20:15', '2013-08-30 14:30:25', 0, 7, 1, 'Thông tin liên hệ', 'Liên hệ', 'Liên hệ', 0, NULL, 7, ',2,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (8, 'Về đặt tiệc', 've-dat-tiec', 've-dat-tiec/', '', '2013-08-30 17:53:00', '2013-08-30 15:51:54', 0, 100, 0, 'Về đặt tiệc', 'Về đặt tiệc', 'Về đặt tiệc', 0, NULL, 1, ',', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Món khai vị', 'mon-khai-vi', 'mon-khai-vi/', '', '2013-09-06 12:16:33', '2013-09-06 12:18:50', 3, 0, 1, 'Món khai vị', 'Món khai vị', 'Món khai vị', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (10, 'Món gỏi', 'mon-goi', 'mon-goi/', '', '2013-09-06 12:17:26', '2013-09-06 12:18:54', 3, 0, 1, 'Món gỏi', 'Món gỏi', 'Món gỏi', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (16, 'Món cơm - Mì', 'mon-com-mi', 'mon-com-mi/', '', '2013-09-26 16:12:54', '2013-09-26 16:12:54', 3, 0, 1, 'Món cơm - Mì', 'Món cơm - Mì', 'Món cơm - Mì', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (11, 'Món soup', 'mon-soup', 'mon-soup/', '', '2013-09-06 12:18:14', '2013-09-06 12:18:58', 3, 0, 1, 'Món soup', 'Món soup', 'Món soup', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (12, 'Món heo', 'mon-heo', 'mon-heo/', '', '2013-09-06 12:18:35', '2013-09-06 12:19:03', 3, 0, 1, 'Món heo', 'Món heo', 'Món heo', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (13, 'Món bò', 'mon-bo', 'mon-bo/', '', '2013-09-06 12:19:02', '2013-09-06 12:19:08', 3, 0, 1, 'Món bò', 'Món bò', 'Món bò', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (14, 'Món gà - vịt', 'mon-ga-vit', 'mon-ga-vit/', '', '2013-09-06 12:19:19', '2013-09-06 16:12:27', 3, 0, 1, 'Món gà - vịt', 'Món gà - vịt', 'Món gà - vịt', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (15, 'Món tôm', 'mon-tom', 'mon-tom/', '', '2013-09-26 12:16:10', '2013-09-26 12:19:15', 3, 0, 1, 'Món tôm', 'Món tôm', 'Món tôm', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (17, 'Món lẩu', 'mon-lau', 'mon-lau/', '', '2013-09-26 16:13:06', '2013-09-26 16:13:06', 3, 0, 1, 'Món lẩu', 'Món lẩu', 'Món lẩu', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (18, 'Món tráng miệng', 'mon-trang-mieng', 'mon-trang-mieng/', '', '2013-09-26 16:13:19', '2013-09-26 16:13:19', 3, 0, 1, 'Món tráng miệng', 'Món tráng miệng', 'Món tráng miệng', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (19, 'Món chay miền Bắc', 'mon-chay-mien-bac', 'mon-chay-mien-bac/', '', '2013-09-26 16:13:54', '2013-09-26 16:13:54', 4, 0, 1, 'Món chay miền Bắc', 'Món chay miền Bắc', 'Món chay miền Bắc', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (20, 'Món chay miền Nam', 'mon-chay-mien-nam', 'mon-chay-mien-nam/', '', '2013-09-26 16:14:03', '2013-09-26 16:14:03', 4, 0, 1, 'Món chay miền Nam', 'Món chay miền Nam', 'Món chay miền Nam', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (21, 'Món chay miền Trung', 'mon-chay-mien-trung', 'mon-chay-mien-trung/', '', '2013-09-26 16:14:13', '2013-09-26 16:14:13', 4, 0, 1, 'Món chay miền Trung', 'Món chay miền Trung', 'Món chay miền Trung', 0, NULL, 2, ',2,3,', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `menu_admin`
-- 

CREATE TABLE `menu_admin` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `menu_admin`
-- 

INSERT INTO `menu_admin` VALUES (1, 'Trang chủ', 'home', NULL, 1, 1, 0);
INSERT INTO `menu_admin` VALUES (2, 'Cấu hình website', 'config', NULL, 2, 1, 0);
INSERT INTO `menu_admin` VALUES (3, 'Menu', 'menu', NULL, 3, 1, 0);
INSERT INTO `menu_admin` VALUES (4, 'Thông tin, bài viết', 'info', NULL, 4, 1, 0);
INSERT INTO `menu_admin` VALUES (5, 'Thông tin, bài viết bình luận', 'info_comment', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (6, 'Sản phẩm', 'products', NULL, 5, 0, 1);
INSERT INTO `menu_admin` VALUES (7, 'Sản phẩm bình luận', 'product_comment', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (8, 'Thư viện ảnh Xe Cổ', 'info_image', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (9, 'Đơn hàng', 'order', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (10, 'Hỏi - Đáp', 'question', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (11, 'Hình ảnh', 'photo_gallery', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (12, 'Slider', 'slider_banner', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (13, 'Khách hàng liên hệ', 'contact', NULL, 7, 1, 0);
INSERT INTO `menu_admin` VALUES (14, 'Đặt hàng', 'dathang', NULL, 8, 1, 0);
INSERT INTO `menu_admin` VALUES (15, 'Tài khoản', 'users', NULL, 100, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `menu_position`
-- 

CREATE TABLE `menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `menu_position`
-- 

INSERT INTO `menu_position` VALUES (1, 'Top', 1);
INSERT INTO `menu_position` VALUES (2, 'Main', 0);
INSERT INTO `menu_position` VALUES (3, 'Left', 0);
INSERT INTO `menu_position` VALUES (4, 'Right', 1);
INSERT INTO `menu_position` VALUES (5, 'Bottom', 1);
INSERT INTO `menu_position` VALUES (6, 'Không', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `menu_type`
-- 

CREATE TABLE `menu_type` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `menu_type`
-- 

INSERT INTO `menu_type` VALUES (1, 'Không', 0);
INSERT INTO `menu_type` VALUES (2, 'Thông tin, bài viết', 0);
INSERT INTO `menu_type` VALUES (3, 'Sản phẩm, dịch vụ', 0);
INSERT INTO `menu_type` VALUES (4, 'Library', 1);
INSERT INTO `menu_type` VALUES (5, 'Hình ảnh', 1);
INSERT INTO `menu_type` VALUES (6, 'Video', 1);
INSERT INTO `menu_type` VALUES (7, 'Liên hệ', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `slider_banner`
-- 

CREATE TABLE `slider_banner` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `info` text NOT NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) default NULL,
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (1, 'Slider 1', 'slide.jpg', 'javascript:;', '2013-09-26 11:54:49', '2013-09-26 16:14:50', '', 1, NULL, 1, ',1,2,3,9,17,15,14,13,12,11,16,10,18,4,19,20,21,5,6,7,8,', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `slider_banner_position`
-- 

CREATE TABLE `slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `slider_banner_position`
-- 

INSERT INTO `slider_banner_position` VALUES (1, 'Slider 870x230 px', 0);
INSERT INTO `slider_banner_position` VALUES (2, 'Right', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `quyen_xem` varchar(200) NOT NULL,
  `quyen_action` varchar(200) NOT NULL,
  `idGroup` int(11) default '0',
  `Active` tinyint(1) default '1',
  `RandomKey` varchar(255) default NULL,
  `LoginNumber` int(11) default '0',
  `DisableDate` datetime default NULL,
  `Expiration` int(11) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,12,13,14,15,', ',1,2,3,4,6,12,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `users_group`
-- 

CREATE TABLE `users_group` (
  `idGroup` int(2) NOT NULL auto_increment,
  `MoTa` varchar(50) NOT NULL,
  PRIMARY KEY  (`idGroup`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `users_group`
-- 

INSERT INTO `users_group` VALUES (1, 'Quản trị web site');
INSERT INTO `users_group` VALUES (2, 'Thành viên');
INSERT INTO `users_group` VALUES (3, 'null');

-- --------------------------------------------------------

-- 
-- Table structure for table `video`
-- 

CREATE TABLE `video` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link_video` varchar(250) default NULL,
  `description` text,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `video`
-- 

INSERT INTO `video` VALUES (2, 'Vietnamese Cuisine Part 1', 'vietnamese-cuisine-part-1', 'Vietnamese-Cuisine-1.jpg', 'http://www.youtube.com/embed/UjOZRdO-KQk', 'Vietnamese Cuisine Part 1', '', '2012-12-13 00:00:00', '2012-12-13 10:56:26', 1, 'Vietnamese Cuisine Part 1', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (3, 'Vietnamese Cuisine Part 2', 'vietnamese-cuisine-part-2', 'Vietnamese-Cuisine-2.jpg', 'http://www.youtube.com/embed/uwEPzyHyQF8', 'Vietnamese Cuisine Part 2', '', '2012-12-13 00:00:00', '2012-12-13 10:56:41', 1, 'Vietnamese Cuisine Part 2', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (4, 'Vietnamese Cuisine Part 3', 'vietnamese-cuisine-part-3', 'Vietnamese-Cuisine-3.jpg', 'http://www.youtube.com/embed/Ev_tBCwKZng', 'Vietnamese Cuisine Part 3', '', '2012-12-13 00:00:00', '2012-12-13 10:57:15', 1, 'Vietnamese Cuisine Part 3', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (5, 'Vietnamese Cuisine Part 4', 'vietnamese-cuisine-part-4', 'Vietnamese-Cuisine-4.jpg', 'http://www.youtube.com/watch?v=IY8wJD3RdY0', 'Vietnamese Cuisine Part 4', '', '2012-12-13 00:00:00', '2012-12-13 10:58:50', 1, 'Vietnamese Cuisine Part 4', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (6, 'Vietnamese Cuisine Part 5', 'vietnamese-cuisine-part-5', 'Vietnamese-Cuisine-5.jpg', 'http://www.youtube.com/watch?v=X4tDkxC7MXo', 'Vietnamese Cuisine Part 5', '', '2012-12-13 00:00:00', '2012-12-13 10:58:55', 1, 'Vietnamese Cuisine Part 5', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (7, 'Vietnamese Cuisine Part 6', 'vietnamese-cuisine-part-6', 'Vietnamese-Cuisine-6.jpg', 'http://www.youtube.com/watch?v=TtQO4BBermU', 'Vietnamese Cuisine Part 6', '', '2012-12-13 00:00:00', '2012-12-13 10:59:00', 1, 'Vietnamese Cuisine Part 6', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (8, 'Diễn Viên- Trương Minh Cường học nấu ăn tại Trường NetSpace.', 'Dien-Vien-Truong-Minh-Cuong-Hoc-Nau-An-Tai-Truong-Netspace', 'dien-vien-truong-minh-cuong-tai-truong-netspace.jpg', 'http://www.youtube.com/embed/HzPkh9oBPvI', 'Diễn Viên - Trương Minh Cường học nấu ăn tại Trường NetSpace.', '', '2012-12-20 00:00:00', '2012-12-20 11:05:08', 1, 'Diễn Viên Trương Minh Cường, học nấu ăn tại Trường NetSpace.', 0, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (9, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', 'lang-kinh-nghe-nghiep-danh-thuc-tai-nang-viet-phan-1', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-1.jpg', 'http://www.youtube.com/embed/5NEYiKjiWNs', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', '', '2012-12-03 00:00:00', '2012-12-18 10:59:31', 1, 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (10, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2.jpg', 'http://www.youtube.com/embed/AOZfx_1Jf_I', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', '', '2012-12-03 00:00:00', '2012-12-18 10:59:37', 1, 'Lăng kính nghề nghiệp,Đánh thức tài năng Việt', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (11, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3.jpg', 'http://www.youtube.com/embed/CrgaA-pKahA', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', '', '2012-12-03 00:00:00', '2012-12-18 10:59:42', 1, 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (12, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4.jpg', 'http://www.youtube.com/embed/xvuCdlYOTns', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', '', '2012-12-03 00:00:00', '2012-12-18 10:59:45', 1, 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (13, 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', 'Hoc-Vien-Hoc-Nau-An-Tai-Truong-Netspace-Tham-Gia-Ky-Luc-Cac-Mon-Cuon-Viet-Nam', 'lien-hoan-cac-mon-cuon-viet-nam.jpg', 'http://www.youtube.com/embed/HVZ94TWPI60', 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', '', '2012-12-25 00:00:00', '2012-12-25 11:04:38', 1, 'Học viên, học nấu ăn, tại trường NetSpace,kỷ lục các món cuốn Việt Nam', 0, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (14, 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace.jpg', 'http://www.youtube.com/embed/6QzKTBIKSDU', 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', '', '2013-01-07 00:00:00', '2013-01-07 11:03:39', 1, 'Chef Norbert Ehrbar, Dạy Nấu Ăn, tại Trường NetSpace', 0, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (15, 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', 'Hoc-Vien-Truong-Netspace-Hoc-Nau-An-Voi-Thay-Do-Quang-Long', 'Sieu-Dau-Bep-Do-Quang-Long-Huong-Dan-Kinh-Nghiem-Lam-Bep-Thanh-Cong-10-01-2013.jpg', 'http://www.youtube.com/embed/0xk5KON_5W8', 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', '', '2013-01-11 00:00:00', '2013-01-11 11:03:14', 1, 'Học viên trường NetSpace, học nấu ăn với thầy Đỗ Quang Long', 0, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (16, 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An.jpg', 'http://www.youtube.com/embed/ETL1u-EsUbU', '', '', '2013-01-24 00:00:00', '2013-01-24 02:59:31', 0, 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 1, 'vi', ',73,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (17, 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace.png', 'http://www.youtube.com/embed/lgogLzkOVAY', 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', '', '2013-02-04 00:00:00', '2013-02-04 11:02:20', 1, 'Tiệc Tất Niên 2013, trường ẩm thực NETSPACE', 0, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (18, 'Hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/s5j9JgNiOyE', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', '', '2013-02-06 00:00:00', '2013-02-06 11:01:51', 1, 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',74,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (19, 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/plS-81GTQC8', 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', '', '2013-03-25 00:00:00', '2013-03-25 08:15:14', 1, 'Học nấu ăn, các món Âu, trường dạy nghề ẩm thực NETSPACE', 0, 'vi', ',76,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (20, 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/R7eDXCAHapw', 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', '', '2013-03-25 00:00:00', '2013-03-25 08:15:19', 1, 'Học nấu ăn, các món Hoa, tại trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',76,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (21, 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban.jpg', 'http://www.youtube.com/embed/h66cbZuVux4', 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', '', '2013-04-12 00:00:00', '2013-04-12 11:00:48', 1, 'Học nấu ăn,Dạy nướng Teppanyaki Nhật Bản ', 1, 'vi', ',72,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (22, 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 'day-pha-che-barrista-bartender-truong-day-pha-che-netspace', 'Hoc-Nau-An-Worlds-Best-Bartender.jpg', 'http://www.youtube.com/embed/T8rtIXLcdtE', 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', '', '2013-04-14 00:00:00', '2013-04-14 08:12:35', 1, 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 1, 'vi', ',72,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (23, 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep.jpg', 'http://www.youtube.com/embed/v12mC_vyKo4', '', '', '2013-04-25 00:00:00', '2013-04-25 02:58:29', 1, 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 1, 'vi', ',73,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (24, 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An.jpg', 'http://www.youtube.com/embed/u3nJRno992Q', '', '', '2013-04-25 00:00:00', '2013-04-25 00:47:50', 1, 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 1, 'vi', ',73,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (25, 'Kinh doanh quán ăn nhỏ', 'kinh-doanh-quan-an-nho', 'kinh-doanh-quan-an-nho.jpg', 'http://www.youtube.com/embed/UxxGOQDvK4I', 'Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><img alt="Kinh doanh quán ăn nhỏ" src="/upload/images/video/kinh-doanh-quan-an-nho.jpg" style="line-height: 1.6em; width: 550px; height: 385px;" /></p>\r\n\r\n<p style="text-align: center;"><em><strong>Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE</strong></em></p>\r\n', '2013-06-08 10:37:14', '2013-06-08 10:37:14', 1, 'Kinh doanh quán ăn nhỏ', 0, NULL, ',34,', 'admin', NULL, 0);
INSERT INTO `video` VALUES (26, 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', 'hoc-nau-an-nuong-teppanyaky-nhat-ban', 'hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg', 'http://www.youtube.com/embed/VRCHwpu1Lgc', 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><strong>Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="Học nấu ăn, Nướng TEPPANYAKY Nhật Bản" src="/upload/images/video/hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg" style="width: 550px; height: 354px;" /></strong></p>\r\n', '2013-06-10 08:19:08', '2013-06-10 08:20:27', 1, 'Học nấu ăn, Nướng TEPPANYAKY Nhật Bản,Nướng TEPPANYAKY', 0, NULL, ',72,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (27, 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap-day-nau-an', 'sieu-dau-bep-nguyen-van-lap-day-nau-an.png', 'http://www.youtube.com/embed/28oIxsPN4Xo', 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', '', '2013-06-14 08:18:27', '2013-06-14 08:24:49', 1, 'Siêu đầu bếp Nguyễn Văn Lập, Dạy nấu ăn', 0, NULL, ',34,', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (28, 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an.png', 'http://www.youtube.com/embed/I21HhBkv6jU', 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', '<p style="text-align: center;"><img alt="Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn" src="/upload/images/video/sieu-dau-bep-le-vo-anh-duy-day-nau-an.png" style="width: 455px; height: 315px;" /></p>\r\n', '2013-06-14 08:21:11', '2013-06-14 08:21:11', 1, 'Siêu đầu bếp Lê Võ Anh Duy,Dạy nấu ăn', 0, NULL, ',34,', 'admin', NULL, 0);
INSERT INTO `video` VALUES (29, 'Video Clip Hoạt Động Dã Ngoại NetSpace 18/07/2013', 'video-clip-hoat-dong-da-ngoai-netspace-18-07-2013', 'ngay-vui-da-ngoai-cua-truong-am-thuc-netspace-27.jpg', 'http://www.youtube.com/embed/9-O_VXSRvEw', 'Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.', '<h2 style="margin: 0px; font-size: 13px; line-height: 22px; font-family: Arial, Helvetica, sans-serif;">Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.</h2>\r\n', '2013-08-01 15:19:12', '2013-08-01 15:35:46', 1, 'Hoạt động dã ngoại Trường Ẩm Thực NetSpace', 1, NULL, ',74,', 'chau', 'chau', 0);
