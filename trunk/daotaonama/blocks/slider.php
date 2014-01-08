<?php
$view_slider = '<div id="slider"><div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">';
    
$slider = $tc->slider_banner(1,$row_menu_one['id']);
while($row_slider = mysql_fetch_array($slider)){
	$view_slider .= '<a href="'.$row_slider['link'].'"><img src="'.url_slider_image.$row_slider['url_hinh'].'" data-thumb="'.url_slider_image_thumb.$row_slider['url_hinh'].'" alt="'.$row_slider['name'].'" title="'.$row_slider['info'].'" data-transition="slideInLeft" /></a>';
}

$view_slider .= '</div></div></div>
<link rel="stylesheet" href="library/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="library/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript" src="library/nivo-slider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
$(window).load(function() {
    $("#slider_run").nivoSlider();
});
</script>';
echo $view_slider;