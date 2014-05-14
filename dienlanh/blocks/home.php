<?php
$qr = $tc->home_danhuc();
while($row = mysql_fetch_array($qr)){
	echo '<div class="home_product_title">'.$row['name'].'</div>';
	$qr2 = $tc->product_theomuc($row['id'],5);
	while($row2 = mysql_fetch_array($qr2)){
		if($row2['price']!=0) $price = number_format($row2['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
		echo '<div class="home_product_item">
			<a href="'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html">
				<div class="home_product_item_img" style="background:url(\''.url_product_image_thumb.$row2['url_hinh'].'\') no-repeat center">'.$tc->type_noibat($row2['noibat']).'</div>
				<h3>'.$row2['name'].'</h3>
			</a>
			<div class="price_product">'.$price.'</div>
		</div>';
	}
	echo '<div style="clear:both; height:20px"></div>';
}

/*
$qr = $tc->menu_one_id(5);
$row = mysql_fetch_array($qr);
echo '<div style="clear:both; width:205px; height:30px; line-height:30px; font-size:130%; color:#0072FF; margin-bottom:5px; border-bottom:solid 3px #0072FF">'.$row['name'].'</div>';
$qr2 = $tc->product_theomuc($row['id'],5);
while($row2 = mysql_fetch_array($qr2)){
	if($row2['price']!=0) $price = number_format($row2['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
	echo '<div class="item_product" style="width:193px; margin:0 5px 10px 0">
		<a href="'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html"><p class="img_product" style="background:url('.url_product_thumb.$row2['url_hinh'].') no-repeat center">'.$tc->type_noibat($row2['noibat']).'</p>
		<h3>'.$row2['name'].'</h3></a>
		<div class="price_product">'.$price.'</div>
	</div>';
}

*/