-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 18, 2013 at 03:00 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `hongcuongclub`
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
  `skype` varchar(50) default NULL,
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

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/hongcuongclub', 10, 10, 12, 10, 'Copyright © 2013.', '<p><strong>CÂU LẠC BỘ HỒNG CƯỜNG - HONG CUONG CLUB</strong></p>\r\n\r\n<p>Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM</p>\r\n\r\n<p>Điện thoại: (84.8) 37267477 - Hotline: 0906941112</p>\r\n\r\n<p>Email: clb.hongcuong2010@gmail.com</p>\r\n', '<p><span style="line-height: 1.6em;">Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM</span><br />\r\n<span style="line-height: 1.6em;">Điện thoại: (84.8) 37267477 - Hotline: 0906941112</span><br />\r\n<span style="line-height: 1.6em;">Email: clb.hongcuong2010@gmail.com</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', 'hieu_nhan1', '0988 388 003', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 15:24:27', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'English', 'en', '', 'localhost/all/source_temp', 0, 10, 2, NULL, 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', '<p>Add: 87 Thang Long Str., Ward 4, Tan Binh Dist, HCMC, Vietnam.<br />\r\nTel: (84.8) 3 948 4696 - Fax : ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', '<table border="0" cellpadding="0" cellspacing="5" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">HEAD OFFICE</span></h3>\r\n\r\n			<p>Add: Lot III/22, 19/5A Rd, Tan Binh IZ, Tan Phu Dist., Ho Chi Minh city, Vietnam<br />\r\n			Tel: (84.8) 3 815 5319 - Fax: (84.8) 3 815 5320<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">DANANG OFFICE</span></h3>\r\n\r\n			<p>Add: 183 Nguyen Tri Phuong Str., W. Vinh Trung, Thanh Khe Dist., Da Nang city, Vietnam<br />\r\n			Tel: (84.511) 3 561 561 - Fax: (84.511) 3 824 602<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3 style="font-size: 13px;"><span style="color:#FF0000;">HCM OFFICE</span></h3>\r\n\r\n			<p style="font-size: 13px;">Add: 87 Thang Long Str., Ward 4, Tan Binh Dist., HCMC, Vietnam<br />\r\n			Tel: (84.8) 3 948 4696 - Fax: (84.8) 3 948 4697<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">CANTHO OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: 40 A3 Str., Hung Phu I, Cai Rang Dist., Can Tho city, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.0710) 625 8539 - Fax: (84.0710) 625 8540</span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">HANOI OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: No. 1 Alley 71, Linh Lang Str., Cong Vi Ward, Ba Dinh Dist., Ha Noi, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.4) 3 726 0122 - Fax: (84.4) 3 726 0144</span></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', 0, '2013-08-10 10:09:29', '2013-08-10 15:35:08', 'admin', '', 1);

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

