<?php
/*about*/
$qr = $tc->home_info_new($lang);
while($row = mysql_fetch_array($qr)){
	$str_l .= '<div class="item_home_info"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
}
$str_l = '<div id="home_info"><div class="title_home_info">'.const_home_info.'</div>'.$str_l.'</div>
<div style="clear:both; height:1x"></div>';

$qr = $tc->menu($idMenu);
$total = mysql_num_rows($qr);
if($total > 0){
	while($row = mysql_fetch_array($qr)){
		$view_left .= '<div class="left_item"><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a></div>';
	}
	$view_left = '<div id="left">'.$view_left.$str_l.'</div>';
}else{
	$qr = $tc->info_left($idMenu);
	$total = mysql_num_rows($qr);
	
	while($row = mysql_fetch_array($qr)){
		if($dt!=$row['name_rewrite']) $view_left .= '<div class="left_item"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
		else $view_left .= '<div class="left_item"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" style="color:#ED1E28; background:url(images/left-icon.gif) no-repeat left; background-position:0px -60px">'.$row['name'].'</a></div>';
	}
	$view_left = '<div id="left">'.$view_left.$str_l.'</div>';
}
$view_left .= '<script type="text/javascript">
$(document).ready(function(){
	var left = $("#left").height();
	var right = $("#right").height();
	if(left < right) $("#left").height(right);
});
</script>';