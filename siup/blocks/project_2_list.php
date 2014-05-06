<div id="navigator" style="margin:20px 30px 20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>

<div style="margin:0 30px">
    <?php
    $qr = $tc->project_2_noibat($idMenu);
	$row = mysql_fetch_array($qr);
	echo '<h1 id="h1_dm">'.$row['name'].'</h1> <div class="viewpost">'.$row['content'].'</div>';
	?>
</div>

<?php
$from = (($page - 1) * max_limit_2);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id';
$table = 'web_info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 0){
	while($row = mysql_fetch_array($list)){
		echo '<div class="project_2_item" style="margin:0 0 35px 32px">
			<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="project_2_img"><img src="'.url_project_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
			<h3>'.$row['name'].'</h3></a>
		</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id',$table,$where);
	echo '<div id="phantrang" style="margin-left:32px">'.$phantrang.'</div>';
}
?>