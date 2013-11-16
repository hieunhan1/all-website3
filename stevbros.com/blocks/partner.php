<?php
$view_partner .= '<script type="text/javascript" src="script/common.js"></script><script type="text/javascript" src="script/jquery.simplyscroll.min.js"></script><script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script><div id="partner"><ul id="scroller">';
$partner = $tc->slider_baner(4);
while($row_partner = mysql_fetch_array($partner)){
	$view_partner .= '<li style="list-style:none"><a href="'.$row_partner['url'].'" title="'.$row_partner['name'].'" target="_blank"><img src="'.url_slider_image.$row_partner['url_hinh'].'" alt="'.$row_partner['name'].'" /></a></li>';
}
$view_partner .= '</ul></div>';