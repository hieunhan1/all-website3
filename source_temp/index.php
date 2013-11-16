<?php
if(!@$_GET['lang']) $lang = 'en';
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
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		/*switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			default: $view_post = '<font color="#FF0000"><b>Could not be found</b></font>';
		}*/
		if($type==2){
			include_once('blocks/articles_list.php');
		}else{
			$view_post = '<font color="#FF0000"><b>Could not be found</b></font>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		/*switch($type){
			case 2 : $detail = $tc->info_detail($dt); $row_detail = mysql_fetch_array($detail); ($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_image_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image; include_once('blocks/articles.php'); break;
			case 3 : $detail = $tc->product_detail($dt); $row_detail = mysql_fetch_array($detail); ($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_product_image_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image; include_once('blocks/products.php'); break;
			default: echo '<div id="left"><p><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}*/
		if($type==2){
			$detail = $tc->info_detail($dt);
			$row_detail = mysql_fetch_array($detail);
			($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_image_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
			include_once('blocks/articles.php');
		}else{
			echo '<div id="left"><p><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
		
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$title = strip_tags($row_detail['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_detail['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_detail['metaKeyword']); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title,$description,$keyword,$image,$url);
	}
}else{
	$menu_one = $tc->menu_type(1,0);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	
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
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="top">
	<div style="width:1000px; margin:auto">
        <div id="lang">
            <a href="vi/"><img src="images/vi.gif" alt="vi" /></a>
            <a href="en/"><img src="images/en.gif" alt="en" /></a>
        </div>
        <div id="menu_top">
        <?php $qr = $tc->menu(0,1,$lang);
		while($row = mysql_fetch_array($qr)){
			echo '<a href="'.$lang.'/'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
		}?>
        <a href="forum/" title="Forum Hoang Ha">Forum</a>
        </div>
    </div>
</div>

<div id="wrapper">
	<div id="header">
    	<div id="logo"><a href="http://<?php echo $domain.'/'.$lang.'/'?>"><img src="images/logo.jpg" alt="Hoang Ha International Logistics" /></a></div>
    	<div id="search">
        	<div id="txtsearch"><input type="text" name="txtsearch" value="<?php echo const_txt_search;?>" id="key_search" onclick="if(value=='<?php echo const_txt_search;?>') value=''" onblur="if(value=='') value='<?php echo const_txt_search;?>'" /></div>
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
    <?php
    echo $view_menu;
	echo $view_slider;
	echo $include;
	?>
    
    <div style="clear:both; height:50px"></div>
    <div id="footer">
    	<div id="footer_m_t">
    		<div id="menu_bot">
            <?php
            $qr3 = $tc->menu(0,5,$lang);
			while($row = mysql_fetch_array($qr3)){
				echo '<a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a>';
			}
			?>
            </div>
    		<div id="run_top" style="width:auto; float:right; cursor:pointer"><img src="images/top.jpg" alt="top hoang ha" /></div>
        </div>
        <div id="copyright">
        	<p>Copyright © 2012. <strong><?php echo $row_config['footer']?></strong></p>
            <?php echo $row_config['contact']?>
        </div>
    </div>
</div>
<?php mysql_close();?>
</body>
</html>