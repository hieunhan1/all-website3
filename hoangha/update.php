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
CREATE TABLE  `tracing_express` (
 `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 `name` VARCHAR( 50 ) NOT NULL ,
 `ngay_gui` DATETIME NOT NULL ,
 `nguoi_nhan` VARCHAR( 100 ) NOT NULL ,
 `status` BOOL NULL DEFAULT  '1',
 `date_create` DATETIME NOT NULL ,
 `date_update` DATETIME NULL ,
 `user_create` VARCHAR( 20 ) NOT NULL ,
 `user_update` VARCHAR( 20 ) NULL ,
 `delete` BOOL NULL DEFAULT  '0'
) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci");

mysql_query("ALTER TABLE  `tracing_express` ADD  `lang` VARCHAR( 2 ) NULL DEFAULT  'vi' AFTER  `nguoi_nhan` ");

//tracing_express_detail
mysql_query("
CREATE TABLE  `tracing_express_detail` (
 `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 `name` VARCHAR( 100 ) NOT NULL ,
 `vitri` VARCHAR( 100 ) NOT NULL ,
 `notes` TEXT NOT NULL ,
 `lang` VARCHAR( 2 ) NULL DEFAULT  'vi',
 `status` BOOL NULL DEFAULT  '1',
 `date_create` DATETIME NOT NULL ,
 `date_update` DATETIME NULL ,
 `user_create` VARCHAR( 20 ) NOT NULL ,
 `user_update` VARCHAR( 20 ) NULL ,
 `delete` BOOL NULL DEFAULT  '0'
) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci");

mysql_query("ALTER TABLE  `tracing_express_detail` ADD  `trangthai` VARCHAR( 100 ) NOT NULL AFTER  `vitri`");
mysql_query("ALTER TABLE  `tracing_express_detail` ADD  `id_tracing_express` INT NOT NULL AFTER  `status`");
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
INSERT INTO  `hoangha`.`menu_type` (
`id` ,
`name` ,
`delete`
)
VALUES (
'10',  'Tracing Express',  '0'
)
");