<?php
session_start();
ob_start('ob_gzhandler');
$request = $_SERVER['REQUEST_URI'];
require_once('config.php');

$get_dm = explode('danh-muc/',$request);
$get_xt = explode('xem-tin/',$request);

if(count($get_dm)==2){
	$m = explode('-',$get_dm[1]);
	$idMenu = $m[count($m)-2];
	$p = 'dmbaiviet';
	$page = $m[count($m)-1];
	$i = 0;
	for($i; $i<count($m)-2; $i++) $name_rewrite .= $m[$i].'-';
	$name_rewrite = trim($name_rewrite,'-');
	
	$menu_type = $tc->menu_dm($name_rewrite);
	$row_menu_type = mysql_fetch_array($menu_type);
	$type_menu = $row_menu_type['type_id'];
}elseif(count($get_xt)==2){
	$m = explode('-',$get_xt[1]);
	$idTin = str_replace('.html','',$m[count($m)-1]);
	$p = 'xembaiviet';
	$i = 0;
	for($i; $i<count($m)-1; $i++) $name_rewrite .= $m[$i].'-';
	$name_rewrite = trim($name_rewrite,'-');
	
	$menu_type = $tc->menu_xt($name_rewrite);
	$row_menu_type = mysql_fetch_array($menu_type);
	
	$type_menu = $row_menu_type['type_id'];
}else{
	$dm = explode('/',$_GET['danhmuc']);
	$name_rewrite = $dm[0];
	if($dm[1]=='') $page=1; else $page = $dm[1];
	$menu_type = $tc->menu_dm($name_rewrite);
	$row_menu_type = mysql_fetch_array($menu_type);
	$type_menu = $row_menu_type['type_id'];
	$p = 'thuvien';
	$idMenu  = $row_menu_type['id'];
}

if(isset($idTin) or isset($idMenu)) {
	$xem = $tc->XemChiTiet($idMenu, $idTin);
	$row_xem = mysql_fetch_array($xem);
	mysql_free_result($xem);
	
	$keywords = $row_xem['metaKeyword'];
	if(@$idTin){
		$title = $row_xem['name'];
		$keywords = $row_xem['metaKeyword'];
		$description = $row_xem['description'];
		if($row_xem['url_hinh']!='') $image = 'http://'.$domain.'/'.url_detail_thumb_image.$row_xem['url_hinh']; else $image = 'http://'.$domain.'/'.url_default_image;
	}else{
		$title = $row_xem['title'];
		$keywords = $row_xem['metaKeyword'];
		$description = $row_xem['metaDescription'];
		if($row_xem['url_hinh']!='') $image = 'http://'.$domain.'/'.url_danhmuc_image.$row_xem['url_hinh']; else $image = 'http://'.$domain.'/'.url_default_image;
	}
	
	$url = 'http://'.$domain.$request;
} else {
	$menu_one = $tc->menu_one('trang-chu');
	$row_menu_one = mysql_fetch_array($menu_one);
	$title = $row_menu_one['title'];
	$keywords = $row_menu_one['metaKeyword'];
	$description = $row_menu_one['metaDescription'];
	$image = 'http://'.$domain.'/'.url_default_image;
	$url = 'http://'.$domain;
}

