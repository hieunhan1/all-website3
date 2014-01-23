<?php
$from = (($page - 1) * max_limit_2);
$select = 'name,name_rewrite,url_hinh,sbd,menu_id';
$table = 'thisinh';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';
$view_post = '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div><div style="clear:both; height:20px"></div>';

while($row = mysql_fetch_array($list)){
	$binhchon = '123 bình chọn';
	$view_post .= '<div class="home_thisinh_item">
		<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img"><img src="'.url_thisinh_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h5>'.$row['name'].'</h5></a>
		SBD: '.$row['sbd'].'<br />'.$binhchon.'
	</div>';
}

$phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id',$table,$where);
$view_post .= '<div id="phantrang">'.$phantrang.'</div>';

echo $navigator.$view_post.'<div style="clear:both; height:30px"></div>';