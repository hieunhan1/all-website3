<?php
$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config() or die ($error_sql);
$row_config = mysql_fetch_array($config);
mysql_free_result($config);

$domain = $row_config['domain'];

define(max_news,$row_config['max_news']);
define(max_product,$row_config['max_product']);
define(max_news_home,$row_config['max_picture']);
define(url_slider_image,'public/images/slider/');

define(url_no_image,'images/no-image.jpg');

define(url_default_image,'images/logo.jpg');

define(url_avarta_image,'public/avarta/');

define(url_danhmuc_image,'public/images/catalog/');

define(url_detail_image_thumb,'public/_thumbs/Images/articles/');
define(url_detail_image,'public/images/articles/');

//$qr = mysql_query("INSERT INTO `forum_menu_admin` VALUES (4,'Thông tin, bài viết','forum_info',NULL,4,1,0)");
//mysql_query("ALTER TABLE  `forum_info` ADD  `other` BOOL NULL DEFAULT  '0' AFTER  `content` ;");