<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left">
        <?php
        echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
		
		$from = (($page - 1) * max_limit_1);
		$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id';
		$table = 'web_info';
		$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
		$limit = "LIMIT {$from},".max_limit_1;
		$list = $tc->list_item($select,$table,$where,$limit);
		if($list) $total = mysql_num_rows($list);
		
		if($total > 1){
			while($row = mysql_fetch_array($list)){
				$str_info .= '<div class="info_list">
				<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
					<div class="info_list_img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
					<h3>'.$row['name'].'</h3>
				</a>
				<div class="info_list_text">'.$row['metaDescription'].'</div></div>';
			}
			
			if($danhmuc!='danh-muc') $url_page = $danhmuc;
			else $url_page = $row_menu_one['name_rewrite'];
			
			$phantrang = $tc->phantrang($url_page,$page,max_limit_1,'id',$table,$where);
			$str_info .= "<div id=\"phantrang\">{$phantrang}</div>";
		}elseif($total == 1){
			$row = mysql_fetch_array($list);
			header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
		}else{
			$str_info = '<div style="padding:0 50px">update..</div>';
		}
		echo $str_info;
		?>
        
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
</div></div>