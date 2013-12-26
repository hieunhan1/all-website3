<?php
$from = (($page - 1) * max_product);
$select = 'name,name_rewrite,url_hinh,description,menu_id';
$table = 'products';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_product;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

include_once('blocks/navigator.php');
$view_post .= '<div class="content">';
if($total > 1){
	$view_post .= $navigator;
	$view_post .= '<h1 style="color:#0bac60; font-size:220%; padding:0 30px 10px">'.$row_menu_one['name'].'</h1>
	<h2 style="font-size:100%; font-weight:100; line-height:22px; padding:0 30px 30px">'.$row_menu_one['metaDescription'].'</h2>
	<div style="clear:both">';
	while($row = mysql_fetch_array($list)){
		$view_post .= '<div class="item_product"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><img src="'.url_product_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /><h3>'.$row['name'].'</h3></a></div>';
	}
	$view_post .= '<div style="clear:both; height:1px"></div></div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= $navigator.'<div style="padding:30px; height:500px">Thông tin đang được cập nhật...</div>';

$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_product,'id',$table,$where);
$view_post .= '<div id="phantrang">'.$phantrang.'<div style="clear:both; height:1px"></div></div>';
echo $view_post.'</div>';