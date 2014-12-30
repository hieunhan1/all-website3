<?php
$from = (($page - 1) * max_limit_1);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);

if($list) $total = mysql_num_rows($list);
if($total > 1){
	$i = 0;
	while($row = mysql_fetch_array($list)){
		$i++;
		if($i%2 == 1) $style = 'style="float:left"'; else $style = 'style="float:right"';
		$link = "http://{$domain}/".$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		$str_info .= '<div class="box_baiviet" '.$style.'>
			<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
			<div class="box_baiviet_img"><a href="'.$link.'"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<div class="box_baiviet_info">'.$row['metaDescription'].'</div>
		</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_1,'id',$table,$where);
	$str_info .= "<div id=\"phantrang\">{$phantrang}</div>";
}elseif($total == 1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else{
	$i = 0;
	$qr_dm = $tc->menu_home_type($idMenu);
	if(mysql_num_rows($qr_dm) > 0){
		while($row = mysql_fetch_array($qr_dm)){
			$i++;
			if($i%2 == 1) $style = 'style="float:left"'; else $style = 'style="float:right"';
			$str_info .= '<div class="box_baiviet" '.$style.'>
				<a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
				<div class="box_baiviet_img"><a href="'.$row['url'].'"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
				<div class="box_baiviet_info">'.$row['metaDescription'].'</div>
			</div>';
		}
	}else $str_info = '<div style="padding:0 50px">update..</div>';
}


echo '<div class="viewpost">
	<h1>'.$row_menu_one['title'].'</h1>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
</div>
<div style="height:20px"></div>
<div>'.$str_info.'</div>
';