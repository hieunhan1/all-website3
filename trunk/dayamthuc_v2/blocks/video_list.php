<div id="content">
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
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($i%2 != 0) $style = 'style="margin:0 25px 25px 25px"'; else $style = 'style="margin:0 0 25px 0"';
				
				echo '<div class="thuvien_video_item" '.$style.'>
				<a href="'.$row['url'].'"><div class="thuvien_video_item_img"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
				<div class="album_icon_video"></div>
				<h3>'.$row['name'].'</h3></a></div>';
			}
		}else{
			$from = (($page - 1) * max_limit_4);
			$select = 'name,name_rewrite,url_hinh,metaDescription,menu_id';
			$table = 'video';
			$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
			$limit = "LIMIT {$from},".max_limit_4;
			$list = $tc->list_item($select,$table,$where,$limit);
			$total = mysql_num_rows($list);
			
			if($total > 1){
				while($row = mysql_fetch_array($list)){
					$str_info .= '<div class="home_video_item">
						<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="home_video_item_img"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
						<div class="play_video"></div>
						<img src="images/video.gif" alt="video" style="margin-bottom:5px" />
						<h4>'.$row['name'].'</h4></a>
					</div>';
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
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>