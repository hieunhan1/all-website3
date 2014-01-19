<?php
$view_right = '<div id="right"><div class="right_title">Thông tin - Sự kiện</div>';

$qr = $tc->menu($menu_root,1);
$total_right = mysql_num_rows($qr);
while($row = mysql_fetch_array($qr)){
	$view_right .= '<li class="left_item_1"><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
}

$view_right .= '</div>';



