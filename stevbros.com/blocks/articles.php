<?php
include_once('blocks/right.php');
$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
$view_post .= '<div id="left">';
if(preg_match("/15/i",$row_detail['menu_id'])) $date = '<div id="datetime">'.date('d/m/Y H:i',strtotime($row_detail['date_create'])).'</div>'; else $date = '';
$view_post .= '<div id="view_post">
	<h1>'.$row_detail['name'].'</h1>'.$date.$row_detail['content'].'
</div><div style="clear:both; height:30px"></div>';
if(preg_match("/15/i",$row_detail['menu_id'])){
	include_once('blocks/nhanxet.php');
	$other = 'Other posts';
}else $other = 'Other courses';
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
	$view_post .= '<div id="study"><div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left"><h3>Partners</h3></div></div>';
	
	$view_post .= '<div id="partner"><ul id="scroller">';
	$partner = $tc->slider_banner(3);
	while($row_partner = mysql_fetch_array($partner)){
		$view_post .= '<li><a href="'.$row_partner['link'].'" title="'.$row_partner['name'].'" target="_blank"><img src="'.url_slider_image.$row_partner['url_hinh'].'" alt="'.$row_partner['name'].'" /></a></li>';
	}
	$view_post .= '</ul><script type="text/javascript" src="library/run_image/common.js"></script>
	<script type="text/javascript" src="library/run_image/jquery.simplyscroll.min.js"></script>
	<script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script></div>';
}