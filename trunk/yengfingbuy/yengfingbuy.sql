-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 24, 2014 at 05:05 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `yengfingbuy`
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

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/yengfingbuy', 2, 10, 10, 2, '© 2014 Công ty TNHH MTV TM DV XNK vải sợi Doanh Phong', '<p>Địa chỉ: Số 22, ĐT 743, KP.Bình Đức 3, Bình Hòa, Thuận An, Bình Dương</p>\r\n\r\n<p>Điện thoại &amp; FAX: 0650-3763964 &nbsp; &nbsp;&nbsp;Email: doanhphong.vaisoi@gmail.com</p>\r\n', '<p>Mọi chi tiết xin vui lòng liên hệ với chúng tôi để được hỗ trợ tốt nhất:</p>\r\n\r\n<h2><strong>CÔNG TY TNHH MTV TM DV XNK VẢI SỢI DOANH PHONG</strong></h2>\r\n\r\n<p>Địa chỉ: Số 22, ĐT 743, KP.Bình Đức 3, Bình Hòa, Thuận An, Bình Dương</p>\r\n\r\n<p>Điện thoại &amp; FAX: 0650-3763964 &nbsp; &nbsp;&nbsp;Email: doanhphong.vaisoi@gmail.com</p>\r\n\r\n<p>Skype: mibin285188 &nbsp;| &nbsp;Website:&nbsp;yengfingbuy.com</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0861116111', '0988388003', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 15:41:55', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'English', 'en', '', 'localhost/all/yengfingbuy', 10, 10, 10, 10, 'Copyright © 2012 by Hoa Hau Dai Duong', '<p><strong>Giấy phép số 73/GP-TTĐT cấp ngày 12/04/2010</strong><br />\r\nCục phát thanh, truyền hình và thông tin điện tử - Bộ thông tin và truyền thông&nbsp;</p>\r\n', '<p>Địa chỉ: 87 Thăng Long, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh, Việt Nam.<br />\r\nĐiện thoại: (84.8) 3 948 4696 - Fax: ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', 1, '2013-08-10 10:09:29', '2013-08-10 23:16:07', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `info`
-- 

