-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 29, 2014 at 01:35 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `shopdochoi`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `web_chinhanh`
-- 

CREATE TABLE `web_chinhanh` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `hotline` varchar(50) NOT NULL,
  `yahoo_nick` varchar(120) NOT NULL,
  `yahoo_name` varchar(250) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `web_chinhanh`
-- 

INSERT INTO `web_chinhanh` VALUES (1, 'Cơ sở chính', 'info@dayamthuc.vn', '(08).6291.2698', '30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM', '0987.937.938 - 0947.333.488 - 098.333.8333', 'consultant_netspace,consultant_netspace2,consultant_netspace3', 'Tư vấn 1,Tư vấn 2,Tư vấn 3', 'vi', 1, '2014-02-07 15:07:53', '2014-03-21 17:07:00', 'admin', 'admin', 0);
INSERT INTO `web_chinhanh` VALUES (2, 'Tp.HCM', 'info@dayamthuc.vn', '(08).3526.8716', 'Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM', '0987.937.938 - 0947.333.488 - 098.333.8333', 'consultant_netspace,consultant_netspace2,consultant_netspace3', 'Tư vấn 1,Tư vấn 2,Tư vấn 3', 'vi', 1, '2014-02-07 15:10:52', '2014-03-20 17:07:00', 'admin', 'admin', 0);
INSERT INTO `web_chinhanh` VALUES (3, 'Đà Nẵng', 'danang@dayamthuc.vn', '(051).1363.4879', 'Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng', '0905.295.402 - 0932.743.799', 'consultant_netspace4,consultant_netspace5', 'Tư vấn 4,Tư vấn 5', 'vi', 1, '2014-02-07 15:13:40', '2014-03-19 17:08:00', 'admin', 'admin', 0);
INSERT INTO `web_chinhanh` VALUES (4, 'Cần Thơ', 'cantho@dayamthuc.vn', '(071).0373.4371', '118 Đường 3/2 P.Xuân Khánh, Q.Ninh Kiều, Tp.Cần Thơ', '0912.187.489 - 0912.287.489', 'consultant_netspace6,consultant_netspace7', 'Tư vấn 6,Tư vấn 7', 'vi', 1, '2014-02-07 15:14:42', '2014-03-18 11:32:45', 'admin', 'admin', 0);

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
  `contact_foo` varchar(200) default NULL,
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

INSERT INTO `web_config` VALUES (1, 'Việt Nam', 'vi', 'localhost/all/shopdochoi', 10, 10, 10, 10, 'Copyright © 2014 by ShopDoChoi', 'Thế giới đồ chơi THN', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2013-03-01 16:18:00', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', 'dayamthuc.vn/dayamthuc_v3', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', 'Culinary Arts School NetSpace', '', 'nhan300489@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 0, '2013-08-10 10:09:29', '2014-03-29 10:57:34', 'admin', 'admin', 1);

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
  `nhanvien_lienhe` int(2) default NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_contact`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_dangky_nhanvien`
-- 

CREATE TABLE `web_dangky_nhanvien` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `web_dangky_nhanvien`
-- 

