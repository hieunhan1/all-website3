<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);
//date_default_timezone_set('Asia/Ho_Chi_Minh');

if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

include("languages/{$lang}.php");
include_once('config.php');

$dt = $_GET['info'];

$qr = $tc->info_detail($dt);
$row_detail = mysql_fetch_array($qr);
$image_link = url_detail_image_thumb;

($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.$image_link.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
$title = strip_tags($row_detail['name'], ''); $title = str_replace('"',' ',$title);
$description = strip_tags($row_detail['metaDescription'],''); $description = str_replace('"',' ',$description);
$keyword = strip_tags($row_detail['metaKeyword']); $keyword = str_replace('"',' ',$keyword);
$seo = $tc->seo($domain,$title,$description,$keyword,$image,$url);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<style>
body{font-family:Arial, Helvetica, sans-serif; font-size:11pt}
.viewpost{line-height:23px}
.viewpost p, .viewpost div {margin:10px 0}
.viewpost li{margin-left:35px}
h1{font-size:140%; line-height:25px; color:#DA251E; margin-bottom:10px}
h2, h3, h4, h5, h6 {font-size:100%}
</style>
</head>
<body>

	<div style="margin-bottom:20px">
    	<img src="images/logo.png" alt="SIUP" style="float:left" />
    	<div style="width:auto; float:right; margin-top:40px"><a href="javascript:window.print();">In trang</a> (Ctrl + P)</div>
        <div style="clear:both; height:1px"></div>
    </div>
	<h1 id="h1_dm"><?php echo $row_detail['name'];?></h1>
	<div class="viewpost"><?php echo $row_detail['content'];?></div>

</body>
</html>