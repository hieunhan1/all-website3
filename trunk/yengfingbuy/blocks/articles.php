<?php
$qr = $tc->menu($menu_root,6);
if(mysql_num_rows($qr) > 0){
	$q = $tc->menu_one_id($menu_root);
	$row_q = mysql_fetch_array($q);
	
	while($row = mysql_fetch_array($qr)){
		if( trim($row['url'],'/') != $danhmuc ) $str_dm_info .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		else $str_dm_info .= '<li><a href="'.$row['url'].'" style="color:#F00">'.$row['name'].'</a></li>';
	}
	$str_dm_info = '<div class="danhmuc_sp"> <div class="title" style="background:url(images/bg-dmsp-title.gif) no-repeat">'.$row_q['name'].'</div>'.$str_dm_info.' </div> <div style="clear:both; height:10px"></div>';
}
	
echo '<div id="left">'.$str_dm_info;
include_once('blocks/danhmuc_sp.php');
echo '</div>
<div id="right">
	<div id="title_detail"><h1>'.$row_detail['name'].'</h1></div>
	<div class="viewpost">'.$row_detail['content'].'</div>
</div>
<div style="clear:both; height:20px"></div>';