INSERT INTO `web_dangky_nhanvien` VALUES (1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1, '2013-12-17 13:52:33', '2014-02-07 14:07:35', 'admin', NULL, 0);
INSERT INTO `web_dangky_nhanvien` VALUES (2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1, '2013-12-17 13:53:05', '2014-02-07 14:07:24', 'admin', NULL, 0);
INSERT INTO `web_dangky_nhanvien` VALUES (3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:05', '2014-02-07 14:07:51', 'admin', NULL, 0);
INSERT INTO `web_dangky_nhanvien` VALUES (4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:18', '2014-03-18 11:32:04', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (5, 'Nhan', 'hieunhan112@gmail.com', 'vi', 1, '2014-03-24 16:37:11', '2014-03-24 17:35:55', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_dangky_tructuyen`
-- 

CREATE TABLE `web_dangky_tructuyen` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `totnghiep` varchar(30) NOT NULL,
  `khoahoc` varchar(150) NOT NULL,
  `noihoc` varchar(20) NOT NULL,
  `other` varchar(50) NOT NULL,
  `hoivien` varchar(200) NOT NULL,
  `nhanvien_lienhe` int(2) default NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_dangky_tructuyen`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_info`
-- 

CREATE TABLE `web_info` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `other2` tinyint(1) default '0',
  `lang` varchar(3) default 'vi',
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_info`
-- 


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
  `lang` varchar(3) default 'vi',
  `type_id` int(1) default NULL,
  `position_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', '/', '', '2014-03-29 10:58:58', '2014-03-29 10:58:00', 0, 1, 1, 'Thế giới đồ chơi THN', 'Thế giới đồ chơi THN', 'thế giới đồ chơi,đồ chơi', 0, 'vi', 1, ',', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (2, 'Về chúng tôi', 've-chung-toi', 've-chung-toi/', '', '2014-03-29 11:08:48', '2014-03-29 11:08:00', 0, 2, 1, 'Về chúng tôi', 'Về chúng tôi', 'Về chúng tôi,ve chung toi', 0, 'vi', 2, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (3, 'Dịch vụ', 'dich-vu', 'dich-vu/', '', '2014-03-29 11:09:30', '2014-03-29 11:08:00', 0, 3, 1, 'Dịch vụ', 'Dịch vụ', 'Dịch vụ,dich vu', 0, 'vi', 2, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (4, 'Khuyến mãi', 'khuyen-mai', 'khuyen-mai/', '', '2014-03-29 11:09:45', '2014-03-29 11:08:00', 0, 4, 1, 'Khuyến mãi', 'Khuyến mãi', 'Khuyến mãi,khuyen mai', 0, 'vi', 2, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (5, 'Tuyển dụng', 'tuyen-dung', 'tuyen-dung/', '', '2014-03-29 11:10:22', '2014-03-29 11:08:00', 0, 5, 1, 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng,tuyen dung', 0, 'vi', 11, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (6, 'Trợ giúp', 'tro-giup', 'tro-giup/', '', '2014-03-29 11:10:48', '2014-03-29 11:08:00', 0, 6, 1, 'Trợ giúp', 'Trợ giúp', 'Trợ giúp,tro giup', 0, 'vi', 6, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (7, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-03-29 11:11:13', '2014-03-29 11:08:00', 0, 7, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 'vi', 7, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (8, 'Hình thức thanh toán', 'hinh-thuc-thanh-toan', 'hinh-thuc-thanh-toan/', '', '2014-03-29 11:11:48', '2014-03-29 11:11:00', 0, 8, 1, 'Hình thức thanh toán', 'Hình thức thanh toán', 'Hình thức thanh toán,hinh thuc thanh toan', 0, 'vi', 6, ',3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (9, 'Giao hàng toán quốc', 'giao-hang-toan-quoc', 'giao-hang-toan-quoc/', '', '2014-03-29 11:12:39', '2014-03-29 11:11:00', 0, 9, 1, 'Giao hàng toán quốc', 'Giao hàng toán quốc', 'Giao hàng toán quốc,giao hang toan quoc', 0, 'vi', 6, ',3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (10, 'Trả hàng trong 30 ngày', 'tra-hang-trong-30-ngay', 'tra-hang-trong-30-ngay/', '', '2014-03-29 11:13:04', '2014-03-29 11:11:00', 0, 10, 1, 'Trả hàng trong 30 ngày', 'Trả hàng trong 30 ngày', 'Trả hàng trong 30 ngày,tra hang trong 30 ngay', 0, 'vi', 6, ',3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (11, 'Đăng ký Đăng nhập', 'dang-ky-dang-nhap', 'javascript:;#login', '', '2014-03-29 11:13:37', '2014-03-29 11:13:00', 0, 11, 1, 'Đăng ký Đăng nhập', 'Đăng ký Đăng nhập', 'Đăng ký Đăng nhập,dang ky dang nhap', 0, 'vi', 5, ',4,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (12, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', '2014-03-29 11:14:55', '2014-03-29 11:13:00', 0, 12, 1, 'Giỏ hàng', 'Giỏ hàng', 'Giỏ hàng,gio hang', 0, 'vi', 4, ',4,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (13, 'Danh mục sản phẩm', 'danh-muc-san-pham', 'danh-muc-san-pham/', '', '2014-03-29 11:15:31', '2014-03-29 11:15:00', 0, 14, 1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', 'Danh mục sản phẩm,danh muc san pham', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (14, 'Khuyến mãi, giảm giá', 'khuyen-mai-giam-gia', 'khuyen-mai-giam-gia/', '', '2014-03-29 11:18:05', '2014-03-29 11:18:00', 13, 1, 1, 'Khuyến mãi, giảm giá', 'Khuyến mãi, giảm giá', 'Khuyến mãi giảm giá,khuyen mai giam gia', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (15, 'Đồ chơi nhựa an toàn', 'do-choi-nhua-an-toan', 'do-choi-nhua-an-toan/', '', '2014-03-29 11:16:47', '2014-03-29 11:16:00', 13, 2, 1, 'Đồ chơi nhựa an toàn', 'Đồ chơi nhựa an toàn', 'Đồ chơi nhựa an toàn,do choi nhua an toan', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (16, 'Đồ chơi mô hình, xe mô hình', 'do-choi-mo-hinh-xe-mo-hinh', 'do-choi-mo-hinh-xe-mo-hinh/', '', '2014-03-29 11:18:50', '2014-03-29 11:16:00', 13, 3, 1, 'Đồ chơi mô hình, xe mô hình', 'Đồ chơi mô hình, xe mô hình', 'Đồ chơi mô hình xe mô hình,do choi mo hinh xe mo hinh', 0, 'vi', 3, ',5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (17, 'Đồ chơi nhạc cụ', 'do-choi-nhac-cu', 'do-choi-nhac-cu/', '', '2014-03-29 11:19:32', '2014-03-29 11:16:00', 13, 4, 1, 'Đồ chơi nhạc cụ', 'Đồ chơi nhạc cụ', 'Đồ chơi nhạc cụ,do choi nhac cu', 0, 'vi', 3, ',5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (18, 'Đồ chơi búp bê, bông vải', 'do-choi-bup-be-bong-vai', 'do-choi-bup-be-bong-vai/', '', '2014-03-29 11:19:52', '2014-03-29 11:16:00', 13, 5, 1, 'Đồ chơi búp bê, bông vải', 'Đồ chơi búp bê, bông vải', 'Đồ chơi búp bê bông vải,do choi bup be bong vai', 0, 'vi', 3, ',5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (19, 'Đồ chơi gỗ', 'do-choi-go', 'do-choi-go/', '', '2014-03-29 11:20:43', '2014-03-29 11:20:00', 13, 6, 1, 'Đồ chơi gỗ', 'Đồ chơi gỗ', 'Đồ chơi gỗ,do choi go', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (20, 'Đồ chơi ngoài trời', 'do-choi-ngoai-troi', 'do-choi-ngoai-troi/', '', '2014-03-29 11:21:27', '2014-03-29 11:20:00', 13, 7, 1, 'Đồ chơi ngoài trời', 'Đồ chơi ngoài trời', 'Đồ chơi ngoài trời,do choi ngoai troi', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (21, 'Đồ chơi thông minh', 'do-choi-thong-minh', 'do-choi-thong-minh/', '', '2014-03-29 11:21:48', '2014-03-29 11:20:00', 13, 8, 1, 'Đồ chơi thông minh', 'Đồ chơi thông minh', 'Đồ chơi thông minh,do choi thong minh', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (22, 'Đồ chơi trẻ em - IQ', 'do-choi-tre-em-iq', 'do-choi-tre-em-iq/', '', '2014-03-29 11:22:19', '2014-03-29 11:20:00', 13, 9, 1, 'Đồ chơi trẻ em - IQ', 'Đồ chơi trẻ em - IQ', 'Đồ chơi trẻ em - IQ,do choi tre em - iq', 0, 'vi', 3, ',5,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (23, 'Sách truyện, băng đĩa', 'sach-truyen-bang-dia', 'sach-truyen-bang-dia/', '', '2014-03-29 11:22:55', '2014-03-29 11:20:00', 13, 10, 1, 'Sách truyện, băng đĩa', 'Sách truyện, băng đĩa', 'Sách truyện, băng đĩa,sach truyen bang dia', 0, 'vi', 3, ',5,', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `web_menu_admin`
-- 

INSERT INTO `web_menu_admin` VALUES (1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 1);
INSERT INTO `web_menu_admin` VALUES (2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1);
INSERT INTO `web_menu_admin` VALUES (3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 1);
INSERT INTO `web_menu_admin` VALUES (4, 'Thông tin, bài viết', 'web_info', 'icon-info.jpg', 4, 1);
INSERT INTO `web_menu_admin` VALUES (5, 'Thư viện ảnh', 'web_photo_gallery', 'icon-thu-vien-anh.jpg', 5, 1);
INSERT INTO `web_menu_admin` VALUES (6, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 6, 1);
INSERT INTO `web_menu_admin` VALUES (7, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 7, 1);
INSERT INTO `web_menu_admin` VALUES (8, 'Lịch khai giảng', 'web_lichkhaigiang', 'icon-lich-khai-giang.jpg', 8, 0);
INSERT INTO `web_menu_admin` VALUES (9, 'Danh sách chi nhánh', 'web_chinhanh', 'icon-product.jpg', 9, 1);
INSERT INTO `web_menu_admin` VALUES (10, 'Nhân viên nhận đăng ký', 'web_dangky_nhanvien', 'icon-register.jpg', 10, 1);
INSERT INTO `web_menu_admin` VALUES (11, 'Học viên đăng ký', 'web_dangky_tructuyen', 'icon-hoc-vien.jpg', 11, 1);
INSERT INTO `web_menu_admin` VALUES (12, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 12, 1);
INSERT INTO `web_menu_admin` VALUES (13, 'Tuyển dụng - Thông tin', 'web_tuyendung', 'icon-tuyen-dung-thong-tin.jpg', 13, 1);
INSERT INTO `web_menu_admin` VALUES (14, 'Tuyển dụng - Công ty', 'web_tuyendung_cty', 'icon-contact.jpg', 14, 1);
INSERT INTO `web_menu_admin` VALUES (15, 'Tuyển dụng - Hồ sơ', 'web_tuyendung_hoso', 'icon-tuyendung-ho-so.jpg', 15, 1);
INSERT INTO `web_menu_admin` VALUES (16, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_position`
-- 

CREATE TABLE `web_menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL default '0',
  `status` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `web_menu_position`
-- 

INSERT INTO `web_menu_position` VALUES (1, 'Top 1', 1, 1);
INSERT INTO `web_menu_position` VALUES (2, 'Top 2', 2, 1);
INSERT INTO `web_menu_position` VALUES (3, 'Top 3', 3, 1);
INSERT INTO `web_menu_position` VALUES (4, 'Top 4', 4, 1);
INSERT INTO `web_menu_position` VALUES (5, 'Catalog', 5, 1);
INSERT INTO `web_menu_position` VALUES (6, 'Bottom', 6, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_type`
-- 

CREATE TABLE `web_menu_type` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `order` int(2) NOT NULL,
  `status` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `web_menu_type`
-- 

INSERT INTO `web_menu_type` VALUES (1, 'Trang chủ', 1, 1);
INSERT INTO `web_menu_type` VALUES (2, 'Thông tin bài viết', 2, 1);
INSERT INTO `web_menu_type` VALUES (3, 'Sản phẩm', 3, 1);
INSERT INTO `web_menu_type` VALUES (4, 'Giỏ hàng', 4, 1);
INSERT INTO `web_menu_type` VALUES (5, 'Đăng nhập, đăng ký', 5, 1);
INSERT INTO `web_menu_type` VALUES (6, 'Thông tin chính sách', 6, 1);
INSERT INTO `web_menu_type` VALUES (7, 'Liên hệ', 7, 1);
INSERT INTO `web_menu_type` VALUES (8, 'Đăng ký', 8, 0);
INSERT INTO `web_menu_type` VALUES (9, 'Thư viện', 9, 0);
INSERT INTO `web_menu_type` VALUES (10, 'Không', 11, 1);
INSERT INTO `web_menu_type` VALUES (11, 'Tuyển dụng', 10, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_photo_gallery`
-- 

CREATE TABLE `web_photo_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) NOT NULL default 'vi',
  `menu_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_photo_gallery`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner`
-- 

CREATE TABLE `web_slider_banner` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) NOT NULL default 'vi',
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider', 'slider.jpg', 'javascript:;', '2014-03-29 11:27:44', '2014-03-29 11:27:00', 1, 'vi', 1, ',1,', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Right 1', 'right_1.jpg', 'javascript:;', '2014-03-29 11:28:21', '2014-03-29 11:27:00', 1, 'vi', 2, ',1,', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (3, 'Right 2', 'right_2.jpg', 'javascript:;', '2014-03-29 11:28:53', '2014-03-29 11:27:00', 1, 'vi', 2, ',1,', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner_position`
-- 

CREATE TABLE `web_slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `web_slider_banner_position`
-- 

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 480x400 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Right 230x190 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (3, 'QC 2 bên left width:150px', 1);
INSERT INTO `web_slider_banner_position` VALUES (4, 'QC 2 bên right width:150px', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung`
-- 

CREATE TABLE `web_tuyendung` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `metaKeyword` varchar(150) NOT NULL,
  `content` text,
  `noilamviec` int(2) NOT NULL,
  `mucluong` varchar(20) NOT NULL,
  `soluongtuyen` int(2) NOT NULL,
  `quyenloi` text NOT NULL,
  `yeucau` text NOT NULL,
  `hannop` date default NULL,
  `menu_id` varchar(20) NOT NULL,
  `tuyendung_cty_id` int(3) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_tuyendung`
-- 

INSERT INTO `web_tuyendung` VALUES (1, 'Bếp chính bếp Hoa nhà hàng', 'bep-chinh-bep-hoa-nha-hang', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Bếp chính bếp Hoa nhà hàng', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 1, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', NULL, ',57,', 1, 'vi', 1, '2014-02-19 16:23:44', '2014-02-19 17:12:34', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung` VALUES (2, 'Bếp chính nhà hàng', 'bep-chinh-nha-hang', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Bếp chính nhà hàng', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 1, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', NULL, ',57,', 2, 'vi', 1, '2014-02-19 16:24:00', '2014-02-19 17:12:29', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung` VALUES (3, 'Nhân viên pha chế cafe', 'nhan-vien-pha-che-cafe', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Nhân viên pha chế cafe', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 5, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', '2014-03-24', ',57,', 1, 'vi', 1, '2014-02-19 16:24:20', '2014-03-24 15:19:01', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung_cty`
-- 

CREATE TABLE `web_tuyendung_cty` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `content` text,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `website` varchar(200) default NULL,
  `fax` varchar(30) default NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_tuyendung_cty`
-- 

INSERT INTO `web_tuyendung_cty` VALUES (1, 'Công ty kế toán - kiểm toán Thanh Trí', '<p><strong>Công ty kế toán - kiểm toán Thanh Trí</strong> được Sở Kế Hoạch &amp; Đầu Tư TP.HCM cấp phép hoạt động từ năm 2002, nhân sự công ty là tập hợp các chuyên viên kiểm toán-kế toán chuyên nghiệp, chúng tôi hoạt động mạnh trong lãnh vực tư vấn thuế - dịch vụ pháp lý cho các công ty và đào tạo kế toán chuyên nghiệp.</p>\r\n\r\n<p>Công ty có hướng dẫn cách làm kế toán tổng hợp bằng chứng từ thực tế cho :</p>\r\n\r\n<ul>\r\n	<li>Các bạn đã học kế toán nhưng chưa đi làm hoặc làm trái ngành;</li>\r\n	<li>Các bạn sinh viên sắp tốt nghiệp hoặc mới ra trường;</li>\r\n	<li>Các bạn là kế toán viên, kế toán nội bộ chưa được làm báo cáo thuế, sổ sách kế toán.</li>\r\n</ul>\r\n', '123 CMT 8, Quận 10, Tp.HCM', '08.5687.2135', 'nhahangfo@gmail.com', 'http://www.nhahangfo.com', '', 'vi', 1, '2014-02-19 17:06:09', '2014-02-19 17:24:37', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung_cty` VALUES (2, 'Công ty chế biến thủy sản', '<p>Xuất khẩu tôm năm 2013 đạt kỷ lục chạm mức gần 3 tỷ USD, vẫn là mặt hàng xuất khẩu mũi nhọn của ngành thủy sản. Năm 2014, tình hình sẽ sáng sủa hơn nếu giải quyết tốt bài toán quy hoạch vùng nuôi và chính sách thương mại với Trung Quốc…</p>\r\n', '10 Trần Hưng, Q.Bình Tân, Tp.HCM', '08.3987.2365', 'thuysan@gmail.com', 'www.thuysan.com', '08.3987.2366', 'vi', 1, '2014-02-19 17:12:19', '2014-03-18 11:42:28', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung_hoso`
-- 

CREATE TABLE `web_tuyendung_hoso` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `content` text,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `trinhdo` int(1) NOT NULL,
  `tuyendung_id` int(5) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `web_tuyendung_hoso`
-- 

INSERT INTO `web_tuyendung_hoso` VALUES (1, 'Trần Hiếu Nhân', '', 'Kinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:', '123 CMT 8', '0988388003', 'hieu_nhan1@yahoo.com', 5, 2, 'vi', 1, '2014-02-20 14:53:07', '2014-03-24 17:38:17', 'khachhang', 'admin', 0);
INSERT INTO `web_tuyendung_hoso` VALUES (2, 'Trần Hiếu Nhân 11', '', 'Luong thu viec = 3.500k + an o \nLuong chinh thuc = 4.000k + an o \nThưởng theo năng lực và những đề xuất cải tiến\nLàm ngày lễ được 150% lương\nTháng lương thứ 13 ( tết âm)\nLiên hoan hàng tháng...', '123 CMT 8', '0988388003', 'hieunhan112@gmail.com', 5, 1, 'vi', 1, '2014-03-24 15:01:41', '2014-03-24 16:00:50', 'khachhang', 'admin', 0);
INSERT INTO `web_tuyendung_hoso` VALUES (3, 'Việt Nam', '', 'Cung ứng và tuyển dụng nhân sự cấp cao trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nCung ứng và tuyển dụng nhân sự cấp cao trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nCung ứng và tuyển dụng nhân sự cấp cao trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...', 'Lê Đức Thọ , Gò Vấp', '0988388003', 'hieu_nhan1@yahoo.com', 6, 3, 'vi', 1, '2014-03-24 15:03:12', '2014-03-24 16:00:41', 'khachhang', 'admin', 0);
INSERT INTO `web_tuyendung_hoso` VALUES (4, 'Việt Nam', '', '<p>Tư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke... Tư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...</p>\r\n', 'Lê Đức Thọ , Gò Vấp', '0988388003', 'hieunhan112@gmail.com', 2, 3, 'vi', 1, '2014-03-24 15:03:57', '2014-03-24 16:00:27', 'khachhang', 'admin', 0);
INSERT INTO `web_tuyendung_hoso` VALUES (5, 'Trần Hiếu Nhân', '', 'Tư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...\nTư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...', '123 CMT 8, Quận 10, Tp.HCM', '01234567890', 'hieu_nhan1@yahoo.com', 5, 3, 'vi', 1, '2014-03-24 15:05:52', '2014-03-24 15:06:32', 'khachhang', 'admin', 0);

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

INSERT INTO `web_users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-02-27 14:23:00', 'admin', 'admin', 0);
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

-- --------------------------------------------------------

-- 
-- Table structure for table `web_video`
-- 

CREATE TABLE `web_video` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `metaDescription` varchar(250) default NULL,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default 'vi',
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_video`
-- 

