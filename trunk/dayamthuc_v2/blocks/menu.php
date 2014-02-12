<?php
$view_menu = '<div id="menu"><ul id="nav">';
$i = 0;
$menu = $tc->menu(0,2,$lang);
while($row = mysql_fetch_array($menu)){
	$i++;
	if($i!=1) $style = 'margin-left:21px; '; else $style = '';
	if($menu_root != $row['id']){
		$view_menu .= '<li><a href="'.$row['url'].'" style="'.$style.'">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],2,$lang);
		$view_menu .= '</li>';
	}else{
		$view_menu .= '<li><a href="'.$row['url'].'" style="'.$style.'color:#FF0">'.$row['name'].'</a>';
		$view_menu .= $tc->getSubmenu($row['id'],2,$lang);
		$view_menu .= '</li>';
	}
}
echo $view_menu .= '</ul></div>';
?>