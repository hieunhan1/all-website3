<div style="clear:both; height:20px"></div>
<?php include_once('blocks/left.php');?>
<div id="right">
	<div id="navigator">
    	<a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    
    <?php
    echo "<h1>{$row_menu_one['title']}</h1> <h2>{$row_menu_one['metaDescription']}</h2>";
	
	echo '<div class="list_product">';
	$qr2 = $tc->home_list_product($idMenu);
	while($row2 = mysql_fetch_array($qr2)){
		$i++;
		$style = 'style="width:180px; margin:3px"';
		
		if($row2['price_km']==0) $price = '<div class="item_product_price">'.number_format($row2['price'],0,',','.').' VNĐ</div>';
		else $price = '<div class="item_product_price_km">'.number_format($row2['price'],0,',','.').' VNĐ</div>
		<div class="item_product_price">'.number_format($row2['price_km'],0,',','.').' VNĐ</div>';
		
		echo '<div class="item_product" '.$style.'>
			<a href="'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html"><div class="item_product_img"><img src="'.url_product_image_thumb.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div>
			<h3>'.$row2['name'].'</h3></a>'.$price.'
		</div>';
	}
	echo '</div>';
	?>
</div>