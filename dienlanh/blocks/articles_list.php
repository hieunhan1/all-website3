<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id';
$table = 'web_info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

echo '<div id="navigator"><a href=""><img src="images/home.png" alt="Thiên Long mobile" /></a>'.$tc->navigator($row_menu_one['id']).'</div>
<div id="home_product">';
if($total > 1){
	$view_post .= '<h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';
	while($row = mysql_fetch_array($list)){
		$view_post .= '<div class="item_info"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">
		<div class="img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3></a><p>'.$row['description'].$row['description'].$row['description'].$row['description'].$row['description'].'</p></div>';
	}
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= $navigator.'<div style="padding:30px; height:500px">Thông tin đang được cập nhật...</div>';

$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_limit_1,'id',$table,$where);
$view_post .= '<div style="clear:both; height:1px"></div><div id="phantrang">'.$phantrang.'<div style="clear:both; height:1px"></div></div>';
echo $view_post.'</div>';
include_once('blocks/right.php');