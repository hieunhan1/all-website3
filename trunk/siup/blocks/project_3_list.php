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

<div id="right">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    
    <h1 id="h1_dm"><?php echo $row_menu_one['title']; ?></h1>
    <?php
	$from = (($page - 1) * max_limit_1);
	$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
	$table = 'web_info';
	$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
	$limit = "LIMIT {$from},".max_limit_1;
	$list = $tc->list_item($select,$table,$where,$limit);
	$total = mysql_num_rows($list);
	
	if($total > 1){
		$i = 0;
		while($row = mysql_fetch_array($list)){
			$i++;
			$stt = $from + $i;
			if($row['url_hinh'] != '') $url_hinh = url_detail_image_thumb.$row['url_hinh']; else $url_hinh = url_no_image;
			$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
			echo '<div class="project_3_item">
                <div class="project_3_img"><a href="'.$link.'"><img src="'.$url_hinh.'" alt="'.$row['name'].'" /></a></div>
				
				<div class="project_3_item_content">
					<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
					<div class="project_3_item_date">'.date('d/m/Y H:i', strtotime($row['date_create'])).'</div>
					<div class="project_3_info">'.$row['metaDescription'].'</div>
				</div>
				
				<div class="project_3_stt">'.number_format($stt,-2).'</div>
            </div>';
		}
		$phantrang = $tc->phantrang($danhmuc,$page,max_limit_1,'id',$table,$where);
		echo '<div id="phantrang">'.$phantrang.'</div>';
	}elseif($total == 1){
		$row = mysql_fetch_array($list);
		header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
	}else{
		echo '<div style="padding:0 50px">update..</div>';
	}
	?>
</div>