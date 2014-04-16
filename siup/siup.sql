-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 16, 2014 at 06:38 PM
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
  `slogan` varchar(100) default NULL,
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

INSERT INTO `web_config` VALUES (1, 'Việt nam', 'vi', '', 'localhost/all/siup', 10, 20, 10, 10, 'Bản quyền © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-02-20 13:35:24', '2013-03-01 11:36:00', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', '', 'localhost/all/siup', 10, 20, 10, 10, 'Copyright © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-11-12 15:50:44', '2013-11-12 11:37:00', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `web_contact`
-- 

INSERT INTO `web_contact` VALUES (1, 'Nguyễn Thị Huỳnh Như', 'thanhha39sty@yahoo.com.vn', '01254082755', '1F/1/1T Hương Lộ 80 - KDC Đồng Danh -Vĩnh Lộc A- Bình Chánh', 'Tôi muốn mua các loại bột sau : \nBột bánh bông lan nuớng loai 14.000 đ/ bịch (4 bịch )\nBột bánh bông lan hấp  500gr  22.000 đ/ bịch (2 bịch )\nBột bánh bò loại 21.000 đ/ bich (3 bịch)\nBột bánh xèo loại 18.000 đ/bịch (3 bịch )\nBột bánh pizza 37.000d9/ bịch (1 bịch )\nBạn có thể giao hàng cho tôi không?\nNếu có , vui lòng gọi sdt 01254082755 Tên Như ( giờ hành chính)\nXin cám ơn', NULL, '', 0, '2013-11-18 06:02:17', '2014-04-07 18:08:59', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (2, 'Việt nam', 'hieunhan112@gmail.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', 'test mail abc det dcv', NULL, '', 0, '2013-11-18 09:12:16', '2014-04-07 18:09:00', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (3, 'Ms.Nguyệt', 'nguyetchenh@fosi.vn', '0909228783', '176 Hoa Lan P.2 Q Phú Nhuận', 'Xin chào quý công ty!\nEm bên công ty FOSi - đơn vị cung cấp giấy phép về thực phẩm như chứng nhận đủ ĐKATTP cho cơ sở và công bố sản phẩm trong nước và nhập khẩu...Có thể truy cập trang http://trungtamnghiencuuthucpham.vn/ để tìm hiểu thêm.\nNếu công ty có nhu cầu vui lòng liên hệ để được hỗ trợ và tư vấn.\nXin cảm ơn!', NULL, '', 0, '2013-11-22 09:02:35', '2014-04-07 18:09:00', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (4, 'Khổng Thị Thùy Trang', 'trangga_1208@yahoo.com', '01285282889', '14/21 nghĩa hưng p6 quận tân bình', 'sáng ngày 22/11 e có đặt mua một số sản phẩm của công ty nhưng do e có một số việc không có ở nhà để nhận ,vậy cho e hỏi đặt mua qua wedpage thì khi nào mới nhận được', NULL, '', 0, '2013-11-22 15:47:22', '2014-04-07 18:09:01', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (5, 'Tran Nhan', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', '<p>test lien he abc</p>\r\n', 4, '', 0, '2014-04-07 18:03:58', '2014-04-16 18:38:12', 'khachhang', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (16, 'Hoạt động kỷ niệm ngày 8/3 của SIUP năm nay có gì mới?', 'hoat-dong-ky-niem-ngay-8-3-cua-siup-nam-nay-co-gi-moi', 'tin-tuc.jpg', 'Như thường lệ, hàng năm nhân dịp ngày Quốc tế phụ nữ, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) phối hợp với Công đoàn tổ chức cho các cán bộ nữ du...', '<p>Như thường lệ, hàng năm nhân dịp ngày Quốc tế phụ nữ, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) phối hợp với Công đoàn tổ chức cho các cán bộ nữ du...</p>\r\n', '2014-04-16 16:41:16', '2014-04-16 15:38:00', 1, 'Hoạt động kỷ niệm ngày 8/3 của SIUP năm nay có gì mới?,hoat dong ky niem ngay 8 3 cua siup nam nay co gi moi', 1, 'vi', ',7,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (15, 'Bảo tàng tỉnh Quảng Ninh nhận giải “Công trình của Năm 2013”', 'bao-tang-tinh-quang-ninh-nhan-giai-“cong-trinh-cua-nam-2013”', 'tin-tuc.jpg', 'Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...', '<p>Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...</p>\r\n', '2014-04-16 16:40:45', '2014-04-16 15:38:00', 1, 'Bảo tàng tỉnh Quảng Ninh nhận giải “Công trình của Năm 2013”,bao tang tinh quang ninh nhan giai “cong trinh cua nam 2013”', 1, 'vi', ',7,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (12, 'Nghiên cứu phát triển', 'nghien-cuu-phat-trien', 'nghien-cuu-phat-trien.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/nghien-cuu-phat-trien.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:10:36', '2014-04-16 15:10:00', 1, 'Nghiên cứu phát triển,nghien cuu phat trien', 1, 'vi', ',1,8,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (13, 'Hợp tác quốc tế', 'hop-tac-quoc-te', 'hop-tac-quoc-te.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/hop-tac-quoc-te.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:12:27', '2014-04-15 15:10:00', 1, 'Hợp tác quốc tế,hop tac quoc te', 1, 'vi', ',1,8,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (14, 'Ấm cúng gặp mặt đầu xuân Giáp Ngọ 2014 tại SIUP', 'am-cung-gap-mat-dau-xuan-giap-ngo-2014-tai-siup', 'tin-tuc.jpg', 'Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...', '<p>Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...</p>\r\n', '2014-04-16 16:38:05', '2014-04-16 15:38:00', 1, 'Ấm cúng gặp mặt đầu xuân Giáp Ngọ 2014 tại SIUP,am cung gap mat dau xuan giap ngo 2014 tai siup', 1, 'vi', ',7,', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', 'http://localhost/all/siup', '', '2014-04-07 15:01:06', '2014-04-07 14:01:00', 0, 1, 1, 'SIUP', 'SIUP', 'SIUP', 0, 'vi', 1, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (25, 'Web nội bộ', 'web-noi-bo', 'web-noi-bo/', '', '2014-04-16 15:20:21', '2014-04-16 14:20:00', 0, 32, 1, 'Web nội bộ', 'Web nội bộ', 'Web nội bộ,web noi bo', 0, 'vi', 8, ',1,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (2, 'Home', 'home', 'http://localhost/all/shopdochoi/lang=en', '', '2014-04-07 15:09:51', '2014-04-07 14:09:00', 0, 1, 1, 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 0, 'en', 1, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (3, 'Đăng nhập', 'dang-nhap', 'dang-nhap/', '', '2014-04-07 15:14:52', '2014-04-07 14:14:00', 0, 31, 1, 'Đăng nhập', 'Đăng nhập', 'Đăng nhập,dang nhap', 0, 'vi', 8, ',1,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (4, 'Cart', 'cart', 'cart/', '', '2014-04-07 15:15:43', '2014-04-07 14:15:00', 0, 0, 1, 'Cart', 'Cart', 'Cart', 0, 'en', 7, ',7,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (5, 'Đồ án', 'do-an', 'do-an/', '', '2014-04-07 15:28:17', '2014-04-07 14:28:00', 0, 3, 1, 'Loại hình đồ án', 'Đồ án', 'Đồ án,do an', 0, 'vi', 4, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', '2014-04-07 15:29:10', '2014-04-07 14:28:00', 0, 2, 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu,gioi thieu', 0, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (24, 'Quy hoạch hạ tầng', 'quy-hoach-ha-tang', 'quy-hoach-ha-tang/', '', '2014-04-16 12:40:39', '2014-04-16 11:40:00', 5, 5, 1, 'Quy hoạch hạ tầng', 'Quy hoạch hạ tầng', 'Quy hoạch hạ tầng,quy hoach ha tang', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (7, 'Tin tức & Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', '2014-04-07 15:32:52', '2014-04-07 14:32:00', 0, 4, 1, 'Tin tức & Sự kiện', 'Tin tức & Sự kiện', 'Tin tức & Sự kiện,tin tuc su kien', 1, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (8, 'Nghiên cứu và phát triển', 'nghien-cuu-va-phat-trien', 'nghien-cuu-va-phat-trien/', '', '2014-04-07 15:34:20', '2014-04-07 14:34:00', 0, 5, 1, 'Nghiên cứu và phát triển', 'Nghiên cứu và phát triển', 'Nghiên cứu và phát triển,nghien cuu va phat trien', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (9, 'Hợp tác Quốc tế', 'hop-tac-quoc-te', 'hop-tac-quoc-te/', '', '2014-04-07 15:37:01', '2014-04-07 14:37:00', 0, 6, 1, 'Hợp tác Quốc tế', 'Hợp tác Quốc tế', 'Hợp tác Quốc tế,hop tac quoc te', 0, 'vi', 5, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (10, 'Quy hoạch vùng', 'quy-hoach-vung', 'quy-hoach-vung/', '', '2014-04-07 15:37:37', '2014-04-16 12:39:00', 5, 1, 1, 'Quy hoạch vùng', 'Quy hoạch vùng', 'Quy hoạch vùng,quy hoach vung', 0, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (11, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-04-07 15:38:16', '2014-04-07 14:37:00', 0, 7, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 'vi', 6, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (12, 'Giới thiệu chung', 'gioi-thieu-chung', 'gioi-thieu-chung/', '', '2014-04-07 15:40:03', '2014-04-07 14:40:00', 6, 1, 1, 'Giới thiệu chung', 'Giới thiệu chung', 'Giới thiệu chung,gioi thieu chung', 1, 'vi', 2, ',2,', 'admin', 'admin', 0);
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
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) default NULL,
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) default NULL,
  `content` text,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider liên hệ', 'contact.jpg', 'javascript:;', '2014-04-07 17:06:16', '2014-04-15 17:49:10', 1, 'vi', 1, ',1,2,11,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Slider trang chủ', 'home.jpg', 'javascript:;', '2014-04-07 17:09:35', '2014-04-16 16:09:00', 1, 'vi', 1, ',1,2,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (3, 'No name', 'no-name.jpg', 'javascript:;', '2014-04-07 17:15:18', '2014-04-16 17:03:00', 1, 'vi', 2, ',', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (4, 'unesco', 'unesco.jpg', 'javascript:;', '2014-04-07 17:17:59', '2014-04-16 11:57:33', 1, 'vi', 2, ',4,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (5, 'jica', 'jica.jpg', 'javascript:;', '2014-04-16 11:57:38', '2014-04-14 10:57:00', 1, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (6, 'koica', 'koica.jpg', 'javascript:;', '2014-04-16 11:57:56', '2014-04-13 10:57:00', 1, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (7, 'ADB', 'ADB.jpg', 'javascript:;', '2014-04-16 11:58:10', '2014-04-12 10:57:00', 1, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (8, 'fulbright', 'fulbright.jpg', 'javascript:;', '2014-04-16 11:58:22', '2014-04-12 10:57:00', 1, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (9, 'SOC', 'SOC.jpg', 'javascript:;', '2014-04-16 11:58:35', '2014-04-12 10:57:00', 1, 'vi', 2, '', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner_position`
-- 

CREATE TABLE `web_slider_banner_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `web_slider_banner_position`
-- 

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 940x300 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Partner 90 x 40 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (3, 'QC Left width:150px', 0);
INSERT INTO `web_slider_banner_position` VALUES (4, 'QC Right width:150px', 0);
INSERT INTO `web_slider_banner_position` VALUES (5, 'Bottom', 0);
INSERT INTO `web_slider_banner_position` VALUES (6, 'Center', 0);
INSERT INTO `web_slider_banner_position` VALUES (7, 'Partner', 0);

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
