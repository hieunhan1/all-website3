<?php
$from = (($page - 1) * max_limit_2);
$select = 'id,name,name_rewrite,url_hinh,menu_id,price,price_km,date_create';
$table = 'products';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

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

$qr = $tc->video_product($idMenu);
$total_video = mysql_num_rows($qr);
while($row = mysql_fetch_array($qr)){
	if($total_video != 1) $str_video .= '<div class="video_product" style="float:left; margin:0 4px 20px 4px"><iframe src="'.$row['link'].'?origin=www.vikybomi.com.vn&amp;rel=0" frameborder="0"></iframe><h4>'.$row['name'].'</h4></div>';
	else $str_video .= '<div class="video_product" style="margin:0 auto 20px auto"><iframe src="'.$row['link'].'?origin=www.vikybomi.com.vn&amp;rel=0" frameborder="0"></iframe><h4>'.$row['name'].'</h4></div>';
}

$str_right .= '<div class="title_list"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div>'.$str_video.'<div style="clear:both; height:10px"></div>';
if($total > 0){
	$i = -1;
	while($row = mysql_fetch_array($list)){
		$i++;
		$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		if($i%4 != 0) $margin = 'style="margin-left:5px"'; else $margin = '';
		
		if($row['price']!=0 && $row['price_km']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price'],$row['price_km']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_goc">'.number_format($row['price'],'0',',','.').' VNĐ</div> <div class="home_sp_price_ban"><b>'.number_format($row['price_km'],'0',',','.').' VNĐ</b></div></div>';
		elseif($row['price']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_ban"><b>'.number_format($row['price'],'0',',','.').' VNĐ</b></div></div>';
		else $price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.const_contact_product.'</p>';
		/*if($row['price']!=0){
			$price = '<div class="home_sp_price">'.$price.'</div>';
		}else{
			$price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.const_contact_product.'</p>';
		}*/
		$item_product .= '<div class="home_sp_item" '.$margin.'>
			<div class="home_sp_img"><a href="'.$link.'"><img src="'.url_product_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
			'.$price.'
		</div>';
	}
	$str_right .= '<div class="home_list_sp">'.$item_product.'<div style="clear:both; height:20px"></div></div>';

	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id',$table,$where);
	$str_right .= "<div id=\"phantrang\">{$phantrang}</div>";
}else $str_right .= '<div style="padding:0 50px">update..</div>';

echo '<div id="right">'.$str_right.'</div>
<div id="left">'.$str_left.'</div>';