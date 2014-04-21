-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 21, 2014 at 06:33 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `rehmi_ppp`
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

INSERT INTO `web_config` VALUES (1, 'Việt nam', 'vi', '10.8390173,106.6818735', 'localhost/all/ppp_rehmi', 6, 12, 12, 10, 'Bản quyền © 2014 SIUP', '<p>Địa chỉ:&nbsp;1A Nguyễn Văn Lượng, Phường 6,&nbsp;Quận Gò Vấp, TP.HCM</p>\r\n\r\n<p>Điện thoại:&nbsp;(08) 2242 9375</p>\r\n\r\n<p>Email: info@rehmi.org</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ:&nbsp;1A Nguyễn Văn Lượng, Phường 6,&nbsp;Quận Gò Vấp, TP.HCM<br />\r\nĐiện thoại: <span style="color:#B22222;">(08) 2242 9375</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Email:&nbsp;<span style="color:#B22222;">info@rehmi.org</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-02-20 13:35:24', '2014-04-21 18:23:14', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', '10.7867893,106.6972446', 'localhost/all/ppp_rehmi', 5, 12, 12, 10, 'Copyright © 2014 SIUP', '<p>BỘ XÂY DỰNG</p>\r\n\r\n<p>VIỆN QUY HOẠCH ĐÔ THỊ VÀ NÔNG THÔN QUỐC GIA</p>\r\n\r\n<p>PHÂN VIỆN QUY HOẠCH ĐÔ THỊ NÔNG THÔN MIỀN NAM</p>\r\n', '<p><strong>Thông tin liên hệ</strong></p>\r\n\r\n<p>Mọi chi tiết xin liên hệ với chúng tôi:<br />\r\nĐịa chỉ: 65 Mạc Đỉnh Chi, Phường ĐaKao, Quận 1, Tp.HCM&nbsp;<br />\r\nTelephone: <span style="color:#B22222;">08 38224476</span> &nbsp; &nbsp; Fax: <span style="color:#B22222;">08 38220090</span> &nbsp; &nbsp; Email: <span style="color:#B22222;">contact@siup.vn</span></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-11-12 15:50:44', '2014-04-17 17:59:19', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `web_contact`
-- 

INSERT INTO `web_contact` VALUES (8, 'Tran Nhan', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', '<p>test noi dung lien he</p>\r\n', 0, '', 0, '2014-04-17 18:01:09', '2014-04-17 18:02:05', 'khachhang', 'admin', 0);
INSERT INTO `web_contact` VALUES (9, '333333333', 'hieunhan112@gmail.com', 'Điện thoại', 'Địa chỉ', '3333333333333333333333', 0, '', 0, '2014-04-21 18:11:09', '2014-04-21 18:11:09', 'khachhang', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (29, 'Cô giáo dạy khiếm thính thành chuyên gia giáo dục toàn cầu', 'co-giao-day-khiem-thinh-thanh-chuyen-gia-giao-duc-toan-cau', 'co-giao-day-khiem-thinh-thanh-chuyen-gia-giao-duc-toan-cau.jpg', 'Tự mày mò bằng chiếc máy tính duy nhất của ngôi trường khiếm thính, cô giáo Linh lần lượt cho ra đời những sản phẩm Công nghệ thông tin hữu dụng cho giảng dạy.', '<h2>Tự mày mò bằng chiếc máy tính duy nhất của ngôi trường khiếm thính, cô giáo Linh lần lượt cho ra đời những sản phẩm Công nghệ thông tin hữu dụng cho giảng dạy.</h2>\r\n\r\n<div id="left_calculator">\r\n<p>Cô Phạm Đặng Mai Linh, 35 tuổi, sinh ra trong gia đình cha mẹ đều làm nghề giáo ở Đà Lạt (Lâm Đồng). Được đào tạo ngạch giáo viên tiểu học nhưng ra trường cô lại xin vào trường Khiếm thính Lâm Đồng. Với nỗ lực tự học, tự nghiên cứu, cô đã liên tục nhận những giải thưởng danh giá về Công nghệ thông tin (CNTT). Mới đây, Linh là một trong hai người Việt Nam được công nhận là Chuyên gia cố vấn về giáo dục toàn cầu của Microsoft.</p>\r\n\r\n<p>Nói về người đồng nghiệp của mình, Hiệu trường trường Khiếm thính Lâm Đồng Nguyễn Thị Nhàn cho biết, 14 năm trước, lúc cô Linh mới về nhận công tác, cơ sở vật chất rất nghèo nàn, cả trường chỉ có một chiếc máy tính để bàn dành cho hiệu trưởng, hiệu phó. Nhưng cứ sau giờ hành chính Linh lại mượn chìa khóa phòng xin được dùng máy, có những hôm gần nửa đêm mới về nhà.</p>\r\n\r\n<p>"Trước tinh thần ham học hỏi của Linh, lãnh đạo nhà trường rất khuyến khích. Chúng tôi cũng rất bất ngờ vì chỉ tự mày mò nghiên cứu, cô ấy đã giúp nhà trường có những giải pháp hay trong giảng dạy", cô Nhàn nói.</p>\r\n\r\n<p>Bằng việc tự học, năm 2011 Linh được giải nhất trong cuộc thi bài giảng điện tử xuất sắc nhất tỉnh Lâm Đồng. Năm sau cô tiếp tục dành giải nhì cuộc thi Giáo viên sáng tạo cấp quốc gia do Bộ Giáo dục tổ chức. Sau đó Linh tham gia hệ thống trực tuyến của Microsoft qua đó chứng minh năng lực bằng các hoạt động giảng dạy, có dự án thiết thực rồi được mời tham dự diễn đàn giáo dục của Microsoft khu vực Châu Á - Thái Bình Dương tổ chức tại Auckand - New Zealand .Sau 8 năm giảng dạy tại trường Khiếm thính, Linh chuyển công tác sang trường Tiểu học Thực nghiệm Lê Qúy Đôn – Đà Lạt. Tại đây, được sự ủng hộ, tạo điều kiện của Ban giám hiệu, Linh tiếp tục tự học hỏi, tìm tòi về CNTT ứng dụng trong dạy học.</p>\r\n\r\n<p>Năm 2013, Linh nhận giải nhất bài giảng E-learning cấp quốc gia của Bộ Gíao dục. Bài dự thi của Linh được đánh giá cao vì có tính thực tiễn đóng góp đáng kể vào kho bài giảng, giúp giáo viên có thể truy tìm tham khảo và học hỏi.</p>\r\n\r\n<p>Đầu năm nay, Linh là một trong hai người Việt Nam được công nhận chuyên gia cố vấn giáo dục toàn cầu của Microsoft với đề án “Hướng dẫn học sinh khiếm thính dùng công nghệ thông tin để giao tiếp’’.</p>\r\n\r\n<p>Vừa trở về từ diễn đàn giáo dục toàn cầu tổ chức tại Barcelona - Tây Ban Nha, Linh cho biết: "Sở dĩ tôi chọn đề tài này vì vốn rất gần gũi với người khiếm thính trong khi yêu cầu của Microsoft là các đề án dự thi đã được ứng dụng. Đề án này đã được ứng dụng tại trường Khiếm thính Lâm Đồng, nơi tôi xem như ngôi nhà thứ hai của mình".</p>\r\n\r\n<p>Diễn đàn thường niên của Microsoft năm nay là lần thứ 10 được tổ chức. Đây cũng là diễn đàn qui mô nhất từ trước tới nay với 1.100 đại biểu tham dự. Ngoài 250 chuyên gia cố vấn giáo dục toàn cầu của Microsoft được công nhận qua 23.000 đề án dự thi đến từ 150 quốc gia, các đại biểu còn lại là các nhà lãnh đạo giáo dục, lãnh đạo trường học và những người trực tiếp làm công tác giảng dạy...</p>\r\n\r\n<p>Diễn đàn toàn cầu này còn là cơ hội cho các nhà giáo dục học hỏi những phương pháp thông minh, sáng tạo nhất từ các đồng nghiệp, chia sẻ về thách thức và hợp tác để cùng chuyển đổi nền giáo dục thế kỷ 21. Để được Microsoft chọn vào đội ngũ chuyên gia giáo dục, các ứng viên cần chứng minh năng lực bằng các hoạt động giảng dạy hoặc dự án thiết thực.</p>\r\n</div>\r\n', '2014-04-21 12:20:41', '2014-04-21 11:20:00', 1, 'Cô giáo dạy khiếm thính thành chuyên gia giáo dục toàn cầu,co giao day khiem thinh thanh chuyen gia giao duc toan cau', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (28, 'Viện Nghiên Cứu Kinh Tế và Quản Trị Nhân Sự', 'vien-nghien-cuu-kinh-te-va-quan-tri-nhan-su', '', 'Viện Nghiên Cứu Kinh Tế và Quản Trị Nhân Sự - Economic Research and Human Management Institute (gọi tắt là Rehmi) là tổ chức chuyên nghiên cứu khoa học và triển khai ứng dụng trong lĩnh vực kinh doanh và quản trị kinh doanh', '<p><span style="color:#0000FF;"><strong>1.&nbsp;Giới thiệu Viện</strong></span></p>\r\n\r\n<ul>\r\n	<li>Viện Nghiên&nbsp; Cứu&nbsp; Kinh&nbsp; Tế&nbsp; và&nbsp; Quản&nbsp; Trị&nbsp; Nhân&nbsp; Sự&nbsp; - Economic Research and Human Management Institute (gọi tắt là Rehmi)&nbsp;là tổ chức chuyên nghiên cứu khoa học và triển khai ứng dụng trong lĩnh vực kinh doanh và quản trị kinh doanh;</li>\r\n	<li>Rehmi tập trung nghiên cứu đổi mới phương pháp quản lý trong lĩnh vực quản trị marketing, quản trị thương hiệu, quản trị tài chính, quản trị nhân sự, quản trị sản xuất và các nhân tố phát triển khác trong lĩnh vực quản trị doanh nghiệp;</li>\r\n	<li>Tư vấn, chuyển giao kết quả nghiên cứu, thông tin khoa học, huấn luyện, bồi dưỡng nâng cao nghiệp vụ chuyên môn nhân sự tại các doanh nghiệp/tổ chức trong nước, các công ty/tập đoàn đa quốc gia;</li>\r\n	<li>Hợp tác nghiên cứu khoa học, đánh giá, kiểm định chất lượng đào tạo theo tiêu chuẩn quốc tế cho các tổ chức đào tạo trong nước;</li>\r\n	<li>Hợp tác tư vấn, huấn luyện, đào tạo, bồi dưỡng nâng cao nghiệp vụ chuyên môn với các tổ chức trong và ngoài nước trong lĩnh vực kinh doanh và quản trị kinh doanh;</li>\r\n	<li>Tổ chức huấn luyện đào tạo nghề chất lượng theo tiêu chuẩn quốc tế</li>\r\n	<li>Tổ chức và thực hiện các đề tài nghiên cứu khoa học;</li>\r\n	<li>Cam kết cung cấp nguồn nhân lực chất lượng cao cho thị trường lao động Việt Nam.</li>\r\n</ul>\r\n\r\n<p><span style="color:#0000FF;"><strong>2.&nbsp;Tầm nhìn (Vision)</strong></span></p>\r\n\r\n<ul>\r\n	<li>Cam kết cung cấp nguồn nhân lực chất lượng cao nhất cho thị trường lao động Việt Nam;</li>\r\n	<li>Một tổ chức nghiên cứu, đánh giá, kiểm định chất lượng đào tạo độc lập theo tiêu chuẩn quốc tế hàng đầu tại Việt Nam;</li>\r\n	<li>Năm 2020, trở thành một trường huấn luyện, đào tạo nghề theo tiêu chuẩn quốc tế nhất Việt Nam.</li>\r\n</ul>\r\n\r\n<p><span style="color:#0000FF;"><strong>3.&nbsp;Sứ mạng (Mission)</strong></span></p>\r\n\r\n<ul>\r\n	<li>Hoàn thành mục tiêu nghiên cứu khoa học trong lĩnh vực kinh tế và quản trị kinh doanh.</li>\r\n	<li>Hoàn thành các dự án huấn luyện, bồi dưỡng, nâng cao nghiệp vụ, tìm kiếm thế hệ nhân tài mới phục vụ cho sự phát triển của nền kinh tế nước nhà theo kế hoạch ngắn hạn và dài hạn;</li>\r\n	<li>Định hướng chiến lược, cơ cấu tổ chức, đào tạo nâng cao tri thức để tạo môi trường làm việc hài hòa và cạnh tranh tầm quốc tế hiệu quả nhất.</li>\r\n</ul>\r\n\r\n<p><span style="color:#0000FF;"><strong>4.&nbsp;Giá trị (Value)</strong></span></p>\r\n\r\n<ul>\r\n	<li>REHMI - Đem đến cho học viên sự cảm nhận thực về chất lượng đào tạo;</li>\r\n	<li>REHMI - Đáp ứng đúng và chất lượng nguồn nhân lực;</li>\r\n	<li>REHMI - Hoàn thành đúng trách nhiệm trong từng công việc.</li>\r\n</ul>\r\n', '2014-04-21 12:17:13', '2014-04-21 11:17:00', 1, 'Viện Nghiên Cứu Kinh Tế và Quản Trị Nhân Sự,vien nghien cuu kinh te va quan tri nhan su', 0, 'vi', ',1,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (30, 'Nhu cầu nhân sự cấp cao tiếp tục tăng', 'nhu-cau-nhan-su-cap-cao-tiep-tuc-tang', 'nhu-cau-nhan-su-cap-cao-tiep-tuc-tang.jpg', 'Năm nay, nhu cầu nhân sự cao cấp được dự báo tập trung ở các ngành hàng tiêu dùng, dược phẩm, cho vay tiêu dùng, bán lẻ và hóa chất...', '<h2>Năm nay, nhu cầu nhân sự cao cấp được dự báo tập trung ở các ngành hàng tiêu dùng, dược phẩm, cho vay tiêu dùng, bán lẻ và hóa chất...</h2>\r\n\r\n<p>Theo dữ liệu của VietnamWorks, nhu cầu nhân lực trung cấp chiếm đa số với 74%, và 21% là nhân lực cấp cao (từ cấp manager đến director, CEO). Công ty này cũng nhận định, hiện các nhà tuyển dụng đều đòi hỏi ứng viên có kinh nghiệm trong ngành nghề hoặc lĩnh vực họ đang đăng tuyển, thể hiện qua các vị trí yêu cầu kinh nghiệm hoặc ở cấp quản lý.</p>\r\n\r\n<p>Các doanh nghiệp vẫn gặp rất nhiều khó khăn trong quá trình tuyển nhân sự cấp cao.&nbsp;</p>\r\n\r\n<p>Khảo sát của VietnamWorks cho thấy, trong năm 2013, ngành công nghiệp sản xuất có nhu cầu tuyển nhiều nhân sự cấp cao nhất, chiếm đến 19,6%, ngành du lịch, nhà hàng, khách sạn đứng thứ nhì khi tuyển 8,9% nhân sự quản lý cấp cao. Các báo cáo tuyển dụng của đơn vị này cũng cho thấy nhu cầu tuyển dụng đang trên đà tăng và sẽ tiếp tục tăng trong 2014.</p>\r\n\r\n<p>Tuy nhiên, các khảo sát cũng chỉ rõ khó khăn trong quá trình tuyển dụng nhân sự cấp cao hiện nay. JobStreet tại Việt Nam nhận định, hầu hết bộ phận làm công tác nhân sự đều gặp khó khăn trong tìm kiếm quản lý cấp cao, do các nhân sự này có chuyên môn nhưng trình độ ngoại ngữ kém hoặc tỷ lệ nhảy việc cao vì một số công ty trả lương nhiều hơn để săn nhân tài. Hãng này khuyến nghị ngoài vấn đề lương, các nhà tuyển dụng tiến hành cần bổ sung quyền lợi, đãi ngộ như mua cổ phiếu ưu đãi, bảo hiểm cá nhân, du lịch… để giữ chân nhân tài.</p>\r\n\r\n<p>Talentnet lại cho rằng, trong bối cảnh kinh tế khó khăn, nguồn cung của nhân sự cấp cao là chưa thật sự đáp ứng được mong đợi của tổ chức và doanh nghiệp. Do đó, giải pháp tức thời cho một số công ty trong nước lớn là sử dụng nhân sự người nước ngoài để đảm nhận các vị trí chủ chốt, đặc biệt là các vị trí CEO hay tổng giám đốc.</p>\r\n\r\n<p>“Tuy nhiên, kết quả cũng chưa thật sự tốt bởi sự khác biệt khá lớn về văn hóa, những điểm hạn chế về sự thấu hiểu những thông lệ kinh doanh tại Việt Nam, cách làm việc với chính phủ, đối tác, nhà thầu…”, lãnh đạo Talentnet nhận định.</p>\r\n\r\n<p>Trong khi đó, các doanh nghiệp nước ngoài lại muốn “nội địa hóa” bằng cách tuyển chọn những người Việt ưu tú vào dàn quản lý cấp cao. Tuy nhiên điều này cũng không hề dễ dàng và cần rất nhiều thời gian khi những yêu cầu, tiêu chí tuyển dụng đều được so sánh và đối chiếu cùng với các nước trong khu vực.</p>\r\n\r\n<p>Theo đó, các công ty nhân sự đều cho rằng, để lấp những thiếu hụt, lao động Việt Nam phải không ngừng nâng cao kiến thức, kỹ năng và năng lực của bản thân thông qua những trải nghiệm thực tế, từ những thách thức và khó khăn trong công việc… Việc tham gia các khóa đào tạo chuyên sâu phải dựa trên sự hiểu rõ những mong đợi của bản thân để có những định hướng đúng đắn.</p>\r\n\r\n<p>Về thị trường nhân sự nói chung, VietnamWorks dự báo, trong năm 2014, nhu cầu tuyển dụng vẫn tập trung nhiều vào những ngành nghề như marketing - kinh doanh - bán hàng; công nghệ cao, điện tử; dịch vụ nhà hàng, khách sạn… Thủ đô Hà Nội vẫn duy trì là thành phố dễ tìm việc hơn so với TP HCM, do tỷ lệ cạnh tranh thấp hơn, có ít ứng viên hơn cùng dự tuyển vào một vị trí.</p>\r\n\r\n<p>Dựa trên kết quả khảo sát mới nhất, Talentnet cũng nhận định các ngành đang có nhu cầu tuyển dụng nhiều nhất trong năm tới là công nghệ cao, bảo hiểm, dược phẩm, hàng tiêu dùng…</p>\r\n\r\n<p>Số liệu khảo sát của Vietnamworks cũng cho thấy, trong năm qua, các ngành tiếp thị (marketing), bán hàng và công nghệ thông tin có nhu cầu tuyển dụng cao nhất. Lãnh đạo đơn vị tuyển dụng này cũng dự đoán, thời gian tới, với làn sóng đầu tư mạnh từ Nhật Bản và Hàn Quốc thì ngành kỹ thuật và công nghệ thông tin vẫn có sự tăng trưởng mạnh về nhu cầu.</p>\r\n', '2014-04-21 12:22:28', '2014-04-21 11:20:00', 1, 'Nhu cầu nhân sự cấp cao tiếp tục tăng,nhu cau nhan su cap cao tiep tuc tang', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (31, 'Nghề kinh doanh gia truyền của triệu phú cà phê Singapore', 'nghe-kinh-doanh-gia-truyen-cua-trieu-phu-ca-phe-singapore', 'nghe-kinh-doanh-gia-truyen-cua-trieu-phu-ca-phe-singapore.jpg', 'Nhờ thương hiệu lâu đời và thói quen ăn uống đặc trưng của người Singapore, Andrin Loi đã phát triển chuỗi cửa hàng Ya Kun Coffee International nổi tiếng với doanh thu gần 20 triệu USD năm ngoái.', '<h2>Nhờ thương hiệu lâu đời và thói quen ăn uống đặc trưng của người Singapore, Andrin Loi đã phát triển chuỗi cửa hàng Ya Kun Coffee International nổi tiếng với doanh thu gần 20 triệu USD năm ngoái.</h2>\r\n\r\n<p>Andrin Loi – Chủ tịch hãng cà phê Ya Kun Coffee International là con út trong gia đình có 7 anh chị em tại Singapore. Từ nhỏ, ông và các anh chị đã làm việc trong cửa hàng cà phê nhỏ của cha mình. "Tôi rất giỏi nướng bánh mì đấy", ông cho biết trên&nbsp;BBC.</p>\r\n\r\n<p>Cha của Loi - ông Ya Kun bán đồ ăn sáng, như trứng ốp, cà phê và bánh mì nướng Kaya truyền thống của người Singapore (kẹp mứt dừa Kaya, trứng, đường và dứa). Tuy nhiên, sau 60 năm lao động, ông bị ốm và khó có thể quay trở lại công việc. Loi cảm thấy sẽ rất đáng tiếc nếu việc kinh doanh của gia đình bị mất đi. Khi ấy, phần lớn anh chị em của ông đều đã lớn tuổi và không muốn tiếp quản cửa hàng.</p>\r\n\r\n<p>Andrin Loi đã tiếp quản cửa hàng của gia đình từ năm 1998. Ảnh:&nbsp;BBC</p>\r\n\r\n<p>Vì vậy, Loi cùng người anh Algie quyết định xin phép cha tiếp tục kinh doanh. Dĩ nhiên, cha ông đồng ý, nhưng cũng cảnh báo đây là một công việc rất khó khăn. Sau khi tiếp quản cửa hàng năm 1998, Loi và anh trai cũng phải chuyển địa điểm do khu này bị phá đi xây công trình khác.</p>\r\n\r\n<p>Họ đặt lại tên cửa hàng là "Bánh mì Kaya của Ya Kun" và vay 10.000 đôla Singapore (8.000 USD) để duy trì việc kinh doanh. Vợ ông cũng viết dòng chú thích "Kinh doanh từ năm 1944" để nhấn mạnh vào truyền thống gia đình. Trong cửa hàng cũng có những tài liệu nói về hành trình tới Singapore của ông Ya Kun, sau đó là thời gian từ khi ông giúp việc trong cửa hàng đến lúc tự kinh doanh.</p>\r\n\r\n<p>Ban đầu, Loi cảm thấy rất lo lắng khi cửa hàng diện tích 90m2 có chi phí thuê khá lớn. Tuy nhiên, chỉ sau 2 tuần, họ đã hòa vốn. "Chúng tôi nhận ra rằng đây là một ngành kinh doanh rất tốt, do cha tôi thực sự đã gây dựng được thương hiệu cho mình", ông nói.</p>\r\n\r\n<p>Hiện Ya Kun đã có hơn 50 cửa hàng tại Singapore. Ảnh:&nbsp;BBC</p>\r\n\r\n<p>Sau thành công ban đầu, Loi bắt đầu tìm đến các nhà tư vấn để xem liệu mình có cần tìm nguồn đầu tư bên ngoài để phát triển công ty hay không. Cuối cùng, ông quyết định nộp đơn xin hỗ trợ từ Chính phủ Singapore. Việc này đã cho phép ông tìm hiểu cơ hội nhượng quyền. Loi cho rằng quyết định này đã giúp ông thành công, khi họ nhận được tới 400 lời đề nghị nhượng quyền chỉ trong 6 tháng.</p>\r\n\r\n<p>Kể từ đó, ông đã phát triển việc kinh doanh ra hơn 50 cửa hàng Ya Kun tại Singapore, cũng như 49 cửa hàng khác trên toàn cầu, từ Indonesia đến Abu Dhabi. Năm ngoái, doanh thu của họ đạt gần 25 triệu đôla Singapore (gần 20 triệu USD), tăng gấp hơn 20 lần so với thời mới tiếp quản.</p>\r\n\r\n<p>"Singapore là một trong những quốc gia có lao động nước ngoài đông nhất thế giới", Loi cho biết. Việc này đã giúp Ya Kun rất nhiều, do khi người nước ngoài đến đây làm việc, họ quen với thương hiệu Yakun. Vì thế, khi quay về nước, như Indonesia chẳng hạn, họ sẽ vẫn trung thành với cửa hàng của hãng tại đây.</p>\r\n\r\n<p>Loi cũng nhận xét sự độc đáo trong thói quen ăn uống của người Singapore giúp ông rất nhiều. "Tại Singapore, phần lớn mọi người ăn 5 bữa mỗi ngày. Họ ăn bữa sáng, trưa, ăn nhẹ buổi chiều, tối và ăn trước khi ngủ. Vì thế, họ đến đây khá thường xuyên", ông nói.</p>\r\n\r\n<p>Loi cũng mở rộng thực đơn sang các món như mì, đồ ăn trưa, cũng như các loại bánh mì và cà phê khác nhau. Ông cũng cho biết mình rất may mắn khi gia đình đã hỗ trợ ông rất nhiều. "Thường thì nếu có nhiều anh chị em, bạn sẽ thấy có sự cạnh tranh. Nhưng gia đình tôi thì không thế. Kể cả khi chúng tôi đã lớn mạnh, họ cũng chẳng ghen tỵ và vẫn giúp đỡ mỗi khi có thể", ông cho biết. Hiện cả 7 anh chị em của ông đều có cửa hàng kinh doanh riêng.</p>\r\n\r\n<p>Ông đùa rằng cha mình chắc sẽ sống lại nếu thấy cửa hàng nhỏ của mình đã tiến xa đến thế nào. Ông cũng hy vọng sẽ tiếp tục duy trì việc này khi cậu con trai 28 tuổi sắp về nước. "Tôi muốn từ từ truyền lại kỹ năng và kiến thức của mình cho con. Để ngày nào đó, nó có thể tiếp quản việc kinh doanh của gia đình", Loi nói.</p>\r\n', '2014-04-21 12:29:03', '2014-04-21 11:29:00', 1, 'Nghề kinh doanh gia truyền của triệu phú cà phê Singapore,nghe kinh doanh gia truyen cua trieu phu ca phe singapore', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (32, 'Giáo sư gốc Việt đánh giá về sinh viên trong nước', 'giao-su-goc-viet-danh-gia-ve-sinh-vien-trong-nuoc', 'giao-su-goc-viet-danh-gia-ve-sinh-vien-trong-nuoc.jpg', 'Nhà phát minh nổi tiếng người Úc gốc Việt, GS Nguyễn Hùng - người từng được đề cử "Người Australia của năm 2012” - cho rằng học sinh, sinh viên Việt Nam vượt trội về kiến thức Toán, Lý, Hóa nhưng yếu thực hành và môn Ngoại ngữ.', '<h2>Nhà phát minh nổi tiếng người Úc gốc Việt, GS Nguyễn Hùng - người từng được đề cử "Người Australia của năm 2012” - cho rằng học sinh, sinh viên Việt Nam vượt trội về kiến thức Toán, Lý, Hóa nhưng yếu thực hành và môn Ngoại ngữ.</h2>\r\n\r\n<p>GS Nguyễn Hùng được biết đến với rất nhiều phát minh hữu ích trong đời sống như máy thiết bị đo tiểu đường mà không cần lấy máu, thiết&nbsp;&nbsp;bị tim nhân tạo kéo dài thời gian sống thêm 7 năm cho người bệnh, thiết bị phát hiện bệnh ung thư vú sớm…</p>\r\n\r\n<p>Đặc biệt, sáng chế&nbsp;Chiếc xe lăn thông minh&nbsp;có thể điều kiển bằng sự chuyển động của đầu và sóng não con người của ông được xem là một trong những phát minh hàng đầu ở Australia. Ông đã dành thời gian 20 năm để hoàn thiện phát minh giá trị này.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>[Giáo sư người Úc gốc Việt Nguyễn Hùng bên sáng chế]<br />\r\nGiáo sư người Úc gốc Việt Nguyễn Hùng bên sáng chế&nbsp;Chiếc xe lăn thông minh&nbsp;điều khiển bằng não con người. (Ảnh nhân vật cung cấp)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Là&nbsp;Chủ nhiệm khoa Kỹ thuật và Công nghệ Thông tin, Đại học Công nghệ Sydney (UTS), GS Nguyễn Hùng cơ hội tiếp xúc với nhiều với học sinh, sinh viên (SV) Việt Nam sang du học ở Úc. Theo ông, các bạn trẻ Việt Nam có nhiều điểm mạnh như chịu khó, chăm chỉ và nổi bật nhất là các bạn rất giỏi về các môn khoa học cơ bản Toán, Lý, Hóa. Các bài kiểm tra kiến thức liên quan đến các môn khoa học này, SV Việt đều hoàn thành xuất sắc.</p>\r\n\r\n<p>Tuy vậy, không khó để người thầy gốc Việt nhận thấy những hạn chế của SV Việt. Kiến thức khoa học vững nhưng lý thuyết nhưng nếu thiếu thực hành, người học khó trở thành những kỹ sư có tay nghề vững vàng để tạo nên nguồn nhân lực chất lượng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>[Giáo sư người Úc gốc Việt Nguyễn Hùng bên sáng chế]<br />\r\nHọc sinh, sinh viên Việt Nam giỏi các môn khoa học cơ bản nhưng yếu thực hành và kém ngoại ngữ. (Ảnh minh họa)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngoài ra, các SV Việt Nam kém tiếng Anh nên mất nhiều thời gian để hòa nhập cuộc sống khi đi du học lẫn cơ hội học hỏi. Việc giao lưu, tìm hiểu văn hóa của các nước hay mở rộng các mối quan hệ của họ cũng vì thế mà trở nên khó khăn hơn.</p>\r\n\r\n<p>Ở nước ngoài, việc SV “gõ cửa” phòng giáo sư để giao lưu, học tập, trao đổi là chuyện rất bình thường. Với SV Việt, GS Nguyễn Hùng thấy các bạn khá kín tiếng, ngại ngần và chưa thật sự chủ động.</p>\r\n\r\n<p>“Các bạn chưa có thói quen giao tiếp, chủ động mà khi được khích lệ, họ rất mạnh dạn. Giáo dục Việt Nam rất mạnh về các môn khoa học Toán, Lý, Hóa và nên chú trọng thêm nhiều lĩnh vực gắn liền đời sống xã hội cũng như chú ý đến việc khích lệ, giao tiếp cho người học”,&nbsp;GS Nguyễn Hùng nêu ý kiến.</p>\r\n\r\n<p>Trong quá trình tìm hiểu của mình, ông nhận thấy nhiều doanh nghiệp Việt Nam đang rất lo lắng về tình trạng thiếu hụt lao động có tay nghề cao, khả năng Anh ngữ thành thạo và kinh nghiệm quản lý là hoàn toàn có cơ sở.</p>\r\n\r\n<p>Trước thực tế, Việt Nam có nhiều giáo sư, tiến sĩ nhưng lại rất ít phát minh, sáng chế, theo GS Nguyễn Hùng, người Việt Nam rất giỏi nhưng thiếu cơ hội, điều kiện về tài chính lẫn môi trường cho những nghiên cứu, phát minh. Hay có thể hiểu là chưa có văn hóa phát minh cũng như tiếp thu các sáng chế mới và thiếu đi những ràng buộc, yêu cầu chặt chẽ đối với việc nghiên cứu khoa học.</p>\r\n\r\n<p>Ông cho biết thêm, ở Úc, tùy từng vị trí, công việc nhưng trung bình giáo sư, tiến sĩ phải dành đến 40% thời gian làm việc cho nghiên cứu, sáng chế, tương đương với thời gian giảng dạy trên lớp.</p>\r\n', '2014-04-21 12:29:56', '2014-04-21 11:29:00', 1, 'Giáo sư gốc Việt đánh giá về sinh viên trong nước,giao su goc viet danh gia ve sinh vien trong nuoc', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (33, 'Thạc sĩ, cử nhân ồ ạt học... trung cấp', 'thac-si-cu-nhan-o-at-hoc-trung-cap', 'thac-si-cu-nhan-o-at-hoc-trung-cap.jpg', 'Tại các trường trung cấp, số thạc sĩ, cử nhân theo học ngày càng đông. Quá trình “liên thông ngược” này cho thấy một sự lãng phí rất lớn trong đào tạo đại học hiện nay.', '<h2>Tại các trường trung cấp, số thạc sĩ, cử nhân theo học ngày càng đông. Quá trình “liên thông ngược” này cho thấy một sự lãng phí rất lớn trong đào tạo đại học hiện nay.</h2>\r\n\r\n<p>Lê Thu Hòa, quê Nghệ An, tốt nghiệp hệ CĐ ngành kế toán tại một trường ĐH ở TPHCM nhưng sau nhiều tháng chờ việc, cô quyết định đăng ký học ngành quản trị nhà hàng của Trường Trung cấp Du lịch và Khách sạn Saigontourist. Cũng dự tuyển vào trường này, thí sinh Nguyễn Hồng Phước cho biết đã tốt nghiệp hệ CĐ ngành quản trị kinh doanh tại một trường ĐH, tuy đã nộp hồ sơ vào nhiều công ty nhưng không có hồi âm nên quyết định chuyển hướng.</p>\r\n\r\n<p>30% liên thông ngược</p>\r\n\r\n<p>Ở Trường Trung cấp Du lịch và Khách sạn Saigontourist, trong số 2.000 học sinh trường tuyển mỗi năm, khoảng 600 người có bằng ĐH, CĐ, thậm chí thạc sĩ - chiếm khoảng 30%. Ông Trần Văn Hùng, hiệu trưởng nhà trường, cho biết hầu như những người đã có bằng ĐH, CĐ quay lại học trung cấp đều đang thất nghiệp và không thiếu ngành nghề nào.</p>\r\n\r\n<p>[Thạc sĩ, cử nhân ồ ạt học... trung cấp]<br />\r\nThí sinh tham gia phỏng vấn trong đợt tuyển sinh của Trường Trung cấp Du lịch và Khách sạn Saigontourist.</p>\r\n\r\n<p>Tại nhiều trường trung cấp khác, tỉ lệ những người đã có bằng ĐH, CĐ cũng chiếm 20%-30%. Ông Lê Lâm - Chủ tịch HĐQT, nguyên Hiệu trưởng Trường Trung cấp Đại Việt - cho biết năm 2011 có 1.812 học sinh thì 308 người đã tốt nghiệp ĐH, CĐ và thạc sĩ. Năm 2012 có 1.607 người học thì 304 có bằng ĐH, CĐ.</p>\r\n\r\n<p>Ông Đặng Văn Sáng, Hiệu trưởng Trường Trung cấp Ánh Sáng, cho biết mỗi năm, trường chỉ tuyển 1.000 học sinh nhưng tới 30% trong số đó đã có bằng ĐH, CĐ. Họ đã tốt nghiệp ở đủ ngành nghề và rất nhiều học viên tốt nghiệp các trường ĐH công lập...</p>\r\n\r\n<p>Đại diện nhiều trường cho biết những người đã tốt nghiệp ĐH, CĐ chưa có việc làm quay lại học trung cấp ở những ngành nghề phù hợp hơn, dễ tìm việc làm hơn.</p>\r\n\r\n<p>Hiện chưa có thống kê cụ thể từ phía ngành chức năng nhưng thực tế, những người đã có bằng ĐH, CĐ quay lại học trung cấp, học nghề ngành càng nhiều. Hiện tượng này được ví von là quá trình “liên thông ngược” hoặc “học viên sau ĐH”.</p>\r\n\r\n<p>Hệ quả của đào tạo ĐH, CĐ tràn lan</p>\r\n\r\n<p>Theo công bố của Bộ Lao động - Thương binh và Xã hội, quý IV/2013, cả nước có thêm 72.000 lao động trình độ ĐH, CĐ thất nghiệp. Trong khi đó, chỉ tiêu vào ĐH tăng theo từng năm. Thực tế này khiến không ít người xót xa.</p>\r\n\r\n<p>Ông Đặng Văn Sáng tính toán chi phí cho một người học ĐH bình thường không dưới 100 triệu đồng, bao gồm học phí và các chi phí khác. Bốn năm đèn sách ra trường thất nghiệp rồi lại tiếp tục học một nghề để mưu sinh là sự lãng phí rất lớn. Nhiều người trong số đó đang ôm theo cả một khoản nợ lớn mà chưa biết khi nào mới trả được.</p>\r\n\r\n<p>Sở dĩ có tình trạng trên, nhiều ý kiến cho rằng hệ ĐH, CĐ tăng quy mô tuyển sinh khiến số lượng người theo học hệ này ngày càng nhiều nhưng không cần tính đến nhu cầu nhân lực thật sự mà xã hội đang cần. Ông Đỗ Hữu Khoa, Hiệu trưởng Trường Trung cấp Công nghệ thông tin Sài Gòn, chỉ ra rằng năm 2014, chỉ tiêu vào ĐH là trên 400.000, CĐ trên 280.000 và hệ TCCN dự kiến 300.000. Nếu tính thêm chỉ tiêu các hệ vừa làm vừa học, liên thông ở các trường ĐH, CĐ và chính quy trong các trường CĐ, trung cấp nghề... thì có gần 1,1 triệu chỉ tiêu. Như vậy, với tỉ lệ 70% ĐH, CĐ và TCCN 30% thì tỉ lệ cơ cấu này hoàn toàn không hợp lý, dẫn đến tình trạng thừa thầy thiếu thợ.</p>\r\n\r\n<p>Ngoài ra, tâm lý chuộng bằng cấp và công tác hướng nghiệp chưa hiệu quả cũng là nguyên nhân của sự lệch hướng. Ông Lê Lâm cho rằng chính công tác hướng nghiệp thời gian qua chưa tốt nên trong việc chọn ngành nghề, học sinh vẫn chạy theo ngành “hot”, ngành dễ học chứ không phải chọn theo năng lực. Tình trạng ngồi nhầm ĐH xảy ra nhiều năm, với nhiều sinh viên nên chuyện những cử nhân, kỹ sư thất nghiệp rồi quay lại học trung cấp với quyết tâm làm lại cuộc đời ngày càng phổ biến và trở thành vấn đề nhức nhối.</p>\r\n\r\n<p>Ông Đặng Văn Sáng nhìn nhận ở tầm vĩ mô, trong tương lai gần phải xây dựng được cơ cấu nhân lực, từ đó xác định chỉ tiêu&nbsp; các ngành nghề, loại hình để Bộ Giáo dục và Đào tạo căn cứ xây dựng chiến lược nguồn nhân lực cho phù hợp, tránh sự lãng phí như hiện nay.&nbsp;</p>\r\n', '2014-04-21 12:30:45', '2014-04-21 11:30:00', 1, 'Thạc sĩ, cử nhân ồ ạt học... trung cấp,thac si cu nhan o at hoc trung cap', 1, 'vi', ',2,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (34, 'Bên trong nhà sách đẹp nhất Sài Gòn', 'ben-trong-nha-sach-dep-nhat-sai-gon', 'ben-trong-nha-sach-dep-nhat-sai-gon.JPG', 'Mới hoạt động 4 tháng, nhà sách Cá Chép được khá nhiều bạn trẻ yêu thích. Với thiết kế độc đáo, đây được xem là nhà sách đẹp nhất TP.', '<h2>Mới hoạt động 4 tháng, nhà sách Cá Chép được khá nhiều bạn trẻ yêu thích. Với thiết kế độc đáo, đây được xem là nhà sách đẹp nhất TP.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://img.v3.news.zdn.vn/w660/Uploaded/Xbfuoau/2014_04_10/IMG_1543.JPG" style="width: 660px; height: 442px;" /></p>\r\n\r\n<p>Tọa lạc trên đường Võ Văn Tần, nhà sách Cá Chép đang được khá nhiều bạn trẻ đến, chụp ảnh và đăng lên mạng.</p>\r\n\r\n<p>Cá Chép do nhà thiết kế, họa sĩ Trần Đại Thắng dày công đầu tư, với tinh thần tôn vinh các giá trị sách.</p>\r\n\r\n<p>Nhà sách chia làm 4 tầng. Mỗi tầng là không gian riêng cho các loại sách. Hơn 20.000 đầu sách đều được tuyển chọn để bảo đảm tiêu chí: lành mạnh, có ích, đẹp.</p>\r\n\r\n<p>Không đơn thuần chỉ là những chiếc kệ gỗ thô cứng, đặt cố định một chỗ và xếp đầy sách, tại đây nhiều kệ được sắp xếp theo kiểu khác nhau.</p>\r\n\r\n<p>Một kế sách được thiết kế hình trụ, có lối ra - vào.</p>\r\n\r\n<p>Không gian đọc sách rộng rãi, được bày biện ghế nệm, đủ ánh sáng.</p>\r\n\r\n<p>Mỗi tầng lại có một không gian đọc sách độc đáo.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://img.v3.news.zdn.vn/w660/Uploaded/Xbfuoau/2014_04_10/IMG_1540.JPG" style="width: 660px; height: 440px;" /></p>\r\n\r\n<p>Tầng 2 là một thế giới sách dành cho thiếu nhi. Ở đây có nhiều kệ sách được sơn nhiều màu sắc. Trong đó, có hẳn một kệ dành riêng cho sách của nhà văn Nguyễn Nhật Ánh.</p>\r\n\r\n<p>Một bé trai say sưa đọc truyện.</p>\r\n\r\n<p>Khu vực sách thiếu nhi cũng thu hút cả người lớn tham quan.</p>\r\n\r\n<p>Ngay cả hành lang dẫn lên các tầng cũng được thiết kế làm nơi để sách.</p>\r\n\r\n<p>Những kệ sách được thiết kế độc đáo bằng khung sắt và thủy tinh tại khu vực quốc văn.</p>\r\n\r\n<p>Khai thác hai chất liệu chính là gỗ và kính, nhà sách Cá Chép tạo sự liên kết giữa các tầng, như hành trình vượt vũ môn của chú cá chép trong huyền thoại phương Đông.</p>\r\n\r\n<p>Cách trình bày sách ở khu vực sách ngoại văn.</p>\r\n\r\n<p>Tại khu vực sách ngoại văn, bạn đọc có thể tìm thấy những cuốn của các tác giả trong nước như Nguyễn Huy Thiệp, Bảo Ninh, Đặng Thùy Trâm, Lê Lựu... Sách về tranh dân gian Việt Nam, poster bằng giấy dó các diễn viên nổi tiếng của những bộ phim nổi tiếng trên thế giới...&nbsp;</p>\r\n\r\n<p>Những quyển sách về nghệ thuật được trưng bày ở vị trí có góc nhìn ra đường phố xung quanh từ trên cao.</p>\r\n\r\n<p>Sách không chỉ sắp xếp trên kệ mà còn được treo lủng lẳng trên cao.</p>\r\n\r\n<p>Việc sắp xếp các quyển sách cũng là một nghệ thuật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tầng trên cùng là quán cà phê yên tĩnh để mọi người có thể đọc sách, ngắm nhìn cảnh đường phố.</p>\r\n\r\n<article>&nbsp;</article>\r\n', '2014-04-21 17:58:07', '2014-04-21 16:58:00', 1, 'Bên trong nhà sách đẹp nhất Sài Gòn,ben trong nha sach dep nhat sai gon', 1, 'vi', ',2,', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Giới thiệu', 'gioi-thieu', '', '', '2014-04-21 12:13:53', NULL, 0, 1, 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu,gioi thieu', 0, 'vi', 1, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (2, 'Tin tức và sự kiện', 'tin-tuc-va-su-kien', 'tin-tuc-va-su-kien/', '', '2014-04-21 12:15:09', '2014-04-21 18:29:08', 0, 2, 1, 'Tin tức và sự kiện', 'Viện nghiên cứu kinh tế & quản trị nhân sự cập nhật tin tức và sự kiện các vấn đề đào tạo cho học viên hằng ngày.', 'Tin tức và sự kiện,tin tuc va su kien', 0, 'vi', 2, ',2,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (3, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-04-21 12:15:33', NULL, 0, 3, 1, 'Liên hệ', 'Liên hệ', 'Liên hệ,lien he', 0, 'vi', 6, ',2,', 'admin', NULL, 0);

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

INSERT INTO `web_menu_position` VALUES (1, 'Top', 1, 0);
INSERT INTO `web_menu_position` VALUES (2, 'Main', 2, 1);
INSERT INTO `web_menu_position` VALUES (3, 'Left', 3, 0);
INSERT INTO `web_menu_position` VALUES (4, 'Right', 4, 0);
INSERT INTO `web_menu_position` VALUES (5, 'Bottom', 5, 0);
INSERT INTO `web_menu_position` VALUES (6, 'Social', 6, 0);
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
INSERT INTO `web_menu_type` VALUES (3, 'Dự án loại 1', 3, 0);
INSERT INTO `web_menu_type` VALUES (4, 'Dự án loại 2', 4, 0);
INSERT INTO `web_menu_type` VALUES (5, 'Dự án hợp tác Quốc tế', 5, 0);
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
INSERT INTO `web_slider_banner` VALUES (2, 'Slider trang chủ', 'slider_home.jpg', 'javascript:;', '2014-04-07 17:09:35', '2014-04-21 15:16:01', 1, 0, 'vi', 1, ',1,', '', 'admin', 'admin', 0);

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
