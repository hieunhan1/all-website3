<?php
$from = (($page - 1) * max_limit_1);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 1){
	while($row = mysql_fetch_array($list)){
	$link = "http://{$domain}/".$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	$str_info .= '<div class="box_dichvu">
		<div class="box_dichvu_img"><a href="'.$link.'"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
		<div class="box_dichvu_info"><a href="'.$link.'"><h3>'.$row['name'].'</h3></a><p>'.$row['metaDescription'].'</p></div>
	</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_1,'id',$table,$where);
	$str_info .= "<div id=\"phantrang\">{$phantrang}</div>";
}elseif($total == 1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else{
	$str_info = '<div style="padding:0 50px">update..</div>';
}


echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
	'.$str_info.'
	<div style="clear:both; height:10px"></div>
</div>
';