INSERT INTO `info` VALUES (1, 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 'gioi-thieu-nha-hang-am-thuc-hong-cuong', '', 'Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành.', '<p>Bao phủ toàn bộ không gian Hồng Cường là 4 gam màu chủ đạo: trắng, đen, đỏ, vàng mang đến cảm giác thư thái, ấm cúng, giúp kích thích giác quan thưởng thức ẩm thực cho mọi thực khách. Không gian rộng mở của Hồng Cường được tạo điểm nhấn từ bức tranh kính nghệ thuật cỡ lớn độc đáo với những đóa mai đỏ rực rỡ khoe sắc tại khu đồ tráng miệng. Dù là ngồi tại những dãy bàn dài thẳng tắp trong những bữa tiệc lớn hay những góc bàn riêng nhỏ xinh, thực khách vẫn có thể ngắm được những xe cổ có một không hai trên thị trường hiện nay.</p>\r\n\r\n<p style="text-align: center;"><img alt="Giới thiệu nhà hàng ẩm thực Hồng Cường" src="/all/hongcuongclub/public/images/articles/baiviet-1.jpg" style="width: 705px; height: 150px;" /></p>\r\n\r\n<p>Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành. Bởi không sang trọng cầu kỳ như lẩu 5 sao, không bình dân như Lẩu hàng quán, Hồng Cường ra đời là sự tích hợp giữa chất lượng món ăn của nhà hàng 4 sao nhưng giá cả cực kỳ hợp lý. &nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="Những dãy bàn dài thẳng tắp" src="/all/hongcuongclub/public/images/articles/baiviet-2.jpg" style="width: 705px; height: 245px;" /></p>\r\n\r\n<p style="text-align: center;"><em>Những dãy bàn dài thẳng tắp</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="Món ăn được trang trí thật bắt mắt" src="/all/hongcuongclub/public/images/articles/baiviet-3.jpg" style="width: 705px; height: 469px;" /><br />\r\nMón ăn được trang trí thật bắt mắt</em></p>\r\n\r\n<p><strong><em>“Trăm nghe không bằng một thấy” </em></strong>Quý khách hãy một lần đến với Hồng Cường để cùng chúng tôi khám phá thêm những điều quyến rũ tiềm ẩn đó.</p>\r\n\r\n<p style="text-align: right;"><strong>Hong Cuong Club</strong></p>\r\n', 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 0, 'vi', ',2,', 1, '2013-12-12 16:52:20', '2013-12-12 16:52:20', 'admin', NULL, 0);
INSERT INTO `info` VALUES (2, 'Khuyến mãi giảm 10% trên tổng hóa đơn', 'khuyen-mai-giam-10-tren-tong-hoa-don', 'baiviet-5.jpg', 'Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor.</h2>\r\n\r\n<p><span style="line-height: 1.6em;">Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</span></p>\r\n\r\n<p style="text-align: center;"><span style="line-height: 1.6em;"><img alt="Khuyến mãi giảm 10% trên tổng hóa đơn" src="/all/hongcuongclub/public/images/articles/baiviet-5.jpg" style="width: 600px; height: 400px;" /></span></p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'Khuyến mãi giảm 10% trên tổng hóa đơn', 0, 'vi', ',14,', 1, '2013-12-12 20:21:53', '2013-12-12 20:42:57', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (3, 'Nhân dịp năm mới nhà hàng tổ chức sự kiện.', 'nhan-dip-nam-moi-nha-hang-to-chuc-su-kien', 'baiviet-4.jpg', 'In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\r\n\r\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\r\n\r\n<p style="text-align: center;"><img alt="Nhân dịp năm mới nhà hàng tổ chức sự kiện." src="/all/hongcuongclub/public/images/articles/baiviet-4.jpg" style="width: 600px; height: 400px;" /></p>\r\n\r\n<p>Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'Nhân dịp năm mới nhà hàng tổ chức sự kiện.', 0, 'vi', ',14,', 1, '2013-12-12 20:22:54', '2013-12-12 20:43:07', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (4, 'Kỷ niệm 20 năm thành lập Hồng Cường', 'ky-niem-20-nam-thanh-lap-hong-cuong', 'baiviet-7.jpg', 'Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus.</h2>\r\n\r\n<p>Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\r\n\r\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</p>\r\n\r\n<p style="text-align: center;"><img alt="Kỷ niệm 20 năm thành lập Hồng Cường" src="/all/hongcuongclub/public/images/articles/baiviet-3.jpg" style="width: 705px; height: 469px;" /></p>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'Kỷ niệm 20 năm thành lập Hồng Cường', 0, 'vi', ',14,', 1, '2013-12-12 20:23:45', '2013-12-13 14:04:42', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (5, 'Tổ chức cuộc thi đầu bếp tài năm 2013', 'to-chuc-cuoc-thi-dau-bep-tai-nam-2013', 'baiviet-6.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus.', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.</p>\r\n', 'Tổ chức cuộc thi đầu bếp tài năm 2013', 0, 'vi', ',14,', 1, '2013-12-12 20:55:33', '2013-12-13 14:04:17', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (6, 'Không gian nhà hàng Hồng Cường', 'khong-gian-nha-hang-hong-cuong', 'baiviet-9.jpg', 'Ngay từ những bước chân đầu tiên tới Nhà hàng Ngọc Mai Vàng, thực khách sẽ thấy Nhà hàng được bao trùm bởi một màu vàng tươi mới, rạng rỡ, sắc màu của những bông mai vàng phương Nam khoe sắc trên đất thủ đô Ngàn năm tuổi.', '<h2>Ngay từ những bước chân đầu tiên tới Nhà hàng Ngọc Mai Vàng, thực khách sẽ thấy Nhà hàng được bao trùm bởi một màu vàng tươi mới, rạng rỡ, sắc màu của những bông mai vàng phương Nam khoe sắc trên đất thủ đô Ngàn năm tuổi.</h2>\r\n\r\n<p style="text-align: center;"><img alt="1" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/121.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em>&nbsp;Sắc vàng bao phủ tạo cảm giác ấm cúng và ngon miệng cho thực khách</em></p>\r\n\r\n<p>Điểm xuyết trên toàn khuôn viên thoáng đãng của nhà hàng là những chiếc đèn lồng màu vàng có thêu họa tiết hoa mai mềm mại. Sử dụng tông màu vàng làm chủ đạo, từ những chiếc khăn ăn xinh xắn, những hàng ghế, những dãy bàn, ánh đèn tới trần nhà đều mang màu đặc trưng của loài hoa tượng trưng cho mùa Xuân phương Nam.</p>\r\n\r\n<p style="text-align: center;"><img alt="3" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/311.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em>Những chiếc bàn tròn cho nhóm thực khách dưới 10 người</em></p>\r\n\r\n<p style="text-align: center;"><img alt="2" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/211.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">Những dãy bàn dài không bị giới hạn bởi không gian</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="4" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/411.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">&nbsp;Các quầy đảo với hàng chục món ăn được đặt ở những vị trí trung tâm của Nhà hàng</span></em></p>\r\n\r\n<p>Bên những góc bàn riêng cho những bữa tiệc dưới 10 người, thực khách có thể chọn những góc bàn gần nhất với những ô cửa sổ lớn để ngắm nhìn vẻ đẹp một góc riêng của thủ đô Hà Nội.</p>\r\n\r\n<p>Đặc biệt, &nbsp;không gian thoáng đãng, rộng mở với tổng diện tích lên tới 700m2&nbsp;&nbsp;còn giúp cho Ngọc Mai Vàng tạo được lợi thế nổi trội bởi những dãy bàn dài thẳng tắp vô cùng tiện ích với những bữa tiệc lớn hàng chục người không bị chia nhỏ bởi sự giới hạn của không gian mà trở nên sum vầy, ấm cúng.</p>\r\n\r\n<p style="text-align: center;"><img alt="6" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/611.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">Mọi thứ dường như thật hoàn hảo cho những bữa tiệc lớn như tiệc đám cưới, sinh nhật…</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="7" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/711.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">… hay những bữa tiệc nhỏ ấm cúng</span></em></p>\r\n\r\n<p>Ngọc Mai Vàng mang vẻ đẹp kiến trúc thuần Việt vô cùng gần gũi nhưng vẫn tiện nghi và hiện đại luôn đem lại cho thực khách cảm giác thư thái khi thưởng thức những món ăn ngon.</p>\r\n\r\n<p style="text-align: right;"><strong>Hong Cuong Club</strong></p>\r\n', 'Không gian nhà hàng Hồng Cường', 0, 'vi', ',3,', 1, '2013-12-13 15:31:36', '2013-12-13 15:31:36', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'trang-chu', 'trang-chu/', '', 'Nhà hàng tiệc cưới HỒNG CƯỜNG - HONG CUONG CLUB', 'Nhà hàng tiệc cưới HỒNG CƯỜNG - HONG CUONG CLUB', 'Nhà hàng tiệc cưới HỒNG CƯỜNG,nha hang tiec cuoi', 0, 1, ',7,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 14:32:14', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Giới thiệu nhà hàng', 'gioi-thieu-nha-hang-hong-cuong', 'gioi-thieu-nha-hang-hong-cuong/', '', 'Giới thiệu nhà hàng Hồng Cường', 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 'Giới thiệu nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 11, 1, '2013-10-09 15:38:02', '2013-10-09 14:13:24', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Không gian', 'khong-gian-nha-hang-hong-cuong', 'khong-gian-nha-hang-hong-cuong/', '', 'Không gian nhà hàng Hồng Cường', 'Bao phủ toàn bộ không gian Hồng Cường là 4 gam màu chủ đạo: trắng, đen, đỏ, vàng mang đến cảm giác thư thái, ấm cúng, giúp kích thích giác quan thưởng thức ẩm thực cho mọi thực khách.', 'Không gian nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 12, 1, '2013-10-09 15:38:25', '2013-10-09 17:07:46', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Ẩm thực Hồng Cường', 'am-thuc-hong-cuong', 'gioi-thieu-nha-hang-hong-cuong/gioi-thieu-nha-hang-am-thuc-hong-cuong.html', 'nha-hang-hong-cuong.png', 'Ẩm thực Hồng Cường', 'Nhà hàng chuyên Buffet hải sản cao cấp, tổ chức tiệc cưới, tiệc hội nghị, tiệc lưu động và tổ chức sự kiện. Với bãi đỗ xe có sức chứa lên đến hàng nghìn xe.', 'Ẩm thực Hồng Cường', 0, 2, ',1,3,', 'vi', 0, 10, 1, '2013-10-09 15:38:38', '2013-10-09 20:14:21', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Giới thiệu', 'gioi-thieu', 'javascript:;#gt', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',2,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 15:34:26', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (6, 'Diễn đàn', 'dien-dan', 'javascript:;#dd', '', 'Diễn đàn', 'Diễn đàn', 'Diễn đàn', 0, 9, ',2,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 15:34:38', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (7, 'Làng ẩm thực', 'lang-am-thuc', 'javascript:;#at', '', 'Làng ẩm thực', 'Làng ẩm thực', 'Làng ẩm thực', 0, 2, ',2,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 15:34:49', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (8, 'Cafe sân vườn', 'cafe-san-vuon', 'javascript:;#cf', '', 'Cafe sân vườn', 'Cafe sân vườn', 'Cafe sân vườn', 0, 2, ',2,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 15:34:57', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ', 0, 8, ',2,', 'vi', 0, 6, 1, '2013-10-09 15:40:52', '2013-10-09 15:35:19', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Facebook', 'facebook', 'javascript:;', 'facebook.gif', 'Facebook', 'Facebook', 'Facebook', 0, 9, ',6,', 'vi', 0, 101, 1, '2013-12-12 10:41:04', '2013-12-12 14:33:02', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (11, 'Youtube', 'youtube', 'javascript:;#2', 'youtube.gif', 'Youtube', 'Youtube', 'Youtube', 0, 9, ',6,', 'vi', 0, 102, 1, '2013-12-12 10:42:27', '2013-12-12 14:33:12', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (12, 'Google+', 'google', 'javascript:;#3', 'google.gif', 'Google+', 'Google+', 'Google+', 0, 9, ',6,', 'vi', 0, 103, 1, '2013-12-12 10:42:52', '2013-12-12 14:33:19', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (13, 'Twitter', 'twitter', 'javascript:;#4', 'twitter.gif', 'Twitter', 'Twitter', 'Twitter', 0, 9, ',6,', 'vi', 0, 104, 1, '2013-12-12 10:43:12', '2013-12-12 14:33:23', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (14, 'Sự kiện - Nhà hàng', 'su-kien-nha-hang-hong-cuong', 'su-kien-nha-hang-hong-cuong/', '', 'Sự kiện - Nhà hàng Hồng Cường', 'Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành.', 'Sự kiện - Nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 13, 1, '2013-12-12 14:11:00', '2013-12-12 20:15:04', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (15, 'Hình ảnh nhà hàng', 'hinh-anh-nha-hang-hong-cuong', 'hinh-anh-nha-hang-hong-cuong/', '', 'Hình ảnh nhà hàng Hồng Cường', 'Hình ảnh nhà hàng Hồng Cường', 'Hình ảnh nhà hàng Hồng Cường', 4, 4, ',3,', 'vi', 0, 14, 1, '2013-12-12 14:11:43', '2013-12-12 14:21:14', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (16, 'Liên hệ', 'lien-he-nha-hang-hong-cuong', 'lien-he-nha-hang-hong-cuong/', '', 'Liên hệ nhà hàng Hồng Cường', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ nhà hàng Hồng Cường', 4, 8, ',3,', 'vi', 0, 15, 1, '2013-12-12 14:12:19', '2013-12-12 13:33:04', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (17, 'Tiệc cưới Hồng Cường', 'tiec-cuoi-hong-cuong', 'tiec-cuoi-hong-cuong/', 'tiec-cuoi-hong-cuong.png', 'Tiệc cưới Hồng Cường', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'Tiệc cưới Hồng Cường', 0, 2, ',1,4,', 'vi', 0, 30, 1, '2013-12-12 14:13:52', '2013-12-12 14:39:38', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (18, 'Giới thiệu tiệc cưới', 'gioi-thieu-tiec-cuoi-hong-cuong', 'gioi-thieu-tiec-cuoi-hong-cuong/', '', 'Giới thiệu tiệc cưới Hồng Cường', 'Giới thiệu tiệc cưới Hồng Cường', 'Giới thiệu tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 31, 1, '2013-12-12 14:14:30', '2013-12-12 14:14:40', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (19, 'Bàn tiệc', 'ban-tiec-tiec-cuoi-hong-cuong', 'ban-tiec-tiec-cuoi-hong-cuong/', '', 'Bàn tiệc tiệc cưới Hồng Cường', 'Bàn tiệc tiệc cưới Hồng Cường', 'Bàn tiệc tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 32, 1, '2013-12-12 14:15:36', '2013-12-12 14:15:36', 'admin', '', 0);
INSERT INTO `menu` VALUES (20, 'Sự kiện - Khuyến mãi', 'su-kien-khuyen-mai-tiec-cuoi-hong-cuong', 'su-kien-khuyen-mai-tiec-cuoi-hong-cuong/', '', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 33, 1, '2013-12-12 14:16:08', '2013-12-12 16:26:05', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (21, 'Hình ảnh tiệc cưới', 'hinh-anh-tiec-cuoi-hong-cuong', 'hinh-anh-tiec-cuoi-hong-cuong/', '', 'Hình ảnh tiệc cưới Hồng Cường', 'Hình ảnh tiệc cưới Hồng Cường', 'Hình ảnh tiệc cưới Hồng Cường', 17, 4, ',4,', 'vi', 0, 34, 1, '2013-12-12 14:16:33', '2013-12-12 14:21:19', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (22, 'Liên hệ', 'lien-he-dat-tiec-cuoi', 'lien-he-dat-tiec-cuoi/', '', 'Liên hệ đặt tiệc cưới', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ đặt tiệc cưới', 17, 8, ',4,', 'vi', 0, 35, 1, '2013-12-12 14:17:06', '2013-12-12 13:44:20', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (23, 'Xe cổ Hồng Cường', 'xe-co-hong-cuong', 'xe-co-hong-cuong/', 'xe-co-hong-cuong.png', 'Xe cổ Hồng Cường', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'Xe cổ Hồng Cường', 0, 2, ',1,5,', 'vi', 0, 50, 1, '2013-12-12 14:17:59', '2013-12-12 14:39:49', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (24, 'Giới thiệu xe cổ', 'gioi-thieu-xe-co-hong-cuong', 'gioi-thieu-xe-co-hong-cuong/', '', 'Giới thiệu xe cổ Hồng Cường', 'Giới thiệu xe cổ Hồng Cường', 'Giới thiệu xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 51, 1, '2013-12-12 14:18:24', '2013-12-12 16:22:00', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (25, 'Thảo luận xe cổ', 'thao-luan-xe-co-hong-cuong', 'thao-luan-xe-co-hong-cuong/', '', 'Thảo luận xe cổ Hồng Cường', 'Thảo luận xe cổ Hồng Cường', 'Thảo luận xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 52, 1, '2013-12-12 14:19:18', '2013-12-12 14:19:18', 'admin', '', 0);
INSERT INTO `menu` VALUES (26, 'Sự kiện xe cổ', 'su-kien-xe-co-hong-cuong', 'su-kien-xe-co-hong-cuong/', '', 'Sự kiện xe cổ Hồng Cường', 'Sự kiện xe cổ Hồng Cường', 'Sự kiện xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 53, 1, '2013-12-12 14:19:49', '2013-12-12 14:19:49', 'admin', '', 0);
INSERT INTO `menu` VALUES (27, 'Hình ảnh xe cổ', 'hinh-anh-xe-co-hong-cuong', 'hinh-anh-xe-co-hong-cuong/', '', 'Hình ảnh xe cổ Hồng Cường', 'Hình ảnh xe cổ Hồng Cường', 'Hình ảnh xe cổ Hồng Cường', 23, 4, ',5,', 'vi', 0, 54, 1, '2013-12-12 14:20:07', '2013-12-12 14:21:25', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (28, 'Liên hệ', 'lien-he-xe-co-hong-cuong', 'lien-he-xe-co-hong-cuong/', '', 'Liên hệ xe cổ Hồng Cường', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ xe cổ Hồng Cường', 23, 8, ',5,', 'vi', 0, 55, 1, '2013-12-12 14:20:33', '2013-12-12 13:44:25', 'admin', 'admin', 0);

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
INSERT INTO `menu_admin` VALUES (6, 'Sản phẩm', 'products', NULL, 6, 0, 0);
INSERT INTO `menu_admin` VALUES (7, 'Thư viện ảnh', 'photo_gallery', '', 7, 1, 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `menu_position`
-- 

INSERT INTO `menu_position` VALUES (1, 'Home', 0);
INSERT INTO `menu_position` VALUES (2, 'Top', 0);
INSERT INTO `menu_position` VALUES (3, 'Nhà hàng', 0);
INSERT INTO `menu_position` VALUES (4, 'Tiệc cưới', 0);
INSERT INTO `menu_position` VALUES (5, 'Xe cổ', 0);
INSERT INTO `menu_position` VALUES (6, 'Social', 0);
INSERT INTO `menu_position` VALUES (7, 'Không', 0);

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
INSERT INTO `menu_type` VALUES (3, 'Sản phẩm', 1);
INSERT INTO `menu_type` VALUES (4, 'Thư viện ảnh', 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

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
INSERT INTO `photo_gallery` VALUES (104, 'Hình ảnh Nhà hàng 10', 'thuvien-anh-10.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:10', '2013-12-13 14:08:10', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (105, 'Hình ảnh Nhà hàng 11', 'thuvien-anh-11.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:14', '2013-12-13 14:08:14', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (106, 'Hình ảnh Nhà hàng 12', 'thuvien-anh-12.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:17', '2013-12-13 14:08:17', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (107, 'Hình ảnh Nhà hàng 13', 'thuvien-anh-13.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:20', '2013-12-13 14:08:20', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (108, 'Hình ảnh Nhà hàng 14', 'thuvien-anh-14.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:24', '2013-12-13 14:08:24', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (109, 'Hình ảnh Nhà hàng 15', 'thuvien-anh-15.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:28', '2013-12-13 14:08:28', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (110, 'Hình ảnh Nhà hàng 16', 'thuvien-anh-16.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:32', '2013-12-13 14:08:32', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (111, 'Hình ảnh Nhà hàng 17', 'thuvien-anh-17.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:35', '2013-12-13 14:08:35', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (112, 'Hình ảnh Nhà hàng 18', 'thuvien-anh-18.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:40', '2013-12-13 14:08:40', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (113, 'Hình ảnh Nhà hàng 19', 'thuvien-anh-19.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:43', '2013-12-13 14:08:43', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (114, 'Hình ảnh Nhà hàng 20', 'thuvien-anh-20.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:48', '2013-12-13 14:08:48', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (115, 'Hình ảnh Nhà hàng 21', 'thuvien-anh-21.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:51', '2013-12-13 14:08:58', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (116, 'Hình ảnh Nhà hàng 22', 'thuvien-anh-22.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:06', '2013-12-13 14:09:06', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (117, 'Hình ảnh Nhà hàng 23', 'thuvien-anh-23.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:10', '2013-12-13 14:09:10', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (118, 'Hình ảnh Nhà hàng 24', 'thuvien-anh-24.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:13', '2013-12-13 14:09:13', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (119, 'Hình ảnh Nhà hàng 25', 'thuvien-anh-25.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:19', '2013-12-13 14:09:19', 'admin', NULL, 0);

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
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (1, 'Ẩm thực Hồng Cường', 'nha-hang-hong-cuong.png', 'javascript:;', 'Nhà hàng chuyên Buffet hải sản cao cấp, tổ chức tiệc cưới, tiệc hội nghị, tiệc lưu động và tổ chức sự kiện. Với bãi đỗ xe có sức chứa lên đến hàng nghìn xe.', 'vi', 2, ',1,', 1, '2013-10-09 16:34:33', '2013-12-12 13:57:30', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (2, 'Tiệc cưới Hồng Cường', 'tiec-cuoi-hong-cuong.png', 'javascript:;', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'vi', 2, ',1,', 1, '2013-12-12 13:49:05', '2013-12-11 14:25:42', 'admin', 'admin', 0);
INSERT INTO `slider_banner` VALUES (3, 'Xe cổ Hồng Cường', 'xe-co-hong-cuong.png', 'javascript:;', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'vi', 2, ',1,', 1, '2013-12-12 13:50:42', '2013-12-10 13:57:39', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `slider_banner_position`
-- 

CREATE TABLE `slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `slider_banner_position`
-- 

INSERT INTO `slider_banner_position` VALUES (1, 'Slider 1000x200 px', 1);
INSERT INTO `slider_banner_position` VALUES (2, 'Event home 300x355 px', 0);
INSERT INTO `slider_banner_position` VALUES (3, 'Banner left', 0);
INSERT INTO `slider_banner_position` VALUES (4, 'Banner right', 0);

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

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,7,13,14,15,', ',1,2,3,4,7,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

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
