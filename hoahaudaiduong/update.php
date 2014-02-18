<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);

$lang = 'vi';

$error_sql = "Lỗi kết nối";
define('does_not_exist','Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

/*
$qr = "UPDATE  `menu_admin` SET  `name`='Thí sinh',`url` =  'thisinh' WHERE  `menu_admin`.`id` =6";
mysql_query($qr);

$qr = "UPDATE  `menu_admin` SET  `name`='Bộ sưu tập',`url` =  'bosuutap',`status` =  '1' WHERE  `menu_admin`.`id` =7";
mysql_query($qr);

$qr = "UPDATE  `menu_admin` SET  `name`='Photo',`url` =  'photo_gallery',`status` =  '1' WHERE  `menu_admin`.`id`=8";
mysql_query($qr);

$qr = "UPDATE  `menu_admin` SET  `name`='Video',`url` =  'video',`status` =  '1' WHERE  `menu_admin`.`id` =9";
mysql_query($qr);
*/

/*$qr = mysql_query("select name from menu");
while($row = mysql_fetch_array($qr)){
	echo $row['name'];
}*/

/*$qr = "TRUNCATE TABLE  `bosuutap_images`";
mysql_query($qr);*/

/*
$qr = "ALTER TABLE  `video` CHANGE  `description`  `metaDescription` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL";
mysql_query($qr);

$qr = "ALTER TABLE  `video` CHANGE  `link_video`  `link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL";
mysql_query($qr);
*/

/*$qr = "UPDATE  `slider_banner_position` SET  `name` =  'Partner 160 x 95 px' WHERE  `slider_banner_position`.`id` =2 LIMIT 1 ";
mysql_query($qr);*/

/*$qr = "CREATE TABLE `bosuutap` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3";
mysql_query($qr);

$qr = "INSERT INTO `bosuutap` VALUES (1, 'Màu Ký Ức', 'mau-ky-uc', 'mau-ky-uc-13.jpg', 'Khi phố phường bừng lên sắc đỏ của đèn ông sao, đèn kéo quân và thấp thoáng những tấm bánh trung thu được bày bán trong cửa hàng... Như chợt nhớ trung thu xưa, như muốn giữ lại hồn Việt, NTK Võ Việt Chung đã tái hiện lại nét trung thu cổ truyền qua hình ảnh những cô gái Hà Nội e ấp trong tà áo dài chuẩn bị Tết.\r\n', '<p>Khi phố phường bừng lên sắc đỏ của đèn ông sao, đèn kéo quân và thấp thoáng những tấm bánh trung thu được bày bán trong cửa hàng... Như chợt nhớ trung thu xưa, như muốn giữ lại hồn Việt, NTK Võ Việt Chung đã tái hiện lại nét trung thu cổ truyền qua hình ảnh những cô gái Hà Nội e ấp trong tà áo dài chuẩn bị Tết. BST áo dài của NTK Võ Việt Chung lấy cảm hứng từ nghệ thuật sắp đặt trên vải, với hình dáng từng chiếc lá được cắt tỉa công phu trên từng chiếc áo gợi vẻ nhẹ nhàng, bay bổng, say trong nét thu quyến rũ</p>\r\n\r\n<p><strong>Concept &amp; Cretive: Minh Phượng</strong></p>\r\n\r\n<p><strong>Art Director: Long Lê</strong></p>\r\n\r\n<p><strong>Model:</strong></p>\r\n\r\n<p style=\"margin-left: 40px;\">- Á hậu Việt Nam 2012 Hoàng Anh</p>\r\n\r\n<p style=\"margin-left: 40px;\">- Dương Thị Dung</p>\r\n\r\n<p style=\"margin-left: 40px;\">- Quỳnh Nga</p>\r\n\r\n<p><strong>Make up &amp; Hair: Quốc Hưng</strong></p>\r\n\r\n<p><strong>Photographer: Kim Won Yong</strong></p>\r\n\r\n<p><strong>Clothes: Võ Việt Chung</strong></p>\r\n', 'Màu Ký Ức', 0, 'vi', ',7,', 1, '2014-01-22 09:21:54', '2014-01-22 09:23:03', 'admin', 'admin', 0)";
mysql_query($qr);

$qr = "INSERT INTO `bosuutap` VALUES (2, 'Quà Tặng Cuả Thượng Đế', 'qua-tang-cua-thuong-de', 'qua-tang-cua-thuong-de-10.jpg', 'Lấy cảm hứng sáng tạo từ bộ phim AVATAR của đạo diễn lừng danh thế giới James Cameron. NTK thời trang Việt Nam Võ Việt Chung đưa chúng ta đến 1 hành tinh huyền bí, đầy màu sắc trong 1 khu rừng hoang sơ cùng với các sinh vật và thực vật hoang dã', '<h2>Lấy cảm hứng sáng tạo từ bộ phim AVATAR của đạo diễn lừng danh thế giới James Cameron. NTK thời trang Việt Nam Võ Việt Chung đưa chúng ta đến 1 hành tinh huyền bí, đầy màu sắc trong 1 khu rừng hoang sơ cùng với các sinh vật và thực vật hoang dã.</h2>\r\n\r\n<p>Chính từ những cảnh đẹp lung linh và huyền ảo do Võ Việt Chung đã thiết kế những gì đẹp nhất từ cánh hoa dại hay vết chạy dài trên những đóm lông của thú rừng hoang dã. Các tiết tấu độc đáo trên từng mẫu thiết kế là 1 bản nhạc cuả núi rừng màu sắc đặc trưng như nâu, vàng, xám ,đen ... trên chất liệu voan, the, ren.&nbsp;</p>\r\n\r\n<p>Và hơn hết điều mà NTK mong muốn là gửi thông điệp đến mọi người hãy yêu thiên nhiên hơn nữa, hãy cùng bảo vệ mẹ trái đất thân thương của chúng ta. Tất cả hoà hợp lại với nhau đưa chúng ta liên tưởng đến bộ phim Avatar lừng danh mà NTK Võ Việt Chung muốn gửi đến cho tất cả quý vị</p>\r\n\r\n<p><strong>Designer &amp; Stylist : Vo Viet Chung</strong></p>\r\n\r\n<p><strong>Photographer : Long Thủy</strong></p>\r\n\r\n<p><strong>Make up : Nguyễn Hùng</strong></p>\r\n\r\n<p><strong>Hair : Hồ Hữu Hiền</strong></p>\r\n\r\n<p><strong>Model : Như Vân - Huyền Trang</strong></p>\r\n', 'Quà Tặng Cuả Thượng Đế', 0, 'vi', ',7,', 1, '2014-01-22 09:27:40', '2014-01-22 11:25:02', 'admin', 'admin', 0)";
mysql_query($qr);

$qr = "CREATE TABLE `bosuutap_images` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10";
mysql_query($qr);*/

/*$qr = "CREATE TABLE `thisinh` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5";
mysql_query($qr);

$qr = "CREATE TABLE `thisinh_images` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8";
mysql_query($qr);*/

$qr = "UPDATE `menu_position` SET  `name`='Social',`delete`='0' WHERE `id` =4 LIMIT 1";
mysql_query($qr);