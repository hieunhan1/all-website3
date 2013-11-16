<?php
$from = (($page - 1) * max_news);
$select = 'name,name_rewrite,url_hinh,description,menu_id';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_news;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

include_once('blocks/navigator.php');
$view_post .= '<div class="content">';
if($total > 1){
	$view_post .= $navigator;
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $image = '<img src="'.url_articles_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />';
		else $image = '<img src="'.url_no_image.'" alt="'.$row['name'].'" />';
		$link = $tc->link_detail($row['menu_id']);
		$view_post .= '<div class="item_info">
		<a href="'.$link.$row['name_rewrite'].'.html" title="'.$row['name'].'">
		'.$image.'<h3>'.$row['name'].'</h3></a><p>'.$row['description'].'</p>
		<a href="'.$link.$row['name_rewrite'].'.html" style="color:#ed3237">Xem chi tiết</a></div>';
	}
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= $navigator.'<div style="padding:30px; height:500px">Thông tin đang được cập nhật...</div>';

$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_news,'id',$table,$where);
$view_post .= '<div style="clear:both; height:1px"></div><div id="phantrang">'.$phantrang.'<div style="clear:both; height:1px"></div></div>';
echo $view_post.'</div>';