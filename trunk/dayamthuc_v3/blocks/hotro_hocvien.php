<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
	<?php
    echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
	
	$qr = $tc->list_hotro_hocvien($idMenu);
	while($row = mysql_fetch_array($qr)){
		echo '<a href="'.$row['url'].'" title="'.$row['name'].'"><div class="hotro_hocvien" style="background:url(\''.url_catalog_image.$row['url_hinh'].'\')">
			<h3>'.$row['name'].'</h3>
		</div></a>';
	}
	?>
    <div style="clear:both; height:20px"></div>
</div></div>