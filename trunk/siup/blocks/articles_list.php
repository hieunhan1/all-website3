<?php
$from = (($page - 1) * max_limit_1);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'web_info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 1){
	while($row = mysql_fetch_array($list)){
	$link = "http://{$domain}/".$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	$str_info .= '<div class="item_info">
		<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
		<div class="date_info">Ngày đăng '.date('d-m-Y H:i', strtotime($row['date_create'])).'</div>
		<div class="img_info"><a href="'.$link.'"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
		<div class="detail_info">'.$row['metaDescription'].'</div>
		<div style="text-align:right"><span class="social"><a href="javascript:void();" style="color:#DA251E" onclick="facebook_share(\''.$link.'\')">Share facebook</a></span>
		<a href="'.$link.'" style="padding-left:30px; font-weight:bold; color:#DA251E">Xem chi tiết</a></div>
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


echo '<div style="clear:both; height:10px"></div>
<div id="navigator" style="margin-bottom:15px; padding-left:20px">
    <a href="?lang='.$lang.'"><img src="images/home.jpg" alt="trang chủ" /></a>
    '.$tc->navigator($idMenu).'
</div>

<div class="title_list" style="margin-bottom:30px"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div>'.$str_info.'<div style="clear:both; height:10px"></div>
';