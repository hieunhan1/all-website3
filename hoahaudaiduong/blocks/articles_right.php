<?php
$qr = $tc->menu_one_id($menu_root);
$row = mysql_fetch_array($qr);

$view_right = '<div id="right"><div class="right_title">'.$row['name'].'</div>';

$qr = $tc->menu($menu_root,1);
$total_right = mysql_num_rows($qr);
while($row = mysql_fetch_array($qr)){
	if(trim($row['url'],'/') != $danhmuc) $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	else $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'" style="color:#3EB1FF">'.$row['name'].'</a></li>';
}

$view_right .= '</div>';



