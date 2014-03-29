<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left">
    	<?php
        echo '<div class="viewpost"><h1>'.$row_menu_one['name'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div> <div style="clear:both; height:15px"></div>';
		
		$qr = $tc->menu($idMenu,6);
		if(mysql_num_rows($qr) > 0){
			$i = 0;
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($i%3 != 0) $style = 'style="margin:0 14px 14px 0"'; else $style = 'style="margin:0 0 14px 0"';
				echo '<div class="photo_item" '.$style.'>
				<a href="'.$row['url'].'">
					<div class="photo_item_img"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'"></div>
					<div class="album_icon"><img src="images/album_icon.png" alt="album_icon" /></div>
					<h3>'.$row['name'].'</h3>
				</a></div>';
			}
		}else{
			$qr = $tc->photo_detail($idMenu);
			while($row = mysql_fetch_array($qr)){
				$str_image .= '<li><p class="img"><a class="fancybox" href="'.url_picture_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_picture_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></p><h3>'.$row['name'].'</h3></li>';
			}
			
			echo '<div id="photos"><ul>'.$str_image.'</ul></div>
			<div style="clear:both; height:30px;"></div>
			<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />';
			
			$script_photo = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
			<script type="text/javascript" charset="utf-8">
				$(document).ready(function(){
					$(".fancybox").fancybox();
				});
			</script>';
		}
		?>
        
        <div style="clear:both; height:10px"></div>
    </div>
    
    <div id="right">
    	<div class="box_right">
        <div class="box_right_title"><img src="images/icon-right.jpg" alt="Video nổi bật" /> Danh mục thư viện ảnh</div>
		<?php
        $qr = $tc->menu(5,6);
        while($row = mysql_fetch_array($qr)){
           echo '<p class="photo_danhmuc_c1"><a href="'.$row['url'].'">'.$row['name'].'</a></p>';
           
           $qr1 = $tc->menu($row['id'],6);
           while($row1 = mysql_fetch_array($qr1)){
              echo '<p class="photo_danhmuc_c2"><a href="'.$row1['url'].'">'.$row1['name'].'</a></p>';
			  
			  $qr2 = $tc->menu($row1['id'],6);
			   while($row2 = mysql_fetch_array($qr2)){
				  echo '<p class="photo_danhmuc_c3"><a href="'.$row2['url'].'">'.$row2['name'].'</a></p>';
			   }
           }
        }
        ?>
    </div>
    </div>
    <div style="clear:both; height:10px"></div>
</div></div>