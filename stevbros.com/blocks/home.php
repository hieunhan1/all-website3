<?php
include_once('blocks/right.php');
$view_post = '<div id="left">
	<div class="item1">
		<div class="title_home" style="background:url(images/icon_1.gif) no-repeat top left"><h3>Stevbros – Registered Education Provider ID 3807 of Project Management Institute (PMI)</h3></div>
		<iframe src="http://www.youtube.com/embed/iSkm2Prr2WE?origin=http://'.$domain.'&rel=0" frameborder="0" allowfullscreen></iframe>
		<p>Stevbros designs, customizes and delivers project management in-house training courses for enterprises in Asia in various industries: IT, software, constructions, oil and gas, services, manufacturing, government projects, ADB/ WorldBank/ ODA projects.</p>
	</div>';

$view_post .= '<div class="item2"><div class="title_home" style="background:url(images/icon_2.gif) no-repeat top left"><h3>Popular In-house Courses</h3></div><div class="item">';
$home_info = $tc->home_info(16,4);
while($row_home = mysql_fetch_array($home_info)){
	$view_post .= '<div>
	<p class="img"><img src="'.url_detail_thumb_image.$row_home['url_hinh'].'" alt="'.$row_home['name'].'" /></p>
	<a href="courses-and-certificates/'.$row_home['name_rewrite'].'.html" title="'.$row_home['name'].'"><h4>'.$row_home['name'].'</h4></a>
	<p class="content">'.$row_home['description'].'</p>
	</div>';
}
$view_post .= '</div></div>';

$view_post .= '<div class="item3"><div class="title_home" style="background:url(images/icon_3.gif) no-repeat top left"><h3>Popular Online Courses</h3></div><div class="content">';
$home_info = $tc->slider_banner(4);
while($row_home = mysql_fetch_array($home_info)){
	$view_post .= '<div><a href="'.$row_home['link'].'" title="'.$row_home['name'].'"><h4>'.$row_home['name'].'</h4><img src="'.url_slider_image.$row_home['url_hinh'].'" alt="'.$row_home['name'].'" /></a></div>';
}
$view_post .= '</div></div></div>';// end left
$view_post .= $view_right;

$view_post .= '<div id="study"><div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left"><h3>Study in Singapore/USA</h3></div>
<p>Stevbros provides effective solutions designed to help our clients choose right field of study, right school, shorten their study, shorten their stay and save their budget while at the same time keeping high satisfaction in study quality, 100% guarantee for internationally recognized degree and big success. Stevbros also provides effective solutions to obtain USA study visa for sure.</p></div>';

$view_post .= '<div id="partner"><ul id="scroller">';
$partner = $tc->slider_banner(3);
while($row_partner = mysql_fetch_array($partner)){
	$view_post .= '<li><a href="'.$row_partner['link'].'" title="'.$row_partner['name'].'" target="_blank"><img src="'.url_slider_image.$row_partner['url_hinh'].'" alt="'.$row_partner['name'].'" /></a></li>';
}
$view_post .= '</ul><script type="text/javascript" src="library/run_image/common.js"></script>
<script type="text/javascript" src="library/run_image/jquery.simplyscroll.min.js"></script>
<script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script></div>';