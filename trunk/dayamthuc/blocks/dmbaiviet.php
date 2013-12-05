<div class='boxleft'>
<div class='titleleft'></div><div class='titlecenter'><a href='<?php echo $row_xem[url];?>'><?php echo $row_xem[name];?></a></div><div class='titleright'></div><div class='titleicon'><?php if($row_xem[url_hinh] != '') echo "<img src='images/{$row_xem[url_hinh]}' alt='{$row_xem[name]}' />";?></div><div style='clear:both; height:1px'></div>
<?php
if($type_menu==4){
	include_once('blocks/thuvien.php');
}elseif($idMenu==3){
	include_once('blocks/chuongtrinh.php');
}elseif($type_menu==2){
	include_once('blocks/list_baiviet.php');
}?>
<div style='clear:both'></div>
</div>