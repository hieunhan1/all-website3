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

/*$qr = "TRUNCATE TABLE  `video`";
mysql_query($qr);*/

/*
$qr = "ALTER TABLE  `video` CHANGE  `description`  `metaDescription` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL";
mysql_query($qr);

$qr = "ALTER TABLE  `video` CHANGE  `link_video`  `link` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL";
mysql_query($qr);
*/

$qr = "UPDATE  `slider_banner_position` SET  `name` =  'Partner 160 x 95 px' WHERE  `slider_banner_position`.`id` =2 LIMIT 1 ";
mysql_query($qr);