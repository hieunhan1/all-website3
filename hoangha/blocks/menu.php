<?php
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,2,$lang);
while($row = mysql_fetch_array($menu)){
	if($menu_root != $row['id']){
		$view_menu .= '<li><a href="'.$lang.'/'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],2,$lang);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$lang.'/'.$row['url'].'"  title="'.$row['title'].'" style="background:#017B80">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],2,$lang);
		$view_menu .= '</li>';
	}
}
$view_menu .= '</ul></div>';