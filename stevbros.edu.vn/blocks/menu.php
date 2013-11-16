<?php
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,2);
$i = 0;
while($row = mysql_fetch_array($menu)){ $i++;
	$view_menu .= '<li id="nav_'.$i.'"><a href="'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
	$view_menu .= $tc->getSubmenu($row['id'],2);
	$view_menu .= '</li>';
}
$view_menu .= '</ul><div id="social">';
$menu = $tc->menu(0,6);
while($row = mysql_fetch_array($menu)){
	$view_menu .= '<a href="'.$row['url'].'"  title="'.$row['title'].'" target="_blank"><img src="'.url_danhmuc_image.$row['url_hinh'].'" alt="'.$row['title'].'" /></a>';
}
echo $view_menu .= '</div></div>';