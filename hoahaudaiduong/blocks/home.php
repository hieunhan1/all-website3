<div id="home_new">
	<?php
	$str_nb = '';
	
    $qr = $tc->info_noibat($lang);
	$i = 0;
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i != 1){
			$box_new_more .= '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
		}else{
			$box_new_nb = '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3></a><p>'.strip_tags($row['metaDescription']).'</p>';
		}
	}
	
	echo '<div id="box_new_nb">'.$box_new_nb.'</div>
	<div id="box_new_more"><p>'.cons_thong_tin_moi.'</p>'.$box_new_more.'</div>';
	?>
    
    <div id="box_new_video">
    	<?php
        $qr = $tc->video_home($lang);
		$i = 0;
		while($row = mysql_fetch_array($qr)){
			$i++;
			if($i == 1){
				echo '<iframe width="310" height="220" src="//www.youtube.com/embed/'.$row['link'].'?rel=0&wmode=transparent&origin=http://'.$domain.'" frameborder="0" allowfullscreen></iframe>
        		<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" style="color:#FFF"><h3>'.$row['name'].'</h3></a>';
			}else{
				echo '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
		}
		?>
    </div>
</div>
<div id="home_bst">
    <div class="home_bts_title"><?php echo cons_bo_suu_tap;?></div>
    <?php
	$i = 0;
    $qr = $tc->home_bosuutap($lang);
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i!=1) $style = 'style="margin-left:8px"'; else $style = '';
		echo '<div class="home_bts_item" '.$style.'><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img"><img src="'.url_bosuutap_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h4>'.$row['name'].'</h4></a></div>';
	}
	?>
</div>

<?php
$qr = $tc->home_thisinh($lang);
if(mysql_num_rows($qr) > 0){
	echo '<div id="home_thisinh">
    <div class="home_thisinh_title">Các thí sinh đã vào vòng trong</div>';
	while($row = mysql_fetch_array($qr)){
		echo '<div class="home_thisinh_item">
			<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img"><img src="'.url_thisinh_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h5>'.$row['name'].'</h5></a>
			<!--SBD: '.$row['sbd'].'<br />Chưa bình chọn--></div>';
	}
	echo '<div style="clear:both; height:30px"></div>
	</div>';
}
?>