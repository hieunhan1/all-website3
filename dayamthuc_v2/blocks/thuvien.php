<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    <div id="chuongtrinh">
		<?php
        echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
        
        $qr = $tc->menu($idMenu,6);
		while($row = mysql_fetch_array($qr)){
			echo '<div class="chuongtrinh_title"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
			if($row['type_id']==5){
				$qr1 = $tc->menu($row['id'],6);
				$i = -1;
				while($row1 = mysql_fetch_array($qr1)){
					$i++;
					if($i%4 != 0) $style = 'margin:0 0 14px 14px'; else $style = 'margin:0 0 14px 0';
					echo '<div class="home_photo_item" style="width:213px; '.$style.'">
						<a href="'.$row1['url'].'" style="color:#FF4D4D"><div class="home_photo_item_img"><img src="'.url_catalog_image.$row1['url_hinh'].'" alt="'.$row1['name'].'" /></div>
						<h3 style="display:block; width:100%; height:44px; line-height:22px; background-color:#FFF">'.$row1['name'].'</h3></a>
					</div>';
				}
				echo '<div style="clear:both; height:20px"></div>';
			}elseif($row['type_id']==6){
				$qr1 = $tc->menu($row['id'],6);
				$i = 0;
				while($row1 = mysql_fetch_array($qr1)){
					$i++;
					if($i%3 != 0) $style = 'style="margin:0 15px 10px 0"'; else $style = 'style="margin:0 0 10px 0"';
					
					echo '<div class="home_video_item" '.$style.'>
					<a href="'.$row1['url'].'"><div class="home_video_item_img"><img src="'.url_catalog_image.$row1['url_hinh'].'" alt="'.$row1['name'].'" /></div>
					<div class="play_video"></div>
					<img src="images/video.gif" alt="video" style="margin-bottom:5px" />
					<h3>'.$row1['name'].'</h3></a></div>';
				}
			}
		}
        ?>
        
        <div style="clear:both; height:10px"></div>
        <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
        <div style="clear:both; height:20px"></div>
	</div>
</div>