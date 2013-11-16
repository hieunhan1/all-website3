<div class="home_cauchuyen">
	<?php
    $qr = $tc->home_tintuc(const_kienthuc_id);
	$i = 0;
	while($row = mysql_fetch_array($qr)){
		$i++;
		$link = $lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		if($i==1) $color = 'style="background-color:#524F58"'; elseif($i==2) $color = 'style="background-color:#4092A7"'; else $color = 'style="background-color:#5C5780"';
		echo '<div class="item_cauchuyen" '.$color.'>
		<a href="'.$link.'"><h2>'.$row['name'].'</h2></a>
		<p><a href="'.$link.'"><img src="'.url_detail_thumb_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>'.$row['description'].'</p></div>';
	}
	?>
</div>

<div class="home_title"><?php echo const_home_news;?></div>
<div class="home_cauchuyen">
	<?php
    $qr = $tc->home_tintuc(const_id_news);
	while($row = mysql_fetch_array($qr)){
		$link = $lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		echo '<div class="item_tintuc">
        <div class="img_home"><a href="'.$link.'"><img src="'.url_detail_thumb_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
        <a href="'.$link.'"><h3>'.$row['name'].'</h3></a><p>'.$row['description'].'</p></div>';
	}
	?>
</div>

<div class="home_title"><?php echo const_home_map;?></div>
<div style="clear:both; margin:0 20px">
    <img src="images/map-home.jpg" alt="map mimosa" style="border:solid 5px #a3a2a2; float:left" />
    <div id="home_map"><?php echo $row_config['contact']?></div>
</div>