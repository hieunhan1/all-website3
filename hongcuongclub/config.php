<?php
$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config($lang) or die ($error_sql);
$row_config = mysql_fetch_array($config);
mysql_free_result($config);

$domain = $row_config['domain'];
$lang = $row_config['lang'];

$array_color = array('#49A21E','#6E2432','#E32429','#3F2317','#000000','#003A58');

define(max_limit_1,$row_config['max_limit_1']);
define(max_limit_2,$row_config['max_limit_2']);
define(max_limit_3,$row_config['max_limit_3']);
define(max_limit_4,$row_config['max_limit_4']);

define(url_no_image,'images/no-image.jpg');
define(url_default_image,'images/logo.jpg');

define(url_catalog_image,'public/images/catalog/');

define(url_detail_image,'public/images/articles/');
define(url_detail_image_thumb,'public/_thumbs/Images/articles/');

define(url_product_image,'public/images/products/');
define(url_product_image_thumb,'public/_thumbs/Images/products/');

define(url_slider_image,'public/images/slider/');

define(url_library_image,'public/images/thuvien_images/');
define(url_library_image_thumb,'public/_thumbs/Images/thuvien_images/');

define(url_library_video,'public/images/thuvien_video/');
define(url_library_video_thumb,'public/_thumbs/Images/thuvien_video/');