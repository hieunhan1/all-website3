-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 07, 2014 at 06:21 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `shopdochoi`
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

INSERT INTO `web_config` VALUES (1, 'Việt nam', 'vi', 'Shop đồ chơi trẻ em DN - Hàng nhập khẩu', 'localhost/all/shopdochoi', 10, 20, 10, 10, 'Copyright © 2014 Shop Do Choi DN', '<p><span style="color:#FF0000;"><strong>CÔNG TY CỔ PHẦN&nbsp;ĐỒ CHƠI TRẺ EM DN</strong></span></p>\r\n\r\n<p>Địa chỉ: Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 - 8) 6686 4441 -&nbsp;&nbsp;Fax: (84 -8) 6686 4442</p>\r\n\r\n<p>Email: feedback@shopdochoi.com</p>\r\n', '<p><span style="color:#FF0000;"><strong>CÔNG TY CỔ PHẦN&nbsp;ĐỒ CHƠI TRẺ EM DN</strong></span></p>\r\n\r\n<p>Địa chỉ: Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 - 8) 6686 4441 -&nbsp;&nbsp;Fax: (84 -8) 6686 4442</p>\r\n\r\n<p>Email: feedback@shopdochoi.com</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-02-20 13:35:24', '2013-03-01 11:36:00', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', 'Shop đồ chơi trẻ em DN - Hàng nhập khẩu', 'localhost/all/shopdochoi', 10, 20, 10, 10, 'Copyright © 2014 Shop Do Choi DN', '<p><span style="color:#FF0000;"><strong>CÔNG TY CỔ PHẦN&nbsp;ĐỒ CHƠI TRẺ EM DN</strong></span></p>\r\n\r\n<p>Địa chỉ: Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 - 8) 6686 4441 -&nbsp;&nbsp;Fax: (84 -8) 6686 4442</p>\r\n\r\n<p>Email: feedback@shopdochoi.com</p>\r\n', '<p><span style="color:#FF0000;"><strong>CÔNG TY CỔ PHẦN&nbsp;ĐỒ CHƠI TRẺ EM DN</strong></span></p>\r\n\r\n<p>Địa chỉ: Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 - 8) 6686 4441 -&nbsp;&nbsp;Fax: (84 -8) 6686 4442</p>\r\n\r\n<p>Email: feedback@shopdochoi.com</p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 008', 1, '2013-11-12 15:50:44', '2013-11-12 11:37:00', 'admin', 'admin', 0);

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

