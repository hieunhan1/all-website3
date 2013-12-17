<?php
$from = (($page - 1) * max_limit_3);
$select = 'name,url_hinh';
$table = 'photo_gallery';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_3;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

$i = 0;
while($row = mysql_fetch_array($list)){
	$i++;
	if($i%3 == 1) $style = ''; else $style = 'style="margin-left:35px"';
	$str_image .= '<div class="box_photos" '.$style.'><a class="fancybox" href="'.url_library_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_library_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a><div class="box_photos_title">'.$row['name'].'</div></div>';
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

$phantrang = $tc->phantrang($danhmuc,$page,max_limit_3,'id',$table,$where);
$str_image .= "<div id=\"phantrang\">{$phantrang}</div>";

echo '<div id="content">
	<div class="viewpost">
		<h1>'.$row_menu_one['title'].'</h1>
		<h2>'.$row_menu_one['metaDescription'].'</h2><br />
	</div>
	'.$str_image.'<div style="clear:both; height:10px"></div>
</div>';