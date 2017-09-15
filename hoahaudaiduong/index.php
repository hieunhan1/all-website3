<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);

if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

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
	$lang = $row_menu_one['lang'];
	
	if($lang=='') $lang='vi';
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
			case 3 : include_once('blocks/thisinh_list.php'); break;
			case 4 : include_once('blocks/bosuutap_list.php'); break;
			case 5 : include_once('blocks/picture.php'); break;
			case 6 : include_once('blocks/video_list.php'); break;
			case 7 : include_once('blocks/dangky_tructuyen.php'); break;
			case 8 : include_once('blocks/contact.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->thisinh_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_thisinh_image; include_once('blocks/thisinh.php'); break;
			case 4 : $qr = $tc->bosuutap_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_bosuutap_image; include_once('blocks/bosuutap.php'); break;
			case 6 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_image; include_once('blocks/video.php'); break;
			
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
<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="top">
    	<div id="lang">
        	<li><a href="/"><img src="images/vi.gif" alt="Tiếng Việt" /> Tiếng Việt</a></li>
            <li><a href="?lang=en"><img src="images/en.gif" alt="English" /> English</a></li>
        </div>
        <div id="search">
        	<input type="text" name="txtSearch" id="txtSearch" class="txtSearch" value="<?php echo const_txt_search;?>" onfocus="if(value=='<?php echo const_txt_search;?>') value=''" onblur="if(value=='') value='<?php echo const_txt_search;?>'" />
            <input type="button" name="btnSearch" class="btnSearch" value="&nbsp;" />
        </div>
    </div>
	<div id="logo_slider">
    	<div id="logo"><a href=""><img src="images/logo.png" alt="<?php echo $row_menu_one['title'];?>" /></a></div>
        <?php include_once('blocks/slider.php'); ?>
    </div>
	<?php
	flush();
	
    include_once('blocks/menu.php'); flush();
	
	echo $include;
	flush();
	?>
	
    <div id="home_thisinh">
        <div class="home_thisinh_title"><?php echo cons_nha_tai_tro;?></div>
    
        <script type="text/javascript" src="library/partner/common.js"></script>
        <script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
        <script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script>
        <div class="simply-scroll simply-scroll-container" style="width:1000px; margin:auto">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width: 2255px;">
                <?php
                $qr = $tc->slider_banner(2);
				while($row = mysql_fetch_array($qr)){
					echo '<li style="list-style:none"><a href="'.$row['link'].'" title="'.$row['name'].'" target="_blank"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'"></a></li>';
				}
				?>
                </ul>
            </div>
        </div>
        <div style="clear:both; height:30px"></div>
    </div>
    <?php
    flush();
	
	include_once('blocks/qc2ben.php');
	flush();
	/*if(!@$_SESSION['popup']){
		$_SESSION['popup'] = 1;
		include_once('blocks/popup.php');
	}*/
	?>
    
	<div id="footer">
    	<div id="menu_foo">
        <?php
		$menu = $tc->menu(0,3,$lang);
		while($row = mysql_fetch_array($menu)){
			echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
		}
		?>
        	<div id="run_top"><a href="javascript:;" title="Lên đầu trang"><img src="images/top.png" alt="run top" /> TOP</a></div>
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td style="width:240px">
                	<p style="font-weight:bold; margin:0 15px 10px 0; padding-bottom:10px; border-bottom:solid 1px #666"><?php echo cons_ket_noi;?></p>
                    <?php
                    $qr = $tc->menu(0,4);
					while($row = mysql_fetch_array($qr)){
						echo '<p style="line-height:33px; width:120px; float:left"><a href="'.$row['url'].'" target="_blank" style="color:#CCC"><img style="float:left; margin-right:5px" src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" />'.$row['name'].'</a></p>';
					}
					?>
                </td>
            	<td valign="top" style="line-height:22px"><?php echo $row_config['contact_foo']; ?></td>
            	<td valign="top" align="right" style="width:250px; line-height:22px"><?php echo $row_config['copyright']; ?><br />
                <a href="http://www.tinhocdongtam.com">Design web Tin Hoc Dong Tam</a>
                <embed src="public/musics.mp3" autostart="true" loop="true" hidden="true" volume="60"></embed></td>
            </tr>
        </table><br />
    </div>
    <?php
    $qr = $tc->menu_type(7,0,$lang);
	$row_dangky = mysql_fetch_array($qr);
	echo '<div id="formdangky"><a href="'.$row_dangky['url'].'">'.$row_dangky['title'].'</a></div>';
	?>
    
    <?php
	/*if ( !isset($_SESSION['session_banner']) ) {
		$_SESSION['session_banner'] = 1;
		echo '<div id="gw-banner" style="width:960px; max-width:100%; height:100%; position:fixed; z-index:1000; top:0;">
			<div style="width:100%; position:relative; z-index:101; top:5%;">
				<span id="gw-banner-close" style="display:inline-block; color:#666; padding:3px 8px 4px 8px; border-radius:20px; background-color:#FFF; box-shadow:0px 2px 2px #666; cursor:pointer; position:absolute; top:-10px; right:-10px;">x</span>
				<img src="/images/banner.jpg" alt="Banner_Hanh-Trinh-Nhan-Ai" style="max-width:100%" />
			</div>
		</div>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#gw-banner-close").click(function(){
				$("#gw-banner").hide(100);
			});
		});
		</script>';
	}*/
	?>
</div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47572922-1', 'hoahaudaiduongvietnam.com');
  ga('send', 'pageview');
</script>

<?php mysql_close();?>
</body>
</html>