<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);
//date_default_timezone_set('Asia/Ho_Chi_Minh');

if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

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
			case 3 : include_once('blocks/products_list.php'); break;
			case 4 : include_once('blocks/picture_list.php'); break;
			case 5 : include_once('blocks/video_list.php'); break;
			case 6 : include_once('blocks/contact.php'); break;
			case 7 : include_once('blocks/giohang.php'); break;
			case 11 : include_once('blocks/tuyendung_list.php'); break;
			
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
			case 11 : $qr = $tc->tuyendung_detail($dt); $row_detail = mysql_fetch_array($qr); include_once('blocks/tuyendung.php'); break;
			
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
    	<div id="logo"><a href="?lang=<?php echo $lang;?>"><img src="images/logo.jpg" alt="Vikybomi" /></a></div>
        <div id="company_search">
        	<h2 id="company"><?php echo $row_config['slogan'];?></h2>
            <div id="search">
            	<input type="text" name="txtSearch" value="<?php echo const_txt_search;?>" onclick="if(value=='<?php echo const_txt_search;?>') value=''" onblur="if(value=='') value='<?php echo const_txt_search;?>'" id="txtSearch" class="txtSearch" />
                <input type="button" name="btnSearch" value="&nbsp;" class="btnSearch" />
            </div>
            <?php
            //gio hang
			$sosp = count($_SESSION['list_soluong']);
			if($sosp > 0) $view_sl_sp = ' <span style="color:#15A6D4; font-size:110%">('.$sosp.')</span>';
			
			$qr = $tc->menu_type(7,0,$lang);
			$row_giohang = mysql_fetch_array($qr);
			echo '<div id="icon_giohang"><a href="'.$row_giohang['url'].'">'.$row_giohang['name'].$view_sl_sp.'</a></div>';
			?>
        </div>
        <div id="lang">
        	<a href="javascript:;" id="login">Đăng nhập</a> | <a href="" id="signin">Đăng ký</a>
            <div id="form_login">
            	Username:<br />
                <input type="text" name="username" class="txt_login" /><br />
            	Password:<br />
                <input type="password" name="password" class="txt_login" /><br />
                <input type="button" name="btnlogin" value="Đăng nhập" class="btn_login" /><br />
                <a href="javascript:;" style="float:left; font-weight:100; text-decoration:underline">Quên password?</a>
                <a href="javascript:;" id="cancel_login" style="float:right;">Hủy</a>
            </div>
        </div>
        <div id="support">
        	<p style="color:#666; width:auto; float:left; line-height:19px; text-align:center"><strong style="font-size:105%"><?php echo $row_config['tel'];?></strong><br />liên hệ trực tiếp</p>
        	<p style="width:auto; float:left; margin:22px 0 0 20px"><?php echo '<a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&amp;m=g&amp;t=1"></a>';?></p>
        </div>
    </div>
    <?php
	include_once('blocks/menu.php');
	include_once('blocks/slider.php');
	echo $include;
	?>
    <div style="clear:both; height:50px"></div>
    <div id="footer">
        <div id="footer_menu">
            <?php
            $qr = $tc->menu(0,5,$lang);
            while($row = mysql_fetch_array($qr)){
                echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            }
            ?>
            <span id="run_top"><img src="images/top.gif" alt="top" /></span>
        </div>
        <table width="1000px" border="0" cellpadding="0" cellspacing="0" style="line-height:25px; margin-top:10px">
          <tr>
            <td width="250" valign="top" style="padding-right:30px">
                <div style="font-weight:bold; color:#333; padding-bottom:5px; border-bottom:solid 1px #CCC">Kết nối với chúng tôi</div>
                <div id="social">
                <?php
                $qr = $tc->menu(0,6,$lang);
                while($row = mysql_fetch_array($qr)){
                    echo '<div class="item_social"><a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" />'.$row['name'].'</a></div>';
                }
                ?>
                </div>
            </td>
            <td valign="top" style="padding-top:5px"><?php echo $row_config['contact_foo'];?></td>
            <td align="right"><?php echo $row_config['copyright'];?></td>
          </tr>
          <tr><td colspan="3">&nbsp;</td></tr>
        </table>
    </div>
</div>
<?php
include_once('blocks/buy.php');
include_once('blocks/qc2ben.php');
//include_once('images/noel-2014/temp.php');
mysql_close();
?>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-38998660-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</body>
</html>