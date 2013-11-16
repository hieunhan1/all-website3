<?php
$from = (($page - 1) * max_news);
$select = 'name,name_rewrite,url_hinh,description,menu_id,date_update';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_news;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.png" alt="Home" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

$view_post .= $navigator.'<div id="list_detail"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';
if($total > 1){
	while($row = mysql_fetch_array($list)){
		if($row['url_hinh']!='') $image = '<div class="img"><img src="'.url_articles_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>';
		else $image = '<div class="img"><img src="'.url_no_image.'" alt="'.$row['name'].'" /></div>';

		$view_post .= '<div class="item_detail">
			<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$image.'<h3>'.$row['name'].'</h3></a>
			<div class="date">Cập nhật '.date('d/m/Y H:i', strtotime($row['date_update'])).'</div><div class="content">'.$row['description'].'</div>
		</div>';
	}
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= '<div style="padding:30px; height:500px">Thông tin đang được cập nhật...</div>';

$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_news,'id',$table,$where);
$view_post .= '<div style="clear:both; height:1px"></div><div id="phantrang">'.$phantrang.'<div style="clear:both; height:1px"></div></div>';
echo $view_post.'</div>';