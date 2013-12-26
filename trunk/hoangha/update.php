<?php
include_once('config.php');

/*
$pwd = md5('Hoangha#123*');
$qr = "UPDATE forum_users SET Password='{$pwd}' WHERE id<>25";
mysql_query($qr);
*/

//mysql_query("ALTER TABLE  `support` ADD  `chucvu` VARCHAR( 200 ) NOT NULL AFTER  `name`");

/*mysql_query("ALTER TABLE  `booking` ADD  `mathang` VARCHAR( 100 ) NOT NULL AFTER  `message` ");
mysql_query("ALTER TABLE  `booking_form` ADD  `email` VARCHAR( 50 ) NOT NULL AFTER  `ma` ");*/

/*mysql_query("ALTER TABLE  `booking` ADD  `option` VARCHAR( 50 ) NULL AFTER  `nhietdo` , ADD  `volume_weight` VARCHAR( 100 ) NULL AFTER  `option`");*/
/*mysql_query("ALTER TABLE  `booking` DROP  `option`");
mysql_query("ALTER TABLE  `booking_banggia` ADD  `other` VARCHAR( 60 ) NULL AFTER  `service` ");*/
//mysql_query("ALTER TABLE  `booking` ADD  `other` VARCHAR( 30 ) NULL AFTER  `nhietdo`");
//mysql_query("UPDATE info SET `delete`=0 WHERE id=361");


/*
//tracing_express
mysql_query("
CREATE TABLE `tracing_express` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `noi_gui` varchar(50) NOT NULL,
  `buucuc_gui` varchar(50) NOT NULL,
  `ngay_gui` varchar(20) NOT NULL,
  `loaihang` varchar(50) NOT NULL,
  `nguoi_nhan` varchar(100) NOT NULL,
  `buucuc_nhan` varchar(50) NOT NULL,
  `trongluong` varchar(10) NOT NULL,
  `lang` varchar(2) default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci");

//tracing_express_detail
mysql_query("
CREATE TABLE `tracing_express_detail` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `lang` varchar(2) default 'vi',
  `status` tinyint(1) default '1',
  `id_tracing_express` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci");
*/

/*mysql_query("
UPDATE  `menu_admin` SET  `name` =  'Tracing Express',
`url` =  'tracing_express',
`order` =  '5',
`status` =  '1',
`delete` =  '0' WHERE  `menu_admin`.`id` =5 LIMIT 1 ;
");*/

/*mysql_query("DROP TABLE `tracing_express`");
mysql_query("DROP TABLE `tracing_express_detail`");*/

mysql_query("
INSERT INTO `tracing_express` VALUES (1, '8930102035 ', 'HỒ CHÍ MINH ', 'TÂN SƠN NHẤT ', '2013-12-24 02:00', 'Chứng từ ', 'Anh Văn B', 'CN HỒ CHÍ MINH ', '796.0 ', 'vi', 1, '2013-12-26 14:07:43', '2013-12-27 08:00:00', 'admin', 'admin', 0);
INSERT INTO `tracing_express` VALUES (2, '8930102036', 'HỒ CHÍ MINH ', 'TÂN SƠN NHẤT ', '2013-12-31 14:52', 'Chứng từ 2', 'Trần Văn A', 'CN HỒ CHÍ MINH ', '1000', 'vi', 0, '2013-12-26 14:52:37', '2014-01-04 14:52:00', 'admin', NULL, 0);

INSERT INTO `tracing_express_detail` VALUES (1, 'TRUNG TÂM KHAI THÁC I', 'TSN đóng bảng kê (mã: BK_3100_TSN) tới TTKT1', 'vi', 1, 1, '2013-12-26 14:23:47', '2013-12-25 01:30:00', 'admin', NULL, 0);
INSERT INTO `tracing_express_detail` VALUES (2, 'TRUNG TÂM KHAI THÁC II', 'Nhận tại TTKT1 bởi Lê Thái Bình', 'vi', 1, 1, '2013-12-26 14:26:11', '2013-12-26 13:00:00', 'admin', NULL, 0);
INSERT INTO `tracing_express_detail` VALUES (3, 'TRUNG TÂM KHAI THÁC II', 'Nguyễn Lam Quỳnh Như phân công phát cho Bùi Nam Hà', 'vi', 1, 1, '2013-12-26 14:26:37', '2013-12-26 22:30:00', 'admin', NULL, 1);
INSERT INTO `tracing_express_detail` VALUES (4, 'TRUNG TÂM KHAI THÁC III', 'Thành công', 'vi', 1, 1, '2013-12-26 14:28:25', '2013-12-27 14:28:00', 'admin', NULL, 1);
INSERT INTO `tracing_express_detail` VALUES (5, 'TRUNG TÂM KHAI THÁC V', 'OK', 'vi', 1, 1, '2013-12-26 14:29:06', '2013-12-27 22:00:00', 'admin', NULL, 1);
INSERT INTO `tracing_express_detail` VALUES (6, 'HCM', 'Bắt đầu đi', 'vi', 1, 2, '2013-12-26 14:54:27', '2013-12-31 01:00:00', 'admin', NULL, 0);
INSERT INTO `tracing_express_detail` VALUES (7, 'HN', 'Nhận phát', 'vi', 1, 2, '2013-12-26 14:54:52', '2014-01-02 03:00:00', 'admin', NULL, 0)

");