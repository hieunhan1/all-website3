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
	1
</div>

<div id="content_left">
	<?php
    echo '<h1 id="h1_dm">'.$row_detail['name'].'</h1>
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