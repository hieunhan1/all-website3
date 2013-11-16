<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

echo $navigator.'<div id="list_detail"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';

$qr = $tc->info_left($idMenu);
while($row = mysql_fetch_array($qr)){
	if($row['url_hinh']!='') $img = url_detail_thumb_image.$row['url_hinh']; else $img = url_no_image;
	echo '<div class="item_detail" style="width:460px; float:left; margin:10px 20px">
		<div class="img" style="margin-right:15px"><img src="'.$img.'" alt="'.$row['name'].'"></div>
		<a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3>'.$row['name'].'</h3></a>
		<div class="content">'.$row['description'].'</div>
	</div>';
}

echo '</div>';