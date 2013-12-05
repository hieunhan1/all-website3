<div class='boxleft'>
<div class='titleleft'></div><div class='titlecenter'><a href='<?php echo $row_xem[url];?>'><?php echo $row_xem[name];?></a></div><div class='titleright'></div><div class='titleicon'></div><div style='clear:both; height:1px'></div>
<?php
$view_thuvien = '<div id="chuongtrinh">';
$thuvien = $tc->thuvien($idMenu,$type_menu);
$total = mysql_num_rows($thuvien);
//if($total>1){
	
//}
while($row_thuvien = mysql_fetch_array($thuvien)){
	$view_thuvien .= '<div class="item_ti"><h4>'.$row_thuvien['name'].'</h4><h6>'.$row_thuvien['name'].'</h6></div>';
	$thuvien2 = $tc->thuvien_sub($row_thuvien['id']);
	while($row_thuvien2 = mysql_fetch_array($thuvien2)){
		if($row_thuvien2['type_id']==5) $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
		elseif($row_thuvien2['type_id']==6) $view_thuvien .= '<div class="item_video"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3>'.$row_thuvien2['name'].'</h3></a></div>';
		else $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
	}
	$view_thuvien .= '<div style="clear:both; height:10px"></div>';
}
echo $view_thuvien.'</div>';
?>
<div style='clear:both'></div>
</div>