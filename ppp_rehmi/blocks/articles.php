<div style="margin:20px">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
</div>
<div id="left" class="viewpost">
	<?php
    echo '<h1>'.$row_detail['name'].'</h1>'.$row_detail['content'].'
	<div style="clear:both; height:40px"></div>';
	
	/*$qr = $tc->tin_lienquan($idMenu,$row_detail['id']);
	if(mysql_num_rows($qr)){
		while($row = mysql_fetch_array($qr)){
			$str_lq .= '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a>';
		}
		echo '<div id="tin_lienquan"><h5>'.const_tin_khac.'</h5> '.$str_lq.'</div>';
	}*/
	?>
</div>

<div id="right">
    <div id="right_title">Tin tức - Sự kiện</div>
    <?php
    $qr = $tc->home_info_item(6);
    while($row = mysql_fetch_array($qr)){
        echo '<div class="right_item">
            <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
            <h3>'.$row['name'].'</h3>
            <div class="right_item_img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
            </a>
            <p>'.$row['metaDescription'].'</p>
        </div>';
    }
    ?>
</div>