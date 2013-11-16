<div style="clear:both; height:20px"></div>
<div id="navigator" style="margin-bottom:30px; padding-left:20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>
<div id="baiviet">
<?php
$from = (($page - 1) * max_limit_1);
$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_1;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);
if($total > 1){
	echo "<div style='padding-left:20px'><h1>{$row_menu_one['title']}</h1><h2>{$row_menu_one['metaDescription']}</h2></div>";
	while($row = mysql_fetch_array($list)){
	$link = "http://{$domain}/".$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	echo '<div class="item_baiviet">
		<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
		<div class="date_baiviet">Cập nhật ngày '.date('d-m-Y H:i', strtotime($row['date_create'])).'</div>
		<div class="img_baiviet"><a href="'.$link.'"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
		<div class="info_baiviet">'.$row['metaDescription'].'</div>
		<div style="text-align:right"><span class="social"><a href="javascript:void();" style="color:#ED1E24" onclick="facebook_share(\''.$link.'\')">Share</a></span>
		<a href="'.$link.'" style="padding-left:30px; font-weight:bold; color:#ED1E24">Xem chi tiết</a></div>
	</div>';
	}
	$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_limit_1,'id',$table,$where);
	echo "<div id=\"phantrang\">{$phantrang}</div>";
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else{
	echo "<div style='padding-left:20px'><h1>{$row_menu_one['title']}</h1><h2>{$row_menu_one['metaDescription']}</h2></div>
	<div style='padding:0 50px'>update..</div>";
}
?>
</div>