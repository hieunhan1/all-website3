<?php
$qr = $tc->home_about($idMenu);
if(mysql_num_rows($qr)>0){
	$row = mysql_fetch_array($qr);
	echo '<div id="home_about">
		<div class="home_img"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
		<h1>'.$row['name'].'</h1>
		<p>'.$row['metaDescription'].'</p>
		<p><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">Xem thêm..</a></p>
	</div>';
}

$i = 0;
$qr = $tc->home_list($lang);
while($row = mysql_fetch_array($qr)){
	$i++;
	echo '<div class="home_title"><a href="'.$row['url'].'"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div><div class="list_product">';
	$qr2 = $tc->home_list_product($row['id'],5);
	while($row2 = mysql_fetch_array($qr2)){
		$i++;
		if($i!=1) $style = 'style="margin-left:5px"'; else $style = '';
		
		if($row2['price_km']==0) $price = '<div class="item_product_price">'.number_format($row2['price'],0,',','.').' VNĐ</div>';
		else $price = '<div class="item_product_price_km">'.number_format($row2['price'],0,',','.').' VNĐ</div>
		<div class="item_product_price">'.number_format($row2['price_km'],0,',','.').' VNĐ</div>';
		
		echo '<div class="item_product" '.$style.'>
			<a href="'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html"><div class="item_product_img"><img src="'.url_product_image_thumb.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div>
			<h3>'.$row2['name'].'</h3></a>'.$price.'
		</div>';
	}
	echo '</div>';
}