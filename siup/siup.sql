-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 18, 2014 at 03:51 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `siup`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `web_config`
-- 

CREATE TABLE `web_config` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL default '',
  `map_google` varchar(50) default NULL,
  `domain` varchar(40) default NULL,
  `max_limit_1` int(2) default NULL,
  `max_limit_2` int(2) default NULL,
  `max_limit_3` int(2) default NULL,
  `max_limit_4` int(2) default NULL,
  `copyright` varchar(250) default NULL,
  `contact_foo` text,
  `contact_form` text,
  `email` varchar(100) default NULL,
  `yahoo` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_config`
-- 

INSERT INTO `web_config` VALUES (1, 'Việt nam', 'vi', '10.7867893,106.6972446', 'localhost/all/siup', 5, 12, 12, 10, 'Bản quyền © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ: 65 Mạc Đỉnh Chi, Phường ĐaKao, Quận 1, Tp.HCM&nbsp;<br />\r\nĐiện thoại: <span style="color:#B22222;">08 38224476</span> &nbsp; &nbsp; Fax: <span style="color:#B22222;">08 38220090</span> &nbsp; &nbsp; Email: <span style="color:#B22222;">contact@siup.vn</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-02-20 13:35:24', '2014-04-17 17:59:12', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', '10.7867893,106.6972446', 'localhost/all/siup', 5, 12, 12, 10, 'Copyright © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ: 65 Mạc Đỉnh Chi, Phường ĐaKao, Quận 1, Tp.HCM&nbsp;<br />\r\nTelephone: <span style="color:#B22222;">08 38224476</span> &nbsp; &nbsp; Fax: <span style="color:#B22222;">08 38220090</span> &nbsp; &nbsp; Email: <span style="color:#B22222;">contact@siup.vn</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-11-12 15:50:44', '2014-04-17 17:59:19', 'admin', 'admin', 0);

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
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `web_contact`
-- 

INSERT INTO `web_contact` VALUES (8, 'Tran Nhan', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', '<p>test noi dung lien he</p>\r\n', 0, '', 0, '2014-04-17 18:01:09', '2014-04-17 18:02:05', 'khachhang', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `web_dangky_nhanvien`
-- 

INSERT INTO `web_dangky_nhanvien` VALUES (1, 'NV nhận hàng - Tú', 'nhanhang1@shopdochoi.com', 'vi', 1, '2013-12-17 13:52:33', '2014-04-11 17:45:08', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (2, 'NV nhận hàng - Thanh', 'nhanhang2@shopdochoi.com', 'vi', 1, '2013-12-17 13:53:05', '2014-04-11 17:44:54', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (3, 'NV nhận hàng - Khắc', 'nhanhang3@shopdochoi.com', 'vi', 1, '2013-12-17 13:54:05', '2014-04-11 17:45:00', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (4, 'NV trả lời - Tiên', 'feedback@shopdochoi.com', 'vi', 1, '2013-12-17 13:54:18', '2014-04-11 17:45:53', 'admin', 'admin', 0);

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
  `lang` varchar(3) default NULL,
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (26, 'Dự án đường Phạm Ngọc Hiển', 'du-an-duong-pham-ngoc-hien', 'du-an-duong-pham-ngoc-hien.jpg', 'Dự án đường Phạm Ngọc Hiển', '', '2014-04-17 17:00:16', '2014-04-17 15:59:00', 1, 'Dự án đường Phạm Ngọc Hiển,du an duong pham ngoc hien', 0, 'vi', ',5,10,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (27, 'Dự án Bong Bo Sen', 'du-an-bong-bo-sen', 'du-an-bong-bo-sen.jpg', 'Dự án Bong Bo Sen', '', '2014-04-17 17:00:39', '2014-04-17 15:59:00', 1, 'Dự án Bong Bo Sen,du an bong bo sen', 0, 'vi', ',5,10,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (16, 'Hoạt động kỷ niệm ngày 8/3 của SIUP năm nay có gì mới?', 'hoat-dong-ky-niem-ngay-8-3-cua-siup-nam-nay-co-gi-moi', 'du-an-1.jpg', 'Như thường lệ, hàng năm nhân dịp ngày Quốc tế phụ nữ, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) phối hợp với Công đoàn tổ chức cho các cán bộ nữ du...', '<p>Như thường lệ, hàng năm nhân dịp ngày Quốc tế phụ nữ, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) phối hợp với Công đoàn tổ chức cho các cán bộ nữ du...</p>\r\n', '2014-04-16 16:41:16', '2014-04-16 15:38:00', 1, 'Hoạt động kỷ niệm ngày 8/3 của SIUP năm nay có gì mới?,hoat dong ky niem ngay 8 3 cua siup nam nay co gi moi', 1, 'vi', ',7,9,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (17, 'Giới thiệu chung', 'gioi-thieu-chung', '', 'Giới thiệu chung', '', '2014-04-17 15:05:14', '2014-04-17 14:05:00', 1, 'Giới thiệu chung,gioi thieu chung', 1, 'vi', ',6,12,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (18, 'Quá trình hình thành', 'qua-trinh-hinh-thanh', '', 'Quá trình hình thành', '', '2014-04-17 15:05:48', '2014-04-17 14:05:00', 1, 'Quá trình hình thành,qua trinh hinh thanh', 1, 'vi', ',6,13,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (19, 'Chức năng nhiệm vụ', 'chuc-nang-nhiem-vu', '', 'Chức năng nhiệm vụ', '', '2014-04-17 15:06:10', '2014-04-17 14:06:00', 1, 'Chức năng nhiệm vụ,chuc nang nhiem vu', 1, 'vi', ',6,14,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (20, 'Cơ cấu tổ chức', 'co-cau-to-chuc', '', 'Cơ cấu tổ chức', '', '2014-04-17 15:06:20', '2014-04-17 14:06:00', 1, 'Cơ cấu tổ chức,co cau to chuc', 1, 'vi', ',6,15,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (21, 'Đối tác Quốc tế', 'doi-tac-quoc-te', '', 'Đối tác Quốc tế', '', '2014-04-17 15:06:40', '2014-04-17 14:06:00', 1, 'Đối tác Quốc tế,doi tac quoc te', 1, 'vi', ',6,16,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (22, 'Giải thưởng - Thành tựu', 'giai-thuong-thanh-tuu', '', 'Giải thưởng - Thành tựu', '', '2014-04-17 15:07:02', '2014-04-17 14:07:00', 1, 'Giải thưởng - Thành tựu,giai thuong - thanh tuu', 1, 'vi', ',6,17,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (23, 'Nhân sự phân viện', 'nhan-su-phan-vien', '', 'Nhân sự phân viện', '', '2014-04-17 15:07:23', '2014-04-17 14:07:00', 1, 'Nhân sự phân viện,nhan su phan vien', 1, 'vi', ',6,18,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (25, 'Dự án đường Đề Thám', 'du-an-duong-de-tham', 'du-an-duong-de-hoa-tham.jpg', 'Dự án đường Đề Thám', '', '2014-04-17 16:59:39', '2014-04-17 15:59:00', 1, 'Dự án đường Đề Thám,du an duong de tham', 0, 'vi', ',5,10,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (24, 'Quy hoạch đô thị', 'quy-hoach-do-thi', 'quy-hoach-do-thi-1.jpg', 'Khi xã hội thay đổi và phát triển, môi trường đô thị và quá trình quy hoạch đô thị cũng phải thay đổi và đó là trạng thái thay đổi động cân bằng giữa phát triển kinh tế và môi trường bền vững. ', '<p>Khi xã hội thay đổi và phát triển, môi trường đô thị và quá trình quy hoạch đô thị cũng phải thay đổi và đó là trạng thái thay đổi động cân bằng giữa phát triển kinh tế và môi trường bền vững. Trọng tâm quy hoạch tương lai cần phải nhấn mạnh vào sức khỏe cộng đồng. Quy hoạch đô thị và y tế công cộng từ lâu đã gắn bó với nhau, vì vậy bản chất môi trường có liên quan đến hạnh phúc và chất lượng sống.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="Quy hoạch đô thị" src="/all/siup/public/images/articles/quy-hoach-do-thi-1.jpg" style="width: 439px; height: 316px;" /><img alt="Quy hoạch đô thị" src="/all/siup/public/images/articles/quy-hoach-do-thi-2.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 439px; height: 316px;" /></p>\r\n\r\n<p>Khái niệm "đô thị xanh" cũng mới xuất hiện nhưng đã nhận được sự quan tâm đặc biệt của người dân và nhà đầu tư bất động sản. Đô thị xanh càng trở lên quan trọng hơn khi ô nhiễm môi trường, ô nhiễm tiếng ồn ngày một gia tăng ở các đô thị lớn. Người dân hiện có xu hướng muốn được sở hữu ngôi nhà thoáng đãng trong không gian xanh, gần gũi với thiên nhiên nhưng vẫn tiện nghi, thuận tiện, hướng đến sức khỏe cộng đồng.</p>\r\n\r\n<p>Một đô thị xanh hiện nay phải đạt 7 tiêu chí: Không gian xanh, công trình xanh, giao thông xanh, công nghiệp xanh, chất lượng môi trường đô thị xanh, bảo tồn cảnh quan thiên nhiên, danh lam thắng cảnh, công trình lịch sử, văn hóa, cộng đồng dân cư sống thân thiện với môi trường và thiên nhiên.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2014-04-17 16:51:31', '2014-04-17 15:51:00', 1, 'Quy hoạch đô thị,quy hoach do thi', 1, 'vi', ',5,10,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (15, 'Bảo tàng tỉnh Quảng Ninh nhận giải “Công trình của Năm 2013”', 'bao-tang-tinh-quang-ninh-nhan-giai-“cong-trinh-cua-nam-2013”', 'du-an-2.jpg', 'Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...', '<p>Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...</p>\r\n', '2014-04-16 16:40:45', '2014-04-16 15:38:00', 1, 'Bảo tàng tỉnh Quảng Ninh nhận giải “Công trình của Năm 2013”,bao tang tinh quang ninh nhan giai “cong trinh cua nam 2013”', 1, 'vi', ',7,9,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (12, 'Nghiên cứu phát triển', 'nghien-cuu-phat-trien', 'nghien-cuu-phat-trien.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/nghien-cuu-phat-trien.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:10:36', '2014-04-16 15:10:00', 1, 'Nghiên cứu phát triển,nghien cuu phat trien', 1, 'vi', ',1,8,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (13, 'Hợp tác quốc tế', 'hop-tac-quoc-te', 'hop-tac-quoc-te.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/hop-tac-quoc-te.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:12:27', '2014-04-15 15:10:00', 1, 'Hợp tác quốc tế,hop tac quoc te', 1, 'vi', ',1,8,9,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (14, 'Ấm cúng gặp mặt đầu xuân Giáp Ngọ 2014 tại SIUP', 'am-cung-gap-mat-dau-xuan-giap-ngo-2014-tai-siup', 'du-an.jpg', 'Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...', '<p>Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...</p>\r\n', '2014-04-16 16:38:05', '2014-04-16 15:38:00', 1, 'Ấm cúng gặp mặt đầu xuân Giáp Ngọ 2014 tại SIUP,am cung gap mat dau xuan giap ngo 2014 tai siup', 1, 'vi', ',7,9,', 'admin', 'admin', 0);

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
  `lang` varchar(3) default NULL,
  `type_id` int(1) default NULL,
  `position_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', 'http://localhost/all/siup', '', '2014-04-07 15:01:06', '2014-04-17 18:00:07', 0, 1, 1, 'SIUP', 'SIUP', 'SIUP', 0, 'vi', 1, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (25, 'Web nội bộ', 'web-noi-bo', 'web-noi-bo/', '', '2014-04-16 15:20:21', '2014-04-16 14:20:00', 0, 32, 1, 'Web nội bộ', 'Web nội bộ', 'Web nội bộ,web noi bo', 0, 'vi', 8, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (2, 'Home', 'home', '?lang=en', '', '2014-04-07 15:09:51', '2014-04-18 11:41:40', 0, 1, 1, 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 0, 'en', 1, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (3, 'Đăng nhập', 'dang-nhap', 'dang-nhap/', '', '2014-04-07 15:14:52', '2014-04-07 14:14:00', 0, 31, 1, 'Đăng nhập', 'Đăng nhập', 'Đăng nhập,dang nhap', 0, 'vi', 8, ',1,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (4, 'About US', 'about-us', 'about-us/', '', '2014-04-07 15:15:43', '2014-04-18 11:40:56', 0, 2, 1, 'About US', 'About US', 'About US,about us', 0, 'en', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (5, 'Đồ án', 'do-an', 'do-an/', '', '2014-04-07 15:28:17', '2014-04-07 14:28:00', 0, 3, 1, 'Loại hình đồ án', 'Đồ án', 'Đồ án,do an', 0, 'vi', 4, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', '2014-04-07 15:29:10', '2014-04-18 14:20:38', 0, 2, 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu,gioi thieu', 0, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (24, 'Quy hoạch hạ tầng', 'quy-hoach-ha-tang', 'quy-hoach-ha-tang/', '', '2014-04-16 12:40:39', '2014-04-16 11:40:00', 5, 5, 1, 'Quy hoạch hạ tầng', 'Quy hoạch hạ tầng', 'Quy hoạch hạ tầng,quy hoach ha tang', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (7, 'Tin tức & Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', '2014-04-07 15:32:52', '2014-04-07 14:32:00', 0, 4, 1, 'Tin tức & Sự kiện', 'Tin tức & Sự kiện', 'Tin tức & Sự kiện,tin tuc su kien', 1, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (8, 'Nghiên cứu và phát triển', 'nghien-cuu-va-phat-trien', 'nghien-cuu-va-phat-trien/', '', '2014-04-07 15:34:20', '2014-04-18 15:43:36', 0, 5, 1, 'Nghiên cứu và phát triển', 'Nghiên cứu và phát triển', 'Nghiên cứu và phát triển,nghien cuu va phat trien', 0, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (9, 'Hợp tác Quốc tế', 'hop-tac-quoc-te', 'hop-tac-quoc-te/', '', '2014-04-07 15:37:01', '2014-04-07 14:37:00', 0, 6, 1, 'Hợp tác Quốc tế', 'Hợp tác Quốc tế', 'Hợp tác Quốc tế,hop tac quoc te', 0, 'vi', 5, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (10, 'Quy hoạch vùng', 'quy-hoach-vung', 'quy-hoach-vung/', '', '2014-04-07 15:37:37', '2014-04-16 12:39:00', 5, 1, 1, 'Quy hoạch vùng', 'Quy hoạch vùng', 'Quy hoạch vùng,quy hoach vung', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (11, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-04-07 15:38:16', '2014-04-07 14:37:00', 0, 7, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 'vi', 6, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (12, 'Giới thiệu chung', 'gioi-thieu-chung', 'gioi-thieu-chung/', '', '2014-04-07 15:40:03', '2014-04-07 14:40:00', 6, 1, 1, 'Giới thiệu chung', 'Giới thiệu chung', 'Giới thiệu chung,gioi thieu chung', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (13, 'Quá trình hình thành', 'qua-trinh-hinh-thanh', 'qua-trinh-hinh-thanh/', '', '2014-04-07 15:40:54', '2014-04-07 14:40:00', 6, 2, 1, 'Quá trình hình thành', 'Quá trình hình thành', 'Quá trình hình thành,qua trinh hinh thanh', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (14, 'Chức năng nhiệm vụ', 'chuc-nang-nhiem-vu', 'chuc-nang-nhiem-vu/', '', '2014-04-07 15:41:31', '2014-04-07 14:40:00', 6, 3, 1, 'Chức năng nhiệm vụ', 'Chức năng nhiệm vụ', 'Chức năng nhiệm vụ,chuc nang nhiem vu', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (15, 'Cơ cấu tổ chức', 'co-cau-to-chuc', 'co-cau-to-chuc/', '', '2014-04-07 15:41:51', '2014-04-07 14:40:00', 6, 4, 1, 'Cơ cấu tổ chức', 'Cơ cấu tổ chức', 'Cơ cấu tổ chức,co cau to chuc', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (16, 'Đối tác Quốc tế', 'doi-tac-quoc-te', 'doi-tac-quoc-te/', '', '2014-04-07 15:42:09', '2014-04-07 14:40:00', 6, 5, 1, 'Đối tác Quốc tế', 'Đối tác Quốc tế', 'Đối tác Quốc tế,doi tac quoc te', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (17, 'Giải thưởng - Thành tựu', 'giai-thuong-thanh-tuu', 'giai-thuong-thanh-tuu/', '', '2014-04-07 15:42:26', '2014-04-07 14:40:00', 6, 6, 1, 'Giải thưởng - Thành tựu', 'Giải thưởng - Thành tựu', 'Giải thưởng - Thành tựu,giai thuong - thanh tuu', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (18, 'Nhân sự phân viện', 'nhan-su-phan-vien', 'nhan-su-phan-vien/', '', '2014-04-07 15:42:42', '2014-04-07 14:40:00', 6, 7, 1, 'Nhân sự phân viện', 'Nhân sự phân viện', 'Nhân sự phân viện,nhan su phan vien', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (19, 'Quy hoạch đô thị', 'quy-hoach-do-thi', 'quy-hoach-do-thi/', '', '2014-04-07 15:42:55', '2014-04-16 12:36:00', 5, 2, 1, 'Quy hoạch đô thị', 'Quy hoạch đô thị', 'Quy hoạch đô thị,quy hoach do thi', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (20, 'Thiết kế đô thị', 'thiet-ke-do-thi', 'thiet-ke-do-thi/', '', '2014-04-07 15:43:10', '2014-04-16 12:36:00', 5, 3, 1, 'Thiết kế đô thị', 'Thiết kế đô thị', 'Thiết kế đô thị,thiet ke do thi', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (21, 'Quy hoạch nông thôn', 'quy-hoach-nong-thon', 'quy-hoach-nong-thon/', '', '2014-04-07 15:43:24', '2014-04-16 12:36:00', 5, 4, 1, 'Quy hoạch nông thôn', 'Quy hoạch nông thôn', 'Quy hoạch nông thôn,quy hoach nong thon', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (22, 'Facebook', 'facebook', 'http://facebook.com', 'facebook.jpg', '2014-04-08 16:32:14', '2014-04-08 15:32:00', 0, 91, 1, 'Facebook', 'Facebook', 'Facebook', 0, 'vi', 8, ',6,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (23, 'Youtube', 'youtube', 'http://youtube.com', 'youtube.jpg', '2014-04-08 16:33:46', '2014-04-08 15:32:00', 0, 92, 1, 'Youtube', 'Youtube', 'Youtube', 0, 'vi', 8, ',6,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (26, 'Liên kết website', 'lien-ket-website', 'lien-ket-website/', '', '2014-04-16 15:20:43', '2014-04-16 14:20:00', 0, 33, 1, 'Liên kết website', 'Liên kết website', 'Liên kết website,lien ket website', 0, 'vi', 8, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (27, 'Sitemap', 'sitemap', 'sitemap/', '', '2014-04-16 15:20:59', '2014-04-16 14:20:00', 0, 34, 1, 'Sitemap', 'Sitemap', 'Sitemap,sitemap', 0, 'vi', 8, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (28, 'Đề tài nghiên cứu khoa học', 'de-tai-nghien-cuu-khoa-hoc', 'de-tai-nghien-cuu-khoa-hoc/', '', '2014-04-17 15:38:10', '2014-04-17 14:38:00', 8, 1, 1, 'Đề tài nghiên cứu khoa học', 'Đề tài nghiên cứu khoa học', 'Đề tài nghiên cứu khoa học,de tai nghien cuu khoa hoc', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (29, 'Các chuyên đề khoa học', 'cac-chuyen-de-khoa-hoc', 'cac-chuyen-de-khoa-hoc/', '', '2014-04-17 15:38:55', '2014-04-17 14:38:00', 8, 2, 1, 'Các chuyên đề khoa học', 'Các chuyên đề khoa học', 'Các chuyên đề khoa học,cac chuyen de khoa hoc', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (30, 'Bài viết nghiên cứu khoa học', 'bai-viet-nghien-cuu-khoa-hoc', 'bai-viet-nghien-cuu-khoa-hoc/', '', '2014-04-17 15:39:15', '2014-04-17 14:38:00', 8, 3, 1, 'Bài viết nghiên cứu khoa học', 'Bài viết nghiên cứu khoa học', 'Bài viết nghiên cứu khoa học,bai viet nghien cuu khoa hoc', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (31, 'Dự án hợp tác Quốc tế', 'du-an-hop-tac-quoc-te', 'du-an-hop-tac-quoc-te/', '', '2014-04-17 15:40:47', '2014-04-17 14:40:00', 9, 1, 1, 'Dự án hợp tác Quốc tế', 'Dự án hợp tác Quốc tế', 'Dự án hợp tác Quốc tế,du an hop tac quoc te', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (32, 'Lĩnh vực hợp tác Quốc tế', 'linh-vuc-hop-tac-quoc-te', 'linh-vuc-hop-tac-quoc-te/', '', '2014-04-17 15:41:40', '2014-04-17 14:40:00', 9, 2, 1, 'Lĩnh vực hợp tác Quốc tế', 'Lĩnh vực hợp tác Quốc tế', 'Lĩnh vực hợp tác Quốc tế,linh vuc hop tac quoc te', 0, 'vi', 2, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (33, 'Đối tác hợp tác Quốc tế', 'doi-tac-hop-tac-quoc-te', 'doi-tac-hop-tac-quoc-te/', '', '2014-04-17 15:42:05', '2014-04-17 14:40:00', 9, 3, 1, 'Đối tác hợp tác Quốc tế', 'Đối tác hợp tác Quốc tế', 'Đối tác hợp tác Quốc tế,doi tac hop tac quoc te', 0, 'vi', 2, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (34, 'Các trung tâm', 'cac-trung-tam', 'javascript:;', '', '2014-04-18 11:34:27', NULL, 0, 21, 1, 'Các trung tâm', 'Các trung tâm', 'Các trung tâm,cac trung tam', 0, 'vi', 8, ',4,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (35, 'Đơn vị tổ chức', 'don-vi-to-chuc', 'don-vi-to-chuc/', '', '2014-04-18 11:37:13', '2014-04-18 15:28:10', 9, 4, 1, 'Đơn vị tổ chức', 'Đơn vị tổ chức', 'Đơn vị tổ chức,don vi to chuc', 0, 'vi', 8, ',4,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (36, 'Project', 'project', 'project/', '', '2014-04-18 11:46:02', NULL, 0, 3, 1, 'Project', 'Project', 'Project,project', 0, 'en', 3, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (37, 'International Cooperation', 'international-cooperation', 'international-cooperation/', '', '2014-04-18 11:46:36', '2014-04-18 11:50:07', 0, 6, 1, 'International Cooperation', 'International Cooperation', 'International Cooperation,international cooperation', 0, 'en', 5, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (38, 'Research & development', 'research-development', 'research-development/', '', '2014-04-18 11:48:41', '2014-04-18 11:49:55', 0, 5, 1, 'Research and development', 'Research and development', 'Research development,research development', 0, 'en', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (39, 'News & Events', 'news-events', 'news-events/', '', '2014-04-18 11:50:14', NULL, 0, 4, 1, 'News and Events', 'News and Events', 'News Events,news events', 0, 'en', 2, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (40, 'Contact', 'contact', 'contact/', '', '2014-04-18 11:50:54', NULL, 0, 7, 1, 'Contact', 'Contact', 'Contact', 0, 'en', 6, ',2,', 'admin', NULL, 0);

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

