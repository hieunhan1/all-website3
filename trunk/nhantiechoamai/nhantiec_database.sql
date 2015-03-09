-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2015 at 01:42 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nhantiec_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `slogan` varchar(100) DEFAULT NULL,
  `domain` varchar(30) DEFAULT NULL,
  `max_limit_1` int(2) DEFAULT NULL,
  `max_limit_2` int(2) DEFAULT NULL,
  `max_limit_3` int(2) DEFAULT NULL,
  `max_limit_4` int(2) DEFAULT NULL,
  `copyright` varchar(250) DEFAULT NULL,
  `contact_foo` text,
  `contact_form` text NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `yahoo` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `hotline` varchar(50) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `lang`, `slogan`, `domain`, `max_limit_1`, `max_limit_2`, `max_limit_3`, `max_limit_4`, `copyright`, `contact_foo`, `contact_form`, `email`, `yahoo`, `tel`, `hotline`, `facebook`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Việt Nam', 'vi', '- Nhận đặt tiệc tại nhà, với giá ưu đãi!', 'www.nhantiec.vn', 10, 14, 2, 10, '© 2013 - Bản quyền nhantiec.vn', '<p>Địa chỉ: 265 Hoàng Văn Thụ, Quận Tân Bình, TP.HCM</p>\r\n\r\n<p>Phone: +84 0928 088 088</p>\r\n\r\n<p>Email: support@nhantiec.vn</p>\r\n', '<p><strong>Địa chỉ:</strong> 265 Hoàng Văn Thụ, P.2, Q. Tân Bình, HCM</p>\r\n\r\n<p><strong>Hotline:</strong> 0928 088 088</p>\r\n\r\n<p><strong>Email:</strong> dongthanh6868@gmail.com</p>\r\n\r\n<p><strong>Website:</strong> www.nhantiec.vn</p>\r\n', 'dongthanh6868@gmail.com', 'hieu_nhan1', '0861116111', '0928 088 088', 'http://facebook.com', 1, '2013-02-20 13:35:24', '2013-03-01 04:36:28', 'admin', 'admin', 0),
