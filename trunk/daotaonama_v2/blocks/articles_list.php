<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'web_info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 1){
	while($row = mysql_fetch_array($list)){
		$link_detail = $row_menu_one['url'].$row['name_rewrite'].'.html';
		if($row['url_hinh']!='') $url_hinh = url_detail_image_thumb.$row['url_hinh']; else $url_hinh = url_default_image;
		$str_info .= '<div class="list_info">
			<div class="list_content">
				<a href="'.$link_detail.'"><h3>'.$row['name'].'</h3></a>
				<p>Ngày đăng: '.date('d-m-Y',strtotime($row['date_create'])).'</p>
				<div>'.strip_tags($row['metaDescription']).'</div>
				<li><a href="'.$link_detail.'">Đọc tiếp</a></li>
			</div>
			<div class="list_img"><img src="'.$url_hinh.'" alt="'.$row['name'].'" /></div>
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

echo '<div class="home_about">'.$row_menu_one['title'].'</div><br />'.$str_info;