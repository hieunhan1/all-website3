<?php
$error_sql = "Lỗi kết nối";

include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config($lang) or die ($error_sql);
$row_config = mysql_fetch_array($config);
mysql_free_result($config);

$domain = $row_config['domain'];
$lang = $row_config['lang'];

define('max_limit_1',$row_config['max_limit_1']);
define('max_limit_2',$row_config['max_limit_2']);
define('max_limit_3',$row_config['max_limit_3']);
define('max_limit_4',$row_config['max_limit_4']);

define('url_no_image','images/no-image.jpg');
define('url_default_image','images/logo.png');

define('url_catalog_image','public/images/catalog/');
define('url_detail_image','public/images/articles/');
define('url_detail_image_thumb','public/_thumbs/Images/articles/');
define('url_thisinh_image','public/images/thisinh/');
define('url_thisinh_image_thumb','public/_thumbs/Images/thisinh/');
define('url_video_image','public/images/video/');
define('url_video_image_thumb','public/_thumbs/Images/video/');
define('url_photo_image','public/images/photo/');
define('url_photo_image_thumb','public/_thumbs/Images/photo/');
define('url_slider_image','public/images/slider/');