(2, 'English', 'en', '', 'www.nhantiec.vn', 0, 10, 2, NULL, 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', '<p>Add: 87 Thang Long Str., Ward 4, Tan Binh Dist, HCMC, Vietnam.<br />\r\nTel: (84.8) 3 948 4696 - Fax : ( 84.8) 3 948 4697 - Email: info@hoangha.com</p>\r\n', '<table border="0" cellpadding="0" cellspacing="5" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">HEAD OFFICE</span></h3>\r\n\r\n			<p>Add: Lot III/22, 19/5A Rd, Tan Binh IZ, Tan Phu Dist., Ho Chi Minh city, Vietnam<br />\r\n			Tel: (84.8) 3 815 5319 - Fax: (84.8) 3 815 5320<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;">DANANG OFFICE</span></h3>\r\n\r\n			<p>Add: 183 Nguyen Tri Phuong Str., W. Vinh Trung, Thanh Khe Dist., Da Nang city, Vietnam<br />\r\n			Tel: (84.511) 3 561 561 - Fax: (84.511) 3 824 602<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3 style="font-size: 13px;"><span style="color:#FF0000;">HCM OFFICE</span></h3>\r\n\r\n			<p style="font-size: 13px;">Add: 87 Thang Long Str., Ward 4, Tan Binh Dist., HCMC, Vietnam<br />\r\n			Tel: (84.8) 3 948 4696 - Fax: (84.8) 3 948 4697<br />\r\n			&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">CANTHO OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: 40 A3 Str., Hung Phu I, Cai Rang Dist., Can Tho city, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.0710) 625 8539 - Fax: (84.0710) 625 8540</span><br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h3><span style="color:#FF0000;"><span style="font-size: 13px;">HANOI OFFICE</span></span></h3>\r\n\r\n			<p><span style="font-size: 13px;">Add: No. 1 Alley 71, Linh Lang Str., Cong Vi Ward, Ba Dinh Dist., Ha Noi, Vietnam</span><br style="font-size: 13px;" />\r\n			<span style="font-size: 13px;">Tel: (84.4) 3 726 0122 - Fax: (84.4) 3 726 0144</span></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'hieunhan112@gmail.com', '', '', '', '', 0, '2013-08-10 10:09:29', '2013-08-10 15:35:08', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `diachi`, `message`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trần Nhân', 'hieu_nhan1@yahoo.com', '', '10 An Diem Q5 TPHCM', 'Test noi dung lien he nhantiec.vn', '', 0, '2013-12-11 13:40:47', '2013-12-11 13:40:47', 'khachhang', '', 1),
(2, 'Tran Nhan', 'hieu_nhan1@yahoo.com', '', '123 CMT 8', 'Nội dung liên hệ', '', 0, '2013-12-11 13:47:02', '2013-12-11 13:47:02', 'khachhang', '', 1),
(3, 'nhan 3', 'hieu_nhan1@yahoo.com', '', '123 cmt 8', 'Nội dung liên hệ', '', 0, '2013-12-11 13:48:09', '2013-12-11 13:48:09', 'khachhang', '', 1),
(4, 'Trần Hiếu Nhân', 'daiphongco@vikybomi.com.vn', '', 'Lê Đức Thọ , Gò Vấp', '333333333333333333333', '', 0, '2013-12-11 13:54:03', '2013-12-11 13:54:03', 'khachhang', '', 1),
(5, 'Nguyễn Hạnh', 'behanh05@yahoo.com', '', 'Hẻm 363 Đinh Bộ Lĩnh, Bến xe Miền Đông, Q. Bình Thạnh', 'Chào anh/chị,\n\nTôi muốn xin danh sách menu + giá đặt tiệc tại nhà và hợp đồng mẫu. Nhu cầu 3 bàn.\nVì nhà tôi nhỏ chỉ kê được 3 bàn nên anh/chị cứ cho biết phụ thu.\n\nCám ơn!', '', 0, '2014-03-21 15:37:04', '2014-03-21 15:37:04', 'khachhang', '', 0),
(6, 'Họ tên:', 'hieu_nhan1@yahoo.com', '', 'Địa chỉ:', 'Nội dung liên hệ', '', 0, '2014-03-26 14:11:34', '2014-03-26 14:11:34', 'khachhang', 'admin', 1),
(7, 'nhan', 'hieu_nhan1@yahoo.com', '', 'Địa chỉ:', 'aaaaaaaaaaaaaaaa', '', 0, '2014-03-26 14:16:36', '2014-03-26 14:16:36', 'khachhang', 'admin', 1),
(8, 'nhan 2', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT 8', '1111111111111111111', '', 0, '2014-03-26 14:18:32', '2014-03-26 14:18:32', 'khachhang', 'admin', 1),
(9, 'Trần Hiếu Nhân', 'hieu_nhan1@yahoo.com', '0988388003', 'Lê Đức Thọ , Gò Vấp', 'test lien he nhan tiec', '', 0, '2014-03-26 14:26:58', '2014-03-26 14:26:58', 'khachhang', 'admin', 1),
(10, 'Trần Hiếu Nhân 9', 'daiphongco@vikybomi.com.vn', '01234567890', '123 CMT 8', 'tiec cuoi abc', '', 0, '2014-03-26 14:32:27', '2014-03-26 14:32:27', 'khachhang', 'admin', 1),
(11, 'Nguyễn Văn Phương', 'nguyenphuong1507@gmail.com', '0902 855 805', '26/36 Nguyễn Minh Hoàng, P.12, Q.Tân Bình, TP.HCM', 'Chào anh!\nEm bên công ty Cồn Thạch Hà Nội, bên em chuyên cung cấp các sản phẩm Cồn Thạch dùng cho các món lẫu và hấp với giá cả hợp lý và cạnh tranh nhất.\n- Ưu điểm của cồn thạch: Thời gian cháy dài, từ 30 phút trở lên, cháy kiệt (không để lại cặn), ...\nhttp://conthach.net/san-pham-con-thach.html', '', 0, '2014-11-14 12:36:24', '2014-11-14 12:36:24', 'khachhang', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `metaDescription` text,
  `content` text,
  `metaKeyword` varchar(250) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(3) DEFAULT NULL,
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `metaDescription`, `content`, `metaKeyword`, `other`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Dịch vụ cưới trọn gói', 'dich-vu-cuoi-tron-goi', 'dich-vu-1.jpg', '<p>Đặc biệt chúng tôi phục vụ các tiệc cưới, hỏi, cưới vàng, cưới bạc, kỷ niệm ngân khánh, kim khánh. Hãy liên hệ với chúng tôi ngay hôm nay,</p>\r\n', '<p>Đặc biệt chúng tôi phục vụ các tiệc cưới, hỏi, cưới vàng, cưới bạc, kỷ niệm ngân khánh, kim khánh. Hãy liên hệ với chúng tôi ngay hôm nay,</p>\r\n', 'Dịch vụ cưới trọn gói', 0, 'vi', ',7,', 1, '2013-12-10 11:37:35', '2013-12-10 22:09:24', 'admin', 'admin', 0),
(5, 'Thông tin khuyến mãi', 'thong-tin-khuyen-mai', '', '<p><strong>Dịch vụ nhận tiệc Hoa Mai</strong> xin gởi đến cô dâu, chú rể cùng toàn thể gia đình lời chúc tốt đẹp nhất. Dịch vụ chúng tôi xin có những phần quà tặng như sau thay cho lời chúc mừng trong ngày hạnh phúc</p>\r\n', '<p><strong>Dịch vụ nhận tiệc Hoa Mai</strong> xin gởi đến cô dâu, chú rể cùng toàn thể gia đình lời chúc tốt đẹp nhất. Dịch vụ chúng tôi xin có những phần quà tặng như sau thay cho lời chúc mừng trong ngày hạnh phúc</p>\r\n\r\n<p><strong>Đặt tiệc cưới tại Hoa Mai, chúng tôi khuyến mãi</strong>:</p>\r\n\r\n<ul>\r\n	<li>Trang trí phông cưới tại hội trường</li>\r\n	<li>Cổng hoa</li>\r\n	<li>Hoa bàn tiệc</li>\r\n	<li>Thảm trải lối vào</li>\r\n	<li>Hộp tiền mừng</li>\r\n</ul>\r\n\r\n<p><strong>Từ 50 bàn trở lên chúng tôi tặng thêm:</strong></p>\r\n\r\n<ul>\r\n	<li>Bánh cưới</li>\r\n	<li>Cặp rượu chúc mừng</li>\r\n	<li>Pháo hoa</li>\r\n</ul>\r\n\r\n<p><strong>Ngoài ra, trong tất cả các dịch vụ chúng tôi đều có chương trình giảm giá ưu đãi:</strong></p>\r\n\r\n<ul>\r\n	<li>Chương trình 1: đặt 10 bàn tiệc tặng 1 bàn</li>\r\n	<li>Chương trình 2: tặng 150.000 dành cho đồ uống ở mỗi bàn tiệc (bao gồm bia và nước ngọt).</li>\r\n	<li>Chương trình 3: các dịch vụ giảm giá món ăn (tùy theo số lượng khách)</li>\r\n</ul>\r\n', 'Thông tin khuyến mãi đặt tiệc', 1, 'vi', ',8,', 1, '2014-01-09 16:33:44', '2014-01-09 01:24:15', 'admin', 'admin', 0),
(2, 'Tiệc sinh nhật trọn gói', 'tiec-sinh-nhat-tron-goi', 'dich-vu-2.jpg', '<p>Tiệc kỷ niệm nhỏ ở gia đình với số lượng 03 bàn trở lên.</p>\r\n\r\n<p>Tiệc nướng sân vườn ngoài trời (BBQ).</p>\r\n', '<ul>\r\n	<li>Tiệc kỷ niệm nhỏ ở gia đình với số lượng 03 bàn trở lên.</li>\r\n	<li>Tiệc nướng sân vườn ngoài trời (BBQ).</li>\r\n	<li>Tiệc cocktail, tiệc trà...</li>\r\n	<li>Tiệc sinh nhật</li>\r\n	<li>Tổ chức các buổi khánh thành, khai trương, kỷ niệm, các sự kiện lễ hội....</li>\r\n	<li>Các dịch vụ khác về ăn uống, sự kiện...</li>\r\n</ul>\r\n', 'Tiệc sinh nhật trọn gói', 0, 'vi', ',7,', 1, '2013-12-10 11:37:49', '2013-12-10 14:03:50', 'admin', 'admin', 0),
(3, 'Dịch vụ trọn gói khác', 'dich-vu-tron-goi-khac', 'dich-vu-3.jpg', '<p>Tiệc cưới hỏi, sinh nhật trọn gói tại các hội trường, ngoài trời...hay tại nhà riêng. Tiệc đứng (Buffet) chiêu đãi hội nghị, hội thảo...tại các hội trường, công ty.</p>\r\n', '<p>Tiệc cưới hỏi, sinh nhật trọn gói tại các hội trường, ngoài trời...hay tại nhà riêng. Tiệc đứng (Buffet) chiêu đãi hội nghị, hội thảo...tại các hội trường, công ty.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Dịch vụ trọn gói khác', 0, 'vi', ',7,', 1, '2013-12-10 11:38:04', '2013-12-10 14:03:38', 'admin', 'admin', 0),
(4, 'Giới thiệu nhận tiệc Hoa Mai', 'gioi-thieu-nhan-tiec-hoa-mai', '', '<p>Mỗi bữa tiệc là một sự kiện trọng đại đáng nhớ nên chúng tôi cam kết luôn sẵn sàng mang đến sự ấn tượng, hài lòng và sự phục vụ chuyên nghiệp nhất.</p>\r\n', '<p>SỰ HÌNH THÀNH</p>\r\n\r\n<p>Dịch vụ nhận tiệc Hoa Mai được thành lập vào ngày 20 tháng 10 năm 2009 bởi bếp trưởng Đông Thành, một đầu bếp tài năng với nhiều giải thưởng danh giá, nhiều năm giữ chức vụ bếp trưởng làm việc tại các khách sạn, nhà hàng lớn và các khu nghỉ dưỡng cao cấp trong và ngoài nước. Anh có chuyên nghành về món ăn truyền thống Việt Nam và các món phương Tây hiện đại, đặc biệt là kinh nghiệm trong việc tổ chức tiệc.</p>\r\n\r\n<p>Với sự cộng tác của nhiều chuyên gia ẩm thực, nhiều đầu bếp chuyên nghiệp trứ danh trong cả nước cùng nỗ lực và tâm huyết với nghề gần 20 năm qua, dịch vụ nhận tiệc Hoa Mai đã ra đời chuyên tổ chức và cung cấp các dịch vụ trọn gói về tiệc cưới hỏi, tiệc sinh nhật, tiệc hội nghị hay các tiệc sự kiện lưu động.</p>\r\n\r\n<p>Mỗi bữa tiệc là một sự kiện trọng đại đáng nhớ nên chúng tôi cam kết luôn sẵn sàng mang đến sự ấn tượng, hài lòng và sự phục vụ chuyên nghiệp nhất.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/public/images/articles/gioi-thieu.jpg" style="width: 819px; height: 395px;" /></p>\r\n\r\n<p><strong>TẦM NHÌN</strong></p>\r\n\r\n<p>Không phải bất cứ nhà hàng nào cũng có thể cung cấp cho bạn dịch vụ trọn gói đầy đủ và chất lượng. Với đội ngũ chuyên nghiệp về tổ chức tiệc, chúng tôi thấu hiểu được suy nghĩ và mong muốn của khách hàng nên luôn thay đổi và cung cấp rất nhiều dịch vụ chất lượng ở từng thời điểm khác nhau. Các bạn có thể tự do lựa chọn dịch vụ phù hợp với mình nhất và hoàn toàn tin tưởng với sự phục vụ của chúng tôi.</p>\r\n\r\n<p><strong>PHƯƠNG CHÂM LÀM VIỆC</strong></p>\r\n\r\n<p>Với tiêu chí đặt khách hàng lên hàng đầu, chúng tôi có thể đáp ứng tất cả những mong muốn của khách hàng dù là nhỏ nhất. Khi đến với dịch vụ nhận tiệc Hoa Mai, chỉ cần bạn đưa ra suy nghĩ và yêu cầu của mình, chúng tôi với các chuyên gia ẩm thực kinh nghiệm cao sẽ tư vấn giúp đỡ và đưa ra lời khuyên phù hợp nhất với phong cách và chi phí mà bạn đang có.</p>\r\n\r\n<p>Ngoài ra, với ý thức rằng đang phục vụ về ẩm thực nên chúng tôi cam đoan về an toàn thực phẩm trong món ăn của bữa tiệc. Chúng tôi chỉ chọn những thực phẩm tươi ngon nhất từ những nhà cung cấp có uy tín để phục vụ khách hàng. Đến với chúng tôi, bạn không những có món ăn ngon mà còn được chia sẻ những bí quyết làm thế nào để nấu ăn ngon và thái độ phục vụ chuyên nghiệp.</p>\r\n\r\n<p><strong>SỨ MỆNH</strong></p>\r\n\r\n<p>Dịch vụ nhận tiệc Hoa Mai luôn luôn thay đổi, làm mới bản thân trên con đường phục vụ khách hàng. Tất cả những chia sẻ, góp ý của khách hàng là động lực để Hoa Mai không ngừng tiến lên phía trước, ngày một hoàn thiện hơn trong vai trò là nơi đáng tin cậy để bạn trao trọn niềm tin khi tổ chức tiệc.</p>\r\n\r\n<p><strong>GIÁ TRỊ CỐT LÕI</strong></p>\r\n\r\n<p>Chúng tôi mong muốn mang đến cho mọi cá nhân, mọi tổ chức giá trị kết nối, chia sẻ thực sự qua những bữa tiệc mà chúng tôi tổ chức. Hãy đến với dịch vụ nhận tiệc Hoa Mai chúng tôi, chắc chắn bạn sẽ có một sự kiện long trọng và đáng nhớ trong cuộc đời hơn cả sự mong đợi.</p>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;</p>\r\n</p>\r\n', 'Giới thiệu nhận tiệc Hoa Mai', 0, 'vi', ',5,', 1, '2013-12-10 11:39:07', '2013-12-10 22:00:30', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_comment`
--

CREATE TABLE IF NOT EXISTS `info_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `info_alias` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
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
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `ma` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
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
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(100) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `metaDescription` varchar(250) NOT NULL,
  `metaKeyword` varchar(150) NOT NULL,
  `parent_id` int(3) NOT NULL,
  `type_id` int(1) NOT NULL,
  `position_id` varchar(10) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `name_rewrite`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `lang`, `other`, `order`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', '', '', 'Nhận tiệc Hoa Mai', 'Nhận tiệc Hoa Mai', 'Nhận tiệc Hoa Mai', 0, 1, ',1,3,', 'vi', 0, 1, 1, '2013-10-09 15:36:09', '2013-10-01 10:56:03', 'admin', 'admin', 0),
(2, 'Nhận xét của thực khách', 'nhan-xet-cua-thuc-khach', 'nhan-xet-cua-thuc-khach/', '', 'Nhận xét của thực khách', 'Nhận xét của thực khách', 'Nhận xét của thực khách', 1, 9, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:02', '2013-10-09 10:35:41', 'admin', '', 1),
(3, 'Trang chủ sản phẩm', 'trang-chu-san-pham', 'trang-chu-san-pham/', '', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 'Trang chủ sản phẩm', 1, 3, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:25', '2013-10-09 16:26:49', 'admin', '', 1),
(4, 'Trang chủ liên hệ', 'trang-chu-lien-he', 'trang-chu-lien-he/', '', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 'Trang chủ liên hệ', 1, 8, ',6,', 'vi', 0, 0, 1, '2013-10-09 15:38:38', '2013-10-09 16:27:02', 'admin', '', 1),
(5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',1,3,', 'vi', 0, 2, 1, '2013-10-09 15:39:02', '2013-10-09 10:56:20', 'admin', 'admin', 0),
(6, 'Menu tiệc', 'menu-tiec', 'menu-tiec/', '', 'Menu tiệc', 'Chọn món ăn cho buổi tiệc chiêu đãi là rất quan trọng, với một số khách hàng chọn món quả thực mất rất nhiều thời gian. Chúng tôi thấu hiểu công việc khó khăn này nên đã thiết kế sẵn nhiều menu giúp quý dễ dàng lựa chọn.', 'Menu tiệc', 0, 3, ',1,3,', 'vi', 0, 3, 1, '2013-10-09 15:39:24', '2013-10-09 22:46:39', 'admin', 'admin', 0),
(7, 'Dịch vụ trọn gói', 'dich-vu-tron-goi', 'dich-vu-tron-goi/', '', 'Dịch vụ trọn gói', 'Hiện nay, tại Hoa Mai chúng tôi tạo ra nhiều gói dịch vụ, phục vụ cho hầu hết các nhu cầu của khách hàng, dễ dàng lựa chọn với giá cả phù hợp, và đặc biệt được chính các chuyên gia ẩm thực đảm nhiệm.', 'Dịch vụ trọn gói', 0, 2, ',1,3,', 'vi', 0, 4, 1, '2013-10-09 15:39:46', '2013-10-09 14:00:45', 'admin', 'admin', 0),
(8, 'Khuyến mãi', 'khuyen-mai', 'khuyen-mai/', '', 'Khuyến mãi', 'Dịch vụ nhận tiệc Hoa Mai xin gởi đến cô dâu, chú rể cùng toàn thể gia đình lời chúc tốt đẹp nhất. Dịch vụ chúng tôi xin có những phần quà tặng như sau thay cho lời chúc mừng trong ngày hạnh phúc\r\n', 'Khuyến mãi', 0, 2, ',1,3,', 'vi', 0, 5, 1, '2013-10-09 15:40:21', '2013-10-09 22:27:38', 'admin', 'admin', 0),
(10, 'Hình ảnh', 'thu-vien-hinh-anh', 'thu-vien-hinh-anh/', '', 'Thư viện hình ảnh', 'Thư viện hình ảnh giới thiệu toàn cảnh của buổi tiệc do Hoa Mai phục vụ, không gian tổ chức tiệc, và cả cung cách chúng tôi phục vụ.', 'Thư viện hình ảnh', 0, 4, ',1,3,', 'vi', 0, 6, 1, '2013-12-09 16:12:20', '2013-12-09 22:40:21', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Dịch vụ nấu tiệc Hoa Mai', 'Vui lòng liên hệ với chúng tôi để được tư vấn tốt nhất.', 'Liên hệ', 0, 8, ',1,3,', 'vi', 0, 9, 1, '2013-10-09 15:40:52', '2013-10-09 13:33:33', 'admin', 'admin', 0),
(15, 'Bài viết', 'thong-tin-dich-vu-nhan-dat-tiec-hoa-mai', 'thong-tin-dich-vu-nhan-dat-tiec-hoa-mai/', '', 'Thông tin dịch vụ nhận đặt tiệc Hoa Mai', 'Thông tin đặt tiệc, dịch vụ Hoa Mai chuyên nhận tiệc tại nhà', 'dịch vụ đặt tiệc, đặt tiệc hoa mai, dich vu dat tiec, dat tiec hoa mai', 0, 6, ',1,', 'vi', 0, 8, 1, '2014-03-26 13:37:41', '2014-03-26 13:42:19', 'admin', 'admin', 0),
(11, 'Thư viện video', 'thu-vien-video', 'thu-vien-video/', '', 'Thư viện video', 'Nhằm cung cấp những thông tin trung thực, khách quan, chúng tôi giới thiệu qua hệ thống website Nhận Tiệc những video cảm nhận của thực khách ngay sau buổi đãi tiệc.', 'Thư viện video', 0, 5, ',1,3,', 'vi', 0, 7, 1, '2013-12-09 16:13:16', '2013-12-09 13:40:10', 'admin', 'admin', 0),
(12, 'Facebook', 'facebook', 'javascript:;', 'social-f.jpg', 'Facebook', 'Facebook', 'Facebook', 0, 9, ',4,', 'vi', 0, 101, 1, '2013-12-13 10:38:50', '2013-12-13 10:38:50', 'admin', '', 0),
(13, 'Twitter', 'twitter', 'javascript:;#2', 'social-t.jpg', 'Twitter', 'Twitter', 'Twitter', 0, 9, ',4,', 'vi', 0, 102, 1, '2013-12-13 10:39:43', '2013-12-13 10:39:43', 'admin', '', 0),
(14, 'Social P', 'Social P', 'javascript:;#3', 'social-p.jpg', 'Social P', 'Social P', 'Social P', 0, 9, ',4,', 'vi', 0, 103, 1, '2013-12-13 10:40:14', '2013-12-13 10:40:14', 'admin', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

CREATE TABLE IF NOT EXISTS `menu_admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `menu_admin`
--

INSERT INTO `menu_admin` (`id`, `name`, `url`, `url_hinh`, `order`, `status`, `delete`) VALUES
(1, 'Trang chủ', 'home', NULL, 1, 1, 0),
(2, 'Cấu hình website', 'config', NULL, 2, 1, 0),
(3, 'Danh mục menu', 'menu', NULL, 3, 1, 0),
(4, 'Thông tin bài viết, dịch vụ', 'info', NULL, 4, 1, 0),
(5, 'Thông tin, bài viết bình luận', 'info_comment', NULL, 5, 0, 0),
(6, 'Menu tiệc', 'products', NULL, 6, 1, 0),
(7, 'Thư viện hình ảnh', 'photo_gallery', '', 7, 1, 0),
(8, 'Thư viện video', 'video', NULL, 8, 1, 0),
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
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id`, `name`, `delete`) VALUES
(1, 'Main', 0),
(2, 'Top', 1),
(3, 'Bottom', 0),
(4, 'Social', 0),
(5, 'Right', 1),
(6, 'Không', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `delete`) VALUES
(1, 'Trang chủ', 0),
(2, 'Dịch vụ', 0),
(3, 'Menu tiệc', 0),
(4, 'Thư viện ảnh', 0),
(5, 'Thư viện video', 0),
(6, 'Thông tin, bài viết', 0),
(7, 'Loại temp 4', 1),
(8, 'Liên hệ', 0),
(9, 'Không', 0);

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE IF NOT EXISTS `photo_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `lang` varchar(3) DEFAULT NULL,
  `menu_id` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

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
(104, 'Hình ảnh 1', 'thuvien-anh-1.jpg', 'vi', ',10,', 1, '2013-12-11 08:56:16', '2013-12-11 08:56:16', 'admin', NULL, 0),
(105, 'Hình ảnh 2', 'thuvien-anh-2.jpg', 'vi', ',10,', 1, '2013-12-11 08:56:21', '2013-12-11 08:56:21', 'admin', NULL, 0),
(106, 'Hình ảnh 3', 'thuvien-anh-3.jpg', 'vi', ',10,', 1, '2013-12-11 08:56:26', '2013-12-11 08:56:26', 'admin', NULL, 0),
(107, 'Hình ảnh 4', 'thuvien-anh-4.jpg', 'vi', ',10,', 1, '2013-12-11 13:36:50', '2013-12-11 13:36:50', 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `metaDescription` text,
  `list_mon` text NOT NULL,
  `content` text,
  `metaKeyword` varchar(250) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(3) DEFAULT NULL,
  `menu_id` varchar(30) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `name_rewrite`, `url_hinh`, `price`, `metaDescription`, `list_mon`, `content`, `metaKeyword`, `other`, `lang`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Menu tiệc cưới trọn gói 06', 'menu-tiec-cuoi-tron-goi-06', 'menu-tiec-6.jpg', '6 triệu', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', '', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', 'Menu tiệc cưới trọn gói 06', 0, 'vi', ',6,', 1, '2013-12-10 16:37:26', '2013-12-10 16:37:26', 'admin', NULL, 0),
(2, 'Menu tiệc cưới trọn gói 05', 'menu-tiec-cuoi-tron-goi-05', 'menu-tiec-5.jpg', '5 triệu', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', '', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', 'Menu tiệc cưới trọn gói 05', 0, 'vi', ',6,', 1, '2013-12-10 16:37:41', '2013-12-10 16:37:41', 'admin', NULL, 0),
(3, 'Menu tiệc cưới trọn gói 04', 'menu-tiec-cuoi-tron-goi-04', 'menu-tiec-4.jpg', '4 triệu', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', '', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', 'Menu tiệc cưới trọn gói 04', 0, 'vi', ',6,', 1, '2013-12-10 16:37:52', '2013-12-10 16:37:52', 'admin', NULL, 0),
(4, 'Menu tiệc cưới trọn gói 03', 'menu-tiec-cuoi-tron-goi-03', 'menu-tiec-3.jpg', '3 triệu', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', '', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', 'Menu tiệc cưới trọn gói 03', 0, 'vi', ',6,', 1, '2013-12-10 16:38:05', '2013-12-10 16:38:05', 'admin', NULL, 0),
(5, 'Menu tiệc cưới trọn gói 02', 'menu-tiec-cuoi-tron-goi-02', 'menu-tiec-2.jpg', '2 triệu', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', '', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n', 'Menu tiệc cưới trọn gói 02', 0, 'vi', ',6,', 1, '2013-12-10 16:38:15', '2013-12-10 16:38:15', 'admin', NULL, 0),
(6, 'Menu tiệc cưới trọn gói 01', 'menu-tiec-cuoi-tron-goi-01', 'menu-tiec-1.jpg', '1 triệu', 'Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.\r\n', '<ol>\r\n	<li>Sắc Cầm Hòa Hợp - Mực Bách Hoa - Nem Cua Bể</li>\r\n	<li>Gà Nướng Cung Đình</li>\r\n	<li>Cua Lột Sốt Me Tươi&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tôm Hoàng Kim</li>\r\n	<li>Lẩu Cá Tầm&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tráng Miệng: Trái Cây&nbsp;&nbsp; &nbsp;</li>\r\n</ol>\r\n', '<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellent. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Menu tiệc cưới trọn gói 01', 0, 'vi', ',6,', 1, '2013-12-10 16:38:24', '2013-12-10 17:51:49', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner`
--

CREATE TABLE IF NOT EXISTS `slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `content` text NOT NULL,
  `lang` varchar(3) DEFAULT NULL,
  `position_id` int(1) DEFAULT NULL,
  `menu_id` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `slider_banner`
--

INSERT INTO `slider_banner` (`id`, `name`, `url_hinh`, `link`, `content`, `lang`, `position_id`, `menu_id`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Slider Home', 'slider-1.jpg', 'javascript:;', '', 'vi', 1, ',1,', 1, '2013-10-09 16:34:33', '2013-10-09 16:14:12', 'admin', 'admin', 0),
(3, 'Giới thiệu', 'gioi-thieu.jpg', 'javascript:;', '', 'vi', 1, ',5,15,', 1, '2013-12-10 16:14:26', '2013-12-10 14:01:35', 'admin', 'admin', 0),
(2, 'Dịch vụ trọn gói', 'dich-vu-tron-goi.jpg', 'javascript:;', '', 'vi', 1, ',7,', 1, '2013-12-10 14:28:47', '2013-12-10 14:32:57', 'admin', '', 0),
(4, 'Menu tiệc ', 'menu-tiec.jpg', 'javascript:;', '', 'vi', 1, ',6,', 1, '2013-12-10 16:16:28', '2013-12-10 16:16:28', 'admin', NULL, 0),
(5, 'Thư viện hình ảnh', 'thu-vien-hinh-anh.jpg', 'javascript:;', '', 'vi', 1, ',10,', 1, '2013-12-11 08:44:57', '2013-12-11 10:09:28', 'admin', 'admin', 0),
(6, 'Thông tin liên hệ', 'thu-vien-hinh-anh.jpg', 'javascript:;', '', 'vi', 1, ',9,', 1, '2013-12-11 10:05:32', '2013-12-11 10:07:25', 'admin', '', 0),
(7, 'Thông tin LIÊN HỆ', 'image-6.jpg', 'lien-he/', '<p>Hãy tham khảo thật kỹ thông tin trên website và liên hệ sớm với chúng tôi để được nhiều ưu tiên.</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:21:30', '2013-12-06 23:17:23', 'admin', 'admin', 0),
(8, 'Voucher MỖI NGÀY', 'image-5.jpg', 'javascript:;', '<p>Giữ khách hàng ở lại, và sử dụng dịch vụ nhiều lần hơn, bên cạnh các chương trình khuyến mãi, chúng tôi có voucher tặng khách hàng thân thiết hàng tuần.</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:22:12', '2013-12-07 23:16:08', 'admin', 'admin', 0),
(9, 'Thông tin KHUYẾN MÃI', 'image-4.jpg', 'khuyen-mai/', '<p>Nhằm thu hút sự chú ý và quan tâm của khách hàng, chúng có các chương trình khuyến mãi hàng tuần cho tất cả các dịch vụ!</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:22:42', '2013-12-08 23:13:43', 'admin', 'admin', 0),
(10, 'Giới thiệu VỀ CHÚNG TÔI', 'image-3.jpg', 'gioi-thieu/gioi-thieu-nhan-tiec-hoa-mai.html', '<p>Với đội ngũ nhân sự trẻ tuổi, năng động được đào tạo chuyên nghiệp từ cách tiếp đón khách đến cách phục vụ tiệc. Chúng tôi đem đến cho khách hàng sự hài lòng!</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:23:11', '2013-12-09 23:10:10', 'admin', 'admin', 0),
(11, 'Dịch vụ TRỌN GÓI', 'image-2.jpg', 'dich-vu-tron-goi/', '<p>Rất nhiều gói dịch vụ được chúng tôi thiết kế phù hợp về giá cả, dinh dưỡng, và được nhiều người thích. Mỗi gói dịch vụ luôn tạo sự mới mẻ, bất ngờ, thú vị.</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:23:42', '2013-12-10 23:07:15', 'admin', 'admin', 0),
(12, 'Danh sách MENU TIỆC', 'image-1.jpg', 'menu-tiec/', '<p>Chọn những món ăn nào cho buổi chiêu đãi luôn là một thách thức, và tốn thời gian. Hãy để các chuyên gia về ẩm thực thiết kế sẵn và bạn chỉ việc chọn thôi!</p>\r\n', 'vi', 2, '', 1, '2013-12-11 10:24:02', '2013-12-11 22:57:06', 'admin', 'admin', 0),
(13, 'David Thai', 'DavidThai-3.jpg', 'javascript:;', '<p>"Theo anh! Hương vị súp trong món ăn rất tuyệt vời, đầu bếp đã trộn thịt và nấm dai dai nó làm món súp mình ăn không buồn, mình ăn xong một chén mình xin một chén thêm"</p>\r\n\r\n<p><strong><span style="color:#0000FF;">David Thái</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'vi', 3, ',2,', 1, '2013-12-11 10:37:11', '2013-12-11 15:41:39', 'admin', 'admin', 0),
(14, 'Mai Phương Thúy 2', 'image-7.jpg', 'javascript:;', '<p>Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna. Quisque placerat erat quis neque.</p>\r\n\r\n<p><a href="http://kenh14.vn/fashion/mai-phuong-thuy-co-sai-lam-khi-doi-phong-cach-ca-tinh-2013121006173713.chn">_ HH Mai Phương Thúy</a></p>\r\n', 'vi', 3, ',', 0, '2013-12-11 10:43:29', '2013-12-11 10:43:50', 'admin', '', 0),
(15, 'ekip', 'ekip.jpg', 'javascript:;', '', 'vi', 1, ',1,', 1, '2014-01-07 08:15:06', '2014-01-07 08:16:04', 'admin', 'admin', 0),
(16, 'sư kiện', 'su-kien.jpg', 'javascript:;', '', 'vi', 1, ',1,', 1, '2014-01-07 08:17:27', '2014-01-07 08:17:27', 'admin', NULL, 0),
(17, 'Món ăn', 'mon-an.jpg', 'javascript:;', '', 'vi', 1, ',1,', 1, '2014-01-07 08:18:27', '2014-01-07 08:20:04', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `slider_banner_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slider_banner_position`
--

INSERT INTO `slider_banner_position` (`id`, `name`, `delete`) VALUES
(1, 'Slider width 940px', 0),
(2, 'Event home 290px', 0),
(3, 'Khác', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `quyen_xem` varchar(200) NOT NULL,
  `quyen_action` varchar(200) NOT NULL,
  `group_id` int(1) DEFAULT '0',
  `Active` tinyint(1) DEFAULT '1',
  `RandomKey` varchar(255) DEFAULT NULL,
  `LoginNumber` int(11) DEFAULT '0',
  `DisableDate` datetime DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `Username`, `Password`, `quyen_xem`, `quyen_action`, `group_id`, `Active`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,7,8,13,14,15,', ',1,2,3,4,6,7,8,13,14,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE IF NOT EXISTS `users_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `metaDescription` text,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `metaKeyword` varchar(250) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(3) DEFAULT NULL,
  `menu_id` varchar(20) DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `name_rewrite`, `url_hinh`, `link`, `metaDescription`, `content`, `date_create`, `date_update`, `status`, `metaKeyword`, `other`, `lang`, `menu_id`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Giới thiệu về Nhận Tiệc Hoa Mai', 'video-gioi-thieu-nha-hang', 'image-1.jpg', '//www.youtube.com/embed/LRi1Tps4NWU', 'Nhận Tiệc Hoa Mai với đội ngũ nhân sự trẻ tuổi, năng động được đào tạo chuyên nghiệp. Đầu bếp kinh nghiệm nấu tiệc phục vụ nhà hàng, khách sạn, tiệc cưới, sinh nhật, liên hoan, ...', '', '2013-12-11 09:38:52', '2013-12-11 22:58:38', 1, 'Video giới thiệu nhà hàng', 0, 'vi', ',11,', 'admin', 'admin', 0),
(2, 'Video nhà hàng', 'video-gioi-thieu-mon-an-nha-hang', 'image-2.jpg', '//www.youtube.com/embed/OSPvEdHSiko', 'Nhận Tiệc Hoa Mai đã liên kết nhiều địa điểm tổ chức tiệc nổi tiếng, sang trọng để cung cấp dịch vụ trọn gói tốt nhất với chi phí thấp nhất.', '', '2013-12-11 09:39:07', '2013-12-11 09:46:21', 1, 'Video giới thiệu món ăn nhà hàng', 0, 'vi', ',11,', 'admin', 'admin', 0),
(3, 'Video giới thiệu món ăn', 'video-gioi-thieu-mon-an', 'image-3.jpg', '//www.youtube.com/embed/bAOO4-AWORU', 'Các món ăn đa dạng, được chế biến phù hợp với khẩu vị, chinh phục cả thực khách khó tính nhất.', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2013-12-11 09:39:18', '2013-12-11 22:57:44', 1, 'Video giới thiệu món ăn', 0, 'vi', ',11,', 'admin', 'admin', 0),
(4, 'Cảm nhận khách hàng', '', 'image-1.jpg', '//www.youtube.com/embed/RWrXt4Fg3Ds', 'Hãy nghe thực khách nói về món ăn do chính Siêu Đầu Bếp Đông Thành thực hiện', NULL, '2013-12-11 11:20:30', '2013-12-11 11:47:25', 1, NULL, 0, 'vi', ',11,', 'admin', 'admin', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
