<?php
echo '<div id="navigator"><a href=""><img src="images/home.png" alt="Thiên Long mobile" /></a>'.$tc->navigator($row_menu_one['id']).'</div>';

$from = (($page - 1) * max_limit_2);
$select = 'name,name_rewrite,url_hinh,menu_id,price,noibat';
$table = 'web_products';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 1){
	echo '<div id="home_product"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';
	while($row = mysql_fetch_array($list)){
		if($row['price']!=0) $price = number_format($row['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
		echo '<div class="home_product_item">
			<a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">
				<div class="home_product_item_img" style="background:url(\''.url_products_image_thumb.$row['url_hinh'].'\') no-repeat center">'.$tc->type_noibat($row['noibat']).'</div>
				<h3>'.$row['name'].'</h3>
			</a>
			<div class="price_product">'.$price.'</div>
		</div>';
	}
	$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_limit_2,'id',$table,$where);
	$phantrang = '<div id="phantrang">'.$phantrang.'</div>';
	echo $phantrang.'</div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else echo '<div style="clear:both; padding:30px; width:600px; height:300px; float:left">Thông tin đang được cập nhật...</div>';

include_once('blocks/right.php');