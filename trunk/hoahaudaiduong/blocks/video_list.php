<?php
$from = (($page - 1) * max_limit_4);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'video';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_4;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';

if($total > 0){
	while($row = mysql_fetch_array($list)){
	$link = "http://{$domain}/".$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	$str_video .= '<div class="item_video">
		<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
		<div class="date_video">Ngày đăng '.date('d-m-Y H:i', strtotime($row['date_create'])).'</div>
		<div class="img_video"><div><a href="'.$link.'"><img src="'.url_video_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div></div>
		<div class="detail_video">'.$row['metaDescription'].'</div>
	</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_4,'id',$table,$where);
	$str_video .= '<div style="clear:both; height:10px"></div><div id="phantrang">'.$phantrang.'</div>';
}else{
	$str_video = '<div style="padding:0 50px">update..</div>';
}


echo $navigator.'<div class="viewpost" style="margin-bottom:30px"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div>'.$str_video.'<div style="clear:both; height:40px"></div>';