<?php
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,1,$lang);
while($row = mysql_fetch_array($menu)){
	if($menu_root!=$row['id']){
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1,$lang);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'" id="active" style="font-weight:bold; color:#00918E; margin-top:20px; padding:20px 15px 5px 15px; background-color:#FFF; border:solid 3px #7FB0AC">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1,$lang);
		$view_menu .= '</li>';
	}
}
echo $view_menu .= '</ul></div>';