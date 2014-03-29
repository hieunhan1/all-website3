<?php
session_start();
$lang = 'vi';

define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

include_once('config.php');

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('/',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){
		$page = 1; $page_name = '';
	}else{
		$page = $dm[1]; $page_name = ' - Page '.$page;
	}
	
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];
	
	if($row_menu_one['parent_id']!=0) $menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	else $menu_root = $idMenu;
	
	if(!@$_GET['detail'] || $danhmuc=='danh-muc'){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/chuongtrinh_list.php'); break;
			case 4 : include_once('blocks/lichkhaigiang.php'); break;
			case 5 : include_once('blocks/photo_list.php'); break;
			case 6 : include_once('blocks/video_list.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			case 8 : include_once('blocks/dangky.php'); break;
			case 9 : include_once('blocks/thuvien.php'); break;
			case 11 : include_once('blocks/tuyendung_list.php'); break;
			
			default: echo '<div id="content"><p style="height:200px; padding:20px 10px"><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			case 6 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_image; include_once('blocks/video.php'); break;
			case 11 : $qr = $tc->tuyendung_detail($dt); $row_detail = mysql_fetch_array($qr); include_once('blocks/tuyendung.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
		
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.$image_link.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$title = strip_tags($row_detail['name'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_detail['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_detail['metaKeyword']); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title,$description,$keyword,$image,$url);
	}
}else{
	$menu_one = $tc->menu_type(1,0,$lang);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
	$url = 'http://'.$domain;
	$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
	$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
	$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
	$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
	
	$include = ob_start();
	include_once('blocks/home.php');
	$include = ob_get_clean();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="wrapper">
	
</div>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>

<script type="text/javascript" src="library/partner/common.js"></script>
<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>

<?php

mysql_close();
?>
</body>
</html>