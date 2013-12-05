<div class='boxleft'>
    <div class='titleleft'></div>
    <div class='titlecenter'><a href='<?php echo $row_xem['url'];?>'><?php echo $row_xem['name'];?></a></div>
    <div class='titleright'></div>
    <div class='titleicon'></div>
    <div style='clear:both; height:5px'></div>
<?php
$view_thuvien = '<div id="chuongtrinh"><h1>'.$row_xem['title'].'</h1><h2 style="color:#666; font-size:13px; font-weight:100; margin:0 20px; padding-bottom:30px">'.$row_xem['metaDescription'].'</h2>';

$thuvien2 = $tc->thuvien_sub($idMenu);
$total = mysql_num_rows($thuvien2);
if($total>0){
	while($row_thuvien2 = mysql_fetch_array($thuvien2)){
		//$view_thuvien .= '<div class="item12"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3>'.$row_thuvien2['name'].'</h3></a></div>';
		if($row_thuvien2['type_id']==5) $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
		elseif($row_thuvien2['type_id']==6) $view_thuvien .= '<div class="item_video"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3>'.$row_thuvien2['name'].'</h3></a></div>';
		else $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
	}
}else{
    $view_thuvien .= '<link rel="stylesheet" href="library/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
	<script src="library/prettyPhoto/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
	<div id="photos"><ul class="gallery clearfix">';
	$photo = $tc->PhotoAlbum($idMenu);
	while($row_photo = mysql_fetch_array($photo)) {
		$view_thuvien .= '<li><a href="'.url_library_image.$row_photo['url_hinh'].'" rel="prettyPhoto[gallery2]" title="'.$row_photo['name'].'"><img class="img" src="'.url_library_thumb_image.$row_photo['url_hinh'].'" alt="'.$row_photo['name'].'" /></a></li>';
	}
    $view_thuvien .= '</ul></div><div style="clear:both; height:30px;"></div>
	<script type="text/javascript" charset="utf-8">$(document).ready(function(){
	$(".gallery a[rel^=\'prettyPhoto\']").prettyPhoto({animation_speed:\'fast\',slideshow:3000, hideflash: true});
	$(document).bind("resize",function(){
		$(".gallery a[rel^=\'prettyPhoto\']").prettyPhoto({animation_speed:\'fast\',slideshow:3000, hideflash: true});
	}); });</script>';
}

echo $view_thuvien.'</div>';
?>
<div style='clear:both'></div>
</div>