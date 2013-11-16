-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 23, 2013 at 02:14 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `mimosa`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `config`
-- 

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/mimosa', 0, 8, 2, 10, 'Copyright © 2013. All Rights Reserved by Mimosa', '<p>O rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. Duis nec aliquam metus. Vivamus et malesuada enim. Aliquam sit amet turpis non ipsum O rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at d neque eu nulla luctus laoreet. rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. neque eu nulla luctus laoreet.</p>\r\n', '<h1>Hướng Dẫn Mua Hàng</h1>\r\n\r\n<p>Để đặt hàng tại Website Mimosaarts.com bạn hãy làm như sau</p>\r\n\r\n<p>- &nbsp;Liên hệ qua điện thoại với số Hotline: <span style="color:#FF8C00;"><strong>0903 175 929&nbsp;</strong></span></p>\r\n\r\n<p>- Chat trực tuyến qua Yahoo với nick: <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0" style="padding:5px 0" />&nbsp;Mr.Thiệm</a></p>\r\n\r\n<p>- Đặt hàng qua website</p>\r\n', 'danphuong@yahoo.com', 'hieu_nhan1', '0903 175 929', '0903 175 929 - 0908 687 510', 1, '2013-02-20 13:35:24', '2013-03-01 12:44:12', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'English', 'en', '', 'localhost/all/mimosa', 0, 5, 2, NULL, 'Copyright © 2013. All Rights Reserved by Mimosa', '<p><span style="font-size: 13px;">O rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. Duis nec aliquam metus. Vivamus et malesuada enim. Aliquam sit amet turpis non ipsum O rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at d neque eu nulla luctus laoreet. rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. neque eu nulla luctus laoreet.</span></p>\r\n', '', 'danphuong@yahoo.com', 'hieu_nhan1', '0903 175 929', '0903 175 929 - 0908 687 510', 1, '2013-08-10 10:09:29', '2013-08-10 10:25:20', 'admin', 'admin', 0);

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
  `tentranh` varchar(200) NOT NULL,
  `linktranh` varchar(200) NOT NULL,
  `kichthuoc` varchar(100) NOT NULL,
  `tranhmythuat` tinyint(1) NOT NULL,
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
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` VALUES (1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', 'Trung tâm Tp.Cần Thơ', 'Yêu cầu abcde', 'Tranh 1', '', '20x30', 1, '', 0, '2013-09-18 15:05:53', '2013-09-18 15:05:53', 'khachhang', '', 0);
INSERT INTO `contact` VALUES (2, 'Trần Hiếu Nhân', 'hieunhan112@gmail.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', '- Đặt hàng qua website', 'Tranh 2', 'http://', '30x30', 0, '', 0, '2013-09-18 15:07:16', '2013-09-18 15:07:16', 'khachhang', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `donhang`
-- 

INSERT INTO `donhang` VALUES (1, 'Trần Nhân', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 8', 'Giao gio hang chính', '', 0, '2013-09-23 01:26:38', '2013-09-23 01:26:38', 'khachhang', '', 0);
INSERT INTO `donhang` VALUES (2, 'Trần Nhân', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 888', 'Gio HC', '', 0, '2013-09-23 01:28:09', '2013-09-23 01:28:09', 'khachhang', '', 0);
INSERT INTO `donhang` VALUES (3, 'Chia sẻ', 'cobe_dungdinh_2006@yahoo.com', '0988388003', '123 CMT 8', '', '', 0, '2013-09-23 01:54:01', '2013-09-23 01:54:01', 'khachhang', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `donhang_chitiet`
-- 

INSERT INTO `donhang_chitiet` VALUES (1, 1, 1, 1);
INSERT INTO `donhang_chitiet` VALUES (2, 2, 2, 2);
INSERT INTO `donhang_chitiet` VALUES (3, 2, 1, 1);
INSERT INTO `donhang_chitiet` VALUES (4, 2, 3, 2);
INSERT INTO `donhang_chitiet` VALUES (5, 3, 1, 11);

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

INSERT INTO `info` VALUES (270, 'About us ', 'about-us', 'gioi-thieu.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. ', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n', '2013-08-10 11:57:43', '2013-08-10 14:18:11', 1, 'About us ', 1, 'en', ',10,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (273, 'Chứng nhận ISO 2008', 'chung-nhan-iso-2008', '', 'Chứng nhận ISO 2008', '<p>Chứng nhận ISO 2008</p>\r\n', '2013-08-12 16:16:11', '2013-08-12 17:26:00', 1, 'Chứng nhận ISO 2008', 0, 'vi', ',4,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (274, 'Chứng nhận ISO 2009', 'chung-nhan-iso-2009', '', 'Chứng nhận ISO 2009', '<p>Chứng nhận ISO 2009</p>\r\n', '2013-08-12 16:16:22', '2013-08-12 17:28:52', 1, 'Chứng nhận ISO 2009', 0, 'vi', ',4,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (259, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante.', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst consectetuer adipiscing elit.</p>\r\n', '2013-07-15 13:58:14', '2013-07-15 09:51:53', 1, 'Giới thiệu', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (271, 'Câu chuyện về tranh', 'cau-chuyen-ve-tranh', 'gioi-thieu.jpg', 'Rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. Duis nec aliquam metus. Vivamus et malesuada enim. ', '<h2>Lorem ipsum dolor sit amet, adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/thuandieu/public/images/articles/detail_info.jpg" style="width: 617px; height: 337px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna.</p>\r\n', '2013-08-12 13:26:18', '2013-08-12 16:36:04', 1, 'Câu chuyện về tranh', 1, 'vi', ',4,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (272, 'Câu chuyện về tranh 2', 'cau-chuyen-ve-tranh-2', 'gioi-thieu.jpg', 'Rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem. Duis nec aliquam metus. Vivamus et malesuada enim. ', '<h2>Hầu hết các đơn vị đạt lợi nhuận sau thuế vượt 1.000 tỷ đồng trong nửa đầu năm đều có vốn chủ sở hữu lớn, thuộc các lĩnh vực như sản xuất, khai thác tài nguyên và ngân hàng.</h2>\r\n\r\n<p>Trong số hàng trăm đơn vị đã báo cáo tài chính 6 tháng đầu năm, 6 doanh nghiệp niêm yết và 2 ngân hàng công bố lãi trên 1.000 tỷ đồng. Đây đều là những công ty có vốn chủ sở hữu trên 5.000 tỷ đồng, theo khảo sát của&nbsp;VnExpress.net&nbsp;và đối tác cung cấp dữ liệu VNDirect. Dẫn đầu top này là Tổng công ty Khí Việt Nam (Mã CK: GAS), lãi 7.040 tỷ đồng chỉ sau 6 tháng, tăng 54% so với cùng kỳ năm trước. Kết quả này mới tính trên công ty mẹ, hiện Tổng công ty Khí Việt Nam vẫn chưa có báo cáo hợp nhất.</p>\r\n\r\n<p style="text-align: center;"><img alt="san-xuat-3-Hai-Long-1376102996_500x0.jpg" src="http://l.f25.img.vnecdn.net/2013/08/10/san-xuat-3-Hai-Long-1376102996_500x0.jpg" style="font-size: 13px;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="font-size: 13px;">Nhiều công ty niêm yết vượt lãi 1.000 tỷ đồng chỉ trong 6 tháng. Ảnh:&nbsp;</span><span style="font-size: 13px;">Hải Long</span></em></p>\r\n\r\n<p><span style="line-height: 1.6em;">“Sau 6 tháng, công ty gần cán đích kế hoạch năm. Tổng công ty sẽ cân nhắc kỹ việc có điều chỉnh mục tiêu lợi nhuận hay không”, ông Ninh nói.</span>Chia sẻ với&nbsp;VnExpress.net, ông Đỗ Khang Ninh - Chủ tịch Hội đồng quản trị kiêm &nbsp;Tổng giám đốc Khí Việt Nam, cho hay lợi nhuận sau thuế khởi sắc là nhờ giá khí tăng, đồng thời sản lượng cũng nhiều hơn so với cùng kỳ năm trước. Ngoài ra, Tổng công ty còn thực hiện chủ trương tiết kiệm chi phí nên phần nào giúp lợi nhuận doanh nghiệp cao hơn, ông Ninh cho biết.</p>\r\n\r\n<p>Đứng thứ hai trong danh sách là Công ty cổ phần&nbsp;<a href="http://kinhdoanh.vnexpress.net/tin-tuc/doanh-nghiep/vinamilk-lai-truoc-thue-hon-3-000-ty-dong-2853880.html">Sữa Việt Nam</a>&nbsp;(Vinamilk, Mã CK: VNM), khi báo lãi 3.373 tỷ đồng, tăng 20% so với nửa đầu năm ngoái. Trong đó, doanh thu công ty đạt trên 15.000 tỷ đồng, lĩnh vực tài chính cũng đóng góp thêm hơn 230 tỷ đồng cho doanh nghiệp. Hiện Vinamilk không có khoản vay ngân hàng. Nợ phải trả của công ty đạt hơn 4.000 tỷ đồng, bằng 23% vốn chủ sở hữu, chủ yếu là các khoản phải trả người bán.</p>\r\n\r\n<p>Cũng thuộc top 5 công ty niêm yết có lợi nhuận trên nghìn tỷ, nhưng Tổng công ty phân bón và Hóa chất dầu khí (Đạm Phú Mỹ, Mã CK: DPM) lại&nbsp;<a href="http://kinhdoanh.vnexpress.net/tin-tuc/doanh-nghiep/dam-phu-my-giam-lai-17-2861845.html">giảm lãi sau thuế hơn 17%</a>, xuống còn 1.626 tỷ đồng. Nguyên nhân chính là sản lượng bán ra giảm 10%, chưa kể lãi suất ngân hàng biến động khiến công ty hao hụt phần doanh thu tài chính.</p>\r\n\r\n<p>Công ty cổ phần Nhiệt điện Phả Lại (Mã CK: PPC) tăng trưởng đột biến,&nbsp;<a href="http://kinhdoanh.vnexpress.net/tin-tuc/doanh-nghiep/nhiet-dien-pha-lai-lai-hon-1-300-ty-dong-2860744.html">lãi sau thuế 1.302 tỷ</a>&nbsp;đồng, cao gần 7 lần so với cùng kỳ năm ngoái. Theo giải thích từ phía doanh nghiệp, lợi nhuận tăng cao do sản lượng điện bán cho EVN quý II nhiều hơn 0,27 tỷ Kwh so với cùng kỳ. Ngoài ra, chênh lệch tỷ giá ngoại tệ còn giúp Nhiệt điện Phả Lại tăng thêm doanh thu.</p>\r\n\r\n<p>Trong quý III, Nhiệt điện Phả Lại dự kiến sản lượng thấp hơn quý trước do thời tiết vào mùa mưa và doanh nghiệp ngừng một số tổ máy để sửa chữa khiến doanh thu có thể bị ảnh hưởng.</p>\r\n\r\n<p>Đứng ở vị trí thứ 5, Tập đoàn FPT (Mã CK: FPT) lãi gần 1.060 tỷ đồng sau 6 tháng, tăng trên 7% so với cùng kỳ năm ngoái. Doanh thu thuần về bán hàng và cung cấp dịch vụ đạt 12.267 tỷ đồng, tăng hơn 1.000 tỷ đồng so với năm ngoái. Hết quý II, nợ phải trả của công ty hơn 7.428 tỷ đồng. Trong đó, vay ngắn hạn chiếm 46% và bằng một nửa vốn chủ sở hữu (6.987 tỷ đồng).</p>\r\n\r\n<p>Quý II, FPT còn là một trong những doanh nghiệp có lượng tiền mặt dồi dào nhất niêm yết trên sàn chứng khoán với hơn 2.000 tỷ đồng, tăng nhẹ so với đầu năm. Dự kiến trong năm nay, FPT trả cổ tức 20% bằng tiền mặt</p>\r\n', '2013-08-12 13:28:48', '2013-08-12 16:36:09', 1, 'Câu chuyện về tranh 2', 1, 'vi', ',4,', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (275, 'Chứng nhận ISO 2010', 'chung-nhan-iso-2010', '', 'Chứng nhận ISO 2010', '<p>Chứng nhận ISO 2010</p>\r\n', '2013-08-12 16:17:16', '2013-08-12 16:17:16', 1, 'Chứng nhận ISO 2010', 0, 'vi', ',14,', 'admin', NULL, 0);
INSERT INTO `info` VALUES (276, 'Chứng nhận ISO 2011', 'chung-nhan-iso-2011', '', 'Chứng nhận ISO 2011', '<p>Chứng nhận ISO 2011</p>\r\n', '2013-08-12 16:17:24', '2013-08-12 16:17:24', 1, 'Chứng nhận ISO 2011', 0, 'vi', ',14,', 'admin', NULL, 0);
INSERT INTO `info` VALUES (277, 'Chứng nhận ISO 2012', 'chung-nhan-iso-2012', '', 'Chứng nhận ISO 2012', '<p>Chứng nhận ISO 2012</p>\r\n', '2013-08-12 16:17:32', '2013-08-12 16:36:14', 1, 'Chứng nhận ISO 2012', 0, 'vi', ',14,', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Mimosa', 'mimosa', 'all/mimosa/vi/', '', '2013-08-09 17:21:05', '2013-08-09 15:45:45', 0, 1, 1, 'Mimosa', 'Mimosa', 'Mimosa', 0, 'vi', 1, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Tranh sao chép', 'tranh-sao-chep', 'tranh-sao-chep/', '', '2013-08-09 17:21:29', '2013-08-09 11:34:32', 0, 2, 1, 'Tranh sao chép', 'Rem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis molestie metus, ac fringilla magna sollicitudin a . Donec interdum neque eu nulla luctus laoreet. Nunc id elit at dolor tempor adipiscing et non lorem.', 'Tranh sao chép', 0, 'vi', 3, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Tranh sáng tác', 'tranh-sang-tac', 'tranh-sang-tac/', '', '2013-08-09 17:21:52', '2013-08-09 15:21:51', 0, 3, 1, 'Tranh sáng tác', 'Tranh sáng tác', 'Tranh sáng tác', 1, 'vi', 3, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Tin tức - Sự kiện', 'tin-tuc-su-kien-1', 'tin-tuc-su-kien-1/', '', '2013-08-09 17:23:09', '2013-08-09 17:20:39', 0, 4, 1, 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Liên hệ', 'lien-he', 'lien-he/', '', '2013-08-09 17:23:27', '2013-08-09 11:34:23', 0, 5, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ', 0, 'vi', 7, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Mimosa', 'mimosa-en', 'all/mimosa/en/', '', '2013-08-10 11:32:51', '2013-08-10 16:05:31', 0, 1, 1, 'Mimosa', 'Mimosa', 'Mimosa', 0, 'en', 1, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Painting copy', 'painting-copy', 'painting-copy/', '', '2013-08-10 11:33:53', '2013-08-10 16:06:19', 0, 2, 1, 'Painting copy', 'Painting copy', 'Painting copy', 1, 'en', 3, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (11, 'Painting composing', 'painting-composing', 'painting-composing/', '', '2013-08-12 14:19:19', '2013-08-12 16:06:41', 0, 3, 1, 'Painting composing', 'Painting composing', 'Painting composing', 1, 'en', 3, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (14, 'Google+', 'google', 'google/', 'google+.png', '2013-08-12 15:00:09', '2013-08-12 15:48:27', 0, 102, 1, 'Google+', 'Google+', 'Google+', 1, 'vi', 1, ',4,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (15, 'News & Event', 'news-event', 'news-event/', '', '2013-08-14 12:25:44', '2013-08-14 16:07:00', 0, 4, 1, 'News & Event', 'News & Event', 'News & Event', 0, 'en', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (16, 'Facebook', 'facebook', 'javascript:;', 'facebook.png', '2013-09-17 15:47:42', '2013-09-17 15:47:54', 0, 101, 1, 'Facebook', 'Facebook', 'Facebook', 0, 'vi', 1, ',4,', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (17, 'Twitter', 'twitter', 'twitter/', 'twitter.png', '2013-09-17 15:48:52', '2013-09-17 15:48:52', 0, 103, 1, 'Twitter', 'Twitter', 'Twitter', 0, 'vi', 1, ',4,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (18, 'Youtube', 'youtube', 'youtube/', 'youtube.png', '2013-09-17 15:50:04', '2013-09-17 15:50:04', 0, 104, 1, 'Youtube', 'Youtube', 'Youtube', 0, 'vi', 1, ',4,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (19, 'Contact', 'contact', 'contact/', '', '2013-09-17 16:07:21', '2013-09-17 16:07:21', 0, 5, 1, 'Contact', 'Contact', 'Contact', 0, 'en', 7, ',2,5,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (20, 'Tranh Việt Nam', 'tranh-viet-nam', 'tranh-viet-nam/', '', '2013-09-17 17:50:27', '2013-09-17 17:50:27', 2, 0, 1, 'Tranh Việt Nam', 'Tranh Việt Nam', 'Tranh Việt Nam', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (21, 'Tranh nước ngoài', 'tranh-nuoc-ngoai', 'tranh-nuoc-ngoai/', '', '2013-09-17 17:51:27', '2013-09-17 17:51:27', 2, 0, 1, 'Tranh nước ngoài', 'Tranh nước ngoài', 'Tranh nước ngoài', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (22, 'Tranh phong cảnh', 'tranh-phong-canh', 'tranh-phong-canh/', '', '2013-09-17 17:52:05', '2013-09-17 17:52:05', 20, 0, 1, 'Tranh phong cảnh', 'Tranh phong cảnh', 'Tranh phong cảnh', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (23, 'Tranh thiếu nữ', 'tranh-thieu-nu', 'tranh-thieu-nu/', '', '2013-09-17 17:52:21', '2013-09-17 17:52:21', 20, 0, 1, 'Tranh thiếu nữ', 'Tranh thiếu nữ', 'Tranh thiếu nữ', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (24, 'Tranh tĩnh vật', 'tranh-tinh-vat', 'tranh-tinh-vat/', '', '2013-09-17 17:52:36', '2013-09-17 17:52:36', 20, 0, 1, 'Tranh tĩnh vật', 'Tranh tĩnh vật', 'Tranh tĩnh vật', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (25, 'Tranh động vật', 'tranh-dong-vat', 'tranh-dong-vat/', '', '2013-09-17 17:52:51', '2013-09-17 17:52:51', 20, 0, 1, 'Tranh động vật', 'Tranh động vật', 'Tranh động vật', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (26, 'Tranh hoa', 'tranh-hoa', 'tranh-hoa/', '', '2013-09-17 17:53:06', '2013-09-17 17:53:06', 20, 0, 1, 'Tranh hoa', 'Tranh hoa', 'Tranh hoa', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (27, 'Tranh nuy', 'tranh-nuy', 'tranh-nuy/', '', '2013-09-17 17:53:16', '2013-09-17 17:53:16', 20, 0, 1, 'Tranh nuy', 'Tranh nuy', 'Tranh nuy', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (28, 'Tranh chân dung', 'tranh-chan-dung', 'tranh-chan-dung/', '', '2013-09-17 17:53:33', '2013-09-17 17:53:33', 20, 0, 1, 'Tranh chân dung', 'Tranh chân dung', 'Tranh chân dung', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (29, 'Tranh tôn giáo', 'tranh-ton-giao', 'tranh-ton-giao/', '', '2013-09-17 17:53:46', '2013-09-17 17:53:46', 20, 0, 1, 'Tranh tôn giáo', 'Tranh tôn giáo', 'Tranh tôn giáo', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (30, 'Tranh siêu thực', 'tranh-sieu-thuc', 'tranh-sieu-thuc/', '', '2013-09-17 17:54:02', '2013-09-17 17:54:02', 20, 0, 1, 'Tranh siêu thực', 'Tranh siêu thực', 'Tranh siêu thực', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (31, 'Gustav Klimt', 'gustav-klimt', 'gustav-klimt/', '', '2013-09-17 17:54:30', '2013-09-17 17:54:30', 21, 0, 1, 'Gustav Klimt', 'Gustav Klimt', 'Gustav Klimt', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (32, 'Wassily Kandisky', 'wassily-kandisky', 'wassily-kandisky/', '', '2013-09-17 17:54:47', '2013-09-17 17:54:47', 21, 0, 1, 'Wassily Kandisky', 'Wassily Kandisky', 'Wassily Kandisky', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (33, 'Claude Monet', 'claude-monet', 'claude-monet/', '', '2013-09-17 17:55:04', '2013-09-17 17:55:04', 21, 0, 1, 'Claude Monet', 'Claude Monet', 'Claude Monet', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (34, 'Alphonse Mucha', 'alphonse-mucha', 'alphonse-mucha/', '', '2013-09-17 17:55:16', '2013-09-17 17:55:16', 21, 0, 1, 'Alphonse Mucha', 'Alphonse Mucha', 'Alphonse Mucha', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (35, 'Vincent Van God', 'vincent-van-god', 'vincent-van-god/', '', '2013-09-17 17:55:29', '2013-09-17 17:55:29', 21, 0, 1, 'Vincent Van God', 'Vincent Van God', 'Vincent Van God', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (36, 'Pablo Picasso', 'pablo-picasso', 'pablo-picasso/', '', '2013-09-17 17:55:57', '2013-09-17 17:55:57', 21, 0, 1, 'Pablo Picasso', 'Pablo Picasso', 'Pablo Picasso', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (37, 'Andy Warhol', 'andy-warhol', 'andy-warhol/', '', '2013-09-17 17:56:23', '2013-09-17 17:56:23', 21, 0, 1, 'Andy Warhol', 'Andy Warhol', 'Andy Warhol', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (38, 'Paul Cezanne', 'paul-cezanne', 'paul-cezanne/', '', '2013-09-17 17:56:36', '2013-09-17 17:56:36', 21, 0, 1, 'Paul Cezanne', 'Paul Cezanne', 'Paul Cezanne', 0, 'vi', 3, ',3,', 'admin', NULL, 0);
INSERT INTO `menu` VALUES (39, 'Đặt hàng', 'dat-hang', 'dat-hang/', '', '2013-09-22 23:00:49', '2013-09-22 23:00:49', 0, 10, 1, 'Đặt hàng', 'Đặt hàng', 'Đặt hàng', 0, 'vi', 4, ',6,', 'admin', NULL, 0);

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
INSERT INTO `menu_admin` VALUES (6, 'Sản phẩm', 'products', NULL, 5, 1, 0);
INSERT INTO `menu_admin` VALUES (7, 'Đơn hàng', 'donhang', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (8, 'Thư viện ảnh Xe Cổ', 'info_image', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (9, 'Đơn hàng', 'order', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (10, 'Hỏi - Đáp', 'question', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (11, 'Hình ảnh', 'photo_gallery', NULL, 0, 0, 1);
INSERT INTO `menu_admin` VALUES (12, 'Slider', 'slider_banner', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (13, 'Liên hệ', 'contact', NULL, 7, 1, 0);
INSERT INTO `menu_admin` VALUES (14, 'THÔNG BÁO', 'thongbao', NULL, 0, 0, 1);
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
INSERT INTO `menu_position` VALUES (4, 'Social', 0);
INSERT INTO `menu_position` VALUES (5, 'Bottom', 0);
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
INSERT INTO `menu_type` VALUES (3, 'Sản phẩm', 0);
INSERT INTO `menu_type` VALUES (4, 'Đặt hàng', 0);
INSERT INTO `menu_type` VALUES (5, 'Hình ảnh', 1);
INSERT INTO `menu_type` VALUES (6, 'Video', 1);
INSERT INTO `menu_type` VALUES (7, 'Liên hệ', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `photo_gallery`
-- 

CREATE TABLE `photo_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

