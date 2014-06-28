<?php
/*thong tin*/
$qr = $tc->info_home($lang);
$i = 0;
$str_info_new = '';
$str_info_noibat = '';
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i > 2){
		$str_info_new .= '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a>';
	}else{
		$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		$str_info_noibat .= '<div class="nb_item_3">
        	<a href="'.$link.'"><div class="img_item_3"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
            <h3>'.$row['name'].'</h3></a>
            <p>'.$row['metaDescription'].'</p>
            <a href="'.$link.'" style="color:#ED1C24; font-style:italic; font-weight:bold; font-size:90%">'.const_view_info.'</a>
        </div>';
	}
}

/*hinh anh*/
$qr = $tc->photos_home($lang);
if(mysql_num_rows($qr) > 0){
	while($row = mysql_fetch_array($qr)){
		$str_hinhanh .= '<div class="photo_item_3">
		<a href="'.$row['url'].'"><div class="img_photo_item_3"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
		<h3>'.$row['name'].'</h3></a></div>';
	}
	
	$str_hinhanh = '<div class="home_title">'.const_home_photos.'</div>
    <div class="home_item_3">
    	'.$str_hinhanh.'
        <div style="clear:both; height:1px"></div>
    </div>';
}

/*video*/
$qr = $tc->video_home(3,$lang);
while($row = mysql_fetch_array($qr)){
	$str_video .= '<div class="video_item_3">
	<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img_video_item_3_bg"></div>
	<div class="img_video_item_3"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
	<h3>'.$row['name'].'</h3></a></div>';
}


echo '<div class="wrapper">
	<div class="home_title">'.const_home_info.'</div>
	<div class="home_item_3">
		<div class="more_item_3">'.$str_info_new.'</div>
		'.$str_info_noibat.'
		<div style="clear:both; height:1px"></div>
	</div>
	
	'.$str_hinhanh.'
	
	<div class="home_title">Videos</div>
    <div class="home_item_3">
		'.$str_video.'<div style="clear:both; height:1px"></div>
    </div>
</div>';