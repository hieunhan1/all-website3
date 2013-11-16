<?php
$from = (($page - 1) * max_news);
$select = 'name,name_rewrite,url_hinh,description,date_update';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_news;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

echo '<div id="list_detail">';
if($total > 1){
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $img = url_detail_thumb_image.$row['url_hinh']; else $img = url_no_image;
		echo '
		<div class="item_detail">
        	<div class="img"><img src="'.$img.'" alt="'.$row['name'].'"></div>
            <a href="'.$lang.'/'.$row_menu_one['url'].$row['name_rewrite'].'.html"><h2>'.$row['name'].'</h2></a>
            <div class="date">Cập nhật '.date('d/m/Y', strtotime($row['date_update'])).'</div>
            <div class="content">'.$row['description'].'</div>
        </div>
		';
	}
	$url_page = trim($lang.'/'.$row_menu_one['url'],'/');
	$phantrang = $tc->phantrang($url_page,$page,max_news,'id',$table,$where);
	echo "<div id=\"phantrang\">{$phantrang}</div>";
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$lang.'/'.$row_menu_one['url'].$row['name_rewrite'].'.html');
}else echo '<div style="padding:20px">is updated...</div>';

echo '</div>';
?>


