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
	if($i%5 != 1) $style = 'style="margin-left:32px; height:180px"'; else $style = 'style="height:180px"';
	$str_image .= '<div class="item_sp" '.$style.'>
		<a class="fancybox" href="'.url_products_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'">
			<div class="img"><img src="'.url_products_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3>
		</a></div>';
}
$str_image = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css" media="screen" />

<div id="photos">'.$str_image.'</div>
<div style="clear:both; height:30px;"></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$(".fancybox").fancybox();
	});
</script>';

$phantrang = $tc->phantrang($danhmuc,$page,max_limit_3,'id',$table,$where);
$str_image .= "<div id=\"phantrang\">{$phantrang}</div>";



echo '<div id="left">';
include_once('blocks/danhmuc_sp.php');
echo '</div>
<div id="right">
	<div id="title_detail"><h1>'.$row_menu_one['title'].'</h1></div>
	'.$str_image.'
</div>
<div style="clear:both; height:20px"></div>';