<div id="left">
	<?php
    $qr = $tc->home_left($lang,3);
	$row = mysql_fetch_array($qr);
	echo "<h3>{$row['title']}</h3>";
	
	$qr = $tc->menu($row['id'],3,$lang);
	while($row = mysql_fetch_array($qr)){
		echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	}
	?>
</div>
<div id="right">
    <div id="home_nb">
		<?php
        $i = 0;
        $qr = $tc->home_info_item($idMenu,2);
        while($row = mysql_fetch_array($qr)){
            $i++;
            if($i==1) $style = 'style="float:left"'; else $style = 'style="float:right"';
            echo '<div class="home_nb_item" '.$style.'>
                <h2>'.$row['name'].'</h2>
                <div class="home_nb_img"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
                <p>'.$row['metaDescription'].' <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">Xem chi tiết »</a></p>
            </div>';
        }
        ?>
    </div>
    
    <div id="home_new">
        <?php
        $qr = $tc->home_dm_new($lang);
        $row = mysql_fetch_array($qr);
        
        $qr = $tc->home_info_item($row['id'],3);
		if(mysql_num_rows($qr) > 0){
			echo '<div id="home_new_title"><h4>'.$row['name'].'</h4> <a href="'.$row['url'].'">'.const_xem_tat_ca.' »</a> </div>';
			while($row = mysql_fetch_array($qr)){
				if(file_exists(url_detail_image_thumb.$row['url_hinh'])) $url_hinh = url_detail_image_thumb.$row['url_hinh'];
				else $url_hinh = url_project_image_thumb.$row['url_hinh'];
				echo '<div class="home_new_item">
					<div class="home_new_img"><img src="'.$url_hinh.'" alt="'.$row['name'].'" /></div>
					<h3>'.$row['name'].'</h3>
					<div class="home_new_info">'.$row['metaDescription'].'</div>
					<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'" class="view_detail">Xem chi tiết »</a>
				</div>';
			}
		}
        ?>
    </div>
</div>