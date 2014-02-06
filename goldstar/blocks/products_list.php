<div style="clear:both; height:20px"></div>
<?php include_once('blocks/left.php');?>
<div id="right">
	<div id="navigator">
    	<a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    
    <?php
	$from = (($page - 1) * max_limit_2);
	$select = 'name,name_rewrite,price,price_km,url_hinh,menu_id';
	$table = 'products';
	$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
	$limit = "LIMIT {$from},".max_limit_2;
	$list = $tc->list_item($select,$table,$where,$limit);
	
    echo "<h1>{$row_menu_one['title']}</h1> <h2>{$row_menu_one['metaDescription']}</h2>";
	
	echo '<div class="list_product">';
	while($row2 = mysql_fetch_array($list)){
		$i++;
		$style = 'style="width:180px; margin:3px"';
		
		if($row2['price']!=0 && $row2['price_km']==0) $price = '<div class="item_product_price">'.number_format($row2['price'],0,',','.').' VNĐ</div>';
		elseif($row2['price']!=0 && $row2['price_km']!=0) $price = '<div class="item_product_price_km">'.number_format($row2['price'],0,',','.').' VNĐ</div>
		<div class="item_product_price">'.number_format($row2['price_km'],0,',','.').' VNĐ</div>';
		else $price = '<div class="item_product_price" style="color:#666">Liên hệ để biết giá</div>';
		
		echo '<div class="item_product" '.$style.'>
			<a href="'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html"><div class="item_product_img"><img src="'.url_product_image_thumb.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div>
			<h3>'.$row2['name'].'</h3></a>'.$price.'
		</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id',$table,$where);
	echo "<div style='clear:both; height:20px'></div><div id=\"phantrang\">{$phantrang}</div>";
	echo '</div>';
	?>
</div>