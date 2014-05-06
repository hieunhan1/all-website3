<?php
$select = 'name,name_rewrite,url_hinh,menu_id,price,noibat';
$table = 'products';
$where = "`delete`=0 AND status=1 AND name_rewrite LIKE '%{$dt}%'";
$limit = "LIMIT 60";
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

echo '<div id="home_product"><h1 style="font-weight:100">Tìm được '.$total.' sản phẩm theo từ khóa "'.$_POST['txtSearch'].'"</h1><br />';
while($row = mysql_fetch_array($list)){
	if($row['price']!=0) $price = number_format($row['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
	echo '<div class="item_product" style="width:200px; margin:0 13px 13px 0">
		<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><p class="img_product" style="background:url('.url_product_thumb.$row['url_hinh'].') no-repeat center">'.$tc->type_noibat($row['noibat']).'</p>
		<h3>'.$row['name'].'</h3></a>
		<div class="price_product">'.$price.'</div>
	</div>';
}

echo $phantrang.'</div>';

include_once('blocks/right.php');