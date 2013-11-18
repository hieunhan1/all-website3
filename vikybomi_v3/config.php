<?php
$config = $tc->config($lang) or die ($error_sql);
$row_config = mysql_fetch_array($config);
mysql_free_result($config);

$domain = $row_config['domain'];
if($domain=='') header('location: http://www.vikybomi.com.vn');

$lang = $row_config['lang'];

define(max_limit_1,$row_config['max_limit_1']); //info
define(max_limit_2,$row_config['max_limit_2']); //product
define(max_limit_3,$row_config['max_limit_3']);
define(max_limit_4,$row_config['max_limit_4']);

define(url_no_image,'images/no-image.jpg');
define(url_default_image,'images/logo.jpg');

define(url_catalog_image,'upload/images/danhmuc/');
define(url_catalog_image_thumb,'upload/_thumbs/Images/danhmuc/');
define(url_detail_image,'upload/images/info/');
define(url_detail_image_thumb,'upload/_thumbs/Images/info/');
define(url_product_image,'upload/images/products/');
define(url_product_image_thumb,'upload/_thumbs/Images/products/');
define(url_slider_image,'upload/images/slider_banner/');
define(url_library_image,'upload/images/thuvienanh/');
define(url_library_image_thumb,'upload/_thumbs/Images/thuvienanh/');
define(url_video,'upload/images/video/');
define(url_video_thumb,'upload/_thumbs/Images/video/');