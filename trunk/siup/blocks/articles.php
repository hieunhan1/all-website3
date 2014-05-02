<div id="left">
	<?php
    $qr = $tc->menu_one_id($menu_root);
	$row = mysql_fetch_array($qr);
	echo "<h3>{$row['title']}</h3>";
	
	$qr = $tc->menu($menu_root,3);
	while($row = mysql_fetch_array($qr)){
		if($row_menu_one['url']!=$row['url']) echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		else echo '<li><a href="'.$row['url'].'" style="color:#D61D22">'.$row['name'].'</a></li>';
	}
	?>
</div>

<div id="right" style="margin-left:20px; float:left">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
</div>

<div id="content_right">
	<?php
	$str = "SELECT id,name FROM web_menu
	WHERE `delete`=0 AND status=1 AND lang='{$lang}' AND (id='{$menu_root}' OR position_id LIKE '%,4,%') AND (parent_id='0' OR parent_id='{$menu_root}') ORDER BY `order`";
	$qr_r = mysql_query($str);
	if(mysql_num_rows($qr_r) > 0){
		while($row_r = mysql_fetch_array($qr_r)){
			$qr = $tc->slider_banner(5,$row_r['id']);
			if(mysql_num_rows($qr) > 0){
				echo '<div class="right_title">'.$row_r['name'].'</div>';
				while($row = mysql_fetch_array($qr)){
					if($row['url_hinh']!='' && $row['content']!=''){
						echo '<div class="right_box_3">
							<a href="'.$row['link'].'"><h3>'.$row['name'].'</h3></a>
							<div class="right_box_3_info">'.$row['content'].'</div>
							<img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" />
						</div>';
					}else if($row['content']!=''){
						echo '<div class="right_box_1">
							<a href="'.$row['link'].'"><h3>'.$row['name'].'</h3></a>
							<div class="right_box_1_info">'.$row['content'].'</div>
						</div>';
					}else{
						echo '<a href="'.$row['link'].'" class="right_box_2"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
					}
				}//while qr
				echo '<div style="clear:both; height:30px"></div>';
			}//if qr
		}//while qr_r
	}//if qr_r
	?>
</div>

<div id="content_left">
	<?php
    echo '<h1 id="h1_dm">'.$row_detail['name'].'</h1>
	<div id="print_email">
		<div id="email"></div>
		<div id="print" onclick="window.open(\'/print.html?info='.$row_detail['name_rewrite'].'\', \'windowname1\', \'width=700, height=550\'); return false;"></div>
	</div>
	<div class="viewpost">'.$row_detail['content'].'</div>
	<div style="clear:both; height:40px"></div>';
	
	$qr = $tc->tin_lienquan($idMenu,$row_detail['id']);
	if(mysql_num_rows($qr)){
		while($row = mysql_fetch_array($qr)){
			$str_lq .= '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a>';
		}
		echo '<div id="tin_lienquan"><h5>'.const_tin_khac.'</h5> '.$str_lq.'</div>';
	}
	?>
</div>