INSERT INTO `web_menu_admin` VALUES (1, 'Trang chủ', 'home', 'icon-home', 1, 1);
INSERT INTO `web_menu_admin` VALUES (2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1);
INSERT INTO `web_menu_admin` VALUES (3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 1);
INSERT INTO `web_menu_admin` VALUES (4, 'Thông tin, bài viết', 'web_info', 'icon-info.jpg', 4, 1);
INSERT INTO `web_menu_admin` VALUES (5, 'Sản phẩm', 'web_products', 'icon-product.jpg', 5, 0);
INSERT INTO `web_menu_admin` VALUES (6, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 6, 0);
INSERT INTO `web_menu_admin` VALUES (7, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 7, 1);
INSERT INTO `web_menu_admin` VALUES (8, 'Lịch khai giảng', 'web_lichkhaigiang', 'icon-lich-khai-giang', 8, 0);
INSERT INTO `web_menu_admin` VALUES (9, 'Danh sách chi nhánh', 'web_chinhanh', 'icon-product.jpg', 9, 0);
INSERT INTO `web_menu_admin` VALUES (10, 'Danh sách nhân viên', 'web_dangky_nhanvien', 'icon-register.jpg', 10, 0);
INSERT INTO `web_menu_admin` VALUES (11, 'Đơn hàng website', 'web_order', 'icon-hoc-vien.jpg', 11, 0);
INSERT INTO `web_menu_admin` VALUES (12, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 12, 1);
INSERT INTO `web_menu_admin` VALUES (13, 'Tuyển dụng - Thông tin', 'web_tuyendung', 'icon-tuyen-dung-thong-tin.jpg', 13, 0);
INSERT INTO `web_menu_admin` VALUES (14, 'Tuyển dụng - Công ty', 'web_tuyendung_cty', 'icon-contact.jpg', 14, 0);
INSERT INTO `web_menu_admin` VALUES (15, 'Tuyển dụng - Hồ sơ', 'web_tuyendung_hoso', 'icon-tuyendung-ho-so.jpg', 15, 0);
INSERT INTO `web_menu_admin` VALUES (16, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_position`
-- 

CREATE TABLE `web_menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `web_menu_position`
-- 

INSERT INTO `web_menu_position` VALUES (1, 'Top', 1, 1);
INSERT INTO `web_menu_position` VALUES (2, 'Main', 2, 1);
INSERT INTO `web_menu_position` VALUES (3, 'Left', 3, 1);
INSERT INTO `web_menu_position` VALUES (4, 'Right', 4, 1);
INSERT INTO `web_menu_position` VALUES (5, 'Bottom', 5, 0);
INSERT INTO `web_menu_position` VALUES (6, 'Social', 6, 1);
INSERT INTO `web_menu_position` VALUES (7, 'Không', 7, 1);

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
INSERT INTO `web_menu_type` VALUES (3, 'Dự án loại 1', 3, 1);
INSERT INTO `web_menu_type` VALUES (4, 'Dự án loại 2', 4, 1);
INSERT INTO `web_menu_type` VALUES (5, 'Dự án hợp tác Quốc tế', 5, 1);
INSERT INTO `web_menu_type` VALUES (6, 'Liên hệ', 6, 1);
INSERT INTO `web_menu_type` VALUES (7, 'Giỏ hàng', 7, 0);
INSERT INTO `web_menu_type` VALUES (8, 'Không', 9, 1);
INSERT INTO `web_menu_type` VALUES (9, 'Item 9', 9, 0);
INSERT INTO `web_menu_type` VALUES (10, 'Item 10', 11, 0);
INSERT INTO `web_menu_type` VALUES (11, 'Tuyển dụng', 8, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner`
-- 

CREATE TABLE `web_slider_banner` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `order` int(3) default '0',
  `lang` varchar(3) default NULL,
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) default '0',
  `content` varchar(500) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider liên hệ', 'contact.jpg', 'javascript:;', '2014-04-07 17:06:16', '2014-04-15 17:49:00', 0, 0, 'vi', 1, ',11,', '', 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Slider trang chủ', 'home.jpg', 'javascript:;', '2014-04-07 17:09:35', '2014-04-16 16:09:00', 1, 0, 'vi', 1, ',1,2,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (3, 'No name', 'no-name.jpg', 'javascript:;', '2014-04-07 17:15:18', '2014-04-16 17:03:00', 1, 0, 'vi', 2, ',', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (4, 'unesco', 'unesco.jpg', 'javascript:;', '2014-04-07 17:17:59', '2014-04-16 11:57:33', 1, 0, 'vi', 2, ',4,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (5, 'jica', 'jica.jpg', 'javascript:;', '2014-04-16 11:57:38', '2014-04-14 10:57:00', 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (6, 'koica', 'koica.jpg', 'javascript:;', '2014-04-16 11:57:56', '2014-04-13 10:57:00', 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (7, 'ADB', 'ADB.jpg', 'javascript:;', '2014-04-16 11:58:10', '2014-04-12 10:57:00', 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (8, 'fulbright', 'fulbright.jpg', 'javascript:;', '2014-04-16 11:58:22', '2014-04-12 10:57:00', 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (9, 'SOC', 'SOC.jpg', 'javascript:;', '2014-04-16 11:58:35', '2014-04-18 14:34:36', 1, 0, 'vi', 2, ',', '', 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (10, 'HAWAI', 'HAWAI.jpg', 'javascript:;', '2014-04-18 14:32:34', '2014-04-18 13:32:00', 1, 1, 'vi', 5, ',35,', '', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (11, 'koica', 'koica-right.jpg', 'javascript:;', '2014-04-18 14:35:15', NULL, 1, 2, 'vi', 5, ',35,', '', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (12, 'iledefrance', 'iledefrance.jpg', 'javascript:;', '2014-04-18 14:35:43', NULL, 1, 3, 'vi', 5, ',35,', '', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (13, 'UNDP', 'UNDP.jpg', 'javascript:;', '2014-04-18 14:35:55', NULL, 1, 4, 'vi', 5, ',35,', '', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (14, 'Trung tâm Quy hoạch Đô thị - Nông thôn Miền Nam 1', '', 'javascript:;', '2014-04-18 14:37:36', NULL, 1, 1, 'vi', 5, ',34,', '<p>Đia chỉ: 65 Mạc Đĩnh Chi, P.Đakao, Quận 1, TP.HCM</p>\r\n\r\n<p>Điện thoại: 084.08.38235714</p>\r\n\r\n<p>Fax: 084.08.38220090</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (15, 'Trung tâm Quy hoạch Đô thị - Nông thôn Miền Nam 2', '', 'javascript:;', '2014-04-18 14:38:06', NULL, 1, 2, 'vi', 5, ',34,', '<p>Đia chỉ: 65 Mạc Đĩnh Chi, P.Đakao, Quận 1, TP.HCM</p>\r\n\r\n<p>Điện thoại: 084.08.38235714</p>\r\n\r\n<p>Fax: 084.08.38220090</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (16, 'Trung tâm Quy hoạch Đô thị - Nông thôn Miền Nam 3', '', 'javascript:;', '2014-04-18 14:38:14', NULL, 1, 3, 'vi', 5, ',34,', '<p>Đia chỉ: 65 Mạc Đĩnh Chi, P.Đakao, Quận 1, TP.HCM</p>\r\n\r\n<p>Điện thoại: 084.08.38235714</p>\r\n\r\n<p>Fax: 084.08.38220090</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (17, 'Trước nhất, kiến trúc phải tôn trọng địa điểm, không gian văn hóa bản địa và các bài học vô giá của lịch sử', 'map-right.jpg', 'javascript:;', '2014-04-18 14:39:23', '2014-04-18 14:40:21', 1, 1, 'vi', 5, ',8,', '<p>_Peter Zumthor, người đoạt giải Pritzker 2009</p>\r\n', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner_position`
-- 

CREATE TABLE `web_slider_banner_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `web_slider_banner_position`
-- 

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 940x300 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Partner 90 x 40 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (3, 'QC Left width:150px', 0);
INSERT INTO `web_slider_banner_position` VALUES (4, 'QC Right width:150px', 0);
INSERT INTO `web_slider_banner_position` VALUES (5, 'Right max width 170px', 1);
INSERT INTO `web_slider_banner_position` VALUES (6, 'Center', 0);
INSERT INTO `web_slider_banner_position` VALUES (7, 'Partner', 0);
INSERT INTO `web_slider_banner_position` VALUES (0, 'Không', 0);

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
INSERT INTO `web_users` VALUES (27, 'Trần Nhân', 'nhan', '25f9e794323b453885f5181f1b624d0b', ',1,', ',1,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-04-18 14:21:41', 'admin', 'admin', 0);

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
