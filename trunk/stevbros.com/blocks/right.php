<?php
$view_right .= '<div id="right"><div style="clear:both; height:10px"></div>';
$banner = $tc->slider_banner(2);
if(mysql_num_rows($banner) > 0){
	$view_right .= '<div id="banner">';
	while($row_banner = mysql_fetch_array($banner)){
		$view_right .= '<a href="'.$row_banner['link'].'" title="'.$row_banner['name'].'"><img src="'.url_slider_image.$row_banner['url_hinh'].'" alt="'.$row_banner['name'].'" /></a>';
	}
	$view_right .= '</div>';
}

if(@$danhmuc) $limit = 3; else $limit = 2;
$menu_right = $tc->menu(0,4);
while($row_right = mysql_fetch_array($menu_right)){
	$view_right .= '<div class="item"><a href="'.$row_right['url'].'" title="'.$row_right['name'].'"><h3>'.$row_right['name'].'</h3></a>';
	$info_right = $tc->home_info($row_right['id'],$limit);
	while($row_info_right = mysql_fetch_array($info_right)){
		if($row_info_right['url_hinh']!='') $url_img = '<p class="img"><img src="'.url_detail_thumb_image.$row_info_right['url_hinh'].'" alt="'.$row_info_right['name'].'" /></p>'; else $url_img = '';
		$view_right .= '<div>'.$url_img.'
            <a href="'.$tc->link_detail($row_info_right['menu_id']).$row_info_right['name_rewrite'].'.html" title="'.$row_info_right['name'].'"><h4>'.$row_info_right['name'].'</h4></a>
            <p class="date">'.date("l, d F Y", strtotime($row_info_right['date_update'])).'</p>
            <p class="content">'.$row_info_right['description'].'</p>
        </div>';
	}
	$view_right .= '</div>';
}

$view_right .= '</div>';