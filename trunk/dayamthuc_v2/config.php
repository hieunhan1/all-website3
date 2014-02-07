<?php
$config = $tc->config($lang) or die ($error_sql);
$row_config = mysql_fetch_array($config);

$domain = $row_config['domain'];
$lang = $row_config['lang'];

define(max_limit_1,$row_config['max_limit_1']);
define(max_limit_2,$row_config['max_limit_2']);
define(max_limit_3,$row_config['max_limit_3']);
define(max_limit_4,$row_config['max_limit_4']);

define(url_no_image,'images/no-image.jpg');
define(url_default_image,'images/logo.jpg');

define(url_catalog_image,'upload/images/danhmuc/');
define(url_slider_image,'upload/images/slider_banner/');

define(url_detail_image,'upload/images/articles/');
define(url_detail_image_thumb,'upload/_thumbs/Images/articles/');

define(url_picture_image,'upload/images/photogallery/');
define(url_picture_image_thumb,'upload/_thumbs/Images/photogallery/');

define(url_video_image,'upload/images/video/');
define(url_video_image_thumb,'upload/_thumbs/Images/video/');