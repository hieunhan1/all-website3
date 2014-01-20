<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,date_update,menu_id';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

include_once('blocks/articles_right.php');

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';

//$view_post = '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div><div style="clear:both; height:20px"></div>';
if($total > 1){
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $img = url_detail_image_thumb.$row['url_hinh']; else $img = url_no_image;
		$view_post .= '<div class="item_detail">
            <div class="date">'.$tc->datetime($row['date_update']).'</div>
        	<div class="img"><img src="'.$img.'" alt="'.$row['name'].'"></div>
            <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a>
            <div class="info">'.strip_tags($row['metaDescription']).'</div>
        </div>';
	}
	$url_page = trim($lang.'/'.$row_menu_one['url'],'/');
	$phantrang = $tc->phantrang($url_page,$page,max_limit_1,'id',$table,$where);
	$view_post .= '<div id="phantrang">'.$phantrang.'</div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= '<div style="padding:20px">is updated...</div>';

echo $navigator.'<div id="left">'.$view_post.'</div>'.$view_right.'<div style="clear:both; height:40px"></div>';

