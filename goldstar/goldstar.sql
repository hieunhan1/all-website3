-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 02, 2013 at 02:05 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `goldstar`
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
  `yahoo` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
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

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/goldstar', 10, 10, 10, 10, 'Copyright © 2013.', '<p><span style="color:#FF0000;"><strong>CÔNG TY TNHH MTV XNK SAO VÀNG</strong></span></p>\r\n\r\n<p>Địa chỉ: R4-Hưng Phước 1, KĐT Phú Mỹ Hưng, P.Tân Phong, Q7, Tp.HCM&nbsp;</p>\r\n\r\n<p>Điện thoại: (+84-8) 5410 1615 &nbsp;- &nbsp;FAX: (+84-8) 5410 4685</p>\r\n\r\n<p>Email: contact@banhkeocw.com</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span style="color:#FF0000;"><strong>CÔNG TY TNHH MTV XNK SAO VÀNG</strong></span></p>\r\n\r\n<p>Địa chỉ: R4-Hưng Phước 1, KĐT Phú Mỹ Hưng, P.Tân Phong, Q7, Tp.HCM&nbsp;</p>\r\n\r\n<p>Điện thoại: (+84-8) 5410 1615 &nbsp;- &nbsp;FAX: (+84-8) 5410 4685</p>\r\n\r\n<p>Email: contact@banhkeocw.com</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '08 54 10 16 15', '0988388003', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 10:56:19', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'Korean', 'ko', '', 'localhost/all/goldstar', 10, 10, 10, 10, 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', '<p>Add: 87 Thang Long Str., Ward 4, Tan Binh Dist, HCMC, Vietnam.<br />\r\nTel: (84.8) 3 948 4696 - Fax : ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', '<table border="0" cellpadding="0" cellspacing="5" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">HEAD OFFICE</span></h3>\r\n\r\n			<p>Add: Lot III/22, 19/5A Rd, Tan Binh IZ, Tan Phu Dist., Ho Chi Minh city, Vietnam<br />\r\n			Tel: (84.8) 3 815 5319 - Fax: (84.8) 3 815 5320<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">DANANG OFFICE</span></h3>\r\n\r\n			<p>Add: 183 Nguyen Tri Phuong Str., W. Vinh Trung, Thanh Khe Dist., Da Nang city, Vietnam<br />\r\n			Tel: (84.511) 3 561 561 - Fax: (84.511) 3 824 602<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3 style="font-size: 13px;"><span style="color:#FF0000;">HCM OFFICE</span></h3>\r\n\r\n			<p style="font-size: 13px;">Add: 87 Thang Long Str., Ward 4, Tan Binh Dist., HCMC, Vietnam<br />\r\n			Tel: (84.8) 3 948 4696 - Fax: (84.8) 3 948 4697<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">CANTHO OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: 40 A3 Str., Hung Phu I, Cai Rang Dist., Can Tho city, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.0710) 625 8539 - Fax: (84.0710) 625 8540</span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">HANOI OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: No. 1 Alley 71, Linh Lang Str., Cong Vi Ward, Ba Dinh Dist., Ha Noi, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.4) 3 726 0122 - Fax: (84.4) 3 726 0144</span></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '08 54 10 16 15', '', '', 1, '2013-08-10 10:09:29', '2013-08-10 10:34:30', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` VALUES (1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', '<p>Contact Information</p>\r\n', 'vi', 1, '2013-09-25 12:32:52', '2013-09-26 17:24:27', 'khachhang', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `donhang`
-- 

CREATE TABLE `donhang` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `donhang`
-- 

