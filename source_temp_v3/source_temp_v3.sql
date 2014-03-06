-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 06, 2014 at 10:13 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `source_temp_v3`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `web_config`
-- 

CREATE TABLE `web_config` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL default '',
  `domain` varchar(30) default NULL,
  `max_limit_1` int(2) default NULL,
  `max_limit_2` int(2) default NULL,
  `max_limit_3` int(2) default NULL,
  `max_limit_4` int(2) default NULL,
  `copyright` varchar(250) default NULL,
  `contact_foo` text,
  `contact_form` text NOT NULL,
  `email` varchar(100) default NULL,
  `yahoo` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
  `hotline` varchar(50) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_config`
-- 

INSERT INTO `web_config` VALUES (1, 'Việt Nam', 'vi', 'localhost/all/source_temp', 10, 10, 10, 10, 'Copyright © 2014', '', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2013-03-01 16:18:00', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', 'localhost/all/source_temp', 10, 10, 10, 10, 'Copyright © 2014', '', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-08-10 10:09:29', '2013-08-10 15:35:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_contact`
-- 

CREATE TABLE `web_contact` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `web_contact`
-- 

INSERT INTO `web_contact` VALUES (1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 8', '<p>1111111111111111</p>\r\n', 'vi', 0, '2014-03-04 14:37:30', '2014-03-04 14:37:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_info`
-- 

CREATE TABLE `web_info` (
  `id` int(11) NOT NULL auto_increment,
  `menu_id` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` varchar(250) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (1, ',5,7,', 'Trần Nhân', 'mo-ta', 'ca-phe-cafe-collagen-2-zero-duoc-ban-khap-hoa-ky-va-canada.jpg', 'Tóm tắt', 'Mô tả,mo ta', '<p>nội dung</p>\r\n', 0, 'vi', 1, '2014-03-01 12:29:36', '2014-03-04 12:29:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_info_cm`
-- 

CREATE TABLE `web_info_cm` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `info_alias` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `web_info_cm`
-- 

INSERT INTO `web_info_cm` VALUES (1, 'Trần Nhân', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', NULL, 0);
INSERT INTO `web_info_cm` VALUES (2, 'Thu Thủy', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (3, 'Tran Van A', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (4, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (5, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (6, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (7, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (8, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (9, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (10, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (11, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (12, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (13, 'Tran Van C', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (14, 'Tran Van D', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (15, 'tran nhan', '', '', 'dac-diem-ruou-sim-phu-quoc', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (16, 'Trần Hiếu Nhân', '', '', 'than-hoat-tinh-gia-re', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);
INSERT INTO `web_info_cm` VALUES (17, 'asas', '', '', 'than-hoat-tinh-gia-re', 'vi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'khachhang', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_language`
-- 

CREATE TABLE `web_language` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `ma` varchar(10) NOT NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_language`
-- 

INSERT INTO `web_language` VALUES (1, 'Việt Nam', 'vi', 1, 1);
INSERT INTO `web_language` VALUES (2, 'English', 'en', 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu`
-- 

CREATE TABLE `web_menu` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(100) default NULL,
  `title` varchar(150) NOT NULL,
  `metaDescription` varchar(250) NOT NULL,
  `metaKeyword` varchar(150) NOT NULL,
  `parent_id` int(3) NOT NULL,
  `type_id` int(1) NOT NULL,
  `position_id` varchar(10) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `other` tinyint(1) default '0',
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', 'trang-chu/', '', 'Trang chủ ', 'Trang chủ', 'Trang chủ ', 0, 1, ',1,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2014-03-03 16:02:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (2, 'Trang chủ giới thiệu', 'trang-chu-gioi-thieu', 'trang-chu-gioi-thieu/', '', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 1, 2, ',8,', 'vi', 0, 0, 1, '2013-10-09 15:38:02', '2014-03-03 16:22:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (3, 'Trang chủ sản phẩm', 'trang-chu-san-pham', 'trang-chu-san-pham/', '', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm,trang chu san pham', 1, 10, ',1,', 'vi', 0, 0, 1, '2013-10-09 15:38:25', '2014-03-04 11:30:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (4, 'Trang chủ liên hệ', 'trang-chu-lien-he', 'trang-chu-lien-he/', 'hinhanh.jpg', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 1, 10, ',1,', 'vi', 0, 0, 1, '2013-10-09 15:38:38', '2014-03-04 15:08:14', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',1,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2014-03-04 15:08:16', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 3, ',1,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2014-03-04 15:08:17', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (7, 'Thông tin, bài viết', 'thong-tin-bai-viet', 'thong-tin-bai-viet/', '', 'Thông tin, bài viết', 'Thông tin, bài viết', 'Thông tin, bài viết', 0, 2, ',1,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2014-03-03 16:02:57', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 0, 2, ',1,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 15:40:21', 'admin', '', 0);
INSERT INTO `web_menu` VALUES (9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 9, ',1,', 'vi', 0, 6, 1, '2013-10-09 15:40:52', '2014-03-04 13:21:47', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_admin`
-- 

CREATE TABLE `web_menu_admin` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `web_menu_admin`
-- 

INSERT INTO `web_menu_admin` VALUES (1, 'Trang chủ', 'home', 'icon-home', 1, 1);
INSERT INTO `web_menu_admin` VALUES (2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1);
INSERT INTO `web_menu_admin` VALUES (3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 1);
INSERT INTO `web_menu_admin` VALUES (4, 'Thông tin, bài viết', 'web_info', 'icon-info.jpg', 4, 1);
INSERT INTO `web_menu_admin` VALUES (5, 'Item 5', '', 'icon-product.jpg', 5, 0);
INSERT INTO `web_menu_admin` VALUES (6, 'Item 6', '', 'icon-item.jpg', 6, 0);
INSERT INTO `web_menu_admin` VALUES (7, 'Item 7', '', 'icon-item.jpg', 7, 0);
INSERT INTO `web_menu_admin` VALUES (8, 'Item 8', '', 'icon-item.jpg', 8, 0);
INSERT INTO `web_menu_admin` VALUES (9, 'Item 9', '', 'icon-item.jpg', 9, 0);
INSERT INTO `web_menu_admin` VALUES (10, 'Item 10', '', 'icon-item.jpg', 10, 0);
INSERT INTO `web_menu_admin` VALUES (11, 'Item 11', '', 'icon-item.jpg', 11, 0);
INSERT INTO `web_menu_admin` VALUES (12, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 12, 1);
INSERT INTO `web_menu_admin` VALUES (13, 'Đăng ký trực tuyến', 'web_register', 'icon-register.jpg', 13, 0);
INSERT INTO `web_menu_admin` VALUES (14, 'Liên hệ', 'web_contact', 'icon-contact.jpg', 14, 1);
INSERT INTO `web_menu_admin` VALUES (15, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_position`
-- 

CREATE TABLE `web_menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `web_menu_position`
-- 

INSERT INTO `web_menu_position` VALUES (1, 'Main', 1);
INSERT INTO `web_menu_position` VALUES (2, 'Top', 0);
INSERT INTO `web_menu_position` VALUES (3, 'Bottom', 1);
INSERT INTO `web_menu_position` VALUES (4, 'Left', 0);
INSERT INTO `web_menu_position` VALUES (5, 'Right', 1);
INSERT INTO `web_menu_position` VALUES (6, 'Social', 1);
INSERT INTO `web_menu_position` VALUES (7, 'Item 7', 0);
INSERT INTO `web_menu_position` VALUES (8, 'Không', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_type`
-- 

CREATE TABLE `web_menu_type` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `web_menu_type`
-- 

INSERT INTO `web_menu_type` VALUES (1, 'Trang chủ', 1);
INSERT INTO `web_menu_type` VALUES (2, 'Thông tin, bài viết', 1);
INSERT INTO `web_menu_type` VALUES (3, 'Loại temp 0', 0);
INSERT INTO `web_menu_type` VALUES (4, 'Loại temp 1', 0);
INSERT INTO `web_menu_type` VALUES (5, 'Loại temp 2', 0);
INSERT INTO `web_menu_type` VALUES (6, 'Loại temp 3', 0);
INSERT INTO `web_menu_type` VALUES (7, 'Hình ảnh', 1);
INSERT INTO `web_menu_type` VALUES (8, 'Video', 1);
INSERT INTO `web_menu_type` VALUES (9, 'Liên hệ', 1);
INSERT INTO `web_menu_type` VALUES (10, 'Không', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_photo_gallery`
-- 

CREATE TABLE `web_photo_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `menu_id` varchar(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

-- 
-- Dumping data for table `web_photo_gallery`
-- 

INSERT INTO `web_photo_gallery` VALUES (1, '', 'Học viên trường NETSPACE dã ngoại KDL Văn Thánh', 'da-ngoai-o-van-thanh.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (2, '', 'Giao lưu với hội đầu bếp Tỉnh Lâm Đồng', 'giao-luu-voi-hoi-dau-bep-tinh-lam-dong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3, '', 'Giao lưu với Mà Sáu', 'giao-luu-voi-ma-sau.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (4, '', 'Giao lưu với Siêu đầu bếp Đỗ Quang Long', 'giao-luu-voi-sieu-dau-bep-do-quang-long.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (5, '', 'Giao lưu với Siêu đầu bếp Dương Huy Khải', 'giao-luu-voi-sieu-dau-bep-duong-huy-khai.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (6, '', 'Trương Minh Cường học làm bánh kem', 'giao-luu-voi-truong-minh-cuong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (7, '', 'Học làm bánh kem', 'hoc-lam-banh-kem.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (8, '', 'Học vịt quay', 'hoc-vit-quay.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (9, '', 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'ky-ket-hop-tac-involution-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (10, '', 'Ký kết hợp tác với Evolution Institute', 'ky-ket-hop-tac-involution.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (11, '', 'Kỷ lục gỏi cuốn VN', 'ky-luc-goi-cuon.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (12, '', 'Lưu niệm kỷ lục gỏi cuốn VN 2012', 'luu-niem-ky-luc-goi-cuon-2012.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (13, '', 'Lưu niệm khóa Bếp Việt K2', 'luu-niem-khoa-bep-viet-k2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (14, '', 'Giao lưu với Siêu đầu bếp Davil Thái', 'sieu-dau-bep-davil-thai-truyen-dat-kinh-nghiem-nau-an.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (15, '', 'Siêu đầu bếp Nguyễn Văn Lập dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (16, '', 'Trương Minh Cường học làm bánh kem tại trường NETSPACE', 'truong-minh-cuong-hoc-nau-an-truong-netspace.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (17, '', 'Thức uống độc đáo 1', 'thuc-uong-doc-dao-1.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (18, '', 'Thức uống độc đáo 2', 'thuc-uong-doc-dao-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (19, '', 'Thức uống độc đáo 3', 'thuc-uong-doc-dao-3.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (20, '', 'Thức uống độc đáo 4', 'thuc-uong-doc-dao-4.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (21, '', 'Thức uống độc đáo 5', 'thuc-uong-doc-dao-5.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (22, '', 'Thức uống độc đáo 6', 'thuc-uong-doc-dao-6.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (23, '', 'Thức uống độc đáo 7', 'thuc-uong-doc-dao-7.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (24, '', 'Thức uống độc đáo 8', 'thuc-uong-doc-dao-8.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (25, '', 'Thức uống độc đáo 9', 'thuc-uong-doc-dao-9.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (26, '', 'Thức uống độc đáo 10', 'thuc-uong-doc-dao-10.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (27, '', 'Thức uống độc đáo 11', 'thuc-uong-doc-dao-11.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (28, '', 'Thức uống độc đáo 12', 'thuc-uong-doc-dao-12.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (29, '', 'Thức uống độc đáo 13', 'thuc-uong-doc-dao-13.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (30, '', 'Giao lưu với Siêu đầu bếp Davil Thái', 'giao-luu-voi-dieu-dau-bep-davil-thai-k4.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (31, '', 'Kỷ lục gỏi cuốn VN năm 2012', 'ky-luc-goi-cuon-vn-2012-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (32, '', 'Kỷ lục gỏi cuốn VN năm 2012 - Phỏng vấn', 'ky-luc-goi-cuon-vn-2012-3.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (33, '', 'Cơm tấm sườn bì chả - Thầy Toàn', 'com-tam-suon-bi-cha-thay-toan.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (34, '', 'Bánh xèo', 'banh-xeo.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (35, '', 'Bún bò Huế', 'bun-bo-hue.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (36, '', 'Bún riêu', 'bun-rieu.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (37, '', 'Bún thịt nướng', 'bun-thit-nuong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (38, '', 'Cá chẻm sốt cam', 'ca-chem-sot-cam.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (39, '', 'Cá cơm chiên giòn', 'Ca-com-chien-gion.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (40, '', 'Cá điêu hồng sốt cam', 'Ca-dieu-hong-sot-cam.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (41, '', 'Cá rô kho tộ - Thầy Duy', 'ca-ro-kho-to-thay-duy.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (42, '', 'Cá tai tượng chiên xù', 'ca-tai-tuong-chien-xu.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (43, '', 'Bò nướng xiên', 'bo-nuong-xien.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (44, '', 'Chả ốc lá nốt', 'cha-oc-la-not.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (45, '', 'Cháo cà miền Tây - Thầy Duy', 'Chao-ca-mien-tay-thay-duy.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (46, '', 'Cháo gà xé phay - Thầy Duy', 'Chao-ga-xe-phay-thay-duy.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (47, '', 'Cơm gà xối mỡ', 'Com-ga-xoi-mo.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (48, '', 'Bò nướng ống tre', 'bo-nuong-ong-tre.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (49, '', 'Bao tử hầm tiêu', 'bao-tu-ham-tieu.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (50, '', 'Bánh hỏi thịt nướng', 'banh-hoi-thit-nuong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (51, '', 'Cơm chiên ngũ sắc', 'Com-chien-ngu-sac.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (52, '', 'Chả giò bánh bía - Cô Thu', 'cha-gio-banh-bia-co-thu.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (53, '', 'Chả cá Lã Vọng', 'Cha-ca-LA-Vong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (54, '', 'Bông bí dòn thịt', 'Bong-bi-don-thit.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (55, '', 'Canh chua cá bông lau - Thầy Duy', 'canh-chua-ca-bong-lau-thay-duy.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (56, '', 'Lớp bánh - Bánh choux Eclair', 'lop-banh-Banh-choux-Eclair-3.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (57, '', 'Ham T', 'ham-t.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (58, '', 'Seafood C', 'seafood-c.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (59, '', 'Lớp bánh - Bánh choux Eclair 2', 'lop-banh-Banh-choux-Eclair-5.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (60, '', 'Ham C', 'ham-c.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (61, '', 'Lớp bánh - Bánh choux Eclair 3', 'lop-banh-Banh-choux-Eclair-4.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (62, '', 'Lớp bánh - Bánh choux Eclair 4', 'lop-banh-Banh-choux-Eclair-3.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (63, '', 'Seafood T', 'seafood-t.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (64, '', 'Lớp bánh - Bánh choux Eclair 5', 'lop-banh-Banh-choux-Eclair-1.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (65, '', 'Hội đầu bếp CN Sài Gòn  1', 'hoi-dau-bep-cn-saigon-1.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (66, '', 'Hội đầu bếp CN Sài Gòn 2', 'hoi-dau-bep-cn-saigon-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (67, '', 'Hội đầu bếp CN Sài Gòn 3', 'hoi-dau-bep-cn-saigon-3.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (68, '', 'Hội đầu bếp CN Sài Gòn 4', 'hoi-dau-bep-cn-saigon-4.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (69, '', 'Hội đầu bếp CN Sài Gòn 5', 'hoi-dau-bep-cn-saigon-5.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (70, '', 'Hội đầu bếp CN Sài Gòn 6', 'hoi-dau-bep-cn-saigon-6.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (71, '', 'Hội đầu bếp CN Sài Gòn 7', 'hoi-dau-bep-cn-saigon-7.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (72, '', 'Hội đầu bếp CN Sài Gòn 8', 'hoi-dau-bep-cn-saigon-8.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (73, '', 'Hội đầu bếp CN Sài Gòn 9', 'hoi-dau-bep-cn-saigon-9.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (74, '', 'Hội đầu bếp CN Sài Gòn 10', 'hoi-dau-bep-cn-saigon-10.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (75, '', 'Hội đầu bếp CN Sài Gòn 11', 'hoi-dau-bep-cn-saigon-11.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (76, '', 'Hội đầu bếp CN Sài Gòn 12', 'hoi-dau-bep-cn-saigon-12.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (77, '', 'Hội đầu bếp CN Sài Gòn 13', 'hoi-dau-bep-cn-saigon-13.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (78, '', 'Hội đầu bếp CN Sài Gòn 14', 'hoi-dau-bep-cn-saigon-14.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (79, '', 'Hội đầu bếp CN Sài Gòn 15', 'hoi-dau-bep-cn-saigon-15.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (80, '', 'Hội đầu bếp CN Sài Gòn 16', 'hoi-dau-bep-cn-saigon-16.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (81, '', 'Hội đầu bếp CN Sài Gòn 17', 'hoi-dau-bep-cn-saigon-17.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (82, '', 'Hội đầu bếp CN Sài Gòn 18', 'hoi-dau-bep-cn-saigon-18.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (83, '', 'Hội đầu bếp CN Sài Gòn 19', 'hoi-dau-bep-cn-saigon-19.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (84, '', 'Hội đầu bếp CN Sài Gòn 20', 'hoi-dau-bep-cn-saigon-20.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (85, '', 'Hội đầu bếp CN Sài Gòn 21', 'hoi-dau-bep-cn-saigon-21.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (86, '', 'Hội đầu bếp CN Sài Gòn 22', 'hoi-dau-bep-cn-saigon-22.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (87, '', 'Anh Khao - Việt Anh - Huy Khanh', 'ANHKHAO-VIETANH-huykhanh.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (88, '', 'Tường Vi - Trường NETSPACE', 'TUONGVI.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (89, '', 'Tường Vi - Hiếu Hiền - Trường NETSPACE', 'TUONGVI-HIEUHIEN.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (90, '', 'Tường Vi - Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'TUONGVI-HIEUHIEN-thaihoa.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (91, '', 'Trung Hậu - Trường NETSPACE', 'TRUNG-HAU.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (92, '', 'Thanh Thúy - Thái Hòa - Trường NETSPACE', 'THANHTHUY-thaihoa.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (93, '', 'Hoa hậu Mai Phương Thúy - Trường NETSPACE', 'HOA-HAU-MAI-PHUONG-THUY.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (94, '', 'Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'HIEUHIEN-Thaihoa.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (95, '', 'Hiếu Hiền - Thái Hòa - Cùng với Học Viên Trường NETSPACE', 'HIEUHIEN-thaihoa-tai-netspace.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (96, '', 'Diễn viên Trường Thịnh - Trường NETSPACE', 'dv-truong-thinh.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (97, '', 'Diễn viên Trương Minh Cường- Trường NETSPACE', 'dv-truong-minh-cuong.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (98, '', 'Diễn viên Trương Minh Cường - Cùng với học viên Trường NETSPACE', 'dv-truong-minh-cuong-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (99, '', 'Diễn viên phim Lưu Manh Đầu Bếp - Trường NETSPACE', 'dv-phim-luu-manh-dau-bep.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (100, '', 'Diễn viên Hà Hiền - Trường NETSPACE', 'dv-ha-hien.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (101, '', 'Đoàn làm phim Bếp của Mẹ', 'doan-lam-phim-bep-cua-me.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (102, '', 'Đoàn làm phim Bếp của Mẹ tại Trường NETSPACE', 'doan-lam-phim-bep-cua-me-2.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (103, '', 'Diễn viên Trường Thịnh tại Trường NETSPACE', 'dien-vien-truong-thinh.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner`
-- 

CREATE TABLE `web_slider_banner` (
  `id` int(11) NOT NULL auto_increment,
  `position_id` int(1) default NULL,
  `menu_id` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `url` varchar(250) default NULL,
  `content` text NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 2, ',1,5,6,', 'Sản phẩm', '', 'javascript:;', 'thông tin', 'vi', 1, '2013-10-09 16:34:33', '2014-03-04 14:00:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner_position`
-- 

CREATE TABLE `web_slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_slider_banner_position`
-- 

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 1000x200 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Event home 490x280 px', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_users`
-- 

CREATE TABLE `web_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `quyen_xem` varchar(100) NOT NULL,
  `quyen_action` varchar(100) NOT NULL,
  `group_id` int(1) NOT NULL default '0',
  `RandomKey` varchar(255) default NULL,
  `LoginNumber` int(11) default '0',
  `DisableDate` datetime default NULL,
  `Expiration` int(11) default NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `web_users`
-- 

INSERT INTO `web_users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,12,14,15,', ',1,2,3,4,12,14,15,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-02-27 14:23:00', 'admin', 'admin', 0);
INSERT INTO `web_users` VALUES (27, 'Trần Nhân', 'nhan', '25f9e794323b453885f5181f1b624d0b', ',1,15,', ',1,15,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-03-05 15:58:57', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_users_group`
-- 

CREATE TABLE `web_users_group` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_users_group`
-- 

INSERT INTO `web_users_group` VALUES (1, 'Khách hàng');
INSERT INTO `web_users_group` VALUES (2, 'Thành viên');
INSERT INTO `web_users_group` VALUES (3, 'Quản trị website');
