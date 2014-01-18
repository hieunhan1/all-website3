<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,date_update,menu_id';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'">Trang chủ</a>'.$tc->navigator($idMenu,$lang).'</div>';

echo '<div id="right">'.$navigator.'<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';
if($total > 1){
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $img = url_detail_thumb_image.$row['url_hinh']; else $img = url_no_image;
		echo '<div class="item_detail">
        	<div class="img"><img src="'.$img.'" alt="'.$row['name'].'"></div>
            <a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a>
            <div class="date">'.const_date_update.date('d/m/Y', strtotime($row['date_update'])).'</div>
            <div class="content">'.$row['description'].'</div>
        </div>';
	}
	$url_page = trim($lang.'/'.$row_menu_one['url'],'/');
	$phantrang = $tc->phantrang($url_page,$page,max_limit_1,'id',$table,$where);
	echo '<div id="phantrang">'.$phantrang.'</div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else echo '<div style="padding:20px">is updated...</div>';

echo '</div></div>';
?>
