<?php
$qr = $tc->slider_banner(1,$row_menu_one['id']);
if(mysql_num_rows($qr)>0){
	while($row = mysql_fetch_array($qr)){
		if($row["info"]!='') $info_slider = '<div class="info"><div class="cap-title">'.$row["info"].'</div></div>'; else $info_slider = '';
		$view_slider .= '<li style="height:200px; overflow:hidden"><a href="'.url_slider_image.$row['url_hinh'].'" title="'.$row["name"].'"></a>
		<a href="'.$row["link"].'"></a>'.$info_slider.'</li>';
	}
	$view_slider = '<link rel="stylesheet" type="text/css" href="assets/preview.css"/>
	<link rel="stylesheet" type="text/css" href="assets/wt-rotator.css"/>
	<script type="text/javascript" src="assets/jquery.wt-rotator.min.js"></script>
	<script type="text/javascript" src="assets/preview.js"></script>
	<div id="slider"><div class="panel">
		<div class="container">
			<div class="wt-rotator">
				<a href="#"></a>            
				<div class="desc"></div>
				<div class="preloader"></div>
				<div class="c-panel">
					<div class="buttons">
						<div class="prev-btn"></div>
						<div class="play-btn"></div>    
						<div class="next-btn"></div>               
					</div>
					<div class="thumbnails"><ul>'.$view_slider.'</ul></div>     
				</div>
			</div>	
		</div>
	</div></div>';
}
echo $view_slider;