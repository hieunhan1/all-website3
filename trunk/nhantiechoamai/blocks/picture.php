<?php
echo '<div style="clear:both; height:10px"></div>
<div id="navigator" style="margin-bottom:15px; padding-left:20px">
    <a href="?lang='.$lang.'"><img src="images/home.jpg" alt="trang chủ" /></a>
    '.$tc->navigator($idMenu).'
</div>';

$qr = $tc->image_news($menu_root,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$info_news .= '<div class="item_info_right"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
}

$qr = $tc->image_all($row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$str_image .= '<li><p class="img"><a class="fancybox" href="'.url_library_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_library_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></p><h3>'.$row['name'].'</h3></li>';
}

$str_image = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />

<div id="photos"><ul>'.$str_image.'</ul></div>
<div style="clear:both; height:30px;"></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$(".fancybox").fancybox();
	});
</script>';

echo '
<div id="left_info">
	<div class="viewpost">
		<h1>'.$row_detail['name'].'</h1>
		<div class="date">Ngày đăng '.date('d-m-Y H:i', strtotime($row_detail['date_create'])).'</div>
		<h2>'.$row_detail['metaDescription'].'</h2>
		'.$str_image.'
	</div>
</div>
<div id="right_info">
	<div class="box_info"><div class="title_info">Hình ảnh mới</div>'.$info_news.'</div>
</div>';