INSERT INTO `donhang` VALUES (1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', 'Trung tâm Tp.Cần Thơ', 'Giao giờ HC', '', 0, '2013-11-02 14:04:32', '2013-11-02 14:04:32', 'khachhang', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `donhang_chitiet`
-- 

CREATE TABLE `donhang_chitiet` (
  `id` int(11) NOT NULL auto_increment,
  `donhang_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `soluong` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `donhang_chitiet`
-- 

INSERT INTO `donhang_chitiet` VALUES (1, 1, 16, 10);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `info`
-- 

INSERT INTO `info` VALUES (1, 'Công ty TNHH MTV xuất nhập khẩu Sao Vàng', 'cong-ty-tnhh-mtv-xuat-nhap-khau-sao-vang', 'gioi-thieu.gif', '<p>Chuyên cung cấp sản phẩm ngoại nhập chinh phục khách hàng không chỉ bởi chất lượng mà còn vì văn hóa của đất nước nơi sản xuất sản phẩm. Hàn Quốc là một trong những nước có nền kinh tế phát triển trong khu vực Châu Á và trên thế giới, bên cạnh đó văn hóa Hàn Quốc ngày càng được thế giới biết đến qua sự phát triển mạnh mẽ của nền điện ảnh, âm nhạc, ẩm thực và nghệ thuật.</p>\r\n', '<p>Chuyên cung cấp sản phẩm ngoại nhập chinh phục khách hàng không chỉ bởi chất lượng mà còn vì văn hóa của đất nước nơi sản xuất sản phẩm. Hàn Quốc là một trong những nước có nền kinh tế phát triển trong khu vực Châu Á và trên thế giới, bên cạnh đó văn hóa Hàn Quốc ngày càng được thế giới biết đến qua sự phát triển mạnh mẽ của nền điện ảnh, âm nhạc, ẩm thực và nghệ thuật.</p>\r\n', 'Công ty TNHH MTV xuất nhập khẩu Sao Vàng', 0, 'vi', ',1,5,', 1, '2013-11-01 14:15:04', '2013-11-01 11:34:18', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (2, 'Kẹo Sâm được bộ y tế công nhận sản phẩm được phẩm', 'keo-sam-duoc-bo-y-te-cong-nhan-san-pham-duoc-pham', 'keo-sam-duoc-bo-y-te-cong-nhan-san-pham-duoc-pham.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n', 'Kẹo Sâm được bộ y tế công nhận sản phẩm được phẩm', 0, 'vi', ',8,', 1, '2013-11-02 09:22:55', '2013-11-02 10:43:40', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (3, 'Kẹo sâm Hàn Quốc không đường chăm sóc sức khỏe', 'keo-sam-han-quoc-khong-duong-cham-soc-suc-khoe', 'keo-nhan-sam-han-quoc-khong-duong-cham-soc-suc-khoe.jpg', 'Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor.</h2>\r\n\r\n<h2 style="text-align: center;"><img alt="Kẹo sâm Hàn Quốc không đường chăm sóc sức khỏe" src="/all/goldstar/public/images/articles/keo-nhan-sam-han-quoc-khong-duong-cham-soc-suc-khoe.jpg" style="text-align: center; font-size: 13px; line-height: 1.6em;" /></h2>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.</p>\r\n\r\n<p>Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<h3>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</h3>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'Kẹo nhân sâm Hàn Quốc không đường chăm sóc sức khỏe', 0, 'vi', ',8,', 1, '2013-11-02 09:23:10', '2013-11-02 11:19:33', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (4, 'Kẹo nhân sâm Hàn Quốc tốt cho người già', 'keo-nhan-sam-han-quoc-tot-cho-nguoi-gia', 'keo-nhan-sam-han-quoc-tot-cho-nguoi-gia.jpg', 'Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. ', '<p><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; line-height: normal;">Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.&nbsp;</span></p>\r\n', 'Kẹo nhân sâm Hàn Quốc tốt cho người già', 0, 'vi', ',8,', 1, '2013-11-02 09:23:27', '2013-11-02 10:44:09', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (5, 'Kẹo nhân sâm Hàn Quốc thực phẩm chức năng tốt', 'keo-nhan-sam-han-quoc-thuc-pham-chuc-nang-tot', 'keo-nhan-sam-han-quoc-thuc-pham-chuc-nang-tot.jpg', 'Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.', '<p><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; line-height: normal;">Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.</span></p>\r\n', 'Kẹo nhân sâm Hàn Quốc thực phẩm chức năng tốt', 0, 'vi', ',8,', 1, '2013-11-02 09:23:41', '2013-11-02 10:44:24', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (6, 'Kẹo nhân sâm Hàn Quốc thực phẩm chức năng tốt nhất', 'keo-nhan-sam-han-quoc-thuc-pham-chuc-nang-tot-nhat', 'keo-nhan-sam-han-quoc-thuc-pham-chuc-nang-tot-nhat.jpg', 'Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus.', '<p><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, Tahoma, Verdana, sans-serif; line-height: normal;">Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus.</span></p>\r\n', 'Kẹo nhân sâm Hàn Quốc thực phẩm chức năng tốt nhất', 0, 'vi', ',8,', 1, '2013-11-02 09:24:12', '2013-11-02 10:44:39', 'admin', 'admin', 0);

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
INSERT INTO `language` VALUES (2, 'Korean', 'ko', 2, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'trang-chu', '?lang=vi', '', 'Trang chủ', 'Trang chủ', 'Trang chủ', 0, 1, ',1,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 16:08:52', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Trang chủ giới thiệu', 'trang-chu-gioi-thieu', 'trang-chu-gioi-thieu/', '', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 1, 2, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:02', '2013-10-09 14:05:35', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Khuyến mãi hôm nay', 'khuyen-mai-hom-nay', 'khuyen-mai-hom-nay/', 'khuyen-mai.gif', 'Khuyến mãi hôm nay', 'Khuyến mãi hôm nay', 'Khuyến mãi hôm nay', 7, 3, ',6,', 'vi', 1, 0, 1, '2013-10-09 15:38:25', '2013-10-09 14:12:16', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Kẹo Hàn Quốc', 'keo-han-quoc', 'keo-han-quoc/', 'keo-han-quoc.gif', 'Kẹo Hàn Quốc', 'Công ty Nhập khẩu kẹo Nhân sâm hàn quốc và phân phối trực tiếp tại việt nam - Được bộ y tế chứng nhận kẹo Nhân sâm nhập khẩu chính hiệu Hàn quốc. Tự hào là nhà phân phối mua bán kẹo nhân sâm hàn quốc giá rẻ nhất', 'Kẹo Hàn Quốc', 7, 3, ',1,4,', 'vi', 1, 0, 1, '2013-10-09 15:38:38', '2013-10-09 17:31:30', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',1,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 15:39:02', 'admin', '', 0);
INSERT INTO `menu` VALUES (6, 'Xuất nhập khẩu', 'xuat-nhap-khau', 'xuat-nhap-khau/', '', 'Xuất nhập khẩu', 'Xuất nhập khẩu', 'Xuất nhập khẩu', 0, 2, ',1,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 15:52:11', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (7, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 3, ',1,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 17:05:09', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (8, 'Thông tin - Sự kiện', 'thong-tin-su-kien', 'thong-tin-su-kien/', '', 'Thông tin - Sự kiện', 'Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus.', 'Thông tin - Sự kiện', 0, 2, ',1,4,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 10:50:42', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'Liên hệ', 0, 8, ',1,', 'vi', 0, 7, 1, '2013-10-09 15:40:52', '2013-10-09 12:02:28', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Tuyển dụng', 'tuyen-dung', 'tuyen-dung/', '', 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 0, 2, ',1,', 'vi', 0, 6, 1, '2013-10-31 15:53:13', '2013-10-31 15:53:13', 'admin', '', 0);
INSERT INTO `menu` VALUES (11, 'Home', 'home', '?lang=ko', '', 'Home', 'Home', 'Home', 0, 1, ',1,', 'ko', 0, 1, 1, '2013-10-31 16:31:27', '2013-10-31 16:34:47', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (12, 'About Us', 'about-us', 'about-us/', '', 'About Us', 'About Us', 'About Us', 0, 2, ',1,', 'ko', 0, 2, 1, '2013-10-31 16:36:48', '2013-10-31 16:36:48', 'admin', '', 0);
INSERT INTO `menu` VALUES (13, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, ',1,', 'ko', 0, 4, 1, '2013-10-31 16:37:36', '2013-10-31 16:37:36', 'admin', '', 0);
INSERT INTO `menu` VALUES (14, 'Bánh Hàn Quốc', 'banh-han-quoc', 'banh-han-quoc/', 'banh-han-quoc.gif', 'Bánh Hàn Quốc', 'Bánh Hàn Quốc', 'Bánh Hàn Quốc', 7, 3, ',1,4,', 'vi', 1, 0, 1, '2013-10-31 17:04:45', '2013-10-31 17:04:37', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (15, 'Promotions', 'promotions', 'promotions/', 'khuyen-mai.gif', 'Promotions', 'Promotions', 'Promotions', 13, 3, ',6,', 'ko', 1, 1, 1, '2013-11-01 16:17:20', '2013-11-01 16:17:20', 'admin', '', 0);
INSERT INTO `menu` VALUES (16, 'Korean Cake', 'korean-cake', 'korean-cake/', 'keo-han-quoc.gif', 'Korean Cake', 'Korean Cake', 'Korean Cake', 13, 3, ',6,', 'ko', 1, 2, 1, '2013-11-01 16:17:38', '2013-11-01 16:19:51', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (17, 'Korean Candy', 'korean-candy', 'korean-candy/', 'banh-han-quoc.gif', 'Korean Candy', 'Korean Candy', 'Korean Candy', 13, 3, ',6,', 'ko', 1, 3, 1, '2013-11-01 16:18:00', '2013-11-01 16:19:59', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (18, 'Facebook', 'facebook', 'javascript:;', 'facebook.jpg', 'Facebook', 'Facebook', 'Facebook', 0, 9, ',6,', 'vi', 0, 100, 1, '2013-11-01 16:26:11', '2013-11-01 16:26:25', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (19, 'Twitter', 'twitter', 'javascript:;2', 'twitter.jpg', 'Twitter', 'Twitter', 'Twitter', 0, 9, ',6,', 'vi', 0, 101, 1, '2013-11-01 16:27:08', '2013-11-01 16:27:08', 'admin', '', 0);
INSERT INTO `menu` VALUES (20, 'Linkedin', 'linkedin', 'javascript:;3', 'linkedIn.jpg', 'Linkedin', 'Linkedin', 'Linkedin', 0, 9, ',6,', 'vi', 0, 102, 1, '2013-11-01 16:27:46', '2013-11-01 16:27:46', 'admin', '', 0);
INSERT INTO `menu` VALUES (21, 'Google+', 'google', 'javascript:;4', 'google.jpg', 'Google+', 'Google+', 'Google+', 0, 9, ',6,', 'vi', 0, 103, 1, '2013-11-01 16:28:11', '2013-11-01 16:28:11', 'admin', '', 0);
INSERT INTO `menu` VALUES (22, 'Bánh Snack', 'banh-snack', 'banh-snack/', '', 'Bánh Snack', 'Bánh Snack', 'Bánh Snack', 7, 3, ',1,4,', 'vi', 0, 0, 1, '2013-11-01 17:02:28', '2013-11-01 17:21:48', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (23, 'Nước', 'nuoc', 'nuoc/', '', 'Nước', 'Nước', 'Nước', 7, 3, ',1,4,', 'vi', 0, 0, 1, '2013-11-01 17:02:43', '2013-11-01 17:21:52', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (24, 'Rong biển', 'rong-bien', 'rong-bien/', '', 'Rong biển', 'Rong biển', 'Rong biển', 7, 3, ',1,4,', 'vi', 0, 0, 1, '2013-11-01 17:02:55', '2013-11-01 17:21:57', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (25, 'Gia vị', 'gia-vi', 'gia-vi/', '', 'Gia vị', 'Gia vị', 'Gia vị', 7, 3, ',1,4,', 'vi', 0, 0, 1, '2013-11-01 17:03:09', '2013-11-01 17:22:06', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (26, 'Trà', 'tra', 'tra/', '', 'Trà', 'Trà', 'Trà', 7, 3, ',1,4,', 'vi', 0, 0, 1, '2013-11-01 17:03:18', '2013-11-01 17:22:10', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (27, 'Giỏ hàng', 'gio-hang-banh-keo-han-quoc', 'gio-hang-banh-keo-han-quoc/', '', 'Giỏ hàng bánh kẹo Hàn Quốc', 'Giỏ hàng bánh kẹo Hàn Quốc', 'Giỏ hàng bánh kẹo Hàn Quốc', 0, 4, ',10,', 'vi', 0, 99, 1, '2013-11-02 12:21:36', '2013-11-02 12:21:57', 'admin', 'admin', 0);

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
INSERT INTO `menu_admin` VALUES (9, 'Danh sách bảng giá', 'booking_banggia', NULL, 9, 0, 0);
INSERT INTO `menu_admin` VALUES (10, 'Danh sách đi từ', 'booking_form', NULL, 10, 0, 0);
INSERT INTO `menu_admin` VALUES (11, 'Danh sách đến', 'booking_to', NULL, 11, 0, 0);
INSERT INTO `menu_admin` VALUES (12, 'Track & trace', 'tracktrace', NULL, 12, 0, 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `menu_position`
-- 

INSERT INTO `menu_position` VALUES (1, 'Main', 0);
INSERT INTO `menu_position` VALUES (2, 'Top', 1);
INSERT INTO `menu_position` VALUES (3, 'Bottom', 1);
INSERT INTO `menu_position` VALUES (4, 'Left', 0);
INSERT INTO `menu_position` VALUES (5, 'Right', 1);
INSERT INTO `menu_position` VALUES (6, 'Social', 0);
INSERT INTO `menu_position` VALUES (10, 'Không', 0);

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
INSERT INTO `menu_type` VALUES (3, 'Sản phẩm', 0);
INSERT INTO `menu_type` VALUES (4, 'Giỏ hàng', 0);
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
  `price` int(6) NOT NULL,
  `price_km` int(6) default NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` VALUES (1, 'Snack Mực Ống 80G', 'snack-muc-ong-80g', 125000, 105000, 'product.jpg', '<p>Snack Mực Ống 80G</p>\r\n', '<p>Snack Mực Ống 80G</p>\r\n', 'Snack Mực Ống 80G', 1, 'vi', ',7,3,', 1, '2013-11-01 13:55:57', '2013-11-01 16:08:08', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (2, 'Snack Bắp 80G', 'snack-bap-80g', 165000, 135000, 'snack-bap-80g.jpg', '', '', 'Snack Bắp 80G', 1, 'vi', ',7,3,', 1, '2013-11-01 14:02:04', '2013-11-01 16:08:04', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (3, 'Bánh Quy Bí Đỏ 100G', 'banh-quy-bi-do-100g', 175000, 145000, 'banh-quy-bi-do-100g.jpg', '', '', 'Bánh Quy Bí Đỏ 100G', 1, 'vi', ',7,3,', 1, '2013-11-01 14:02:49', '2013-11-01 16:08:00', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (4, 'Kẹo Sữa 110G', 'keo-sua-110g', 225000, 195000, 'keo-sua-110g.jpg', '', '', 'Kẹo Sữa 110G', 1, 'vi', ',3,', 1, '2013-11-01 14:03:29', '2013-11-01 16:03:56', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (5, 'Snack Bắp chocolate 62G', 'snack-bap-chocolate-62g', 145000, 115000, 'snack-bap-chocolate-62g.jpg', '', '', 'Kẹo Sữa 110G', 1, 'vi', ',7,3,', 1, '2013-11-01 14:04:41', '2013-11-01 16:07:53', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (6, 'Kẹo Ngôi Sao 400G', 'keo-ngoi-sao-400g', 145000, 0, 'keo-ngoi-sao-400g.jpg', 'Kẹo Ngôi Sao 400G', '<p>Kẹo Ngôi Sao 400G</p>\r\n', 'Kẹo Ngôi Sao 400G', 1, 'vi', ',7,4,', 1, '2013-11-01 16:03:37', '2013-11-01 09:37:43', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (7, 'Kẹo Que 300G', 'keo-que-300g', 115000, 0, 'keo-que-300g.jpg', '', '', 'Kẹo Que 300G', 1, 'vi', ',7,4,', 1, '2013-11-01 16:04:35', '2013-11-01 16:07:39', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (8, 'Kẹo Ngũ Sắc 500G', 'keo-ngu-sac-500g', 155000, 0, 'keo-ngu-sac-500g.jpg', '', '', 'Kẹo Ngũ Sắc 500G', 1, 'vi', ',7,4,', 1, '2013-11-01 16:04:59', '2013-11-01 16:04:59', 'admin', NULL, 0);
INSERT INTO `products` VALUES (9, 'Kẹo Trái Cây 900G', 'keo-trai-cay-900g', 155000, 0, 'keo-trai-cay-900g.jpg', '', '', 'Kẹo Trái Cây 900G', 1, 'vi', ',7,4,', 1, '2013-11-01 16:05:25', '2013-11-01 16:07:02', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (10, 'Kẹo Bí Đỏ 110G', 'keo-bi-do-110g', 135000, 0, 'keo-bi-do-110g.jpg', '', '', 'Kẹo Trái Cây 900G', 1, 'vi', ',7,4,', 1, '2013-11-01 16:06:22', '2013-11-01 16:06:22', 'admin', NULL, 0);
INSERT INTO `products` VALUES (11, 'Bánh Que 85G', 'banh-que-85g', 95000, 0, 'banh-que-85g.jpg', '', '', 'Bánh Que 85G', 1, 'vi', ',7,14,', 1, '2013-11-01 16:13:29', '2013-11-01 16:13:29', 'admin', NULL, 0);
INSERT INTO `products` VALUES (12, 'Bánh Men Lúa Mạch', 'banh-men-lua-mach', 125000, 0, 'banh-men-lua-mach.jpg', '', '', 'Bánh Men Lúa Mạch', 1, 'vi', ',7,14,', 1, '2013-11-01 16:14:03', '2013-11-01 16:14:03', 'admin', NULL, 0);
INSERT INTO `products` VALUES (13, 'Bánh Quy Nhân Hạt Dẻ', 'banh-quy-nhan-hat-de', 155000, 0, 'banh-quy-nhan-hat-de.jpg', '', '', 'Bánh Quy Nhân Hạt Dẻ', 1, 'vi', ',7,14,', 1, '2013-11-01 16:14:31', '2013-11-01 16:14:31', 'admin', NULL, 0);
INSERT INTO `products` VALUES (14, 'Bánh Quy Nhân Việt Quất', 'banh-quy-nhan-viet-quat', 185000, 0, 'banh-quy-nhan-viet-quat.jpg', '', '', 'Bánh Quy Nhân Việt Quất', 1, 'vi', ',7,14,', 1, '2013-11-01 16:14:52', '2013-11-01 16:14:52', 'admin', NULL, 0);
INSERT INTO `products` VALUES (15, 'Bánh Chữ 100G', 'banh-chu-100g', 105000, 0, 'banh-chu-100g.jpg', '', '', 'Bánh Chữ 100G', 1, 'vi', ',7,14,', 1, '2013-11-01 16:15:17', '2013-11-01 16:15:17', 'admin', NULL, 0);
INSERT INTO `products` VALUES (16, 'Kẹo Hàn Quốc hồng sâm mềm', 'keo-han-quoc-hong-sam-mem', 145000, 115000, 'keo-han-quoc-hong-sam-mem-300g.jpg', 'Giúp thư giãn, sảng khoái tinh thần, đem lại cảm giác khỏe khoắn. Đối với trẻ em: Giúp phát triển trí não và tăng cường trí nhớ', '<p><strong>Thành phần:</strong> Hồng Sâm nguyên chất 100%.</p>\r\n\r\n<p><strong>Xuất xứ:</strong> Hàn Quốc.</p>\r\n\r\n<p><strong>Cách sử dụng:</strong> Ngày dùng từ 2-3 viên.</p>\r\n\r\n<p><strong>Bảo quản:</strong> Nơi khô ráo thoáng mát, tránh ánh nắng&nbsp;trực tiếp.</p>\r\n\r\n<p><strong>Công Dụng:</strong></p>\r\n\r\n<p>- &nbsp;Giúp thư giãn, sảng khoái tinh thần, đem lại cảm giác khỏe khoắn ...</p>\r\n\r\n<p>- &nbsp;Đối với trẻ em: Giúp phát triển trí não và tăng cường trí nhớ...</p>\r\n\r\n<p>- &nbsp;Đối với người hoạt động chân tay và trí não: Giúp giảm stress và chống mệt mỏi...</p>\r\n\r\n<p>- &nbsp;Đối với người bệnh kết hợp với thuốc đặc trị: Giúp mau hồi phục, phòng ngừa các bệnh như cảm cúm... do được&nbsp;<span style="line-height: 1.6em;">tăng cường sức đề kháng.</span></p>\r\n', 'Kẹo Hàn Quốc hồng sâm mềm', 1, 'vi', ',7,4,', 1, '2013-11-02 09:50:12', '2013-11-02 09:51:27', 'admin', 'admin', 0);

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
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (1, 'Slider', 'slider.jpg', 'javascript:;', '', 'vi', 1, ',1,2,5,6,7,3,4,14,22,23,24,25,26,8,10,9,27,', 1, '2013-10-09 16:34:33', '2013-10-09 12:24:29', 'admin', 'admin', 0);

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

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,13,14,15,', ',1,2,3,4,6,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

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
