<?php
ob_start('ob_gzhandler');
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

include_once("languages/{$lang}.php");
include_once('config.php');

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('_trang_',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){ $page = 1; $page_name = ''; }else{ $page = $dm[1]; $page_name = ' - Trang '.$page; }
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];

	if(!@$_GET['detail']){
		$navigator = '<div class="title"><h1>'.$row_menu_one['title'].'</h1></div>';
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$seo = $tc->seo($domain,$row_menu_one['title'].$page_name,$row_menu_one['metaDescription'].$page_name,$row_menu_one['metaKeyword'],$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/product_list.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			default: $view_post = '<font color="#FF0000"><b>Could not be found</b></font>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $detail = $tc->detail_info($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/articles.php'); break;
			case 3 : $detail = $tc->detail_product($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/product_list.php'); break;
			default: echo '<div id="left"><p><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
		
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_thumb_image.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$seo = $tc->seo($domain,$row_detail['name'],$row_detail['description'],$row_detail['metaKeyword'],$image,$url);
	}
}else{
	$menu_one = $tc->menu_one(home_page);
	$row_menu_one = mysql_fetch_array($menu_one);
	$url = 'http://'.$domain;
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
	$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);

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
<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>

<div id="wrapper">
	<?php
    include_once('blocks/header.php');
    include_once('blocks/menu.php');
    include_once('blocks/slider.php');
	if(@$danhmuc) include_once('blocks/navigator.php');
    echo $include;
    include_once('blocks/right.php');
	?>
    <div style="clear:both; height:20px"></div>
</div>

<div style="width:100%; height:70px; line-height:70px; background-color:#171717; color:#FFF">
	<div style="width:940px; margin:auto">
    	<div style="width:auto; float:left; color:#CCC"><?php echo $row_config['footer'];?></div>
        <div style="width:auto; float:right; color:#CCC"><?php echo $row_config['facebook'];?></div>
    </div>
</div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43817164-2', 'dieuthuan.com.vn');
  ga('send', 'pageview');
</script>
</body>
</html>