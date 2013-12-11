<?php
$i = 0;
$qr = $tc->image_all($idMenu);
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i%3 == 1) $style = ''; else $style = 'style="margin-left:30px"';
	$str_image .= '<p class="box_photos" '.$style.'><a class="fancybox" href="'.url_library_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_library_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></p>';
}

$str_image = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />

<div id="photos">'.$str_image.'</div>
<div style="clear:both; height:30px;"></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$(".fancybox").fancybox();
	});
</script>';

echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<div class="viewpost">
		<h1>'.$row_menu_one['title'].'</h1>
		<h2>'.$row_menu_one['metaDescription'].'</h2>
	</div>
	'.$str_image.'<div style="clear:both; height:10px"></div>
</div>';