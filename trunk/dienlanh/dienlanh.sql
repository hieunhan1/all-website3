-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 14, 2014 at 05:45 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `dienlanh`
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

INSERT INTO `web_config` VALUES (1, 'Việt nam', 'vi', '10.7867893,106.6972446', 'localhost/all/dienlanh', 5, 12, 12, 10, 'Bản quyền © 2014 SIUP', '<p><strong>Copyright © 2013. Cửa hàng điện lạnh&nbsp;Thiên Long</strong><br />\r\nĐịa chỉ: 15 Hùng Vương, Phường 4, Quận 5, Tp.HCM<br />\r\nĐiện thoại: 0988 388 003 Khánh</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ: 65 Mạc Đỉnh Chi, Phường ĐaKao, Quận 1, Tp.HCM&nbsp;<br />\r\nĐiện thoại: <span style="color:#B22222;">08 38224476</span> &nbsp; &nbsp; Fax: <span style="color:#B22222;">08 38220090</span> &nbsp; &nbsp; Email: <span style="color:#B22222;">contact@siup.vn</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-02-20 13:35:24', '2014-05-14 16:45:07', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', '10.7867893,106.6972446', 'localhost/all/dienlanh', 5, 12, 12, 10, 'Copyright © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ: 65 Mạc Đỉnh Chi, Phường ĐaKao, Quận 1, Tp.HCM&nbsp;<br />\r\nTelephone: <span style="color:#B22222;">08 38224476</span> &nbsp; &nbsp; Fax: <span style="color:#B22222;">08 38220090</span> &nbsp; &nbsp; Email: <span style="color:#B22222;">contact@siup.vn</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 0, '2013-11-12 15:50:44', '2014-04-17 17:59:19', 'admin', 'admin', 0);

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

