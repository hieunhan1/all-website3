-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 08, 2014 at 12:12 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `daotaonama_v2`
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

INSERT INTO `daotao_bangdiem` VALUES (1, 'Anh Văn Thiếu Niên - K1 | Ngọc Hiền', 1, 2, 8, 8, 8, 8, 8, 8, 8, 8, 'vi', 1, '2014-03-07 15:48:25', '2014-03-07 16:35:11', 'admin', 'admin', 0);
INSERT INTO `daotao_bangdiem` VALUES (2, 'Anh Văn Thiếu Niên - K1 | Trần Hiếu Nhân', 1, 1, 7, 8, 7, 8, 0, 8, 7, 8, 'vi', 1, '2014-03-07 15:51:11', '2014-03-07 16:35:08', 'admin', 'admin', 0);
INSERT INTO `daotao_bangdiem` VALUES (3, 'Anh Văn Thiếu Niên - K2 | Trần Hiếu Nhân', 2, 1, 8, 9, 7, 8, 8, 7, 8, 9, 'vi', 1, '2014-03-07 15:52:45', '2014-03-07 16:35:05', 'admin', 'admin', 0);
INSERT INTO `daotao_bangdiem` VALUES (4, 'Anh Văn Thiếu Niên - K2 | Vũ Đào', 2, 3, 7, 7, 7, 7, 7, 7, 7, 7, 'vi', 1, '2014-03-07 16:34:50', '0000-00-00 00:00:00', 'admin', NULL, 0);
INSERT INTO `daotao_bangdiem` VALUES (5, 'IELTS - K1 | Thu Hằng', 3, 4, 8, 8, 8, 8, 8, 7, 8, 8, 'vi', 1, '2014-03-08 11:22:57', '0000-00-00 00:00:00', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_giangvien`
-- 

CREATE TABLE `daotao_giangvien` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL default '1',
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `bangcap` text NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `daotao_giangvien`
-- 

INSERT INTO `daotao_giangvien` VALUES (1, 'Trần Văn A', 1, 'vana@yahoo.com', '0988388003', '123 CMT 8', 'DH', 'vi', 1, '2014-03-07 11:10:33', '2014-03-07 14:23:40', 'admin', 'admin', 0);
INSERT INTO `daotao_giangvien` VALUES (2, 'Nguyễn Thị Bé', 0, 'be@yahoo.com', '01234567890', '123 CMT 8, Quận 10, Tp.HCM', 'Th.S', 'vi', 1, '2014-03-07 11:11:03', '2014-03-07 14:23:32', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_hocvien`
-- 

CREATE TABLE `daotao_hocvien` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `ngaysinh` datetime default NULL,
  `gioitinh` tinyint(1) NOT NULL default '1',
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `id_khoahoc` int(3) NOT NULL,
  `ds_lophoc` varchar(30) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
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
-- Dumping data for table `daotao_hocvien`
-- 

INSERT INTO `daotao_hocvien` VALUES (1, 'Trần Hiếu Nhân', '1989-04-30 00:00:00', 1, 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 8', 7, ',2,', 'hieunhan1', 'dc9ad4e56ca354389df5e771aa5fb844', 'vi', 1, '2014-03-07 12:21:41', '2014-03-08 11:18:03', 'admin', 'admin', 0);
INSERT INTO `daotao_hocvien` VALUES (2, 'Ngọc Hiền', '1991-11-19 00:00:00', 0, 'hien@yahoo.com', '01234567890', '123 CMT 8, Quận 10, Tp.HCM', 7, ',1,2,', 'hientran', 'ba96ba58f371c9168e2af5c88701f6b0', 'vi', 1, '2014-03-07 14:12:19', '2014-03-08 11:17:58', 'admin', 'admin', 0);
INSERT INTO `daotao_hocvien` VALUES (3, 'Nguyễn Vũ Đào', '1990-02-02 00:00:00', 1, 'vudao@yahoo.com', '0911988788', 'Lê Đức Thọ , Gò Vấp', 4, ',1,', 'vudao1', '19e0af83e292a3fa5256e117f1e0f826', 'vi', 1, '2014-03-07 14:15:29', '2014-03-08 11:17:46', 'khachhang', 'admin', 0);
INSERT INTO `daotao_hocvien` VALUES (4, 'Thu Hằng', '1989-03-08 08:45:00', 0, 'thuhang@yahoo.com', '0904651986', '30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM', 7, ',3,2,', 'thuhang', 'edf34f73a7c9f7d07bb4d0ef87cd4f7e', 'vi', 1, '2014-03-08 08:45:21', '2014-03-08 11:22:22', 'admin', 'admin', 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `daotao_khoahoc`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `daotao_lophoc`
-- 

CREATE TABLE `daotao_lophoc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `ngay_kg` datetime NOT NULL,
  `id_khoahoc` int(3) NOT NULL,
  `id_giangvien` int(3) NOT NULL,
  `capdo` varchar(1) NOT NULL,
  `notes` text,
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
-- Dumping data for table `daotao_lophoc`
-- 

INSERT INTO `daotao_lophoc` VALUES (1, 'Anh Văn Thiếu Niên - K1', '2014-03-08 11:43:00', 7, 1, '1', '', 'vi', 1, '2014-03-07 11:43:57', '2014-03-08 11:17:40', 'admin', 'admin', 0);
INSERT INTO `daotao_lophoc` VALUES (2, 'Anh Văn Thiếu Niên - K2', '2014-03-08 13:27:00', 7, 2, '2', '', 'vi', 1, '2014-03-07 13:27:14', '2014-03-08 08:45:13', 'admin', 'admin', 0);
INSERT INTO `daotao_lophoc` VALUES (3, 'IELTS - K1', '2014-03-08 11:21:00', 6, 2, '1', '', 'vi', 1, '2014-03-08 11:21:52', '0000-00-00 00:00:00', 'admin', NULL, 0);

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
  `yahoo_nick` varchar(100) default NULL,
  `yahoo_name` varchar(100) NOT NULL,
  `yahoo_phone` varchar(100) NOT NULL,
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

INSERT INTO `web_config` VALUES (1, 'Việt Nam', 'vi', 'localhost/all/daotaonama_v2', 10, 10, 10, 10, 'Copyright © 2014', '<p>Địa chỉ: 69 Xuân Hồng, P.12, Q.Tân Bình<br />\r\nĐiện thoại: 083 811 29 28 - 083 948 55 94<br />\r\nWebsite: www.daotaonama.com</p>\r\n', '<h3><span style="color:#FF0000;">TRUNG TÂM ĐÀO TẠO NAM Á</span></h3>\r\n\r\n<p>Địa chỉ: 69 Xuân Hồng, P.12, Q.Tân Bình<br />\r\nĐiện thoại: 083 811 29 28 - 083 948 55 94<br />\r\nWebsite: www.daotaonama.com</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1,hieu_nhan111', 'Trần Ngọc Phú,Nguyễn Trọng Thắng', '090 387 65 67,091 939 23 43', '0988 388 388', '0903 876 567 - 0919 39 2343', 1, '2013-02-20 13:35:24', '2014-03-07 14:18:53', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', 'localhost/all/source_temp', 10, 10, 10, 10, 'Copyright © 2014', '', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '', '', '0988 388 388', '0988 388 388', 1, '2013-08-10 10:09:29', '2013-08-10 15:35:00', 'admin', 'admin', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (1, ',5,7,', 'Trần Nhân', 'mo-ta', 'ca-phe-cafe-collagen-2-zero-duoc-ban-khap-hoa-ky-va-canada.jpg', 'Tóm tắt', 'Mô tả,mo ta', '<p>nội dung</p>\r\n', 0, 'vi', 1, '2014-03-01 12:29:36', '2014-03-06 15:56:46', 'admin', 'admin', 1);
INSERT INTO `web_info` VALUES (2, ',5,', 'Luyện thi chứng chỉ B1, B2, C1 (theo khung tham chiếu Châu Âu)', 'luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au', 'luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au.jpg', 'Chứng chỉ Khung B2 Châu Âu (FCE) do Hội đồng khảo thí Đại học Cambridge cấp là một loại chứng chỉ nằm trong khung Châu Âu (Common European Framework of Reference for Languages - CEFR) về ngôn ngữ và do Đại học Cambridge (UK) sở hữu', 'Luyện thi chứng chỉ B1, B2, C1 (theo khung tham chiếu Châu Âu),luyen thi chung chi b1 b2 c1 theo khung tham chieu chau au', '<h2>Chứng chỉ Khung B2 Châu Âu (FCE) do Hội đồng khảo thí Đại học Cambridge cấp là một loại chứng chỉ nằm trong khung Châu Âu (Common European Framework of Reference for Languages - CEFR) về ngôn ngữ và do Đại học Cambridge (UK) sở hữu, cũng đã được triển khai rất nhiều khóa học cũng như kỳ thi trên nhiều nước trên Thế Giới.</h2>\r\n\r\n<p>Chứng chỉ B1 chứng nhận người học có khả năng: Bạn đủ khả năng để có thể sử dụng ngôn ngữ Tiếng Anh để giao tiếp với người bản ngữ trong đời sống hàng ngày, đọc sách giáo khoa - tạp chí có nội dung đơn giản hoặc ghi chép trong một cuộc họp.</p>\r\n\r\n<p>Tại Việt Nam, hiện nay Bộ Giáo dục và Đào tạo đã yêu cầu các Trường Đại học áp chuẩn điều kiện xét tuyển đầu vào/ra những học viên Cao học (Thạc sĩ) tại các Trường Đại học có chức năng đào tạo Đại học hoặc sau Đại học.</p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;"><img alt="Hình thức thi Chứng chỉ B1 - CEFR Châu Âu - (Cambridge ESOL) " src="/public/images/articles/luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au.jpg" style="width: 604px; height: 404px;" /><br />\r\nHình thức thi Chứng chỉ B1 - CEFR Châu Âu - (Cambridge ESOL)&nbsp;</span></em></p>\r\n\r\n<p><strong>Reading and Writing:</strong>&nbsp;Bài thi Đọc có 5 phần, Bài thi Viết có 3 phần, mỗi phần trên có nhiều loại câu hỏi và dạng đề thi khác nhau. Thời gian dành cho 2 kỹ năng là: 1 Giờ 30 Phút, phần đọc có 35 câu, phần viết có 7 câu. Tổng số điểm chiếm 50% của chứng chỉ B1.</p>\r\n\r\n<p><strong>Listening:</strong>&nbsp;Bài thi Nghe có 4 phần, thời gian thi 30 phút, cộng với 6 phút để đánh kết quả trả lời vào Answer Sheet, cả bài thi bao gồm 25 câu nghe. Tổng sổ điểm của chiếm 25% của chứng chỉ B1.</p>\r\n\r\n<p><strong>Speaking:</strong>&nbsp;Bài thi Nói có 4 phần, Bạn phải đối diện với 2 vị giám khảo, một giám khảo nói với Bạn, một giám khảo ngồi nghe Bạn nói, thời gian dành cho Bạn: 10 - 12 phút. Tổng sổ điểm của chiếm 25% của chứng chỉ B1.</p>\r\n\r\n<p><strong>Trung Tâm Đào Tạo Nam Á</strong> là tổ chức nhận được sự hỗ trợ lớn từ các chuyên gia Trường Đại học Cambridge (UK) về việc giảng dạy chương trình Khung Châu Âu (CEFR), trong đó có chương trình B1 - CEFR. Vì vậy Nam Á &nbsp;luôn tự tin khẳng định sự cam kết 100% kết quả điểm số bằng việc hỗ trợ giảng dạy tỉ mỉ, hướng dẫn các làm các bài thi, truyền đạt các kinh nghiệm học tập và thi Chứng chỉ B1 do Cambridge ESOL, Đại học Ngoại ngữ (ĐHQGHN), Đại học Hà Nội tổ chức tại Việt Nam.</p>\r\n\r\n<p style="text-align: center;"><img alt="cam kết 100% kết quả" src="/public/images/articles/luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au-2.jpg" style="width: 238px; height: 238px;" /></p>\r\n\r\n<p>Trong trường hợp học viên không đạt điểm số như yêu cầu, Nam Á sẽ chịu mọi trách nhiệm trước học viên:&nbsp;<em><strong>Hoàn trả toàn bộ 100% học phí hoặc đào tạo miễn phí hoàn toàn khóa học tiếp theo cho đến khi học viên đạt kết quả như học viên mong muốn thì thôi.</strong></em></p>\r\n\r\n<p><strong>Đối tượng cần&nbsp;Chứng chỉ B1 - CEFR Châu Âu&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Các sinh viên đang theo học trình độ Thạc sĩ tại Việt Nam cần thi đạt chứng chỉ Tiếng Anh trình độ tương đương B1 theo khung tham chiếu Châu Âu (CEFR)</li>\r\n	<li>Căn cứ Thông báo số 826/2011/TB-BGDĐT ngày 05 tháng 8 năm 2011 của Bộ trưởng Bộ Giáo dục và Đào tạo kết luận về các cơ sở giáo dục tham gia rà soát năng lực ngoại ngữ giáo viên Tiếng Anh theo khung tham chiếu 6 bậc Châu Âu (A1, A2, B1, B2, C1, C2)</li>\r\n	<li>Các đối tượng khác có nhu cầu nâng cao trình độ ngoại ngữ theo chuẩn khung tham chiếu Châu Âu (CEFR)</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Luyện thi chứng chỉ B1, B2, C1 theo khung tham chiếu Châu Âu" src="/public/images/articles/luyen-thi-chung-chi-b1-b2-c1-theo-khung-tham-chieu-chau-au-3.jpg" style="width: 740px; height: 560px;" /></p>\r\n', 0, 'vi', 1, '2014-03-06 15:55:19', '2014-03-04 15:55:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (3, ',5,', 'Luyện thi chứng chỉ A,B,C quốc gia', 'luyen-thi-chung-chi-a-b-c-quoc-gia', 'luyen-thi-chung-chi-a-b-c-quoc-gia.jpg', 'Những Bạn đang và có nhu cầu bổ túc hồ sơ thi công chức, bổ túc nâng ngạch, các công viên chức nhà nước, Bác sĩ điều dưỡng các bệnh viện, Các trường đại Học Cao Đẳng xét đầu ra tốt nghiệp, nhu cầu bổ sung hồ sơ xin việc….', 'Luyện thi chứng chỉ A,B,C quốc gia,luyen thi chung chi a b c quoc gia', '<h2>Những Bạn đang và có nhu cầu bổ túc hồ sơ thi công chức, bổ túc nâng ngạch, các công viên chức nhà nước, Bác sĩ điều dưỡng các bệnh viện, Các trường đại Học Cao Đẳng xét đầu ra tốt nghiệp, nhu cầu bổ sung hồ sơ xin việc….</h2>\r\n\r\n<p>Hãy liên hệ với trung tâm, để được tư vấn và đào tạo các lớp&nbsp;chứng chỉ tiếng anh A-B-C cấp tốc.</p>\r\n\r\n<p style="text-align: center;"><img alt="Luyện thi chứng chỉ A,B,C quốc gia" src="/public/images/articles/luyen-thi-chung-chi-a-b-c-quoc-gia.jpg" style="width: 740px; height: 558px;" /></p>\r\n', 0, 'vi', 1, '2014-03-06 15:57:07', '2014-03-05 15:57:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (4, ',5,', 'Anh ngữ giao tiếp Quốc tế', 'anh-ngu-giao-tiep-quoc-te', 'anh-van-giao-tiep.jpg', 'Nghe nói theo ngữ cảnh trực quan. Rèn luyện phải xạ giao tiếp. Thực hành ngữ âm, nói chuẩn giọng Anh - Mỹ', 'Anh ngữ giao tiếp Quốc tế,anh ngu giao tiep quoc te', '<h2>Nghe nói theo ngữ cảnh trực quan. Rèn luyện phải xạ giao tiếp. Thực hành ngữ âm, nói chuẩn giọng Anh - Mỹ</h2>\r\n\r\n<p>Xây dựng nền tảng tiếng Anh cho các lớp nâng cao. Nắm bắt kỹ năng giao tiếp trên mỗi buổi học.</p>\r\n\r\n<p>Giáo trình cuốn hút, mài dũa đều 4 kỹ năng để đạt hiệu quả giao tiếp cao nhất.</p>\r\n\r\n<p style="text-align: center;"><img alt="Anh ngữ giao tiếp Quốc tế" src="/public/images/articles/anh-van-giao-tiep.jpg" style="width: 740px; height: 563px;" /></p>\r\n', 0, 'vi', 1, '2014-03-06 15:58:08', '2014-03-06 15:58:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (5, ',5,', 'TOEIC', 'toeic', '', 'TOEIC được viết tắt từ Test of English for International Communication – là một kỳ thi trắc nghiệm tiếng Anh trong giao tiếp Quốc Tế, nhằm kiểm tra trình độ tiếng Anh dành cho những học viên có tiếng mẹ đẻ không phải là Anh ngữ.', 'TOEIC', '<h2>TOEIC được viết tắt từ Test of English for International Communication – là một kỳ thi trắc nghiệm tiếng Anh trong giao tiếp Quốc Tế, nhằm kiểm tra trình độ tiếng Anh dành cho những học viên có tiếng mẹ đẻ không phải là Anh ngữ.</h2>\r\n\r\n<p>Chứng chỉ <strong>TOEIC </strong>do viện kiểm định giáo dục Mỹ ETS cấp, <strong>điểm thi TOEIC</strong> thể hiện năng lực giao tiếp tiếng Anh trong môi trường làm việc.</p>\r\n\r\n<p>Kỳ thi này không đòi hỏi vốn kiến thức hay từ vựng chuyên biệt, mà chỉ nhằm đánh giá năng lực sử dụng tiếng Anh của học viên. <strong>TOEIC </strong>hiện đang là chứng chỉ được tin cậy trong việc tuyển dụng của hơn 4.000 công ty hàng đầu trên thế giới và tại Việt Nam.</p>\r\n\r\n<p>Với sự hợp tác giảng dạy của các giảng viên Anh – Mỹ có bằng B.A – M.A và giáo cụ trực quan OVERHEAD PROJECTOR cùng với&nbsp;tài liệu mới của Mỹ 2009. Nhằm giúp học viên:</p>\r\n\r\n<p>&nbsp;-&nbsp;Luyện tập các kỹ năng <em><strong>NGHE – NÓI – ĐỌC – VIẾT.</strong></em></p>\r\n\r\n<p>&nbsp;- Sẽ đạt được từ 500 điểm trở lên trong các kỳ thi <strong>TOEIC</strong>.</p>\r\n\r\n<p>- Được học lại miễn phí nếu thi không đạt trên 450 điểm.</p>\r\n\r\n<p>- Test trình độ xếp lớp miễn phí.</p>\r\n\r\n<p>&nbsp;-&nbsp;Đủ trình độ xin việc làm ở các công ty nước ngoài.</p>\r\n\r\n<p>&nbsp;-&nbsp;Tuần học 1 buổi giảng viên Mỹ + 2 buổi giảng viên Việt (1 buổi học trên máy chiếu OVERHEAD PROJECTOR).&nbsp;</p>\r\n', 0, 'vi', 1, '2014-03-06 15:58:32', '2014-03-03 15:58:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (6, ',5,', 'IELTS', 'ielts', 'ielts.jpg', 'Với đội ngũ Giảng viên Anh - Mỹ - Úc, Việt tận tâm và giàu kinh nghiệm trong việc luyện thi IELTS sẽ giúp học viên', 'ielts', '<h2>Với đội ngũ Giảng viên Anh&nbsp;&nbsp;- Mỹ - Úc, Việt tận tâm và giàu kinh nghiệm trong việc luyện thi IELTS sẽ giúp học viên:</h2>\r\n\r\n<p>- <strong>Đạt được điểm từ 6.0 trở lên</strong> trong các kỳ thi IELTS.</p>\r\n\r\n<p>- Thành thạo các kỹ năng Nghe – Nói Đọc – Viết.</p>\r\n\r\n<p>- Trích lũy kiến thức khoa học – xã hội chuyên sâu.</p>\r\n\r\n<p>- Đủ trình độ theo học các trường đại học nổi tiếng trên thế giới.</p>\r\n\r\n<p>- Tự tin trong các kỳ phỏng vấn để đi định cư, tìm việc làm du học.</p>\r\n\r\n<p>- <strong>Phát âm hoàn hảo tiếng Anh</strong> trên phần luyện âm mỗi buổi học, phản xạ tinh tế với các bài tập nghe nói và thực hành trên phòng vi tính. Buổi học sinh động, dễ tiếp thu với phần học trên máy chiếu. Mở rộng kiến thức tại các buổi thảo luận, dã ngoại, Speaking Club định kỳ được thiết kế vui nhộn, English&nbsp;Through Songs.</p>\r\n\r\n<h2 style="text-align: center;"><img alt="ielts" src="/public/images/articles/ielts.jpg" style="opacity: 0.9; width: 740px; height: 556px;" /></h2>\r\n', 0, 'vi', 1, '2014-03-06 15:59:14', '2014-03-04 15:59:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (7, ',5,', 'Anh văn thiếu niên', 'anh-van-thieu-nien', 'anh-van-thieu-nhi.jpg', 'Xây dựng nền tảng tiếng Anh vững chắc từ cấp độ Starters, Movers, Flyers, Ket, Pet, vàtiếntớiToefl, Ielts.', 'Anh văn thiếu niên,anh van thieu nien', '<h2>Xây dựng nền tảng tiếng Anh vững chắc từ cấp độ Starters, Movers, Flyers, Ket, Pet, vàtiếntớiToefl, Ielts.&nbsp;</h2>\r\n\r\n<p>Rèn luyện khả năng tiếng Anh cho học sinh chuyên ngữ và học sinh phổ thông.&nbsp;</p>\r\n\r\n<p>Cung cấp kiến thức hoàn chỉnh, xây dựng năng lực tiếng Anh cho nghề nghiệp tương lai và du học các nước châu Mỹ, châu Âu..</p>\r\n\r\n<p style="text-align: center;"><img alt="Anh văn thiếu niên" src="/public/images/articles/anh-van-thieu-nhi.jpg" style="width: 740px; height: 554px;" /></p>\r\n', 0, 'vi', 1, '2014-03-06 16:00:43', '2014-03-05 16:00:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (8, ',5,', 'Anh văn thiếu nhi', 'anh-van-thieu-nhi', 'anh-van-thieu-nhi.jpg', 'Phản xạ trực quan: Thực hành Nghe - Nói - Đọc hiểu tiếng Anh với chương trình Nghe Nhìn hiện đại. Luyện phát âm: Học Ngữ âm trực tiếp với giáo viên bản ngữ.', 'Anh văn thiếu nhi,anh van thieu nhi', '<p><strong>Với chương trình học sinh động, các bé sẽ được trang bị:</strong></p>\r\n\r\n<p><strong>Phản xạ trực quan:</strong>&nbsp;Thực hành Nghe - Nói - Đọc hiểu tiếng Anh với chương trình Nghe Nhìn hiện đại.</p>\r\n\r\n<p><strong>Luyện phát âm: </strong>Học Ngữ âm trực tiếp với giáo viên bản ngữ.</p>\r\n\r\n<p><strong>Hoạt động Ngoại Khóa:</strong> Phát triển tư duy với các buổi học ngoại khóa trong và ngoài lớp học như tham quan, trò chơi âm nhạc, vẽ tranh, kể chuyện, xây dựng nhóm, ứng xử.</p>\r\n\r\n<p style="text-align: center;"><img alt="Anh văn thiếu nhi" src="/public/images/articles/anh-van-thieu-nhi.jpg" style="width: 740px; height: 554px;" /></p>\r\n', 0, 'vi', 1, '2014-03-06 16:01:17', '2014-03-06 16:01:00', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (9, ',1,', 'Giới thiệu', 'gioi-thieu', '', 'Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam', 'Giới thiệu,gioi thieu', '<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>\r\n\r\n<p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>\r\n\r\n<p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>\r\n\r\n<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>\r\n\r\n<p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>\r\n\r\n<p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>\r\n', 0, 'vi', 1, '2014-03-06 16:02:04', '2014-03-06 16:02:00', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (10, ',8,', 'Tặng 200 phần quà cho Tết Nguyên Đán 2014', 'tang-200-phan-qua-cho-tet-nguyen-dan-2014', '', 'Tặng 200 phần quà cho Tết Nguyên Đán 2014 Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravid', 'Tặng 200 phần quà cho Tết Nguyên Đán 2014,tang 200 phan qua cho tet nguyen dan 2014', '<p>Tặng 200 phần quà cho Tết Nguyên Đán 2014</p>\r\n', 1, 'vi', 1, '2014-03-06 16:04:07', '2014-03-06 16:04:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (11, ',8,', 'Thư chúc mừng năm mới giáp ngọ 2014', 'thu-chuc-mung-nam-moi-giap-ngo-2014', '', 'Thư chúc mừng năm mới giáp ngọ 2014 sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. ', 'Thư chúc mừng năm mới giáp ngọ 2014,thu chuc mung nam moi giap ngo 2014', '<p>Thư chúc mừng năm mới giáp ngọ 2014</p>\r\n', 1, 'vi', 1, '2014-03-06 16:05:54', '2014-03-06 16:05:00', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (12, ',8,', 'Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á', 'su-kien-chao-mung-nam-giap-ngo-cua-trung-tam-dao-tao-nam-a', '', 'Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á , cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque,', 'Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á,su kien chao mung nam giap ngo cua trung tam dao tao nam a', '<p>Sự kiện chào mừng năm Giáp Ngọ của trung tâm đào tạo Nam Á</p>\r\n', 1, 'vi', 1, '2014-03-06 16:06:31', '2014-03-06 16:06:00', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (13, ',8,', 'Họat động chào mừng ngày nhà giáo VN', 'hoat-dong-chao-mung-ngay-nha-giao-vn', '', 'Họat động chào mừng ngày nhà giáo Việt Nam  Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus', 'Họat động chào mừng ngày nhà giáo VN,hoat dong chao mung ngay nha giao vn', '<p>Họat động chào mừng ngày nhà giáo VN</p>\r\n', 1, 'vi', 1, '2014-03-06 16:06:55', '2014-03-07 14:19:07', 'admin', 'admin', 0);

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
INSERT INTO `web_language` VALUES (2, 'English', 'en', 2, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', '', '', 'Trung tâm đào tạo Nam Á', 'Trung tâm đào tạo Nam Á', 'Trung tâm đào tạo Nam Á', 0, 1, ',1,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2014-03-07 14:20:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (2, 'Trang chủ giới thiệu', 'trang-chu-gioi-thieu', 'trang-chu-gioi-thieu/', '', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 1, 2, ',8,', 'vi', 0, 0, 0, '2013-10-09 15:38:02', '2014-03-06 15:49:58', 'admin', 'admin', 1);
INSERT INTO `web_menu` VALUES (3, 'Trang chủ sản phẩm', 'trang-chu-san-pham', 'trang-chu-san-pham/', '', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm,trang chu san pham', 1, 10, ',1,', 'vi', 0, 0, 0, '2013-10-09 15:38:25', '2014-03-06 15:49:58', 'admin', 'admin', 1);
INSERT INTO `web_menu` VALUES (4, 'Trang chủ liên hệ', 'trang-chu-lien-he', 'trang-chu-lien-he/', 'hinhanh.jpg', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 1, 10, ',1,', 'vi', 0, 0, 0, '2013-10-09 15:38:38', '2014-03-06 15:49:59', 'admin', 'admin', 1);
INSERT INTO `web_menu` VALUES (5, 'Khóa học', 'cac-chuong-trinh-tieng-anh', 'cac-chuong-trinh-tieng-anh/', '', 'Các chương trình tiếng anh', 'Các chương trình tiếng anh', 'Các chương trình tiếng anh', 0, 3, ',1,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2014-03-04 15:08:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 3, ',1,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2014-03-06 15:50:59', 'admin', 'admin', 1);
INSERT INTO `web_menu` VALUES (7, 'Thông tin, bài viết', 'thong-tin-bai-viet', 'thong-tin-bai-viet/', '', 'Thông tin, bài viết', 'Thông tin, bài viết', 'Thông tin, bài viết', 0, 2, ',1,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2014-03-06 15:50:57', 'admin', 'admin', 1);
INSERT INTO `web_menu` VALUES (8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 0, 2, ',1,', 'vi', 0, 3, 1, '2013-10-09 15:40:21', '2013-10-09 15:40:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 8, ',1,', 'vi', 0, 5, 1, '2013-10-09 15:40:52', '2014-03-04 13:21:00', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (10, 'Thông tin học viên', 'thong-tin-hoc-vien', 'thong-tin-hoc-vien/', '', 'Thông tin học viên', 'Thông tin học viên', 'Thông tin học viên,thong tin hoc vien', 0, 4, ',6,', 'vi', 0, 99, 1, '2014-03-06 15:53:34', '2014-03-06 15:53:00', 'admin', '', 0);

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
INSERT INTO `web_menu_admin` VALUES (5, 'item', '', '', 5, 0);
INSERT INTO `web_menu_admin` VALUES (6, 'Đào tạo - Giảng Viên', 'daotao_giangvien', 'icon-registry-2.jpg', 6, 1);
INSERT INTO `web_menu_admin` VALUES (7, 'Đào tạo - Lớp học', 'daotao_lophoc', 'icon-lop-hoc.jpg', 7, 1);
INSERT INTO `web_menu_admin` VALUES (8, 'Đào tạo - Học viên', 'daotao_hocvien', 'icon-hoc-vien.jpg', 8, 1);
INSERT INTO `web_menu_admin` VALUES (9, 'Đào tạo - Bảng điểm', 'daotao_bangdiem', 'icon-item.jpg', 9, 1);
INSERT INTO `web_menu_admin` VALUES (10, 'Tra cứu - Thông tin HV', 'tracuu_hocvien', 'icon-tra-cuu-cap-bang.jpg', 10, 1);
INSERT INTO `web_menu_admin` VALUES (11, 'Tra cứu - Bảng điểm', 'tracuu_bangdiem', 'icon-tra-cuu-diem-thi.jpg', 11, 1);
INSERT INTO `web_menu_admin` VALUES (12, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 5, 1);
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
INSERT INTO `web_menu_position` VALUES (2, 'Home', 1);
INSERT INTO `web_menu_position` VALUES (3, 'Bottom', 0);
INSERT INTO `web_menu_position` VALUES (4, 'Left', 0);
INSERT INTO `web_menu_position` VALUES (5, 'Right', 0);
INSERT INTO `web_menu_position` VALUES (6, 'Không', 1);
INSERT INTO `web_menu_position` VALUES (7, 'Item 7', 0);
INSERT INTO `web_menu_position` VALUES (8, 'Không', 0);

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
INSERT INTO `web_menu_type` VALUES (3, 'Chương trình (khóa học)', 1);
INSERT INTO `web_menu_type` VALUES (4, 'Thông tin học viên', 1);
INSERT INTO `web_menu_type` VALUES (5, 'Loại temp 2', 0);
INSERT INTO `web_menu_type` VALUES (6, 'Loại temp 3', 0);
INSERT INTO `web_menu_type` VALUES (7, 'Hình ảnh', 0);
INSERT INTO `web_menu_type` VALUES (8, 'Liên hệ', 1);
INSERT INTO `web_menu_type` VALUES (9, 'Không', 1);
INSERT INTO `web_menu_type` VALUES (10, 'Item', 0);

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
  `position_id` int(1) default '1',
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

INSERT INTO `web_slider_banner` VALUES (1, 1, ',1,5,8,9,10,', 'Slider', 'slider.jpg', 'javascript:;', '', 'vi', 1, '2013-10-09 16:34:33', '2014-03-07 14:19:13', 'admin', 'admin', 0);

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

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 1200x320 px', 1);
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

INSERT INTO `web_users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,12,6,7,8,9,10,11,14,15,', ',1,2,3,4,12,6,7,8,9,10,11,14,15,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-02-27 14:23:00', 'admin', 'admin', 0);
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
