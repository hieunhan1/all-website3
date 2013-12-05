<?php
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,2);
while($row = mysql_fetch_array($menu)){
	$view_menu .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a>';
	$view_menu .= $tc->getSubmenu($row['id'],2);
	$view_menu .= '</li>';
}
mysql_free_result($menu);
echo $view_menu.'</ul></div>';
