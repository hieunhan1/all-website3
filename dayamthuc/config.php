<?php
$linkpost = 'xem-tin/';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config() or die ($error_sql);
$row_config = mysql_fetch_array($config);
$max_results = $row_config['max_news'];

$domain = $row_config['domain'];
$lang = $row_config['lang'];
define(max_news,$row_config['max_news']);
define(max_product,$row_config['max_product']);
define(max_picture,$row_config['max_picture']);
define(max_video,$row_config['max_video']);
define(url_slider_image,'upload/images/slider_banner/');
define(url_no_image,'upload/no-image.jpg');
define(url_default_image,'images/logo.png');
define(url_danhmuc_image,'upload/images/danhmuc/');
define(url_articles_thumb_image,'upload/_thumbs/Images/articles/');
define(url_library_thumb_image,'upload/_thumbs/Images/photogallery/');
define(url_library_image,'upload/images/photogallery/');
define(url_video_thumb_image,'upload/_thumbs/Images/video/');
define(url_video_image,'upload/images/video/');