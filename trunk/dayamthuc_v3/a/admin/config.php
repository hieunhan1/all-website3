<?php
$max_results = 30;
define(DIR, '../../class/');

include_once(DIR.'class.quantri.php');
$qt = new quantri();

include_once(DIR.'class.form.php');
$form = new form();

include_once(DIR.'class.sql.php');
$sql = new sql();

$error_sql = "<p class='error'>Không truy vấn được.</p>";
$required = "<span style='color:red'>*</span>";

/*ảnh đại điện*/
define('url_articles_image_thumb','../../upload/_thumbs/Images/articles/');
define('url_catalog_image_thumb','../../upload/_thumbs/Images/danhmuc/');
define('url_slider_image_thumb','../../upload/_thumbs/Images/slider_banner/');
define('url_photos_image_thumb','../../upload/_thumbs/Images/photogallery/');
define('url_video_image_thumb','../../upload/_thumbs/Images/video/');