<div id="left">
	<div style="clear:both; height:30px"></div>
	<?php
	/*
	$qr = $tc->menu_one_id($menu_root);
	$row = mysql_fetch_array($qr);
	echo "<h3>{$row['title']}</h3>";
	*/
	
	$qr = $tc->menu($menu_root,3);
	
	if(mysql_num_rows($qr) > 0){
		//$str_left .= "<h3>{$row['title']}</h3>";
		while($row = mysql_fetch_array($qr)){
			if($row_menu_one['url']!=$row['url']) $str_left .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
			else $str_left .= '<li><a href="'.$row['url'].'" style="color:#D61D22">'.$row['name'].'</a></li>';
		}
	}else{
		$qr = $tc->home_left($lang,3);
		$row = mysql_fetch_array($qr);
		//$str_left .= "<h3>{$row['title']}</h3>";
		
		$qr = $tc->menu($row['id'],3,$lang);
		while($row = mysql_fetch_array($qr)){
			$str_left .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		}
	}
	
	echo $str_left;
	?>
</div>

<div id="right">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    
    <?php
	$qr = $tc->project_img($row_detail['id']);
	if(mysql_num_rows($qr) > 0){
		$i = 0;
		while($row = mysql_fetch_array($qr)){
			$i++;
			$info_img = '<p style="font-weight:bold">Tóm lược: </p>'.$row['info'];
			if($i != 1){
				$str_project_img .= '<div class="thumb_img" name="'.$row['name'].'" url="'.url_project_image.$row['url_hinh'].'">
					<img src="'.url_project_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />
					<div class="info_img">'.$info_img.'</div>
				</div>';
			}else{
				$str_project_img .= '<div id="info_img" class="viewpost">'.$info_img.'</div>
				<div id="view_img"><img src="'.url_project_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
				<div id="img_name">'.$row['name'].'</div>
				<div class="thumb_img" name="'.$row['name'].'" url="'.url_project_image.$row['url_hinh'].'">
					<img src="'.url_project_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />
					<div class="info_img">'.$info_img.'</div>
				</div>';
			}
		}
		
		$str_project_img = '<div id="project_deatil">'.$str_project_img.' <div style="clear:both; height:1px"></div> </div>
		<div style="font-weight:bold; color:#D51C21">'.const_thongtin_duan.'</div>';
	}
	
	
	echo '<h1 id="h1_dm">'.$row_detail['name'].'</h1>
	'.$str_project_img.'
	<div class="viewpost">'.$row_detail['content'].'</div>
	<div style="clear:both; height:20px"></div>';
	
	$qr = $tc->project_cungloai($idMenu,$row_detail['id']);
	if(mysql_num_rows($qr) > 0){
		echo '<div style="clear:both; height:30px; padding:15px 0 10px 0; font-weight:bold; font-size:110%; border-top:solid 1px #D51C21">'.const_duan_cungloai.'</div>';
		$i = 0;
		while($row = mysql_fetch_array($qr)){
			$i++;
			if($i%3 == 1) $style = 'margin-bottom:35px'; else $style = 'margin:0 0 35px 35px';
			echo '<div class="project_2_item" style="'.$style.'">
				<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="project_2_img"><img src="'.url_project_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
				<h3>'.$row['name'].'</h3></a>
			</div>';
		}
	}
	?>
</div>