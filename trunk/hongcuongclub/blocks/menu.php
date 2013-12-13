<?php
$view_menu = '<div id="menu"><ul id="nav"><li><a href="http://'.$domain.'">Trang chủ</a></li>';
$menu = $tc->menu($menu_root);
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