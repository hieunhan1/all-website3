<?php
$i = 0;
$view_menu = '<div id="menu"><ul id="nav">';
$menu = $tc->menu(0,1,$lang);
while($row = mysql_fetch_array($menu)){
	$i++;
	if($i!=1) $style='background:url(images/menu_line.gif) no-repeat left'; else $style='';
	if($menu_root!=$row['id']){
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'" style="'.$style.'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1,$lang);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'" style="color:#FF0; '.$style.'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],1,$lang);
		$view_menu .= '</li>';
	}
}
echo $view_menu .= '</ul></div>';