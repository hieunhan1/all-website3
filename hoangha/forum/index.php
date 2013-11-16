<?php
session_start();
include_once('config.php');

$menu_one = $tc->menu_one('thong-bao-chung');
$row_menu_one = mysql_fetch_array($menu_one);
$idMenu = $row_menu_one['id'];
$url = 'http://'.$domain;
($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);

if(!@$_SESSION['idUser']){
	$include = ob_start();
	include_once('blocks/login.php');
	$include = ob_get_clean();
}else{
	$user_info = '<span style="color:#FFF; font-weight:bold; padding:0 5px">Chào bạn: '.$_SESSION['Username'].'</span>
	<a href="?type=thongtin">Thông tin tài khoản</a>
	<a href="?type=logout">Logout</a>';
	if(@$_GET['type']){
		$type = $_GET['type'];
		if($type=='catalog'){
			$include = ob_start();
			include_once('blocks/catalog.php');
			$include = ob_get_clean();
		}elseif($type=='detail'){
			$include = ob_start();
			include_once('blocks/detail.php');
			$include = ob_get_clean();
		}elseif($type=='logout'){
			$tc->logout();
			header("location: http://{$domain}");
		}elseif($type=='thongtin'){
			$include = ob_start();
			include_once('blocks/thongtin.php');
			$include = ob_get_clean();
		}
	}else{
		$include = ob_start();
		include_once('blocks/home.php');
		$include = ob_get_clean();
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="top"><div id="menu_top"><a href="http://www.hoangha.com" style="float:left">Về trang chủ Hoàng Hà</a><?php echo $user_info;?></div></div>


<div id="wrapper">
	<div id="header"><div id="logo"><a href=""><img src="images/logo.jpg" alt="Hoang Ha International Logistics" /></a></div></div>
    <?php
    /*menu home*/
	echo '<div id="home_menu">';
	$qr = $tc->menu(0,2);
	$i = 0;
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i==4 || $i==8) echo '<div class="item_home_menu" style="margin:0 0 13px 0;background:url('.url_danhmuc_image.$row['url_hinh'].') no-repeat top left #00AEED"><a href="?type=catalog&id='.$row['id'].'">'.$row['name'].'</a></div>';
		else echo '<div class="item_home_menu" style="background:url('.url_danhmuc_image.$row['url_hinh'].') no-repeat top left #00AEED"><a href="?type=catalog&id='.$row['id'].'">'.$row['name'].'</a></div>';
	}
	echo '</div>';
	?>
    <div style="clear:both; height:10px"></div>
    <h1><?php echo $row_menu_one['title'];?></h1>
    <h2><?php echo $row_menu_one['metaDescription'];?></h2>
    
    <div id="loading"></div>
    <div id="error"></div>
    <div id="message"></div>
    <div id="data"></div>
    
    <?php echo $include; ?>
    
    <div style="clear:both; height:50px"></div>
    <div id="footer">
    	<div id="footer_m_t">
    		<div id="menu_bot"></div>
    		<div id="run_top" style="width:auto; float:right; cursor:pointer"><img src="images/top.jpg" alt="top hoang ha" /></div>
        </div>
        <div id="copyright">
        	<p><a href="http://tinhocdongtam.com/" target="_blank" style="color:#666; text-decoration:none">Copyright © 2013.</a> <strong><?php echo $row_config['footer']?></strong></p>
            <?php echo $row_config['contact']?>
        </div>
    </div>
</div>
<?php mysql_close();?>
</body>
</html>