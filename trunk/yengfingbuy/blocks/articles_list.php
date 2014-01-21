<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 1){
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $img = url_detail_image_thumb.$row['url_hinh']; else $img = url_no_image;
		$view_post .= '<div class="item_detail">
        	<div class="img"><img src="'.$img.'" alt="'.$row['name'].'"></div>
            <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a>
            <div class="info">'.strip_tags($row['metaDescription']).'</div>
        </div>';
	}
	$url_page = $danhmuc.'/';
	$phantrang = $tc->phantrang($url_page,$page,max_limit_1,'id',$table,$where);
	$view_post .= '<div id="phantrang">'.$phantrang.'</div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= '<div style="padding:20px">is updated...</div>';

$qr = $tc->menu($menu_root,6);
if(mysql_num_rows($qr) > 0){
	$q = $tc->menu_one_id($menu_root);
	$row_q = mysql_fetch_array($q);
	
	while($row = mysql_fetch_array($qr)){
		if( trim($row['url'],'/') != $danhmuc ) $str_dm_info .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		else $str_dm_info .= '<li><a href="'.$row['url'].'" style="color:#F00">'.$row['name'].'</a></li>';
	}
	$str_dm_info = '<div class="danhmuc_sp"> <div class="title" style="background:url(images/bg-dmsp-title.gif) no-repeat">'.$row_q['name'].'</div>'.$str_dm_info.' </div> <div style="clear:both; height:10px"></div>';
}
	
echo '<div id="left">'.$str_dm_info;
include_once('blocks/danhmuc_sp.php');
echo '</div>
<div id="right">
	<div id="title_detail"><h1>'.$row_menu_one['title'].'</h1></div>
	'.$view_post.'
</div>
<div style="clear:both; height:20px"></div>';

