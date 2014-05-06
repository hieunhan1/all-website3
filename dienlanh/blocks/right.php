<div id="right">
    <div id="right_banner">
    <?php
    $qr = $tc->slider_banner(2);
    while($row = mysql_fetch_array($qr)){
        echo '<div class="item_banner">
            <img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" />
            <div class="title_banner"><a href="'.$row['link'].'" title="'.$row['name'].'"><h4>'.$row['name'].'</h4></a></div>
        </div>';
    }
    ?>
    </div>
    
    <div id="right_news">
    <div class="product_right_title" style="margin:0">Thông tin mới</div>
    <?php
    $qr = $tc->thon_tin_moi();
	while($row = mysql_fetch_array($qr)){
		echo '<div class="item_news">
			<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />
			<h5>'.$row['name'].'</h5></a>
		</div>';
	}
	echo '<div style="padding-top:10px; text-align:right"><a href="'.$link_detail.'" style="color:#0072FF">Xem tất cả <span style="font-size:80%">&gt;&gt;</span></a></div>';
    ?>
    </div>
</div>