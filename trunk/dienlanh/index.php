<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);
//date_default_timezone_set('Asia/Ho_Chi_Minh');

/*if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];*/

$lang = 'vi';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

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
	$lang = $row_menu_one['lang'];
	
	include("languages/{$lang}.php");
	include_once('config.php');
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/product_list.php'); break;
			case 4 : include_once('blocks/project_2_list.php'); break;
			case 5 : include_once('blocks/project_3_list.php'); break;
			case 6 : include_once('blocks/contact.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->detail_product($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_products_image_thumb; include_once('blocks/project_detail.php'); break;
			
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
	$idMenu = $menu_root = $row_menu_one['id'];
	$lang = $row_menu_one['lang'];
	
	include("languages/{$lang}.php");
	include_once('config.php');
	
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
<link rel="stylesheet" href="library/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="library/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>

<div id="wrapper">
	<div id="header">
    	<div id="logo"><a href="http://<?php echo $domain;?>"><span style="font-size:220%; font-family:'Times New Roman', Times, serif">T-L</span> mobile</a>
        <p style="color:#FFF; font-size:13px; font-weight:100; word-spacing:1px; margin-left:20px">Cung cấp iPhone chính hãng</p></div>
        <div id="search">
        <?php
        $qr = $tc->menu_type(8,0,$lang);
		$row = mysql_fetch_array($qr);
		?>
        <form action="<?php echo $row['url'];?>" method="post" name="search" id="frm_search">
        	<input type="text" name="txtSearch" id="txtSearch" value="Bạn muốn tìm gì" onclick="if(value=='Bạn muốn tìm gì') value='';" onblur="if(value=='') value='Bạn muốn tìm gì';" />
        	<input type="submit" name="btnSearch" id="btnSearch" value="Tìm" />
        </form>
        </div>
        <div id="hotline">
        	<div style="width:auto; float:right; font-weight:bold"><?php $tel = explode(', ',$row_config['tel']); echo $tel[0].'<br />'.$tel[1]?></div>
        	<div style="width:auto; float:right; margin-right:10px; font-size:90%; color:#CCC">Hotline:</div>
        </div>
        <div style="clear:both; height:1px"></div>
    </div>

	<div id="menu">
    <?php
    $qr = $tc->menu(0,2);
	$i = 0;
	while($row = mysql_fetch_array($qr)){
		echo '<div class="item_menu" style="background-color:'.$menu_color[$i].'"><a href="'.$row['url'].'"><h3 style="background:url('.url_catalog_image.$row['url_hinh'].') no-repeat left">'.$row['name'].'</h3></a></div>';
		$i++;
	}
	?>
    </div>
    
    <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">
        <?php
        $qr = $tc->slider_banner(1,$idMenu);
		while($row = mysql_fetch_array($qr)){
			echo '<a href="'.$row['link'].'"><img src="'.url_slider_image.$row['url_hinh'].'" data-thumb="'.url_slider_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" title="'.$row['info'].'" data-transition="slideInLeft" /></a>';
		}
		?>
        </div>
    </div>
    <script type="text/javascript" src="library/nivo-slider/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    <div style="clear:both; height:1px"></div>
    <?php echo $include;?>
    <div style="clear:both; height:20px"></div>
    
    <div id="menu_footer">
    	<div class="menu_footer">
        <?php
        $qr = $tc->menu(0,5);
		while($row = mysql_fetch_array($qr)){
			echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
		}
		?>
        </div>
        <div id="top"><img src="images/top.jpg" alt="top" /></div>
        <script type="text/javascript">
		$(document).ready(function(e) {
            $('#top').click(function(){
				sroll_top();
			});
        });
		</script>
    </div>
    <div id="footer">
    	<div style="width:auto; float:left; line-height:22px"><?php echo $row_config['contact_foo'];?></div>
        <div id="khuyenmai">Nhân tin khuyến mãi và quà tặng</div>
        <div style="clear:both; height:1px"></div>
    </div>
    
</div>
<?php include_once('blocks/qc2ben.php');?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-29777967-2', 'thienlongmobile.vn');
  ga('send', 'pageview');
</script>
</body>
</html>
<?php mysql_close();?>