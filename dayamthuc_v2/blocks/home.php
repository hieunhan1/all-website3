<?php
/*Home catalog*/
$qr = $tc->menu(1,1);
if(mysql_num_rows($qr) > 0){
	echo '<div id="nauan_other">';
	while($row = mysql_fetch_array($qr)){
		echo '<div class="nauan_other_item">
			<a href="'.$row['url'].'"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" />
			<h3>'.$row['name'].'</h3></a>
		</div>';
	}
	echo '</div>';
}

/*about NETSPACE*/
$qr = $tc->info_danhmuc($idMenu);
$row = mysql_fetch_array($qr);
$str_about = '<div id="about" class="viewpost"> <h1>'.$row['name'].'</h1> <div id="about_info">'.$row['content'].'</div>';

$qr = $tc->video_danhmuc($idMenu);
$row = mysql_fetch_array($qr);
$str_about .= '<div id="about_video"><iframe src="http://www.youtube.com/embed/'.$row['link'].'?origin=http://www.dayamthuc.vn&rel=0&wmode=transparent" frameborder="0"></iframe></div>
	<div style="clear:both; height:1px"></div></div>';

echo $str_about;
?>

<!--Thông tin-->
<div class="home_info">
	<div class="title">
		<div class="title_1"></div>
		<div class="title_2"><p>T</p><p>h</p><p>ô</p><p>n</p><p>g</p><p>&nbsp;</p><p>T</p><p>i</p><p>n</p></div>
		<div class="title_3"></div>
	</div>
	<?php
	$qr = $tc->info_home();
	$i = 0;
	$str_info_new = '';
	$str_info_noibat = '';
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i > 2){
			$str_info_new .= '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
		}else{
			$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
			
			$str_info_noibat .= '<div class="home_info_noibat_item">
			<div class="home_info_noibat_img"><a href="'.$link.'"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
			<div class="info">'.$row['metaDescription'].'</div>
			<a href="'.$link.'" class="viewmore">Xem thêm..</a>
			</div>';
		}
	}
	echo '<div id="home_info_noibat">'.$str_info_noibat.'</div>
		<div id="home_info_new">'.$str_info_new.'</div>';
	?>
	<div style="clear:both; height:1px"></div>
</div>

<!--Hình ảnh-->
<div class="home_info">
	<div class="title">
		<div class="title_1"></div>
		<div class="title_2"><p>H</p><p>ì</p><p>n</p><p>h</p><p>&nbsp;</p><p>Ả</p><p>n</p><p>h</p></div>
		<div class="title_3"></div>
	</div>
	<?php
	$qr = $tc->photos_home();
	while($row = mysql_fetch_array($qr)){
		echo '<div class="home_photo_item">
		<a href="'.$row['url'].'"><div class="home_photo_item_img"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
		<h4>'.$row['name'].'</h4></a>
	</div>';
	}
	?>
	<div style="clear:both; height:10px"></div>
</div>

<!--Video-->
<div class="home_info">
	<div class="title">
		<div class="title_1"></div>
		<div class="title_2"><p>V</p><p>i</p><p>d</p><p>e</p><p>o</p></div>
		<div class="title_3"></div>
	</div>
	<?php
	$qr = $tc->video_home(3);
	while($row = mysql_fetch_array($qr)){
		echo '<div class="home_video_item">
		<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="home_video_item_img"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
		<div class="play_video"></div>
		<img src="images/video.gif" alt="video" style="margin-bottom:5px" />
		<h4>'.$row['name'].'</h4></a>
	</div>';
	}
	?>
	<div style="clear:both; height:20px"></div>
</div>