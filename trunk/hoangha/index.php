<?php
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
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	include_once('blocks/menu.php');
	include_once('blocks/slider.php');
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$seo = $tc->seo($domain,$row_menu_one['title'].$page_name,$row_menu_one['metaDescription'].$page_name,$row_menu_one['metaKeyword'],$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/info_data_list.php'); break;
			case 4 : include_once('blocks/location_list.php'); break;
			case 5 : include_once('blocks/sale_online.php'); break;
			case 6 : include_once('blocks/network.php'); break;
			case 8 : include_once('blocks/booking.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			case 9 : include_once('blocks/tracktrace.php'); break;
			case 10 : include_once('blocks/tracing_express.php'); break;
			default: $view_post = '<font color="#FF0000"><b>Could not be found</b></font>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $detail = $tc->info_detail($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/articles.php'); break;
			case 3 : $detail = $tc->info_detail($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/info_data.php'); break;
			case 4 : $detail = $tc->info_detail($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/location.php'); break;
			case 10 : include_once('blocks/tracing_express.php'); break;
			default: echo '<div id="left"><p><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
		
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_thumb_image.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$seo = $tc->seo($domain,$row_detail['name'],strip_tags($row_detail['description'],''),$row_detail['metaKeyword'],$image,$url);
	}
}else{
	$menu_one = $tc->menu_one(home_page);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$url = 'http://'.$domain;
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
	$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);

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
</div>

<div id="wrapper">
	<div id="header">
    	<div id="logo"><a href="http://<?php echo $domain.'/'.$lang.'/'?>"><img src="images/logo.jpg" alt="Hoang Ha International Logistics" /></a></div>
    	<div id="hotline">
        	<p style="font-size:110%">Hotline Express: <b><?php echo $row_config['tel'];?></b></p>
            <p><?php echo const_contact_dinhvi_buupham; ?> <input type="text" name="ma_buupham" value="Số vận đơn" onfocus="if(value=='Số vận đơn') value=''" onblur="if(value=='') value='Số vận đơn'" class="input_txt" /> <a href="javascript:;" class="input_btn" name="<?php $qr = $tc->menu_type(10,$lang); $row = mysql_fetch_array($qr); echo $lang.'/'.trim($row['url'],'/').'_page_'; ?>">Tracking</a></p>
            <script type="text/javascript">
			$(document).ready(function() {
                $('.input_btn').click(function(){
					var ma_buupham = $.trim($('input[name=ma_buupham]').val());
					if(ma_buupham!='Số vận đơn' && ma_buupham!=''){
						var url = $(this).attr('name');
						$(this).attr('href',url + ma_buupham + '/');
						return true;
					}else{
						alert('Vui lòng nhập mã số vận chuyển.');
						$('input[name=ma_buupham]').focus();
						return false;
					}
				});
            });
			</script>
        </div>
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
        	<p><a href="http://tinhocdongtam.com/" target="_blank" style="color:#666; text-decoration:none">Copyright © 2013.</a> <strong><?php echo $row_config['footer']?></strong></p>
            <?php echo $row_config['contact']?>
        </div>
    </div>
</div>
<?php
if($type!=8 && $type!=9){
	$qr = $tc->menu_type(8,$lang);
	$row = mysql_fetch_array($qr);
	echo '<div style="position:fixed; right:0; bottom:46px"><a href="'.$lang.'/'.$row['url'].'" target="_blank"><img src="images/booking-online.gif" alt="'.$row['name'].'" /></a></div>';

	$qr = $tc->menu_type(9,$lang);
	$row = mysql_fetch_array($qr);
	echo '<div style="position:fixed; right:0; bottom:0"><a href="'.$lang.'/'.$row['url'].'"><img src="images/track-trace.gif" alt="'.$row['name'].'" /></a></div>';
}
/*close connection*/
mysql_close();
?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-29777967-4', 'hoangha.com');
  ga('send', 'pageview');
</script>
</body>
</html>