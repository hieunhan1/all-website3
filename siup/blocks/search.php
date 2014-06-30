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
    
    <?php
	$from = (($page - 1) * max_limit_1);
	$select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id,date_create';
	$table = 'web_info';
	$where = "`delete`=0 AND status=1 AND lang='{$lang}' AND name LIKE '%{$dt}%' ";
	$limit = "LIMIT {$from},".max_limit_1;
	$list = $tc->list_item($select,$table,$where,$limit);
	$total = mysql_num_rows($list);
	
	if($total > 0){
		while($row = mysql_fetch_array($list)){
			if(file_exists(url_detail_image_thumb.$row['url_hinh']) && $row['url_hinh']!='') $url_hinh = url_detail_image_thumb.$row['url_hinh'];
			else if(file_exists(url_project_image_thumb.$row['url_hinh']) && $row['url_hinh']!='') $url_hinh = url_project_image_thumb.$row['url_hinh'];
			else $url_hinh = url_no_image;
			
			echo '<div class="home_new_item">
                <div class="home_new_img"><img src="'.$url_hinh.'" alt="'.$row['name'].'" /></div>
				<div class="home_new_item_content">
					<h3>'.$row['name'].'</h3>
					<div class="home_new_item_date">'.date('d/m/Y H:i', strtotime($row['date_create'])).'</div>
					<div class="home_new_info">'.$row['metaDescription'].'</div>
					<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'" class="view_detail">'.const_xem_chi_tiet.' »</a>
				</div>
            </div>';
		}
		$phantrang = $tc->phantrang_search($danhmuc,$dt,$page,max_limit_1,'id',$table,$where);
		echo '<div id="phantrang">'.$phantrang.'</div>';
	}else{
		echo '<div style="padding:0 50px">Không tìm thấy..</div>';
	}
	?>
</div>