INSERT INTO `info` VALUES (1, 'Giới thiệu về Doanh Phong', 'gioi-thieu-ve-doanh-phong', 'gioi-thieu-ve-doanh-phong.jpg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.&nbsp;Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'Thông tin Hoa Hậu Việt Nam năm 2014 “Blue Ocean World”', 1, 'vi', ',1,5,', 1, '2014-01-20 09:49:52', '2014-01-20 11:36:01', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (2, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan', 'tin-tuc.jpg', '<p>Quỹ Bảo vệ môi trường Việt Nam và Công ty trách nhiệm hữu hạn Một thành viên Võ Việt Chung đã triển khai dự án Blue Ocean World (Môi trường thế giới biển xanh) tại khu làng chài Rạng, phường Mũi Né, thành phố Phan Thiết (Bình Thuận)</p>\r\n', '<h2>Chiều 25/9, Quỹ Bảo vệ môi trường Việt Nam và Công ty trách nhiệm hữu hạn Một thành viên Võ Việt Chung đã triển khai dự án Blue Ocean World (Môi trường thế giới biển xanh) tại khu làng chài Rạng, phường Mũi Né, thành phố Phan Thiết (Bình Thuận). Đây là dự án nhằm nâng cao nhận thức của ngư dân cũng như cộng đồng về việc bảo vệ môi trường biển.</h2>\r\n\r\n<p style="text-align: center;"><img alt="4 đại sứ của Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan.jpg" style="width: 450px; height: 300px;" /></p>\r\n\r\n<p style="margin-left: 120px;"><em><span style="line-height: 1.6em;">4 đại sứ của Blue Ocean World gồm:</span></em></p>\r\n\r\n<ol style="margin-left: 120px;">\r\n	<li><em><span style="line-height: 1.6em;">Đạo diễn-DVĐA Kim Khánh</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">Hoa hậu-Ảo thuật gia quốc tế Ngô Mỹ Uyên</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">MC-Ca sĩ Nguyệt Ánh</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">Hoa hậu Đông Nam Á- Diệu Hân</span></em></li>\r\n</ol>\r\n\r\n<p>Với chủ đề “Bảo vệ môi trường biển, đại dương là&nbsp;bảo vệ&nbsp;cuộc sống của chính mình”, <strong>dự án Blue Ocean World&nbsp;</strong>triển khai&nbsp;nhiều hoạt động thiết thực như: dọn dẹp, làm sạch bãi biển, phát túi nilon phân hủy để&nbsp;bảo vệ&nbsp;môi trường, kêu gọi người dân thả những sinh vật về&nbsp;biển&nbsp;nhằm cân bằng hệ sinh thái, không đánh bắt cá bằng chất hóa học và thuốc nổ…</p>\r\n\r\n<p>Tại buổi lễ, đại diện Dự án đã có buổi nói chuyện với đông đảo người dân sinh sống&nbsp;tại&nbsp;làng chài về những tác hại của việc ô nhiễm môi trường&nbsp;biển&nbsp;đối với cuộc sống của người dân, tình trạng cạn kiệt nguồn tài nguyên biển, biến đổi khí hậu… Sau khi kết thúc buổi lễ, đông đảo người dân cùng các đại sứ của Dự án đã ra tay thu gom rác thải, làm vệ sinh bãi biển.</p>\r\n\r\n<p><strong>Ông Nguyễn Văn Khoa, Chủ tịch Hiệp hội Du lịch Bình Thuận</strong> cho biết: Thông qua những hoạt động của dự án Blue Ocean World, ý thức&nbsp;bảo vệ&nbsp;môi trường sống xung quanh của người dân sẽ được nâng cao, từ đó góp phần nâng cao hình ảnh “Du lịch xanh” của Bình Thuận đến với mọi người.</p>\r\n\r\n<p>S ắp tới, dự án sẽ có những hoạt động như: dọn vệ sinh bờ biển; đến những làng chài phổ biến những kiến thức về&nbsp;bảo vệ&nbsp;môi trường&nbsp;biển&nbsp;cho ngư dân; trồng cây ở một số khu vực&nbsp;biển&nbsp;Nha Trang (Khánh Hòa), Ðà Nẵng; tổ chức các cuộc thi vẽ tranh dành cho thiếu nhi ở các làng chài, thành phố biển; tổ chức cuộc thi thiết kế thời trang với chủ đề&nbsp;bảo vệ&nbsp;môi trường biển...</p>\r\n\r\n<p>Nằm trong khuôn khổ các hoạt động&nbsp;tại&nbsp;Bình Thuận, <a href="http://www.vovietchung.com/" title="nhà thiết kế Võ Việt Chung"><strong>nhà thiết kế Võ Việt Chung</strong></a>, Giám đốc dự án <strong>Blue Ocean World</strong> giới thiệu bộ sưu tập “Màu đại dương” với thông điệp hãy chung tay giữ gìn môi trường đại dương xanh, sạch…</p>\r\n', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 1, 'vi', ',7,', 1, '2014-01-20 09:50:50', '2014-01-20 15:00:38', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (3, 'Nghệ sĩ, hoa hậu cùng ngư dân nhặt rác bờ biển', 'nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien', 'tin-tuc.jpg', '<p>Hàng trăm ngư dân, đoàn viên thanh niên, nhân viên khu du lịch, cư dân cùng các nghệ sĩ, hoa hậu tham gia làm vệ sinh khu vực bờ biển ở phường Hàm Tiến (Phan Thiết, Bình Thuận) ngày 25-9.</p>\r\n', '<h2>Hàng trăm ngư dân, đoàn viên thanh niên, nhân viên khu du lịch, cư dân cùng các nghệ sĩ, hoa hậu tham gia làm vệ sinh khu vực bờ biển ở phường Hàm Tiến (Phan Thiết, Bình Thuận) ngày 25-9.</h2>\r\n\r\n<p style="text-align: center;"><em><strong><img alt="Hoa hậu Đông Nam Á Diệu Hân, MC ca sĩ Nguyệt Ánh cùng mọi người làm vệ sinh bãi biển Hàm Tiến, Mũi Né" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien.jpg" style="width: 600px; height: 400px;" /><br />\r\nHoa hậu Đông Nam Á Diệu Hân</strong> (ngồi), MC ca sĩ Nguyệt Ánh cùng mọi người làm vệ sinh bãi biển Hàm Tiến, Mũi Né</em></p>\r\n\r\n<p style="text-align: center;"><em style="font-size: 13px; text-align: center;"><strong><img alt="Ngư dân cùng tham gia làm vệ sinh bãi biển Hàm Tiến, Mũi Né" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien-2.jpg" style="width: 600px; height: 400px;" /></strong></em><br />\r\n<em>Ngư dân cùng tham gia làm vệ sinh bãi biển Hàm Tiến, Mũi Né</em></p>\r\n\r\n<p>Đây là chuỗi hoạt động vì môi trường biển tại khu du lịch nổi tiếng của VN do quỹ <strong>Blue Ocean World</strong> tổ chức hưởng ứng Ngày Du lịch thế giới (27-9).</p>\r\n\r\n<p>Hoạt động này nhằm tuyền truyền cho du khách, dân cư làng biển ý thức giữ gìn bảo vệ cảnh quang, làm sạch môi trường xung quanh với khẩu hiện "hành động bảo vệ môi trường hôm nay chính là bảo vệ môi trường cho thế hệ mai sau này".</p>\r\n\r\n<p>Nhìn một góc bãi biển đã dọn sạch rác, ngư dân Thái Văn Hùng vui mừng cho biết thuyền của anh "tối nay ra khơi sẽ không bi rác quấn chân vịt nữa". Đây là bến đậu thuyền đánh cá gần bờ và hứng rác bị sóng biển đánh tấp vô tạo thành một khu vực tập trung rác lớn nhất ở khu du lịch Mũi Né.</p>\r\n', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 1, 'vi', ',7,', 1, '2014-01-20 09:51:36', '2014-01-20 15:00:34', 'admin', 'admin', 0);
INSERT INTO `info` VALUES (4, 'NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World', 'ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world', 'tin-tuc.jpg', '<p>Mới đây tại Hồ Tràm strip, Xuyên Mộc, tỉnh Bà Rịa – Vũng Tàu đã diễn ra lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung.</p>\r\n', '<h2>Mới đây (ngày 02/8/2013) tại Hồ Tràm strip, Xuyên Mộc, tỉnh Bà Rịa – Vũng Tàu đã diễn ra lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung.</h2>\r\n\r\n<p>Đây là sự kiện được nhiều người quan tâm với sự hợp tác của Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung tại The Grand Hồ Tràm Strip. Đại diện Quỹ Bảo vệ môi trường Việt Nam có ông Bùi Cách Tuyến – thứ trưởng bộ Tài Nguyên môi trường, chủ tịch hội đồng quản lý Quỹ bảo vệ môi trường Việt Nam. Ông Nguyễn Nam Phương – Giám đốc quỹ bảo vệ môi trường Việt Nam.<br />\r\n<br />\r\nVề phía đại diện&nbsp;<strong>Công ty TNHH MTV Võ Việt Chung</strong>: Giám đốc triển khai dự án Blue Ocean World – NTK Võ Việt Chung và đại diện cấp cao của The Grand Hồ Tràm Strip cùng các quan chức có mặt tại buổi ký kết.<br />\r\n<br />\r\nÔng Bùi Cách Tuyến thứ trưởng bộ Tài Nguyên Môi trường Việt Nam đã có phát biểu trong buổi lễ: Để nâng cao nhận thức của cộng đồng, nhất là trong giới văn nghệ sĩ, tôi ủng hộ việc thành lập dự án Blue Ocean World của NTK Võ Việt Chung. Để nâng cao nhận thức về biển- đại dương, cũng như tầm ảnh hưởng của những người làm nghệ thuật sẽ tác động mạnh và cùng chung tay hành động để dự án được phát triển hiệu quả trong thời gian sắp tới…<br />\r\n<br />\r\nÔng Võ Việt Chung – giám đốc triển khai dự án Blue Ocean World đã phát biểu: Mọi người hãy cùng chung tay hành động trước khi quá muộn. Tôi kêu gọi các bạn, chúng ta hãy cùng nắm tay nhau hành động những điều thiết thực nhất để biển trở nên sạch đẹp và xanh hơn. Qua đó, NTK cũng đã chia sẻ những tình cảm và suy nghĩ của mình, những kế hoạch trong thời gian sắp tới để triển khai dự án Blue Ocean World…</p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world.jpg" style="width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-2.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /><br />\r\n<em><span style="line-height: 1.6em;">Hình ảnh tại buổi lễ ký kết thỏa thuận hợp tác</span></em></p>\r\n\r\n<p>Trong dịp này, <strong>ông Võ Việt Chung</strong> cũng đã công bố 4 đại sứ của Blue Ocean World gồm có:</p>\r\n\r\n<ol>\r\n	<li>Đạo diễn - DVĐA Kim Khánh</li>\r\n	<li>Hoa hậu - Ảo thuật gia quốc tế Ngô Mỹ Uyên</li>\r\n	<li>MC - Ca sĩ Nguyệt Ánh</li>\r\n	<li>Hoa hậu Đông Nam Á- Diệu Hân</li>\r\n</ol>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-3.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p>Một số hình ảnh khác tại lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung:</p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-4.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-5.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-6.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-7.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-8.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-9.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-10.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-11.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-12.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p>Tham dự buổi ký kết triển khai <strong>dự án Blue Ocean World</strong> còn có rất nhiều phóng viên các báo đài, các nhân vật cấp cao trong chính phủ cũng như các nghệ sĩ nổi tiếng trong và ngoài nước tham dự.</p>\r\n', 'NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World', 1, 'vi', ',7,', 1, '2014-01-20 09:52:09', '2014-01-20 15:00:30', 'admin', 'admin', 0);

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
INSERT INTO `language` VALUES (2, 'English', 'en', 2, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'vai-soi-doanh-phong', '', '', 'Vải Sợi Doanh Phong', 'Vải Sợi Doanh Phong', 'Vải Sợi Doanh Phong', 0, 1, ',1,3,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 09:10:09', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Hồ sơ công ty', 'ho-so-cong-ty', 'ho-so-cong-ty/', '', 'Hồ sơ công ty', 'Hồ sơ công ty', 'Hồ sơ công ty', 5, 2, ',6,', 'vi', 0, 1, 1, '2013-10-09 15:38:02', '2013-10-09 14:10:34', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Lịch sử hình thành', 'lich-su-hinh-thanh', 'lich-su-hinh-thanh/', '', 'Lịch sử hình thành', 'Lịch sử hình thành', 'Lịch sử hình thành', 5, 2, ',6,', 'vi', 0, 2, 1, '2013-10-09 15:38:25', '2013-10-09 14:10:59', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Văn hóa doanh nghiệp', 'van-hoa-doanh-nghiep', 'van-hoa-doanh-nghiep/', '', 'Văn hóa doanh nghiệp', 'Văn hóa doanh nghiệp', 'Văn hóa doanh nghiệp', 5, 2, ',6,', 'vi', 0, 3, 1, '2013-10-09 15:38:38', '2013-10-09 14:11:25', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',1,3,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 17:38:39', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 3, ',1,3,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 09:39:41', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (7, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 0, 2, ',1,3,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 09:41:12', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (8, 'Tuyển dụng', 'tuyen-dung', 'tuyen-dung/', '', 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 0, 4, ',1,3,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 16:25:07', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Nhung đế vải không dệt', 'nhung-de-vai-khong-det', 'nhung-de-vai-khong-det/', '', 'Nhung đế vải không dệt', 'Nhung đế vải không dệt', 'Nhung đế vải không dệt', 6, 3, ',6,', 'vi', 0, 3, 1, '2014-01-15 23:19:16', '2014-01-15 09:46:08', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Nhung đế bông vải', 'nhung-de-bong-vai', 'nhung-de-bong-vai/', '', 'Nhung đế bông vải', 'Nhung đế bông vải', 'Nhung đế bông vải', 6, 3, ',6,', 'vi', 0, 2, 1, '2013-10-09 15:40:52', '2013-10-09 09:45:22', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (11, 'Thông tin liên hệ', 'thong-tin-lien-he', 'thong-tin-lien-he/', '', 'Thông tin liên hệ', 'Thông tin liên hệ', 'Thông tin liên hệ', 0, 8, ',1,3,', 'vi', 0, 8, 1, '2014-01-15 23:19:34', '2014-01-15 09:42:43', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (12, 'Home', 'home', 'home/', '', 'Home', 'Home', 'Home', 0, 1, ',1,', 'en', 0, 1, 1, '2014-01-18 17:42:43', '2014-01-18 17:42:43', 'admin', '', 0);
INSERT INTO `menu` VALUES (13, 'Nhung đế hút nước', 'nhung-de-hut-nuoc', 'nhung-de-hut-nuoc/', '', 'Nhung đế hút nước', 'Nhung đế hút nước', 'Nhung đế hút nước', 6, 3, ',6,', 'vi', 0, 4, 1, '2014-01-20 09:55:30', '2014-01-20 09:46:43', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (14, 'Nhung lông dài', 'nhung-long-dai', 'nhung-long-dai/', '', 'Nhung lông dài', 'Nhung lông dài', 'Nhung lông dài', 6, 3, ',6,', 'vi', 0, 5, 1, '2014-01-20 09:55:52', '2014-01-20 09:47:14', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (15, 'Nhung hai mặt', 'nhung-hai-mat', 'nhung-hai-mat/', '', 'Nhung hai mặt', 'Nhung hai mặt', 'Nhung hai mặt', 6, 3, ',6,', 'vi', 0, 6, 1, '2014-01-20 09:56:06', '2014-01-20 09:47:47', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (16, 'Nhung hạt (Nhung PP)', 'nhung-hat-nhung-pp', 'nhung-hat-nhung-pp/', '', 'Nhung hạt (Nhung PP)', 'Nhung hạt (Nhung PP)', 'Nhung hạt (Nhung PP)', 6, 3, ',6,', 'vi', 0, 7, 1, '2014-01-20 09:56:22', '2014-01-20 09:48:16', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (17, 'Nhung đế Pvc, Ps.pe', 'nhung-de-pvc-ps-pe', 'nhung-de-pvc-ps-pe/', '', 'Nhung đế Pvc, Ps.pe', 'Nhung đế Pvc, Ps.pe', 'Nhung đế Pvc, Ps.pe', 6, 3, ',6,', 'vi', 0, 8, 1, '2014-01-20 09:56:37', '2014-01-20 09:48:58', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (18, 'Nhung đế lụa', 'nhung-de-lua', 'nhung-de-lua/', '', 'Nhung đế lụa', 'Nhung đế lụa', 'Nhung đế lụa', 6, 3, ',6,', 'vi', 0, 1, 1, '2014-01-20 15:05:16', '2014-01-20 09:44:43', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (19, 'Facebook', 'facebook', 'javascript:;1', 'facebook.gif', 'Facebook', 'Facebook', 'Facebook', 0, 9, ',5,', 'vi', 0, 101, 1, '2014-01-21 09:12:17', '2014-01-21 09:18:14', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (20, 'Twitter', 'twitter', 'javascript:;2', 'twitter.gif', 'Twitter', 'Twitter', 'Twitter', 0, 9, ',5,', 'vi', 0, 102, 1, '2014-01-21 09:12:45', '2014-01-21 09:18:52', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (21, 'Google+', 'google', 'javascript:;3', 'google.gif', 'Google+', 'Google+', 'Google+', 0, 9, ',5,', 'vi', 0, 103, 1, '2014-01-21 09:13:09', '2014-01-21 09:19:00', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (22, 'Temp', 'temp', 'javascript:;4', 'temp.gif', 'Temp', 'Temp', 'Temp', 0, 9, ',5,', 'vi', 0, 104, 1, '2014-01-21 09:14:25', '2014-01-21 09:19:08', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (23, 'Linkedin', 'linkedin', 'javascript:;#5', 'linked-in.gif', 'Linkedin', 'Linkedin', 'Linkedin', 0, 9, ',5,', 'vi', 0, 105, 1, '2014-01-21 09:14:52', '2014-01-21 09:19:18', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (24, 'Nhung xốp', 'nhung-xop', 'nhung-xop/', '', 'Nhung xốp', 'Nhung xốp', 'Nhung xốp', 6, 3, ',6,', 'vi', 0, 9, 1, '2014-01-21 09:49:22', '2014-01-21 09:49:22', 'admin', '', 0);
INSERT INTO `menu` VALUES (25, 'Nhung giấy', 'nhung-giay', 'nhung-giay/', '', 'Nhung giấy', 'Nhung giấy', 'Nhung giấy', 6, 3, ',6,', 'vi', 0, 10, 1, '2014-01-21 09:49:41', '2014-01-21 09:49:41', 'admin', '', 0);
INSERT INTO `menu` VALUES (26, 'Nhung giả da', 'nhung-gia-da', 'nhung-gia-da/', '', 'Nhung giả da', 'Nhung giả da', 'Nhung giả da', 6, 3, ',6,', 'vi', 0, 11, 1, '2014-01-21 09:50:02', '2014-01-21 09:50:02', 'admin', '', 0);
INSERT INTO `menu` VALUES (27, 'Nhung hoa văn', 'nhung-hoa-van', 'nhung-hoa-van/', '', 'Nhung hoa văn', 'Nhung hoa văn', 'Nhung hoa văn', 6, 3, ',6,', 'vi', 0, 12, 1, '2014-01-21 09:50:20', '2014-01-21 09:50:20', 'admin', '', 0);
INSERT INTO `menu` VALUES (28, 'Nhung dán (keo)', 'nhung-dan-keo', 'nhung-dan-keo/', '', 'Nhung dán (keo)', 'Nhung dán (keo)', 'Nhung dán (keo)', 6, 3, ',6,', 'vi', 0, 13, 1, '2014-01-21 09:50:39', '2014-01-21 09:50:39', 'admin', '', 0);
INSERT INTO `menu` VALUES (29, 'Quản lý chất lượng', 'quan-ly-chat-luong', 'quan-ly-chat-luong/', '', 'Quản lý chất lượng', 'Quản lý chất lượng', 'Quản lý chất lượng', 5, 2, ',6,', 'vi', 0, 4, 1, '2014-01-21 14:11:51', '2014-01-21 14:11:51', 'admin', '', 0);

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
INSERT INTO `menu_admin` VALUES (6, 'Sản phẩm', 'photo_gallery', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (7, 'Tuyển dụng', 'tuyendung', '', 7, 1, 0);
INSERT INTO `menu_admin` VALUES (8, 'Photo', 'photo_gallery', NULL, 8, 0, 0);
INSERT INTO `menu_admin` VALUES (9, 'Video', 'video', NULL, 9, 0, 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `menu_position`
-- 

INSERT INTO `menu_position` VALUES (1, 'Main', 0);
INSERT INTO `menu_position` VALUES (2, 'Top', 0);
INSERT INTO `menu_position` VALUES (3, 'Bottom', 0);
INSERT INTO `menu_position` VALUES (4, 'Left', 1);
INSERT INTO `menu_position` VALUES (5, 'Social', 0);
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
INSERT INTO `menu_type` VALUES (3, 'Sản phẩm', 0);
INSERT INTO `menu_type` VALUES (4, 'Tuyển dụng', 0);
INSERT INTO `menu_type` VALUES (5, 'Photo', 1);
INSERT INTO `menu_type` VALUES (6, 'Video', 1);
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
  `other` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

-- 
-- Dumping data for table `photo_gallery`
-- 

INSERT INTO `photo_gallery` VALUES (104, 'Sản phẩm 1', 'product-1.jpg', 'vi', ',6,', 1, 1, '2014-01-20 14:16:12', '2014-01-20 15:33:05', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (105, 'Sản phẩm 2', 'product-2.jpg', 'vi', ',6,', 1, 1, '2014-01-20 14:16:19', '2014-01-20 15:41:12', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (106, 'Sản phẩm 3', 'product-3.jpg', 'vi', ',6,', 1, 1, '2014-01-20 14:16:23', '2014-01-20 15:41:14', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (107, 'Sản phẩm 4', 'product-1.jpg', 'vi', ',6,', 1, 1, '2014-01-20 14:16:28', '2014-01-20 15:41:17', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (112, 'Sản phẩm 9', 'product-3.jpg', 'vi', ',6,', 1, 1, '2014-01-21 15:34:46', '2014-01-21 15:34:46', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (108, 'Sản phẩm 5', 'product-2.jpg', 'vi', ',6,', 1, 1, '2014-01-20 14:27:49', '2014-01-20 15:41:19', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (111, 'Sản phẩm 8', 'product-2.jpg', 'vi', ',6,', 1, 1, '2014-01-21 15:34:42', '2014-01-21 15:34:42', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (109, 'Sản phẩm 6', 'product-3.jpg', 'vi', ',8,', 1, 1, '2014-01-20 14:27:55', '2014-01-20 15:34:21', 'admin', 'admin', 0);
INSERT INTO `photo_gallery` VALUES (110, 'Sản phẩm 7', 'product-1.jpg', 'vi', ',6,', 1, 1, '2014-01-21 15:34:37', '2014-01-21 15:34:37', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` VALUES (1, 'Sản phẩm 1', 'san-pham-1', 'product-1.jpg', '', '', 'Sản phẩm 1', 1, 'vi', ',6,', 1, '2014-01-21 13:10:22', '2014-01-21 13:10:22', 'admin', NULL, 0);
INSERT INTO `products` VALUES (2, 'Sản phẩm 2', 'san-pham-2', 'product-2.jpg', '', '', 'Sản phẩm 2', 1, 'vi', ',6,', 1, '2014-01-21 13:10:30', '2014-01-21 13:10:30', 'admin', NULL, 0);
INSERT INTO `products` VALUES (3, 'Sản phẩm 3', 'san-pham-3', 'product-3.jpg', '', '', 'Sản phẩm 3', 1, 'vi', ',6,', 1, '2014-01-21 13:10:38', '2014-01-21 13:10:38', 'admin', NULL, 0);

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

INSERT INTO `slider_banner` VALUES (1, 'Slider', 'slider.jpg', 'javascript:;', '', 'vi', 1, ',1,5,6,7,8,11,', 1, '2013-10-09 16:34:33', '2013-10-09 10:06:11', 'admin', 'admin', 0);

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

INSERT INTO `slider_banner_position` VALUES (1, 'Slider 740x255 px', 0);
INSERT INTO `slider_banner_position` VALUES (2, 'Partner 160 x 95 px', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tuyendung`
-- 

CREATE TABLE `tuyendung` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `content` text,
  `metaKeyword` varchar(250) default NULL,
  `soluong_tuyen` int(3) NOT NULL,
  `noilamviec` varchar(50) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `tuyendung`
-- 

INSERT INTO `tuyendung` VALUES (1, 'Giám đốc nhân sự', 'giam-doc-nhan-su', '', 'Tuyển Giám đốc nhân sự', '<p>Tuyển Giám đốc nhân sự</p>\r\n', 'Giám đốc nhân sự', 1, 'Hồ Chí Minh', 0, 'vi', ',8,', 1, '2014-01-24 16:23:05', '2014-02-20 16:23:05', 'admin', NULL, 0);
INSERT INTO `tuyendung` VALUES (2, 'Nhân sự văn phòng', 'nhan-su-van-phong', '', 'Tuyển Nhân sự văn phòng', '<p>Nhân sự văn phòng</p>\r\n', 'Nhân sự văn phòng', 4, 'Hồ Chí Minh', 0, 'vi', ',8,', 1, '2014-01-24 16:23:28', '2014-02-20 16:23:28', 'admin', NULL, 0);
INSERT INTO `tuyendung` VALUES (3, 'Kế toán trưởng', 'ke-toan-truong', '', 'Kế toán trưởng', '<p>Kế toán trưởng</p>\r\n', 'Kế toán trưởng', 1, 'Hồ Chí Minh', 0, 'vi', ',8,', 1, '2014-01-24 16:23:50', '2014-02-20 16:23:50', 'admin', NULL, 0);

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

INSERT INTO `users` VALUES (25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,7,8,9,13,14,15,', ',1,2,3,4,6,7,8,9,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

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
  `link` varchar(250) default NULL,
  `metaDescription` text,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `video`
-- 

INSERT INTO `video` VALUES (1, '42 Người đẹp Việt tham dự VCK tự giới thiệu', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu.jpg', 'txMAS8BUkxI', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p><strong>Aenean dictum lacinia tortor.</strong></p>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.&nbsp;</p>\r\n', '42 Người đẹp Việt tham dự VCK tự giới thiệu', 1, 'vi', ',9,', 1, '2014-01-20 10:21:15', '2014-01-20 10:21:15', 'admin', NULL, 0);
INSERT INTO `video` VALUES (2, 'Á hậu Kiều Khanh tham dự Miss World', 'a-hau-kieu-khanh-tham-du-miss-world', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu.jpg', 'txMAS8BUkxI', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p><strong>Aenean dictum lacinia tortor.</strong></p>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.&nbsp;</p>\r\n', 'Á hậu Kiều Khanh tham dự Miss World', 1, 'vi', ',9,', 1, '2014-01-20 10:23:16', '2014-01-14 10:38:43', 'admin', 'admin', 0);
INSERT INTO `video` VALUES (3, 'Đêm chung kết HHTGNV 2010 - Phần III', 'dem-chung-ket-hhtgnv-2010-phan-iii', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu.jpg', 'txMAS8BUkxI', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p><strong>Aenean dictum lacinia tortor.</strong></p>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.&nbsp;</p>\r\n', 'Đêm chung kết HHTGNV 2010 - Phần III', 1, 'vi', ',9,', 1, '2014-01-20 10:23:30', '2014-01-18 10:23:30', 'admin', NULL, 0);
INSERT INTO `video` VALUES (4, 'Đêm chung kết HHTGNV 2010 - Phần II', 'dem-chung-ket-hhtgnv-2010-phan-ii', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu.jpg', 'txMAS8BUkxI', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p><strong>Aenean dictum lacinia tortor.</strong></p>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.&nbsp;</p>\r\n', 'Đêm chung kết HHTGNV 2010 - Phần II', 1, 'vi', ',9,', 1, '2014-01-20 10:23:39', '2014-01-17 10:23:39', 'admin', NULL, 0);
INSERT INTO `video` VALUES (5, 'Đêm chung kết HHTGNV 2010 - Phần I', 'dem-chung-ket-hhtgnv-2010-phan-i', '42-nguoi-dep-viet-tham-du-vck-tu-gioi-thieu.jpg', 'txMAS8BUkxI', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p><strong>Aenean dictum lacinia tortor.</strong></p>\r\n\r\n<p>Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor.&nbsp;</p>\r\n', 'Đêm chung kết HHTGNV 2010 - Phần I', 1, 'vi', ',9,', 1, '2014-01-20 10:23:48', '2014-01-16 10:23:48', 'admin', NULL, 0);
