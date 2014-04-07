<?php
$qr_list = $tc->home_danhmuc($lang);
while($row_list = mysql_fetch_array($qr_list)){
	if($row_list['type_id']==3){
		$qr = $tc->home_list_product($row_list['id']);
		if(mysql_num_rows($qr) > 0){
			$i = 0;
			$item_product = '';
			while($row = mysql_fetch_array($qr)){
				$i++;
				$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
				if($i!=1) $margin = 'style="margin-left:5px"'; else $margin = '';
				
				if($row['price']!=0 && $row['price_km']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price'],$row['price_km']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_goc">'.number_format($row['price'],'0',',','.').' VNĐ</div> <div class="home_sp_price_ban"><b>'.number_format($row['price_km'],'0',',','.').' VNĐ</b></div></div>';
				elseif($row['price']!=0) $price = '<div class="home_sp_buy" name="'.$tc->properties_product_buy($row['id'],$row['name'],$row['price']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_ban"><b>'.number_format($row['price'],'0',',','.').' VNĐ</b></div></div>';
				else $price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.const_contact_product.'</p>';
				$item_product .= '<div class="home_sp_item" '.$margin.'>
					<div class="home_sp_img"><a href="'.$link.'"><img src="'.url_product_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
					<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
					'.$price.'
				</div>';
			}
			echo '<div class="home_list_sp">
				<div class="home_sp_title"><a href="'.$row_list['url'].'">'.$row_list['name'].'</a></div>
				'.$item_product.'<div style="clear:both; height:1px"></div>
			</div>';
		}
	}else{
		$item_info = '';
		if($row_list['type_id']==2) $qr = $tc->home_list_info($row_list['id']);
		else $qr = $tc->home_list_video($row_list['id']);
		while($row = mysql_fetch_array($qr)){
			$item_info .= '<div class="home_info_item"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a></div>';
		}
		echo '<div class="home_list_info">
			<div class="home_sp_title"><a href="'.$row_list['url'].'"><img src="'.url_catalog_image.$row_list['url_hinh'].'" alt="'.$row_list['title'].'" /></a></div>
			'.$item_info.'
		</div>';
	}
}