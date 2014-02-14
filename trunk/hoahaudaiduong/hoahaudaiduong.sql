-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 14, 2014 at 04:17 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `hoahaudaiduong`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `bosuutap`
-- 

CREATE TABLE `bosuutap` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `content` text,
  `metaKeyword` varchar(250) default NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default 'vi',
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `bosuutap`
-- 

INSERT INTO `bosuutap` VALUES (1, 'Bộ sưu tập a', 'bo-suu-tap-a', '', 'Bộ sưu tập a', '<p>Bộ sưu tập a</p>\r\n', 'Bộ sưu tập a', 0, 'vi', ',7,', 1, '2014-01-23 13:12:57', '2014-01-23 13:12:57', 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `bosuutap_images`
-- 

CREATE TABLE `bosuutap_images` (
  `id` int(11) NOT NULL auto_increment,
  `id_bosuutap` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_hinh_bst` varchar(150) NOT NULL,
  `lang` varchar(2) default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `bosuutap_images`
-- 

INSERT INTO `bosuutap_images` VALUES (1, 1, 'Màu ký ức 1', 'mau-ky-uc-1.jpg', 'vi', 1, '2014-01-22 10:47:34', '2014-01-22 10:47:34', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (2, 1, 'Màu Ký Ức 2', 'mau-ky-uc-2.jpg', 'vi', 1, '2014-01-22 10:50:30', '2014-01-22 10:50:30', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (3, 1, 'Màu Ký Ức 3', 'mau-ky-uc-3.jpg', 'vi', 1, '2014-01-22 10:50:35', '2014-01-22 10:50:35', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (4, 1, 'Màu Ký Ức 4', 'mau-ky-uc-4.jpg', 'vi', 1, '2014-01-22 10:50:38', '2014-01-22 10:50:38', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (5, 1, 'Màu Ký Ức 5', 'mau-ky-uc-5.jpg', 'vi', 1, '2014-01-22 11:03:43', '2014-01-22 11:17:29', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (6, 1, 'Màu Ký Ức 6', 'mau-ky-uc-6.jpg', 'vi', 1, '2014-01-22 11:04:13', '2014-01-22 11:17:26', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (7, 1, 'Màu Ký Ức 7', 'mau-ky-uc-7.jpg', 'vi', 1, '2014-01-22 11:04:53', '2014-01-22 11:17:24', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (8, 1, 'Màu Ký Ức 8', 'mau-ky-uc-8.jpg', 'vi', 1, '2014-01-22 11:04:59', '2014-01-22 11:04:59', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (9, 1, 'Màu ký ức 9', 'mau-ky-uc-9.jpg', 'vi', 1, '2014-01-22 11:17:49', '2014-01-22 11:19:12', 'admin', NULL, 0);
INSERT INTO `bosuutap_images` VALUES (10, 1, 'Bộ sưu tập a 22', 'mau-ky-uc-22.jpg', 'vi', 1, '2014-01-23 13:13:18', '2014-01-23 13:14:48', 'admin', 'admin', 1);

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

INSERT INTO `config` VALUES (1, 'Việt Nam', 'vi', '', 'localhost/all/hoahaudaiduong', 10, 10, 10, 10, 'Copyright © 2012 by Hoa Hau Dai Duong', '<p><strong>Giấy phép số 73/GP-TTĐT cấp ngày 12/04/2010</strong></p>\r\n\r\n<p>Cục phát thanh, truyền hình và thông tin điện tử</p>\r\n\r\n<p>Bộ thông tin và truyền thông&nbsp;</p>\r\n', '<p><strong>Hoa hậu đại dương Việt Nam</strong>&nbsp;thuộc quyền sở hữu của&nbsp;<strong><a href="http://www.vovietchung.com" style="line-height: 1.6em;" target="_blank" title="Công ty TNHH MTV Võ Việt Chung"><span style="color:#FFD700;">Công ty&nbsp;TNHH MTV Võ Việt Chung</span></a></strong></p>\r\n', 'hieunhan112@gmail.com', 'hieu_nhan1', '0861116111', '0988388003', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 14:30:01', 'admin', 'admin', 0);
INSERT INTO `config` VALUES (2, 'English', 'en', '', 'localhost/all/hoahaudaiduong', 10, 10, 10, 10, 'Copyright © 2012 by Hoa Hau Dai Duong', '<p><strong>Giấy phép số 73/GP-TTĐT cấp ngày 12/04/2010</strong></p>\r\n\r\n<p>Cục phát thanh, truyền hình và thông tin điện tử</p>\r\n\r\n<p>Bộ thông tin và truyền thông&nbsp;</p>\r\n', '<p><strong>Hoa hậu đại dương Việt Nam</strong>&nbsp;thuộc quyền sở hữu của&nbsp;<strong><a href="http://www.vovietchung.com" style="line-height: 1.6em;" target="_blank" title="Công ty TNHH MTV Võ Việt Chung"><span style="color:#FFD700;">Công ty&nbsp;TNHH MTV Võ Việt Chung</span></a></strong></p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', 1, '2013-08-10 10:09:29', '2013-08-10 12:24:34', 'admin', 'admin', 0);

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

INSERT INTO `info` VALUES (1, 'Thông tin Hoa Hậu Việt Nam năm 2014 “Blue Ocean World”', 'thong-tin-hoa-hau-viet-nam-nam-2014-blue-ocean-world', '', '<p>Cuộc thi Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014) là cuộc thi sắc đẹp được tổ chức trên phạm vi lãnh thổ Việt Nam nhằm tìm kiếm gương mặt đại diện cho Dự Án “Blue Ocean World”</p>\r\n', '<p><strong>I. MỤC ĐÍCH, Ý NGHĨA</strong></p>\r\n\r\n<p style="margin-left: 40px;">-&nbsp; Cuộc thi Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014) là cuộc thi sắc đẹp được tổ chức trên phạm vi lãnh thổ Việt Nam nhằm tìm kiếm gương mặt đại diện cho Dự Án “Blue Ocean World”, do Công ty TNHH MTV Võ Việt Chung và Quỹ bảo vệ môi trường Việt Nam thuộc Bộ Tài nguyên và Môi trường sáng lập.</p>\r\n\r\n<p style="margin-left: 40px;">- Thông qua những hoạt động thiết thực cuộc thi Hoa Hậu Đại Dương 2014 (Miss Vietnam Oceans 2014), chúng tôi mong muốn góp phần nâng cao nhận thức và hành động của cộng đồng, hướng đến việc làm sạch môi trường biển, đại dương hiện nay đang bị ô nhiễm; bảo vệ môi trường biển trước các nguy cơ bị ô nhiễm mới hoặc tái ô nhiễm, bảo vệ các loài sinh vật biển.</p>\r\n\r\n<p style="margin-left: 40px;">- Cuộc thi Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014) được tổ chức lần đầu tiên tại Việt Nam nhằm mục đích tuyên truyền cho việc bảo vệ thiên nhiên biển và môi trường biển, đại dương, là một phần quan trọng trong các hoạt động của Dự án “Blue Ocean World”. Thông qua các nội dung của cuộc thi, chúng tôi muốn kêu gọi mọi người chung tay, góp sức giữ gìn biển Việt Nam trong sạch, đồng thời quảng bá cho du lịch biển của nước ta.</p>\r\n\r\n<p style="margin-left: 40px;">- Thí sinh tham gia Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans &nbsp;2014) sẽ hội tụ đầy đủ các yếu tố của những người đẹp, có tri thức và am hiểu các vấn đề về môi trường, nhất là môi trường biển. Họ sẽ đại diện cho Dự án “Blue Ocean World” trong các hoạt động bảo vệ môi trường biển Việt Nam.&nbsp;</p>\r\n\r\n<p><strong>II. THỂ LỆ CUỘC THI</strong></p>\r\n\r\n<p style="margin-left: 40px;"><strong>1. Đối tư­ợng đư­ợc đăng ký tham dự cuộc thi</strong></p>\r\n\r\n<p style="margin-left: 80px;">- Là nữ công dân Việt Nam.</p>\r\n\r\n<p style="margin-left: 80px;">- Độ tuổi từ 18 tuổi đến 26 tuổi (tính theo ngày, tháng, năm sinh của giấy Chứng minh thư nhân dân hoặc Hộ chiếu đang còn thời hạn).</p>\r\n\r\n<p style="margin-left: 80px;">- Không có tiền án, không trong thời gian bị truy cứu trách nhiệm hình sự.</p>\r\n\r\n<p style="margin-left: 80px;">- Sơ yếu lý lịch có xác nhận của chính quyền địa phương hoặc cơ quan, tổ chức nơi thí sinh đang học tập, công tác.</p>\r\n\r\n<p style="margin-left: 80px;">- Có tư cách đạo đức tốt,</p>\r\n\r\n<p style="margin-left: 80px;">- Có trình độ văn hóa tốt nghiệp phổ thông trung học trở lên.</p>\r\n\r\n<p style="margin-left: 80px;">- Chưa lập gia đình, chưa sinh con (bao gồm cả các trường hợp đã tổ chức cưới theo phong tục, tập quán hoặc có thời gian chung sống như vợ, chồng không được tham dự cuộc thi).</p>\r\n\r\n<p style="margin-left: 80px;">- Chưa qua giải phẫu thẩm mỹ hoặc chuyển đổi giới tính.</p>\r\n\r\n<p style="margin-left: 80px;">- Cao từ 1,65cm trở lên, ngoại hình cân đối.</p>\r\n\r\n<p style="margin-left: 80px;">- Nộp hồ sơ đăng ký dự thi hợp lệ theo quy định của cuộc thi.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>* Các đối tượng được ưu tiên:</strong></p>\r\n\r\n<p style="margin-left: 80px;">Các thí sinh đã đoạt danh hiệu trong các cuộc thi Hoa hậu, Hoa khôi, Người đẹp năm 2012 và năm 2013 được Ban tổ chức xem xét để đặc cách vào danh sách dự thi các vòng (phải đáp ứng thể lệ cuộc thi ở trên và hoàn thiện hồ sơ theo quy định).</p>\r\n\r\n<p style="margin-left: 80px;">- Những thí sinh đạt 03 danh hiệu chính trong cuộc thi Hoa hậu, Hoa khôi, Người đẹp năm 2012 và năm 2013 được Ban tổ chức xem xét để đặc cách vào danh sách dự thi Vòng Chung kết.</p>\r\n\r\n<p style="margin-left: 80px;">- Những thí sinh đạt danh hiệu phụ trong cuộc thi Hoa hậu, Hoa khôi, Người đẹp năm 2012 và năm 2013 sẽ được Ban tổ chức xem xét để đặc cách vào danh sách dự thi Vòng Bán kết.</p>\r\n\r\n<p style="margin-left: 40px;"><strong>2. Hồ sơ đăng ký dự thi</strong></p>\r\n\r\n<p style="margin-left: 80px;">- Đơn đăng ký dự thi (theo mẫu của Ban tổ chức).</p>\r\n\r\n<p style="margin-left: 80px;">- Bản sao giấy khai sinh.</p>\r\n\r\n<p style="margin-left: 80px;">- Sơ yếu lý lịch (được chính quyền địa phương hoặc cơ quan, tổ chức nơi thí sinh đang học tập, công tác xác nhận. Thời gian xác nhận không quá 06 tháng tính đến ngày tổ chức chung kết cuộc thi).</p>\r\n\r\n<p style="margin-left: 80px;">- Bằng tốt nghiệp hoặc giấy xác nhận của nhà trường đã tốt nghiệp phổ thông trung học (bản sao có công chứng).</p>\r\n\r\n<p style="margin-left: 80px;">- 02 ảnh chân dung và 02 ảnh toàn thân (mặc trang phục tự chọn và bikini).&nbsp;</p>\r\n\r\n<p style="margin-left: 80px;">- Bằng chứng nhận giải thưởng (đối với thí sinh xét đối tượng ưu tiên).</p>\r\n\r\n<p style="margin-left: 40px;"><strong>3. Thời gian, địa điểm nhận hồ sơ</strong></p>\r\n\r\n<p style="margin-left: 80px;"><strong>3.1. Thời gian nhận hồ sơ đăng ký dự thi</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thông báo từ ngày 01/01/2014</p>\r\n\r\n<p style="margin-left: 120px;">- Nhận hồ sơ: từ ngày 01/01/2014 đến ngày 01/04/2014</p>\r\n\r\n<p style="margin-left: 80px;"><strong>3.2. Địa điểm nhận hồ sơ đăng ký dự thi</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Khu vực phía Bắc: 106 Mai Hắc Đế, Quận Hai Bà Trưng, Hà Nội.</p>\r\n\r\n<p style="margin-left: 120px;">- Khu vực phía Nam: 115 Lý Tự Trọng, P.Bến Thành, Quận 1, TP Hồ Chí Minh.</p>\r\n\r\n<p style="margin-left: 120px;">Ngoài hồ sơ ghi rõ: Hồ sơ đăng ký dự thi Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014)</p>\r\n\r\n<p><strong>III. NỘI DUNG VÀ TRÌNH TỰ TỔ CHỨC</strong></p>\r\n\r\n<p style="margin-left: 40px;"><strong>1. Thời gian và địa điểm tổ chức vòng thi sơ tuyển</strong></p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.1. Sơ tuyển khu vực 1</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thời gian: ngày 20/04/2014</p>\r\n\r\n<p style="margin-left: 120px;">- Địa điểm: Khách sạn Sheraton Hotel – Thủ đô Hà Nội</p>\r\n\r\n<p style="margin-left: 120px;">- Nội dung thi: kiểm tra tính hợp lệ của hồ sơ đăng ký dự thi, trình diễn trang phục tự chọn và bikini.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.2. Sơ tuyển khu vực 2</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thời gian: ngày 25/04/2014</p>\r\n\r\n<p style="margin-left: 120px;">- Địa điểm: Khách sạn Riverside Palace - TP. Hồ Chí Minh</p>\r\n\r\n<p style="margin-left: 120px;">- Nội dung thi: kiểm tra tính hợp lệ của hồ sơ đăng ký dự thi, trình diễn trang phục tự chọn và bikini.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.3. Công bố kết quả:</strong> kết quả vòng thi sơ tuyển được công bố trong vòng 24 giờ sau khi kết thúc sơ tuyển.</p>\r\n\r\n<p style="margin-left: 40px;"><strong>2. Vòng Bán kết&nbsp;</strong></p>\r\n\r\n<p style="margin-left: 80px;">- Thời gian: ngày <span style="color:#FFFF00;"><strong>01/05/2014</strong></span></p>\r\n\r\n<p style="margin-left: 80px;">- Địa điểm: Khách sạn Riverside Palace - TP. Hồ Chí Minh.</p>\r\n\r\n<p style="margin-left: 80px;">- Nội dung thi:</p>\r\n\r\n<p style="margin-left: 80px;">+ Các bác sĩ nhân trắc học sẽ kiểm tra chỉ số hình thể của các thí sinh.</p>\r\n\r\n<p style="margin-left: 80px;">+ Trình diễn catwalk theo nhạc trong trang phục áo tắm và tự chọn.</p>\r\n\r\n<p style="margin-left: 80px;">+ Trả lời phỏng vấn của Ban Giám khảo.</p>\r\n\r\n<p style="margin-left: 80px;">- Lưu ý:</p>\r\n\r\n<p style="margin-left: 80px;">+ Trang điểm và trang phục thí sinh tự chuẩn bị.</p>\r\n\r\n<p style="margin-left: 80px;">+ Ban Giám khảo sẽ chọn ra 35 thí sinh vào vòng Chung kết.</p>\r\n\r\n<p style="margin-left: 80px;">- Công bố kết quả:</p>\r\n\r\n<p style="margin-left: 80px;">+ Kết quả sẽ được công bố và thông báo cho thí sinh trong vòng 24 giờ sau khi Ban Giám khảo kết thúc chấm điểm.</p>\r\n\r\n<p style="margin-left: 80px;">+ Danh sách thí sinh được chọn lựa căn cứ theo quyết định và điểm số của Ban Giám khảo.</p>\r\n\r\n<p style="margin-left: 40px;"><strong>3. Vòng thi Chung kết</strong></p>\r\n\r\n<p style="margin-left: 80px;">- Thời gian: từ ngày 10 đến ngày 23 tháng 05 năm 2014</p>\r\n\r\n<p style="margin-left: 80px;">- Địa điểm:&nbsp; Khu Resort Mũi Né (Mũi Né Bay) - Phan Thiết, Bình Thuận.</p>\r\n\r\n<p style="margin-left: 80px;">- Ngày 10/05/2014, Ban tổ chức đón tiếp 35 thí sinh lọt vào vòng chung kết cuộc thi để tham gia các hoạt động ngoài trời và các giải thưởng phụ.&nbsp;</p>\r\n\r\n<p style="margin-left: 80px;"><strong>3.1. Các vòng thi chọn danh hiệu phụ</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp áo dài.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp tài năng.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp biển xanh.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp bikini.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp ảnh.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>3.2. Đêm Chung kết Hoa hậu Đại Dương Việt Nam</strong></p>\r\n\r\n<p style="margin-left: 120px;">-&nbsp; Thời gian:&nbsp; ngày 23 tháng 05 năm 2014</p>\r\n\r\n<p style="margin-left: 120px;">-&nbsp; Địa điểm:&nbsp; Khu Resort Mũi Né (Mũi Né Bay) - Phan Thiết, Bình Thuận.</p>\r\n\r\n<p style="margin-left: 120px;">-&nbsp; Nội dung:&nbsp; 4 phần bắt buộc</p>\r\n\r\n<p style="margin-left: 160px;">+ Trình diễn trang phục áo dài (Ban tổ chức tài trợ))</p>\r\n\r\n<p style="margin-left: 160px;">+ Trình diễn trang phục áo tắm (Ban tổ chức tài trợ)</p>\r\n\r\n<p style="margin-left: 160px;">+ Trình diễn trang phục dạ hội (Thí sinh tự chuẩn bị)</p>\r\n\r\n<p style="margin-left: 160px;">+ Thi ứng xử (5 thí sinh có tổng điểm cao nhất sau 3 vòng thi trên)</p>\r\n\r\n<p style="margin-left: 120px;">- Sau 3 phần trình diễn, Ban Giám khảo công bố 15 thí sinh có số điểm cao nhất và 5 thí sinh tham gia vòng thi ứng xử.</p>\r\n\r\n<p style="margin-left: 120px;">- Công bố các danh hiệu cho 5 thí sinh đoạt giải thưởng phụ.</p>\r\n\r\n<p style="margin-left: 120px;"><span style="line-height: 1.6em;">- Danh hiệu Á hậu 1, Á hậu 2, và Hoa hậu sẽ được công bố sau phần thi ứng xử của các thí sinh.</span></p>\r\n\r\n<p><strong>IV. DANH HIỆU, CƠ CẤU GIẢI THƯỞNG VÀ QUYỀN, TRÁCH NHIỆM CỦA THÍ SINH DỰ THI, NGƯỜI ĐẠT DANH HIỆU NGƯỜI ĐẸP</strong></p>\r\n\r\n<p style="margin-left: 40px;"><strong>1. Danh hiệu và cơ cấu giải thư­ởng</strong></p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.1. Danh hiệu chính thức của cuộc thi</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thí sinh đạt điểm cao nhất trong đêm chung kết đ­ược trao danh hiệu Hoa Hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014) ; giải thư­ởng bằng tiền mặt 400.000.000 VNĐ (Bốn trăm triệu đồng), kèm theo vư­ơng miện trị giá 1.500.000.000 VNĐ (Một tỷ năm trăm triệu đồng) và bằng chứng nhận của Ban tổ chức. Lưu ý: Vương miện hoa hậu sẽ được trao luân lưu.</p>\r\n\r\n<p style="margin-left: 120px;">- Thí sinh đạt điểm cao thứ hai trong đêm chung kết đư­ợc trao danh hiệu Á hậu 1 giải thư­ởng bằng tiền mặt 200.000.000 VNĐ (Hai trăm triệu đồng) và Bằng chứng nhận của Ban tổ chức.</p>\r\n\r\n<p style="margin-left: 120px;">- Thí sinh đạt điểm cao thứ ba trong đêm toàn quốc đư­ợc trao danh hiệu: Á hậu 2 giải thư­ởng bằng tiền mặt 150.000.000 VNĐ (Một trăm năm mươi triệu đồng) và Bằng chứng nhận của Ban tổ chức.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.2. Danh hiệu phụ của cuộc thi</strong></p>\r\n\r\n<p style="margin-left: 120px;">Thí sinh đạt các danh hiệu phụ của cuộc thi được giải thư­ởng bằng tiền mặt 20.000.000 VNĐ (hai mươi triệu đồng) và Bằng chứng nhận của Ban tổ chức. Các danh hiệu phụ gồm:</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp áo dài.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp tài năng.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp biển xanh.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp bikini.</p>\r\n\r\n<p style="margin-left: 120px;">- Người đẹp ảnh.</p>\r\n\r\n<p style="margin-left: 120px;">(Các thí sinh đạt danh hiệu phụ nằm trong nhóm 15 thí sinh đứng đầu)</p>\r\n\r\n<p style="margin-left: 80px;"><strong>1.3. Thời gian trao giải thư­ởng:</strong> giải thư­ởng tiền mặt và hiện vật sẽ được trao cho thí sinh ngay trong đêm chung kết cuộc thi.&nbsp;</p>\r\n\r\n<p style="margin-left: 40px;"><strong>2. Quyền, trách nhiệm của thí sinh dự thi và ngư­ời đạt danh hiệu Người đẹp</strong></p>\r\n\r\n<p style="margin-left: 80px;"><strong>2.1. Quyền</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thí sinh đoạt giải nhất của Hoa hậu Đại Dương Việt Nam 2014 (Miss Vietnam Oceans 2014) sẽ được đăng hình ảnh trên trang bìa của Tạp chí Travellive, Heritage, Sành Điệu… sau khi cuộc thi kết thúc.</p>\r\n\r\n<p style="margin-left: 120px;">- Được nhận giải thưởng bằng tiền mặt và hiện vật (nếu có).</p>\r\n\r\n<p style="margin-left: 120px;">- Được tham gia các chương trình, sự kiện do Dự án “Blue Ocean World” tổ chức, trình diễn các chương trình do NTK Võ Việt Chung tổ chức, các NTK nổi tiếng trong và ngoài nước, các tuần lễ thời trang quốc tế…</p>\r\n\r\n<p style="margin-left: 120px;">- BTC sẽ chịu trách nhiệm về chi phí đi lại cho các thí sinh khu vực phía Bắc tham dự vòng bán kết tại TP.HCM.</p>\r\n\r\n<p style="margin-left: 120px;">-&nbsp; Vòng chung kết, các thí sinh sẽ được hỗ trợ toàn bộ chi phí đi lại và ăn, ở trong suốt quá trình diễn ra cuộc thi.</p>\r\n\r\n<p style="margin-left: 120px;">- Nhằm đánh giá khiếu thẩm mỹ của các thí sinh, trong vòng thi chung kết các thí sinh sẽ tự chuẩn bị trang phục dạ hội. BTC sẽ tài trợ bikini và trang phục áo dài cho các thí sinh.</p>\r\n\r\n<p style="margin-left: 80px;"><strong>2.2. Trách nhiệm</strong></p>\r\n\r\n<p style="margin-left: 120px;">- Thí sinh tham dự cuộc thi phải thực hiện đúng Quyết định cho phép, Đề án tổ chức cuộc thi trình Bộ Văn hóa, Thể thao và Du lịch, Nghị định số 79/2012/NĐ-CP ngày 05 tháng 10 năm 2012 của Chính phủ và Thông tư số 03/2013/TT-BVHTTDL ngày 28 tháng 01 năm 2013 và các quy định của pháp luật Việt Nam. Chấp hành nội quy tập trung luyện tập và yêu cầu cụ thể của các vòng thi, bài thi.</p>\r\n\r\n<p style="margin-left: 120px;">- Tham gia các hoạt động xã hội, từ thiện theo chương trình do Ban tổ chức xây dựng trong suốt cuộc thi. Nếu đoạt giải, các danh vị Hoa hậu, Á hậu phải ưu tiên tham gia các họat động xã hội, từ thiện theo chương trình của Đơn vị tổ chức và Nhà tài trợ chính trong suốt nhiệm kỳ.</p>\r\n\r\n<p style="margin-left: 120px;">- &nbsp;Đóng thuế thu nhập theo quy định của pháp luật Việt Nam.</p>\r\n\r\n<p style="margin-left: 120px;">- Chuẩn bị các trang phục áo dài, áo dạ hội để tham dự các vòng thi.</p>\r\n\r\n<p style="margin-left: 120px;">- Tuân thủ các quy định của Ban Tổ chức và thể lệ của cuộc thi.</p>\r\n\r\n<p style="margin-left: 40px;"><strong>3. Thể lệ chấm thi và cho điểm:</strong></p>\r\n\r\n<p style="margin-left: 80px;"><em><strong>Phương thức và tiêu chí chấm điểm:</strong></em></p>\r\n\r\n<p style="margin-left: 80px;">- Ban Giám khảo thống nhất chấm theo thang điểm 10 cho mỗi phần thi (cho điểm lẻ đến 0,5)</p>\r\n\r\n<p style="margin-left: 80px;">- Điểm xét danh hiệu và giải thưởng lấy từ cao xuống thấp theo tổng điểm 10 của các thí sinh.</p>\r\n\r\n<p style="margin-left: 80px;">- Chỉ số về hình thể, vẻ đẹp khuôn mặt, vóc dáng hài hoà, kiến thức:</p>\r\n\r\n<p style="margin-left: 80px;">+ Gư­ơng mặt (mắt, mũi, miệng).</p>\r\n\r\n<p style="margin-left: 80px;">+ Hình thể (các vòng đo, dáng, da).</p>\r\n\r\n<p style="margin-left: 80px;">+ Chiều cao (&gt;&nbsp; 1m65).</p>\r\n\r\n<p style="margin-left: 80px;">+ Phong cách, kỹ năng trình diễn, thẩm mỹ (mặc trang phục, trang điểm…).</p>\r\n\r\n<p style="margin-left: 80px;">+ Tài Năng, sự hiểu biết, khả năng diễn đạt, Anh ngữ và giao tiếp.</p>\r\n\r\n<p style="margin-left: 80px;">+ Kiến thức văn hoá, xã hội và trí tuệ (trả lời câu hỏi, giao tiếp, ứng xử).</p>\r\n\r\n<p style="margin-left: 80px;">+ Những thành tích nổi bật trong hoạt động xã hội, từ thiện.</p>\r\n', 'Thông tin Hoa Hậu Việt Nam năm 2014 “Blue Ocean World”', 1, 'vi', ',5,', 1, '2014-01-20 09:49:52', '2014-01-20 09:49:52', 'admin', NULL, 0);
INSERT INTO `info` VALUES (2, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan.jpg', '<p>Quỹ Bảo vệ môi trường Việt Nam và Công ty trách nhiệm hữu hạn Một thành viên Võ Việt Chung đã triển khai dự án Blue Ocean World (Môi trường thế giới biển xanh) tại khu làng chài Rạng, phường Mũi Né, thành phố Phan Thiết (Bình Thuận)</p>\r\n', '<h2>Chiều 25/9, Quỹ Bảo vệ môi trường Việt Nam và Công ty trách nhiệm hữu hạn Một thành viên Võ Việt Chung đã triển khai dự án Blue Ocean World (Môi trường thế giới biển xanh) tại khu làng chài Rạng, phường Mũi Né, thành phố Phan Thiết (Bình Thuận). Đây là dự án nhằm nâng cao nhận thức của ngư dân cũng như cộng đồng về việc bảo vệ môi trường biển.</h2>\r\n\r\n<p style="text-align: center;"><img alt="4 đại sứ của Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan.jpg" style="width: 450px; height: 300px;" /></p>\r\n\r\n<p style="margin-left: 120px;"><em><span style="line-height: 1.6em;">4 đại sứ của Blue Ocean World gồm:</span></em></p>\r\n\r\n<ol style="margin-left: 120px;">\r\n	<li><em><span style="line-height: 1.6em;">Đạo diễn-DVĐA Kim Khánh</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">Hoa hậu-Ảo thuật gia quốc tế Ngô Mỹ Uyên</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">MC-Ca sĩ Nguyệt Ánh</span></em></li>\r\n	<li><em><span style="line-height: 1.6em;">Hoa hậu Đông Nam Á- Diệu Hân</span></em></li>\r\n</ol>\r\n\r\n<p>Với chủ đề “Bảo vệ môi trường biển, đại dương là&nbsp;bảo vệ&nbsp;cuộc sống của chính mình”, <strong>dự án Blue Ocean World&nbsp;</strong>triển khai&nbsp;nhiều hoạt động thiết thực như: dọn dẹp, làm sạch bãi biển, phát túi nilon phân hủy để&nbsp;bảo vệ&nbsp;môi trường, kêu gọi người dân thả những sinh vật về&nbsp;biển&nbsp;nhằm cân bằng hệ sinh thái, không đánh bắt cá bằng chất hóa học và thuốc nổ…</p>\r\n\r\n<p>Tại buổi lễ, đại diện Dự án đã có buổi nói chuyện với đông đảo người dân sinh sống&nbsp;tại&nbsp;làng chài về những tác hại của việc ô nhiễm môi trường&nbsp;biển&nbsp;đối với cuộc sống của người dân, tình trạng cạn kiệt nguồn tài nguyên biển, biến đổi khí hậu… Sau khi kết thúc buổi lễ, đông đảo người dân cùng các đại sứ của Dự án đã ra tay thu gom rác thải, làm vệ sinh bãi biển.</p>\r\n\r\n<p><strong>Ông Nguyễn Văn Khoa, Chủ tịch Hiệp hội Du lịch Bình Thuận</strong> cho biết: Thông qua những hoạt động của dự án Blue Ocean World, ý thức&nbsp;bảo vệ&nbsp;môi trường sống xung quanh của người dân sẽ được nâng cao, từ đó góp phần nâng cao hình ảnh “Du lịch xanh” của Bình Thuận đến với mọi người.</p>\r\n\r\n<p>S ắp tới, dự án sẽ có những hoạt động như: dọn vệ sinh bờ biển; đến những làng chài phổ biến những kiến thức về&nbsp;bảo vệ&nbsp;môi trường&nbsp;biển&nbsp;cho ngư dân; trồng cây ở một số khu vực&nbsp;biển&nbsp;Nha Trang (Khánh Hòa), Ðà Nẵng; tổ chức các cuộc thi vẽ tranh dành cho thiếu nhi ở các làng chài, thành phố biển; tổ chức cuộc thi thiết kế thời trang với chủ đề&nbsp;bảo vệ&nbsp;môi trường biển...</p>\r\n\r\n<p>Nằm trong khuôn khổ các hoạt động&nbsp;tại&nbsp;Bình Thuận, <a href="http://www.vovietchung.com/" title="nhà thiết kế Võ Việt Chung"><strong>nhà thiết kế Võ Việt Chung</strong></a>, Giám đốc dự án <strong>Blue Ocean World</strong> giới thiệu bộ sưu tập “Màu đại dương” với thông điệp hãy chung tay giữ gìn môi trường đại dương xanh, sạch…</p>\r\n', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 1, 'vi', ',10,', 1, '2014-01-20 09:50:50', '2014-01-20 09:50:50', 'admin', NULL, 0);
INSERT INTO `info` VALUES (3, 'Nghệ sĩ, hoa hậu cùng ngư dân nhặt rác bờ biển', 'nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien', 'nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien.jpg', '<p>Hàng trăm ngư dân, đoàn viên thanh niên, nhân viên khu du lịch, cư dân cùng các nghệ sĩ, hoa hậu tham gia làm vệ sinh khu vực bờ biển ở phường Hàm Tiến (Phan Thiết, Bình Thuận) ngày 25-9.</p>\r\n', '<h2>Hàng trăm ngư dân, đoàn viên thanh niên, nhân viên khu du lịch, cư dân cùng các nghệ sĩ, hoa hậu tham gia làm vệ sinh khu vực bờ biển ở phường Hàm Tiến (Phan Thiết, Bình Thuận) ngày 25-9.</h2>\r\n\r\n<p style="text-align: center;"><em><strong><img alt="Hoa hậu Đông Nam Á Diệu Hân, MC ca sĩ Nguyệt Ánh cùng mọi người làm vệ sinh bãi biển Hàm Tiến, Mũi Né" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien.jpg" style="width: 600px; height: 400px;" /><br />\r\nHoa hậu Đông Nam Á Diệu Hân</strong> (ngồi), MC ca sĩ Nguyệt Ánh cùng mọi người làm vệ sinh bãi biển Hàm Tiến, Mũi Né</em></p>\r\n\r\n<p style="text-align: center;"><em style="font-size: 13px; text-align: center;"><strong><img alt="Ngư dân cùng tham gia làm vệ sinh bãi biển Hàm Tiến, Mũi Né" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/nghe-si-hoa-hau-cung-ngu-dan-nhat-rac-bo-bien-2.jpg" style="width: 600px; height: 400px;" /></strong></em><br />\r\n<em>Ngư dân cùng tham gia làm vệ sinh bãi biển Hàm Tiến, Mũi Né</em></p>\r\n\r\n<p>Đây là chuỗi hoạt động vì môi trường biển tại khu du lịch nổi tiếng của VN do quỹ <strong>Blue Ocean World</strong> tổ chức hưởng ứng Ngày Du lịch thế giới (27-9).</p>\r\n\r\n<p>Hoạt động này nhằm tuyền truyền cho du khách, dân cư làng biển ý thức giữ gìn bảo vệ cảnh quang, làm sạch môi trường xung quanh với khẩu hiện "hành động bảo vệ môi trường hôm nay chính là bảo vệ môi trường cho thế hệ mai sau này".</p>\r\n\r\n<p>Nhìn một góc bãi biển đã dọn sạch rác, ngư dân Thái Văn Hùng vui mừng cho biết thuyền của anh "tối nay ra khơi sẽ không bi rác quấn chân vịt nữa". Đây là bến đậu thuyền đánh cá gần bờ và hứng rác bị sóng biển đánh tấp vô tạo thành một khu vực tập trung rác lớn nhất ở khu du lịch Mũi Né.</p>\r\n', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 1, 'vi', ',10,', 1, '2014-01-20 09:51:36', '2014-01-20 09:51:36', 'admin', NULL, 0);
INSERT INTO `info` VALUES (4, 'NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World', 'ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world', 'ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world.jpg', '<p>Mới đây tại Hồ Tràm strip, Xuyên Mộc, tỉnh Bà Rịa – Vũng Tàu đã diễn ra lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung.</p>\r\n', '<h2>Mới đây (ngày 02/8/2013) tại Hồ Tràm strip, Xuyên Mộc, tỉnh Bà Rịa – Vũng Tàu đã diễn ra lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung.</h2>\r\n\r\n<p>Đây là sự kiện được nhiều người quan tâm với sự hợp tác của Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung tại The Grand Hồ Tràm Strip. Đại diện Quỹ Bảo vệ môi trường Việt Nam có ông Bùi Cách Tuyến – thứ trưởng bộ Tài Nguyên môi trường, chủ tịch hội đồng quản lý Quỹ bảo vệ môi trường Việt Nam. Ông Nguyễn Nam Phương – Giám đốc quỹ bảo vệ môi trường Việt Nam.<br />\r\n<br />\r\nVề phía đại diện&nbsp;<strong>Công ty TNHH MTV Võ Việt Chung</strong>: Giám đốc triển khai dự án Blue Ocean World – NTK Võ Việt Chung và đại diện cấp cao của The Grand Hồ Tràm Strip cùng các quan chức có mặt tại buổi ký kết.<br />\r\n<br />\r\nÔng Bùi Cách Tuyến thứ trưởng bộ Tài Nguyên Môi trường Việt Nam đã có phát biểu trong buổi lễ: Để nâng cao nhận thức của cộng đồng, nhất là trong giới văn nghệ sĩ, tôi ủng hộ việc thành lập dự án Blue Ocean World của NTK Võ Việt Chung. Để nâng cao nhận thức về biển- đại dương, cũng như tầm ảnh hưởng của những người làm nghệ thuật sẽ tác động mạnh và cùng chung tay hành động để dự án được phát triển hiệu quả trong thời gian sắp tới…<br />\r\n<br />\r\nÔng Võ Việt Chung – giám đốc triển khai dự án Blue Ocean World đã phát biểu: Mọi người hãy cùng chung tay hành động trước khi quá muộn. Tôi kêu gọi các bạn, chúng ta hãy cùng nắm tay nhau hành động những điều thiết thực nhất để biển trở nên sạch đẹp và xanh hơn. Qua đó, NTK cũng đã chia sẻ những tình cảm và suy nghĩ của mình, những kế hoạch trong thời gian sắp tới để triển khai dự án Blue Ocean World…</p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world.jpg" style="width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-2.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /><br />\r\n<em><span style="line-height: 1.6em;">Hình ảnh tại buổi lễ ký kết thỏa thuận hợp tác</span></em></p>\r\n\r\n<p>Trong dịp này, <strong>ông Võ Việt Chung</strong> cũng đã công bố 4 đại sứ của Blue Ocean World gồm có:</p>\r\n\r\n<ol>\r\n	<li>Đạo diễn - DVĐA Kim Khánh</li>\r\n	<li>Hoa hậu - Ảo thuật gia quốc tế Ngô Mỹ Uyên</li>\r\n	<li>MC - Ca sĩ Nguyệt Ánh</li>\r\n	<li>Hoa hậu Đông Nam Á- Diệu Hân</li>\r\n</ol>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-3.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p>Một số hình ảnh khác tại lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung:</p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-4.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-5.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-6.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-7.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-8.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-9.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-10.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-11.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World" src="http://www.hoahaudaiduongvietnam.com/public/images/articles/ntk-vo-viet-chung-chinh-thuc-la-giam-doc-trien-khai-du-an-blue-ocean-world-12.jpg" style="font-size: 13px; text-align: center; width: 555px; height: 370px;" /></p>\r\n\r\n<p>Tham dự buổi ký kết triển khai <strong>dự án Blue Ocean World</strong> còn có rất nhiều phóng viên các báo đài, các nhân vật cấp cao trong chính phủ cũng như các nghệ sĩ nổi tiếng trong và ngoài nước tham dự.</p>\r\n', 'NTK Võ Việt Chung chính thức là giám đốc triển khai dự án Blue Ocean World', 1, 'vi', ',10,', 1, '2014-01-20 09:52:09', '2014-01-20 09:54:05', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (1, 'Trang chủ', 'hoa-hau-dai-duong', '?lang=vi', '', 'Hoa Hậu Đại Dương', 'Hoa Hậu Đại Dương', 'Hoa Hậu Đại Dương', 0, 1, ',1,3,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 12:25:08', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (2, 'Trang chủ giới thiệu', 'trang-chu-gioi-thieu', 'trang-chu-gioi-thieu/', '', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 'Trang chủ giới thiệu', 1, 2, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:02', '2013-10-09 16:26:35', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (3, 'Trang chủ sản phẩm', 'trang-chu-san-pham', 'trang-chu-san-pham/', '', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 1, 3, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:25', '2013-10-09 16:26:49', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (4, 'Trang chủ liên hệ', 'trang-chu-lien-he', 'trang-chu-lien-he/', '', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 1, 8, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:38', '2013-10-09 16:27:02', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',1,3,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 17:38:39', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (6, 'Thí sinh', 'thi-sinh', 'thi-sinh/', '', 'Thí sinh', 'Thí sinh', 'Thí sinh', 0, 3, ',1,3,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 09:59:38', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (7, 'Bộ sưu tập', 'bo-suu-tap', 'bo-suu-tap/', '', 'Bộ sưu tập', 'Bộ sưu tập', 'Bộ sưu tập', 0, 4, ',1,3,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 09:23:43', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (8, 'Photo', 'photo', 'photo/', '', 'Photo', 'Photo', 'Photo', 0, 5, ',1,3,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 14:13:34', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (10, 'Thông tin - Sự kiện', 'thong-tin-su-kien', 'thong-tin-su-kien/', '', 'Thông tin - Sự kiện', 'Thông tin - Sự kiện', 'Thông tin - Sự kiện', 0, 2, ',1,3,', 'vi', 0, 7, 1, '2014-01-15 23:19:16', '2014-01-15 17:39:08', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (9, 'Video', 'video', 'video/', '', 'Video', 'Video', 'Video', 0, 6, ',1,3,', 'vi', 0, 6, 1, '2013-10-09 15:40:52', '2013-10-09 10:36:42', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (11, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'Liên hệ', 0, 8, ',1,3,', 'vi', 0, 8, 1, '2014-01-15 23:19:34', '2014-01-15 09:57:27', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (12, 'Home', 'home', '?lang=en', '', 'Home', 'Home', 'Home', 0, 1, ',1,', 'en', 0, 1, 1, '2014-01-18 17:42:43', '2014-01-18 12:25:15', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (13, 'Tiêu điểm', 'tieu-diem', 'tieu-diem/', '', 'Tiêu điểm', 'Tiêu điểm', 'Tiêu điểm', 10, 2, ',1,', 'vi', 0, 1, 1, '2014-01-20 09:55:30', '2014-01-20 09:55:30', 'admin', '', 0);
INSERT INTO `menu` VALUES (14, 'Lịch trình diễn', 'Lịch trình diễn', 'Lịch trình diễn/', '', 'Lịch trình diễn', 'Lịch trình diễn', 'Lịch trình diễn', 10, 2, ',1,', 'vi', 0, 2, 1, '2014-01-20 09:55:52', '2014-01-20 09:55:52', 'admin', '', 0);
INSERT INTO `menu` VALUES (15, 'Nhật ký cuộc thi', 'nhat-ky-cuoc-thi', 'nhat-ky-cuoc-thi/', '', 'Nhật ký cuộc thi', 'Nhật ký cuộc thi', 'Nhật ký cuộc thi', 10, 2, ',1,', 'vi', 0, 3, 1, '2014-01-20 09:56:06', '2014-01-20 09:56:06', 'admin', '', 0);
INSERT INTO `menu` VALUES (16, 'Sự kiện', 'su-kien', 'su-kien/', '', 'Sự kiện', 'Sự kiện', 'Sự kiện', 10, 2, ',1,', 'vi', 0, 4, 1, '2014-01-20 09:56:22', '2014-01-20 09:56:22', 'admin', '', 0);
INSERT INTO `menu` VALUES (17, 'Báo chí', 'bao-chi', 'bao-chi/', '', 'Báo chí', 'Báo chí', 'Báo chí', 10, 2, ',1,', 'vi', 0, 5, 1, '2014-01-20 09:56:37', '2014-01-20 09:56:37', 'admin', '', 0);
INSERT INTO `menu` VALUES (18, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan/', '', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 8, 5, ',5,', 'vi', 0, 0, 1, '2014-01-20 15:05:16', '2014-01-20 15:05:16', 'admin', '', 0);
INSERT INTO `menu` VALUES (19, 'Vòng loại', 'vong-loai', 'vong-loai/', '', 'Vòng loại', 'Vòng loại', 'Vòng loại', 6, 3, ',1,5,', 'vi', 0, 1, 1, '2014-01-23 13:59:37', '2014-01-23 14:07:40', 'admin', 'admin', 0);
INSERT INTO `menu` VALUES (20, 'Bán kết', 'ban-ket', 'ban-ket/', '', 'Bán kết', 'Bán kết', 'Bán kết', 6, 3, ',1,', 'vi', 0, 2, 1, '2014-01-23 14:29:16', '2014-01-23 14:29:16', 'admin', '', 0);
INSERT INTO `menu` VALUES (21, 'Đăng ký trực tuyến', 'dang-ky-truc-tuyen', 'dang-ky-truc-tuyen/', '', 'Đăng ký trực tuyến Hoa Hậu Đại Dương Việt Nam', 'Khi điền vào bản đăng ký này là bạn đã đồng ý chấp nhận tuân theo mọi quy định của Ban Tổ chức cuộc thi Hoa Hậu Đại Dương Việt Nam 2014', 'Đăng ký trực tuyến Hoa Hậu Đại Dương Việt Nam', 0, 7, ',6,', 'vi', 0, 100, 1, '2014-02-13 15:26:45', '2014-02-13 15:37:59', 'admin', 'admin', 0);

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
INSERT INTO `menu_admin` VALUES (6, 'Thí sinh', 'thisinh', NULL, 6, 1, 0);
INSERT INTO `menu_admin` VALUES (7, 'Bộ sưu tập', 'bosuutap', '', 7, 1, 0);
INSERT INTO `menu_admin` VALUES (8, 'Photo', 'photo_gallery', NULL, 8, 1, 0);
INSERT INTO `menu_admin` VALUES (9, 'Video', 'video', NULL, 9, 1, 0);
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
INSERT INTO `menu_position` VALUES (5, 'Right', 0);
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
INSERT INTO `menu_type` VALUES (3, 'Thí sinh', 0);
INSERT INTO `menu_type` VALUES (4, 'Bộ sưu tập', 0);
INSERT INTO `menu_type` VALUES (5, 'Photo', 0);
INSERT INTO `menu_type` VALUES (6, 'Video', 0);
INSERT INTO `menu_type` VALUES (7, 'Đăng ký trực tuyến', 0);
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

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
INSERT INTO `photo_gallery` VALUES (104, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-1.jpg', 'vi', ',8,', 1, '2014-01-20 14:16:12', '2014-01-20 14:16:12', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (105, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận 2', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-2.jpg', 'vi', ',8,', 1, '2014-01-20 14:16:19', '2014-01-20 14:16:19', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (106, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận 3', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-3.jpg', 'vi', ',8,', 1, '2014-01-20 14:16:23', '2014-01-20 14:16:23', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (107, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận 4', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-4.jpg', 'vi', ',8,', 1, '2014-01-20 14:16:28', '2014-01-20 14:16:28', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (108, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận 5', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-5.jpg', 'vi', ',8,', 1, '2014-01-20 14:27:49', '2014-01-20 14:27:49', 'admin', NULL, 0);
INSERT INTO `photo_gallery` VALUES (109, 'Triển khai dự án bảo vệ môi trường biển tại Bình Thuận 6', 'trien-khai-du-an-bao-ve-moi-truong-bien-tai-binh-thuan-6.jpg', 'vi', ',8,', 1, '2014-01-20 14:27:55', '2014-01-20 14:27:55', 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `slider_banner`
-- 

INSERT INTO `slider_banner` VALUES (1, 'Slider', 'slider.jpg', 'javascript:;', '', 'vi', 1, ',1,5,6,7,8,9,10,11,', 1, '2013-10-09 16:34:33', '2013-10-09 00:27:35', 'admin', 'admin', 0);

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
-- Table structure for table `thisinh`
-- 

CREATE TABLE `thisinh` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `metaDescription` text,
  `metaKeyword` varchar(250) default NULL,
  `sbd` int(5) NOT NULL,
  `ngaysinh` date NOT NULL,
  `noisinh` varchar(50) NOT NULL,
  `chieucao` varchar(4) NOT NULL,
  `cannang` varchar(4) NOT NULL,
  `sodo` varchar(10) NOT NULL,
  `cmnd` varchar(10) NOT NULL,
  `ngaycap` date NOT NULL,
  `noicap` varchar(50) NOT NULL,
  `hokhau` varchar(250) NOT NULL,
  `choohientai` varchar(250) NOT NULL,
  `dienthoai` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `trangmang_xh` varchar(250) NOT NULL,
  `nghenghiep` varchar(100) NOT NULL,
  `noicongtac` varchar(100) NOT NULL,
  `trinhdo` varchar(50) NOT NULL,
  `ngoaingu` varchar(100) NOT NULL,
  `kenh_timkiem` varchar(30) NOT NULL,
  `sothich` varchar(200) NOT NULL,
  `link_video` varchar(30) NOT NULL,
  `other2` text,
  `other3` text,
  `other4` text,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default 'vi',
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `thisinh`
-- 

INSERT INTO `thisinh` VALUES (1, 'Trần Thị Kim Xuyến', 'tran-thi-kim-xuyen-123456', 'thi-sinh.jpg', NULL, 'Trần Thị Kim Xuyến', 0, '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'vi', ',6,', 1, '2014-01-23 12:36:06', '1994-01-23 13:56:32', 'admin', 'admin', 0);
INSERT INTO `thisinh` VALUES (2, 'Phan Thị Lý', 'phan-thi-ly-123457', 'thi-sinh.jpg', NULL, 'Phan Thị Lý', 0, '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'vi', ',6,', 1, '2014-01-23 13:37:38', '1992-01-23 13:56:25', 'admin', 'admin', 0);
INSERT INTO `thisinh` VALUES (3, 'Phan Thị Hoa', 'phan-thi-hoa-123458', 'thi-sinh.jpg', NULL, 'Phan Thị Hoa', 0, '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'vi', ',6,', 1, '2014-01-23 13:37:59', '1991-01-23 13:56:16', 'admin', 'admin', 0);
INSERT INTO `thisinh` VALUES (4, 'Phan Thị Hồng', 'phan-thi-hong-123459', 'thi-sinh.jpg', 'Sinh ra trong môi trường nghèo khó', 'Phan Thị Hồng', 123459, '1989-04-30', 'Thủ Thừa', '1.73', '49', '88-70-89', '301318160', '2004-11-18', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '6', 'Tiếng Anh', '3', 'Nghe nhạc, chơi game', '56ada5dads', 'Đam mê làm hoa hậu', 'chưa tham gia', 'không có', 0, 'vi', ',6,19,20,', 1, '2014-01-23 13:38:33', '1990-01-23 14:29:25', 'admin', 'admin', 0);
INSERT INTO `thisinh` VALUES (6, 'name', 'name_rewrite', 'url_hinh', 'ban than', 'name', 123, '0000-00-00', 'Thủ Thừa', '1.73', '49', '83-62-90', '301318160', '0000-00-00', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '5', 'Tiếng Anh', '3', 'Đọc sách, du lịch, thời trang', 'link_video', 'Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?', 'Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?', 'Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.', 0, 'vi', ',6,19,', 0, '2014-02-14 13:23:09', '2014-02-14 13:23:09', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (7, 'name', 'name', 'url_hinh', 'Mô tả ngắn gọn về bản thân', 'name', 123, '2014-02-14', 'Thủ Thừa', '1.8', '47', '83-62-90', '301328160', '2014-02-10', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '1', 'Đọc sách, du lịch, thời trang', '', 'Vì sao bạn tham gia cuộc', 'Bạn đã từng tham gia chương trình biễu diễn thời trang,', 'Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty', 0, 'vi', ',6,19,', 0, '2014-02-14 13:37:49', '2014-02-14 13:37:49', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (8, 'Trần Hiếu Nhân', 'tran-hieu-nhan', 'url_hinh', '1111111111111', 'Trần Hiếu Nhân', 123, '2014-02-14', 'Thủ Thừa', '1.8', '45', '88-70-89', '1111111111', '2014-02-14', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '2', 'Tiếng Anh', '1', 'Ca hát', '', '22222222222222', '', '', 0, 'vi', ',6,19,', 1, '2014-02-14 13:39:56', '2014-02-14 13:39:56', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (9, 'Trần Hiếu Nhân', 'tran-hieu-nhan-7', 'url_hinh', 'Mô tả ngắn gọn về bản thân:', 'Trần Hiếu Nhân', 7, '2014-02-05', 'Thủ Thừa', '1.73', '45', '83-62-90', '1111111111', '2014-02-06', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '1', 'Nghe nhạc, chơi game', '', 'Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?', 'Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?', 'Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.', 0, 'vi', ',6,19,', 0, '2014-02-14 13:57:38', '2014-02-14 13:57:38', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (10, 'Trần Hiếu Nhân', 'tran-hieu-nhan-8', '', 'Mô tả ngắn gọn về bản thân', 'Trần Hiếu Nhân', 8, '2014-02-08', 'Tp.Vũng Tàu', '1.8', '45', '76-61-88', '1111111111', '2014-02-13', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '4', 'Ca hát', '', 'Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?', 'Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?', 'Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.', 0, 'vi', ',6,19,', 0, '2014-02-14 15:28:45', '2014-02-14 15:28:45', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (11, 'Trần Hiếu Nhân', 'tran-hieu-nhan-9', '', 'Mô tả ngắn gọn về bản', 'Trần Hiếu Nhân', 9, '2014-02-18', 'Thủ Thừa', '1.8', '45', '87-79-90', '1111111111', '2014-02-20', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:29:56', '2014-02-14 15:29:56', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (12, 'Trần Hiếu Nhân 2', 'tran-hieu-nhan-2-10', '', 'Tp.Vũng Tàu Tp.Vũng Tàu', 'Trần Hiếu Nhân 2', 10, '2014-02-19', 'Tp.Vũng Tàu', '1.8', '45', '88-70-89', '1111111111', '2014-02-11', 'Tp.Vũng Tàu', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '1', 'Nghe nhạc, chơi game', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:31:40', '2014-02-14 15:31:40', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (13, 'Trần Hiếu Nhân', 'tran-hieu-nhan-11', '140214-032732.jpg', 'Mô tả ngắn gọn về bản thân:', 'Trần Hiếu Nhân', 11, '2014-02-06', 'Tp.Vũng Tàu', '1.73', '45', '87-79-90', '1111111111', '2014-02-10', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '3', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:32:40', '2014-02-14 15:32:40', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (14, 'Trần Hiếu Nhân', 'tran-hieu-nhan-12', '140214-033513.jpg', 'tả ngắn gọn về bản thân:', 'Trần Hiếu Nhân', 12, '2014-02-11', 'Thủ Thừa', '1.8', '45', '88-70-89', '1111111111', '2014-02-11', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '3', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:36:57', '2014-02-14 15:36:57', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (15, 'Trần Hiếu Nhân', 'tran-hieu-nhan-13', '140214-034640.jpg', 'Mô tả ngắn gọn về bản thân:', 'Trần Hiếu Nhân', 13, '2014-02-11', 'Tp.Vũng Tàu', '1.73', '45', '88-70-89', '1111111111', '2014-02-12', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '3', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:47:16', '2014-02-14 15:47:16', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (16, 'Trần Hiếu Nhân 333', 'tran-hieu-nhan-333-14', '140214-035140.jpg', '11111111111111', 'Trần Hiếu Nhân 333', 14, '2014-02-17', 'Tp.Vũng Tàu', '1.8', '45', '87-79-90', '1111111111', '2014-02-03', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '4', 'Tiếng Anh', '3', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 15:52:23', '2014-02-14 15:52:23', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (17, 'Trần Hiếu Nhân', 'tran-hieu-nhan-15', '140214-035626.jpg', 'Mô tả ngắn gọn về bản thân', 'Trần Hiếu Nhân', 15, '2014-02-11', 'Thủ Thừa', '1.73', '45', '87-79-90', '1111111111', '2014-02-11', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '1', 'Tiếng Anh', '1', 'Ca hát', '', 'Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?', 'Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?', 'Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.', 0, 'vi', ',6,19,', 0, '2014-02-14 15:57:15', '2014-02-14 15:57:15', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (18, 'Trần Hiếu Nhân aaaaaa', 'tran-hieu-nhan-aaaaaa-16', '140214-040256.jpg', '11111111111', 'Trần Hiếu Nhân aaaaaa', 16, '2014-02-18', 'Tp.Vũng Tàu', '1.73', '49', '87-79-90', '1111111111', '2014-02-03', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '1', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 0, '2014-02-14 16:03:31', '2014-02-14 16:03:31', 'admin', 'admin', 1);
INSERT INTO `thisinh` VALUES (19, 'Việt Nam', 'viet-nam-17', '140214-040413_large.jpg', '3333333333333', 'Việt Nam', 17, '2014-02-19', 'Thủ Thừa', '1.73', '45', '87-79-90', '1111111111', '2014-02-11', 'Long An', '16/155B ẤP Nhà Dài', '9/9 đường 5E, Khu Phố 21', '0988388003', 'hieu_nhan1@yahoo.com', 'facebook.com/hieunhan1', 'CNTT', '30 Nguyễn Huy Tự', '1', 'Tiếng Anh', '1', 'Ca hát', '', '', '', '', 0, 'vi', ',6,19,', 1, '2014-02-14 16:05:13', '2014-02-14 16:05:13', 'admin', 'admin', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `thisinh_binhchon`
-- 

CREATE TABLE `thisinh_binhchon` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(20) NOT NULL,
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
-- Dumping data for table `thisinh_binhchon`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `thisinh_bk`
-- 

CREATE TABLE `thisinh_bk` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `diachi` varchar(200) NOT NULL,
  `metaDescription` text,
  `metaKeyword` varchar(250) default NULL,
  `sbd` int(5) NOT NULL,
  `chieucao` varchar(4) NOT NULL,
  `cannang` varchar(4) NOT NULL,
  `sodo` varchar(10) NOT NULL,
  `trinhdo` varchar(50) NOT NULL,
  `sothich` varchar(200) NOT NULL,
  `link_video` varchar(30) NOT NULL,
  `other` tinyint(1) default '0',
  `lang` varchar(3) default 'vi',
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`),
  UNIQUE KEY `sbd` (`sbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `thisinh_bk`
-- 

INSERT INTO `thisinh_bk` VALUES (1, 'Trần Thị Kim Xuyến', 'tran-thi-kim-xuyen-123456', 'thi-sinh.jpg', '', NULL, 'Trần Thị Kim Xuyến', 123456, '1.7', '44', '88-80-89', '4', 'Ca hát', 'yasafzxf3sdsd', 0, 'vi', ',6,', 1, '2014-01-23 12:36:06', '1994-01-23 13:56:32', 'admin', 'admin', 0);
INSERT INTO `thisinh_bk` VALUES (2, 'Phan Thị Lý', 'phan-thi-ly-123457', 'thi-sinh.jpg', '', NULL, 'Phan Thị Lý', 123457, '1.8', '45', '87-79-90', '5', 'Ca hát', '56ada5dads', 0, 'vi', ',6,', 1, '2014-01-23 13:37:38', '1992-01-23 13:56:25', 'admin', 'admin', 0);
INSERT INTO `thisinh_bk` VALUES (3, 'Phan Thị Hoa', 'phan-thi-hoa-123458', 'thi-sinh.jpg', '', NULL, 'Phan Thị Hoa', 123458, '1.8', '45', '87-79-90', '5', 'Ca hát', '56ada5dads', 0, 'vi', ',6,', 1, '2014-01-23 13:37:59', '1991-01-23 13:56:16', 'admin', 'admin', 0);
INSERT INTO `thisinh_bk` VALUES (4, 'Phan Thị Hồng', 'phan-thi-hong-123459', 'thi-sinh.jpg', '123 CMT 8', NULL, 'Phan Thị Hồng', 123459, '1.8', '45', '87-79-90', '5', 'Ca hát', '56ada5dads', 0, 'vi', ',6,19,20,', 1, '2014-01-23 13:38:33', '1990-01-23 14:29:25', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `thisinh_images`
-- 

CREATE TABLE `thisinh_images` (
  `id` int(11) NOT NULL auto_increment,
  `id_thisinh` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_hinh_bst` varchar(150) NOT NULL,
  `lang` varchar(2) default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) default NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `thisinh_images`
-- 

INSERT INTO `thisinh_images` VALUES (1, 1, 'Trần Thị Kim Xuyến 1', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 13:12:25', '2014-01-23 13:14:40', 'admin', 'admin', 1);
INSERT INTO `thisinh_images` VALUES (2, 4, 'Phan Thị Hồng 1', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 13:45:26', '2014-01-23 13:45:26', 'admin', NULL, 0);
INSERT INTO `thisinh_images` VALUES (3, 4, 'Phan Thị Hồng 2', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 13:45:28', '2014-01-23 13:45:28', 'admin', NULL, 0);
INSERT INTO `thisinh_images` VALUES (4, 4, 'Phan Thị Hồng 3', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 13:45:30', '2014-01-23 13:45:30', 'admin', NULL, 0);
INSERT INTO `thisinh_images` VALUES (5, 4, 'Phan Thị Hồng 4', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 14:43:00', '2014-01-23 14:43:00', 'admin', NULL, 0);
INSERT INTO `thisinh_images` VALUES (6, 4, 'Phan Thị Hồng 5', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 14:43:02', '2014-01-23 14:43:02', 'admin', NULL, 0);
INSERT INTO `thisinh_images` VALUES (7, 4, 'Phan Thị Hồng 6', 'thi-sinh.jpg', 'vi', 1, '2014-01-23 14:43:07', '2014-01-23 14:43:20', 'admin', 'admin', 1);
INSERT INTO `thisinh_images` VALUES (8, 19, '111111111', '140214-035626.jpg', 'vi', 1, '2014-02-14 16:05:54', '2014-02-14 16:05:54', 'admin', NULL, 0);

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
