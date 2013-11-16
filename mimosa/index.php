<?php
session_start();
//session_destroy();
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

include_once("languages/{$lang}.php");
include_once('config.php');

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('_page_',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){ $page = 1; $page_name = ''; }else{ $page = $dm[1]; $page_name = ' - Trang '.$page; }
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];
	
	$navigator = '<div id="navigator"><a href="'.$lang.'/" title="Mimosa">Mimosa</a> <span style="font-size:80%; padding:0 5px 0 20px">&gt;&gt;</span>
    <a href="'.$lang.'/'.$row_menu_one['url'].'" title="'.$row_menu_one['title'].'">'.$row_menu_one['name'].'</a></div>';
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$seo = $tc->seo($domain,$row_menu_one['title'].$page_name,$row_menu_one['metaDescription'].$page_name,$row_menu_one['metaKeyword'],$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/product_list.php'); break;
			case 4 : include_once('blocks/dathang.php'); break;
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

	//$slider = '<div id="slider"><img src="public/images/slider/slider.jpg" /></div>';

	include_once('blocks/slider.php');
	
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
<script type="text/javascript" src="library/jquery.corner.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body oncontextmenu="return false">

<div id="wrapper">

	<div id="header">
        <div id="lang">
        	<p><a href="vi/"><img src="images/vi.gif" alt="vi" /> Vietnamese</a></p>
        	<p><a href="en/"><img src="images/en.gif" alt="en" /> English</a></p>
        </div>
    	<div id="search">
        	<div id="txtsearch"><input type="text" name="txtsearch" value="Search" id="key_search" onclick="if(value=='Search') value=''" /></div>
        	<div id="btnsearch"><input type="button" name="btnsearch" value="&nbsp;" onclick="return SearchGoogle();" /></div>
        </div>
        <script type="text/javascript">
		function SearchGoogle(){
			var key = document.getElementById("key_search").value;
			var site = document.domain;
			var qs = key + "+site:" + site;
			var url = "http://www.google.com.vn/#sclient=psy-ab&hl=vi&site=&source=hp&q=" + qs + "&pbx=1&oq=" + qs + "&aq=f&aqi=&aql=1&gs_sm=e";
			window.open(url, "_blank");
			return false;
		}
		$(document).ready(function() {
			$("#key_search").keydown(function(e){
				if(e.keyCode==13) SearchGoogle();
			});
		});
		</script>
    </div>
    
    <div id="top"><a href=""><img src="images/logo.png" alt="Mimosa" style="margin-top:3px" /></a></div>
    
	<?php
	echo $view_slider;
    include_once('blocks/menu.php');
	echo $navigator;
	?>
    
    <div id="content">
    	<?php echo $include;?>
        <div style="clear:both; height:20px"></div>
    </div>
    
    <div id="menu_foo">
        <?php
		$qr = $tc->menu(0,5,$lang);
		while($row = mysql_fetch_array($qr)){
			echo '<a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a>';
		} ?>
    </div>
    
    <div id="footer">
    	<div id="foo_info"><?php echo "<p style='color:#ff8400; margin-bottom:12px'>{$row_config['tel']}</p>{$row_config['email']}";?></div>
    	<div id="foo_social">
            <?php
			$qr = $tc->menu(0,4);
			while($row = mysql_fetch_array($qr)){
				echo '<a href="'.$row['url'].'"><img src="'.url_danhmuc_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
			} ?>
        </div>
        <div style="clear:both; height:20px"></div>
    </div>
    <div style="clear:both; color:#fefcfa; font-size:120%; background-color:#302F2C; padding:8px 30px"><?php echo $row_config['footer'];?></div>
</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43817164-4', 'mimosaart.com.vn');
  ga('send', 'pageview');
</script>
</body>
</html>