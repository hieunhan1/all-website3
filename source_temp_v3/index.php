<?php
session_start();
$lang = 'vi';

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
		if($row_menu_one['url_hinh']=='') $seo_image = "http://{$domain}/".url_default_image;
		else $seo_image = "http://{$domain}/".url_catalog_image.$row_menu_one['url_hinh'];
		$seo_url		 = "http://{$domain}/".$row_menu_one['url'];
		$seo_title 		 = strip_tags($row_menu_one['title'], '');
		$seo_title		 = str_replace('"', ' ', $seo_title);
		$seo_description = strip_tags($row_menu_one['metaDescription'],'');
		$seo_description = str_replace('"', ' ', $seo_description);
		$seo_keyword 	 = strip_tags($row_menu_one['metaKeyword'],'');
		$seo_keyword	 = str_replace('"',' ',$seo_keyword);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			
			default: echo '<div id="content"><p style="height:200px; padding:20px 10px"><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
		
		if($row_detail['url_hinh']!='') $seo_image = "http://{$domain}/".$image_link.$row_detail['url_hinh'];
		else $seo_image = "http://{$domain}/".url_default_image;
		$seo_url		 = "http://{$domain}/".$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$seo_title 		 = strip_tags($row_detail['title'], '');
		$seo_title		 = str_replace('"', ' ', $seo_title);
		$seo_description = strip_tags($row_detail['metaDescription'],'');
		$seo_description = str_replace('"', ' ', $seo_description);
		$seo_keyword 	 = strip_tags($row_detail['metaKeyword'],'');
		$seo_keyword	 = str_replace('"',' ',$seo_keyword);
	}
}else{
	$menu_one = $tc->menu_type(1,0,$lang);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	
	if($row_menu_one['url_hinh']=='') $seo_image = "http://{$domain}/".url_default_image;
	else $seo_image = "http://{$domain}/".url_catalog_image.$row_menu_one['url_hinh'];
	$seo_url		 = 'http://'.$domain;
	$seo_title 		 = strip_tags($row_menu_one['title'], '');
	$seo_title		 = str_replace('"', ' ', $seo_title);
	$seo_description = strip_tags($row_menu_one['metaDescription'],'');
	$seo_description = str_replace('"', ' ', $seo_description);
	$seo_keyword 	 = strip_tags($row_menu_one['metaKeyword'],'');
	$seo_keyword	 = str_replace('"',' ',$seo_keyword);
		
	$include = ob_start();
	include_once('blocks/home.php');
	$include = ob_get_clean();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $tc->seo($domain, $seo_title.$page_name, $seo_description.$page_name, $seo_keyword, $seo_image, $seo_url); ?>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="wrapper">
	

    <div id="footer"></div>
</div>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>

<?php
mysql_close();
?>
</body>
</html>