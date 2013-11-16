<?php
include_once('class/class.trangchu.php');
$tc = new trangchu();

$config = $tc->config() or die (error_sql);
$row_config = mysql_fetch_array($config);
$max_results = $row_config['max_news'];

$domain = $row_config['domain'];
//$lang = $row_config['lang'];

define(error_sql,'Lỗi kết nối');
define(does_not_exist,'Mục này không tồn tại.');
define(home_page,'trang-chu');

define(max_news,$row_config['max_news']);
define(max_product,$row_config['max_product']);
define(max_picture,$row_config['max_picture']);
define(max_product_home,$row_config['max_video']);
define(url_slider_image,'public/images/slider_banner/');
define(url_no_image,'images/no-image.jpg');
define(url_default_image,'images/logo.png');
define(url_danhmuc_image,'public/images/catalog/');
define(url_articles_thumb,'public/_thumbs/Images/articles/');
define(url_library_thumb,'public/_thumbs/Images/hinhanh/');
define(url_library,'public/images/photogallery/');
define(url_product_thumb,'public/_thumbs/Images/products/');
define(url_product,'public/images/products/');

define(url_download_file,'public/files/');