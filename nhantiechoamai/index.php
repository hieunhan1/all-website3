<?php
session_start();
$lang = 'vi';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('_page_',$dm);
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
			case 3 : include_once('blocks/products_list.php'); break;
			case 4 : include_once('blocks/picture_list.php'); break;
			case 5 : include_once('blocks/video_list.php'); break;
			case 6 : include_once('blocks/contact.php'); break;
			case 7 : include_once('blocks/giohang.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->product_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_product_image_thumb; include_once('blocks/products.php'); break;
			case 4 : $qr = $tc->picture_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_catalog_image_thumb; include_once('blocks/picture.php'); break;
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
        <h1><font color="#00A651">www.nhantiec.vn</font> <font color="#FF7C38">- Nhận đặt tiệc tại nhà, với giá ưu đãi!</font></h1>
        <div id="support">
        	<p style="background-color:#333">Hỗ trợ đặt tiệc nhanh</p>
            <p style="background-color:#FF7C38; font-size:130%">0937 501 457</p>
        </div>
    </div>
    <div id="box_slider">
    	<div id="line_slider"></div>
        <?php include_once('blocks/slider.php');?>
    </div>
    
    <div id="home_dv">
    	<div class="home_dv_box">
        	<div class="home_dv_img"><img src="public/_thumbs/Images/articles/image-1.jpg" alt="" /></div>
            <div class="home_dv_info" style="background-color:#49A21E">
            	<h2>Danh sách MENU TIỆC</h2>
                <p>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentes. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante.</p>
            </div>
        </div>
    	<div class="home_dv_box" style="margin:0 15px 15px">
        	<div class="home_dv_img"><img src="public/_thumbs/Images/articles/image-1.jpg" alt="" /></div>
            <div class="home_dv_info" style="background-color:#49A21E">
            	<h2>Danh sách MENU TIỆC</h2>
                <p>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentes. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante.</p>
            </div>
        </div>
    	<div class="home_dv_box">
        	<div class="home_dv_img"><img src="public/_thumbs/Images/articles/image-1.jpg" alt="" /></div>
            <div class="home_dv_info" style="background-color:#49A21E">
            	<h2>Danh sách MENU TIỆC</h2>
                <p>Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentes. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante.</p>
            </div>
        </div>
        <div style="clear:both; height:1px"></div>
    </div>
    
    <div class="home_item">
    	<h3>NHẬN XÉT CỦA THỰC KHÁCH</h3>
        <div class="home_item_line"></div>
        <div class="home_item_info viewpost">
        	<p>Maecenas sed ante. In hacei haasse platea dictumst. Cum sociis natoque penatibus et magnis dis enarturient montes, nascetur ridiculus mus. Proin semper nisi puinar nunc commodo imperdiet. Integer pede. Morbi eu nisl. Praesent purus. Aliquam nequate. Aenean urna. Quisque placerat erat quis neque.</p>
            <div class="img_botron"><img src="public/_thumbs/Images/articles/image-7.jpg" alt="" /></div>
            <div style="clear:both; height:1px"></div>
        </div>
        <div class="home_item_line"></div>
    </div>
    <div style="clear:both; height:20px"></div>
     <div class="home_item">
    	<h3>LIÊN HỆ VỚI CHÚNG TÔI</h3>
        
    </div>
    
    <div id="footer">Địa chỉ: 21 DCT 15, Khu phố 1, P.Tân Hưng Thuận, Q.12, TP.HCM            Phone: +84 8 937 501 457            Email: support@nhantiec.vn</div>
</div>
<?php mysql_close();?>
</body>
</html>