<div id="home_dv">
	<?php
	$i = 0;
    $banner = $tc->slider_banner(2);
	while($row = mysql_fetch_array($banner)){
		$i++;
		if($i!=2 && $i!=5 && $i!=8) $style = ''; else $style = 'style="margin:0 15px 15px"';
		echo '<div class="home_dv_box" '.$style.'>
			<div class="home_dv_img"><a href="'.$row['link'].'"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<div class="home_dv_info" style="background-color:#49A21E">
				<a href="'.$row['link'].'"><h2>'.$row['name'].'</h2></a>
				<p>'.strip_tags($row['content']).'</p>
			</div>
		</div>';
	}
	?>
    <div style="clear:both; height:1px"></div>
</div>

<div class="home_item">
    <h3>NHẬN XÉT CỦA THỰC KHÁCH</h3>
    <div class="home_item_line"></div>
    <div class="home_item_info viewpost">
    	<?php
        $banner = $tc->slider_banner(3);
		while($row = mysql_fetch_array($banner)){
			echo '<div>'.$row['content'].'</div><div class="img_botron"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['content'].'" /></div><div style="clear:both; height:1px"></div>';
		}
		?>
    </div>
    <div class="home_item_line"></div>
</div>
<div style="clear:both; height:20px"></div>
<div class="home_item">
    <h3>LIÊN HỆ VỚI CHÚNG TÔI</h3>
    <div style="height:365px" id="map_google"></div>
    <?php include_once('blocks/map_google.php');?>
</div>