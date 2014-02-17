-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 17, 2014 at 05:07 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `daotaonama`
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
  `max_limit_1` int(2) default NULL,
  `max_limit_2` int(2) default NULL,
  `max_limit_3` int(2) default NULL,
  `max_limit_4` int(2) default NULL,
  `copyright` varchar(250) default NULL,
  `contact_foo` text,
  `contact_form` text NOT NULL,
  `email` varchar(100) default NULL,
  `yahoo_nick` varchar(100) default NULL,
  `yahoo_name` varchar(100) default NULL,
  `yahoo_phone` varchar(100) NOT NULL,
  `hotline` varchar(50) NOT NULL,
  `facebook` varchar(255) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `config`
-- 

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/daotaonama', 10, 10, 2, 10, '', '<p>Địa chỉ: 69 Xuân Hồng, P.12, Q.Tân Bình<br />\r\nĐiện thoại: 083 811 29 28 - 083 948 55 94<br />\r\nWebsite: www.daotaonama.com</p>\r\n', '<h3><span style="color:#FF0000;">TRUNG TÂM ĐÀO TẠO NAM Á</span></h3>\r\n\r\n<p>Địa chỉ: 69 Xuân Hồng, P.12, Q.Tân Bình<br />\r\nĐiện thoại: 083 811 29 28 - 083 948 55 94<br />\r\nWebsite: www.daotaonama.com</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1,hieu_nhan111', 'Trần Ngọc Phú,Nguyễn Trọng Thắng', '090 387 65 67,091 939 23 43', '0903 876 567 - 0919 39 2343', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 09:52:08', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'English', 'en', '', 'localhost/all/daotaonama', 0, 10, 2, NULL, 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', '<p>Add: 87 Thang Long Str., Ward 4, Tan Binh Dist, HCMC, Vietnam.<br />\r\nTel: (84.8) 3 948 4696 - Fax : ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', '<table border="0" cellpadding="0" cellspacing="5" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">HEAD OFFICE</span></h3>\r\n\r\n			<p>Add: Lot III/22, 19/5A Rd, Tan Binh IZ, Tan Phu Dist., Ho Chi Minh city, Vietnam<br />\r\n			Tel: (84.8) 3 815 5319 - Fax: (84.8) 3 815 5320<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">DANANG OFFICE</span></h3>\r\n\r\n			<p>Add: 183 Nguyen Tri Phuong Str., W. Vinh Trung, Thanh Khe Dist., Da Nang city, Vietnam<br />\r\n			Tel: (84.511) 3 561 561 - Fax: (84.511) 3 824 602<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3 style="font-size: 13px;"><span style="color:#FF0000;">HCM OFFICE</span></h3>\r\n\r\n			<p style="font-size: 13px;">Add: 87 Thang Long Str., Ward 4, Tan Binh Dist., HCMC, Vietnam<br />\r\n			Tel: (84.8) 3 948 4696 - Fax: (84.8) 3 948 4697<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">CANTHO OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: 40 A3 Str., Hung Phu I, Cai Rang Dist., Can Tho city, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.0710) 625 8539 - Fax: (84.0710) 625 8540</span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">HANOI OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: No. 1 Alley 71, Linh Lang Str., Cong Vi Ward, Ba Dinh Dist., Ha Noi, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.4) 3 726 0122 - Fax: (84.4) 3 726 0144</span></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', '', 0, '2013-08-10 10:09:29', '2013-08-10 15:35:08', 'admin', 'admin', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `contact`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_bangdiem`
-- 

CREATE TABLE `daotao_bangdiem` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `id_lophoc` int(3) NOT NULL,
  `id_hocvien` int(11) NOT NULL,
  `diem1` float default NULL,
  `diem2` float default NULL,
  `diem3` float default NULL,
  `diem4` float default NULL,
  `diem5` float default NULL,
  `diem6` float default NULL,
  `diem7` float default NULL,
  `diem8` float default NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `daotao_bangdiem`
-- 

