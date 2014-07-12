<?php
session_start();
date_default_timezone_set('Asia/Bangkok');
define(does_not_exist,'Mục này không tồn tại.');

if(!isset($_GET['lang']))
	$lang = 'vi';
else
	$lang = $_GET['lang'];

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
	
	if($danhmuc!='danh-muc'){
		$menu_one = $tc->menu_one($danhmuc);
		$row_menu_one = mysql_fetch_array($menu_one);
		$idMenu = $row_menu_one['id'];
		$type = $row_menu_one['type_id'];
	}else{
		$alias = substr($_GET['detail'],0,-5);
		
		$menu_one = $tc->menu_one_v2($alias);
		$row_menu_one = mysql_fetch_array($menu_one);
		$idMenu = $row_menu_one['id'];
		$type = $row_menu_one['type_id'];
	}
	
	$lang = $row_menu_one['lang'];
	include_once('config.php');
	
	$dir_lang = "languages/{$lang}.php";
	if(file_exists($dir_lang)) include_once($dir_lang);
	
	if($row_menu_one['parent_id']!=0) $menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	else $menu_root = $idMenu;
	
	$str_daynauan = '<h3>'.$row_config['contact_foo'].'</h3>';
	
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
			case 12 : include_once('blocks/hotro_hocvien.php'); break;
			
			default: echo '<div id="content"><p style="height:200px; padding:20px 10px"><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 6 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_image_thumb; include_once('blocks/video.php'); break;
			case 11 : $qr = $tc->tuyendung_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = 'upload/images/cung-ung-tuyen-dung-nhan-su.jpg'; include_once('blocks/tuyendung.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
		
		if($row_detail['url_hinh']!='' || $type=='11') $image='http://'.$domain.'/'.$image_link.$row_detail['url_hinh'];
		else $image='http://'.$domain.'/'.url_default_image;
		
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$title = strip_tags($row_detail['name'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_detail['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_detail['metaKeyword']); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title,$description,$keyword,$image,$url);
	}
}else{
	include_once('config.php');
	
	$dir_lang = "languages/{$lang}.php";
	if(file_exists($dir_lang)) include_once($dir_lang);
	
	$menu_one = $tc->menu_type(1,0,$lang);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $menu_root = $row_menu_one['id'];
	
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
	$url = 'http://'.$domain;
	$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
	$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
	$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
	$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
	
	$str_daynauan = '<h1>'.$row_config['contact_foo'].'</h1>';
	
	$include = ob_start();
	include_once('blocks/home.php');
	$include = ob_get_clean();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style_v5.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="top">
	<div class="wrapper">
    	<li><a href="/?lang=en"><img src="images/en.gif" alt="NETSPACE EN" /> English</a></li>
    	<li><a href=""><img src="images/vi.gif" alt="NETSPACE VI" /> Tiếng Việt</a></li>
    </div>
</div>

<div class="wrapper">
    <img src="images/bg-header_<?php echo $lang;?>.png" width="960" style="margin:5px 10px" />
    <?php
    include_once('blocks/menu.php');
    include_once('blocks/slider.php');
	flush();
	
	$qr_type_home = $tc->menu_type(1,0,$lang);
	$row_type_home = mysql_fetch_array($qr_type_home);
	
	if($danhmuc==''){
		$style_catalog = 'style="background:url(images/bg-item-2.png) repeat-x top"'; //style cho Home catalog
		
		$qr = $tc->menu($row_type_home['id'],5,$lang);
		if(mysql_num_rows($qr) > 0){
			$i = 0;
			$style = array('margin-left:18px; ','margin-left:40px; ','margin-left:35px; ');
			echo '<div id="home_item_1">';
			while($row = mysql_fetch_array($qr)){
				echo '<div class="item_1" style="'.$style[$i].'background:url(\''.url_catalog_image.$row['url_hinh'].'\') no-repeat">
				<a href="'.$row['url'].'"><h2>'.$row['name'].'</h2></a>
				<p>'.$row['metaDescription'].'</p>
				<p><a href="'.$row['url'].'">'.const_view_info.'</a></p></div>';
				$i++;
			}
			echo '</div>';
		}
	}
    ?>
</div>
<?php
/*Home catalog*/
$qr = $tc->menu($row_type_home['id'],1,$lang);
if(mysql_num_rows($qr) > 0){
	echo '<div id="home_item_2" '.$style_catalog.'><div class="wrapper" style="padding:0 10px">';
	while($row = mysql_fetch_array($qr)){
		echo '<div class="item_2"><a href="'.$row['url'].'"><div class="img_item_2">
			<div class="img_item_bg"></div>
			<div class="img_item_bo"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
		</div><h2>'.$row['name'].'</h2></a></div>';
	}
	echo '</div></div>';
}
flush();

echo $include;
flush();
?>

<div style="clear:both; height:30px"></div>

<div class="wrapper">
    <!--partner-->
    <div class="home_item_3" style="height:130px; padding:5px 0">
        <div class="simply-scroll simply-scroll-container">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width:2255px">
                    <?php
                    $qr = $tc->slider_banner(3,'vi');
					while($row = mysql_fetch_array($qr)){
						echo '<li style="list-style:none"><a href="'.$row['link'].'" title="'.$row['name'].'" target="_blank"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'"></a></li>';
					}
					?>
                </ul>
            </div>
        </div>
    </div>
    
    <div style="clear:both; height:20px"></div>
    
    <div id="copyright"><?php echo $row_config['copyright'];?></div>
    <div id="run_top"><img src="images/top.png" alt="Top trường dạy nấu ăn NetSpace" style="margin-top:24px; margin-bottom:-24px" /></div>
</div>
<?php flush(); ?>

<div id="footer">
    <!--Contact Social-->
    <div id="contact_social" class="wrapper">
    	<div id="contact_foo">
        	<?php echo $str_daynauan; ?>
            <div style="clear:both; height:10px"></div>
        	<?php
            $i = 0;
			$qr = $tc->chinhanh_ds($lang);
			$name_chinhanh = '';
			$info_chinhanh = '';
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($i!=1){
					$name_chinhanh .= '<span class="select_chinhanh chinhanh'.$i.'">'.$row['name'].'</span>';
					$info_chinhanh .= '<div class="chinhanh" id="chinhanh'.$i.'">
					<p>Địa chỉ: <b>'.$row['diachi'].'</b></p>
					<p>Điện thoại: <b>'.$row['phone'].'</b></p>
					<p>Hotline: <b>'.$row['hotline'].'</b></p>
					<p>Email: <b>'.$row['email'].'</b></p></div>';
				}else{
					$name_chinhanh .= '<span class="select_chinhanh chinhanh1 select_chinhanh_active">'.$row['name'].'</span>';
					$info_chinhanh .= '<div class="chinhanh" id="chinhanh1">
					<p>'.const_contact_diachi.': <b>'.$row['diachi'].'</b></p><p style="color:#FF6; margin-left:45px">('.const_cho_dakao.')</p>
					<p>'.const_contact_phone.': <b>'.$row['phone'].'</b></p>
					<p>Hotline: <b>'.$row['hotline'].'</b></p>
					<p>Email: <b>'.$row['email'].'</b></p></div>';
				}
			}
			echo '<div id="select_chinhanh">'.$name_chinhanh.'</div>'.$info_chinhanh;
			?>
        </div>
    	<div id="social">
        	<?php
            $qr = $tc->menu(1,3);
			while($row = mysql_fetch_array($qr)){
				echo '<a href="'.$row['url'].'" target="_blank"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
        </div>
        <div style="clear:both; height:20px"></div>
    </div>
</div>
<?php 
flush();
include_once('blocks/qc2ben.php');
?>

<div id="support_online" lang="<?php echo $lang; ?>">
	<img src="images/support-online-<?php echo $lang; ?>.gif" alt="support online" id="btn_support" />
    <div id="ajax_support">
    	<img src="images/loading1.gif" alt="loading" width="270" id="loading_support" />
        <div id="ajax_support_data"></div>
    </div>
</div>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website_v3.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>

<script type="text/javascript" src="library/partner/common.js"></script>
<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>

<?php
if(@$script_slider) echo $script_slider;
if(@$script_photo) echo $script_photo;
mysql_close();
?>

<!-- Start Alexa Certify Javascript -->
<script type="text/javascript">
_atrk_opts = { atrk_acct:"Z3RSi1a8Dy00W2", domain:"dayamthuc.vn",dynamic: true};
(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
</script>
<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=Z3RSi1a8Dy00W2" style="display:none" height="1" width="1" alt="" /></noscript>
<!-- End Alexa Certify Javascript -->  

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-30563987-1', 'dayamthuc.vn');
  ga('send', 'pageview');

</script>
</body>
</html>