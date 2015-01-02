<?php
/*$qr = $tc->menu_one_id($menu_root);
$row_home = mysql_fetch_array($qr);*/
$view_menu = '<div id="menu"><ul id="nav"><li><a href="/" title="Hồng Cường Club">Trang chủ</a></li>';

$menu = $tc->menu($menu_root);
if(mysql_num_rows($menu) == 0) $menu = $tc->menu(0,1);
while($row = mysql_fetch_array($menu)){
	if($row_menu_one['id'] != $row['id']){
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id']);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'" id="menu_active">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id']);
		$view_menu .= '</li>';
	}
}
echo $view_menu .= '</ul></div>';