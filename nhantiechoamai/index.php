<?php
session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$lang = 'vi';

$error_sql = "Lỗi kết nối";
define('does_not_exist','Mục này không tồn tại.');

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
	//$lang = $row_menu_one['lang'];
	
	//include("languages/{$lang}.php");
	include_once('config.php');
	
	$slogan = '<div style="width:400px; float:left; margin-left:25px"><h2><font color="#00A651">www.nhantiec.vn</font> <font color="#FF7C38">'.$row_config['slogan'].'</font></h2></div>';
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	$slider = $tc->slider_banner(1,$idMenu);
	if(mysql_num_rows($slider) > 0){
		$height_slider = 'style="height:160px"';
		$row_slider = mysql_fetch_array($slider);
		$view_slider = '<div id="slider">
			<img src="'.url_slider_image.$row_slider['url_hinh'].'" alt="'.$row_slider['name'].'" style="position:absolute; z-index:2" />
			<h3>'.$row_slider['name'].'</h3>
		</div>';
	}
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/dichvu_list.php'); break;
			case 3 : include_once('blocks/products_list.php'); break;
			case 6 : include_once('blocks/articles_list.php'); break;
			case 4 : include_once('blocks/picture.php'); break;
			case 5 : include_once('blocks/video_list.php'); break;
			case 8 : include_once('blocks/contact.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 6 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->product_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_product_image_thumb; include_once('blocks/products_list.php'); break;
			//case 4 : $qr = $tc->picture_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_catalog_image_thumb; include_once('blocks/picture.php'); break;
			case 5 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_thumb; include_once('blocks/video.php'); break;
			
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
	//$lang = $row_menu_one['lang'];
	
	//include("languages/{$lang}.php");
	include_once('config.php');
	
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
	$url = 'http://'.$domain;
	$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
	$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
	$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
	$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
	
	$slogan = '<div style="width:400px; float:left; margin-left:25px"><h1><font color="#00A651">www.nhantiec.vn</font> <font color="#FF7C38">'.$row_config['slogan'].'</font></h1></div>';
	
	include_once('blocks/slider.php');
	$height_slider = 'style="height:400px"';
	
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

<body>
<div id="wrapper">
	<div id="menu"><?php include_once('blocks/menu.php');?></div>
	<div id="header">
    	<div id="logo"><a href="http://<?php echo $domain; ?>"><img src="images/logo.png" alt="Nhận tiệc Hoa Mai" /></a></div>
        <?php echo $slogan;?>
        <div id="support">
        	<p style="background-color:#333">Hỗ trợ đặt tiệc nhanh</p>
            <p style="background-color:#FF7C38; font-size:130%"><?php echo $row_config['hotline'];?></p>
        </div>
    </div>
    <?php
    echo '<div id="box_slider" '.$height_slider.'><div id="line_slider"></div>'.$view_slider.'</div>';
    echo $include;
	?>
    <div id="footer"><?php echo $row_config['contact_foo'];?><div style="clear:both; height:1px"></div></div>
</div>
<div id="menu_copy">
	<div id="copyright"><?php echo $row_config['copyright'];?></div>
	<div id="menu_foo">
    	<?php
        $menu = $tc->menu(0,3,$lang);
		while($row = mysql_fetch_array($menu)){
			echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
		}
		?>
    </div>
    <div style="clear:both; height:5px"></div>
</div>

<?php mysql_close();?>
</body>
</html>