INSERT INTO `daotao_bangdiem` VALUES (1, 'Anh ngữ giao tiếp - K2 | Trần Hiếu Nhân', 2, 1, 7, 8, 9, 8, 7, 7, 0, 0, 'vi', 1, '2014-02-17 13:28:19', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem` VALUES (2, 'Anh ngữ giao tiếp - K2 | Ngọc Khang', 2, 3, 7, 8, 9, 9, 9, 9, 9, 9, 'vi', 1, '2014-02-17 13:38:34', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem` VALUES (3, 'Anh ngữ giao tiếp - K2 | Ngoc Hien', 2, 2, 8, 8, 8, 8, 8, 8, 8, 8, 'vi', 1, '2014-02-17 13:38:48', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem` VALUES (4, 'TOEIC - K1 | Trần Hiếu Nhân', 3, 1, 7.5, 7.5, 8.5, 0, 0, 0, 0, 0, 'vi', 1, '2014-02-17 15:03:46', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem` VALUES (5, 'IELTS | Trần Hiếu Nhân', 6, 1, 7, 7.5, 7, 8.5, 0, 0, 0, 0, 'vi', 1, '2014-02-17 15:47:27', '0000-00-00 00:00:00', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_bangdiem_v2`
-- 

CREATE TABLE `daotao_bangdiem_v2` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `id_lophoc` int(3) NOT NULL,
  `id_cotdiem` int(3) NOT NULL,
  `id_hocvien` int(11) NOT NULL,
  `diem` float NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `daotao_bangdiem_v2`
-- 

INSERT INTO `daotao_bangdiem_v2` VALUES (1, 'gioi', 2, 1, 1, 8, 'vi', 1, '2014-02-17 13:05:41', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem_v2` VALUES (2, 'gioi', 2, 2, 1, 9, 'vi', 1, '2014-02-17 13:06:00', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem_v2` VALUES (3, 'gioi', 2, 3, 1, 9, 'vi', 1, '2014-02-17 13:06:21', '0000-00-00 00:00:00', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_cotdiem`
-- 

CREATE TABLE `daotao_cotdiem` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `id_khoahoc` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `order` int(2) default '0',
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `daotao_cotdiem`
-- 

INSERT INTO `daotao_cotdiem` VALUES (1, 'Anh ngữ giao tiếp kỳ 1 - Cột điểm 1', 3, 'vi', 1, 1, '2014-02-17 11:17:00', '2014-02-17 11:13:28', 'admin', 'admin', 0);
INSERT INTO `daotao_cotdiem` VALUES (2, 'Anh ngữ giao tiếp kỳ 1 - Cột điểm 2', 3, 'vi', 2, 1, '2014-02-17 11:17:10', '2014-02-17 11:09:56', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (3, 'Anh ngữ giao tiếp kỳ 1 - Cột điểm 3', 3, 'vi', 3, 1, '2014-02-17 11:17:20', '2014-02-17 11:09:59', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (4, 'Anh ngữ giao tiếp kỳ 1 - Cột điểm 4', 3, 'vi', 4, 1, '2014-02-17 11:17:30', '2014-02-17 11:10:04', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (5, 'Anh ngữ giao tiếp kỳ 2 - Cột điểm 5', 3, 'vi', 5, 1, '2014-02-17 11:17:40', '2014-02-17 11:10:12', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (6, 'Anh ngữ giao tiếp kỳ 2 - Cột điểm 6', 3, 'vi', 6, 1, '2014-02-17 11:17:50', '2014-02-17 11:10:21', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (7, 'Anh ngữ giao tiếp kỳ 2 - Cột điểm 7', 3, 'vi', 7, 1, '2014-02-17 11:18:00', '2014-02-17 11:10:28', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (8, 'Anh ngữ giao tiếp kỳ 2 - Cột điểm 8', 3, 'vi', 8, 1, '2014-02-17 11:18:10', '2014-02-17 11:10:33', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (9, 'TOEIC kỳ 1 - Cột điểm 1', 4, 'vi', 1, 1, '2014-02-17 11:18:20', '2014-02-17 11:11:01', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (10, 'TOEIC kỳ 1 - Cột điểm 2', 4, 'vi', 2, 1, '2014-02-17 11:18:30', '2014-02-17 11:11:06', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (11, 'TOEIC kỳ 1 - Cột điểm 3', 4, 'vi', 3, 1, '2014-02-17 11:18:40', '2014-02-17 11:11:10', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (12, 'TOEIC kỳ 1 - Cột điểm 4', 4, 'vi', 4, 1, '2014-02-17 11:18:41', '2014-02-17 11:20:03', 'admin', 'admin', 0);
INSERT INTO `daotao_cotdiem` VALUES (13, 'TOEIC kỳ 2 - Cột điểm 5', 4, 'vi', 5, 1, '2014-02-17 11:18:45', '2014-02-17 11:19:34', 'admin', 'admin', 0);
INSERT INTO `daotao_cotdiem` VALUES (14, 'TOEIC kỳ 2 - Cột điểm 6', 4, 'vi', 6, 1, '2014-02-17 11:18:51', '2014-02-17 11:19:37', 'admin', 'admin', 0);
INSERT INTO `daotao_cotdiem` VALUES (15, 'TOEIC kỳ 2 - Cột điểm 7', 4, 'vi', 7, 1, '2014-02-17 11:19:49', '2014-02-17 11:19:49', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (16, 'TOEIC kỳ 2 - Cột điểm 8', 4, 'vi', 8, 1, '2014-02-17 11:19:54', '2014-02-17 11:19:54', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (17, 'Anh văn thiếu niên kỳ 1 - Cột điểm 1', 6, 'vi', 1, 1, '2014-02-17 11:21:13', '2014-02-17 11:21:13', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (18, 'Anh văn thiếu niên kỳ 1 - Cột điểm 2', 6, 'vi', 2, 1, '2014-02-17 11:21:16', '2014-02-17 11:21:16', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (19, 'Anh văn thiếu niên kỳ 1 - Cột điểm 3', 6, 'vi', 3, 1, '2014-02-17 11:21:20', '2014-02-17 11:21:20', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (20, 'Anh văn thiếu niên kỳ 1 - Cột điểm 4', 6, 'vi', 4, 1, '2014-02-17 11:21:24', '2014-02-17 11:21:24', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (21, 'Anh văn thiếu niên kỳ 2 - Cột điểm 5', 6, 'vi', 5, 1, '2014-02-17 11:21:30', '2014-02-17 11:21:30', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (22, 'Anh văn thiếu niên kỳ 2 - Cột điểm 6', 6, 'vi', 6, 1, '2014-02-17 11:21:35', '2014-02-17 11:21:35', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (23, 'Anh văn thiếu niên kỳ 2 - Cột điểm 7', 6, 'vi', 7, 1, '2014-02-17 11:21:40', '2014-02-17 11:21:40', 'admin', NULL, 0);
INSERT INTO `daotao_cotdiem` VALUES (24, 'Anh văn thiếu niên kỳ 2 - Cột điểm 8', 6, 'vi', 8, 1, '2014-02-17 11:21:45', '2014-02-17 11:21:45', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_hocvien`
-- 

CREATE TABLE `daotao_hocvien` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `khoahoc` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `daotao_hocvien`
-- 

INSERT INTO `daotao_hocvien` VALUES (1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 8', 3, 'hieunhan1', 'dc9ad4e56ca354389df5e771aa5fb844', 'vi', 1, '2014-02-17 12:09:54', '2014-02-17 12:39:08', 'khachhang', 'admin', 0);
INSERT INTO `daotao_hocvien` VALUES (2, 'Ngoc Hien', 'ngochien@yahoo.com', '0976307543', '', 3, 'ngochien', '8d067d1b49f9e4d0b2de7bdf0f79ef65', 'vi', 1, '2014-02-17 12:22:49', '2014-02-17 12:22:49', 'khachhang', 'admin', 0);
INSERT INTO `daotao_hocvien` VALUES (3, 'Ngọc Khang', 'ngockhang@yahoo.com', '01234567890', '', 2, 'ngockhang', 'a2e0e53f9485d77a1ec9636842aacf04', 'vi', 1, '2014-02-17 12:36:08', '2014-02-17 12:36:08', 'khachhang', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_khoahoc`
-- 

CREATE TABLE `daotao_khoahoc` (
  `id` int(5) NOT NULL auto_increment,
  `id_lophoc` int(3) NOT NULL,
  `id_hocvien` int(5) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `daotao_khoahoc`
-- 

INSERT INTO `daotao_khoahoc` VALUES (1, 2, 1, 'vi', 1, '2014-02-17 12:32:59', '2014-02-17 12:32:59', 'admin', '', 0);
INSERT INTO `daotao_khoahoc` VALUES (2, 3, 1, 'vi', 1, '2014-02-17 12:33:04', '2014-02-17 12:33:04', 'admin', '', 0);
INSERT INTO `daotao_khoahoc` VALUES (3, 2, 2, 'vi', 1, '2014-02-17 12:35:13', '2014-02-17 12:35:13', 'admin', '', 0);
INSERT INTO `daotao_khoahoc` VALUES (4, 2, 3, 'vi', 1, '2014-02-17 12:36:42', '2014-02-17 12:36:42', 'admin', '', 0);
INSERT INTO `daotao_khoahoc` VALUES (5, 3, 3, 'vi', 1, '2014-02-17 12:38:44', '2014-02-17 12:38:44', 'admin', '', 0);
INSERT INTO `daotao_khoahoc` VALUES (6, 6, 1, 'vi', 1, '2014-02-17 15:47:05', '2014-02-17 15:47:05', 'admin', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_lophoc`
-- 

CREATE TABLE `daotao_lophoc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `id_khoahoc` int(3) NOT NULL,
  `notes` text,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `daotao_lophoc`
-- 

INSERT INTO `daotao_lophoc` VALUES (1, 'Anh ngữ giao tiếp - K1', 3, 'Giảng viên: Trần Văn B', 'vi', 1, '2014-02-17 10:26:32', '2014-02-10 10:59:49', 'admin', 'admin', 0);
INSERT INTO `daotao_lophoc` VALUES (2, 'Anh ngữ giao tiếp - K2', 3, '', 'vi', 1, '2014-02-17 10:49:09', '2014-02-17 10:55:28', 'admin', 'admin', 0);
INSERT INTO `daotao_lophoc` VALUES (3, 'TOEIC - K1', 4, '', 'vi', 1, '2014-02-17 10:49:26', '2014-02-17 10:49:26', 'admin', NULL, 0);
INSERT INTO `daotao_lophoc` VALUES (6, 'IELTS', 5, '', 'vi', 1, '2014-02-17 15:46:55', '2014-02-17 15:46:55', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `info`
-- 

CREATE TABLE `info` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `content` text,
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `info`
-- 

INSERT INTO `info` VALUES (1, 'Luyện thi chứng chỉ B1, B2, C1 (theo khung tham chiếu Châu Âu)', 'luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au', '', '<p>Luyện thi chứng chỉ B1, B2, C1&nbsp;(theo khung tham chiếu Châu Âu)</p>\r\n', '<p>Luyện thi chứng chỉ B1, B2, C1&nbsp;(theo khung tham chiếu Châu Âu)</p>\r\n', 'Luyện thi chứng chỉ B1, B2, C1 (theo khung tham chiếu Châu Âu)', 0, 'vi', ',5,', 1, '2013-12-28 11:35:21', '2013-12-23 13:56:26', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (2, 'Luyện thi chứng chỉ A,B,C quốc gia', 'luyen-thi-chung-chi-a-b-c-quoc-gia', '', '<p>Luyện thi chứng chỉ A,B,C quốc gia</p>\r\n', '<p>Luyện thi chứng chỉ A,B,C quốc gia</p>\r\n', 'Luyện thi chứng chỉ A,B,C quốc gia', 0, 'vi', ',5,', 1, '2013-12-28 11:37:51', '2013-12-25 13:55:57', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (3, 'Anh ngữ giao tiếp', 'anh-ngu-giao-tiep', '', '<p>Anh ngữ giao tiếp</p>\r\n', '<p>Anh ngữ giao tiếp</p>\r\n', 'Anh ngữ giao tiếp', 0, 'vi', ',5,', 1, '2013-12-28 11:38:11', '2013-12-27 13:54:50', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (4, 'TOEIC', 'toeic', '', '<p>TOEIC</p>\r\n', '<p>TOEIC</p>\r\n', 'TOEIC', 0, 'vi', ',5,', 1, '2013-12-28 11:38:29', '2013-12-22 13:56:36', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (5, 'IELTS', 'ielts', '', '<p>IELTS</p>\r\n', '<p>IELTS</p>\r\n', 'IELTS', 0, 'vi', ',5,', 1, '2013-12-28 11:38:40', '2013-12-24 13:56:09', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (6, 'Anh văn thiếu niên', 'anh-van-thieu-nien', '', '<p>Anh văn thiếu niên</p>\r\n', '<p>Anh văn thiếu niên</p>\r\n', 'Anh văn thiếu niên', 0, 'vi', ',5,', 1, '2013-12-28 11:38:54', '2013-12-26 13:55:44', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (7, 'Anh văn thiếu nhi', 'anh-van-thieu-nhi', '', '<p>Chương trình Anh ngữ Superkids dành cho các em từ 6 -11 tuổi được thiết kế nhằm giúp các em nâng cao kỹ năng nghe nói; học tốt chương trình tiếng Anh ở trường phổ thông và tự tin đạt được kết quả cao trong kỳ thi lấy chứng chỉ Anh ngữ quốc tế Cambridge Starters, Movers và Flyers.</p>\r\n', '<h2>Chương trình Anh ngữ Superkids dành cho các em từ 6 -11 tuổi được thiết kế nhằm giúp các em nâng cao kỹ năng nghe nói; học tốt chương trình tiếng Anh ở trường phổ thông và tự tin đạt được kết quả cao trong kỳ thi lấy chứng chỉ Anh ngữ quốc tế Cambridge Starters, Movers và Flyers.</h2>\r\n\r\n<p>Vì sao quý phụ huynh an tâm chọn Superkids cho bé?</p>\r\n\r\n<p>Anh Văn Hội Việt Mỹ là đối tác chiến lược duy nhất tại Việt Nam liên kết với trường Đại học công lập lớn nhất của Hoa Kỳ (The City University of New York – CUNY)</p>\r\n\r\n<p>Giáo trình mới nhất cho năm 2012 của nhà xuất bản Oxford phù hợp với các em thiếu nhi, được giảng dạy bởi các giáo viên bản ngữ am hiểu tâm lý lứa tuổi và có phương pháp dạy phù hợp.</p>\r\n\r\n<p>Tính tương tác rất cao nhờ phần mềm chuyên dụng iTool chú trọng phát âm chuẩn như người bản xứ, kết hợp với hoạt động sôi nổi như trò chơi, bài hát, video…</p>\r\n\r\n<p><strong>Lịch học</strong></p>\r\n\r\n<p>Thứ Bảy và Chủ Nhật: 07:45 – 09:45 / 10:00 – 12:00 / 14:45 – 16:45</p>\r\n\r\n<p><strong>Học phí</strong></p>\r\n\r\n<p>SUPERKIDS&nbsp;&nbsp; &nbsp;A 1-2-3-4&nbsp;&nbsp; &nbsp;3.800.000đ/ lớp/ 13 tuần</p>\r\n\r\n<p>B 1-2-3-4&nbsp;&nbsp; &nbsp;3.900.000đ/ lớp/ 13 tuần</p>\r\n\r\n<p>C 1-2-3-4&nbsp;&nbsp; &nbsp;4.000.000đ/ lớp/ 13 tuần</p>\r\n\r\n<p><em>*Các học viên chưa đáp ứng yêu cầu cho cấp độ Superkids sẽ được xếp vào lớp Pre-Superkids 1,2: 3.800.000đ/lớp/13 tuần</em></p>\r\n\r\n<p><strong>Xếp lớp</strong></p>\r\n\r\n<p>Sau khi kiểm tra kỹ năng vè ngôn ngữ, các em sẽ được xếp vào lớp phù hợp.</p>\r\n\r\n<p><strong>Chứng chỉ</strong></p>\r\n\r\n<p>Sau mỗi cấp độ, học viên sẽ nhận được chứng chỉ do Anh Văn Hội Việt Mỹ cấp.</p>\r\n\r\n<p>Học viên sẽ tham dự kỳ thi lấy chứng chỉ Anh ngữ quốc tế do Đại học Cambridge cấp.</p>\r\n', 'Anh văn thiếu nhi', 0, 'vi', ',5,', 1, '2013-12-28 11:39:07', '2013-12-28 14:31:52', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (8, 'Giới thiệu', 'gioi-thieu', '', '<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam</p>\r\n', '<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>\r\n\r\n<p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>\r\n\r\n<p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>\r\n\r\n<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>\r\n\r\n<p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>\r\n\r\n<p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>\r\n', 'Giới thiệu', 0, 'vi', ',1,', 1, '2013-12-30 14:04:16', '2013-12-27 14:12:36', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (12, 'Họat động chào mừng ngày nhà giáo Việt Nam  ', 'hoat-dong-chao-mung-ngay-nha-giao-viet-nam', '', '<p>Họat động chào mừng ngày nhà giáo Việt Nam &nbsp;<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; line-height: normal;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus</span></p>\r\n', '<p>Họat động chào mừng ngày nhà giáo Việt Nam &nbsp;</p>\r\n', 'Họat động chào mừng ngày nhà giáo Việt Nam  ', 1, 'vi', ',8,', 1, '2013-12-30 14:11:12', '2013-12-30 16:48:15', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (9, 'Tặng 200 phần quà cho Tết Nguyên Đán 2014', 'tang-200-phan-qua-cho-tet-nguyen-dan-2014', '', '<p>Tặng 200 phần quà cho Tết Nguyên Đán 2014&nbsp;<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; line-height: normal;">Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</span></p>\r\n', '<p>Tặng 200 phần quà cho Tết Nguyên Đán 2014</p>\r\n', 'Tặng 200 phần quà cho Tết Nguyên Đán 2014', 1, 'vi', ',8,', 1, '2013-12-30 14:04:32', '2013-12-30 16:48:44', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (10, 'Thư chúc mừng năm mới giáp ngọ 2014', 'thu-chuc-mung-nam-moi-giap-ngo-2014', '', '<p>Thư chúc mừng năm mới giáp ngọ 2014&nbsp;<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; font-size: 13px; line-height: normal;">sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.&nbsp;</span></p>\r\n', '<p>Thư chúc mừng năm mới giáp ngọ 2014</p>\r\n', 'Thư chúc mừng năm mới giáp ngọ 2014', 1, 'vi', ',8,', 1, '2013-12-30 14:05:09', '2013-12-30 16:48:31', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (11, 'Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á', 'su-kien-chao-mung-nam-giap-ngo-cua-trung-tam-dao-tao-nam-a', '', '<p>Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á&nbsp;<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; font-size: 13px; line-height: normal;">, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, </span></p>\r\n', '<p>Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á</p>\r\n', 'Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á', 1, 'vi', ',8,', 1, '2013-12-30 14:09:30', '2013-12-30 16:48:24', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `info_comment`
-- 

CREATE TABLE `info_comment` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `info_alias` varchar(200) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `info_comment`
-- 

INSERT INTO `info_comment` VALUES (1, 'Trần Nhân', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', NULL, 0);
INSERT INTO `info_comment` VALUES (2, 'Thu Thủy', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (3, 'Tran Van A', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (4, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (5, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (6, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (7, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (8, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (9, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (10, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (11, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (12, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (13, 'Tran Van C', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (14, 'Tran Van D', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (15, 'tran nhan', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (16, 'Trần Hiếu Nhân', '', '', 'than-hoat-tinh-gia-re', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);
INSERT INTO `info_comment` VALUES (17, 'asas', '', '', 'than-hoat-tinh-gia-re', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `language`
-- 

CREATE TABLE `language` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `ma` varchar(10) NOT NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `language`
-- 

INSERT INTO `language` VALUES (1, 'Việt Nam', 'vi', 1, 1);
INSERT INTO `language` VALUES (2, 'English', 'en', 2, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `menu`
-- 

CREATE TABLE `menu` (
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
  `lang` varchar(3) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'trung-tam-dao-tao-nam-a', '', '', 'Trung tâm đào tạo Nam Á', 'Trung tâm đào tạo Nam Á', 'Trung tâm đào tạo Nam Á', 0, 1, ',1,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 13:41:59', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Trang chủ giới thiệu', 'trang-chu-gioi-thieu', 'trang-chu-gioi-thieu/', '', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 1, 2, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:02', '2013-10-09 16:26:35', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Trang chủ sản phẩm', 'trang-chu-san-pham', 'trang-chu-san-pham/', '', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 1, 3, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:25', '2013-10-09 16:26:49', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Trang chủ liên hệ', 'trang-chu-lien-he', 'trang-chu-lien-he/', '', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 1, 8, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:38', '2013-10-09 16:27:02', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Khóa học', 'cac-chuong-trinh-tieng-anh', 'cac-chuong-trinh-tieng-anh/', '', 'Các chương trình tiếng anh', 'Các chương trình tiếng anh', 'Các chương trình tiếng anh', 0, 3, ',1,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 13:46:13', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 3, ',1,', 'vi', 0, 3, 0, '2013-10-09 15:39:24', '2013-10-09 16:14:52', 'admin', 'admin', 1);
INSERT INTO `menu` VALUES (7, 'Thông tin, bài viết', 'thong-tin-bai-viet', 'thong-tin-bai-viet/', '', 'Thông tin, bài viết', 'Thông tin, bài viết', 'Thông tin, bài viết', 0, 2, ',1,', 'vi', 0, 4, 0, '2013-10-09 15:39:46', '2013-10-09 15:39:46', 'admin', 'admin', 1);
INSERT INTO `menu` VALUES (8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 0, 2, ',1,', 'vi', 0, 3, 1, '2013-10-09 15:40:21', '2013-10-09 10:55:42', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'Liên hệ', 0, 8, ',1,', 'vi', 0, 4, 1, '2013-10-09 15:40:52', '2013-10-09 10:55:46', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Thông tin học viên', 'thong-tin-hoc-vien', 'thong-tin-hoc-vien/', '', 'Thông tin học viên', 'Thông tin học viên', 'Thông tin học viên', 0, 4, ',6,', 'vi', 0, 100, 1, '2014-02-17 14:04:22', '2014-02-17 14:04:22', 'admin', '', 0);

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
INSERT INTO `menu_admin` VALUES (3, 'Danh mục menu', 'menu', NULL, 3, 1, 0);
INSERT INTO `menu_admin` VALUES (4, 'Thông tin, bài viết', 'info', NULL, 4, 1, 0);
INSERT INTO `menu_admin` VALUES (5, 'Thông tin, bài viết bình luận', 'info_comment', NULL, 5, 0, 0);
INSERT INTO `menu_admin` VALUES (6, 'Sản phẩm', 'products', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (7, 'Support Online', 'support', '', 7, 0, 0);
INSERT INTO `menu_admin` VALUES (8, 'Booking online', 'booking', NULL, 8, 0, 0);
INSERT INTO `menu_admin` VALUES (9, 'Đào tạo - Lớp học', 'daotao_lophoc', NULL, 21, 1, 0);
INSERT INTO `menu_admin` VALUES (10, 'Đào tạo - Cột điểm', 'daotao_cotdiem', NULL, 22, 0, 0);
INSERT INTO `menu_admin` VALUES (11, 'Đào tạo - Bảng điểm', 'daotao_bangdiem', NULL, 23, 1, 0);
INSERT INTO `menu_admin` VALUES (12, 'Đào tạo - Học viên', 'daotao_hocvien', NULL, 20, 1, 0);
INSERT INTO `menu_admin` VALUES (13, 'Slider & banner', 'slider_banner', NULL, 13, 1, 0);
INSERT INTO `menu_admin` VALUES (14, 'Liên hệ', 'contact', NULL, 14, 1, 0);
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

INSERT INTO `menu_position` VALUES (1, 'Main', 0);
INSERT INTO `menu_position` VALUES (2, 'Home', 0);
INSERT INTO `menu_position` VALUES (3, 'Bottom', 1);
INSERT INTO `menu_position` VALUES (4, 'Left', 1);
INSERT INTO `menu_position` VALUES (5, 'Right', 1);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `menu_type`
-- 

INSERT INTO `menu_type` VALUES (1, 'Trang chủ', 0);
INSERT INTO `menu_type` VALUES (2, 'Thông tin, bài viết', 0);
INSERT INTO `menu_type` VALUES (3, 'Chương trình (khóa học)', 0);
INSERT INTO `menu_type` VALUES (4, 'Thông tin học viên', 0);
INSERT INTO `menu_type` VALUES (5, 'Loại temp 2', 1);
INSERT INTO `menu_type` VALUES (6, 'Loại temp 3', 1);
INSERT INTO `menu_type` VALUES (7, 'Loại temp 4', 1);
INSERT INTO `menu_type` VALUES (8, 'Liên hệ', 0);
INSERT INTO `menu_type` VALUES (9, 'Không', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `photo_gallery`
-- 

CREATE TABLE `photo_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `lang` varchar(3) default NULL,
  `menu_id` varchar(10) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

-- 
-- Dumping data for table `photo_gallery`
-- 

INSERT INTO `photo_gallery` VALUES (1, 'Học viên trường NETSPACE dã ngoại KDL Văn Thánh', 'da-ngoai-o-van-thanh.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (2, 'Giao lưu với hội đầu bếp Tỉnh Lâm Đồng', 'giao-luu-voi-hoi-dau-bep-tinh-lam-dong.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (3, 'Giao lưu với Mà Sáu', 'giao-luu-voi-ma-sau.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (4, 'Giao lưu với Siêu đầu bếp Đỗ Quang Long', 'giao-luu-voi-sieu-dau-bep-do-quang-long.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (5, 'Giao lưu với Siêu đầu bếp Dương Huy Khải', 'giao-luu-voi-sieu-dau-bep-duong-huy-khai.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (6, 'Trương Minh Cường học làm bánh kem', 'giao-luu-voi-truong-minh-cuong.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (7, 'Học làm bánh kem', 'hoc-lam-banh-kem.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (8, 'Học vịt quay', 'hoc-vit-quay.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (9, 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'ky-ket-hop-tac-involution-2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (10, 'Ký kết hợp tác với Evolution Institute', 'ky-ket-hop-tac-involution.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (11, 'Kỷ lục gỏi cuốn VN', 'ky-luc-goi-cuon.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (12, 'Lưu niệm kỷ lục gỏi cuốn VN 2012', 'luu-niem-ky-luc-goi-cuon-2012.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (13, 'Lưu niệm khóa Bếp Việt K2', 'luu-niem-khoa-bep-viet-k2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (14, 'Giao lưu với Siêu đầu bếp Davil Thái', 'sieu-dau-bep-davil-thai-truyen-dat-kinh-nghiem-nau-an.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (15, 'Siêu đầu bếp Nguyễn Văn Lập dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (16, 'Trương Minh Cường học làm bánh kem tại trường NETSPACE', 'truong-minh-cuong-hoc-nau-an-truong-netspace.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (17, 'Thức uống độc đáo 1', 'thuc-uong-doc-dao-1.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (18, 'Thức uống độc đáo 2', 'thuc-uong-doc-dao-2.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (19, 'Thức uống độc đáo 3', 'thuc-uong-doc-dao-3.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (20, 'Thức uống độc đáo 4', 'thuc-uong-doc-dao-4.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (21, 'Thức uống độc đáo 5', 'thuc-uong-doc-dao-5.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (22, 'Thức uống độc đáo 6', 'thuc-uong-doc-dao-6.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (23, 'Thức uống độc đáo 7', 'thuc-uong-doc-dao-7.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (24, 'Thức uống độc đáo 8', 'thuc-uong-doc-dao-8.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (25, 'Thức uống độc đáo 9', 'thuc-uong-doc-dao-9.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (26, 'Thức uống độc đáo 10', 'thuc-uong-doc-dao-10.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (27, 'Thức uống độc đáo 11', 'thuc-uong-doc-dao-11.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (28, 'Thức uống độc đáo 12', 'thuc-uong-doc-dao-12.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (29, 'Thức uống độc đáo 13', 'thuc-uong-doc-dao-13.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (30, 'Giao lưu với Siêu đầu bếp Davil Thái', 'giao-luu-voi-dieu-dau-bep-davil-thai-k4.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (31, 'Kỷ lục gỏi cuốn VN năm 2012', 'ky-luc-goi-cuon-vn-2012-2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (32, 'Kỷ lục gỏi cuốn VN năm 2012 - Phỏng vấn', 'ky-luc-goi-cuon-vn-2012-3.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (33, 'Cơm tấm sườn bì chả - Thầy Toàn', 'com-tam-suon-bi-cha-thay-toan.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (34, 'Bánh xèo', 'banh-xeo.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (35, 'Bún bò Huế', 'bun-bo-hue.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (36, 'Bún riêu', 'bun-rieu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (37, 'Bún thịt nướng', 'bun-thit-nuong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (38, 'Cá chẻm sốt cam', 'ca-chem-sot-cam.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (39, 'Cá cơm chiên giòn', 'Ca-com-chien-gion.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (40, 'Cá điêu hồng sốt cam', 'Ca-dieu-hong-sot-cam.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (41, 'Cá rô kho tộ - Thầy Duy', 'ca-ro-kho-to-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (42, 'Cá tai tượng chiên xù', 'ca-tai-tuong-chien-xu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (43, 'Bò nướng xiên', 'bo-nuong-xien.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (44, 'Chả ốc lá nốt', 'cha-oc-la-not.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (45, 'Cháo cà miền Tây - Thầy Duy', 'Chao-ca-mien-tay-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (46, 'Cháo gà xé phay - Thầy Duy', 'Chao-ga-xe-phay-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (47, 'Cơm gà xối mỡ', 'Com-ga-xoi-mo.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (48, 'Bò nướng ống tre', 'bo-nuong-ong-tre.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (49, 'Bao tử hầm tiêu', 'bao-tu-ham-tieu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (50, 'Bánh hỏi thịt nướng', 'banh-hoi-thit-nuong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (51, 'Cơm chiên ngũ sắc', 'Com-chien-ngu-sac.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (52, 'Chả giò bánh bía - Cô Thu', 'cha-gio-banh-bia-co-thu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (53, 'Chả cá Lã Vọng', 'Cha-ca-LA-Vong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (54, 'Bông bí dòn thịt', 'Bong-bi-don-thit.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (55, 'Canh chua cá bông lau - Thầy Duy', 'canh-chua-ca-bong-lau-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (56, 'Lớp bánh - Bánh choux Eclair', 'lop-banh-Banh-choux-Eclair-3.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (57, 'Ham T', 'ham-t.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (58, 'Seafood C', 'seafood-c.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (59, 'Lớp bánh - Bánh choux Eclair 2', 'lop-banh-Banh-choux-Eclair-5.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (60, 'Ham C', 'ham-c.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (61, 'Lớp bánh - Bánh choux Eclair 3', 'lop-banh-Banh-choux-Eclair-4.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (62, 'Lớp bánh - Bánh choux Eclair 4', 'lop-banh-Banh-choux-Eclair-3.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (63, 'Seafood T', 'seafood-t.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (64, 'Lớp bánh - Bánh choux Eclair 5', 'lop-banh-Banh-choux-Eclair-1.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (65, 'Hội đầu bếp CN Sài Gòn  1', 'hoi-dau-bep-cn-saigon-1.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (66, 'Hội đầu bếp CN Sài Gòn 2', 'hoi-dau-bep-cn-saigon-2.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (67, 'Hội đầu bếp CN Sài Gòn 3', 'hoi-dau-bep-cn-saigon-3.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (68, 'Hội đầu bếp CN Sài Gòn 4', 'hoi-dau-bep-cn-saigon-4.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (69, 'Hội đầu bếp CN Sài Gòn 5', 'hoi-dau-bep-cn-saigon-5.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (70, 'Hội đầu bếp CN Sài Gòn 6', 'hoi-dau-bep-cn-saigon-6.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (71, 'Hội đầu bếp CN Sài Gòn 7', 'hoi-dau-bep-cn-saigon-7.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (72, 'Hội đầu bếp CN Sài Gòn 8', 'hoi-dau-bep-cn-saigon-8.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (73, 'Hội đầu bếp CN Sài Gòn 9', 'hoi-dau-bep-cn-saigon-9.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (74, 'Hội đầu bếp CN Sài Gòn 10', 'hoi-dau-bep-cn-saigon-10.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (75, 'Hội đầu bếp CN Sài Gòn 11', 'hoi-dau-bep-cn-saigon-11.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (76, 'Hội đầu bếp CN Sài Gòn 12', 'hoi-dau-bep-cn-saigon-12.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (77, 'Hội đầu bếp CN Sài Gòn 13', 'hoi-dau-bep-cn-saigon-13.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (78, 'Hội đầu bếp CN Sài Gòn 14', 'hoi-dau-bep-cn-saigon-14.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (79, 'Hội đầu bếp CN Sài Gòn 15', 'hoi-dau-bep-cn-saigon-15.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (80, 'Hội đầu bếp CN Sài Gòn 16', 'hoi-dau-bep-cn-saigon-16.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (81, 'Hội đầu bếp CN Sài Gòn 17', 'hoi-dau-bep-cn-saigon-17.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (82, 'Hội đầu bếp CN Sài Gòn 18', 'hoi-dau-bep-cn-saigon-18.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (83, 'Hội đầu bếp CN Sài Gòn 19', 'hoi-dau-bep-cn-saigon-19.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (84, 'Hội đầu bếp CN Sài Gòn 20', 'hoi-dau-bep-cn-saigon-20.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (85, 'Hội đầu bếp CN Sài Gòn 21', 'hoi-dau-bep-cn-saigon-21.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (86, 'Hội đầu bếp CN Sài Gòn 22', 'hoi-dau-bep-cn-saigon-22.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (87, 'Anh Khao - Việt Anh - Huy Khanh', 'ANHKHAO-VIETANH-huykhanh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (88, 'Tường Vi - Trường NETSPACE', 'TUONGVI.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (89, 'Tường Vi - Hiếu Hiền - Trường NETSPACE', 'TUONGVI-HIEUHIEN.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (90, 'Tường Vi - Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'TUONGVI-HIEUHIEN-thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (91, 'Trung Hậu - Trường NETSPACE', 'TRUNG-HAU.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (92, 'Thanh Thúy - Thái Hòa - Trường NETSPACE', 'THANHTHUY-thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (93, 'Hoa hậu Mai Phương Thúy - Trường NETSPACE', 'HOA-HAU-MAI-PHUONG-THUY.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (94, 'Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'HIEUHIEN-Thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (95, 'Hiếu Hiền - Thái Hòa - Cùng với Học Viên Trường NETSPACE', 'HIEUHIEN-thaihoa-tai-netspace.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (96, 'Diễn viên Trường Thịnh - Trường NETSPACE', 'dv-truong-thinh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (97, 'Diễn viên Trương Minh Cường- Trường NETSPACE', 'dv-truong-minh-cuong.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (98, 'Diễn viên Trương Minh Cường - Cùng với học viên Trường NETSPACE', 'dv-truong-minh-cuong-2.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (99, 'Diễn viên phim Lưu Manh Đầu Bếp - Trường NETSPACE', 'dv-phim-luu-manh-dau-bep.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (100, 'Diễn viên Hà Hiền - Trường NETSPACE', 'dv-ha-hien.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (101, 'Đoàn làm phim Bếp của Mẹ', 'doan-lam-phim-bep-cua-me.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (102, 'Đoàn làm phim Bếp của Mẹ tại Trường NETSPACE', 'doan-lam-phim-bep-cua-me-2.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (103, 'Diễn viên Trường Thịnh tại Trường NETSPACE', 'dien-vien-truong-thinh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `products`
-- 

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `content` text,
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `products`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `slider_banner`
-- 

CREATE TABLE `slider_banner` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `content` text NOT NULL,
  `lang` varchar(3) default NULL,
  `position_id` int(1) default '1',
  `menu_id` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (2, 'Slider', 'slider.jpg', 'javascript:;', '', 'vi', 1, ',1,5,8,9,10,', 1, '2014-01-08 17:27:40', '2014-01-08 14:05:26', 'admin', 'admin', 0);

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

INSERT INTO `slider_banner_position` VALUES (1, 'Slider 1000x200 px', 0);
INSERT INTO `slider_banner_position` VALUES (2, 'Event home 490x280 px', 0);

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
  `group_id` int(1) default '0',
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

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,12,13,14,9,10,11,15,', ',1,2,3,4,6,12,13,14,9,10,11,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `users_group`
-- 

CREATE TABLE `users_group` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
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
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(20) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `video`
-- 

INSERT INTO `video` VALUES (2, 'Vietnamese Cuisine Part 1', 'vietnamese-cuisine-part-1', 'Vietnamese-Cuisine-1.jpg', 'http://www.youtube.com/embed/UjOZRdO-KQk', 'Vietnamese Cuisine Part 1', '', 'Vietnamese Cuisine Part 1', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (3, 'Vietnamese Cuisine Part 2', 'vietnamese-cuisine-part-2', 'Vietnamese-Cuisine-2.jpg', 'http://www.youtube.com/embed/uwEPzyHyQF8', 'Vietnamese Cuisine Part 2', '', 'Vietnamese Cuisine Part 2', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (4, 'Vietnamese Cuisine Part 3', 'vietnamese-cuisine-part-3', 'Vietnamese-Cuisine-3.jpg', 'http://www.youtube.com/embed/Ev_tBCwKZng', 'Vietnamese Cuisine Part 3', '', 'Vietnamese Cuisine Part 3', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (5, 'Vietnamese Cuisine Part 4', 'vietnamese-cuisine-part-4', 'Vietnamese-Cuisine-4.jpg', 'http://www.youtube.com/watch?v=IY8wJD3RdY0', 'Vietnamese Cuisine Part 4', '', 'Vietnamese Cuisine Part 4', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (6, 'Vietnamese Cuisine Part 5', 'vietnamese-cuisine-part-5', 'Vietnamese-Cuisine-5.jpg', 'http://www.youtube.com/watch?v=X4tDkxC7MXo', 'Vietnamese Cuisine Part 5', '', 'Vietnamese Cuisine Part 5', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (7, 'Vietnamese Cuisine Part 6', 'vietnamese-cuisine-part-6', 'Vietnamese-Cuisine-6.jpg', 'http://www.youtube.com/watch?v=TtQO4BBermU', 'Vietnamese Cuisine Part 6', '', 'Vietnamese Cuisine Part 6', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (8, 'Diễn Viên- Trương Minh Cường học nấu ăn tại Trường NetSpace.', 'Dien-Vien-Truong-Minh-Cuong-Hoc-Nau-An-Tai-Truong-Netspace', 'dien-vien-truong-minh-cuong-tai-truong-netspace.jpg', 'http://www.youtube.com/embed/HzPkh9oBPvI', 'Diễn Viên - Trương Minh Cường học nấu ăn tại Trường NetSpace.', '', 'Diễn Viên Trương Minh Cường, học nấu ăn tại Trường NetSpace.', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (9, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', 'lang-kinh-nghe-nghiep-danh-thuc-tai-nang-viet-phan-1', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-1.jpg', 'http://www.youtube.com/embed/5NEYiKjiWNs', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (10, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2.jpg', 'http://www.youtube.com/embed/AOZfx_1Jf_I', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', '', 'Lăng kính nghề nghiệp,Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (11, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3.jpg', 'http://www.youtube.com/embed/CrgaA-pKahA', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (12, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4.jpg', 'http://www.youtube.com/embed/xvuCdlYOTns', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (13, 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', 'Hoc-Vien-Hoc-Nau-An-Tai-Truong-Netspace-Tham-Gia-Ky-Luc-Cac-Mon-Cuon-Viet-Nam', 'lien-hoan-cac-mon-cuon-viet-nam.jpg', 'http://www.youtube.com/embed/HVZ94TWPI60', 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', '', 'Học viên, học nấu ăn, tại trường NetSpace,kỷ lục các món cuốn Việt Nam', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (14, 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace.jpg', 'http://www.youtube.com/embed/6QzKTBIKSDU', 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', '', 'Chef Norbert Ehrbar, Dạy Nấu Ăn, tại Trường NetSpace', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (15, 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', 'Hoc-Vien-Truong-Netspace-Hoc-Nau-An-Voi-Thay-Do-Quang-Long', 'Sieu-Dau-Bep-Do-Quang-Long-Huong-Dan-Kinh-Nghiem-Lam-Bep-Thanh-Cong-10-01-2013.jpg', 'http://www.youtube.com/embed/0xk5KON_5W8', 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', '', 'Học viên trường NetSpace, học nấu ăn với thầy Đỗ Quang Long', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (16, 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An.jpg', 'http://www.youtube.com/embed/ETL1u-EsUbU', '', '', 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (17, 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace.png', 'http://www.youtube.com/embed/lgogLzkOVAY', 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', '', 'Tiệc Tất Niên 2013, trường ẩm thực NETSPACE', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (18, 'Hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/s5j9JgNiOyE', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', '', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (19, 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/plS-81GTQC8', 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', '', 'Học nấu ăn, các món Âu, trường dạy nghề ẩm thực NETSPACE', 0, 'vi', ',76,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (20, 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/R7eDXCAHapw', 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', '', 'Học nấu ăn, các món Hoa, tại trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',76,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (21, 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban.jpg', 'http://www.youtube.com/embed/h66cbZuVux4', 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', '', 'Học nấu ăn,Dạy nướng Teppanyaki Nhật Bản ', 1, 'vi', ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (22, 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 'day-pha-che-barrista-bartender-truong-day-pha-che-netspace', 'Hoc-Nau-An-Worlds-Best-Bartender.jpg', 'http://www.youtube.com/embed/T8rtIXLcdtE', 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', '', 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 1, 'vi', ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (23, 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep.jpg', 'http://www.youtube.com/embed/v12mC_vyKo4', '', '', 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (24, 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An.jpg', 'http://www.youtube.com/embed/u3nJRno992Q', '', '', 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (25, 'Kinh doanh quán ăn nhỏ', 'kinh-doanh-quan-an-nho', 'kinh-doanh-quan-an-nho.jpg', 'http://www.youtube.com/embed/UxxGOQDvK4I', 'Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><img alt="Kinh doanh quán ăn nhỏ" src="/upload/images/video/kinh-doanh-quan-an-nho.jpg" style="line-height: 1.6em; width: 550px; height: 385px;" /></p>\r\n\r\n<p style="text-align: center;"><em><strong>Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE</strong></em></p>\r\n', 'Kinh doanh quán ăn nhỏ', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `video` VALUES (26, 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', 'hoc-nau-an-nuong-teppanyaky-nhat-ban', 'hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg', 'http://www.youtube.com/embed/VRCHwpu1Lgc', 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><strong>Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="Học nấu ăn, Nướng TEPPANYAKY Nhật Bản" src="/upload/images/video/hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg" style="width: 550px; height: 354px;" /></strong></p>\r\n', 'Học nấu ăn, Nướng TEPPANYAKY Nhật Bản,Nướng TEPPANYAKY', 0, NULL, ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (27, 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap-day-nau-an', 'sieu-dau-bep-nguyen-van-lap-day-nau-an.png', 'http://www.youtube.com/embed/28oIxsPN4Xo', 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', '', 'Siêu đầu bếp Nguyễn Văn Lập, Dạy nấu ăn', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `video` VALUES (28, 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an.png', 'http://www.youtube.com/embed/I21HhBkv6jU', 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', '<p style="text-align: center;"><img alt="Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn" src="/upload/images/video/sieu-dau-bep-le-vo-anh-duy-day-nau-an.png" style="width: 455px; height: 315px;" /></p>\r\n', 'Siêu đầu bếp Lê Võ Anh Duy,Dạy nấu ăn', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `video` VALUES (29, 'Video Clip Hoạt Động Dã Ngoại NetSpace 18/07/2013', 'video-clip-hoat-dong-da-ngoai-netspace-18-07-2013', 'ngay-vui-da-ngoai-cua-truong-am-thuc-netspace-27.jpg', 'http://www.youtube.com/embed/9-O_VXSRvEw', 'Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.', '<h2 style="margin: 0px; font-size: 13px; line-height: 22px; font-family: Arial, Helvetica, sans-serif;">Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.</h2>\r\n', 'Hoạt động dã ngoại Trường Ẩm Thực NetSpace', 1, NULL, ',74,', 1, '0000-00-00 00:00:00', NULL, 'chau', 'chau', 0);
