<?php
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,1,$lang);
while($row = mysql_fetch_array($menu)){
	if($menu_root != $row['id']){
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'" style="color:#FFF200">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1);
		$view_menu .= '</li>';
	}
}
$view_menu .= '</ul></div>';
echo $view_menu;