INSERT INTO `web_contact` VALUES (1, 'Nguyễn Thị Huỳnh Như', 'thanhha39sty@yahoo.com.vn', '01254082755', '1F/1/1T Hương Lộ 80 - KDC Đồng Danh -Vĩnh Lộc A- Bình Chánh', 'Tôi muốn mua các loại bột sau : \nBột bánh bông lan nuớng loai 14.000 đ/ bịch (4 bịch )\nBột bánh bông lan hấp  500gr  22.000 đ/ bịch (2 bịch )\nBột bánh bò loại 21.000 đ/ bich (3 bịch)\nBột bánh xèo loại 18.000 đ/bịch (3 bịch )\nBột bánh pizza 37.000d9/ bịch (1 bịch )\nBạn có thể giao hàng cho tôi không?\nNếu có , vui lòng gọi sdt 01254082755 Tên Như ( giờ hành chính)\nXin cám ơn', '', 0, '2013-11-18 06:02:17', '2014-04-07 18:08:59', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (2, 'Việt nam', 'hieunhan112@gmail.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', 'test mail abc det dcv', '', 0, '2013-11-18 09:12:16', '2014-04-07 18:09:00', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (3, 'Ms.Nguyệt', 'nguyetchenh@fosi.vn', '0909228783', '176 Hoa Lan P.2 Q Phú Nhuận', 'Xin chào quý công ty!\nEm bên công ty FOSi - đơn vị cung cấp giấy phép về thực phẩm như chứng nhận đủ ĐKATTP cho cơ sở và công bố sản phẩm trong nước và nhập khẩu...Có thể truy cập trang http://trungtamnghiencuuthucpham.vn/ để tìm hiểu thêm.\nNếu công ty có nhu cầu vui lòng liên hệ để được hỗ trợ và tư vấn.\nXin cảm ơn!', '', 0, '2013-11-22 09:02:35', '2014-04-07 18:09:00', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (4, 'Khổng Thị Thùy Trang', 'trangga_1208@yahoo.com', '01285282889', '14/21 nghĩa hưng p6 quận tân bình', 'sáng ngày 22/11 e có đặt mua một số sản phẩm của công ty nhưng do e có một số việc không có ở nhà để nhận ,vậy cho e hỏi đặt mua qua wedpage thì khi nào mới nhận được', '', 0, '2013-11-22 15:47:22', '2014-04-07 18:09:01', 'khachhang', 'admin', 1);
INSERT INTO `web_contact` VALUES (5, 'Tran Nhan', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', 'test lien he abc', '', 0, '2014-04-07 18:03:58', '2014-04-07 18:03:58', 'khachhang', '', 0);

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

INSERT INTO `web_dangky_nhanvien` VALUES (1, 'NV nhận hàng - Tú', 'nhanhang1@shopdochoi.com', 'vi', 1, '2013-12-17 13:52:33', '2014-04-07 18:05:00', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (2, 'NV nhận hàng - Thanh', 'nhanhang2@shopdochoi.com', 'vi', 1, '2013-12-17 13:53:05', '2014-04-07 18:06:04', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (3, 'NV nhận hàng - Khắc', 'nhanhang3@shopdochoi.com', 'vi', 1, '2013-12-17 13:54:05', '2014-04-07 18:06:11', 'admin', 'admin', 0);
INSERT INTO `web_dangky_nhanvien` VALUES (4, 'NV trả lời - Tiên', 'feedback@shopdochoi.com', 'vi', 1, '2013-12-17 13:54:18', '2014-04-07 18:06:23', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_info`
-- 

INSERT INTO `web_info` VALUES (1, 'Giới thiệu shop đồ chơi trẻ em DN', 'gioi-thieu-shop-do-choi-tre-em-dn', 'gioi-thieu-shop-do-choi-tre-em-dn.JPG', 'Tìm được địa chỉ đáng tin cậy cung cấp đồ chơi cho trẻ đã được các cơ quan chức năng kiểm định là mong muốn chính đáng của nhiều bậc phụ huynh.', '<p>Trẻ em là mầm non, là tương lai của đất nước. Chính vì vậy, chăm sóc để trẻ phát triển toàn diện cả về thể chất lẫn trí tuệ là định hướng và nhiệm vụ của toàn xã hội. Trong quá trình phát triển, bên cạnh việc giáo dục của gia đình và nhà trường, <strong>việc chọn đồ chơi cho trẻ</strong> là việc làm quan trọng giúp trẻ sớm nhận biết được thế giới xung quanh và phát triển khả năng nhận thức. Tuy nhiên, không phải các bậc cha mẹ nào cũng “thông minh” trong việc chọn đồ chơi cho con yêu của mình, nhất là trong thời buổi kinh tế thị trường, hàng hóa tràn lan, không rõ nguồn gốc gây độc hại cho trẻ như hiện nay.</p>\r\n\r\n<h2>Vì thế, tìm được địa chỉ đáng tin cậy cung cấp đồ chơi cho trẻ đã được các cơ quan chức năng kiểm định là mong muốn chính đáng của nhiều bậc phụ huynh.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/articles/thue-do-choi-giai-phap-tiet-kiem-khi-mua-do-choi-cho-be.jpg" style="width: 480px; height: 480px;" /></p>\r\n\r\n<p>Nằm ở trung tâm thành phố, cửa hàng&nbsp;Thế giới của bé&nbsp;mà lâu nay nhiều phụ huynh truyền tai nhau như là một địa chỉ đáng tin cậy về đồ chơi trẻ em. Phong phú về chủng loại, đa dạng về mẫu mã, hơn hết các thiết bị dụng cụ, đồ chơi nơi đây phù hợp với nhiều độ tuổi, tính cách&nbsp; trẻ nhỏ và đặc biệt có xuất sứ rõ ràng đã được kiểm đinh chất lượng an toàn.Hội nhập với nền kinh tếphát triển,&nbsp;Thế giới của bé&nbsp;chủ động nhập về nhiều mặt hàng mang tính khoa học cao như đồ chơi điều khiển, đồ chơi chạy bằng pin… giúp khơi dậy tính tò mò và kính thích sự phát triển, nhận biết về thế giới xung quanh của bé như xe tăng, máy bay, tàu hỏa…Cùng với đó, được sự tư vấn của nhiều chuyên gia trong lĩnh vực giáo dục,&nbsp;Thế giơi của bé&nbsp;cũng không thiếu những sản phẩm mang tính giáo dục cao như máy vi tính, máy tính bảng cho bé, bảng học chữ số đa năng… đối với những trẻ năng động, các bậc làm cha làm mẹ có thể chọn cho con mình những đồ chơi, dụng cụ phù hợp với từng lứa tuổi như xe đạp 2, 3 bánh, xa tập đi, giày trượt patin, vật dụng thể thao. Đây chính là những dụng cụ thiết yếu giúp trẻ phát triển thể chất toàn diện, có tính tự lập ngay từ đầu và không ỷ lại.</p>\r\n\r\n<p>Ở tất cả độ tuổi, với bất cứ một tính cách nào của trẻ, phụ huynh cũng để tìm thấy ở&nbsp;<strong>Thế giới của bé&nbsp;những thiết bị, đồ chơi</strong> phù hợp.</p>\r\n\r\n<p style="text-align: center;"><img alt="Giới thiệu shop đồ chơi trẻ em DN" src="/all/shopdochoi/public/images/articles/gioi-thieu-shop-do-choi-tre-em-dn.JPG" style="opacity: 0.9; font-size: 13px; text-align: center; width: 600px; height: 448px;" /></p>\r\n\r\n<p>Bên cạnh đó, hiểu được như cầu và đặc biệt tình hình kinh tế khó khăn hiện nay,&nbsp;Thế giới của bé&nbsp;thường xuyên áp dụng nhiều chương trình khuyến mãi, hậu mãi đặc biệt. Hiện nay cửa hàng áp dụng chương trình mua hàng trực tuyến, online được miễn phí chi phí vận chuyển nếu đơn hàng trên 200 ngàn đồng và trong phạm vi 5 km. Ngoài ra cửa hàng còn giảm giá đặc biệt trong các ngày lễ lớn, và ngày chủ nhật đầu tiên trong tháng...</p>\r\n\r\n<p>Mỗi năm, Hội người tiêu dùng đều đưa ra danh sách những đồ chơi nguy hiểm đối với trẻ em. Là cha mẹ, mỗi chúng ta nên chú ý đến vấn đề này. Tốt hơn hết nên chọn mua những sản phẩm an toan, có nguồn gốc rõ ràng.&nbsp;Thế giới của bénhư một địa chỉ mà mỗi một phụ huynh đều có thể yên tâm để gởi gắm niềm tin, trao gởi yêu tương đến các bé.</p>\r\n', '2014-04-07 16:48:40', '2014-04-07 15:48:00', 1, 'Giới thiệu shop đồ chơi trẻ em DN,gioi thieu shop do choi tre em dn', 1, 'vi', ',5,', 'admin', 'admin', 0);
INSERT INTO `web_info` VALUES (2, 'Thuê đồ chơi giải pháp tiết kiệm khi mua đồ chơi cho bé', 'thue-do-choi-giai-phap-tiet-kiem-khi-mua-do-choi-cho-be', 'thue-do-choi-giai-phap-tiet-kiem-khi-mua-do-choi-cho-be.jpg', 'Nhu cầu của bé là được chơi, tuyệt nhất là được chơi và khám phá với nhiều đồ chơi mới. Ba mẹ tiết kiệm được chi phí, bé được chơi với nhiều đồ chơi an toàn và phù hợp với giai đoạn phát triển của bé.', '<h2>Nhu cầu của bé là được chơi, tuyệt nhất là được chơi và khám phá với nhiều đồ chơi mới. Ba mẹ tiết kiệm được chi phí, bé được chơi với nhiều đồ chơi an toàn và phù hợp với giai đoạn phát triển của bé.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Thuê đồ chơi giải pháp tiết kiệm khi mua đồ chơi cho bé" src="/all/shopdochoi/public/images/articles/thue-do-choi-giai-phap-tiet-kiem-khi-mua-do-choi-cho-be.jpg" style="width: 480px; height: 480px;" /><br />\r\n<em>Thuê đồ chơi giải pháp tiết kiệm khi mua đồ chơi cho bé</em></p>\r\n\r\n<p>Hiện nay đồ chơi Trung Quốc độc hại tràn ngập đường phố. Các bậc cha mẹ rất đắn đo: Lựa chọn đồ chơi như thế nào phù hợp với từng giai đoạn phát triển của bé; chất liệu nào an toàn cho bé. Đồ chơi chất liệu độc hại thường rẻ không an toàn cho bé. Ngược lại, đồ chơi an toàn cho bé thì giá rất đắt.&nbsp;</p>\r\n\r\n<p>Đặc biệt, các bậc cha mẹ phải tốn rất nhiều tiền mua đồ chơi an toàn cho bé. Mỗi giai đoạn phát triển của bé (thể chất và trí tuệ) chúng ta thường phải chọn lựa đồ chơi khác nhau. Việc thay đổi đồ chơi cũng là nhu cầu tất yếu để tránh sự nhàm chán khi trẻ tham gia các trò chơi. Cha mẹ phải thường xuyên thay đổi đồ chơi cho bé nên chi phí rất tốn kém.</p>\r\n\r\n<p>Hiểu được băn khoăn của các bậc cha mẹ và mong muốn mang đến cho các bé cơ hội tham gia các trò chơi an toàn.&nbsp;<strong>DỊCH VỤ CHO THUÊ &amp; ĐỔI ĐỒ CHƠI CHO BÉ&nbsp;</strong>sẽ giúp bạn giải quyết băn khoăn này với tiêu chí&nbsp;“Ba mẹ chi ít hơn, bé được chơi nhiều hơn”.</p>\r\n\r\n<p style="text-align: center;"><img alt="Thuê đồ chơi giải pháp tiết kiệm khi mua đồ chơi cho bé" src="/all/shopdochoi/public/images/articles/thue-do-choi-giai-phap-tiet-kiem-khi-mua-do-choi-cho-be-2.jpg" style="width: 500px; height: 394px;" /><br />\r\n<em>Rất nhiều đồ chơi bé có thể chọn</em></p>\r\n\r\n<p><strong>DỊCH VỤ CHO THUÊ &amp; ĐỔI ĐỒ CHƠI CHO BÉ</strong>&nbsp;sẽ giúp bạn giải quyết băn khoăn này. Dịch vụ cho thuê đồ chơi online với tiêu chí&nbsp;“Ba mẹ chi ít hơn, bé được chơi nhiều hơn”&nbsp;giúp ba mẹ&nbsp;tiết kiệm chi phí và bé được chơi nhiều loại đồ chơi hơn.</p>\r\n\r\n<p>Những ngày tháng đầu đời, bé được khám phá, nghịch với nhiều món đồ chơi... Điều này có tác động rất lớn trong việc hoàn thiện nhận thức, kỹ năng và trí tuệ cho bé.</p>\r\n\r\n<p><em><strong>Hãy cùng chúng tôi chọn những đồ chơi an toàn, phù hợp cho từng giai đoạn phát triển của bé nhé!</strong></em><br />\r\n&nbsp;</p>\r\n', '2014-04-07 17:20:03', '2014-04-07 16:20:00', 1, 'Thuê đồ chơi giải pháp tiết kiệm khi mua đồ chơi cho bé,thue do choi giai phap tiet kiem khi mua do choi cho be', 1, 'vi', ',7,', 'admin', NULL, 0);
INSERT INTO `web_info` VALUES (3, 'Dịch vụ cho thuê đồ chơi trẻ em chất lượng', 'dich-vu-cho-thue-do-choi-tre-em-chat-luong', 'dich-vu-cho-thue-do-choi-tre-em-chat-luong.jpg', 'Trong bối cảnh các gia đình đều thắt chặt chi tiêu, dịch vụ cho thuê đồ chơi trẻ em ra đời đáp ứng được cả nhu cầu tiết kiệm của phụ huynh lẫn tâm lý "cả thèm chóng chán"của trẻ nhỏ.', '<h2>Trong bối cảnh các gia đình đều thắt chặt chi tiêu, dịch vụ cho thuê đồ chơi trẻ em ra đời đáp ứng được cả nhu cầu tiết kiệm của phụ huynh lẫn tâm lý&nbsp;"cả thèm chóng chán"của trẻ nhỏ.&nbsp;Phụ huynh sẽ tiết kiệm được một khoản tiền khi sử dụng dịch vụ thuê đồ chơi trẻ em.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ cho thuê đồ chơi trẻ em chất lượng" src="/all/shopdochoi/public/images/articles/dich-vu-cho-thue-do-choi-tre-em-chat-luong.jpg" style="width: 600px; height: 371px;" /><br />\r\n<em>Dịch vụ cho thuê đồ chơi trẻ em chất lượng</em></p>\r\n\r\n<p><strong>Chi ít, chơi nhiều</strong></p>\r\n\r\n<p>Trên thị trường hiện nay, nhiều loại đồ chơi, đồ dùng cần thiết cho trẻ em không hề rẻ, nhất là những đồ chơi có thiết kế đẹp, không độc hại và an toàn cho bé. Để đáp ứng được nhu cầu sử dụng của con trẻ theo từng giai đoạn, phụ huynh sẽ phải tốn một số tiền nhất định.</p>\r\n\r\n<p>Vốn thích mua đồ chơi và khá chiều con, chị Khánh Linh (Từ Liêm - Hà Nội) đã chi không ít tiền để mua sắm đồ chơi. Theo tính toán của chị, mỗi tháng chị chi khoảng 2-3 triệu cho những món đồ chơi và đồ dùng cần thiết cho con. Chị chia sẻ: “Vì là đồ chơi của trẻ con nên mình chỉ chọn mua của những nhãn hàng có tên tuổi hoặc đặt từ nước ngoài về. Nếu mua hàng không rõ nguồn gốc thì không yên tâm về chất lượng”.</p>\r\n\r\n<p>Nhưng không phải gia đình nào cũng có điều kiện như gia đình chị Vân. Vì vậy, dịch vụ&nbsp;cho thuê đồ chơi trẻ em&nbsp;đáp ứng được nhu cầu của rất nhiều vị phụ huynh muốn cho con chơi những đồ chơi tốt nhưng túi tiền hạn hẹp. Dịch vụ này khá hấp dẫn với những gia đình có trẻ nhỏ từ 0 - 24 tháng. Những chiếc nôi, xe đẩy, ghế rung, thảm chơi, ghế tập ngồi, ghế tập ăn, xe tập đi,… hầu hết các bé chỉ dùng trong thời gian ngắn (1-2 tháng). Do đó, thay vì bỏ ra một số tiền đáng kể để mua mỗi món đồ chơi, các phụ huynh có thể thuê những thứ đồ dùng này với giá từ 20.000 – 500.000 đồng.</p>\r\n\r\n<p>Hình thức thuê cũng khá đơn giản, đặt cọc ban đầu bằng 100% giá trị món đồ chơi, thuê xong sẽ thanh toán tiền và nhận lại tiền cọc. Hiện nay giá đặt thuê đồ thường dao động ở mức 20.000 - 50.000 đồng/tuần đối với những món đồ có giá từ 200.000 - 500.000 đồng. Với những món đồ từ 1.000.000 trở lên có giá thuê từ 200.000 - 500.000\\tháng. Đồ chơi cho trẻ em từ 3-5 tuổi giá thuê thường đắt hơn vì trẻ ở độ tuổi này thường hiếu động. Bên cạnh đó, các chủ thuê cũng chú ý chọn nhiều đồ chơi từ đồ chơi giải trí, phục vụ học tập, rèn luyện kĩ năng, đồ chơi nhóm với chất lượng tốt, thiết kế bắt mắt, chất liệu an toàn của các hãng uy tín.</p>\r\n\r\n<p>Nhiều phụ huynh tỏ ra khá hài lòng và rỉ tai nhau về dịch vụ cho thuê đồ chơi rất mới này. Các bà mẹ chia sẻ, bỏ tiền ra mua đồ chơi đắt tiền cho con, nhưng chỉ vài ba ngày là các con lại chán, đem vào xếp xó, vứt đi thì tiếc. Nhất là đối với những hộ có diện tích nhỏ, việc lưu giữ đồ chơi sẽ tốn rất nhiều diện tích của gia đình. Không những thế, việc thuê đồ chơi sẽ khiến cho gia đình và trẻ nhỏ có ý thức hơn trong việc giữ gìn đồ dùng.</p>\r\n\r\n<p>Không chỉ có phụ huynh, các nhà hàng, các công ty tổ chức sự kiện cũng là khách hàng thường xuyên của các cửa hàng cho thuê đồ chơi để tổ chức những bữa tiệc thôi nôi, tiệc sinh nhật cho bé. Những món đồ chơi tập thể rất đắt khách như nhà bóng, nhà cầu, nhà hơi, bập bênh… luôn được ưa chuộng mỗi khi tổ chức sự kiện.</p>\r\n\r\n<p style="text-align: center;"><img alt="Cha mẹ cùng chơi với bé" src="/all/shopdochoi/public/images/articles/dich-vu-cho-thue-do-choi-tre-em-chat-luong-2.jpg" style="width: 600px; height: 493px;" /><br />\r\n<em>Cha mẹ cùng chơi với bé</em></p>\r\n\r\n<p><strong>Rủi ro khó tránh</strong></p>\r\n\r\n<p>Bên cạnh những lợi ích mà dịch vụ&nbsp;cho thuê đồ chơi trẻ em&nbsp;mang lại vẫn còn không ít rủi ro mà cả người cho thuê lẫn khách hàng gặp phải. Về phía người bán hàng, chi phí đầu tư đồ chơi trẻ em thường rất lớn do cửa hàng luôn chọn những hãng đồ chơi có tên tuổi, an toàn như: Fisherprice, Vtech, LitleLike, Leapfrog… Trong khi đó, tuổi thọ đồ chơi trẻ em thường rất ngắn vì trẻ nhỏ vẫn chưa biết giữ đồ.</p>\r\n\r\n<p>Chị Ngọc Mai, chủ một của hàng&nbsp;cho thuê đồ trẻ em&nbsp;ở phố Kim Mã, cho biết: “Có rất nhiều đồ chơi cho thuê được một vài lần rồi hỏng phải bỏ vì bé hay đập, ném đồ chơi. Với những món đồ chơi thông dụng, dễ mua thì không sao, có những món đồ tôi phải đặt từ nước ngoài về, hàng cao cấp, nhưng khi cho thuê rồi nhận lại thì đã bị hỏng hoàn toàn. Phụ huynh đền là một chuyện, tiếc là tiếc cái công sức mình tìm hiểu, đặt hàng và chờ đợi hàng về”. Cũng theo chị Mai, khi món đồ cho thuê hỏng, khách hàng của chị rất ít khi phải đền cọc 100% bởi tâm lí muốn chia sẻ với khách hàng và tạo niềm tin cũng như uy tín lâu dài.</p>\r\n\r\n<p>Mặt khác, về phía khách thuê đồ cũng có không ít rủi ro. Không phải cửa hàng cho thuê đồ chơi nào cũng chọn những nhãn hàng có tên tuổi, chất liệu an toàn, nguồn gốc xuất xứ rõ ràng. Thực tế không ít loại đồ chơi trẻ em có xuất xứ từ Trung Quốc sử dụng chất Phthalate để nhuộm màu. Nếu trẻ sử dụng những đồ này sẽ không tránh khỏi nguy cơ bị nhiễm độc.</p>\r\n\r\n<p>Theo bác sĩ Trần Thị Thu Hương -Bệnh viện Nhi Trung ương, một nguy cơ khác không thể không kể đến là vấn đề vệ sinh. “Đồ chơi dùng chung không ai có thể đảm bảo sẽ được vệ sinh sạch sẽ hoàn toàn khi đến tay bé khác. Có những bệnh rất dễ lây truyền nếu dùng chung đồ với trẻ bị bệnh như: Chân tay miệng, đường ruột, viêm da… Nếu không kiểm tra kĩ càng, có những phương pháp vệ sinh chuyên biệt thì nguy cơ gây bệnh truyền nhiễm cho trẻ rất cao, hậu quả khó lường”.</p>\r\n\r\n<p>Đặc biệt, khi làm thủ tục thuê đồ dùng, đồ chơi tại các cửa hàng, khách hàng nên ký hợp đồng hay cam kết giữa các bên với các điều khoản rõ ràng, cụ thể. Ngoài ra, trước khi thuê bất kỳ món đồ nào, khách hàng nên yêu cầu chủ cửa hàng kiểm tra và xác nhận tình trạng hàng khi giao nhận, tránh những tranh chấp phát sinh và mất tiền oan trong quá trình sử dụng.</p>\r\n\r\n<p><strong><em>Bạn có thể tìm các thông tin bổ ích dành cho bé yêu tại Website:&nbsp;cho thuê đồ chơi&nbsp; của metramy.com nhé</em></strong></p>\r\n', '2014-04-07 17:24:09', '2014-04-07 16:24:00', 1, 'Dịch vụ cho thuê đồ chơi trẻ em chất lượng,dich vu cho thue do choi tre em chat luong', 1, 'vi', ',7,', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `web_menu`
-- 

INSERT INTO `web_menu` VALUES (1, 'Trang chủ', 'trang-chu', 'http://localhost/all/shopdochoi', '', '2014-04-07 15:01:06', '2014-04-07 14:01:00', 0, 1, 1, 'Shop đồ chơi trẻ em DN', 'Shop đồ chơi trẻ em DN chuyên cung cấp đồ chơi cho trẻ em, hàng chính hãng, chất lượng cao.', 'Shop đồ chơi trẻ em, do choi tre em', 0, 'vi', 1, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (2, 'Home', 'home', 'http://localhost/all/shopdochoi/lang=en', '', '2014-04-07 15:09:51', '2014-04-07 14:09:00', 0, 1, 1, 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 'Shop Do Choi Tre Em DN', 0, 'en', 1, ',2,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (3, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', '2014-04-07 15:14:52', '2014-04-07 14:14:00', 0, 0, 1, 'Giỏ hàng đồ chơi trẻ em', 'Giỏ hàng đồ chơi trẻ em', 'Giỏ hàng đồ chơi trẻ em', 0, 'vi', 7, ',7,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (4, 'Cart', 'cart', 'cart/', '', '2014-04-07 15:15:43', '2014-04-07 14:15:00', 0, 0, 1, 'Cart', 'Cart', 'Cart', 0, 'en', 7, ',7,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (5, 'Về chúng tôi', 've-chung-toi', 've-chung-toi/', '', '2014-04-07 15:28:17', '2014-04-07 14:28:00', 0, 3, 1, 'Về chúng tôi', 'Giới thiệu về chúng tôi Shop đồ chơi trẻ em DN', 'Về chúng tôi,ve chung toi', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (6, 'Sản phẩm', 'san-pham', 'san-pham/', '', '2014-04-07 15:29:10', '2014-04-07 14:28:00', 0, 4, 1, 'Sản phẩm', 'Sản phẩm Shop đồ chơi trẻ em DN chuyên cung cấp các loại đồ chơi như: Đồ chơi gỗ, Đồ chơi ngoài trời, Đồ chơi thông minh, Đồ chơi trẻ em - IQ,...', 'Đồ chơi gỗ,Đồ chơi ngoài trời, Đồ chơi thông minh', 0, 'vi', 3, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (7, 'Dịch vụ', 'dich-vu', 'dich-vu/', '', '2014-04-07 15:32:52', '2014-04-07 14:32:00', 0, 5, 1, 'Dịch vụ thiết kế đồ chơi trẻ em', 'Dịch vụ thiết kế đồ chơi trẻ em theo yêu cầu.', 'Dịch vụ thiết kế đồ chơi trẻ em', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (8, 'Khuyến mãi', 'khuyen-mai', 'khuyen-mai/', '', '2014-04-07 15:34:20', '2014-04-07 14:34:00', 0, 6, 1, 'Khuyến mãi shop đồ chơi trẻ em DN', 'Khuyến mãi shop đồ chơi trẻ em DN', 'Khuyến mãi shop đồ chơi trẻ em DN', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (9, 'Tuyển dụng', 'tuyen-dung', 'tuyen-dung/', '', '2014-04-07 15:37:01', '2014-04-07 14:37:00', 0, 7, 1, 'Tuyển dụng shop đồ chơi trẻ em DN', 'Tuyển dụng shop đồ chơi trẻ em DN', 'Tuyển dụng shop đồ chơi trẻ em DN', 0, 'vi', 11, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (10, 'Trợ giúp', 'tro-giup', 'tro-giup/', '', '2014-04-07 15:37:37', '2014-04-07 14:37:00', 0, 8, 1, 'Trợ giúp shop đồ chơi trẻ em DN', 'Trợ giúp shop đồ chơi trẻ em DN', 'Trợ giúp shop đồ chơi trẻ em DN', 0, 'vi', 2, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (11, 'Liên hệ', 'lien-he', 'lien-he/', '', '2014-04-07 15:38:16', '2014-04-07 14:37:00', 0, 10, 1, 'Liên hệ shop đồ chơi trẻ em DN', 'Liên hệ shop đồ chơi trẻ em DN', 'Liên hệ shop đồ chơi trẻ em DN', 0, 'vi', 6, ',2,5,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (12, 'Khuyến mãi, giảm giá', 'khuyen-mai-giam-gia', 'khuyen-mai-giam-gia/', '', '2014-04-07 15:40:03', '2014-04-07 14:40:00', 6, 1, 1, 'Khuyến mãi, giảm giá', 'Khuyến mãi, giảm giá', 'Khuyến mãi, giảm giá,khuyen mai giam gia', 1, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (13, 'Đồ chơi nhựa an toàn', 'do-choi-nhua-an-toan', 'do-choi-nhua-an-toan/', '', '2014-04-07 15:40:54', '2014-04-07 14:40:00', 6, 2, 1, 'Đồ chơi nhựa an toàn', 'Đồ chơi nhựa an toàn', 'Đồ chơi nhựa an toàn,do choi nhua an toan', 1, 'vi', 3, ',2,3,', 'admin', 'admin', 0);
INSERT INTO `web_menu` VALUES (14, 'Đồ chơi mô hình, xe mô hình', 'do-choi-mo-hinh-xe-mo-hinh', 'do-choi-mo-hinh-xe-mo-hinh/', '', '2014-04-07 15:41:31', '2014-04-07 14:40:00', 6, 3, 1, 'Đồ chơi mô hình, xe mô hình', 'Đồ chơi mô hình, xe mô hình', 'Đồ chơi mô hình, xe mô hình,do choi mo hinh xe mo hinh', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (15, 'Đồ chơi nhạc cụ', 'do-choi-nhac-cu', 'do-choi-nhac-cu/', '', '2014-04-07 15:41:51', '2014-04-07 14:40:00', 6, 4, 1, 'Đồ chơi nhạc cụ', 'Đồ chơi nhạc cụ', 'Đồ chơi nhạc cụ,do choi nhac cu', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (16, 'Đồ chơi búp bê, bông vải', 'do-choi-bup-be-bong-vai', 'do-choi-bup-be-bong-vai/', '', '2014-04-07 15:42:09', '2014-04-07 14:40:00', 6, 5, 1, 'Đồ chơi búp bê, bông vải', 'Đồ chơi búp bê, bông vải', 'Đồ chơi búp bê, bông vải,do choi bup be bong vai', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (17, 'Đồ chơi gỗ', 'do-choi-go', 'do-choi-go/', '', '2014-04-07 15:42:26', '2014-04-07 14:40:00', 6, 6, 1, 'Đồ chơi gỗ', 'Đồ chơi gỗ', 'Đồ chơi gỗ,do choi go', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (18, 'Đồ chơi ngoài trời', 'do-choi-ngoai-troi', 'do-choi-ngoai-troi/', '', '2014-04-07 15:42:42', '2014-04-07 14:40:00', 6, 7, 1, 'Đồ chơi ngoài trời', 'Đồ chơi ngoài trời', 'Đồ chơi ngoài trời,do choi ngoai troi', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (19, 'Đồ chơi thông minh', 'do-choi-thong-minh', 'do-choi-thong-minh/', '', '2014-04-07 15:42:55', '2014-04-07 14:40:00', 6, 8, 1, 'Đồ chơi thông minh', 'Đồ chơi thông minh', 'Đồ chơi thông minh,do choi thong minh', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (20, 'Đồ chơi trẻ em - IQ', 'do-choi-tre-em-iq', 'do-choi-tre-em-iq/', '', '2014-04-07 15:43:10', '2014-04-07 14:40:00', 6, 9, 1, 'Đồ chơi trẻ em - IQ', 'Đồ chơi trẻ em - IQ', 'Đồ chơi trẻ em - IQ,do choi tre em - iq', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);
INSERT INTO `web_menu` VALUES (21, 'Sách truyện, băng đĩa', 'sach-truyen-bang-dia', 'sach-truyen-bang-dia/', '', '2014-04-07 15:43:24', '2014-04-07 14:40:00', 6, 10, 1, 'Sách truyện, băng đĩa', 'Sách truyện, băng đĩa', 'Sách truyện, băng đĩa,sach truyen bang dia', 0, 'vi', 3, ',2,3,', 'admin', NULL, 0);

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
INSERT INTO `web_menu_admin` VALUES (5, 'Sản phẩm', 'web_products', 'icon-thu-vien-anh.jpg', 5, 1);
INSERT INTO `web_menu_admin` VALUES (6, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 6, 0);
INSERT INTO `web_menu_admin` VALUES (7, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 7, 1);
INSERT INTO `web_menu_admin` VALUES (8, 'Lịch khai giảng', 'web_lichkhaigiang', 'icon-lich-khai-giang', 8, 0);
INSERT INTO `web_menu_admin` VALUES (9, 'Danh sách chi nhánh', 'web_chinhanh', 'icon-product.jpg', 9, 0);
INSERT INTO `web_menu_admin` VALUES (10, 'Danh sách nhân viên', 'web_dangky_nhanvien', 'icon-register.jpg', 10, 1);
INSERT INTO `web_menu_admin` VALUES (11, 'Đơn hàng website', 'web_order', 'icon-hoc-vien.jpg', 11, 1);
INSERT INTO `web_menu_admin` VALUES (12, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 12, 1);
INSERT INTO `web_menu_admin` VALUES (13, 'Tuyển dụng - Thông tin', 'web_tuyendung', 'icon-tuyen-dung-thong-tin.jpg', 13, 1);
INSERT INTO `web_menu_admin` VALUES (14, 'Tuyển dụng - Công ty', 'web_tuyendung_cty', 'icon-contact.jpg', 14, 1);
INSERT INTO `web_menu_admin` VALUES (15, 'Tuyển dụng - Hồ sơ', 'web_tuyendung_hoso', 'icon-tuyendung-ho-so.jpg', 15, 1);
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
INSERT INTO `web_menu_type` VALUES (4, 'Hình ảnh', 4, 1);
INSERT INTO `web_menu_type` VALUES (5, 'Video', 5, 1);
INSERT INTO `web_menu_type` VALUES (6, 'Liên hệ', 6, 1);
INSERT INTO `web_menu_type` VALUES (7, 'Giỏ hàng', 7, 1);
INSERT INTO `web_menu_type` VALUES (8, 'Không', 9, 1);
INSERT INTO `web_menu_type` VALUES (9, 'Item 9', 9, 0);
INSERT INTO `web_menu_type` VALUES (10, 'Item 10', 11, 0);
INSERT INTO `web_menu_type` VALUES (11, 'Tuyển dụng', 8, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_order`
-- 

CREATE TABLE `web_order` (
  `id` int(11) NOT NULL auto_increment,
  `date_create` datetime default NULL,
  `date_update` datetime default NULL,
  `name` varchar(100) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) default NULL,
  `message` varchar(255) default NULL,
  `tong_thanhtien` int(8) default NULL,
  `lang` varchar(2) default 'vi',
  `status` tinyint(1) default '0',
  `delete` tinyint(1) default '0',
  `user_create` varchar(30) NOT NULL default 'khachhang',
  `user_update` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1404070308 ;

-- 
-- Dumping data for table `web_order`
-- 

INSERT INTO `web_order` VALUES (1404070307, '2014-04-07 18:03:07', '2014-04-07 18:03:07', 'Nhan', '123 CMT 8', '0988388003', 'hieunhan112@gmail.com', 'giao gio HC', 500000, 'vi', 0, 0, 'khachhang', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `web_order_detail`
-- 

CREATE TABLE `web_order_detail` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `soluong` int(2) NOT NULL,
  `price` int(8) NOT NULL,
  `thanhtien` int(8) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `web_order_detail`
-- 

INSERT INTO `web_order_detail` VALUES (1, 1404070307, 9, 1, 500000, 500000, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_products`
-- 

CREATE TABLE `web_products` (
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
  `dactinh` text,
  `price` int(7) default '0',
  `price_km` int(6) default '0',
  `other` tinyint(1) default '0',
  `lang` varchar(3) default NULL,
  `menu_id` varchar(20) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `web_products`
-- 

INSERT INTO `web_products` VALUES (1, 'IQ Toys HTP001 - Xe tập đi', 'iq-toys-htp001-xe-tap-di', 'iq-toys-htp001-xe-tap-di.jpg', 'Để giúp bé có những bước đi đầu tiên cứng cáp hơn, mẹ cần trang bị cho bé một công cụ hỗ trợ khoa học và an toàn.', '<h2>Để giúp bé có những bước đi đầu tiên cứng cáp hơn, mẹ cần trang bị cho bé một công cụ hỗ trợ khoa học và an toàn.</h2>\r\n\r\n<p>&nbsp;được thiết kế 4 bánh và chuyển động chỉ có thể tiến về phía trước sẽ là điểm tựa vững chắc cho bé trong lúc tập đi. Ngoài ra, những chi tiết trang trí được thêm vào xe như hình những chú ngựa đủ màu sắc phát ra tiếng kêu lốc cốc vui tai sẽ làm bé thích thú. Với chiếc xe tập đi&nbsp;IQ Toys HTP001&nbsp;bé sẽ chủ động tập luyện cách giữ thăng bằng.</p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu an toàn</strong><br />\r\nSản phẩm được làm từ gỗ thông mịn, không góc cạnh và các loại sơn, mực in phù hợp cho sản xuất đồ chơi trẻ em, không chứa độc tố rất an toàn cho bé khi sử dụng.</p>\r\n\r\n<p style="text-align: center;"><img alt="Xe tập đi IQ Toys HTP001" src="/all/shopdochoi/public/images/products/iq-toys-htp001-xe-tap-di-2.jpg" /></p>\r\n\r\n<p><strong>Thiết kế độc đáo</strong><br />\r\nBánh gỗ tròn của xe được bọc một viền cao su không gây tiếng cót két khi bé đẩy, tạo được lực ma sát không làm xe trôi trượt nhanh. Xe chỉ chuyển động tiến tới chứ không thể lùi nên sẽ an toàn hơn cho bé trong khi sử dụng.</p>\r\n\r\n<p><strong>Giúp bé tập đi vững chắc</strong><br />\r\nBé từ 7-8 tháng tuy vẫn chưa cứng cáp nhưng đã có khuynh hướng muốn tập đi. Do đó, một chiếc xe tập đi hoàn toàn là vật cần thiết trong giai đoạn này. Thiết kế hiện đại và vững chắc của xe sẽ hỗ trợ tối đa cho bé.</p>\r\n\r\n<p style="text-align: center;"><img alt="Xe tập đi IQ Toys HTP001" src="/all/shopdochoi/public/images/products/iq-toys-htp001-xe-tap-di.jpg" style="width: 355px; height: 355px;" /></p>\r\n\r\n<p><strong>Kích thước nhỏ gọn</strong><br />\r\nThiết kế hiện đại và vừa tầm với bé, không chiếm nhiều diện tích khi cất giữ sẽ đem lại sự tiện lợi cho gia đình bạn. Mẹ có thể cất đi khi bé không dùng đến.</p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Doanh nghiệp Hoàng Thiên Phát chuyên sản xuất các sản phẩm đồ chơi thông minh cho trẻ em bằng gỗ, phục vụ thị trường trong nước và xuất khẩu với thương hiệu IQ Toys. Các sản phẩm của IQ Toys được chú ý trong thiết kế để phù hợp cho từng giai đoạn phát triển của trẻ nên ngày càng được các bậc phụ huynh tin dùng. Bên cạnh việc sản xuất trong nước, sản phẩm của IQ Toys cũng vươn đến thị trường nước ngoài như Hàn Quốc, và Nhật Bản. Đồ chơi gỗ IQ Toys chính là sự lựa chọn thông minh của mẹ cho sự phát triển và an toàn của bé.</p>\r\n', '2014-04-07 15:47:58', '2014-04-07 14:47:00', 1, 'IQ Toys HTP001 - Xe tập đi,iq toys htp001 - xe tap di', '<p>Bao gồm tất cả các loại thuế</p>\r\n', 329000, 199000, 1, 'vi', ',6,12,20,', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (2, 'Colormate M67 - Bộ màu vẽ đa năng', 'colormate-m67-bo-mau-ve-da-nang', 'colormate-m67-bo-mau-ve-da-nang.jpg', 'Màu vẽ, bút chì và dụng cụ học tập của con bạn vương vãi khắp nhà trông thật bừa bộn? Bé lại có sở thích hội họa nên rất cần đầy đủ các dụng cụ vẽ để thỏa sức sáng tạo. ', '<h2>Màu vẽ, bút chì và dụng cụ học tập của con bạn vương vãi khắp nhà trông thật bừa bộn? Bé lại có sở thích hội họa nên rất cần đầy đủ các dụng cụ vẽ để thỏa sức sáng tạo.</h2>\r\n\r\n<p><strong>Bộ dụng cụ vẽ&nbsp;Colormate M67</strong>&nbsp;không những khơi dậy tài năng nghệ thuật của bé mà còn rèn luyện cho bé tính ngăn nắp, gọn gàng. Bộ&nbsp;Colormate M67&nbsp;có màu sắc rất thật và sắc nét, không mùi độc hại sẽ cho bé những giờ phút sáng tạo không ngừng.</p>\r\n\r\n<p><strong>CÁCH CHƠI:</strong>&nbsp;Lưu trữ nơi khô ráo, thoáng mát, tuyệt đối tránh xa nguồn nhiệt, hóa chất và tránh để ánh sáng mặt trời chiếu trực tiếp vào sản phẩm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/colormate-m67-bo-mau-ve-da-nang-2.jpg" style="width: 355px; height: 355px;" /></p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu cao cấp</strong><br />\r\nSản phẩm được làm từ nguyên liệu cao cấp cho màu sắc tươi sáng như thật. Đặc biệt, bộ sản phẩm đạt tiêu chuẩn chất lượng về an toàn sức khỏe cho người sử dụng. An toàn cho các bé khi ngậm hoặc nuốt phải.</p>\r\n\r\n<p><strong>Chất lượng màu đẹp</strong><br />\r\nMàu nước trong bút dạ không lem cho các bé dễ dàng sử dụng. Bút sáp và bút sáp dầu cho lớp màu đều và mịn.</p>\r\n\r\n<p><strong>Bộ sản phẩm bao gồm</strong><br />\r\nColormate M67&nbsp;gồm có: 18 bút lông, 24 bút sáp dầu, 24 bút sáp dài, 1 hộp gỗ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/colormate-m67-bo-mau-ve-da-nang.jpg" style="width: 355px; height: 355px;" /></p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Năm 2006&nbsp;Công ty TNHH MTV Bạn Màu Quốc Tế (International Colormate Co.Ltd)&nbsp;chính thức phát triển nhà máy tại Việt Nam địa chỉ số 1A, An Phú, Thuận An, Bình Dương.&nbsp;Với hơn 28 năm trong việc đầu tư và phát triển thương hiệu sản phẩm tại Đại Loan từ năm 1984 đến nay.&nbsp;Công ty đã có một bề dày kinh nghiệm trong ngành sản xuất, thiết kế, cung cap các nguyên phụ liệu, dụng cụ ngành mỹ thuật như: Bút lông, bút sáp, sơn dầu, sơn Acrylic, sơn nước, poster paint, phấn màu, bút chì, giá vẽ, đồ nội thất trẻ em,... Với hàng trăm mẫu thiết kế cùng nguyên vật liệu nhập khẩu từ Đài Loan, Nhật, Đức, Thái Lan,..... Colormate luôn luôn mang đến các sản phẩm độc đáo có sự đầu tư kỹ lưỡng về mặt thiết kế, chọn lựa, giúp phát huy tối đa kỹ năng mỹ thuật của trẻ và đảm bảo chất lượng đến tay người tiêu dùng. Đồng thời, các sản phẩm của công ty đều đạt được tiêu chuẩn chất lượng an toàn&nbsp;ASTM-D4236 (Tiêu chuẩn Mỹ), EN-71 (Tiêu chuẩn Châu Âu),&nbsp;thông qua những cơ quan kiểm định được công nhân trên toàn thế giới như:SGS, BV, Intertek.</p>\r\n', '2014-04-07 16:07:26', '2014-04-07 15:07:00', 1, 'Colormate M67 - Bộ màu vẽ đa năng,colormate m67 - bo mau ve da nang', '<ul>\r\n	<li>18 Bút lông</li>\r\n	<li>24 Bút sáp dầu</li>\r\n	<li>24 Bút sáp dài</li>\r\n	<li>1 Hộp gỗ</li>\r\n</ul>\r\n', 184000, 149000, 1, 'vi', ',6,12,19,', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (3, 'Colormate MS-93W - Bộ màu vẽ đa năng', 'colormate-ms-93w-bo-mau-ve-da-nang', 'colormate-ms-93w-bo-mau-ve-da-nang.jpg', 'Hội họa giúp trẻ được tự do tưởng tượng, bộc lộ cảm xúc và nhận thức. Qua đó giúp trẻ rèn luyện tính kiên nhẫn, trí tưởng tượng, óc phán đoán đặc biệt là tư duy logic, tư duy sáng tạo…', '<h2>Hội họa giúp trẻ được tự do tưởng tượng, bộc lộ cảm xúc và nhận thức. Qua đó giúp trẻ rèn luyện tính kiên nhẫn, trí tưởng tượng, óc phán đoán đặc biệt là tư duy logic, tư duy sáng tạo… rất tốt cho sự phát triển trí lực của trẻ.</h2>\r\n\r\n<p>Chính vì điều này mà việc trang bị cho bé một bộ dụng cụ vẽ đầy đủ là hoàn toàn cần thiết. Bộ dụng cụ bút chì màu hộp gỗ Colormate MS-93W chính là người bạn thân thiết nuôi dưỡng tài năng cho con bạn. Được làm từ chất liệu cao cấp tuyệt đối an toàn cho trẻ, bộ sản phẩm Colormate MS-93W gồm đầy đủ các dụng cụ vẽ mà bé cần sẽ là trợ thủ đắc lực cho bé khi sáng tạo những “tác phẩm” hội họa. CÁCH CHƠI: Lưu trữ nơi khô ráo, thoáng mát, tuyệt đối tránh xa nguồn nhiệt, hóa chất và tránh để ánh sáng mặt trời chiếu trực tiếp vào sản phẩm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/colormate-ms-93w-bo-mau-ve-da-nang-2.jpg" style="width: 355px; height: 355px;" /></p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p>Chất liệu cao cấp Sản phẩm được làm từ nguyên liệu cao cấp cho màu sắc tươi sáng như thật. Đặc biệt, bộ sản phẩm đạt tiêu chuẩn chất lượng về an toàn sức khỏe cho người sử dụng. An toàn cho các bé khi ngậm hoặc nuốt phải. Bút sáp Sáp dầu cố định trong màng định hình. Cho màu đậm đều, bền màu. Chì màu cây Lõi chì màu được đặt cố định giữa trung tâm, khi chuốt không bị gãy. Bánh màu nước Màu nước không lem cho các bé dễ dàng sử dụng. Bộ sản phẩm bao gồm Colormate MS-93W gồm có: 24 cây bút chì màu, 34 cây bút sáp dầu, 24 bánh màu nước, 2 cây bút chì đen, 2 cọ vẽ, 1 gôm, 1 đồ chuốt bút chì, 1 bảng pha màu, 3 khay pha màu, 1 hộp gỗ có quai xách.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/colormate-ms-93w-bo-mau-ve-da-nang.jpg" style="width: 340px; height: 340px;" />​</p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Năm 2006&nbsp;Công ty TNHH MTV Bạn Màu Quốc Tế (International Colormate Co.Ltd)&nbsp;chính thức phát triển nhà máy tại Việt Nam địa chỉ số 1A, An Phú, Thuận An, Bình Dương.&nbsp;Với hơn 28 năm trong việc đầu tư và phát triển thương hiệu sản phẩm tại Đại Loan từ năm 1984 đến nay.&nbsp;Công ty đã có một bề dày kinh nghiệm trong ngành sản xuất, thiết kế, cung cap các nguyên phụ liệu, dụng cụ ngành mỹ thuật như: Bút lông, bút sáp, sơn dầu, sơn Acrylic, sơn nước, poster paint, phấn màu, bút chì, giá vẽ, đồ nội thất trẻ em,... Với hàng trăm mẫu thiết kế cùng nguyên vật liệu nhập khẩu từ Đài Loan, Nhật, Đức, Thái Lan,..... Colormate luôn luôn mang đến các sản phẩm độc đáo có sự đầu tư kỹ lưỡng về mặt thiết kế, chọn lựa, giúp phát huy tối đa kỹ năng mỹ thuật của trẻ và đảm bảo chất lượng đến tay người tiêu dùng. Đồng thời, các sản phẩm của công ty đều đạt được tiêu chuẩn chất lượng an toàn&nbsp;ASTM-D4236 (Tiêu chuẩn Mỹ), EN-71 (Tiêu chuẩn Châu Âu),&nbsp;thông qua những cơ quan kiểm định được công nhân trên toàn thế giới như:SGS, BV, Intertek.</p>\r\n', '2014-04-07 16:13:19', '2014-04-07 15:07:00', 1, 'Colormate MS-93W - Bộ màu vẽ đa năng,colormate ms-93w - bo mau ve da nang', '<ul>\r\n	<li>24 cây bút chì màu</li>\r\n	<li>34 cây bút sáp dầu</li>\r\n	<li>24 bánh màu nước</li>\r\n	<li>2 cây bút chì đen</li>\r\n	<li>2 cọ vẽ</li>\r\n	<li>1 gôm</li>\r\n	<li>1 đồ chuốt</li>\r\n	<li>3 khay pha màu</li>\r\n	<li>1 bảng màu</li>\r\n	<li>1 hộp gỗ quai da</li>\r\n</ul>\r\n', 272000, 319000, 1, 'vi', ',6,12,19,', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (4, 'Edugames - Xe cũi thả hình', 'edugames-xe-cui-tha-hinh', 'edugames-xe-cui-tha-hinh.jpg', 'Từ 8 tháng tuổi, bé đã bắt đầu tìm tòi và thích khám phá thế giới xung quanh, còn gì tuyệt vời hơn là mẹ dành cho bé một món đồ chơi có thể giúp bé ghi nhớ và nhận biết các đồ vật và hình ảnh thế giới xung quanh.', '<h2>Từ 8 tháng tuổi, bé đã bắt đầu tìm tòi và thích khám phá thế giới xung quanh, còn gì tuyệt vời hơn là mẹ dành cho bé một món đồ chơi có thể giúp bé ghi nhớ và nhận biết các đồ vật và hình ảnh thế giới xung quanh.</h2>\r\n\r\n<p><strong>Sản phẩm&nbsp;Edugames 006</strong>&nbsp;mang lại sự thích thú cho bé với những khối hình vuông tròn nhiều màu sắc, giúp bé làm quen với các hình khối đơn giản, phát triển tư duy logic và suy luận hình ảnh. Xe cũi thả hìnhEdugames 006&nbsp;chắc chắn là món quà đáng yêu và ý nghĩa nhất dành cho thiên thần nhỏ của bạn.</p>\r\n\r\n<p><strong>CÁCH CHƠI: </strong>Sản phẩm còn có 1 xe cũi xinh xắn và nhiều hình khối đơn giản như hình vuông, hình tròn, hình chữ nhật,…, bé phải tìm đúng hình mới có thể cho vừa lọt vào xe gỗ, nếu không tìm đúng hình sẽ không chui lọt.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/edugames-xe-cui-tha-hinh.jpg" style="width: 340px; height: 340px;" /></p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Làm quen với toán học</strong><br />\r\nMón đồ chơi giúp bé làm quen và nhận biết các hình khối đơn giản như hình vuông, hình chữ nhật,… Ngoài ra để cho hình vào trong xe cũi, bé phải phân biệt được sự khác nhau giữa các hình khối, đây là bước đầu quan trọng cho bé dễ tiếp cận với môn toán học sau này.</p>\r\n\r\n<p><strong>Chất liệu cao cấp và an toàn</strong><br />\r\nSản phẩm làm bằng chất liệu gỗ cao cấp, tuyệt đối an toàn cho bé. Bé có thể thoả thích chơi đùa, vừa có thể học hỏi thêm kiến thức mà vẫn an toàn cho sức khỏe của bé.</p>\r\n\r\n<p><strong>Cùng bé vui chơi</strong><br />\r\nBố mẹ có thể cùng bé chơi trò chơi này, hướng dẫn bé đâu là hình vuông, hình tròn,… Bé vừa tiếp thu thêm kiến thức mới bổ ích vừa cảm nhận được tình yêu thương gia đình.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/edugames-xe-cui-tha-hinh-3.jpg" style="width: 500px; height: 468px;" /></p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Đầu năm 2007, các bộ cờ của&nbsp;Edugames&nbsp;chính thức góp mặt trên thị trường Việt Nam và không lâu sau đó là sự phát triển của các trò chơi giáo dục. Với khẩu hiệu “Chơi mà học” và tiêu chí “Cả nhà cùng chơi”,&nbsp;Edugames&nbsp;đã từng bước dành được cảm tình của khách hàng. Năm 2010, một kết quả khích lệ đã đến với&nbsp;Edugames. Đó là các sản phẩm trò chơi giáo dụcEdugames, đạt danh hiệu Hàng Việt Nam chất lượng cao chỉ sau 3 năm có mặt trên thị trường. Với&nbsp;Edugames, bé sẽ ham học hỏi cũng như phát triển trí tuệ hơn.</p>\r\n', '2014-04-07 16:16:33', '2014-04-07 15:16:00', 1, 'Edugames - Xe cũi thả hình,edugames - xe cui tha hinh', '<ul>\r\n	<li>1 bộ / hộp</li>\r\n	<li>Bao gồm tất cả các loại thuế</li>\r\n</ul>\r\n', 136000, 104000, 1, 'vi', ',6,12,17,', 'admin', 'admin', 0);
INSERT INTO `web_products` VALUES (5, 'Asta TY068 - Bộ đồ chơi xúc cát', 'asta-ty068-bo-do-choi-xuc-cat', 'asta-ty068-bo-do-choi-xuc-cat.jpg', 'Trẻ nhỏ hiếu động rất thích thú mỗi khi được ba mẹ dẫn đi chơi biển. Trong đó, trò cào cát hay sử dụng cát để nặn thành các hình thù ngộ nghĩnh luôn được các bé đặc biệt yêu thích.', '<h2>Trẻ nhỏ hiếu động rất thích thú mỗi khi được ba mẹ dẫn đi chơi biển. Trong đó, trò cào cát hay sử dụng cát để nặn thành các hình thù ngộ nghĩnh luôn được các bé đặc biệt yêu thích.</h2>\r\n\r\n<p><strong>Bộ đồ chơi xúc cát&nbsp;Asta TY068</strong>&nbsp;với kiểu dáng nhỏ xinh và vừa tầm tay, là người bạn đồng hành lý tưởng cùng bé trong trò chơi cát. Sản phẩm được làm từ chất liệu nhựa an toàn, không BPA, tuyệt đối an toàn đối với trẻ nhỏ. Hơn thế nữa, bộ đồ chơi có bề mặt nhẵn mịn, không làm hại làn da vốn non nớt của bé nên ba mẹ có thể an tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/asta-ty068-bo-do-choi-xuc-cat-2.jpg" style="opacity: 0.9; font-size: 13px; text-align: center; width: 340px; height: 340px;" /></p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỘI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu an toàn</strong><br />\r\nSản phẩm được làm từ chất liệu nhựa không chứ BPA cùng bề mặt nhẵn mịn, tuyệt đối an toàn dành cho trẻ nhỏ.</p>\r\n\r\n<p><strong>Thiết kế vừa tầm tay</strong><br />\r\nBộ đồ chơi xúc cát với các chi tiết nhỏ xinh, vừa tầm tay của trẻ giúp trẻ dễ dàng chơi đùa.</p>\r\n\r\n<p><strong>Kích thích khả năng vận động</strong><br />\r\nAsta TY068&nbsp;giúp trẻ thỏa sức sáng tạo, đồng thời kích thích khả năng vận động để trẻ cứng cáp và nhanh nhẹn hơn.</p>\r\n', '2014-04-07 16:20:43', '2014-04-07 15:20:00', 1, 'Asta TY068 - Bộ đồ chơi xúc cát,asta ty068 - bo do choi xuc cat', '', 182000, 0, 1, 'vi', ',6,13,', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (6, 'Pakitoy 138-09 - Mô hình Chocolate ngọt ngào', 'pakitoy-138-09-mo-hinh-chocolate-ngot-ngao', 'pakitoy-138-09-mo-hinh-chocolate-ngot-ngao.jpg', 'Những món đồ chơi mô hình lắp ghép luôn tạo sự hứng thú cho đông đảo trẻ em bởi tính sáng tạo cùng khả năng kích thích trí tưởng tượng phong phú.', '<h2>Những món đồ chơi mô hình lắp ghép luôn tạo sự hứng thú cho đông đảo trẻ em bởi tính sáng tạo cùng khả năng kích thích trí tưởng tượng phong phú.</h2>\r\n\r\n<p>Nắm bắt được tâm lý này, thương hiệu Pakitoy đã cho ra đời dòng sản phẩm Do It Yourself (tự chế tạo) với các chi tiết được thiết kế tỉ mỉ, tinh tế, sẵn sàng đưa trẻ bước vào một thế giới mới đầy hứng khởi và nhiều thú vị. Là một đại diện trong số đó, mô hình ChocolatePakitoy 138-09&nbsp;gây ấn tượng bởi kiểu dáng mô phỏng chân thực và màu sắc bắt mắt. Sở hữu bộ đồ chơi này, bé sẽ thỏa thích sáng tạo khi tự tay lắp từng mảnh ghép thành một mô hình hoản chỉnh. Quá trình đó không chỉ mang lại niềm vui cho trẻ mà còn giúp bé có cơ hội rèn luyện nhiều kỹ năng cần thiết như tính cẩn thận và kiên nhẫn. Hơn thế nữa, việc tiếp xúc với những mảnh ghép đủ màu sắc cũng góp phần kích thích sự phát triển của các giác quan của bé.&nbsp;Pakitoy 138-09&nbsp;được sản xuất từ chất liệu gỗ MDF với bề mặt trơn láng, không góc cạnh, an toàn dành cho trẻ nhỏ nên các bậc phụ huynh có thể an tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/pakitoy-138-09-mo-hinh-chocolate-ngot-ngao-2.jpg" style="width: 340px; height: 340px;" /></p>\r\n\r\n<p><strong>CÁCH CHƠI:&nbsp;</strong>Ba mẹ hướng dẫn bé dùng những mảnh ghép để lắp thành một mô hình hoàn chỉnh. Bởi vì bé có khả năng gặp khó khăn nên trong quá trình lắp ghép, ba mẹ nên ở cạnh để hướng dẫn con trẻ.</p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu gỗ MDF</strong><br />\r\nTừng bộ phận của mô hình chủ yếu được làm từ chất liệu gỗ MDF kết hợp với các loại vật liệu an toàn khác, bề mặt trơn láng và không góc cạnh, không gây hại đến sức khỏe trẻ em.</p>\r\n\r\n<p><strong>Kích thích sự phát triển toàn diện của trẻ nhỏ</strong><br />\r\nĐược xem như một món đồ chơi vừa học vừa chơi, sản phẩm không chỉ giúp trẻ giải trí vui vẻ mà còn tạo cho bé cơ hội nâng cao những kỹ năng cần thiết. Bé sẽ trở nên năng động, nhanh nhẹn và tháo vác hơn. Ngoài ra, đồ chơi nhiều màu sắc còn góp phần kích thích sự phát triển các giác quan của trẻ.</p>\r\n\r\n<p><strong>Thiết kế mô phỏng ấn tượng</strong><br />\r\nNhằm tạo cho bé sự thích thú, đồ chơi của Pakitoy chú trọng đến kiểu dáng đáng yêu cùng thiết kế mô phỏng chân thực và sinh động. Bên cạnh đó, màu sắc cũng là một yếu tố quan trọng không kém. Việc phối màu bắt mắt giúp bé phấn khởi và hào hứng hơn trong lúc chơi.</p>\r\n', '2014-04-07 16:25:15', '2014-04-07 15:25:00', 1, 'Pakitoy 138-09 - Mô hình Chocolate ngọt ngào,pakitoy 138-09 - mo hinh chocolate ngot ngao', '', 682000, 0, 1, 'vi', ',6,14,', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (7, 'Nici 36255 - Gấu Love Beige', 'nici-36255-gau-love-beige', 'nici-36255-gau-love-beige.jpg', 'Nằm trong bộ sưu tập Nici Love bear – đại sứ tình yêu ngọt ngào và đáng yêu, gồm những sản phẩm có kiểu dáng dễ thương và màu sắc bắt mắt. Gấu Love Beige Nici 36355 mang đến sự thích thú, đồng thời giúp bé có được những giờ phút vui chơi thật thú vị.', '<h2>Nằm trong bộ sưu tập Nici Love bear – đại sứ tình yêu ngọt ngào và đáng yêu, gồm những sản phẩm có kiểu dáng dễ thương và màu sắc bắt mắt. Gấu Love Beige&nbsp;Nici 36355&nbsp;mang đến sự thích thú, đồng thời giúp bé có được những giờ phút vui chơi thật thú vị.</h2>\r\n\r\n<p>Quá trình giao tiếp với người bạn nhỏ này tạo cho bé cơ hội phát triển khả năng ngôn ngữ cũng như phát huy tính năng động, giúp bé cứng cáp hơn.&nbsp;Nici 36355&nbsp;sử dụng chất liệu sợi mềm mại, an toàn, không gây hại đến làn da mỏng manh, non nớt của bé nên các mẹ có thể hoàn toàn yên tâm. Bên cạnh đó, các đường may tỉ mỉ và chắc chắn, đảm bảo sản phẩm không bị hư hỏng suốt thời gian dài sử dụng.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/shopdochoi/public/images/products/nici-36255-gau-love-beige.jpg" style="width: 340px; height: 340px;" /></p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu cao cấp, an toàn đối với trẻ</strong><br />\r\nSản phẩm sử dụng chất liệu sợi cao cấp, mềm mại và bền đẹp, tuyệt đối an toàn và không gây hại đến làn da mỏng manh của trẻ. Bên cạnh đó, chất liệu này tạo cho bé cảm giác thoải mái và dễ chịu khi ôm.</p>\r\n\r\n<p><strong>Kích thích sự phát triển toàn diện</strong><br />\r\nQuá trình giao tiếp với chú báo tuyết góp phần giúp bé phát triển khả năng ngôn ngữ từ những năm tháng đầu đời. Bên cạnh đó, trong lúc chơi đùa, bé có cơ hội vận động nên sẽ trở nên cứng cáp hơn.</p>\r\n\r\n<p><strong>Thiết kế xinh xắn, đáng yêu</strong><br />\r\nSản phẩm sở hữu kiểu dáng đáng yêu cùng màu sắc bắt mắt, thu hút sự chú ý của bé, đồng thời tạo cho bé cảm giác thích thú khi chơi đùa.</p>\r\n\r\n<p><strong>Đường may tỉ mỉ, chắc chắn</strong><br />\r\nTừng đường may tinh tế, tỉ mỉ và chắc chắn, đảm bảo sản phẩm luôn bền đẹp suốt thời gian dài sử dụng.</p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Thương hiệu&nbsp;Nici&nbsp;được thành lập năm 1986 tại thành phố Altenkustadt/Bavaria, miền Nam nước Đức. Qua 25 năm xây dựng và phát triển, giờ đây Nici không chỉ là thương hiệu nổi tiếng tại Đức mà đã trở thành sự lựa chọn yêu thương của khách hàng ở hơn 60 quốc gia trên thế giới. Hiện nay,&nbsp;Nici&nbsp;đã trở thành thương hiệu đi tiên phong và tạo ra những trào lưu và xu hướng mới tại Việt Nam. Song song đó, sản phẩm của&nbsp;Nici&nbsp;vẫn giữ gìn được giá trị cốt lõi của chính mình - sự hấp dẫn, vui tươi, độc đáo và làm thoả mãn niềm đam mê của những người đang sưu tầm và mong muốn chia sẻ sự yêu thương.</p>\r\n', '2014-04-07 16:27:43', '2014-04-07 15:27:00', 1, 'Nici 36255 - Gấu Love Beige,nici 36255 - gau love beige', '', 489000, 0, 1, 'vi', ',6,16,', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (8, 'Barbie BCH57 - Búp bê thời trang', 'barbie-bch57-bup-be-thoi-trang', 'barbie-bch57-bup-be-thoi-trang.jpg', 'Búp bê thời trang Barbie BCH57 đi kèm các món phụ kiện sinh động như túi xách, giày dép, là người bạn đồng hành lý tưởng mang đến cho bé những giờ phút giải trí thú vị.', '<h2>Búp bê thời trang&nbsp;Barbie BCH57&nbsp;đi kèm các món phụ kiện sinh động như túi xách, giày dép, là người bạn đồng hành lý tưởng mang đến cho bé những giờ phút giải trí thú vị.</h2>\r\n\r\n<p>Quá trình chơi đùa, bé có thể thỏa sức sáng tạo để thay đổi trang phục cũng như thiết kế nên những kiểu tóc độc đáo cho búp bê. Thông qua đó, bé sẽ có cơ hội rèn luyện thêm tính kiên nhẫn, cẩn thận và tỉ mỉ. Hơn thế nữa, búp bê được làm từ chất liệu nhựa an toàn, đảm bảo không gây nguy hại đến làn da non nớt của trẻ nhỏ nên các phụ huynh có thể an tâm.</p>\r\n\r\n<p><strong>CÁCH CHƠI:</strong> Bé dùng bộ đồ chơi để chơi trò nhập vai cùng bố mẹ hoặc bạn bè. Bé cũng có thể thỏa sức sáng tạo ra những phong cách mới cho búp bê.</p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>Chất liệu nhựa cao cấp</strong><br />\r\nĐược làm từ nhựa cao cấp, sản phẩm bảo đảm an toàn cho bé, không gây độc hại, ảnh hưởng đến sức khỏe của bé.</p>\r\n\r\n<p><strong>Thiết kế sinh động, đáng yêu</strong><br />\r\nMỗi chi tiết đều được thiêt kế sinh động với những màu sắc bắt mắt và đáng yêu, giúp bé thích thú khi chơi. Bé có thể thoải mái thay quần áo và làm tóc cho búp bê để giúp cô nàng trở nên thật nổi bật.</p>\r\n\r\n<p><strong>Có thể kết hợp với những trò chơi khác</strong><br />\r\nBé có thể chơi cùng với những cô nàng búp bê khác trong bộ sưu tập.</p>\r\n\r\n<p><strong>Giúp phát triển tư duy và khả năng sáng tạo của bé</strong><br />\r\nVới trò chơi này, bé có thể thỏa sức tưởng tượng các kiểu dáng thú vị cho nàng búp bê, qua đó khả năng tư duy và óc sáng tạo của bé sẽ được phát huy tối đa, đồng thời giúp bé thật khéo tay khi làm những việc đòi hỏi sự khéo léo.</p>\r\n\r\n<p style="text-align: center;"><img alt="Barbie BCH57 - Búp bê thời trang" src="/all/shopdochoi/public/images/products/barbie-bch57-bup-be-thoi-trang.jpg" style="width: 340px; height: 340px;" /></p>\r\n\r\n<p><strong>THÔNG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Được tập đoàn Mattel trưng bày lần đầu tiên vào ngày 9 tháng 3 năm 1959 tại New York,&nbsp;Barbie&nbsp;giờ đây đã là thương hiệu búp bê nổi tiếng trên toàn thế giới và là món đồ chơi bán chạy nhất lịch sử. Không ngừng cải tiến và nâng cao mẫu mã cũng như chất lượng sản phẩm trong suốt 53 năm qua,&nbsp;Barbie&nbsp;đã trở thành biểu tượng của văn hóa Mỹ và đứng vị trí thứ 43 trong danh sách những biểu tượng văn hóa thời đại tồn tại trong tưởng tượng. Không những nổi tiếng ở các nước trên thế giới,Barbie&nbsp;cũng được các em nhỏ Việt Nam yêu thích và là người bạn tâm tình, vui chơi cùng các em.</p>\r\n', '2014-04-07 16:34:04', '2014-04-07 15:34:00', 1, 'Barbie BCH57 - Búp bê thời trang,barbie bch57 - bup be thoi trang', '', 225000, 0, 1, 'vi', ',6,16,', 'admin', NULL, 0);
INSERT INTO `web_products` VALUES (9, 'Bàn nhạc, giá chữ A Winfun', 'ban-nhac-gia-chu-a-winfun', 'ban-nhac-gia-chu-a-winfun.jpg', 'Đồ chơi dành cho các bé từ sơ sinh tuổi trở lên với nhiều màu sắc sinh động, cùng nhiều món đồ chơi đi kèm có thể phát ra tiếng động , giúp bé phát triển đồng thời xúc giác, thính giác, thị giác.', '<p style="text-align: center;"><img alt="Bàn nhạc, giá chữ A Winfun" src="/all/shopdochoi/public/images/products/ban-nhac-gia-chu-a-winfun-2.jpg" style="width: 539px; height: 480px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="Bàn nhạc, giá chữ A Winfun" src="/all/shopdochoi/public/images/products/ban-nhac-gia-chu-a-winfun-3.jpg" style="width: 539px; height: 480px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="Bàn nhạc, giá chữ A Winfun" src="/all/shopdochoi/public/images/products/ban-nhac-gia-chu-a-winfun-4.jpg" style="width: 539px; height: 480px;" /></p>\r\n', '2014-04-07 16:58:10', '2014-04-07 15:58:00', 1, 'Bàn nhạc, giá chữ A Winfun,ban nhac gia chu a winfun', '<h2>Đồ chơi dành cho các bé từ sơ sinh tuổi trở lên với nhiều màu sắc sinh động, cùng nhiều món đồ chơi đi kèm có thể phát ra tiếng động , giúp bé phát triển đồng thời xúc giác, thính giác, thị giác.</h2>\r\n', 650000, 500000, 1, 'vi', ',6,12,15,', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_products_comment`
-- 

CREATE TABLE `web_products_comment` (
  `id` int(11) NOT NULL auto_increment,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '0',
  `parent_id` int(11) default NULL,
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
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `url` varchar(250) default NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `status` tinyint(1) default '1',
  `product_id` int(11) default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_products_image`
-- 


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider liên hệ', 'contact.jpg', 'javascript:;', '2014-04-07 17:06:16', '2014-04-07 16:06:00', 1, 'vi', 1, ',11,', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Slider trang chủ', 'trang-chu.jpg', 'javascript:;', '2014-04-07 17:09:35', '2014-04-07 16:09:00', 1, 'vi', 1, ',1,2,', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (3, 'Slider về chúng tôi', 've-chung-toi.jpg', 'javascript:;', '2014-04-07 17:15:18', '2014-04-07 16:09:00', 1, 'vi', 1, ',5,', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (4, 'Slider sản phẩm', 'san-pham.jpg', 'javascript:;', '2014-04-07 17:17:59', '2014-04-07 16:09:00', 1, 'vi', 1, ',6,', NULL, 'admin', 'admin', 0);

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

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Top', 0);
INSERT INTO `web_slider_banner_position` VALUES (3, 'QC Left', 1);
INSERT INTO `web_slider_banner_position` VALUES (4, 'QC Right', 1);
INSERT INTO `web_slider_banner_position` VALUES (5, 'Bottom', 0);
INSERT INTO `web_slider_banner_position` VALUES (6, 'Center', 0);
INSERT INTO `web_slider_banner_position` VALUES (7, 'Partner', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung`
-- 

CREATE TABLE `web_tuyendung` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `metaKeyword` varchar(150) NOT NULL,
  `content` text,
  `noilamviec` int(2) NOT NULL,
  `mucluong` varchar(20) NOT NULL,
  `soluongtuyen` int(2) NOT NULL,
  `quyenloi` text NOT NULL,
  `yeucau` text NOT NULL,
  `hannop` date default NULL,
  `menu_id` varchar(20) NOT NULL,
  `tuyendung_cty_id` int(3) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
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
-- Dumping data for table `web_tuyendung`
-- 

INSERT INTO `web_tuyendung` VALUES (1, 'Bếp chính bếp Hoa nhà hàng', 'bep-chinh-bep-hoa-nha-hang', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Bếp chính bếp Hoa nhà hàng', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 1, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', NULL, ',57,', 1, 'vi', 1, '2014-02-19 16:23:44', '2014-02-19 17:12:34', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung` VALUES (2, 'Bếp chính nhà hàng', 'bep-chinh-nha-hang', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Bếp chính nhà hàng', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 1, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', NULL, ',57,', 2, 'vi', 1, '2014-02-19 16:24:00', '2014-02-19 17:12:29', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung` VALUES (3, 'Nhân viên pha chế cafe', 'nhan-vien-pha-che-cafe', NULL, 'Biết nấu các loại chao khac nhau. Có kinh nghiệm nấu ăn. Có kiến thức về vệ sinh an toàn thực phẩm. Có sức khỏe tốt, nhân thân tốt', 'Nhân viên pha chế cafe', '<p>Biết nấu các loại chao khac nhau</p>\r\n\r\n<p>Có kinh nghiệm nấu ăn</p>\r\n\r\n<p>Có kiến thức về vệ sinh an toàn thực phẩm.</p>\r\n\r\n<p>Có sức khỏe tốt, nhân thân tốt</p>\r\n', 5, 'Thỏa thuận', 3, '<p>Luong thu viec = 3.500k + an o&nbsp;<br />\r\nLuong chinh thuc = 4.000k + an o&nbsp;<br />\r\nThưởng theo năng lực và những đề xuất cải tiến<br />\r\nLàm ngày lễ được 150% lương<br />\r\nTháng lương thứ 13 ( tết âm)<br />\r\nLiên hoan hàng tháng...</p>\r\n', '<p>- Đơn xin việc<br />\r\n- Sơ yếu lý lịch.<br />\r\n- Hộ khẩu, chứng minh nhân dân và giấy khám sức khỏe.<br />\r\n- Các bằng cấp có liên quan.<br />\r\n( Lưu ý: Liên hệ trong giờ hành chính)<br />\r\n(không trả lại hồ sơ nếu không trúng tuyển)</p>\r\n', NULL, ',57,', 1, 'vi', 1, '2014-02-19 16:24:20', '2014-02-19 17:10:45', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung_cty`
-- 

CREATE TABLE `web_tuyendung_cty` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `content` text,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `website` varchar(200) default NULL,
  `fax` varchar(30) default NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_tuyendung_cty`
-- 

INSERT INTO `web_tuyendung_cty` VALUES (1, 'Công ty kế toán - kiểm toán Thanh Trí', '<p><strong>Công ty kế toán - kiểm toán Thanh Trí</strong> được Sở Kế Hoạch &amp; Đầu Tư TP.HCM cấp phép hoạt động từ năm 2002, nhân sự công ty là tập hợp các chuyên viên kiểm toán-kế toán chuyên nghiệp, chúng tôi hoạt động mạnh trong lãnh vực tư vấn thuế - dịch vụ pháp lý cho các công ty và đào tạo kế toán chuyên nghiệp.</p>\r\n\r\n<p>Công ty có hướng dẫn cách làm kế toán tổng hợp bằng chứng từ thực tế cho :</p>\r\n\r\n<ul>\r\n	<li>Các bạn đã học kế toán nhưng chưa đi làm hoặc làm trái ngành;</li>\r\n	<li>Các bạn sinh viên sắp tốt nghiệp hoặc mới ra trường;</li>\r\n	<li>Các bạn là kế toán viên, kế toán nội bộ chưa được làm báo cáo thuế, sổ sách kế toán.</li>\r\n</ul>\r\n', '123 CMT 8, Quận 10, Tp.HCM', '08.5687.2135', 'nhahangfo@gmail.com', 'http://www.nhahangfo.com', '', 'vi', 1, '2014-02-19 17:06:09', '2014-02-19 17:24:37', 'admin', 'admin', 0);
INSERT INTO `web_tuyendung_cty` VALUES (2, 'Công ty chế biến thủy sản', '<p>Xuất khẩu tôm năm 2013 đạt kỷ lục chạm mức gần 3 tỷ USD, vẫn là mặt hàng xuất khẩu mũi nhọn của ngành thủy sản. Năm 2014, tình hình sẽ sáng sủa hơn nếu giải quyết tốt bài toán quy hoạch vùng nuôi và chính sách thương mại với Trung Quốc…</p>\r\n', '10 Trần Hưng, Q.Bình Tân, Tp.HCM', '08.3987.2365', 'thuysan@gmail.com', 'www.thuysan.com', '08.3987.2366', 'vi', 1, '2014-02-19 17:12:19', '2014-03-18 11:42:28', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_tuyendung_hoso`
-- 

CREATE TABLE `web_tuyendung_hoso` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `content` text,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `trinhdo` int(1) NOT NULL,
  `tuyendung_id` int(5) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `web_tuyendung_hoso`
-- 

INSERT INTO `web_tuyendung_hoso` VALUES (1, 'Trần Hiếu Nhân', '', 'Kinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:\nKinh nghiệm làm việc:', '123 CMT 8', '0988388003', 'hieu_nhan1@yahoo.com', 5, 2, 'vi', 0, '2014-02-20 14:53:07', '2014-02-20 14:53:07', 'khachhang', '', 0);

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

-- --------------------------------------------------------

-- 
-- Table structure for table `web_video`
-- 

CREATE TABLE `web_video` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_video`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_video_comment`
-- 

CREATE TABLE `web_video_comment` (
  `id` int(11) NOT NULL auto_increment,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) default '0',
  `parent_id` int(11) default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_video_comment`
-- 

