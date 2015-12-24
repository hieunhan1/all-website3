<?php
echo '<div style="clear:both; height:10px"></div>
<div id="navigator" style="margin-bottom:15px; padding-left:20px">
    <a href="?lang='.$lang.'"><img src="images/home.jpg" alt="trang chủ" /></a>
    '.$tc->navigator($idMenu).'
</div>';

$qr = $tc->menu($menu_root,3);
while($row = mysql_fetch_array($qr)){
	$str_left .= '<div class="box_left"><div class="title_left"><a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a></div>';
	$qr2 = $tc->menu($row['id'],3);
	while($row2 = mysql_fetch_array($qr2)){
		if($danhmuc.'/' != $row2['url']) $str_left .= '<div class="item_left"><a href="'.$row2['url'].'">'.$row2['name'].'</a></div>';
		else $str_left .= '<div class="item_left"><a href="'.$row2['url'].'" style="color:#DA251E; font-weight:bold">'.$row2['name'].'</a></div>';
	}
	$str_left .= '</div>';
}

$buy = '<div class="buy_product" name="'.$tc->properties_product_buy($row_detail['id'],$row_detail['name'],$row_detail['price'],$row_detail['price_km']).'"><img src="images/buy.jpg" alt="đặt hàng bột Mikko" /></div>';

/*if($row_detail['price']!=0 && $row_detail['price_km']!=0) $price = '<div class="sp_price_goc">'.number_format($row_detail['price'],'0',',','.').' VNĐ</div><div class="sp_price_ban"><b>'.number_format($row_detail['price_km'],'0',',','.').' VNĐ</b> (Giá khuyến mãi)</div>'.$buy;
else*/
if($row_detail['price']!=0) $price = '<div class="sp_price_ban">Giá tham khảo: <b>'.number_format($row_detail['price'],'0',',','.').' VNĐ</b></div>';
else $price = '<p style="font-weight:bold; color:#0048FF; font-size:120%; padding-top:5px">'.const_contact_product.'</p>';

$str_right = '<div class="viewpost">
	<h1>'.$row_detail['name'].'</h1>
	<table width="100%" border="0" cellpadding="10" cellspacing="0">
		<tr>
			<td width="250" valign="top" style="padding:0 30px"><img width="250px" src="'.url_product_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" /></td>
			<td valign="top">'.$price.$row_detail['dactinh'].'</td>
		</tr>
	</table>
	<br />'.$row_detail['content'].'
</div>';

$i = -1;
$qr = $tc->product_other($idMenu,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$i++;
	$link = $row_menu_one['url'].$row['name_rewrite'].'.html';
	if($i%4 != 0) $margin = 'style="margin-left:5px"'; else $margin = '';
	
	/*if($row['price']!=0 && $row['price_km']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price'],$row['price_km']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_goc">'.number_format($row['price'],'0',',','.').' VNĐ</div> <div class="home_sp_price_ban"><b>'.number_format($row['price_km'],'0',',','.').' VNĐ</b></div></div>';
	elseif($row['price']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_ban"><b>'.number_format($row['price'],'0',',','.').' VNĐ</b></div></div>';
	else $price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.const_contact_product.'</p>';*/
	if($row['price']!=0){
		$price = '<div class="home_sp_price">Giá tham khảo: <b>'.number_format($row['price'],'0',',','.').' VNĐ</b></div>';
	}else{
		$price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.const_contact_product.'</p>';
	}
	$item_product .= '<div class="home_sp_item" '.$margin.'>
		<div class="home_sp_img"><a href="'.$link.'"><img src="'.url_product_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
		<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
		'.$price.'
	</div>';
}

echo '<div id="right">'.$str_right.'
	<hr /><div style="clear:both; height:10px"></div>
	<div class="other_product">Sản phẩm cùng loại</div>'.$item_product.'
</div>
<div id="left">'.$str_left.'</div>';