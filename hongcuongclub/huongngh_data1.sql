-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2013 at 08:51 AM
-- Server version: 5.0.96-community
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `huongngh_data1`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
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

INSERT INTO `config` (`id`, `name`, `lang`, `slogan`, `domain`, `max_limit_1`, `max_limit_2`, `max_limit_3`, `max_limit_4`, `copyright`, `contact_foo`, `contact_form`, `email`, `yahoo`, `skype`, `hotline`, `facebook`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Việt Nam', 'vi', '', 'huongnghiep.com.vn/hongcuong', 10, 10, 12, 10, 'Copyright © 2013.', '<p><strong>CÂU LẠC BỘ HỒNG CƯỜNG - HONG CUONG CLUB</strong></p>\r\n\r\n<p>Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM</p>\r\n\r\n<p>Điện thoại: (84.8) 37267477 - Hotline: 0906941112</p>\r\n\r\n<p>Email: clb.hongcuong2010@gmail.com</p>\r\n', '<p><span style="line-height: 1.6em;">Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM</span><br />\r\n<span style="line-height: 1.6em;">Điện thoại: (84.8) 37267477 - Hotline: 0906941112</span><br />\r\n<span style="line-height: 1.6em;">Email: clb.hongcuong2010@gmail.com</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', 'hieu_nhan1', '0988 388 003', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 15:24:27', 'admin', 'admin', 0),
(2, 'English', 'en', '', 'localhost/all/source_temp', 0, 10, 2, NULL, 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', '<p>Add: 87 Thang Long Str., Ward 4, Tan Binh Dist, HCMC, Vietnam.<br />\r\nTel: (84.8) 3 948 4696 - Fax : ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', '<table border="0" cellpadding="0" cellspacing="5" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">HEAD OFFICE</span></h3>\r\n\r\n			<p>Add: Lot III/22, 19/5A Rd, Tan Binh IZ, Tan Phu Dist., Ho Chi Minh city, Vietnam<br />\r\n			Tel: (84.8) 3 815 5319 - Fax: (84.8) 3 815 5320<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">DANANG OFFICE</span></h3>\r\n\r\n			<p>Add: 183 Nguyen Tri Phuong Str., W. Vinh Trung, Thanh Khe Dist., Da Nang city, Vietnam<br />\r\n			Tel: (84.511) 3 561 561 - Fax: (84.511) 3 824 602<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3 style="font-size: 13px;"><span style="color:#FF0000;">HCM OFFICE</span></h3>\r\n\r\n			<p style="font-size: 13px;">Add: 87 Thang Long Str., Ward 4, Tan Binh Dist., HCMC, Vietnam<br />\r\n			Tel: (84.8) 3 948 4696 - Fax: (84.8) 3 948 4697<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">CANTHO OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: 40 A3 Str., Hung Phu I, Cai Rang Dist., Can Tho city, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.0710) 625 8539 - Fax: (84.0710) 625 8540</span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">HANOI OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: No. 1 Alley 71, Linh Lang Str., Cong Vi Ward, Ba Dinh Dist., Ha Noi, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.4) 3 726 0122 - Fax: (84.4) 3 726 0144</span></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', 0, '2013-08-10 10:09:29', '2013-08-10 15:35:08', 'admin', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `diachi`, `message`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', 'test lien he HC', '', 0, '2013-12-17 17:48:43', '2013-12-17 17:48:43', 'khachhang', '', 0),
(2, 'Việt Nam', 'hieu_nhan1@yahoo.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', '33333333333333333333', '', 0, '2013-12-17 17:50:31', '2013-12-17 17:50:31', 'khachhang', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `metaDescription`, `content`, `metaKeyword`, `other`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 'gioi-thieu-nha-hang-am-thuc-hong-cuong', '', 'Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành.', '<p>Bao phủ toàn bộ không gian Hồng Cường là 4 gam màu chủ đạo: trắng, đen, đỏ, vàng mang đến cảm giác thư thái, ấm cúng, giúp kích thích giác quan thưởng thức ẩm thực cho mọi thực khách. Không gian rộng mở của Hồng Cường được tạo điểm nhấn từ bức tranh kính nghệ thuật cỡ lớn độc đáo với những đóa mai đỏ rực rỡ khoe sắc tại khu đồ tráng miệng. Dù là ngồi tại những dãy bàn dài thẳng tắp trong những bữa tiệc lớn hay những góc bàn riêng nhỏ xinh, thực khách vẫn có thể ngắm được những xe cổ có một không hai trên thị trường hiện nay.</p>\r\n\r\n<p style="text-align: center;"><img alt="Giới thiệu nhà hàng ẩm thực Hồng Cường" src="/hongcuong/public/images/articles/baiviet-1.jpg" style="width: 705px; height: 150px;" /></p>\r\n\r\n<p>Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành. Bởi không sang trọng cầu kỳ như lẩu 5 sao, không bình dân như Lẩu hàng quán, Hồng Cường ra đời là sự tích hợp giữa chất lượng món ăn của nhà hàng 4 sao nhưng giá cả cực kỳ hợp lý. &nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="Những dãy bàn dài thẳng tắp" src="/hongcuong/public/images/articles/baiviet-2.jpg" style="width: 705px; height: 245px;" /></p>\r\n\r\n<p style="text-align: center;"><em>Những dãy bàn dài thẳng tắp</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="Món ăn được trang trí thật bắt mắt" src="/hongcuong/public/images/articles/baiviet-3.jpg" style="width: 705px; height: 469px;" /><br />\r\nMón ăn được trang trí thật bắt mắt</em></p>\r\n\r\n<p><strong><em>“Trăm nghe không bằng một thấy” </em></strong>Quý khách hãy một lần đến với Hồng Cường để cùng chúng tôi khám phá thêm những điều quyến rũ tiềm ẩn đó.</p>\r\n\r\n<p style="text-align: right;"><strong>Hong Cuong Club</strong></p>\r\n', 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 0, 'vi', ',2,', 1, '2013-12-12 16:52:20', '2013-12-12 15:43:11', 'admin', 'admin', 0),
(2, 'Mừng Noel 2014 Nhà hàng Hồng Cường tặng quà Giáng Sinh', 'mung-noel-2014-nha-hang-hong-cuong-tang-qua-giang-sinh', 'mung-noel-2014-nha-hang-hong-cuong-tang-qua-giang-sinh.jpg', 'Nhà hàng Hồng Cường tặng quà Giáng Sinh khi Quí khách đến ăn tiệc tại nhà hàng hoặc uống cà phê tại Hồng Cường', '<h2>Nhà hàng Hồng Cường tặng quà Giáng Sinh khi Quí khách đến ăn tiệc tại Nhà hàng hoặc uống cà phê tại Hồng Cường đều có quà tặng Giáng Sinh.</h2>\r\n\r\n<p><span style="line-height: 1.6em;">Với hóa đơn lớn hơn&nbsp;500.000đ Quí khách được tặng cây thông&nbsp;Noel:</span></p>\r\n\r\n<p style="text-align: center;"><img alt="cây thông Noel" src="/hongcuong/public/images/articles/mung-noel-2014-nha-hang-hong-cuong-tang-qua-giang-sinh-3.jpg" /></p>\r\n\r\n<p><span style="font-size: 13px;">Với hóa đơn lớn hơn&nbsp;250.000đ Quí khách được tặng nón&nbsp;ông già Noel:</span></p>\r\n\r\n<p style="text-align: center;"><img alt="Mừng Noel 2014 Nhà hàng Hồng Cường tặng quà Giáng Sinh" src="/hongcuong/public/images/articles/mung-noel-2014-nha-hang-hong-cuong-tang-qua-giang-sinh.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 315px; height: 315px;" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="font-size: 13px;">Với hóa đơn lớn hơn&nbsp;100.000đ Quí khách được tặng nón&nbsp;ông già Noel:</p>\r\n\r\n<p style="font-size: 13px; text-align: center;"><img alt="nón ông già Noel" src="/hongcuong/public/images/articles/mung-noel-2014-nha-hang-hong-cuong-tang-qua-giang-sinh-2.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 386px; height: 250px;" /></p>\r\n\r\n<p style="font-size: 13px;"><strong>Chương trình đặc sắc mừng Noel 2014</strong></p>\r\n\r\n<p style="font-size: 13px; text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Khuyến mãi giảm 10% trên tổng hóa đơn', 0, 'vi', ',14,', 1, '2013-12-12 20:21:53', '2013-12-12 11:48:09', 'admin', 'admin', 0),
(3, 'Hồng Cường Club - Nơi hội tụ những người đam mê xe cổ', 'hong-cuong-club-noi-hoi-tu-nhung-nguoi-dam-me-xe-co', 'hong-cuong-club-noi-hoi-tu-nhung-nguoi-dam-me-xe-co-2.jpg', 'Thú chơi xe cổ ngày nay đã không còn xa lạ với nhiều người và vẫn luôn được gắn cái mác "chịu chơi". Chịu chơi ở đây có thể nghĩ theo nhiều cách khác nhau nhưng tất cả đều xuất phát từ niềm đam mê. ', '<h2>Thú chơi xe cổ ngày nay đã không còn xa lạ với nhiều người và vẫn luôn được gắn cái mác "chịu chơi". Chịu chơi ở đây có thể nghĩ theo nhiều cách khác nhau nhưng tất cả đều xuất phát từ niềm đam mê.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Hồng Cường Club - Nơi hội tụ những người đam mê xe cổ" src="/hongcuong/public/images/articles/hong-cuong-club-noi-hoi-tu-nhung-nguoi-dam-me-xe-co-2.jpg" style="width: 700px; height: 407px;" /></p>\r\n\r\n<p>Mua xe không chỉ để đi mà còn để cưng chiều bởi xe cổ luôn được xem là những "cô nàng đỏng đảnh" lúc thì rồ ga đi nhẹ nhàng, lúc thì tắt tịt ngay giữa đường. Việc sửa chữa thay thế phụ tùng cũng là điều rất khó khăn với dân chơi xe vì những phụ tùng của các mẫu xe hầu như đã ngừng sản xuất từ lâu. Thêm vào đó là rất hiếm những thợ sửa xe có thể đảm nhận công việc này. Và một điều quan trọng khác với dân chơi xe là không muốn thay phụ tùng "lai" vào xe của mình.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/hong-cuong-club-noi-hoi-tu-nhung-nguoi-dam-me-xe-co-3.JPG" style="width: 700px; height: 305px;" /></p>\r\n\r\n<p><strong>Những người chơi xe cổ thường được chia ra làm 2 nhóm khác nhau:&nbsp;</strong></p>\r\n\r\n<p>Nhóm thứ nhất là những người mà tình yêu dành cho xe cổ đã ăn vào máu, tôn trọng những gì thuộc về lịch sử. Họ chơi những chiếc xe càng cổ và càng "zin" càng tốt. "Zin" ở đây không có nghĩa là xe chưa được sử dụng mà là những phụ tùng phải đúng theo xe và không thích thay phụ tùng khác vào, kể cả việc sơn lại lớp áo, thay cái yên xe đối với họ cũng khá xa vời.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/hong-cuong-club-noi-hoi-tu-nhung-nguoi-dam-me-xe-co-4.JPG" style="width: 700px; height: 382px;" /></p>\r\n\r\n<p>Xe hư là một trong những khó khăn lớn nhất với họ, việc tìm kiếm phụ tùng thay thế có thể làm họ tốn khá nhiều thời gian, công sức và tiền bạc nhưng vẫn chưa chắc là tìm được món đồ ưng ý.&nbsp;</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Hồng Cường Club - Nơi hội tụ những người đam mê xe cổ', 0, 'vi', ',23,24,', 1, '2013-12-12 20:22:54', '2013-12-12 14:07:24', 'admin', 'admin', 0),
(4, '200 xe cổ khoe dáng mừng lễ Giỗ Tổ', '200-xe-co-khoe-dang-mung-le-gio-to', '200-xe-co-khoe-dang-mung-le-gio-to-3.jpg', 'Gần 200 chiếc xe hơi, mô tô và xe gắn máy cổ đã tụ họp, diễu hành tại CLB Hùng Cường (Quốc lộ 13, quận Thủ Đức, TP.HCM).', '<h2>Sáng nay 31/3, gần 200 chiếc xe hơi, mô tô và xe gắn máy cổ đã tụ họp, diễu hành tại CLB Hùng Cường (Quốc lộ 13, quận Thủ Đức, TP.HCM).</h2>\r\n\r\n<p style="text-align: center;"><img alt="200 xe cổ khoe dáng mừng lễ Giỗ Tổ" src="/hongcuong/public/images/articles/200-xe-co-khoe-dang-mung-le-gio-to-3.jpg" style="width: 500px; height: 348px;" /></p>\r\n\r\n<p>Đây là sự kiện những người yêu xe cổ hướng tới ngày Giỗ Tổ 10/3 âm lịch. Cùng với những bạn trẻ bận khăn đóng, áo dài, với gánh hàng rong, ông đồ viết thư pháp..., những chiếc xe cổ kính nhuốm đượm màu thời gian đã tạo nên một không khí hoài niệm đầy lãng mạn.</p>\r\n\r\n<p style="text-align: center;"><img alt="200 xe cổ khoe dáng mừng lễ Giỗ Tổ" src="/hongcuong/public/images/articles/200-xe-co-khoe-dang-mung-le-gio-to.jpg" style="width: 500px; height: 320px;" /><br />\r\n<em><span style="font-size: 13px;">Quý bà hoài niệm với mô tô 3 bánh</span></em></p>\r\n\r\n<p>Từ sáng sớm, cổng vào CLB Hùng Cường đã có những “cô vợ 2” kiều diễm của các tay mê xe hơi cổ tiếp đón</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/200-xe-co-khoe-dang-mung-le-gio-to-2.jpg" style="width: 500px; height: 296px;" /><br />\r\n<em><span style="font-size: 13px;">Cô gái lái "Hoàng tử đen" CD125</span></em></p>\r\n\r\n<p>Phía sau là cả một khung cảnh đậm sắc màu cổ kính. Những chiếc mô tô của những thập niên 60-70, thế kỷ 20, vẫn lấp lánh và đầy uy lực.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', '200 xe cổ khoe dáng mừng lễ Giỗ Tổ', 0, 'vi', ',26,', 1, '2013-12-12 20:23:45', '2013-12-13 14:13:44', 'admin', 'admin', 0),
(5, 'Bộ sưu tập xế khủng nhất VN của đại gia Sài Thành', 'bo-suu-tap-xe-khung-nhat-viet-nam-cua-dai-gia-sai-thanh', 'bo-suu-tap-xe-khung-nhat-viet-nam-cua-dai-gia-sai-thanh-4.jpg', 'Không giống như nhiều “đại gia” khác thể hiện độ giàu có của mình bằng bộ sưu tập các loại ô tô đắt tiền, Nguyễn Hiển Tuấn chọn cho mình một lối đi riêng, khiến nhiều đại gia có “máu mặt” khác cũng phải ghen tị.', '<h2>Không giống như nhiều “đại gia” khác thể hiện độ giàu có của mình bằng&nbsp;bộ sưu tập&nbsp;các loại ô tô đắt tiền,&nbsp;Nguyễn Hiển Tuấn&nbsp;chọn cho mình một lối đi riêng, khiến nhiều&nbsp;đại gia&nbsp;có “máu mặt” khác cũng phải ghen tị.</h2>\r\n\r\n<p style="text-align: center;"><em><img alt="Bộ sưu tập xế khủng nhất Việt Nam của đại gia Sài Thành" src="/hongcuong/public/images/articles/bo-suu-tap-xe-khung-nhat-viet-nam-cua-dai-gia-sai-thanh.jpg" style="width: 500px; height: 374px;" /><br />\r\nTừ biệt danh Tuấn “hâm”</em></p>\r\n\r\n<p>Khi đã tạm ổn với cuộc sống của gia đình, niềm đam mê nung nấu phải quyết tâm làm giàu từ bé đã thôi thúc Tuấn nỗ lực nhiều hơn. Thế nhưng, trong một lần tình cờ xem qua tivi, thấy nhà Đài đưa tin về cảnh xe máy cũ, Tuấn bỗng thích và bắt tay thực hiện ngay ý định có phần “lạ đời” của mình.</p>\r\n\r\n<p>Hàng ngày, Tuấn tranh thủ giải quyết công việc rồi lân la ra khu chợ gần nhà tìm mua, bán xe máy cũ. Lúc đầu, nhiều tiểu thương thấy lạ, đâm ra nghi hoặc về căn bệnh “khác người” này của Tuấn và gọi anh bằng cái tên chẳng mấy tốt đẹp: Tuấn “hâm”.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/bo-suu-tap-xe-khung-nhat-viet-nam-cua-dai-gia-sai-thanh-3.jpg" style="width: 500px; height: 374px;" /></p>\r\n\r\n<p>Những chiếc&nbsp;xe đạp&nbsp;ở&nbsp;showroomcủa Tuấn đều cũng rất đặc biệt. Có những chiếc xe được sản xuất cách đây hàng trăm năm.</p>\r\n\r\n<p>Người thân trong gia đình cũng kịch liệt phản đối, thậm chí, còn bày tỏ thái độ ghét vì tự dưng trong nhà lại có một đứa con có phần “quái dở” đến thế. Bỏ ngoài tai tất cả, Tuấn vẫn lao vào sưu tập xe.</p>\r\n\r\n<p>Từ những chiếc xe thuộc dạng vứt đi, đến những chiếc xe chỉ toàn sắt gỉ, hay bị hỏng máy, Tuấn bỏ tiền ra mua tất, sau đó đem về nhà hì hục suốt ngày mày mò, sửa chữa lại. Việc làm này ngốn của Tuấn mất rất nhiều thời gian, có những lúc khiến anh chùn bước, đặc biệt khi rơi vào “tâm bão” chỉ trích của người thân. Trong lúc đang lưỡng lự, người em út của Tuấn tên Cường thấy vậy cũng xắn tay vào giúp anh. Khi có thêm đồng minh, Tuấn bắt đầu thể hiện rõ hơn niềm đam mê.</p>\r\n\r\n<p>“Bao nhiêu tiền bạc trong nhà cứ lần lượt “đội nón ra đi”, cũng may mà vợ tôi hiểu và thông cảm cho. Nói thật là thú đam mê này chỉ tốn tiền nhiều hơn, chứ lợi ích thì tôi chưa thấy đâu cả. Những người nào từng&nbsp;chơi xe&nbsp;cổ chắc họ sẽ thấm nhuần được điều này. Thường thì khi bỏ rất nhiều thời gian, công sức, tiền bạc ra để đầu tư mua xe cổ, nhưng nếu có tân trang lại đem bán chắc gì mấy người mua, mà nếu họ mua thì cũng chỉ với giá bèo" – Tuấn cho biết.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/bo-suu-tap-xe-khung-nhat-viet-nam-cua-dai-gia-sai-thanh-2.jpg" style="width: 480px; height: 642px;" /></p>\r\n\r\n<p>Tuấn giới thiệu từng chiếc xe trong&nbsp;bộ sưu tập&nbsp;của mình rất thuần thục như thuộc lòng bàn tay.</p>\r\n\r\n<p>Biết thế, nhưng ròng rã nhiều năm trời, anh vẫn ngược Bắc, xuôi Nam, lên những vùng khỉ ho cò gáy để sưu tập xe. Trong mỗi chuyến đi ấy, có lần anh trở về tay trắng, nhưng cũng có những chuyến đi dài ngày anh sưu tập được số lượng xe tương đối khá.</p>\r\n\r\n<p>Anh kể, một lần nửa đêm, đang yên giấc ngủ thì chuông điện thoại reo lên, đang ngái ngủ thì đầu dây bên kia một người quen thông báo có người ở Đà Lạt muốn bán loại xe anh đang cần. Không cần suy nghĩ, anh khoác vội áo và lên đường vượt hàng trăm km tìm đến địa chỉ. Thế nhưng, đến nơi anh thất vọng vì người bạn nhầm thông tin loại xe. Anh thất thểu trở về với hai bàn tay trắng. Và những lần như thế đã khiến anh quen dần hơn với nỗi buồn ở các chuyến đi.</p>\r\n', 'Bộ sưu tập xế khủng nhất Việt Nam của đại gia Sài Thành', 0, 'vi', ',26,', 1, '2013-12-12 20:55:33', '2013-12-13 14:42:58', 'admin', 'admin', 0),
(6, 'Không gian nhà hàng Hồng Cường', 'khong-gian-nha-hang-hong-cuong', 'baiviet-9.jpg', 'Ngay từ những bước chân đầu tiên tới Nhà hàng Ngọc Mai Vàng, thực khách sẽ thấy Nhà hàng được bao trùm bởi một màu vàng tươi mới, rạng rỡ, sắc màu của những bông mai vàng phương Nam khoe sắc trên đất thủ đô Ngàn năm tuổi.', '<h2>Ngay từ những bước chân đầu tiên tới Nhà hàng Ngọc Mai Vàng, thực khách sẽ thấy Nhà hàng được bao trùm bởi một màu vàng tươi mới, rạng rỡ, sắc màu của những bông mai vàng phương Nam khoe sắc trên đất thủ đô Ngàn năm tuổi.</h2>\r\n\r\n<p style="text-align: center;"><img alt="1" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/121.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em>&nbsp;Sắc vàng bao phủ tạo cảm giác ấm cúng và ngon miệng cho thực khách</em></p>\r\n\r\n<p>Điểm xuyết trên toàn khuôn viên thoáng đãng của nhà hàng là những chiếc đèn lồng màu vàng có thêu họa tiết hoa mai mềm mại. Sử dụng tông màu vàng làm chủ đạo, từ những chiếc khăn ăn xinh xắn, những hàng ghế, những dãy bàn, ánh đèn tới trần nhà đều mang màu đặc trưng của loài hoa tượng trưng cho mùa Xuân phương Nam.</p>\r\n\r\n<p style="text-align: center;"><img alt="3" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/311.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em>Những chiếc bàn tròn cho nhóm thực khách dưới 10 người</em></p>\r\n\r\n<p style="text-align: center;"><img alt="2" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/211.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">Những dãy bàn dài không bị giới hạn bởi không gian</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="4" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/411.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">&nbsp;Các quầy đảo với hàng chục món ăn được đặt ở những vị trí trung tâm của Nhà hàng</span></em></p>\r\n\r\n<p>Bên những góc bàn riêng cho những bữa tiệc dưới 10 người, thực khách có thể chọn những góc bàn gần nhất với những ô cửa sổ lớn để ngắm nhìn vẻ đẹp một góc riêng của thủ đô Hà Nội.</p>\r\n\r\n<p>Đặc biệt, &nbsp;không gian thoáng đãng, rộng mở với tổng diện tích lên tới 700m2&nbsp;&nbsp;còn giúp cho Ngọc Mai Vàng tạo được lợi thế nổi trội bởi những dãy bàn dài thẳng tắp vô cùng tiện ích với những bữa tiệc lớn hàng chục người không bị chia nhỏ bởi sự giới hạn của không gian mà trở nên sum vầy, ấm cúng.</p>\r\n\r\n<p style="text-align: center;"><img alt="6" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/611.jpg" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">Mọi thứ dường như thật hoàn hảo cho những bữa tiệc lớn như tiệc đám cưới, sinh nhật…</span></em></p>\r\n\r\n<p style="text-align: center;"><img alt="7" src="http://ngocmai.com.vn/ngoc-mai-vang/wp-content/uploads/2013/04/711.jpg" style="line-height: 1.6em;" /></p>\r\n\r\n<p style="text-align: center;"><em><span style="line-height: 1.6em;">… hay những bữa tiệc nhỏ ấm cúng</span></em></p>\r\n\r\n<p>Ngọc Mai Vàng mang vẻ đẹp kiến trúc thuần Việt vô cùng gần gũi nhưng vẫn tiện nghi và hiện đại luôn đem lại cho thực khách cảm giác thư thái khi thưởng thức những món ăn ngon.</p>\r\n\r\n<p style="text-align: right;"><strong>Hong Cuong Club</strong></p>\r\n', 'Không gian nhà hàng Hồng Cường', 0, 'vi', ',3,', 1, '2013-12-13 15:31:36', '2013-12-13 15:31:36', 'admin', NULL, 0),
(7, 'Giới thiệu tiệc cưới, sảnh cưới Hồng Cường', 'gioi-thieu-tiec-cuoi-sanh-cuoi-hong-cuong', 'gioi-thieu-tiec-cuoi-sanh-cuoi-hong-cuong.jpg', 'Nhà hàng tiệc cưới Hồng Cường tọa lạc Quận Thủ Đức, được xây dựng với tổng diện tích sàn 1000m² với quy mô 2 tầng bao gồm 10 hội trường chuyên phục vụ các cuộc hội nghị cũng như các buổi yến tiệc, tiệc cưới. ', '<h2><span style="line-height: 1.6em;">Nhà hàng&nbsp;tiệc cưới Hồng Cường&nbsp;tọa lạc&nbsp;Quận Thủ Đức, được xây dựng với tổng diện tích sàn 1000m²&nbsp;với quy mô 2 tầng bao gồm 10 hội trường chuyên phục vụ các cuộc hội nghị cũng như các buổi yến tiệc, tiệc cưới. Vì vậy mà trung tâm có thể phục vụ cho hơn 2000 khách hội nghị hay 1400 khách trong các tiệc cưới sang trọng. Đặc biệt, với </span><span style="line-height: 1.6em;">có thể chứa hơn 600 xe máy cùng không gian xung quanh rộng rãi giữ xe hơi tuyệt đối an toàn, thuận tiện.</span></h2>\r\n\r\n<p style="text-align: center;"><span style="line-height: 1.6em;"><img alt="Giới thiệu tiệc cưới, sảnh cưới Hồng Cường" src="/hongcuong/public/images/articles/gioi-thieu-tiec-cuoi-sanh-cuoi-hong-cuong.jpg" style="width: 700px; height: 440px;" /></span></p>\r\n\r\n<p>Với kiến trúc hiện đại, khuôn viên rộng rãi, <strong>Nhà hàng&nbsp;tiệc cưới Hồng Cường</strong> sẽ là nơi lí tưởng để tổ chức tiệc cưới trọn vẹn và sang trọng, lịch lãm và rực rỡ nhưng không làm mất đi sự ấm áp, gần gũi dành cho các đôi uyên ương. Với 7 sảnh tiệc đa dạng khác nhau từ 15 đến 60 bàn, tất cả các không gian sảnh được thiết kế với tầm nhìn thông thoáng, hệ thống ánh sáng hài hòa, ấm cúng cùng với trang thiết bị âm thanh hiện đại… đây sẽ là nơi thăng hoa của tình yêu đôi lứa. Bên cạnh đó, với đội ngũ quản lý có năng lực, các đầu bếp chuyên nghiệp, tay nghề cao cùng với hệ thống nhân viên được đào tạo bài bản.</p>\r\n\r\n<p style="text-align: center;"><img alt="Nhà hàng tiệc cưới Hồng Cường khuôn viên rộng rãi" src="/hongcuong/public/images/articles/gioi-thieu-tiec-cuoi-sanh-cuoi-hong-cuong-2.jpg" style="width: 700px; height: 410px;" /></p>\r\n\r\n<p>Đến với Hồng Cường&nbsp;quý khách sẽ hoàn toàn hài lòng với cung cách phục vụ nhanh nhẹn, ân cần, chu đáo cũng như thật sự ngon miệng trong từng bữa tiệc bởi chất lượng, sự đa dạng, phong phú và hấp dẫn của thực đơn.</p>\r\n\r\n<p style="font-size: 13px;"><span style="line-height: 1.6em;">Phòng tiệc A có sức chứa 250&nbsp; khách.&nbsp;</span></p>\r\n\r\n<p style="font-size: 13px;">Phòng tiệc B có sức chứa 350 - 500 khách.&nbsp;</p>\r\n\r\n<p style="font-size: 13px;">Đội ngũ nhân viên phục vụ tận tình, chuyên nghiệp đáp ứng được nhu cầu của nhiều đối tượng khách hàng.&nbsp;</p>\r\n\r\n<p style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/gioi-thieu-tiec-cuoi-sanh-cuoi-hong-cuong-4.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 700px; height: 377px;" /></p>\r\n\r\n<p style="font-size: 13px;">Thực đơn đa dạng, phong phú mang lại cho khách hàng nhiều sự lựa chọn.&nbsp;</p>\r\n\r\n<p style="font-size: 13px;">Với phương châm “<strong>Ngày cưới của bạn, ngày trọng đại của chúng tôi</strong>”. Chúng tôi tâm niệm mỗi lễ cưới sẽ là một kiệt tác nghệ thuật, mỗi buổi tiệc thành công là món quà trọn vẹn dành cho Tân lang - Tân nương trong ngày hạnh phúc.</p>\r\n', 'Giới thiệu tiệc cưới, sảnh cưới Hồng Cường', 0, 'vi', ',17,18,', 1, '2013-12-18 10:31:03', '2013-12-18 10:43:54', 'admin', 'admin', 0),
(8, 'Thực đơn tiệc - Số 01', 'thuc-don-tiec-so-01', 'thuc-don-tiec-so-01.jpg', 'Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên. ', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 01', 0, 'vi', ',19,', 1, '2013-12-18 11:00:14', '2013-12-18 11:00:14', 'admin', NULL, 0),
(9, 'Thực đơn tiệc - Số 02', 'thuc-don-tiec-so-02', 'thuc-don-tiec-so-01-04.jpg', 'Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng, nhà hàng phục vụ từ 400 đến 500 khách.', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 02', 0, 'vi', ',19,', 1, '2013-12-18 11:00:58', '2013-12-18 11:00:58', 'admin', NULL, 0),
(10, 'Thực đơn tiệc - Số 03', 'thuc-don-tiec-so-03', 'thuc-don-tiec-so-01-03.jpg', 'Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức đang trở thành sự lựa chọn hàng đầu cho các cặp đôi.', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 03', 0, 'vi', ',19,', 1, '2013-12-18 11:01:37', '2013-12-18 11:01:37', 'admin', NULL, 0),
(11, 'Thực đơn tiệc - Số 04', 'thuc-don-tiec-so-04', 'thuc-don-tiec-so-01-02.jpg', 'Cái tên Hồng Cường đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”.', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 04', 0, 'vi', ',19,', 1, '2013-12-18 11:02:46', '2013-12-18 11:02:46', 'admin', NULL, 0),
(12, 'Thực đơn tiệc - Số 05', 'thuc-don-tiec-so-05', 'thuc-don-tiec-so-01-05.jpg', 'Đến với Hồng Cường quý khách sẽ hoàn toàn hài lòng với cung cách phục vụ nhanh nhẹn, ân cần, chu đáo cũng như thật sự ngon miệng trong từng bữa tiệc bởi chất lượng, sự đa dạng, phong phú và hấp dẫn của thực đơn.', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 05', 0, 'vi', ',19,', 1, '2013-12-18 11:03:12', '2013-12-18 11:04:21', 'admin', 'admin', 0);
INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `metaDescription`, `content`, `metaKeyword`, `other`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(13, 'Thực đơn tiệc - Số 06', 'thuc-don-tiec-so-06', 'thuc-don-tiec-so-01-06.jpg', 'Nhà hàng Hồng Cường xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.', '<h2>Để có một tiệc cưới hoàn hảo – sự kiện trọng đại nhất trong cuộc đời mỗi người, địa điểm cưới có lẽ là yếu tố cần được cân nhắc đầu tiên.&nbsp;</h2>\r\n\r\n<p>Các bạn trẻ ưa thích không gian truyền thống có thể chọn phòng đại tiệc có sức chứa lớn hoàn toàn không cột trụ, trần cao thoáng,&nbsp;nhà hàng phục vụ từ 400 đến 500 khách.</p>\r\n\r\n<p><strong>Thực đơn tiệc - Số 01 của Hồng Cường gồm có:</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-02.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Món khai vị</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-03.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Đồ nguội</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-04.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Thịt tôm xào Cam</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-05.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Rau xào tỏi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-06.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;">Nấm hầm gà tơ</p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-08.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Vịt quay Bắc Kinh</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="La séc" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-09.jpg" style="width: 400px; height: 256px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">La séc</span></p>\r\n			</td>\r\n			<td>\r\n			<p style="text-align: center;"><strong style="font-size: 13px; text-align: center;"><img alt="" src="/hongcuong/public/images/articles/thuc-don-tiec-so-01-07.jpg" style="width: 400px; height: 261px;" /></strong></p>\r\n\r\n			<p style="text-align: center;"><span style="font-size: 13px; text-align: center;">Lẩu hải sản</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sở hữu không gian đẹp và sang trọng, các nhà hàng tiệc cưới tại Thủ Đức&nbsp;đang trở thành sự lựa chọn hàng đầu cho các cặp đôi. Không ngoại lệ, cái tên Hồng Cường&nbsp;đang ngày càng trở thành một lựa chọn “đắc địa” của những cặp đôi muốn một đám cưới “trong mơ”. Nhà hàng Hồng Cường&nbsp;xứng đáng là sự lựa chọn hàng đầu cho các cặp đôi mong muốn có một ngày trọng đại thật hoàn hảo mà ấm cúng.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Thực đơn tiệc - Số 06', 0, 'vi', ',19,', 1, '2013-12-18 11:04:48', '2013-12-18 11:04:48', 'admin', NULL, 0),
(14, 'Tặng trọn gói Album ảnh ngoại cảnh Tp.HCM', 'tang-tron-goi-album-anh-ngoai-canh-tp-hcm', '', 'Sự kiện nổi bật trong tháng 12 năm 2013 để các đôi tình nhân hạnh phúc trong ngày cưới, Hồng Cường đặc biệt thông báo khi đặc tiệc cưới tại Nhà hàng tiệc cưới Hồng Cường Quí khách sẽ được tặng 1 Album ảnh ngoãi cảnh do Hồng Cường chụp tại Tp.HCM', '<h2>Sự kiện nổi bật trong tháng 12 năm 2013 để các đôi tình nhân hạnh phúc trong ngày cưới, Hồng Cường đặc biệt thông báo khi đặc tiệc cưới tại Nhà hàng tiệc cưới Hồng Cường Quí khách sẽ được tặng 1 Album ảnh ngoãi cảnh do Hồng Cường chụp tại Tp.HCM</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/tang-tron-goi-album-anh-ngoai-canh-tp-hcm.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 800px; height: 300px;" /></p>\r\n\r\n<p style="text-align: center;"><em>Album ngoại cảnh sang trọng, lưu lại kỷ niệm tuyệt vời trong ngày cưới</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/tang-tron-goi-album-anh-ngoai-canh-tp-hcm-2.jpg" style="width: 650px; height: 325px;" /></p>\r\n\r\n<p style="text-align: center;"><em>Ngoại cảnh ở Quận 7, Tp.HCM</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/tang-tron-goi-album-anh-ngoai-canh-tp-hcm-3.jpg" style="width: 600px; height: 400px;" /></p>\r\n\r\n<p style="text-align: center;"><em>Ngoại cảnh tại nhà hàng tiệc cưới Hồng Cường</em></p>\r\n\r\n<p><strong>Chương trình chỉ kéo dài trong tháng 12 năm 2013.</strong></p>\r\n\r\n<p><strong>Mọi chi tiết xin liên hệ:&nbsp;090 694 11 12 (Anh Khoa)</strong></p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Tặng trọn gói Album ảnh ngoại cảnh Tp.HCM', 0, 'vi', ',20,', 1, '2013-12-18 11:15:57', '2013-12-18 11:17:19', 'admin', 'admin', 0),
(15, 'Mừng sinh nhật 2 tuổi của Hồng Cường club', 'mung-sinh-nhat-2-tuoi-cua-hong-cuong-club', 'mung-sinh-nhat-2-tuoi-cua-hong-cuong-club-3.jpg', 'Sau 2 ngày sinh nhật hòanh tráng ngày 17-18/08/2013, Câu Lạc Bộ Xe Cổ Hồng Cường đã có 1 kỳ sinh nhật 2 tuổi thật đáng nhớ trong lòng thực khách gần xa.', '<h2>Sau 2 ngày sinh nhật hòanh tráng ngày 17-18/08/2013, Câu Lạc Bộ Xe Cổ Hồng Cường đã có 1 kỳ sinh nhật 2 tuổi thật đáng nhớ trong lòng thực khách gần xa.</h2>\r\n\r\n<p>Sáng ngày 17, các khách hàng đã được thưởng thức chương trình ca vũ nhạc đặc sắc:</p>\r\n\r\n<p style="text-align: center;"><img alt="Mừng sinh nhật 2 tuổi của Hồng Cường club" src="/hongcuong/public/images/articles/mung-sinh-nhat-2-tuoi-cua-hong-cuong-club-2.jpg" style="width: 700px; height: 369px;" /></p>\r\n\r\n<p>Buổi tối, các thực khách sẽ bị chóang ngộp bởi sự trang trí cầu kỳ, tỉ mỉ của &nbsp;&nbsp;nghệ nhân tỉa hoa của Hồng Cường với chiếc bàn sinh nhật tuyệt đẹp trang trí bởi các rau , củ , quả hàng ngày</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/mung-sinh-nhat-2-tuoi-cua-hong-cuong-club.jpg" style="width: 700px; height: 442px;" /></p>\r\n\r\n<p>Khu vực buffet đã set up sẵn sàng để chào đón thực khách: với các món hải sản tươi sống, các thức ăn nhanh hay nhưng món ăn truyền thống, &nbsp;kể cả các món lẩu cũng đã được lên hàng</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/mung-sinh-nhat-2-tuoi-cua-hong-cuong-club-3.jpg" style="width: 700px; height: 466px;" /></p>\r\n\r\n<p>Hai ngày kỷ niệm mừng sinh nhật &nbsp;&nbsp;của nhà Hàng Hồng Cường đã khép lại &nbsp;nhưng những dấu ấn động lại trong lòng thực khách vẫn còn mãi. Thông qua kỷ niệm sinh nhật lần 2 này, Ban Giám Đốc nhà hàng Hồng Cường xin gửi lời cảm ơn chân thành và sâu sắc đối với các khách hàng đã luôn ủng hộ nhà hàng trong suốt những năm vừa qua. Nhà hàng Hồng Cường sẽ luôn cố gắng hết sức mình để lúc nào cũng là địa điểm ăn uống vui chơi tin cậy cho các thực khách của mình.&nbsp;</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Mừng sinh nhật 2 tuổi của Hồng Cường club', 0, 'vi', ',26,', 1, '2013-12-18 14:52:27', '2013-12-18 14:52:27', 'admin', NULL, 0),
(16, 'Mừng ngày phụ nữ Việt Nam 20/10', 'mung-ngay-phu-nu-viet-nam-20-10-tron-ven-niem-hanh-phuc', 'mung-ngay-phu-nu-viet-nam-20-10-tron-ven-niem-hanh-phuc-2.jpg', 'Mừng ngày phụ nữ Việt Nam 20/10 – ngày tôn vinh chị em phụ nữ. Nhà hàng xe cổ Hồng Cường hân hoan gửi tặng đến các mẹ, các chị va các em trong ngày dành cho riêng mình với “1 cành hồng thắm & 1 ly kem mát dịu” trong ngày 20/10.', '<p>Mừng ngày phụ nữ Việt Nam 20/10 – ngày tôn vinh chị em phụ nữ. Nhà hàng xe cổ Hồng Cường hân hoan gửi tặng đến các mẹ, các chị va các em trong ngày dành cho riêng mình với “1 cành hồng thắm &amp; 1 ly kem mát dịu” trong ngày 20/10.</p>\r\n\r\n<p style="text-align: center;"><img alt="Mừng ngày phụ nữ Việt Nam 20/10, Trọn vẹn niềm hạnh phúc" src="/hongcuong/public/images/articles/mung-ngay-phu-nu-viet-nam-20-10-tron-ven-niem-hanh-phuc.jpg" style="width: 820px; height: 205px;" /></p>\r\n\r\n<p>Không chỉ vậy nhà hàng xe cổ Hồng Cường còn muốn là nơi đem đến “sự thăng hoa cho tình yêu đôi lứa” với không gian lãng mạn bên bờ sông cùng với ánh nế dịu dàng……hứa hẹn sẽ đem đến cho các đôi tình nhân một buổi tối tràn đầy ý nghĩa</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/mung-ngay-phu-nu-viet-nam-20-10-tron-ven-niem-hanh-phuc-2.jpg" style="width: 640px; height: 480px;" /></p>\r\n\r\n<p>Bên cạnh không gian lãng mạn của gia đình đó là không gian ấm cúng dành cho gia đình. Nơi mà người mẹ, người vợ được xum vầy bên những người đàn ông của đời mình.&nbsp; Không phải là nến hay hoa hồng mà nơi của ấm cúng, của tình thân lên ngôi.</p>\r\n\r\n<p>Còn chần chờ gì nữa mà không liên lạc với chúng tôi để có được sự phục vụ tốt nhất.</p>\r\n\r\n<p><strong>HÃY ĐẾN VỚI HỒNG CƯỜNG -&nbsp;TRỌN VẸN NIỀM VUI ĐỘC LẬP</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ :</p>\r\n\r\n<p>Địa chỉ : 195 Quốc lộ 13, Phường Hiệp Bình Chánh, Quận Thủ Đức, TP.HCM</p>\r\n\r\n<p>ĐT : 0837267477</p>\r\n\r\n<p>Website : hongcuongclub.com</p>\r\n', 'Mừng ngày phụ nữ Việt Nam 20/10', 0, 'vi', ',26,', 1, '2013-12-18 14:55:09', '2013-12-18 14:55:50', 'admin', 'admin', 0),
(17, 'Xe gắn máy tại miền Nam trước 75', 'xe-gan-may-tai-mien-nam-truoc-75', 'xe-gan-may-tai-mien-nam-truoc-75-2.jpg', 'Có thể nói xe đạp và xe gắn máy là phương tiện di chuyển chiếm đa số  tại miền Nam trước 1975 và cho đến nay, xe gắn máy vẫn là phương tiện  di chuyển được nhiều người sử dụng nhất . Bài này xin nhắc lại một số  xe gắn máy đã hiện diện tại miền Nam trước 1975.', '<h2>Có thể nói xe đạp và xe gắn máy là phương tiện di chuyển chiếm đa số&nbsp; tại miền Nam trước 1975 và cho đến nay, xe gắn máy vẫn là phương tiện&nbsp; di chuyển được nhiều người sử dụng nhất . Bài này xin nhắc lại một số&nbsp; xe&nbsp;gắn máy đã hiện diện&nbsp;tại miền&nbsp;Nam&nbsp;trước 1975.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Xe gắn máy tại miền Nam trước 75" src="/hongcuong/public/images/articles/xe-gan-may-tai-mien-nam-truoc-75.jpg" style="width: 500px; height: 375px;" /></p>\r\n\r\n<p>Nói đến xe gắn máy thì chắc là mọi người sống tại miền&nbsp;Nam&nbsp;trước đây&nbsp; đều&nbsp;biết đến xe Mobylette. Vì Việt&nbsp;Nam&nbsp;là thuộc địa của Pháp nên hãng&nbsp; Motobécane&nbsp;của Pháp, chế tạo ra chiếc Mobylette, đương nhiên là hiện&nbsp; diện trên thị trường Việt&nbsp;Nam. Nhưng nhiều người biết đến tên&nbsp; Mobylette&nbsp;hơn là Motobécane. Xe Mobylette ở Việt&nbsp;Nam&nbsp;có loại Mobylette&nbsp; vàng&nbsp;và Mobylette xanh. Cả hai đều dùng động cơ 49,99cc để được xếp&nbsp; vào loại vélomoteur, không cần bằng lái, nhưng Mobylette vàng thì nhỏ&nbsp; hơn, chỉ có ống nhún phía trước, còn Mobylette xanh thì lớn, nặng hơn&nbsp; có ống nhún ở cả bánh trước lẫn bánh sau nên đi êm hơn và giá cao&nbsp; hơn .</p>\r\n\r\n<p style="text-align: center;"><img alt="Xe gắn máy tại miền Nam trước 75 2" src="/hongcuong/public/images/articles/xe-gan-may-tai-mien-nam-truoc-75-3.jpg" style="width: 470px; height: 407px;" /></p>\r\n\r\n<p>Xe Mobylette xem chừng ra không thay đổi nhiều lắm qua nhiều năm.&nbsp;Xe&nbsp; Mobylettetrong thập niên 1950 thân là những ống tuýp hàn lại. Qua&nbsp; thập&nbsp;niên thì thân làm bằng tôn ép.&nbsp;Màu sắc cũng ít thay đổi.&nbsp;Có lúc&nbsp; Mobylette&nbsp;vàng đổi thành Mobylette xám. Xe Mobylette được chế tạo để&nbsp; dễ&nbsp;sử dụng. Xe không cần sang số mà dùng embrayage automatique, vặn ga&nbsp; lớn&nbsp;thì xe chạy nhanh, vặn ga nhỏ lại thì xe chạy chậm và đứng lại.&nbsp; Khi muốn nổ máy thì chỉ cần đạp cho nhanh là&nbsp;xe&nbsp;nổ máy. Đạp hoài không&nbsp; nổ&nbsp;thì chỉ gần gạt môt cái chốt ở đĩa có dây couroie ăn vào động cơ để&nbsp; tách rời động cơ và bánh sau thì có thể đạp bộ về nhà.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/hongcuong/public/images/articles/xe-gan-may-tai-mien-nam-truoc-75-2.jpg" style="width: 450px; height: 279px;" /></p>\r\n\r\n<p>Nếu có khi nào trong lúc bạn đạp xe đạp rồi nghĩ bụng sao không gắn&nbsp; một&nbsp;cái động cơ nhỏ lên xe đạp để khỏi phải đạp thì ý nghĩ đó đã có&nbsp; người nghĩ đến và chế tạo ra chiếc Vélosolex. Xe Vélosolex là một&nbsp;chiếc&nbsp;xe&nbsp;đạp có gắn động cơ lên bánh trước. Động cơ này làm lăn một&nbsp; cục&nbsp;đá tròn phía dưới . Khi người lái kéo cái cần trước mặt thì cục đá&nbsp; dở&nbsp;hổng lên khỏi bánh trước và có thể đạp như xe đạp. Khi đạp đến một&nbsp; tốc&nbsp;độ nào đó, hạ cần xuống thì tốc độ của xe làm cho động cơ nổ máy&nbsp; và động cơ kéo chiếc xe đi bằng bánh trước. Khi xe đã chạy ngon trớn&nbsp; thì&nbsp;người lái có thể rút chân lên miếng để chân nhỏ ở giữa xe mà ngồi&nbsp; một cách thoải mái. Từ một ý kiến rất giản dị phát xuất giữa thế kỷ&nbsp; 20, xe Vélosolex vẫn còn tồn tại qua đến đầu thế kỷ 21.</p>\r\n\r\n<p style="text-align: right;"><strong>Hồng Cường Club</strong></p>\r\n', 'Xe gắn máy tại miền Nam trước 75', 0, 'vi', ',25,', 1, '2013-12-18 14:59:12', '2013-12-18 14:59:12', 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_comment`
--

CREATE TABLE IF NOT EXISTS `info_comment` (
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

INSERT INTO `info_comment` (`id`, `name`, `email`, `content`, `info_alias`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trần Nhân', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', NULL, 0),
(2, 'Thu Thủy', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(3, 'Tran Van A', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(4, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(5, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(6, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(7, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(8, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(9, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(10, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(11, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(12, 'Tran van B', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(13, 'Tran Van C', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(14, 'Tran Van D', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(15, 'tran nhan', '', '', 'dac-diem-ruou-sim-phu-quoc', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(16, 'Trần Hiếu Nhân', '', '', 'than-hoat-tinh-gia-re', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0),
(17, 'asas', '', '', 'than-hoat-tinh-gia-re', 1, '0000-00-00 00:00:00', NULL, 'khachhang', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
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

INSERT INTO `language` (`id`, `name`, `ma`, `order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
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

INSERT INTO `menu` (`id`, `name`, `name_rewrite`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `lang`, `other`, `order`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', 'trang-chu/', '', 'Nhà hàng tiệc cưới HỒNG CƯỜNG - HONG CUONG CLUB', 'Nhà hàng tiệc cưới HỒNG CƯỜNG - HONG CUONG CLUB', 'Nhà hàng tiệc cưới HỒNG CƯỜNG,nha hang tiec cuoi', 0, 1, ',7,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 14:32:14', 'admin', 'admin', 0),
(2, 'Giới thiệu nhà hàng', 'gioi-thieu-nha-hang-hong-cuong', 'gioi-thieu-nha-hang-hong-cuong/', '', 'Giới thiệu nhà hàng Hồng Cường', 'Giới thiệu nhà hàng ẩm thực Hồng Cường', 'Giới thiệu nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 11, 1, '2013-10-09 15:38:02', '2013-10-09 14:13:24', 'admin', 'admin', 0),
(3, 'Không gian', 'khong-gian-nha-hang-hong-cuong', 'khong-gian-nha-hang-hong-cuong/', '', 'Không gian nhà hàng Hồng Cường', 'Bao phủ toàn bộ không gian Hồng Cường là 4 gam màu chủ đạo: trắng, đen, đỏ, vàng mang đến cảm giác thư thái, ấm cúng, giúp kích thích giác quan thưởng thức ẩm thực cho mọi thực khách.', 'Không gian nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 12, 1, '2013-10-09 15:38:25', '2013-10-09 17:07:46', 'admin', 'admin', 0),
(4, 'Ẩm thực Hồng Cường', 'am-thuc-hong-cuong', 'gioi-thieu-nha-hang-hong-cuong/gioi-thieu-nha-hang-am-thuc-hong-cuong.html', 'nha-hang-hong-cuong.png', 'Ẩm thực Hồng Cường', 'Nhà hàng hải sản cao cấp, tổ chức tiệc cưới, tiệc hội nghị, tiệc lưu động và tổ chức sự kiện. Với bãi đỗ xe có sức chứa lên đến hàng nghìn xe. Không gian rộng, thoáng mát.', 'Ẩm thực Hồng Cường', 0, 2, ',1,3,', 'vi', 0, 10, 1, '2013-10-09 15:38:38', '2013-10-09 11:35:07', 'admin', 'admin', 0),
(5, 'Giới thiệu', 'gioi-thieu', 'javascript:;#gt', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',2,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 15:34:26', 'admin', 'admin', 0),
(6, 'Diễn đàn', 'dien-dan', 'javascript:;#dd', '', 'Diễn đàn', 'Diễn đàn', 'Diễn đàn', 0, 9, ',2,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 15:34:38', 'admin', 'admin', 0),
(7, 'Làng ẩm thực', 'lang-am-thuc', 'javascript:;#at', '', 'Làng ẩm thực', 'Làng ẩm thực', 'Làng ẩm thực', 0, 2, ',2,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 15:34:49', 'admin', 'admin', 0),
(8, 'Cafe sân vườn', 'cafe-san-vuon', 'javascript:;#cf', '', 'Cafe sân vườn', 'Cafe sân vườn', 'Cafe sân vườn', 0, 2, ',2,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 15:34:57', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ', 0, 8, ',2,', 'vi', 0, 6, 1, '2013-10-09 15:40:52', '2013-10-09 15:35:19', 'admin', 'admin', 0),
(10, 'Facebook', 'facebook', 'javascript:;', 'facebook.gif', 'Facebook', 'Facebook', 'Facebook', 0, 9, ',6,', 'vi', 0, 101, 1, '2013-12-12 10:41:04', '2013-12-12 14:33:02', 'admin', 'admin', 0),
(11, 'Youtube', 'youtube', 'javascript:;#2', 'youtube.gif', 'Youtube', 'Youtube', 'Youtube', 0, 9, ',6,', 'vi', 0, 102, 1, '2013-12-12 10:42:27', '2013-12-12 14:33:12', 'admin', 'admin', 0),
(12, 'Google+', 'google', 'javascript:;#3', 'google.gif', 'Google+', 'Google+', 'Google+', 0, 9, ',6,', 'vi', 0, 103, 1, '2013-12-12 10:42:52', '2013-12-12 14:33:19', 'admin', 'admin', 0),
(13, 'Twitter', 'twitter', 'javascript:;#4', 'twitter.gif', 'Twitter', 'Twitter', 'Twitter', 0, 9, ',6,', 'vi', 0, 104, 1, '2013-12-12 10:43:12', '2013-12-12 14:33:23', 'admin', 'admin', 0),
(14, 'Sự kiện - Nhà hàng', 'su-kien-nha-hang-hong-cuong', 'su-kien-nha-hang-hong-cuong/', '', 'Sự kiện - Nhà hàng Hồng Cường', 'Với thiết kế sang trọng, nhà hàng Hồng Cường ra đời nhằm đáp ứng nhu cầu sành ăn của thực khách Sài Thành.', 'Sự kiện - Nhà hàng Hồng Cường', 4, 2, ',3,', 'vi', 0, 13, 1, '2013-12-12 14:11:00', '2013-12-12 20:15:04', 'admin', 'admin', 0),
(15, 'Hình ảnh nhà hàng', 'hinh-anh-nha-hang-hong-cuong', 'hinh-anh-nha-hang-hong-cuong/', '', 'Hình ảnh nhà hàng Hồng Cường', 'Hình ảnh nhà hàng Hồng Cường', 'Hình ảnh nhà hàng Hồng Cường', 4, 4, ',3,', 'vi', 0, 14, 1, '2013-12-12 14:11:43', '2013-12-12 14:21:14', 'admin', 'admin', 0),
(16, 'Liên hệ', 'lien-he-nha-hang-hong-cuong', 'lien-he-nha-hang-hong-cuong/', '', 'Liên hệ nhà hàng Hồng Cường', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ nhà hàng Hồng Cường', 4, 8, ',3,', 'vi', 0, 15, 1, '2013-12-12 14:12:19', '2013-12-12 13:33:04', 'admin', 'admin', 0),
(17, 'Tiệc cưới Hồng Cường', 'tiec-cuoi-hong-cuong', 'tiec-cuoi-hong-cuong/', 'tiec-cuoi-hong-cuong.png', 'Tiệc cưới Hồng Cường', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'Tiệc cưới Hồng Cường', 0, 2, ',1,4,', 'vi', 0, 30, 1, '2013-12-12 14:13:52', '2013-12-12 14:39:38', 'admin', 'admin', 0),
(18, 'Giới thiệu tiệc cưới', 'gioi-thieu-tiec-cuoi-hong-cuong', 'gioi-thieu-tiec-cuoi-hong-cuong/', '', 'Giới thiệu tiệc cưới Hồng Cường', 'Giới thiệu tiệc cưới Hồng Cường', 'Giới thiệu tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 31, 1, '2013-12-12 14:14:30', '2013-12-12 14:14:40', 'admin', 'admin', 0),
(19, 'Thực đơn tiệc', 'thuc-don-tiec-cuoi-hong-cuong', 'thuc-don-tiec-cuoi-hong-cuong/', '', 'Thực đơn tiệc cưới Hồng Cường', 'Thực đơn tiệc cưới hấp dẫn hơn 100 món ăn tự chọn theo phong cách châu Âu sang trọng, chỉ từ 3 đến 5 triệu cho mỗi bàn tiệc.', 'Thực đơn tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 32, 1, '2013-12-12 14:15:36', '2013-12-12 10:08:02', 'admin', 'admin', 0),
(20, 'Sự kiện - Khuyến mãi', 'su-kien-khuyen-mai-tiec-cuoi-hong-cuong', 'su-kien-khuyen-mai-tiec-cuoi-hong-cuong/', '', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 'Sự kiện - Khuyến mãi tiệc cưới Hồng Cường', 17, 2, ',4,', 'vi', 0, 33, 1, '2013-12-12 14:16:08', '2013-12-12 16:26:05', 'admin', 'admin', 0),
(21, 'Hình ảnh tiệc cưới', 'hinh-anh-tiec-cuoi-hong-cuong', 'hinh-anh-tiec-cuoi-hong-cuong/', '', 'Hình ảnh tiệc cưới Hồng Cường', 'Kỷ niệm ngày cưới của bạn, Nhà hàng tiệc cưới Hồng Cường lưu lại hình ảnh tất cả các tiệc cưới mà Hồng Cường đã tổ chức.', 'Hình ảnh tiệc cưới Hồng Cường', 17, 4, ',4,', 'vi', 0, 34, 1, '2013-12-12 14:16:33', '2013-12-12 11:19:19', 'admin', 'admin', 0),
(22, 'Liên hệ', 'lien-he-dat-tiec-cuoi', 'lien-he-dat-tiec-cuoi/', '', 'Liên hệ đặt tiệc cưới', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ đặt tiệc cưới', 17, 8, ',4,', 'vi', 0, 35, 1, '2013-12-12 14:17:06', '2013-12-12 13:44:20', 'admin', 'admin', 0),
(23, 'Xe cổ Hồng Cường', 'xe-co-hong-cuong', 'xe-co-hong-cuong/', 'xe-co-hong-cuong.png', 'Xe cổ Hồng Cường', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'Xe cổ Hồng Cường', 0, 2, ',1,5,', 'vi', 0, 50, 1, '2013-12-12 14:17:59', '2013-12-12 14:39:49', 'admin', 'admin', 0),
(24, 'Giới thiệu xe cổ', 'gioi-thieu-xe-co-hong-cuong', 'gioi-thieu-xe-co-hong-cuong/', '', 'Giới thiệu xe cổ Hồng Cường', 'Giới thiệu xe cổ Hồng Cường', 'Giới thiệu xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 51, 1, '2013-12-12 14:18:24', '2013-12-12 16:22:00', 'admin', 'admin', 0),
(25, 'Thảo luận xe cổ', 'thao-luan-xe-co-hong-cuong', 'thao-luan-xe-co-hong-cuong/', '', 'Thảo luận xe cổ Hồng Cường', 'Thảo luận xe cổ Hồng Cường', 'Thảo luận xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 52, 1, '2013-12-12 14:19:18', '2013-12-12 14:19:18', 'admin', '', 0),
(26, 'Sự kiện xe cổ', 'su-kien-xe-co-hong-cuong', 'su-kien-xe-co-hong-cuong/', '', 'Sự kiện xe cổ Hồng Cường', 'Thông tin sự kiện xe cổ Hồng Cường, các thông tin đặc biệt về câu lạc bộ xe cổ Hồng Cường độc nhất Việt Nam', 'Sự kiện xe cổ Hồng Cường', 23, 2, ',5,', 'vi', 0, 53, 1, '2013-12-12 14:19:49', '2013-12-12 14:19:25', 'admin', 'admin', 0),
(27, 'Hình ảnh xe cổ', 'hinh-anh-xe-co-hong-cuong', 'hinh-anh-xe-co-hong-cuong/', '', 'Hình ảnh xe cổ Hồng Cường', 'Hình ảnh xe cổ Hồng Cường', 'Hình ảnh xe cổ Hồng Cường', 23, 4, ',5,', 'vi', 0, 54, 1, '2013-12-12 14:20:07', '2013-12-12 14:21:25', 'admin', 'admin', 0),
(28, 'Liên hệ', 'lien-he-xe-co-hong-cuong', 'lien-he-xe-co-hong-cuong/', '', 'Liên hệ xe cổ Hồng Cường', 'Địa chỉ: 195, Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM<br />\r\nĐiện thoại: (84.8) 37267477 - Hotline: 0906941112<br />\r\nEmail: clb.hongcuong2010@gmail.com', 'Liên hệ xe cổ Hồng Cường', 23, 8, ',5,', 'vi', 0, 55, 1, '2013-12-12 14:20:33', '2013-12-12 13:44:25', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

CREATE TABLE IF NOT EXISTS `menu_admin` (
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

INSERT INTO `menu_admin` (`id`, `name`, `url`, `url_hinh`, `order`, `status`, `delete`) VALUES
(1, 'Trang chủ', 'home', NULL, 1, 1, 0),
(2, 'Cấu hình website', 'config', NULL, 2, 1, 0),
(3, 'Danh mục menu', 'menu', NULL, 3, 1, 0),
(4, 'Thông tin, bài viết', 'info', NULL, 4, 1, 0),
(5, 'Thông tin, bài viết bình luận', 'info_comment', NULL, 5, 0, 0),
(6, 'Sản phẩm', 'products', NULL, 6, 0, 0),
(7, 'Thư viện ảnh', 'photo_gallery', '', 7, 1, 0),
(8, 'Booking online', 'booking', NULL, 8, 0, 0),
(9, 'Danh sách bảng giá', 'booking_banggia', NULL, 9, 0, 0),
(10, 'Danh sách đi từ', 'booking_form', NULL, 10, 0, 0),
(11, 'Danh sách đến', 'booking_to', NULL, 11, 0, 0),
(12, 'Track & trace', 'tracktrace', NULL, 12, 0, 0),
(13, 'Slider & banner', 'slider_banner', NULL, 13, 1, 0),
(14, 'Liên hệ', 'contact', NULL, 14, 1, 0),
(15, 'Tài khoản', 'users', NULL, 100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_position`
--

CREATE TABLE IF NOT EXISTS `menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id`, `name`, `delete`) VALUES
(1, 'Home', 0),
(2, 'Top', 0),
(3, 'Nhà hàng', 0),
(4, 'Tiệc cưới', 0),
(5, 'Xe cổ', 0),
(6, 'Social', 0),
(7, 'Không', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `delete`) VALUES
(1, 'Trang chủ', 0),
(2, 'Thông tin, bài viết', 0),
(3, 'Sản phẩm', 1),
(4, 'Thư viện ảnh', 0),
(5, 'Loại temp 2', 1),
(6, 'Loại temp 3', 1),
(7, 'Loại temp 4', 1),
(8, 'Liên hệ', 0),
(9, 'Không', 0);

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE IF NOT EXISTS `photo_gallery` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`id`, `name`, `url_hinh`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Học viên trường NETSPACE dã ngoại KDL Văn Thánh', 'da-ngoai-o-van-thanh.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(2, 'Giao lưu với hội đầu bếp Tỉnh Lâm Đồng', 'giao-luu-voi-hoi-dau-bep-tinh-lam-dong.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(3, 'Giao lưu với Mà Sáu', 'giao-luu-voi-ma-sau.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(4, 'Giao lưu với Siêu đầu bếp Đỗ Quang Long', 'giao-luu-voi-sieu-dau-bep-do-quang-long.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(5, 'Giao lưu với Siêu đầu bếp Dương Huy Khải', 'giao-luu-voi-sieu-dau-bep-duong-huy-khai.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(6, 'Trương Minh Cường học làm bánh kem', 'giao-luu-voi-truong-minh-cuong.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(7, 'Học làm bánh kem', 'hoc-lam-banh-kem.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(8, 'Học vịt quay', 'hoc-vit-quay.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(9, 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'ky-ket-hop-tac-involution-2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(10, 'Ký kết hợp tác với Evolution Institute', 'ky-ket-hop-tac-involution.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(11, 'Kỷ lục gỏi cuốn VN', 'ky-luc-goi-cuon.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(12, 'Lưu niệm kỷ lục gỏi cuốn VN 2012', 'luu-niem-ky-luc-goi-cuon-2012.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(13, 'Lưu niệm khóa Bếp Việt K2', 'luu-niem-khoa-bep-viet-k2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(14, 'Giao lưu với Siêu đầu bếp Davil Thái', 'sieu-dau-bep-davil-thai-truyen-dat-kinh-nghiem-nau-an.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(15, 'Siêu đầu bếp Nguyễn Văn Lập dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(16, 'Trương Minh Cường học làm bánh kem tại trường NETSPACE', 'truong-minh-cuong-hoc-nau-an-truong-netspace.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(17, 'Thức uống độc đáo 1', 'thuc-uong-doc-dao-1.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(18, 'Thức uống độc đáo 2', 'thuc-uong-doc-dao-2.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(19, 'Thức uống độc đáo 3', 'thuc-uong-doc-dao-3.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(20, 'Thức uống độc đáo 4', 'thuc-uong-doc-dao-4.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(21, 'Thức uống độc đáo 5', 'thuc-uong-doc-dao-5.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(22, 'Thức uống độc đáo 6', 'thuc-uong-doc-dao-6.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(23, 'Thức uống độc đáo 7', 'thuc-uong-doc-dao-7.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(24, 'Thức uống độc đáo 8', 'thuc-uong-doc-dao-8.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(25, 'Thức uống độc đáo 9', 'thuc-uong-doc-dao-9.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(26, 'Thức uống độc đáo 10', 'thuc-uong-doc-dao-10.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(27, 'Thức uống độc đáo 11', 'thuc-uong-doc-dao-11.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(28, 'Thức uống độc đáo 12', 'thuc-uong-doc-dao-12.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(29, 'Thức uống độc đáo 13', 'thuc-uong-doc-dao-13.jpg', '', ',71,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(30, 'Giao lưu với Siêu đầu bếp Davil Thái', 'giao-luu-voi-dieu-dau-bep-davil-thai-k4.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(31, 'Kỷ lục gỏi cuốn VN năm 2012', 'ky-luc-goi-cuon-vn-2012-2.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(32, 'Kỷ lục gỏi cuốn VN năm 2012 - Phỏng vấn', 'ky-luc-goi-cuon-vn-2012-3.jpg', '', ',58,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(33, 'Cơm tấm sườn bì chả - Thầy Toàn', 'com-tam-suon-bi-cha-thay-toan.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(34, 'Bánh xèo', 'banh-xeo.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(35, 'Bún bò Huế', 'bun-bo-hue.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(36, 'Bún riêu', 'bun-rieu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(37, 'Bún thịt nướng', 'bun-thit-nuong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(38, 'Cá chẻm sốt cam', 'ca-chem-sot-cam.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(39, 'Cá cơm chiên giòn', 'Ca-com-chien-gion.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(40, 'Cá điêu hồng sốt cam', 'Ca-dieu-hong-sot-cam.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(41, 'Cá rô kho tộ - Thầy Duy', 'ca-ro-kho-to-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(42, 'Cá tai tượng chiên xù', 'ca-tai-tuong-chien-xu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(43, 'Bò nướng xiên', 'bo-nuong-xien.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(44, 'Chả ốc lá nốt', 'cha-oc-la-not.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(45, 'Cháo cà miền Tây - Thầy Duy', 'Chao-ca-mien-tay-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(46, 'Cháo gà xé phay - Thầy Duy', 'Chao-ga-xe-phay-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(47, 'Cơm gà xối mỡ', 'Com-ga-xoi-mo.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(48, 'Bò nướng ống tre', 'bo-nuong-ong-tre.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(49, 'Bao tử hầm tiêu', 'bao-tu-ham-tieu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(50, 'Bánh hỏi thịt nướng', 'banh-hoi-thit-nuong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(51, 'Cơm chiên ngũ sắc', 'Com-chien-ngu-sac.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(52, 'Chả giò bánh bía - Cô Thu', 'cha-gio-banh-bia-co-thu.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(53, 'Chả cá Lã Vọng', 'Cha-ca-LA-Vong.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(54, 'Bông bí dòn thịt', 'Bong-bi-don-thit.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(55, 'Canh chua cá bông lau - Thầy Duy', 'canh-chua-ca-bong-lau-thay-duy.jpg', '', ',64,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(56, 'Lớp bánh - Bánh choux Eclair', 'lop-banh-Banh-choux-Eclair-3.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(57, 'Ham T', 'ham-t.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(58, 'Seafood C', 'seafood-c.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(59, 'Lớp bánh - Bánh choux Eclair 2', 'lop-banh-Banh-choux-Eclair-5.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(60, 'Ham C', 'ham-c.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(61, 'Lớp bánh - Bánh choux Eclair 3', 'lop-banh-Banh-choux-Eclair-4.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(62, 'Lớp bánh - Bánh choux Eclair 4', 'lop-banh-Banh-choux-Eclair-3.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(63, 'Seafood T', 'seafood-t.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(64, 'Lớp bánh - Bánh choux Eclair 5', 'lop-banh-Banh-choux-Eclair-1.jpg', '', ',59,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(65, 'Hội đầu bếp CN Sài Gòn  1', 'hoi-dau-bep-cn-saigon-1.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(66, 'Hội đầu bếp CN Sài Gòn 2', 'hoi-dau-bep-cn-saigon-2.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(67, 'Hội đầu bếp CN Sài Gòn 3', 'hoi-dau-bep-cn-saigon-3.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(68, 'Hội đầu bếp CN Sài Gòn 4', 'hoi-dau-bep-cn-saigon-4.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(69, 'Hội đầu bếp CN Sài Gòn 5', 'hoi-dau-bep-cn-saigon-5.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(70, 'Hội đầu bếp CN Sài Gòn 6', 'hoi-dau-bep-cn-saigon-6.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(71, 'Hội đầu bếp CN Sài Gòn 7', 'hoi-dau-bep-cn-saigon-7.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(72, 'Hội đầu bếp CN Sài Gòn 8', 'hoi-dau-bep-cn-saigon-8.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(73, 'Hội đầu bếp CN Sài Gòn 9', 'hoi-dau-bep-cn-saigon-9.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(74, 'Hội đầu bếp CN Sài Gòn 10', 'hoi-dau-bep-cn-saigon-10.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(75, 'Hội đầu bếp CN Sài Gòn 11', 'hoi-dau-bep-cn-saigon-11.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(76, 'Hội đầu bếp CN Sài Gòn 12', 'hoi-dau-bep-cn-saigon-12.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(77, 'Hội đầu bếp CN Sài Gòn 13', 'hoi-dau-bep-cn-saigon-13.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(78, 'Hội đầu bếp CN Sài Gòn 14', 'hoi-dau-bep-cn-saigon-14.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(79, 'Hội đầu bếp CN Sài Gòn 15', 'hoi-dau-bep-cn-saigon-15.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(80, 'Hội đầu bếp CN Sài Gòn 16', 'hoi-dau-bep-cn-saigon-16.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(81, 'Hội đầu bếp CN Sài Gòn 17', 'hoi-dau-bep-cn-saigon-17.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(82, 'Hội đầu bếp CN Sài Gòn 18', 'hoi-dau-bep-cn-saigon-18.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(83, 'Hội đầu bếp CN Sài Gòn 19', 'hoi-dau-bep-cn-saigon-19.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(84, 'Hội đầu bếp CN Sài Gòn 20', 'hoi-dau-bep-cn-saigon-20.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(85, 'Hội đầu bếp CN Sài Gòn 21', 'hoi-dau-bep-cn-saigon-21.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(86, 'Hội đầu bếp CN Sài Gòn 22', 'hoi-dau-bep-cn-saigon-22.jpg', '', ',25,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(87, 'Anh Khao - Việt Anh - Huy Khanh', 'ANHKHAO-VIETANH-huykhanh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(88, 'Tường Vi - Trường NETSPACE', 'TUONGVI.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(89, 'Tường Vi - Hiếu Hiền - Trường NETSPACE', 'TUONGVI-HIEUHIEN.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(90, 'Tường Vi - Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'TUONGVI-HIEUHIEN-thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(91, 'Trung Hậu - Trường NETSPACE', 'TRUNG-HAU.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(92, 'Thanh Thúy - Thái Hòa - Trường NETSPACE', 'THANHTHUY-thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(93, 'Hoa hậu Mai Phương Thúy - Trường NETSPACE', 'HOA-HAU-MAI-PHUONG-THUY.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(94, 'Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'HIEUHIEN-Thaihoa.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(95, 'Hiếu Hiền - Thái Hòa - Cùng với Học Viên Trường NETSPACE', 'HIEUHIEN-thaihoa-tai-netspace.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(96, 'Diễn viên Trường Thịnh - Trường NETSPACE', 'dv-truong-thinh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(97, 'Diễn viên Trương Minh Cường- Trường NETSPACE', 'dv-truong-minh-cuong.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(98, 'Diễn viên Trương Minh Cường - Cùng với học viên Trường NETSPACE', 'dv-truong-minh-cuong-2.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(99, 'Diễn viên phim Lưu Manh Đầu Bếp - Trường NETSPACE', 'dv-phim-luu-manh-dau-bep.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(100, 'Diễn viên Hà Hiền - Trường NETSPACE', 'dv-ha-hien.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(101, 'Đoàn làm phim Bếp của Mẹ', 'doan-lam-phim-bep-cua-me.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(102, 'Đoàn làm phim Bếp của Mẹ tại Trường NETSPACE', 'doan-lam-phim-bep-cua-me-2.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(103, 'Diễn viên Trường Thịnh tại Trường NETSPACE', 'dien-vien-truong-thinh.jpg', '', ',70,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(104, 'Hình ảnh Nhà hàng 10', 'thuvien-anh-10.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:10', '2013-12-13 14:08:10', 'admin', NULL, 0),
(105, 'Hình ảnh Nhà hàng 11', 'thuvien-anh-11.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:14', '2013-12-13 14:08:14', 'admin', NULL, 0),
(106, 'Hình ảnh Nhà hàng 12', 'thuvien-anh-12.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:17', '2013-12-13 14:08:17', 'admin', NULL, 0),
(107, 'Hình ảnh Nhà hàng 13', 'thuvien-anh-13.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:20', '2013-12-13 14:08:20', 'admin', NULL, 0),
(108, 'Hình ảnh Nhà hàng 14', 'thuvien-anh-14.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:24', '2013-12-13 14:08:24', 'admin', NULL, 0),
(109, 'Hình ảnh Nhà hàng 15', 'thuvien-anh-15.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:28', '2013-12-13 14:08:28', 'admin', NULL, 0),
(110, 'Hình ảnh Nhà hàng 16', 'thuvien-anh-16.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:32', '2013-12-13 14:08:32', 'admin', NULL, 0),
(111, 'Hình ảnh Nhà hàng 17', 'thuvien-anh-17.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:35', '2013-12-13 14:08:35', 'admin', NULL, 0),
(112, 'Hình ảnh Nhà hàng 18', 'thuvien-anh-18.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:40', '2013-12-13 14:08:40', 'admin', NULL, 0),
(113, 'Hình ảnh Nhà hàng 19', 'thuvien-anh-19.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:43', '2013-12-13 14:08:43', 'admin', NULL, 0),
(114, 'Hình ảnh Nhà hàng 20', 'thuvien-anh-20.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:48', '2013-12-13 14:08:48', 'admin', NULL, 0),
(115, 'Hình ảnh Nhà hàng 21', 'thuvien-anh-21.jpg', 'vi', ',15,', 1, '2013-12-13 14:08:51', '2013-12-13 14:08:58', 'admin', 'admin', 0),
(116, 'Hình ảnh Nhà hàng 22', 'thuvien-anh-22.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:06', '2013-12-13 14:09:06', 'admin', NULL, 0),
(117, 'Hình ảnh Nhà hàng 23', 'thuvien-anh-23.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:10', '2013-12-13 14:09:10', 'admin', NULL, 0),
(118, 'Hình ảnh Nhà hàng 24', 'thuvien-anh-24.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:13', '2013-12-13 14:09:13', 'admin', NULL, 0),
(119, 'Hình ảnh Nhà hàng 25', 'thuvien-anh-25.jpg', 'vi', ',15,', 1, '2013-12-13 14:09:19', '2013-12-14 12:12:13', 'admin', 'admin', 0),
(120, 'Hình ảnh tiệc cưới 01', 'hinh-anh-tiec-cuoi-01.jpg', 'vi', ',21,', 1, '2013-12-18 11:25:29', '2013-12-18 11:25:29', 'admin', NULL, 0),
(121, 'Hình ảnh tiệc cưới 02', 'hinh-anh-tiec-cuoi-02.jpg', 'vi', ',21,', 1, '2013-12-18 11:28:22', '2013-12-18 11:28:29', 'admin', 'admin', 0),
(122, 'Hình ảnh tiệc cưới 03', 'hinh-anh-tiec-cuoi-03.jpg', 'vi', ',21,', 1, '2013-12-18 11:28:34', '2013-12-18 11:28:34', 'admin', NULL, 0),
(123, 'Hình ảnh tiệc cưới 04', 'hinh-anh-tiec-cuoi-04.jpg', 'vi', ',21,', 1, '2013-12-18 11:29:42', '2013-12-18 11:29:42', 'admin', NULL, 0),
(124, 'Hình ảnh tiệc cưới 05', 'hinh-anh-tiec-cuoi-05.jpg', 'vi', ',21,', 1, '2013-12-18 11:29:47', '2013-12-18 11:29:47', 'admin', NULL, 0),
(125, 'Hình ảnh tiệc cưới 06', 'hinh-anh-tiec-cuoi-06.jpg', 'vi', ',21,', 1, '2013-12-18 11:29:51', '2013-12-18 11:29:51', 'admin', NULL, 0),
(126, 'Hình ảnh tiệc cưới 07', 'hinh-anh-tiec-cuoi-07.jpg', 'vi', ',21,', 1, '2013-12-18 11:29:54', '2013-12-18 11:29:54', 'admin', NULL, 0),
(127, 'Hình ảnh tiệc cưới 08', 'hinh-anh-tiec-cuoi-08.jpg', 'vi', ',21,', 1, '2013-12-18 11:29:58', '2013-12-18 11:29:58', 'admin', NULL, 0),
(128, 'Hình ảnh tiệc cưới 09', 'hinh-anh-tiec-cuoi-09.jpg', 'vi', ',21,', 1, '2013-12-18 11:30:01', '2013-12-18 11:30:01', 'admin', NULL, 0),
(129, 'Hình ảnh tiệc cưới 10', 'hinh-anh-tiec-cuoi-10.jpg', 'vi', ',21,', 1, '2013-12-18 11:30:06', '2013-12-18 11:30:06', 'admin', NULL, 0),
(130, 'Hình ảnh tiệc cưới 11', 'hinh-anh-tiec-cuoi-11.jpg', 'vi', ',21,', 1, '2013-12-18 11:30:10', '2013-12-18 11:30:10', 'admin', NULL, 0),
(131, 'Hình ảnh tiệc cưới 12', 'hinh-anh-tiec-cuoi-12.jpg', 'vi', ',21,', 1, '2013-12-18 11:30:12', '2013-12-18 11:30:12', 'admin', NULL, 0),
(132, 'Hình ảnh Nhà hàng 26', 'thuvien-anh-26.jpg', 'vi', ',15,', 1, '2013-12-18 12:10:47', '2013-12-18 12:10:47', 'admin', NULL, 0),
(133, 'Hình ảnh Nhà hàng 27', 'thuvien-anh-27.jpg', 'vi', ',15,', 1, '2013-12-18 12:10:52', '2013-12-18 12:10:52', 'admin', NULL, 0),
(134, 'Hình ảnh Nhà hàng 28', 'thuvien-anh-28.jpg', 'vi', ',15,', 1, '2013-12-18 12:11:00', '2013-12-18 12:11:00', 'admin', NULL, 0),
(135, 'Hình ảnh Nhà hàng 29', 'thuvien-anh-29.jpg', 'vi', ',15,', 1, '2013-12-18 12:11:46', '2013-12-18 12:11:46', 'admin', NULL, 0),
(136, 'Hình ảnh xe cổ 01', 'hinh-anh-xe-co-01.jpg', 'vi', ',27,', 1, '2013-12-18 15:08:55', '2013-12-18 15:08:55', 'admin', NULL, 0),
(137, 'Hình ảnh xe cổ 02', 'hinh-anh-xe-co-02.jpg', 'vi', ',27,', 1, '2013-12-18 15:08:59', '2013-12-18 15:08:59', 'admin', NULL, 0),
(138, 'Hình ảnh xe cổ 03', 'hinh-anh-xe-co-03.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:02', '2013-12-18 15:09:02', 'admin', NULL, 0),
(139, 'Hình ảnh xe cổ 04', 'hinh-anh-xe-co-04.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:05', '2013-12-18 15:09:05', 'admin', NULL, 0),
(140, 'Hình ảnh xe cổ 05', 'hinh-anh-xe-co-05.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:09', '2013-12-18 15:09:09', 'admin', NULL, 0),
(141, 'Hình ảnh xe cổ 06', 'hinh-anh-xe-co-06.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:14', '2013-12-18 15:09:14', 'admin', NULL, 0),
(142, 'Hình ảnh xe cổ 07', 'hinh-anh-xe-co-07.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:17', '2013-12-18 15:09:17', 'admin', NULL, 0),
(143, 'Hình ảnh xe cổ 08', 'hinh-anh-xe-co-08.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:21', '2013-12-18 15:09:21', 'admin', NULL, 0),
(144, 'Hình ảnh xe cổ 09', 'hinh-anh-xe-co-09.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:24', '2013-12-18 15:09:24', 'admin', NULL, 0),
(145, 'Hình ảnh xe cổ 10', 'hinh-anh-xe-co-10.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:30', '2013-12-18 15:09:30', 'admin', NULL, 0),
(146, 'Hình ảnh xe cổ 11', 'hinh-anh-xe-co-11.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:34', '2013-12-18 15:09:34', 'admin', NULL, 0),
(147, 'Hình ảnh xe cổ 12', 'hinh-anh-xe-co-12.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:37', '2013-12-18 15:09:37', 'admin', NULL, 0),
(148, 'Hình ảnh xe cổ 13', 'hinh-anh-xe-co-13.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:39', '2013-12-18 15:09:39', 'admin', NULL, 0),
(149, 'Hình ảnh xe cổ 14', 'hinh-anh-xe-co-14.jpg', 'vi', ',27,', 1, '2013-12-18 15:09:42', '2013-12-18 15:09:42', 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
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

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner`
--

CREATE TABLE IF NOT EXISTS `slider_banner` (
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

INSERT INTO `slider_banner` (`id`, `name`, `url_hinh`, `link`, `content`, `lang`, `position_id`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Ẩm thực Hồng Cường', 'nha-hang-hong-cuong.png', 'javascript:;', 'Nhà hàng chuyên Buffet hải sản cao cấp, tổ chức tiệc cưới, tiệc hội nghị, tiệc lưu động và tổ chức sự kiện. Với bãi đỗ xe có sức chứa lên đến hàng nghìn xe.', 'vi', 2, ',1,', 1, '2013-10-09 16:34:33', '2013-12-12 13:57:30', 'admin', 'admin', 0),
(2, 'Tiệc cưới Hồng Cường', 'tiec-cuoi-hong-cuong.png', 'javascript:;', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'vi', 2, ',1,', 1, '2013-12-12 13:49:05', '2013-12-11 14:25:42', 'admin', 'admin', 0),
(3, 'Xe cổ Hồng Cường', 'xe-co-hong-cuong.png', 'javascript:;', 'Nhà hàng tổ chức tiệc cưới Hồng Cường luôn chuyên nghiệp trong phục vụ và tổ chức tiệc cưới rất sang trọng và ấm cúng với trang thiết bị hiện đại, phòng ốc sang trọng.', 'vi', 2, ',1,', 1, '2013-12-12 13:50:42', '2013-12-10 13:57:39', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `slider_banner_position`
--

INSERT INTO `slider_banner_position` (`id`, `name`, `delete`) VALUES
(1, 'Slider 1000x200 px', 1),
(2, 'Event home 300x355 px', 0),
(3, 'Banner left', 0),
(4, 'Banner right', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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

INSERT INTO `users` (`id`, `name`, `Username`, `Password`, `quyen_xem`, `quyen_action`, `group_id`, `Active`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,7,13,14,15,', ',1,2,3,4,7,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE IF NOT EXISTS `users_group` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id`, `name`) VALUES
(1, 'Quản trị web site'),
(2, 'Thành viên'),
(3, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
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

INSERT INTO `video` (`id`, `name`, `name_rewrite`, `url_hinh`, `link_video`, `description`, `content`, `metaKeyword`, `other`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(2, 'Vietnamese Cuisine Part 1', 'vietnamese-cuisine-part-1', 'Vietnamese-Cuisine-1.jpg', 'http://www.youtube.com/embed/UjOZRdO-KQk', 'Vietnamese Cuisine Part 1', '', 'Vietnamese Cuisine Part 1', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(3, 'Vietnamese Cuisine Part 2', 'vietnamese-cuisine-part-2', 'Vietnamese-Cuisine-2.jpg', 'http://www.youtube.com/embed/uwEPzyHyQF8', 'Vietnamese Cuisine Part 2', '', 'Vietnamese Cuisine Part 2', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(4, 'Vietnamese Cuisine Part 3', 'vietnamese-cuisine-part-3', 'Vietnamese-Cuisine-3.jpg', 'http://www.youtube.com/embed/Ev_tBCwKZng', 'Vietnamese Cuisine Part 3', '', 'Vietnamese Cuisine Part 3', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(5, 'Vietnamese Cuisine Part 4', 'vietnamese-cuisine-part-4', 'Vietnamese-Cuisine-4.jpg', 'http://www.youtube.com/watch?v=IY8wJD3RdY0', 'Vietnamese Cuisine Part 4', '', 'Vietnamese Cuisine Part 4', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(6, 'Vietnamese Cuisine Part 5', 'vietnamese-cuisine-part-5', 'Vietnamese-Cuisine-5.jpg', 'http://www.youtube.com/watch?v=X4tDkxC7MXo', 'Vietnamese Cuisine Part 5', '', 'Vietnamese Cuisine Part 5', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(7, 'Vietnamese Cuisine Part 6', 'vietnamese-cuisine-part-6', 'Vietnamese-Cuisine-6.jpg', 'http://www.youtube.com/watch?v=TtQO4BBermU', 'Vietnamese Cuisine Part 6', '', 'Vietnamese Cuisine Part 6', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(8, 'Diễn Viên- Trương Minh Cường học nấu ăn tại Trường NetSpace.', 'Dien-Vien-Truong-Minh-Cuong-Hoc-Nau-An-Tai-Truong-Netspace', 'dien-vien-truong-minh-cuong-tai-truong-netspace.jpg', 'http://www.youtube.com/embed/HzPkh9oBPvI', 'Diễn Viên - Trương Minh Cường học nấu ăn tại Trường NetSpace.', '', 'Diễn Viên Trương Minh Cường, học nấu ăn tại Trường NetSpace.', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(9, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', 'lang-kinh-nghe-nghiep-danh-thuc-tai-nang-viet-phan-1', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-1.jpg', 'http://www.youtube.com/embed/5NEYiKjiWNs', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 1', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(10, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-2.jpg', 'http://www.youtube.com/embed/AOZfx_1Jf_I', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 2', '', 'Lăng kính nghề nghiệp,Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(11, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-3.jpg', 'http://www.youtube.com/embed/CrgaA-pKahA', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 3', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(12, 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4', 'Lang-Kinh-Nghe-Nghiep-Danh-Thuc-Tai-Nang-Viet-Phan-4.jpg', 'http://www.youtube.com/embed/xvuCdlYOTns', 'Lăng kính nghề nghiệp - Đánh thức tài năng Việt - Phần 4', '', 'Lăng kính nghề nghiệp, Đánh thức tài năng Việt', 0, 'vi', ',75,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(13, 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', 'Hoc-Vien-Hoc-Nau-An-Tai-Truong-Netspace-Tham-Gia-Ky-Luc-Cac-Mon-Cuon-Viet-Nam', 'lien-hoan-cac-mon-cuon-viet-nam.jpg', 'http://www.youtube.com/embed/HVZ94TWPI60', 'Học viên học nấu ăn tại trường NetSpace tham gia kỷ lục các món cuốn Việt Nam', '', 'Học viên, học nấu ăn, tại trường NetSpace,kỷ lục các món cuốn Việt Nam', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(14, 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace', 'Chef-Norbert-Ehrbar-Day-Nau-An-Tai-Truong-Netspace.jpg', 'http://www.youtube.com/embed/6QzKTBIKSDU', 'Chef Norbert Ehrbar Dạy Nấu Ăn tại Trường NetSpace', '', 'Chef Norbert Ehrbar, Dạy Nấu Ăn, tại Trường NetSpace', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(15, 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', 'Hoc-Vien-Truong-Netspace-Hoc-Nau-An-Voi-Thay-Do-Quang-Long', 'Sieu-Dau-Bep-Do-Quang-Long-Huong-Dan-Kinh-Nghiem-Lam-Bep-Thanh-Cong-10-01-2013.jpg', 'http://www.youtube.com/embed/0xk5KON_5W8', 'Học viên trường NetSpace học nấu ăn với thầy Đỗ Quang Long', '', 'Học viên trường NetSpace, học nấu ăn với thầy Đỗ Quang Long', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(16, 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An', 'Nam-2013-Nghe-Bep-Hap-Dan-Ban-Tre-Hoc-Nau-An.jpg', 'http://www.youtube.com/embed/ETL1u-EsUbU', '', '', 'Năm 2013 nghề bếp hấp dẫn bạn trẻ - Học nấu ăn', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(17, 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace', 'Tiec-Tat-Nien-2013-Truong-Am-Thuc-Netspace.png', 'http://www.youtube.com/embed/lgogLzkOVAY', 'Tiệc Tất Niên 2013 trường ẩm thực NETSPACE', '', 'Tiệc Tất Niên 2013, trường ẩm thực NETSPACE', 0, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(18, 'Hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace', 'Cac-Hoat-Dong-Cua-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/s5j9JgNiOyE', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE năm 2012', '', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',74,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(19, 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Au-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/plS-81GTQC8', 'Học nấu ăn các món Âu tại trường dạy nghề ẩm thực NETSPACE', '', 'Học nấu ăn, các món Âu, trường dạy nghề ẩm thực NETSPACE', 0, 'vi', ',76,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(20, 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace', 'Hoc-Nau-An-Cac-Mon-Hoa-Tai-Truong-Day-Nghe-Am-Thuc-Netspace.jpg', 'http://www.youtube.com/embed/R7eDXCAHapw', 'Học nấu ăn các món Hoa tại trường dạy nghề ẩm thực NETSPACE', '', 'Học nấu ăn, các món Hoa, tại trường dạy nghề ẩm thực NETSPACE', 1, 'vi', ',76,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(21, 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban', 'Hoc-Nau-An-Day-Nuong-Teppanyaki-Nhat-Ban.jpg', 'http://www.youtube.com/embed/h66cbZuVux4', 'Học nấu ăn - Dạy nướng Teppanyaki - Nhật Bản ', '', 'Học nấu ăn,Dạy nướng Teppanyaki Nhật Bản ', 1, 'vi', ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(22, 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 'day-pha-che-barrista-bartender-truong-day-pha-che-netspace', 'Hoc-Nau-An-Worlds-Best-Bartender.jpg', 'http://www.youtube.com/embed/T8rtIXLcdtE', 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', '', 'Dạy pha chế Barrista Bartender - Trường dạy pha chế NetSpace ', 1, 'vi', ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(23, 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep', 'Thay-Nguyen-Van-Lap-Giang-Vien-Truong-Netspace-Thi-Sieu-Dau-Bep.jpg', 'http://www.youtube.com/embed/v12mC_vyKo4', '', '', 'Thầy Nguyễn Văn Lập giảng viên trường NETSPACE thi Siêu Đầu Bếp ', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(24, 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An', 'Nguyen-Van-Lap-Day-Cat-Tia-Tai-Truong-Netspace-Day-Nau-An.jpg', 'http://www.youtube.com/embed/u3nJRno992Q', '', '', 'Nguyễn Văn Lập Dạy Cắt Tỉa Tại Trường NETSPACE - Dạy Nấu Ăn', 1, 'vi', ',73,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(25, 'Kinh doanh quán ăn nhỏ', 'kinh-doanh-quan-an-nho', 'kinh-doanh-quan-an-nho.jpg', 'http://www.youtube.com/embed/UxxGOQDvK4I', 'Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><img alt="Kinh doanh quán ăn nhỏ" src="/upload/images/video/kinh-doanh-quan-an-nho.jpg" style="line-height: 1.6em; width: 550px; height: 385px;" /></p>\r\n\r\n<p style="text-align: center;"><em><strong>Kinh doanh quán ăn nhỏ - Trường dạy nghề ẩm thực NETSPACE</strong></em></p>\r\n', 'Kinh doanh quán ăn nhỏ', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(26, 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', 'hoc-nau-an-nuong-teppanyaky-nhat-ban', 'hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg', 'http://www.youtube.com/embed/VRCHwpu1Lgc', 'Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE', '<p style="text-align: center;"><strong>Học nấu ăn, Nướng Teppanyaki Nhật Bản tại Trường dạy nghề ẩm thực NETSPACE</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="Học nấu ăn, Nướng TEPPANYAKY Nhật Bản" src="/upload/images/video/hoc-nau-an-nuong-teppanyaky-nhat-ban.jpg" style="width: 550px; height: 354px;" /></strong></p>\r\n', 'Học nấu ăn, Nướng TEPPANYAKY Nhật Bản,Nướng TEPPANYAKY', 0, NULL, ',72,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(27, 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap-day-nau-an', 'sieu-dau-bep-nguyen-van-lap-day-nau-an.png', 'http://www.youtube.com/embed/28oIxsPN4Xo', 'Siêu đầu bếp Nguyễn Văn Lập - Dạy nấu ăn', '', 'Siêu đầu bếp Nguyễn Văn Lập, Dạy nấu ăn', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0),
(28, 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an', 'sieu-dau-bep-le-vo-anh-duy-day-nau-an.png', 'http://www.youtube.com/embed/I21HhBkv6jU', 'Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn', '<p style="text-align: center;"><img alt="Siêu đầu bếp Lê Võ Anh Duy - Dạy nấu ăn" src="/upload/images/video/sieu-dau-bep-le-vo-anh-duy-day-nau-an.png" style="width: 455px; height: 315px;" /></p>\r\n', 'Siêu đầu bếp Lê Võ Anh Duy,Dạy nấu ăn', 0, NULL, ',34,', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0),
(29, 'Video Clip Hoạt Động Dã Ngoại NetSpace 18/07/2013', 'video-clip-hoat-dong-da-ngoai-netspace-18-07-2013', 'ngay-vui-da-ngoai-cua-truong-am-thuc-netspace-27.jpg', 'http://www.youtube.com/embed/9-O_VXSRvEw', 'Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.', '<h2 style="margin: 0px; font-size: 13px; line-height: 22px; font-family: Arial, Helvetica, sans-serif;">Nhằm tạo ra tình thân ái, giao lưu, gắn kết giữa các Giảng viên và học viên, ngày 18/07/2013 Trường ẩm thực Netspace đã tổ chức chương trình giao lưu dã ngoại hết sức vui tươi và hấp dẫn tại Trạm dừng chân Mekong Long Thành, Đồng Nai.</h2>\r\n', 'Hoạt động dã ngoại Trường Ẩm Thực NetSpace', 1, NULL, ',74,', 1, '0000-00-00 00:00:00', NULL, 'chau', 'chau', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         