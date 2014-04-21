<div style="margin:20px">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <div class="viewpost">
    	<?php
        echo "<h1 style='margin:0'>{$row_menu_one['title']}</h1>
		<h2 style='margin-bottom:30px'>{$row_menu_one['metaDescription']}</h2>"; ?>
        
    </div>
    <?php
    $from = (($page - 1) * max_limit_1);
    $select = 'id,name,name_rewrite,url_hinh,metaDescription,menu_id';
    $table = 'web_info';
    $where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
    $limit = "LIMIT {$from},".max_limit_1;
    $list = $tc->list_item($select,$table,$where,$limit);
    $total = mysql_num_rows($list);
    
    if($total > 1){
		$i = 0;
        while($row = mysql_fetch_array($list)){
			$i++;
			if($i%2 == 1) $style = 'style="float:left"'; else $style = 'style="float:right"';
            if($row['url_hinh'] != '') $url_hinh = url_detail_image.$row['url_hinh']; else $url_hinh = url_no_image;
			echo '<div class="info_list_item" '.$style.'>
				<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
					<h3>'.$row['name'].'</h3>
					<div class="info_list_item_img"><img src="'.$url_hinh.'" alt="'.$row['name'].'" /></div>
				</a>
				<p>'.$row['metaDescription'].'</p>
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