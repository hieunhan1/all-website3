<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';

/*$qr = $tc->video_other($idMenu,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$info_other .= '<div class="item_info_right"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
}*/

$qr = $tc->video_news($menu_root,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$info_news .= '<div class="item_info_right"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
}

echo $navigator.'
<div id="left">
	<div class="viewpost" style="font-size:14px">
		<h1>'.$row_detail['name'].'</h1>
		<div class="date">Ngày đăng '.date('d-m-Y H:i', strtotime($row_detail['date_create'])).'</div>
		<div><iframe width="700" height="500" src="//www.youtube.com/embed/'.$row_detail['link'].'?rel=0&wmode=transparent&autoplay=1&origin=http://'.$domain.'" frameborder="0" allowfullscreen></iframe></div>
		'.$row_detail['content'].'
	</div>
</div>
<div id="right">
	<div class="box_info"><div class="title_info">Video mới</div>'.$info_news.'</div>
</div>
<div style="clear:both; height:40px"></div>';