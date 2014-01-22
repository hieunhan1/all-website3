<?php
$i = 0;
$qr = mysql_query("SELECT name,url_hinh_bst FROM bosuutap_images WHERE `delete`=0 AND status=1 ORDER BY date_update DESC");
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i%3 == 1) $style = ''; else $style = 'style="margin-left:8px"';
	$str_image .= '<div class="box_photos_bst" '.$style.'><a class="fancybox" href="'.url_bosuutap_image.$row['url_hinh_bst'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_bosuutap_image_thumb.$row['url_hinh_bst'].'" alt="'.$row['name'].'" /></a><div class="box_photos_title">'.$row['name'].'</div></div>';
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

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';

$qr = $tc->menu_one_id($menu_root);
$row = mysql_fetch_array($qr);
$view_right = '<div id="right"><div class="right_title">'.$row['name'].'</div>';
$qr = $tc->menu($menu_root,5);
$total_right = mysql_num_rows($qr);
while($row = mysql_fetch_array($qr)){
	if(trim($row['url'],'/') != $danhmuc) $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	else $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'" style="color:#3EB1FF">'.$row['name'].'</a></li>';
}
$view_right .= '</div>';

echo $navigator.'<div id="left"><div class="viewpost"><h1>'.$row_detail['name'].'</h1>'.$row_detail['content'].'</div><br /><br />'.$str_image.'</div>'.$view_right.'
<div style="clear:both; height:40px"></div>';