-- 
-- Dumping data for table `photo_gallery`
-- 

INSERT INTO `photo_gallery` VALUES (1, 'Học viên trường NETSPACE dã ngoại KDL Văn Thánh', 'da-ngoai-o-van-thanh.jpg', '2013-06-03 10:22:52', '2013-06-08 10:02:38', 1, '', ',58,', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (2, 'Giao lưu với hội đầu bếp Tỉnh Lâm Đồng', 'giao-luu-voi-hoi-dau-bep-tinh-lam-dong.jpg', '2013-06-03 11:24:36', '2013-06-03 11:24:36', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (3, 'Giao lưu với Mà Sáu', 'giao-luu-voi-ma-sau.jpg', '2013-06-03 11:24:49', '2013-06-03 11:24:49', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (4, 'Giao lưu với Siêu đầu bếp Đỗ Quang Long', 'giao-luu-voi-sieu-dau-bep-do-quang-long.jpg', '2013-06-03 11:25:13', '2013-06-03 11:25:13', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (5, 'Giao lưu với Siêu đầu bếp Dương Huy Khải', 'giao-luu-voi-sieu-dau-bep-duong-huy-khai.jpg', '2013-06-03 11:25:27', '2013-06-03 11:25:27', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (6, 'Trương Minh Cường học làm bánh kem', 'giao-luu-voi-truong-minh-cuong.jpg', '2013-06-03 11:25:56', '2013-06-03 11:25:56', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (7, 'Học làm bánh kem', 'hoc-lam-banh-kem.jpg', '2013-06-03 11:26:08', '2013-06-03 11:26:08', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (8, 'Học vịt quay', 'hoc-vit-quay.jpg', '2013-06-03 12:17:34', '2013-06-03 12:17:42', 1, '', ',58,', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (9, 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'ky-ket-hop-tac-involution-2.jpg', '2013-06-03 12:18:00', '2013-06-03 12:18:00', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (10, 'Ký kết hợp tác với Evolution Institute', 'ky-ket-hop-tac-involution.jpg', '2013-06-03 12:18:23', '2013-06-03 12:18:23', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (11, 'Kỷ lục gỏi cuốn VN', 'ky-luc-goi-cuon.jpg', '2013-06-03 12:18:41', '2013-06-03 12:18:41', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (12, 'Lưu niệm kỷ lục gỏi cuốn VN 2012', 'luu-niem-ky-luc-goi-cuon-2012.jpg', '2013-06-03 12:19:16', '2013-06-03 12:19:16', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (13, 'Lưu niệm khóa Bếp Việt K2', 'luu-niem-khoa-bep-viet-k2.jpg', '2013-06-03 12:19:40', '2013-06-03 12:19:40', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (14, 'Giao lưu với Siêu đầu bếp Davil Thái', 'sieu-dau-bep-davil-thai-truyen-dat-kinh-nghiem-nau-an.jpg', '2013-06-03 12:20:03', '2013-06-03 12:20:03', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (15, 'Siêu đầu bếp Nguyễn Văn Lập dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap.jpg', '2013-06-03 12:20:32', '2013-06-03 12:20:32', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (16, 'Trương Minh Cường học làm bánh kem tại trường NETSPACE', 'truong-minh-cuong-hoc-nau-an-truong-netspace.jpg', '2013-06-03 12:20:55', '2013-06-03 12:20:55', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (17, 'Thức uống độc đáo 1', 'thuc-uong-doc-dao-1.jpg', '2013-06-03 13:48:41', '2013-06-03 13:48:41', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (18, 'Thức uống độc đáo 2', 'thuc-uong-doc-dao-2.jpg', '2013-06-03 13:48:45', '2013-06-03 13:48:45', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (19, 'Thức uống độc đáo 3', 'thuc-uong-doc-dao-3.jpg', '2013-06-03 13:48:48', '2013-06-03 13:48:48', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (20, 'Thức uống độc đáo 4', 'thuc-uong-doc-dao-4.jpg', '2013-06-03 13:48:52', '2013-06-03 13:48:52', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (21, 'Thức uống độc đáo 5', 'thuc-uong-doc-dao-5.jpg', '2013-06-03 13:48:57', '2013-06-03 13:48:57', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (22, 'Thức uống độc đáo 6', 'thuc-uong-doc-dao-6.jpg', '2013-06-03 13:49:01', '2013-06-03 13:49:01', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (23, 'Thức uống độc đáo 7', 'thuc-uong-doc-dao-7.jpg', '2013-06-03 13:49:06', '2013-06-03 13:49:06', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (24, 'Thức uống độc đáo 8', 'thuc-uong-doc-dao-8.jpg', '2013-06-03 13:49:10', '2013-06-03 13:49:10', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (25, 'Thức uống độc đáo 9', 'thuc-uong-doc-dao-9.jpg', '2013-06-03 13:49:13', '2013-06-03 13:49:13', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (26, 'Thức uống độc đáo 10', 'thuc-uong-doc-dao-10.jpg', '2013-06-03 13:49:18', '2013-06-03 13:49:18', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (27, 'Thức uống độc đáo 11', 'thuc-uong-doc-dao-11.jpg', '2013-06-03 13:49:21', '2013-06-03 13:49:21', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (28, 'Thức uống độc đáo 12', 'thuc-uong-doc-dao-12.jpg', '2013-06-03 13:49:43', '2013-06-03 13:49:43', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (29, 'Thức uống độc đáo 13', 'thuc-uong-doc-dao-13.jpg', '2013-06-03 13:49:48', '2013-06-03 13:49:48', 1, '', ',71,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (30, 'Giao lưu với Siêu đầu bếp Davil Thái', 'giao-luu-voi-dieu-dau-bep-davil-thai-k4.jpg', '2013-06-03 15:03:35', '2013-06-03 15:03:35', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (31, 'Kỷ lục gỏi cuốn VN năm 2012', 'ky-luc-goi-cuon-vn-2012-2.jpg', '2013-06-03 15:03:58', '2013-06-03 15:03:58', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (32, 'Kỷ lục gỏi cuốn VN năm 2012 - Phỏng vấn', 'ky-luc-goi-cuon-vn-2012-3.jpg', '2013-06-03 15:04:19', '2013-06-03 15:04:19', 1, '', ',58,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (33, 'Cơm tấm sườn bì chả - Thầy Toàn', 'com-tam-suon-bi-cha-thay-toan.jpg', '2013-06-03 15:10:54', '2013-06-03 15:10:54', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (34, 'Bánh xèo', 'banh-xeo.jpg', '2013-06-03 15:11:04', '2013-06-03 15:11:04', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (35, 'Bún bò Huế', 'bun-bo-hue.jpg', '2013-06-03 15:11:15', '2013-06-03 15:11:15', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (36, 'Bún riêu', 'bun-rieu.jpg', '2013-06-03 15:11:25', '2013-06-03 15:11:25', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (37, 'Bún thịt nướng', 'bun-thit-nuong.jpg', '2013-06-03 15:11:40', '2013-06-03 15:11:40', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (38, 'Cá chẻm sốt cam', 'ca-chem-sot-cam.jpg', '2013-06-03 15:11:57', '2013-06-03 15:11:57', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (39, 'Cá cơm chiên giòn', 'Ca-com-chien-gion.jpg', '2013-06-03 15:12:12', '2013-06-03 15:12:12', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (40, 'Cá điêu hồng sốt cam', 'Ca-dieu-hong-sot-cam.jpg', '2013-06-03 15:12:30', '2013-06-03 15:12:30', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (41, 'Cá rô kho tộ - Thầy Duy', 'ca-ro-kho-to-thay-duy.jpg', '2013-06-03 15:12:50', '2013-06-03 15:12:50', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (42, 'Cá tai tượng chiên xù', 'ca-tai-tuong-chien-xu.jpg', '2013-06-03 15:13:14', '2013-06-03 15:13:14', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (43, 'Bò nướng xiên', 'bo-nuong-xien.jpg', '2013-06-03 15:13:33', '2013-06-03 15:13:33', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (44, 'Chả ốc lá nốt', 'cha-oc-la-not.jpg', '2013-06-03 15:13:49', '2013-06-03 15:13:49', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (45, 'Cháo cà miền Tây - Thầy Duy', 'Chao-ca-mien-tay-thay-duy.jpg', '2013-06-03 15:14:10', '2013-06-03 15:14:10', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (46, 'Cháo gà xé phay - Thầy Duy', 'Chao-ga-xe-phay-thay-duy.jpg', '2013-06-03 15:14:33', '2013-06-03 15:14:33', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (47, 'Cơm gà xối mỡ', 'Com-ga-xoi-mo.jpg', '2013-06-03 15:14:51', '2013-06-03 15:15:08', 1, '', ',64,', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (48, 'Bò nướng ống tre', 'bo-nuong-ong-tre.jpg', '2013-06-03 15:15:43', '2013-06-03 15:15:43', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (49, 'Bao tử hầm tiêu', 'bao-tu-ham-tieu.jpg', '2013-06-03 15:15:56', '2013-06-03 15:15:56', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (50, 'Bánh hỏi thịt nướng', 'banh-hoi-thit-nuong.jpg', '2013-06-03 15:17:29', '2013-06-03 15:17:29', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (51, 'Cơm chiên ngũ sắc', 'Com-chien-ngu-sac.jpg', '2013-06-03 15:22:22', '2013-06-03 15:22:22', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (52, 'Chả giò bánh bía - Cô Thu', 'cha-gio-banh-bia-co-thu.jpg', '2013-06-03 15:22:51', '2013-06-03 15:22:51', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (53, 'Chả cá Lã Vọng', 'Cha-ca-LA-Vong.jpg', '2013-06-03 15:23:06', '2013-06-03 15:23:06', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (54, 'Bông bí dòn thịt', 'Bong-bi-don-thit.jpg', '2013-06-03 15:23:25', '2013-06-03 15:23:25', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (55, 'Canh chua cá bông lau - Thầy Duy', 'canh-chua-ca-bong-lau-thay-duy.jpg', '2013-06-03 15:23:44', '2013-06-03 15:23:44', 1, '', ',64,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (56, 'Lớp bánh - Bánh choux Eclair', 'lop-banh-Banh-choux-Eclair-3.jpg', '2013-06-03 15:27:37', '2013-06-03 15:27:37', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (57, 'Ham T', 'ham-t.jpg', '2013-06-03 15:27:49', '2013-06-03 15:27:49', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (58, 'Seafood C', 'seafood-c.jpg', '2013-06-03 15:28:03', '2013-06-03 15:28:03', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (59, 'Lớp bánh - Bánh choux Eclair 2', 'lop-banh-Banh-choux-Eclair-5.jpg', '2013-06-03 15:28:18', '2013-06-03 15:28:18', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (60, 'Ham C', 'ham-c.jpg', '2013-06-03 15:28:29', '2013-06-03 15:28:29', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (61, 'Lớp bánh - Bánh choux Eclair 3', 'lop-banh-Banh-choux-Eclair-4.jpg', '2013-06-03 15:28:42', '2013-06-03 15:28:42', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (62, 'Lớp bánh - Bánh choux Eclair 4', 'lop-banh-Banh-choux-Eclair-3.jpg', '2013-06-03 15:28:54', '2013-06-03 15:28:54', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (63, 'Seafood T', 'seafood-t.jpg', '2013-06-03 15:29:06', '2013-06-03 15:29:06', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (64, 'Lớp bánh - Bánh choux Eclair 5', 'lop-banh-Banh-choux-Eclair-1.jpg', '2013-06-03 15:29:31', '2013-06-03 15:29:31', 1, '', ',59,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (65, 'Hội đầu bếp CN Sài Gòn  1', 'hoi-dau-bep-cn-saigon-1.jpg', '2013-06-08 09:59:10', '2013-06-08 09:59:10', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (66, 'Hội đầu bếp CN Sài Gòn 2', 'hoi-dau-bep-cn-saigon-2.jpg', '2013-06-08 09:59:24', '2013-06-08 09:59:24', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (67, 'Hội đầu bếp CN Sài Gòn 3', 'hoi-dau-bep-cn-saigon-3.jpg', '2013-06-08 09:59:28', '2013-06-08 09:59:28', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (68, 'Hội đầu bếp CN Sài Gòn 4', 'hoi-dau-bep-cn-saigon-4.jpg', '2013-06-08 09:59:35', '2013-06-08 09:59:35', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (69, 'Hội đầu bếp CN Sài Gòn 5', 'hoi-dau-bep-cn-saigon-5.jpg', '2013-06-08 09:59:39', '2013-06-08 09:59:39', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (70, 'Hội đầu bếp CN Sài Gòn 6', 'hoi-dau-bep-cn-saigon-6.jpg', '2013-06-08 09:59:43', '2013-06-08 09:59:43', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (71, 'Hội đầu bếp CN Sài Gòn 7', 'hoi-dau-bep-cn-saigon-7.jpg', '2013-06-08 09:59:47', '2013-06-08 09:59:47', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (72, 'Hội đầu bếp CN Sài Gòn 8', 'hoi-dau-bep-cn-saigon-8.jpg', '2013-06-08 09:59:51', '2013-06-08 09:59:51', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (73, 'Hội đầu bếp CN Sài Gòn 9', 'hoi-dau-bep-cn-saigon-9.jpg', '2013-06-08 09:59:55', '2013-06-08 09:59:55', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (74, 'Hội đầu bếp CN Sài Gòn 10', 'hoi-dau-bep-cn-saigon-10.jpg', '2013-06-08 10:00:00', '2013-06-08 10:00:00', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (75, 'Hội đầu bếp CN Sài Gòn 11', 'hoi-dau-bep-cn-saigon-11.jpg', '2013-06-08 10:00:04', '2013-06-08 10:00:04', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (76, 'Hội đầu bếp CN Sài Gòn 12', 'hoi-dau-bep-cn-saigon-12.jpg', '2013-06-08 10:00:07', '2013-06-08 10:00:07', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (77, 'Hội đầu bếp CN Sài Gòn 13', 'hoi-dau-bep-cn-saigon-13.jpg', '2013-06-08 10:00:10', '2013-06-08 10:00:10', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (78, 'Hội đầu bếp CN Sài Gòn 14', 'hoi-dau-bep-cn-saigon-14.jpg', '2013-06-08 10:00:14', '2013-06-08 10:00:14', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (79, 'Hội đầu bếp CN Sài Gòn 15', 'hoi-dau-bep-cn-saigon-15.jpg', '2013-06-08 10:00:20', '2013-06-08 10:00:20', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (80, 'Hội đầu bếp CN Sài Gòn 16', 'hoi-dau-bep-cn-saigon-16.jpg', '2013-06-08 10:00:26', '2013-06-08 10:00:26', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (81, 'Hội đầu bếp CN Sài Gòn 17', 'hoi-dau-bep-cn-saigon-17.jpg', '2013-06-08 10:00:32', '2013-06-08 10:00:32', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (82, 'Hội đầu bếp CN Sài Gòn 18', 'hoi-dau-bep-cn-saigon-18.jpg', '2013-06-08 10:00:37', '2013-06-08 10:00:37', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (83, 'Hội đầu bếp CN Sài Gòn 19', 'hoi-dau-bep-cn-saigon-19.jpg', '2013-06-08 10:00:40', '2013-06-08 10:00:40', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (84, 'Hội đầu bếp CN Sài Gòn 20', 'hoi-dau-bep-cn-saigon-20.jpg', '2013-06-08 10:00:47', '2013-06-08 10:00:47', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (85, 'Hội đầu bếp CN Sài Gòn 21', 'hoi-dau-bep-cn-saigon-21.jpg', '2013-06-08 10:00:49', '2013-06-08 10:00:49', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (86, 'Hội đầu bếp CN Sài Gòn 22', 'hoi-dau-bep-cn-saigon-22.jpg', '2013-06-08 10:00:56', '2013-06-08 10:00:56', 1, '', ',25,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (87, 'Anh Khao - Việt Anh - Huy Khanh', 'ANHKHAO-VIETANH-huykhanh.jpg', '2013-06-24 17:00:08', '2013-06-24 17:00:08', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (88, 'Tường Vi - Trường NETSPACE', 'TUONGVI.jpg', '2013-06-24 17:00:32', '2013-06-24 17:00:32', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (89, 'Tường Vi - Hiếu Hiền - Trường NETSPACE', 'TUONGVI-HIEUHIEN.jpg', '2013-06-24 17:00:50', '2013-06-24 17:00:50', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (90, 'Tường Vi - Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'TUONGVI-HIEUHIEN-thaihoa.jpg', '2013-06-24 17:01:10', '2013-06-24 17:01:10', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (91, 'Trung Hậu - Trường NETSPACE', 'TRUNG-HAU.jpg', '2013-06-24 17:01:23', '2013-06-24 17:01:23', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (92, 'Thanh Thúy - Thái Hòa - Trường NETSPACE', 'THANHTHUY-thaihoa.jpg', '2013-06-24 17:01:50', '2013-06-24 17:01:50', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (93, 'Hoa hậu Mai Phương Thúy - Trường NETSPACE', 'HOA-HAU-MAI-PHUONG-THUY.jpg', '2013-06-24 17:02:09', '2013-06-24 17:02:09', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (94, 'Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'HIEUHIEN-Thaihoa.jpg', '2013-06-24 17:02:29', '2013-06-24 17:02:29', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (95, 'Hiếu Hiền - Thái Hòa - Cùng với Học Viên Trường NETSPACE', 'HIEUHIEN-thaihoa-tai-netspace.jpg', '2013-06-24 17:02:45', '2013-06-24 17:03:30', 1, '', ',70,', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (96, 'Diễn viên Trường Thịnh - Trường NETSPACE', 'dv-truong-thinh.jpg', '2013-06-24 17:03:54', '2013-06-24 17:03:54', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (97, 'Diễn viên Trương Minh Cường- Trường NETSPACE', 'dv-truong-minh-cuong.jpg', '2013-06-24 17:04:13', '2013-06-24 17:04:13', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (98, 'Diễn viên Trương Minh Cường - Cùng với học viên Trường NETSPACE', 'dv-truong-minh-cuong-2.jpg', '2013-06-24 17:04:38', '2013-06-24 17:04:38', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (99, 'Diễn viên phim Lưu Manh Đầu Bếp - Trường NETSPACE', 'dv-phim-luu-manh-dau-bep.jpg', '2013-06-24 17:05:05', '2013-06-24 17:05:05', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (100, 'Diễn viên Hà Hiền - Trường NETSPACE', 'dv-ha-hien.jpg', '2013-06-24 17:05:22', '2013-06-24 17:05:22', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (101, 'Đoàn làm phim Bếp của Mẹ', 'doan-lam-phim-bep-cua-me.jpg', '2013-06-24 17:05:49', '2013-06-24 17:05:49', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (102, 'Đoàn làm phim Bếp của Mẹ tại Trường NETSPACE', 'doan-lam-phim-bep-cua-me-2.jpg', '2013-06-24 17:06:08', '2013-06-24 17:06:08', 1, '', ',70,', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (103, 'Diễn viên Trường Thịnh tại Trường NETSPACE', 'dien-vien-truong-thinh.jpg', '2013-06-24 17:06:38', '2013-06-24 17:06:38', 1, '', ',70,', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `photo_gallery_comment`
-- 

CREATE TABLE `photo_gallery_comment` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(10) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `photo_gallery_comment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `products`
-- 

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `price` int(10) NOT NULL,
  `kichthuoc` varchar(200) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` VALUES (1, 'Phong cảnh 1', 'lo-xo-nen', 'lo-xo-nen.jpg', 300000, '30*40', 'Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng..', '<p>Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n', '2013-08-10 12:19:35', '2013-08-13 12:31:16', 1, 'LÒ XO NÉN', 1, 'vi', ',2,20,22,', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (2, 'Phong cảnh 2', 'lo-xo-keo', 'lo-xo-keo.jpg', 300000, '30*40', 'Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng..', '<p><span style="font-size: 13px;">Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</span></p>\r\n', '2013-08-10 12:20:11', '2013-08-10 12:31:24', 1, 'LÒ XO KÉO', 1, 'vi', ',2,20,22,', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (3, 'Phong cảnh 3', 'lo-xo-xoan', 'lo-xo-xoan.jpg', 500000, '30*40', 'Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... ', '<p>Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng...&nbsp;</p>\r\n', '2013-08-12 09:38:51', '2013-08-12 12:31:32', 1, 'LÒ XO XOẮN', 1, 'vi', ',2,20,22,', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (4, 'Lo xo nen 2', 'lo-xo-nen-2', 'lo-xo-nen.jpg', 0, '6 x 10 mm', 'Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. ', '<p>Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n', '2013-08-12 14:21:53', '2013-08-12 14:22:14', 1, 'Lo xo nen 2', 1, 'en', ',11,', 'admin', 'admin', 0);
INSERT INTO `products` VALUES (5, 'Lo xo nen 3', 'lo-xo-nen-3', 'lo-xo-xoan.jpg', 0, '6 x 11 mm', 'Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst. ', '<p>Đây là loại lò xo nhận mô men xoắn và thường được dùng ở bộ phận cảm biến, then cửa dùng để đóng... Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.&nbsp;</p>\r\n', '2013-08-12 14:24:28', '2013-08-12 14:24:28', 1, 'Lo xo nen 3', 1, 'en', ',11,', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (1, 'Quy trình sản xuất ĐẠT CHUẨN QUỐC TẾ', 'slider.jpg', 'javascript:;', '2013-08-09 17:30:30', '2013-08-09 16:51:41', '<p><span style="font-size:24px;">Quy trình sản xuất <span style="color:#fd6d13;">ĐẠT CHUẨN QUỐC TẾ</span></span></p>\r\n', 1, 'vi', 1, ',1,', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (2, 'Sản phẩm chất lượng tốt nhất', 'banner.jpg', 'javascript:;', '2013-08-12 16:32:18', '2013-08-12 16:35:53', '', 1, 'vi', 2, '', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (3, 'Sản phẩm chất lượng tốt nhất  2', 'banner.jpg', 'javascript:;', '2013-08-12 16:40:06', '2013-08-12 16:40:14', '', 1, 'vi', 2, '', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (4, 'Tin tức - Sự kiện', 'slider-news.png', 'javascript:;', '2013-08-12 17:03:30', '2013-08-12 17:21:14', '<p><span style="font-size:36px;"><strong><span style="color:#fd6d13;">Tin tức - Sự kiện</span></strong></span></p>\r\n\r\n<p><span style="font-size:16px;">Tin tức - Sự kiện hoạt động toàn thể công ty Dieu Thuan</span></p>\r\n', 1, 'vi', 1, ',4,', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (5, 'Sản phẩm', 'slider-product.png', 'javascript:;', '2013-08-12 17:07:28', '2013-08-12 17:09:19', '<p><span style="color:#fd6d13;"><span style="font-size:36px;">Sản phẩm</span></span></p>\r\n\r\n<p><span style="font-size:16px;">Chúng tôi luôn cung cấp những sản phẩm tốt nhất.</span></p>\r\n', 1, 'vi', 1, ',3,', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (6, 'Giới thiệu', 'slider-news.png', 'javascript:;', '2013-08-12 17:20:55', '2013-08-12 17:25:11', '<p><span style="font-size:36px;"><strong><span style="color:#fd6d13;">Giới thiệu Dieu Thuan</span></strong></span></p>\r\n\r\n<p><span style="font-size:16px;">Giới thiệu&nbsp;toàn thể công ty Dieu Thuan</span></p>\r\n', 1, 'vi', 1, ',2,', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (7, 'Liên hệ', 'slider-contact.png', 'javascript:;', '2013-08-12 17:27:12', '2013-08-12 17:27:39', '<p><span style="font-size:36px;"><strong><span style="color:#fd6d13;">Liên hệ</span></strong></span></p>\r\n\r\n<p><span style="font-size:16px;">Liên hệ&nbsp;công ty Dieu Thuan</span></p>\r\n', 1, 'vi', 1, ',5,', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (8, 'Chứng nhận ISO', 'slider-product.png', 'javascript:;', '2013-08-12 17:31:48', '2013-08-12 17:32:16', '<p><span style="font-size:36px;"><strong><span style="color:#fd6d13;">Chứng nhận ISO</span></strong></span></p>\r\n\r\n<p><span style="font-size:16px;">Chứng nhận ISO&nbsp;công ty Dieu Thuan</span></p>\r\n', 1, 'vi', 1, ',14,', 'admin', 'admin', 0);

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

INSERT INTO `slider_banner_position` VALUES (1, 'Slider', 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,7,12,13,15,', ',1,2,3,4,6,7,12,13,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', NULL, 'admin', NULL, 0);

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
