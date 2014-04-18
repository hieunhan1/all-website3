<div id="left">
	<?php
    $qr = $tc->menu_one_id($menu_root);
	$row = mysql_fetch_array($qr);
	
	$qr = $tc->menu($menu_root,3);
	
	if(mysql_num_rows($qr) > 0){
		$str_left .= "<h3>{$row['title']}</h3>";
		while($row = mysql_fetch_array($qr)){
			if($row_menu_one['url']!=$row['url']) $str_left .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
			else $str_left .= '<li><a href="'.$row['url'].'" style="color:#D61D22">'.$row['name'].'</a></li>';
		}
	}else{
		$qr = $tc->home_left($lang,3);
		$row = mysql_fetch_array($qr);
		$str_left .= "<h3>{$row['title']}</h3>";
		
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
    
    <h1 id="h1_dm"><?php echo $row_menu_one['title']; ?></h1>
    <?php
	$from = (($page - 1) * max_limit_2);
	$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id';
	$table = 'web_info';
	$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
	$limit = "LIMIT {$from},".max_limit_2;
	$list = $tc->list_item($select,$table,$where,$limit);
	$total = mysql_num_rows($list);
	
	if($total > 0){
		$i = 0;
		while($row = mysql_fetch_array($list)){
			$i++;
			if($i%3 == 1) $style = 'margin-bottom:35px'; else $style = 'margin:0 0 35px 35px';
			echo '<div class="project_2_item" style="'.$style.'">
				<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="project_2_img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
				<h3>'.$row['name'].'</h3></a>
			</div>';
		}
		$phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id',$table,$where);
		echo '<div id="phantrang">'.$phantrang.'</div>';
	}else{
		echo '<div style="padding:0 50px">update..</div>';
	}
	?>
</div>