INSERT INTO `web_info` VALUES (26, 'Dự án đường Phạm Ngọc Hiển', 'du-an-duong-pham-ngoc-hien', 'du-an-duong-pham-ngoc-hien.jpg', 'Dự án đường Phạm Ngọc Hiển', '', '2014-04-17 17:00:16', '2014-05-05 17:08:10', 1, 'Dự án đường Phạm Ngọc Hiển,du an duong pham ngoc hien', 0, 'vi', ',5,10,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (27, 'Dự án Bong Bo Sen', 'du-an-bong-bo-sen', 'du-an-bong-bo-sen.jpg', 'Dự án Bong Bo Sen', '', '2014-04-17 17:00:39', '2014-05-05 17:08:09', 1, 'Dự án Bong Bo Sen,du an bong bo sen', 0, 'vi', ',5,10,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (16, 'Kiến thức về điện lạnh 1', 'kien-thuc-ve-dien-lanh-1', 'may-lanh.jpg', 'Kiến thức về điện lạnh 1', '<p>Như thường lệ, hàng năm nhân dịp ngày Quốc tế phụ nữ, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) phối hợp với Công đoàn tổ chức cho các cán bộ nữ du...</p>\r\n', '2014-04-16 16:41:16', '2014-04-16 15:38:00', 1, 'Kiến thức về điện lạnh 1,kien thuc ve dien lanh 1', 1, 'vi', ',12,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (17, 'Giới thiệu chung', 'gioi-thieu-chung', 'may-lanh.jpg', 'Giới thiệu chung', '', '2014-04-17 15:05:14', '2014-04-17 14:05:00', 1, 'Giới thiệu chung,gioi thieu chung', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (18, 'Quá trình hình thành', 'qua-trinh-hinh-thanh', '', 'Quá trình hình thành', '', '2014-04-17 15:05:48', '2014-05-05 17:08:07', 1, 'Quá trình hình thành,qua trinh hinh thanh', 1, 'vi', ',6,13,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (19, 'Chức năng nhiệm vụ', 'chuc-nang-nhiem-vu', '', 'Chức năng nhiệm vụ', '', '2014-04-17 15:06:10', '2014-05-05 17:08:14', 1, 'Chức năng nhiệm vụ,chuc nang nhiem vu', 1, 'vi', ',6,14,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (20, 'Cơ cấu tổ chức', 'co-cau-to-chuc', '', 'Cơ cấu tổ chức', '', '2014-04-17 15:06:20', '2014-05-05 17:08:13', 1, 'Cơ cấu tổ chức,co cau to chuc', 1, 'vi', ',6,15,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (21, 'Đối tác Quốc tế', 'doi-tac-quoc-te', '', 'Đối tác Quốc tế', '', '2014-04-17 15:06:40', '2014-05-05 17:08:12', 1, 'Đối tác Quốc tế,doi tac quoc te', 1, 'vi', ',6,16,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (22, 'Giải thưởng - Thành tựu', 'giai-thuong-thanh-tuu', '', 'Giải thưởng - Thành tựu', '', '2014-04-17 15:07:02', '2014-05-05 17:08:12', 1, 'Giải thưởng - Thành tựu,giai thuong - thanh tuu', 1, 'vi', ',6,17,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (23, 'Nhân sự phân viện', 'nhan-su-phan-vien', '', 'Nhân sự phân viện', '', '2014-04-17 15:07:23', '2014-05-05 17:08:11', 1, 'Nhân sự phân viện,nhan su phan vien', 1, 'vi', ',6,18,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (25, 'Dự án đường Đề Thám', 'du-an-duong-de-tham', 'du-an-duong-de-hoa-tham.jpg', 'Dự án đường Đề Thám', '', '2014-04-17 16:59:39', '2014-05-05 17:08:10', 1, 'Dự án đường Đề Thám,du an duong de tham', 0, 'vi', ',5,10,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (24, 'Quy hoạch đô thị', 'quy-hoach-do-thi', 'quy-hoach-do-thi-1.jpg', 'Khi xã hội thay đổi và phát triển, môi trường đô thị và quá trình quy hoạch đô thị cũng phải thay đổi và đó là trạng thái thay đổi động cân bằng giữa phát triển kinh tế và môi trường bền vững. ', '<p>Khi xã hội thay đổi và phát triển, môi trường đô thị và quá trình quy hoạch đô thị cũng phải thay đổi và đó là trạng thái thay đổi động cân bằng giữa phát triển kinh tế và môi trường bền vững. Trọng tâm quy hoạch tương lai cần phải nhấn mạnh vào sức khỏe cộng đồng. Quy hoạch đô thị và y tế công cộng từ lâu đã gắn bó với nhau, vì vậy bản chất môi trường có liên quan đến hạnh phúc và chất lượng sống.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="Quy hoạch đô thị" src="/all/siup/public/images/articles/quy-hoach-do-thi-1.jpg" style="width: 439px; height: 316px;" /><img alt="Quy hoạch đô thị" src="/all/siup/public/images/articles/quy-hoach-do-thi-2.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 439px; height: 316px;" /></p>\r\n\r\n<p>Khái niệm "đô thị xanh" cũng mới xuất hiện nhưng đã nhận được sự quan tâm đặc biệt của người dân và nhà đầu tư bất động sản. Đô thị xanh càng trở lên quan trọng hơn khi ô nhiễm môi trường, ô nhiễm tiếng ồn ngày một gia tăng ở các đô thị lớn. Người dân hiện có xu hướng muốn được sở hữu ngôi nhà thoáng đãng trong không gian xanh, gần gũi với thiên nhiên nhưng vẫn tiện nghi, thuận tiện, hướng đến sức khỏe cộng đồng.</p>\r\n\r\n<p>Một đô thị xanh hiện nay phải đạt 7 tiêu chí: Không gian xanh, công trình xanh, giao thông xanh, công nghiệp xanh, chất lượng môi trường đô thị xanh, bảo tồn cảnh quan thiên nhiên, danh lam thắng cảnh, công trình lịch sử, văn hóa, cộng đồng dân cư sống thân thiện với môi trường và thiên nhiên.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2014-04-17 16:51:31', '2014-05-05 17:08:11', 1, 'Quy hoạch đô thị,quy hoach do thi', 1, 'vi', ',5,10,', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (15, 'Kiến thức về điện lạnh 2', 'kien-thuc-ve-dien-lanh-2', 'may-lanh.jpg', 'Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...', '<p>Ngày 14/1/2014, tại khách sạn Hilton Opera Hà Nội, Hội quy hoạch phát triển đô thị Việt Nam và Trang thông tin điện tử Ashui.com đã tổ chức lễ trao giải kiến trúc sư...</p>\r\n', '2014-04-16 16:40:45', '2014-04-16 15:38:00', 1, 'Kiến thức về điện lạnh 2,kien thuc ve dien lanh 2', 1, 'vi', ',12,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (12, 'Hỗ trợ 2', 'ho-tro-2', 'may-lanh.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/nghien-cuu-phat-trien.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:10:36', '2014-04-16 15:10:00', 1, 'Hỗ trợ 2,ho tro 2', 1, 'vi', ',4,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (13, 'Hỗ trợ 1', 'ho-tro-1', 'may-lanh.jpg', 'SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại', '<p>SIUP luôn phấn đấu không ngừng trong việc nghiên cứu và phát triển các công nghệ mới, đào tạo kỹ sữ kỹ thuật cao nhằm đáp ứng nhu cầu hiện tại.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/siup/public/images/articles/hop-tac-quoc-te.jpg" style="width: 312px; height: 144px;" /></p>\r\n', '2014-04-16 16:12:27', '2014-04-15 15:10:00', 1, 'Hỗ trợ 1,ho tro 1', 1, 'vi', ',', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (14, 'Kiến thức về điện lạnh 3', 'kien-thuc-ve-dien-lanh-3', 'may-lanh.jpg', 'Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...', '<p>Sáng ngày 08 tháng 02, tại Hội trường, Viện Quy hoạch đô thị và nông thôn quốc gia (VIUP) đã tổ chức gặp mặt đầu xuân cán bộ, viên chức. Có nhiều hoạt động giao lưu...</p>\r\n', '2014-04-16 16:38:05', '2014-04-16 15:38:00', 1, 'Kiến thức về điện lạnh 3,kien thuc ve dien lanh 3', 1, 'vi', ',12,', 'admin', 'admin', 0);

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
  `lang` varchar(3) NOT NULL default 'vi',
  `type_id` int(1) default NULL,
  `position_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', 'http://localhost/all/dienlanh/', '', '2014-05-05 16:27:52', '2014-05-14 16:21:52', 0, 1, 1, 'Điện lạnh', 'Điện lạnh', 'Điện lạnh', 0, 'vi', 1, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', '2014-05-05 16:30:12', '2014-05-14 16:22:03', 0, 2, 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu,gioi thieu', 0, 'vi', 2, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (3, 'Tuyển dụng', 'tuyen-dung', 'tuyen-dung/', '', '2014-05-05 16:30:33', '2014-05-14 16:22:22', 0, 5, 1, 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng,tuyen dung', 0, 'vi', 4, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (4, 'Hỗ trợ', 'ho-tro', 'ho-tro/', '', '2014-05-05 16:30:56', '2014-05-14 16:22:17', 0, 4, 1, 'Hỗ trợ', 'Hỗ trợ', 'Hỗ trợ,ho tro', 0, 'vi', 5, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (5, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-05-05 16:31:12', '2014-05-14 16:22:26', 0, 6, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 'vi', 6, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Tivi', 'tivi', 'tivi/', 'tivi.png', '2014-05-05 16:33:33', '2014-05-06 10:51:55', 0, 11, 1, 'Tivi', 'Tivi', 'Tivi', 1, 'vi', 3, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (7, 'Tủ lạnh', 'tu-lanh', 'tu-lanh/', 'tu-lanh.png', '2014-05-05 16:34:08', '2014-05-14 15:49:07', 0, 12, 1, 'Tủ lạnh', 'Tủ lạnh', 'Tủ lạnh,tu lanh', 1, 'vi', 3, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (8, 'Máy giặt', 'may-giat', 'may-giat/', 'may-giat.png', '2014-05-05 16:34:31', '2014-05-06 11:00:28', 0, 13, 1, 'Máy giặt', 'Máy giặt', 'Máy giặt,may giat', 0, 'vi', 3, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (9, 'Máy lạnh', 'may-lanh', 'may-lanh/', 'may-lanh.png', '2014-05-05 16:34:56', '2014-05-06 11:13:27', 0, 14, 1, 'Máy lạnh', 'Máy lạnh', 'Máy lạnh,may lanh', 1, 'vi', 3, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (10, 'Sản phẩm khác', 'san-pham-khac', 'san-pham-khac/', 'san-pham-khac.png', '2014-05-05 16:35:17', '2014-05-06 11:40:32', 0, 15, 1, 'Sản phẩm khác', 'Sản phẩm khác', 'Sản phẩm khác,san pham khac', 0, 'vi', 3, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (11, 'Dịch vụ điện lạnh', 'dich-vu-dien-lanh', 'dich-vu-dien-lanh/', 'dich-vu-dien-lanh.png', '2014-05-05 16:35:46', '2014-05-06 11:45:49', 0, 16, 1, 'Dịch vụ điện lạnh', 'Dịch vụ điện lạnh', 'Dịch vụ điện lạnh,dich vu dien lanh', 0, 'vi', 8, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (12, 'Kiến thức về điện lạnh', 'kien-thuc-ve-dien-lanh', 'kien-thuc-ve-dien-lanh/', '', '2014-05-05 16:38:52', '2014-05-14 16:22:07', 0, 3, 1, 'Kiến thức về điện lạnh', 'Kiến thức về điện lạnh', 'Kiến thức về điện lạnh,kien thuc ve dien lanh', 0, 'vi', 2, ',1,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (13, 'Thương hiệu', 'thuong-hieu', 'thuong-hieu/', '', '2014-05-05 16:41:48', '2014-05-06 12:12:07', 0, 7, 1, 'Thương hiệu', 'Thương hiệu', 'Thương hiệu,thuong hieu', 0, 'vi', 3, ',7,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (14, 'ELECTROLUX', 'electrolux', 'electrolux/', '', '2014-05-05 16:43:12', '2014-05-05 16:44:15', 13, 31, 1, 'ELECTROLUX', 'ELECTROLUX', 'ELECTROLUX', 0, 'vi', 3, ',7,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (15, 'GENERAL', 'general', 'general/', '', '2014-05-05 16:44:32', NULL, 13, 32, 1, 'GENERAL', 'GENERAL', 'GENERAL', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (16, 'HAIER', 'haier', 'haier/', '', '2014-05-05 16:45:08', NULL, 13, 33, 1, 'HAIER', 'HAIER', 'HAIER', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (17, 'HITACHI', 'hitachi', 'hitachi/', '', '2014-05-05 16:45:29', NULL, 13, 34, 1, 'HITACHI', 'HITACHI', 'HITACHI', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (18, 'LG', 'lg', 'lg/', '', '2014-05-05 16:45:49', NULL, 13, 35, 1, 'LG', 'LG', 'LG', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (19, 'SAMSUNG', 'samsung', 'samsung/', '', '2014-05-05 16:46:08', NULL, 13, 36, 1, 'SAMSUNG', 'SAMSUNG', 'SAMSUNG', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (20, 'SANYO', 'sanyo', 'sanyo/', '', '2014-05-05 16:46:31', NULL, 13, 37, 1, 'SANYO', 'SANYO', 'SANYO', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (21, 'SHARP', 'sharp', 'sharp/', '', '2014-05-05 16:46:53', NULL, 13, 38, 1, 'SHARP', 'SHARP', 'SHARP', 0, 'vi', 3, ',7,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (22, 'TOSHIBA', 'toshiba', 'toshiba/', '', '2014-05-05 16:47:09', NULL, 13, 39, 1, 'TOSHIBA', 'TOSHIBA', 'TOSHIBA', 0, 'vi', 3, ',7,', 'admin', NULL, 0);

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
INSERT INTO `web_menu_admin` VALUES (5, 'Sản phẩm', 'web_products', 'icon-product.jpg', 5, 1);
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
INSERT INTO `web_menu_position` VALUES (5, 'Bottom', 5, 1);
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
INSERT INTO `web_menu_type` VALUES (3, 'Sản phẩm', 3, 1);
INSERT INTO `web_menu_type` VALUES (4, 'Tuyển dụng', 4, 1);
INSERT INTO `web_menu_type` VALUES (5, 'Hỗ trợ', 5, 1);
INSERT INTO `web_menu_type` VALUES (6, 'Liên hệ', 6, 1);
INSERT INTO `web_menu_type` VALUES (7, 'Thương hiệu', 7, 0);
INSERT INTO `web_menu_type` VALUES (8, 'Dịch vụ', 3, 1);
INSERT INTO `web_menu_type` VALUES (9, 'Item 9', 9, 0);
INSERT INTO `web_menu_type` VALUES (10, 'Item 10', 11, 0);
INSERT INTO `web_menu_type` VALUES (11, 'Không', 11, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_products`
-- 

CREATE TABLE `web_products` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `price` int(8) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `manhinh` varchar(100) NOT NULL,
  `camera` varchar(20) NOT NULL,
  `camera_phu` varchar(20) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `os` varchar(50) NOT NULL,
  `quayphim` varchar(50) NOT NULL,
  `ram` varchar(30) NOT NULL,
  `bonhotrong` varchar(10) NOT NULL,
  `thenho` varchar(20) NOT NULL,
  `metaDescription` varchar(250) NOT NULL,
  `thongtin_them` text NOT NULL,
  `content` text,
  `status` tinyint(1) default '1',
  `metaKeyword` varchar(250) default NULL,
  `noibat` int(1) default '0',
  `other` tinyint(1) default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `menu_id` varchar(20) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `web_products`
-- 

INSERT INTO `web_products` VALUES (1, 'Máy lạnh Mitsubishi Heavy SRK13YL-S5 1.5 Hp', 'may-lanh-mitsubishi-heavy-srk13yl-s5-1-5-hp', 'may-lanh-mitsubishi-heavy-srk13yl-s5-1-5-hp.jpg', 13100000, '', '', '', '', '', '', '', '', '', '', 'Máy lạnh Mitsubishi Heavy SRK13YL-S5 1.5 Hp', '', '<p>Máy lạnh Mitsubishi Heavy SRK13YL-S5 1.5 Hp</p>\r\n', 1, 'Máy lạnh Mitsubishi Heavy SRK13YL-S5 1.5 Hp', 0, 0, 'vi', ',9,', '2014-05-05 17:15:07', '2014-05-13 16:12:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (2, 'Máy lạnh Toshiba CU/CS-TS12QKH-8 1.5 Hp', 'may-lanh-toshiba-cu-cs-ts12qkh-8-1-5-hp', 'may-lanh-toshiba-cu-cs-ts12qkh-8-1-5-hp.jpg', 12490000, '', '', '', '', '', '', '', '', '', '', 'Máy lạnh Toshiba CU/CS-TS12QKH-8 1.5 Hp', '', '', 1, 'Máy lạnh Toshiba CU/CS-TS12QKH-8 1.5 Hp', 0, 0, 'vi', ',9,22,', '2014-05-05 17:16:36', '2014-05-13 16:12:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (3, 'Máy lạnh HITACHI Heavy SRK13YN-5 1.5 Hp', 'may-lanh-hitachi-heavy-srk13yn-5-1-5-hp', 'may-lanh-hitachi-heavy-srk13yn-5-1-5-hp.jpg', 6390000, '', '', '', '', '', '', '', '', '', '', 'Máy lạnh HITACHI Heavy SRK13YN-5 1.5 Hp', '', '', 1, 'Máy lạnh HITACHI Heavy SRK13YN-5 1.5 Hp', 0, 0, 'vi', ',9,17,', '2014-05-05 17:17:26', '2014-05-13 15:49:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (4, 'Tủ lạnh Hitachi R-ZG440EG1 365 lít', 'tu-lanh-hitachi-r-zg440eg1-365-lit', 'tu-lanh-hitachi-r-zg440eg1-365-lit.jpg', 8350000, '', '', '', '', '', '', '', '', '', '', 'Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh', '', '<p><strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản dinh dưỡng</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh cho ngăn đá lạnh đồng đều</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh giúp ngăn đá được làm lạnh đồng đều và nhanh hơn, giúp tối ưu hóa khả năng cấp đông của thực phẩm bên trong</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Công nghệ Nano kháng khuẩn của Hitachi</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Nano Titanium là công nghệ đột phá có tác dụng khử mùi và kháng khuẩn mạnh</span></p>\r\n', 1, 'Tủ lạnh Hitachi R-ZG440EG1 365 lít,tu lanh hitachi r-zg440eg1 365 lit', 0, 0, 'vi', ',13,17,7,', '2014-05-06 12:33:12', '2014-05-06 11:33:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (5, 'Tủ lạnh Electrolux EBB3500PA-RVN 350 lít', 'tu-lanh-electrolux-ebb3500pa-rvn-350-lit', 'tu-lanh-electrolux-ebb3500pa-rvn-350-lit.jpg', 10300000, '', '', '', '', '', '', '', '', '', '', 'Tủ lạnh được thiết kế ngăn đông dưới tiện lợi giúp thuận tiện cho người dùng trong quá trình sử dụng.', '', '<p><strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản dinh dưỡng</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh cho ngăn đá lạnh đồng đều</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh giúp ngăn đá được làm lạnh đồng đều và nhanh hơn, giúp tối ưu hóa khả năng cấp đông của thực phẩm bên trong</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Công nghệ Nano kháng khuẩn của Hitachi</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Nano Titanium là công nghệ đột phá có tác dụng khử mùi và kháng khuẩn mạnh</span></p>\r\n', 1, 'Tủ lạnh Electrolux EBB3500PA-RVN 350 lít,tu lanh electrolux ebb3500pa-rvn 350 lit', 0, 0, 'vi', ',13,14,7,', '2014-05-06 12:34:30', '2014-05-06 11:33:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (6, 'Tủ lạnh Electrolux ETB3500PE-RVN 350 lít', 'tu-lanh-electrolux-etb3500pe-rvn-350-lit', 'tu-lanh-electrolux-etb3500pe-rvn-350-lit.jpg', 12500000, '', '', '', '', '', '', '', '', '', '', 'Tủ lạnh có bộ khử mùi làm mùi khó chịu từ một số thực phẩm không lan ra giúp cho thực phẩm được đảm bảo hương vị.', '', '<p><strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản dinh dưỡng</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh cho ngăn đá lạnh đồng đều</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh giúp ngăn đá được làm lạnh đồng đều và nhanh hơn, giúp tối ưu hóa khả năng cấp đông của thực phẩm bên trong</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Công nghệ Nano kháng khuẩn của Hitachi</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Nano Titanium là công nghệ đột phá có tác dụng khử mùi và kháng khuẩn mạnh</span></p>\r\n', 1, 'Tủ lạnh Electrolux ETB3500PE-RVN 350 lít,tu lanh electrolux etb3500pe-rvn 350 lit', 0, 0, 'vi', ',13,14,7,', '2014-05-06 12:35:39', '2014-05-06 11:33:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (7, 'Tủ lạnh Hitachi R-T350EG1D 290 lít', 'tu-lanh-hitachi-r-t350eg1d-290-lit', 'tu-lanh-hitachi-r-t350eg1d-290-lit.jpg', 8600000, '', '', '', '', '', '', '', '', '', '', 'Cảm biến nhiệt Eco nhận biết sự thay đổi nhiệt độ và bộ vi xử lý sẽ quyết định chế độ làm lạnh tối ưu', '', '<p><strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản dinh dưỡng</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh cho ngăn đá lạnh đồng đều</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh giúp ngăn đá được làm lạnh đồng đều và nhanh hơn, giúp tối ưu hóa khả năng cấp đông của thực phẩm bên trong</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Công nghệ Nano kháng khuẩn của Hitachi</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Nano Titanium là công nghệ đột phá có tác dụng khử mùi và kháng khuẩn mạnh</span></p>\r\n', 1, 'Tủ lạnh Hitachi R-T350EG1D 290 lít,tu lanh hitachi r-t350eg1d 290 lit', 0, 0, 'vi', ',13,17,7,', '2014-05-06 12:36:25', '2014-05-06 11:33:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (8, 'Tủ lạnh Panasonic NR-BK346MSVN 303 lít', 'tu-lanh-panasonic-nr-bk346msvn-303-lit', 'tu-lanh-panasonic-nr-bk346msvn-303-lit.jpg', 9400000, '', '', '', '', '', '', '', '', '', '', 'Tủ lạnh dung tích 303 lít phù hợp sử dụng cho gia đình từ 6 đến 7 người.', '', '<p><strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản dinh dưỡng</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Hệ thống làm lạnh Minus-Zero bảo quản chất dinh dưỡng và vị tươi ngon của thực phẩm vì một cuộc sống khỏe mạnh</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh cho ngăn đá lạnh đồng đều</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Màn khí lạnh giúp ngăn đá được làm lạnh đồng đều và nhanh hơn, giúp tối ưu hóa khả năng cấp đông của thực phẩm bên trong</span><br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<br style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;" />\r\n<strong style="margin: 0px; padding: 0px; font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Công nghệ Nano kháng khuẩn của Hitachi</strong><br style="margin: 0px; padding: 0px;" />\r\n<span style="font-family: ''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20px;">Nano Titanium là công nghệ đột phá có tác dụng khử mùi và kháng khuẩn mạnh</span></p>\r\n', 1, 'Tủ lạnh Panasonic NR-BK346MSVN 303 lít,tu lanh panasonic nr-bk346msvn 303 lit', 0, 0, 'vi', ',13,7,', '2014-05-06 12:37:21', '2014-05-06 11:33:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (9, 'Máy lạnh Samsung ASV10PUQNXEA', 'may-lanh-samsung-asv10puqnxea', 'may-lanh-samsung-asv10puqnxea.jpg', 10300000, '', '', '', '', '', '', '', '', '', '', 'Thiết kế tinh tế và độc quyền của máy điều hòa không khí Samsung mới là một giải pháp hoàn hảo cho phòng khách hiện đại và hợp thời trang của bạn. Chúng tôi cam kết cung cấp đến khách hàng một phong cách sống sành điệu với vẻ đẹp có một không hai của', '<ul>\r\n	<li>Màu sắc và kiểu dáng thiết kế tinh tế và độc quyền</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<p><strong>Màu sắc và kiểu dáng thiết kế tinh tế và độc quyền</strong></p>\r\n\r\n<p style="text-align: center;"><img src="http://www.nguyenkim.com/images/product/Dienlanh/1217378_AS12TULNXEA1AS12TULXXEA-1.jpg" style="width: 600px; height: 233px;" /></p>\r\n\r\n<p><strong>Thiết kế tinh tế và độc quyền</strong> của máy điều hòa không khí Samsung mới là một giải pháp hoàn hảo cho phòng khách hiện đại và hợp thời trang của bạn. Chúng tôi cam kết cung cấp đến khách hàng một phong cách sống sành điệu với vẻ đẹp có một không hai của máy điều hòa không khí mới của Samsung.Máy điều hòa không khí độc đáo này không chỉ đẹp như những bông tuyết tinh khiết mà nó còn mang đến cho bạn bầu không khí trong lành, sạch sẽ và tươi mát nhất với sự tiêu thụ năng lượng ở mức thấp.</p>\r\n\r\n<p><strong>Ion S-Plasama</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="" src="http://www.nguyenkim.com/images/product/Dienlanh/1226569_ASV13PUQNXEA-ASV13PUQXXEA-2.jpg" style="width: 300px; height: 210px;" /></strong></p>\r\n\r\n<p>Công nghệ diệt khuẩn Virus Doctor của Samsung cải thiện đáng kể chất lượng không khí trong nhà mang lại cho bạn hơn thở trong lành, khỏe mạnh. Công nghệ này giúp loại bỏ các chất ô nhiễm vô hình gây đe dọa sức khỏe như vi rút, vi khuẩn, và những tác nhân dị ứng, giúp bảo vệ bạn khỏi các dịch bệnh và những căn bệnh thường ngày. Lọc sạch hơn 19.16m3 phạm vi không gian nhà bạn. Công nghệ diệt khuẩn Virus Doctor không chỉ thổi không khí tươi mát vào trong căn nhà của bạn mà nó còn thổi bay đi các đối thủ cạnh tranh.</p>\r\n\r\n<p><strong>Chế độ giấc ngủ ngon Good Sleep</strong></p>\r\n\r\n<p>Mất ngủ sẽ gây ra một cảm giác khó chịu cho một ngày làm việc hiệu quả. Đó là lý do tại sao chế độ giấc ngủ ngon Good''sleep của Samsung tạo ra khí hậu thoải mái lý tưởng giúp bạn có được giấc ngủ sâu. Với hệ thống điều khiển chính xác nhiệt độ và độ ẩm tự động, cả ba giai đoạn quan trọng của giấc ngủ được bảo vệ khỏi sự ẩm ướt và hơi nóng vì thế bạn có thể thức dậy hoàn toàn sảng khoái và sẵn sàng cho một ngày mới. Chế độ giấc ngủ ngon Good''sleep không những mang lại giây phút quý báu của giấc ngủ mà còn tiết kiệm đến 36% lượng tiêu thụ điện năng so với chế độ làm mát thông thường.</p>\r\n\r\n<p><strong>Tiết kiệm năng lượng và duy trì sự mát mẻ - Biến tần thông minh</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="" src="http://www.nguyenkim.com/images/product/Dienlanh/1226569_ASV13PUQNXEA-ASV13PUQXXEA-3.jpg" style="width: 300px; height: 183px;" /></strong></p>\r\n\r\n<p>Máy điều hoàn không khí của Samsung với công nghệ biến tần thông minh Smart Inverter không chỉ tiêu thụ ít năng lượng hơn những dòng máy thường, nó cũng nhận được 1 trong những Đánh giá Năng lượng Hiệu quả nhất là 5.2 (K-series 9k). Bằng việc sử dụng toàn bộ công suất của máy nén, máy nhanh chóng máy nhanh chóng đạt được nhiệt độ mong muốn hơn những dòng máy không có công nghệ biến tần. Thêm vào đó máy điều hòa không khí có Biến tần Thông minh điều chỉnh những sự dao động để duy trì nhiệt độ không thay đổi và giữ cho mọi thứ yên trong yên tĩnh.</p>\r\n', 1, 'Máy lạnh Samsung ASV10PUQNXEA,may lanh samsung asv10puqnxea', 0, 0, 'vi', ',19,9,', '2014-05-14 16:13:13', '2014-05-14 15:13:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (10, 'Máy lạnh LG V10APA', 'may-lanh-lg-v10apa', 'may-lanh-lg-v10apa.jpg', 10790000, '', '', '', '', '', '', '', '', '', '', 'Hơn 2 triệu Ion không chỉ diệt khuẩn hoàn toàn luồng không khí đi qua điều hòa, mà còn diệt sạch các tác nhân gây bệnh, thậm chí các phân tử mùi độc hại trong không khí.', '<ul>\r\n	<li>Tiết kiệm :&nbsp;500.000&nbsp;VND&nbsp;(4%)</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<p><strong>Plasmaster Ionizer</strong></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.nguyenkim.com/images/product/Dienlanh/1225438_V13APA-1.jpg" style="width: 600px; height: 232px;" /></p>\r\n\r\n<p>Hơn 2 triệu Ion không chỉ diệt khuẩn hoàn toàn luồng không khí đi qua điều hòa, mà còn diệt sạch các tác nhân gây bệnh, thậm chí các phân tử mùi độc hại trong không khí.</p>\r\n\r\n<p><strong>Tấm vi lọc 3M</strong></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.nguyenkim.com/images/product/Dienlanh/1225438_V13APA-2.jpg" style="width: 600px; height: 239px;" /></p>\r\n\r\n<p>Bắt giữ và tiêu diệt hiệu quả những phần tử có hại siêu nhỏ (bao gồm cả phấn hoa, bụi bẩn), nhờ lực tĩnh điện mạnh mẽ.</p>\r\n\r\n<p><strong>Tăng cường độ ẩm</strong></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.nguyenkim.com/images/product/Dienlanh/1225438_V13APA-3.jpg" style="width: 600px; height: 225px;" /></p>\r\n\r\n<p>Dùng điều hòa suốt đêm khiến cho không khí trong phòng trở nên khô và khó chịu. Giờ đây, công nghệ ion Plasmaster tiên tiến giữ cho bạn một làn da luôn mềm mại, duy trì độ ẩm trong suốt giấc ngủ. Chức năng chăm sóc duy trì độ ẩm cho da hoạt động dựa vào một linh kiện lắp kèm điều hòa, khi bộ phận này hoạt động sẽ giải phóng ra các ion phân cực (cả Ion dương và Ion âm). Các Ion này sẽ hút, giữ các phân tử nước trong không khí, tạo thành các phần tử nước có kích thước 10~20 nm, dễ dàng hấp thụ vào da qua các lỗ chân lông có kích thước trung bình 30~50 nm</p>\r\n', 1, 'Máy lạnh LG V10APA,may lanh lg v10apa', 0, 0, 'vi', ',18,9,', '2014-05-14 16:23:02', '2014-05-14 15:23:00', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (11, 'TIVI LED SAMSUNG UA55HU9000KXXV', 'tivi-led-samsung-ua55hu9000kxxv', 'tivi-led-samsung-ua55hu9000kxxv.jpg', 79900000, '', '', '', '', '', '', '', '', '', '', 'Màn hình cong nâng cao cảm giác về chiều sâu. Màu sắc và hiển thị tự nhiên. UHD nâng cao chất lượng hình ảnh. ', '<ul>\r\n	<li>Dùng thử: 5&nbsp;ngày</li>\r\n	<li>Bảo hành 5 năm</li>\r\n</ul>\r\n', '<p>Màn hình cong nâng cao cảm giác về chiều sâu. Màu sắc và hiển thị tự nhiên. UHD nâng cao chất lượng hình ảnh.&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img src="https://www.nguyenkim.com/images/companies/1/%C4%90i%E1%BB%87n%20t%E1%BB%AD/1242142_SAMSUNG%20UA55HU9000KXXV.1.jpg" style="width: 600px; height: 307px;" />&nbsp;</p>\r\n\r\n<h2>Surround your senses and be part of the action</h2>\r\n\r\n<p style="text-align: center;"><img src="https://www.nguyenkim.com/images/companies/1/%C4%90i%E1%BB%87n%20t%E1%BB%AD/1242142_SAMSUNG%20UA55HU9000KXXV.2.jpg" style="width: 600px; height: 307px;" /></p>\r\n\r\n<p>Cách mạng truyền hình UHD cong của Samsung sẽ đưa bạn vào thế giới mới của xem nhập vai và làm cho bạn cảm thấy như bạn đang phải ở giữa của hành động. Màn hình UHD là cong vào góc bên phải để cung cấp khoảng cách xem tối ưu cho phòng khách của bạn. Ngoài ra, màn hình UHD nhẹ nhàng cong cung cấp cho bạn xem thống nhất và cân bằng từ tất cả các khu vực của màn hình. Xem hình ảnh chất lượng tốt nhất UHD, độ sâu và chi tiết một màn hình UHD cung cấp.</p>\r\n\r\n<h2>Curved screen elevates the feeling of depth</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://www.nguyenkim.com/images/companies/1/%C4%90i%E1%BB%87n%20t%E1%BB%AD/1242142_SAMSUNG%20UA55HU9000KXXV.3.jpg" style="width: 600px; height: 307px;" /></p>\r\n\r\n<p>Hãy sẵn sàng để trải nghiệm hình ảnh sống động như thật hơn hơn bao giờ hết. Với Samsung Auto sâu Enhancer, TV UHD cong của bạn sẽ cung cấp cho bạn một cảm giác lớn hơn về chiều sâu bằng cách áp dụng mức độ khác nhau của việc tăng cường độ tương phản trên các vùng khác nhau của màn hình, làm cho bạn vui chơi giải trí nhập vai hơn và thú vị. Bạn thực sự phải nhìn thấy nó để tin rằng nó.</p>\r\n', 1, 'TIVI LED SAMSUNG UA55HU9000KXXV,tivi led samsung ua55hu9000kxxv', 0, 0, 'vi', ',19,6,', '2014-05-14 16:32:21', '2014-05-14 15:32:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (12, 'TIVI LCD SONY KDL-32R410B VN3', 'tivi-lcd-sony-kdl-32r410b-vn3', 'tivi-lcd-sony-kdl-32r410b-vn3.jpg', 7900000, '', '', '', '', '', '', '', '', '', '', 'Tận hưởng từng phút chương trình yêu thích của bạn. Với tính năng được tích hợp như là Clear Resolution Enhancer và Bass Reflex Box Speakers, cho bạn trải nghiệm hình ảnh tự nhiên và chuẩn xác trên màn hình với âm thanh toàn dải rõ ràng. Trải nghiệm ', '<ul>\r\n	<li>Dùng thử: 5&nbsp;ngày</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<p>&nbsp;</p>\r\n\r\n<div>Hình Ảnh&nbsp;Sắc Nét Với&nbsp;Khả Năng&nbsp;Chia Sẻ Không Dây</div>\r\n\r\n<div><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.1.jpg" style="width: 600px; height: 329px;" /></div>\r\n\r\n<div>Chi Tiết Hình Ảnh Thêm Rõ Nét Và Tự Nhiên</div>\r\n\r\n<div>\r\n<div>Đắm mình trong một thế giới hình ảnh chuyển động rõ nét, ngoạn mục với công nghệ nâng cao độ phân giải rõ nét&nbsp;-&nbsp;Clear Resolution Enhancer. Giảm nhiễu tối ưu, cùng với hình ảnh tự nhiên, cung cấp một chiều sâu ảnh thực&nbsp;và chi tiết cho bạn trải nghiệm.</div>\r\n</div>\r\n\r\n<div>\r\n<p><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.2.jpg" style="width: 600px; height: 307px;" /></p>\r\n\r\n<div>\r\n<div>\r\n<div><strong>Chuẩn Truyền Hình KTS Thế Hệ Mới</strong></div>\r\n\r\n<div>Để tăng sức mạnh và linh hoạt trong việc tiếp cận các chương trình truyền hình độ phân giải cao HD*1&nbsp;với băng thông cao hơn 50% so với DVB-T. Ngoài ra, DVB-T2 cung cấp chất lượng hình ảnh và âm thanh tốt hơn, cộng thêm khả năng truy cập tuyệt vời hơn đáng kể các chương trình HD*2, cho phép bạn tận hưởng các dịch vụ tương tác nhiều hơn như hướng dẫn chương trình điện tử trên TV.&nbsp;<br />\r\n<br />\r\n<strong>DVB-T2 hỗ trợ SD, HD, mobile TV,&nbsp;</strong>hoặc bất kì sự kết hợp nào.</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 'TIVI LCD SONY KDL-32R410B VN3,tivi lcd sony kdl-32r410b vn3', 0, 0, 'vi', ',6,', '2014-05-14 16:34:58', '2014-05-14 15:34:00', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (13, 'TIVI đèn nền LED SHARP LC-32LE155M', 'tivi-den-nen-led-sharp-lc-32le155m', 'tivi-den-nen-led-sharp-lc-32le155m.jpg', 5200000, '', '', '', '', '', '', '', '', '', '', 'TIVI đèn nền LED SHARP LC-32LE155M', '<ul>\r\n	<li>Dùng thử: 5&nbsp;ngày</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Hình Ảnh&nbsp;Sắc Nét Với&nbsp;Khả Năng&nbsp;Chia Sẻ Không Dây</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.1.jpg" style="margin: 0px; border: 0px; width: 600px; height: 329px;" /></div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Chi Tiết Hình Ảnh Thêm Rõ Nét Và Tự Nhiên</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div style="margin: 10px 0px;">Đắm mình trong một thế giới hình ảnh chuyển động rõ nét, ngoạn mục với công nghệ nâng cao độ phân giải rõ nét&nbsp;-&nbsp;Clear Resolution Enhancer. Giảm nhiễu tối ưu, cùng với hình ảnh tự nhiên, cung cấp một chiều sâu ảnh thực&nbsp;và chi tiết cho bạn trải nghiệm.</div>\r\n</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<p style="margin: 10px 0px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.2.jpg" style="margin: 0px; border: 0px; width: 600px; height: 307px;" /></p>\r\n\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;"><strong style="margin: 0px;">Chuẩn Truyền Hình KTS Thế Hệ Mới</strong></div>\r\n\r\n<div style="margin: 10px 0px;">Để tăng sức mạnh và linh hoạt trong việc tiếp cận các chương trình truyền hình độ phân giải cao HD*1&nbsp;với băng thông cao hơn 50% so với DVB-T. Ngoài ra, DVB-T2 cung cấp chất lượng hình ảnh và âm thanh tốt hơn, cộng thêm khả năng truy cập tuyệt vời hơn đáng kể các chương trình HD*2, cho phép bạn tận hưởng các dịch vụ tương tác nhiều hơn như hướng dẫn chương trình điện tử trên TV.&nbsp;<br style="margin: 0px;" />\r\n<br style="margin: 0px;" />\r\n<strong style="margin: 0px;">DVB-T2 hỗ trợ SD, HD, mobile TV,&nbsp;</strong>hoặc bất kì sự kết hợp nào.</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 'TIVI đèn nền LED SHARP LC-32LE155M,tivi den nen led sharp lc-32le155m', 0, 0, 'vi', ',21,6,', '2014-05-14 16:38:19', '2014-05-14 15:38:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (14, 'TIVI đèn nền LED SHARP LC-60LE650D2', 'tivi-den-nen-led-sharp-lc-60le650d2', 'tivi-den-nen-led-sharp-lc-60le650d2.jpg', 27000000, '', '', '', '', '', '', '', '', '', '', 'TIVI đèn nền LED SHARP LC-60LE650D2', '<ul>\r\n	<li>Dùng thử: 5&nbsp;ngày</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Hình Ảnh&nbsp;Sắc Nét Với&nbsp;Khả Năng&nbsp;Chia Sẻ Không Dây</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.1.jpg" style="margin: 0px; border: 0px; width: 600px; height: 329px;" /></div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Chi Tiết Hình Ảnh Thêm Rõ Nét Và Tự Nhiên</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div style="margin: 10px 0px;">Đắm mình trong một thế giới hình ảnh chuyển động rõ nét, ngoạn mục với công nghệ nâng cao độ phân giải rõ nét&nbsp;-&nbsp;Clear Resolution Enhancer. Giảm nhiễu tối ưu, cùng với hình ảnh tự nhiên, cung cấp một chiều sâu ảnh thực&nbsp;và chi tiết cho bạn trải nghiệm.</div>\r\n</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<p style="margin: 10px 0px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.2.jpg" style="margin: 0px; border: 0px; width: 600px; height: 307px;" /></p>\r\n\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;"><strong style="margin: 0px;">Chuẩn Truyền Hình KTS Thế Hệ Mới</strong></div>\r\n\r\n<div style="margin: 10px 0px;">Để tăng sức mạnh và linh hoạt trong việc tiếp cận các chương trình truyền hình độ phân giải cao HD*1&nbsp;với băng thông cao hơn 50% so với DVB-T. Ngoài ra, DVB-T2 cung cấp chất lượng hình ảnh và âm thanh tốt hơn, cộng thêm khả năng truy cập tuyệt vời hơn đáng kể các chương trình HD*2, cho phép bạn tận hưởng các dịch vụ tương tác nhiều hơn như hướng dẫn chương trình điện tử trên TV.&nbsp;<br style="margin: 0px;" />\r\n<br style="margin: 0px;" />\r\n<strong style="margin: 0px;">DVB-T2 hỗ trợ SD, HD, mobile TV,&nbsp;</strong>hoặc bất kì sự kết hợp nào.</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 'TIVI đèn nền LED SHARP LC-60LE650D2,tivi den nen led sharp lc-60le650d2', 0, 0, 'vi', ',21,6,', '2014-05-14 16:39:59', '2014-05-14 15:38:00', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (15, 'TIVI LED TOSHIBA 40PX200V', 'tivi-led-toshiba-40px200v', 'tivi-led-toshiba-40px200v.jpg', 15900000, '', '', '', '', '', '', '', '', '', '', 'TIVI LED TOSHIBA 40PX200V', '<ul>\r\n	<li>Dùng thử: 5&nbsp;ngày</li>\r\n	<li>Bảo hành 10 năm</li>\r\n</ul>\r\n', '<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Hình Ảnh&nbsp;Sắc Nét Với&nbsp;Khả Năng&nbsp;Chia Sẻ Không Dây</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.1.jpg" style="margin: 0px; border: 0px; width: 600px; height: 329px;" /></div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">Chi Tiết Hình Ảnh Thêm Rõ Nét Và Tự Nhiên</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div style="margin: 10px 0px;">Đắm mình trong một thế giới hình ảnh chuyển động rõ nét, ngoạn mục với công nghệ nâng cao độ phân giải rõ nét&nbsp;-&nbsp;Clear Resolution Enhancer. Giảm nhiễu tối ưu, cùng với hình ảnh tự nhiên, cung cấp một chiều sâu ảnh thực&nbsp;và chi tiết cho bạn trải nghiệm.</div>\r\n</div>\r\n\r\n<div style="margin: 10px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px;">\r\n<p style="margin: 10px 0px;"><img src="https://www.nguyenkim.com/images/companies/1/VI%E1%BB%84N%20TH%C3%94NG/1241963_SONY%20KDL-32R410B%20VN3.2.jpg" style="margin: 0px; border: 0px; width: 600px; height: 307px;" /></p>\r\n\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;">\r\n<div style="margin: 10px 0px;"><strong style="margin: 0px;">Chuẩn Truyền Hình KTS Thế Hệ Mới</strong></div>\r\n\r\n<div style="margin: 10px 0px;">Để tăng sức mạnh và linh hoạt trong việc tiếp cận các chương trình truyền hình độ phân giải cao HD*1&nbsp;với băng thông cao hơn 50% so với DVB-T. Ngoài ra, DVB-T2 cung cấp chất lượng hình ảnh và âm thanh tốt hơn, cộng thêm khả năng truy cập tuyệt vời hơn đáng kể các chương trình HD*2, cho phép bạn tận hưởng các dịch vụ tương tác nhiều hơn như hướng dẫn chương trình điện tử trên TV.&nbsp;<br style="margin: 0px;" />\r\n<br style="margin: 0px;" />\r\n<strong style="margin: 0px;">DVB-T2 hỗ trợ SD, HD, mobile TV,&nbsp;</strong>hoặc bất kì sự kết hợp nào.</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 'TIVI LED TOSHIBA 40PX200V,tivi led toshiba 40px200v', 0, 0, 'vi', ',22,6,', '2014-05-14 16:40:51', '2014-05-14 15:40:00', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_products_comment`
-- 

CREATE TABLE `web_products_comment` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) default '0',
  `products_id` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_products_comment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_products_image`
-- 

CREATE TABLE `web_products_image` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `status` tinyint(1) default '0',
  `products_id` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_products_image`
-- 

INSERT INTO `web_products_image` VALUES (1, 'TIVI LED TOSHIBA 40PX200V 2', 'tivi-den-nen-led-sharp-lc-32le155m.jpg', 1, 15, 'vi', '2014-05-14 17:35:53', '2014-05-14 17:35:53', 'admin', NULL, 0);
INSERT INTO `web_products_image` VALUES (2, 'TIVI LED TOSHIBA 40PX200V 3', 'tivi-led-samsung-ua55hu9000kxxv.jpg', 1, 15, 'vi', '2014-05-14 17:36:02', '2014-05-14 17:36:10', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_products_order`
-- 

CREATE TABLE `web_products_order` (
  `id` int(11) NOT NULL auto_increment,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `products_id` int(11) NOT NULL,
  `link_sp` varchar(200) NOT NULL,
  `status` tinyint(1) default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_products_order`
-- 


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider trang chủ', 'slider.jpg', 'javascript:;', '2014-05-06 10:44:19', '2014-05-06 11:47:56', 1, 1, 'vi', 1, ',1,2,12,4,3,5,6,7,8,9,10,11,13,', '', 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Banner right 2', 'banner-right-2.jpg', 'javascript:;', '2014-05-06 12:40:14', NULL, 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (3, 'Banner right 1', 'banner-right.jpg', 'javascript:;', '2014-05-06 12:40:46', NULL, 1, 0, 'vi', 2, '', NULL, 'admin', NULL, 0);

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