$seo = $tc->seo($domain,$title,$description,$keywords,$image,$url);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<link href="assets/wt-rotator.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="assets/jquery.wt-rotator.min.js"></script>
<script type="text/javascript" src="assets/preview.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>
<body>
<div id="bgmenu"></div>
<div id="wrapper">
	<div id="header">
    	<img src="images/bg-header.png" alt="dạy ẩm thực, học nấu ăn" />
    </div>
    <?php
    require_once('blocks/menu.php');
	require_once('blocks/slider.php');
	?>
    
	<div style="clear:both; height:10px;"></div>
    <div id="left">
    	<div style="width:710px; height:150px; background:url(upload/bg-chuong-trinh-dac-biet-v2.gif) no-repeat">
			<div style="width:220px; float:left; line-height:38px; text-align:center; margin-top:33px; font-size:28px; font-weight:bold; color:#FF0"><em style="font-size:20px">Khuyến mãi</em><br />ĐẶC BIỆT</div>
		</div>
	<?php
    switch($type_menu){
		case 1 : require_once 'blocks/dangky.php'; break;
		case 2 : require_once 'blocks/list_baiviet.php'; break;
		case 3 : require_once 'blocks/chuongtrinh.php'; break;
		case 4 : require_once 'blocks/thuvien.php'; break;
		case 5 : require_once 'blocks/dmhinhanh.php'; break;
		case 6 : require_once 'blocks/dmvideo.php'; break;
		case 7 : require_once 'blocks/contact.php'; break;
		case 8 : require_once 'blocks/lichkhaigiang.php'; break;
		default : require_once 'blocks/home.php';
	}
	?></div>
    <div id="right"><?php require 'blocks/right.php'; ?></div>
</div>

<div style="clear:both"></div>
<div style="background:url(images/bg-foo.gif) top repeat-x">
	<div style="clear:both; width:100%; height:120px; background-color:#FFF">
        <div class="simply-scroll simply-scroll-container" style="width:1000px; margin:auto">
            <script type="text/javascript" src="library/partner/common.js"></script>
            <script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
            <script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script>
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width: 2255px;">
                <?php
                $partner = $tc->slider_banner(3);
                while($row = mysql_fetch_array($partner)){
                    echo '<li style="list-style:none"><a href="'.$row['link'].'" title="'.$row['name'].'" target="_blank"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'"></a></li>';	
                }
                ?>
                </ul>
            </div>
        </div>
    </div>
    <div style="clear:both; height:25px"></div>
    
    <div style="width:1000px; margin:auto">
        <div style="width:630px; float:left">
			<div style="background:url(images/bg-menu-foo.png) no-repeat; width:628px; height:60px; line-height:35px; margin-top:5px; float:left; text-align:center"><?php echo $row_config['footer'];?></div>
            <div style="clear:both; text-align:center">
			<?php
            if($_COOKIE['tinhthanh']=='Đà Nẵng'){
				echo '<p><strong>Địa chỉ: Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng</strong> <br />Điện thoại: 05113.634.879   |   Hotline: 0932.743.799</p>';
			}elseif($_COOKIE['tinhthanh']=='Cần Thơ'){
				echo '<p><strong>Địa chỉ: 118 Đường 3/2 P.Xuân Khánh, Q.Ninh Kiều, Tp.Cần Thơ</strong> <br />Điện thoại: 0710 373 4371 - Fax: 0710 373 4375</p>';
			}else echo $row_config['contact'];
			?></div>
        </div>
        <div id="toppage"><a href="<?php echo $_SERVER['REQUEST_URI'];?>#" title="top" target="_top"><img src="images/top.png" alt="top page netspace" /></a></div>
    </div>
    <div style="clear:both; height:20px; text-align:right"><a href='https://plus.google.com/107858421761902347937/posts' rel='author'>Dạy nghề ẩm thực NETSPACE</a></div>
</div>

<?php
echo '<div id="support">';
require 'blocks/support.php';
echo '<div style="width:1px; height:1px; overflow:hidden"><a href="http://www.alexa.com/siteinfo/www.dayamthuc.vn"><script type="text/javascript" src="http://xslt.alexa.com/site_stats/js/s/a?url=www.dayamthuc.vn"></script></a></div>

</div>';

require 'blocks/popup.php';
?>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30563987-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

<!-- Start Alexa Certify Javascript -->
<script type="text/javascript">
_atrk_opts = { atrk_acct:"Z3RSi1a8Dy00W2", domain:"dayamthuc.vn",dynamic: true};
(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
</script>
<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=Z3RSi1a8Dy00W2" style="display:none" height="1" width="1" alt="" /></noscript>
<!-- End Alexa Certify Javascript -->
</body>
</html>