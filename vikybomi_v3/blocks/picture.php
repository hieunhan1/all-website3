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
	$str_image .= '<li><p class="img"><a href="'.url_library_image.$row['url_hinh'].'" rel="prettyPhoto[gallery2]" title="'.$row['name'].'"><img src="'.url_library_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></p> <h3>'.$row['name'].'</h3></li>';
}

$str_image = '<link rel="stylesheet" href="library/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<script src="library/prettyPhoto/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>

<div id="photos"><ul class="gallery clearfix">'.$str_image.'</ul></div>
<div style="clear:both; height:30px;"></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$(".gallery a[rel^=\'prettyPhoto\']").prettyPhoto({animation_speed:\'fast\',slideshow:3000, hideflash: true});
		$(document).bind("resize",function(){
			$(".gallery a[rel^=\'prettyPhoto\']").prettyPhoto({animation_speed:\'fast\',slideshow:3000, hideflash: true});
		});
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