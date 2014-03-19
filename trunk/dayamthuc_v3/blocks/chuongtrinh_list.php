<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    <div id="chuongtrinh">
	<?php
    echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
    
    $qr = $tc->chuongtrinhdaotao($idMenu);
	if(mysql_num_rows($qr) > 1){
		while($row = mysql_fetch_array($qr)){
			echo '<div class="chuongtrinh_title"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
			$qr1 = $tc->chuongtrinhdaotao($row['id']);
			if(mysql_num_rows($qr1) == 0){
				$j = 0;
				$ct_info = $tc->chuongtrinhdaotao_info($row['id']);
				while($row_ct_info = mysql_fetch_assoc($ct_info)) {
					$j++;
					if($j%2 == 0) $style = 'style="float:right"'; else $style = 'style="float:left"';
					echo '<div class="chuongtrinh_item" '.$style.'>
						<a href="'.$tc->link_detail($row_ct_info['menu_id']).$row_ct_info['name_rewrite'].'.html">
							<div class="chuongtrinh_item_img"><img src="'.url_detail_image_thumb.$row_ct_info['url_hinh'].'" alt="'.$row_ct_info['name'].'" /></div>
							<h3>'.$row_ct_info['name'].'</h3>
						</a>
						<div class="chuongtrinh_info">'.$row_ct_info['metaDescription'].'</div>
					</div>';
				}
				echo '<div style="clear:both; height:10px"></div>';
			}else{
				while($row1 = mysql_fetch_array($qr1)){
					echo '<a href="'.$row1['url'].'" class="h4"><h4>'.$row1['name'].'</a></h4>';
					$j = 0;
					$ct_info = $tc->chuongtrinhdaotao_info($row1['id']);
					while($row_ct_info = mysql_fetch_assoc($ct_info)) {
						$j++;
						if($j%2 == 0) $style = 'style="float:right"'; else $style = 'style="float:left"';
						echo '<div class="chuongtrinh_item" '.$style.'>
							<a href="'.$tc->link_detail($row_ct_info['menu_id']).$row_ct_info['name_rewrite'].'.html">
								<div class="chuongtrinh_item_img"><img src="'.url_detail_image_thumb.$row_ct_info['url_hinh'].'" alt="'.$row_ct_info['name'].'" /></div>
								<h3>'.$row_ct_info['name'].'</h3>
							</a>
							<div class="chuongtrinh_info">'.$row_ct_info['metaDescription'].'</div>
						</div>';
					}
					echo '<div style="clear:both; height:10px"></div>';
				}
			}/* if $qr1 */
		}/* while $qr */
	}else{
		$j = 0;
		$ct_info = $tc->chuongtrinhdaotao_info($idMenu);
		while($row_ct_info = mysql_fetch_assoc($ct_info)) {
			$j++;
			if($j%2 == 0) $style = 'style="float:right"'; else $style = 'style="float:left"';
			echo '<div class="chuongtrinh_item" '.$style.'>
				<a href="'.$tc->link_detail($row_ct_info['menu_id']).$row_ct_info['name_rewrite'].'.html">
					<div class="chuongtrinh_item_img"><img src="'.url_detail_image_thumb.$row_ct_info['url_hinh'].'" alt="'.$row_ct_info['name'].'" /></div>
					<h3>'.$row_ct_info['name'].'</h3>
				</a>
				<div class="chuongtrinh_info">'.$row_ct_info['metaDescription'].'</div>
			</div>';
		}
		echo '<div style="clear:both; height:10px"></div>';
	}/* if $qr */
	
	/*
    while($row = mysql_fetch_array($qr)){
        echo '<div class="chuongtrinh_title"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
        $i++;
        if($i>1){
            $j = 0;
            $ct_info = $tc->chuongtrinhdaotao_info($row['id']);
            while($row_ct_info = mysql_fetch_assoc($ct_info)) {
                $j++;
                if($j%2 == 0) $style = 'style="float:right"'; else $style = 'style="float:left"';
                echo '<div class="chuongtrinh_item" '.$style.'>
                    <a href="'.$tc->link_detail($row_ct_info['menu_id']).$row_ct_info['name_rewrite'].'.html">
                        <div class="chuongtrinh_item_img"><img src="'.url_detail_image_thumb.$row_ct_info['url_hinh'].'" alt="'.$row_ct_info['name'].'" /></div>
                        <h3>'.$row_ct_info['name'].'</h3>
                    </a>
                    <div class="chuongtrinh_info">'.$row_ct_info['metaDescription'].'</div>
                </div>';
            }
            echo '<div style="clear:both; height:10px"></div>';
        }else{
            $qr2 = $tc->chuongtrinhdaotao($row['id']);
            while($row2 = mysql_fetch_array($qr2)){
                echo '<h4>'.$row2['name'].'</h4>';
                $j = 0;
                $ct_info = $tc->chuongtrinhdaotao_info($row2['id']);
                while($row_ct_info = mysql_fetch_assoc($ct_info)) {
                    $j++;
                    if($j%2 == 0) $style = 'style="float:right"'; else $style = 'style="float:left"';
                    echo '<div class="chuongtrinh_item" '.$style.'>
                        <a href="'.$tc->link_detail($row_ct_info['menu_id']).$row_ct_info['name_rewrite'].'.html">
                            <div class="chuongtrinh_item_img"><img src="'.url_detail_image_thumb.$row_ct_info['url_hinh'].'" alt="'.$row_ct_info['name'].'" /></div>
                            <h3>'.$row_ct_info['name'].'</h3>
                        </a>
                        <div class="chuongtrinh_info">'.$row_ct_info['metaDescription'].'</div>
                    </div>';
                }
                echo '<div style="clear:both; height:10px"></div>';
            }
        }
    }
	*/
    ?>
        
        <div style="clear:both; height:10px"></div>
        <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
        <div style="clear:both; height:20px"></div>
	</div>
</div>