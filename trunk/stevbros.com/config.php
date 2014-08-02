<?php
$error_sql = "Lỗi kết nối";
define('does_not_exist','Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config() or die ($error_sql);
$row_config = mysql_fetch_array($config);
mysql_free_result($config);

$domain = $row_config['domain'];
$lang = $row_config['lang'];
define('max_news',$row_config['max_news']);
define('max_product',$row_config['max_product']);
define('max_product_home',$row_config['max_picture']);
define('url_slider_image','public/images/slider_banner/');
define('url_no_image','public/no-image.jpg');
define('url_default_image','images/logo.png');
define('url_danhmuc_image','public/images/catalog/');
define('url_detail_thumb_image','public/_thumbs/Images/articles/');
define('url_product_thumb_image','public/images/articles/');