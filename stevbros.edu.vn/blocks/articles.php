<?php
include_once('blocks/right.php');
$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
$view_post .= '<div id="left">';
if(preg_match("/15/i",$row_detail['menu_id'])) $date = '<div id="datetime">'.date('d/m/Y H:i',strtotime($row_detail['date_create'])).'</div>'; else $date = '';

if($row_detail['other2'] == 1){
	$form_dangky = ob_start();
	include_once('blocks/form_dangky.php');
	$form_dangky = ob_get_clean();
}

$view_post .= '<div id="view_post">
	<h1>'.$row_detail['name'].'</h1>'.$date.$row_detail['content'].$form_dangky.'
</div><div style="clear:both; height:30px"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, "script", "facebook-jssdk"));</script>

<div style="width:auto; float:left" class="fb-like" data-href="http://www.facebook.com/pages/Stevbros-Training-Consultancy/111112242381308" data-width="140" data-layout="button_count"></div>
<div style="width:auto; height:17px; line-height:17px; float:left; margin:1px 10px 0 10px; padding:0 5px; font-size:11px; background-color:#ECEEF5; border:solid 1px #CAD4E7"><a style="color:#3B5998" href="#" onclick=\'window.open("https://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(location.href), "facebook-share-dialog", "width=626,height=436"); return false;\'>Chia sẻ lên facebook</a></div>


<a href="https://twitter.com/share" class="twitter-share-button" data-url="https://twitter.com/stevbros" data-text="Đào tạo Quản Lý Dự Án PMP, Tư Vấn Du Học Singapore - Mỹ">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?"http":"https";if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document, "script", "twitter-wjs");</script>
';
if(preg_match("/15/i",$row_detail['menu_id'])){
	include_once('blocks/nhanxet.php');
	$other = 'Bài viết khác';
}else $other = 'Khóa học khác';
$view_post .= '</div>';
$view_post .= $view_right;
$baiviet = $tc->baivietkhac($idMenu,$row_detail['id']);
if(mysql_num_rows($baiviet)>1){
	$view_post .= '<hr /><div id="baivietkhac"><div style="font-weight:bold; font-size:18px; margin-bottom:10px">'.$other.'</div>';
	while($row = mysql_fetch_array($baiviet)){
		$view_post .= '<li><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></li>';
	}
	$view_post .= '</div>';
}

if($row_detail['id']==2){
	$view_post .= '<div id="study"><div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left"><h3>Đối tác</h3></div></div>';
	
	$view_post .= '<div id="partner"><ul id="scroller">';
	$partner = $tc->slider_banner(3);
	while($row_partner = mysql_fetch_array($partner)){
		$view_post .= '<li><a href="'.$row_partner['link'].'" title="'.$row_partner['name'].'" target="_blank"><img src="'.url_slider_image.$row_partner['url_hinh'].'" alt="'.$row_partner['name'].'" /></a></li>';
	}
	$view_post .= '</ul><script type="text/javascript" src="library/run_image/common.js"></script>
	<script type="text/javascript" src="library/run_image/jquery.simplyscroll.min.js"></script>
	<script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script></div>';
}