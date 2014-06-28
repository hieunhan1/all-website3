<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left">
    	<?php
		echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
		
        $qr = $tc->menu($idMenu,6);
		if(mysql_num_rows($qr) > 0){
			$i = 0;
			$str_dm_video = '';
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($i%2 != 0) $style = 'style="margin:0 25px 25px 25px"'; else $style = 'style="margin:0 0 25px 0"';
				
				$str_dm_video .= '<div class="thuvien_video_item" '.$style.'>
				<a href="'.$row['url'].'"><div class="thuvien_video_item_img"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
				<div class="album_icon_video"></div>
				<h3>'.$row['name'].'</h3></a></div>';
			}
			if($lang=='vi'){
				$str_video_nb = '<div style="font-size:150%; font-weight:bold; color:#0077BF; font-family:\'UTM-Swiss-Condensed\';">Video nổi bật</div>';
				$qr_nb = mysql_query("SELECT name,name_rewrite,url_hinh,menu_id FROM `web_video` WHERE `delete`=0 AND status=1 AND lang='{$lang}' AND `other`=1 ORDER BY date_update DESC LIMIT 2");
				while($row = mysql_fetch_array($qr_nb)){
					$str_video_nb .= '<div class="video_item_3" style="margin:20px">
					<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img_video_item_3_bg"></div>
					<div class="img_video_item_3"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
					<h3>'.$row['name'].'</h3></a></div>';
				}
			}
			echo $str_video_nb.'<div style="clear:both; height:20px"></div>'.$str_dm_video;
		}else{
			$from = (($page - 1) * max_limit_4);
			$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id';
			$table = 'web_video';
			$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
			$limit = "LIMIT {$from},".max_limit_4;
			$list = $tc->list_item($select,$table,$where,$limit);
			
			if($list==true) $total = mysql_num_rows($list);
			else $total = 0;
			
			if($total > 1){
				while($row = mysql_fetch_array($list)){
					$str_info .= '<div class="video_item_3" style="margin:20px">
					<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img_video_item_3_bg"></div>
					<div class="img_video_item_3"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
					<h3>'.$row['name'].'</h3></a></div>';
				}
				
				if($danhmuc!='danh-muc') $url_page = $danhmuc;
				else $url_page = $row_menu_one['name_rewrite'];
				
				$phantrang = $tc->phantrang($url_page,$page,max_limit_1,'id',$table,$where);
				$str_info .= '<div style="clear:both; height:20px"></div><div id="phantrang">'.$phantrang.'</div>';
			}elseif($total == 1){
				$row = mysql_fetch_array($list);
				header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
			}else{
				$str_info = '<div style="padding:0 50px">update..</div>';
			}
			echo $str_info;
		}
		?>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
    <div style="clear:both; height:10px"></div>
</div></div>