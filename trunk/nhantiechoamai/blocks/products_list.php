<?php
$from = (($page - 1) * max_limit_2);
$select = 'id,name,name_rewrite,url_hinh,menu_id,price,metaDescription';
$table = 'products';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$i = 0;
while($row = mysql_fetch_array($list)){
	$i++;
	if($i%2 == 0) $float = 'style="float:right"'; else $float = 'style="float:left"';
	$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	$menu_tiec .= '<div class="box_tiec" '.$float.'>
    	<div class="box_tiec_img"><a href="'.$link.'"><img src="'.url_product_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
        <div class="box_tiec_info">
        	<div class="box_tiec_price">'.$row['price'].'<div style="clear:both; height:1px; margin:2px 0; background-color:#FFF"></div>bàn tiệc</div>
        	<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
            <p>'.strip_tags($row['metaDescription']).'</p>
        </div>
    </div>';
}
echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
	'.$menu_tiec.'
	<div style="clear:both; height:10px"></div>
</div>';