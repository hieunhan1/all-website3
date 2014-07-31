<?php
session_start();
ob_start();
error_reporting(E_ALL ^ E_NOTICE);
include_once('config.php');

$url = $_SERVER['REQUEST_URI'];
//$url = str_replace('all/stevbros.edu.vn/','',$url); /*link test*/
$url = explode('/',$url);
$danhmuc = $url[1];
$dt = $url[2];

if($danhmuc!=''){
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];
	
	$check = explode('.html',$dt);
	$total = count($check);
	if($total==1){
		if($dt=='') $page = 1; else $page = $dt;
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);
		switch($type){
			case 2 : include_once('blocks/list_articles.php'); break;
			case 4 : include_once('blocks/payment.php'); break;
			case 5 : include_once('blocks/payment_sacombank.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			default: $view_post = '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
	}else{
		$dt = $check[0];
		switch($type){
			case 2 : $detail = $tc->detail($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/articles.php'); break;
			case 4 : $detail = $tc->detail($dt,$type); $row_detail = mysql_fetch_array($detail); include_once('blocks/payment.php'); break;
			case 5 : $detail = $tc->detail($dt,$type); $row_detail = mysql_fetch_array($detail); include_once('blocks/payment_sacombank.php'); break;
			default: $view_post = '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_thumb_image.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$seo = $tc->seo($domain,$row_detail['name'],$row_detail['description'],$row_detail['metaKeyword'],$image,$url);
	}
}else{
	$menu_one = $tc->menu_one('home');
	$row_menu_one = mysql_fetch_array($menu_one);
	$url = 'http://'.$domain;
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
	$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);
	include_once('blocks/home.php');
	include_once('blocks/slider.php');
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="library/jquery.js"></script>
<script type="text/javascript" src="website.js"></script>

<script type="text/javascript"><!--
document.write(unescape("%3Cscript id='pap_x2s6df8d' src='" + (("https:" == document.location.protocol) ? "https://" : "http://") + 
"lienket123.com/program/scripts/trackjs.js' type='text/javascript'%3E%3C/script%3E"));//-->
</script>
<script type="text/javascript"><!--
PostAffTracker.setAccountId('f4991c3f');
try {
PostAffTracker.track();
} catch (err) { }
//-->
</script>
</head>

<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-42222366-2', 'stevbros.edu.vn');
  ga('send', 'pageview');
</script>
<div id="wrapper">
	<?php
    include_once('blocks/header.php');
	include_once('blocks/menu.php');
	echo $view_slider.'<div id="content">'.$view_post.'<div style="clear:both; height:10px"></div></div>';
	?>
</div>
<?php
include_once('blocks/footer.php');
mysql_close();
?>
</body>
</html>