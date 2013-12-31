<?php
/*menu home*/
echo '<div id="home_menu">';
$qr = $tc->menu(0,2,$lang);
$i = 0;
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i==4 || $i==8) echo '<div class="item_home_menu" style="margin:0 0 13px 0;background:url('.url_danhmuc_image.$row['url_hinh'].') no-repeat top left #00AEED"><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a></div>';
	else echo '<div class="item_home_menu" style="background:url('.url_danhmuc_image.$row['url_hinh'].') no-repeat top left #00AEED"><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a></div>';
}
echo '</div>';

/*event*/
$qr = $tc->slider_banner(2,NULL,$lang);
$total = mysql_num_rows($qr);
if($total==2){
	$i=0;
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i==1) $str .= '<a href="'.$row['link'].'"><img style="width:490px; height:280px; margin-right:20px" src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
		else $str .= '<a href="'.$row['link'].'"><img style="width:490px; height:280px" src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
	}
	echo '<div id="home_event">'.$str.'</div>';
}elseif($total==1){
	$row = mysql_fetch_array($qr);
	echo '<div id="home_event"><a href="'.$row['link'].'"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>';
}

/*slider*/
$qr = $tc->slider_banner(1,$idMenu);
if(mysql_num_rows($qr)>0){
	$row = mysql_fetch_array($qr);
	echo '<div style="margin-bottom:10px"><a href="'.$row['link'].'" title="'.$row['name'].'"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>';
}

/*about*/
$qr = $tc->home_about($idMenu);
$row = mysql_fetch_array($qr);
echo '<div id="home_about" class="viewpost">'.$row['content'].'</div>';

$qr = $tc->home_info_new($lang);
while($row = mysql_fetch_array($qr)){
	$str_new .= '<div class="item_home_info"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
}
echo '<div id="home_info" style="width:280px"><div class="title_home_info">'.const_home_info.'</div>'.$str_new.'</div>
<div style="clear:both; height:1x"></div>';

/*san pham, dich vu nổi bật*/
$qr = $tc->home_noi_bat($lang);
$i = 0;
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i==1) $background = 'style="background:url(images/air-service.jpg) no-repeat top left"';
	elseif($i==2) $background = 'style="background:url(images/sea-service.jpg) no-repeat top left"';
	else $background = '';
	$qr2 = $tc->home_info_noi_bat($row['id']);
	$total = mysql_num_rows($qr2);
	if($total < 4){
		echo '<div class="home_item" '.$background.'>
			<h3 class="home_item_title" style="margin:0 0 8px 250px">'.$row['name'].'</h3>
			<div class="home_item_box" style="margin-left:240px">';
			while($row2 = mysql_fetch_array($qr2)){
				echo '<div class="home_item_content">
						<a href="'.$lang.'/'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html'.'"><div class="home_item_img"><img src="'.url_detail_thumb_image.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div><h4>'.$row2['name'].'</h4></a>
				</div>';
			}
		echo '</div></div>';
	}else{
		if($i<3){
			$str = '';
			while($row2 = mysql_fetch_array($qr2)){
				$str .= '<li><a href="'.$lang.'/'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html'.'"><img src="'.url_detail_thumb_image.$row2['url_hinh'].'" width="245" height="155" alt="'.$row2['name'].'" /><h4>'.$row2['name'].'</h4></a></li>';
			}
			echo '<div class="home_item" '.$background.'>
				<h3 class="home_item_title" style="margin:0 0 8px 250px">'.$row['name'].'</h3>
				<div style="width:750px; margin-left:223px"><ul id="third-carousel" class="first-and-second-carousel jcarousel-skin-ie7">'.$str.'</ul></div></div>';
		}else{
			$str2 = '';
			while($row2 = mysql_fetch_array($qr2)){
				$str2 .= '<li><a href="'.$lang.'/'.$tc->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html'.'"><img src="'.url_detail_thumb_image.$row2['url_hinh'].'" width="245" height="155" alt="'.$row2['name'].'" /><h4>'.$row2['name'].'</h4></a></li>';
			}
			echo '<div class="home_item"><h3 class="home_item_title" style="margin-bottom:8px">'.$row['name'].'</h3>
			<div style="width:1000px; margin-left:-28px"><ul id="third-carousel" class="first-and-second-carousel jcarousel-skin-ie7">'.$str2.'</ul></div></div>';
		}
	}
}
?>
<script type="text/javascript" src="library/jsor-jcarousel/lib/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="library/jsor-jcarousel/skins/ie7/skin.css" />
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery('.first-and-second-carousel').jcarousel();
	});
</script>