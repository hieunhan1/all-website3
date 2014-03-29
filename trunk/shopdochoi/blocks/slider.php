<?php
$qr = $tc->slider_banner(1,$row_menu_one['id']);
if(mysql_num_rows($qr) > 0){
	$view_slider = '<div id="slider"><div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">';
	while($row = mysql_fetch_array($qr)){
		$view_slider .= '<a href="'.$row['link'].'"><img src="'.url_slider_image.$row['url_hinh'].'" data-thumb="'.url_slider_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" title="'.$row['info'].'" data-transition="slideInLeft" /></a>';
	}
	$view_slider .= '</div></div></div>
	<link rel="stylesheet" href="library/nivo-slider/default.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="library/nivo-slider/nivo-slider.css" type="text/css" media="screen" />';
	$script_slider = '<script type="text/javascript" src="library/nivo-slider/jquery.nivo.slider.js"></script>
	<script type="text/javascript">
	$(window).load(function() {
		$("#slider_run").nivoSlider();
	});
	</script>';
	echo $view_slider;
}