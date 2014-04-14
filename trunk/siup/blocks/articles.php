<?php
echo '<div style="clear:both; height:10px"></div>
<div id="navigator" style="margin-bottom:15px; padding-left:20px">
    <a href="?lang='.$lang.'"><img src="images/home.jpg" alt="trang chủ" /></a>
    '.$tc->navigator($idMenu).'
</div>';

$qr = $tc->info_other($idMenu,$row_detail['id']);
if(mysql_num_rows($qr) > 0){
	while($row = mysql_fetch_array($qr)){
		$info_other .= '<div class="item_info_right"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
	}
	
	$qr = $tc->info_news($menu_root,$row_detail['id']);
	while($row = mysql_fetch_array($qr)){
		$info_news .= '<div class="item_info_right"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
	}
	
	echo '
	<div id="left_info">
		<div class="viewpost" style="font-size:14px">
			<h1>'.$row_detail['name'].'</h1>
			<div class="date">Ngày đăng '.date('d-m-Y H:i', strtotime($row_detail['date_create'])).'</div>
			'.$row_detail['content'].'
		</div>
	</div>
	<div id="right_info">
		<div class="box_info"><div class="title_info">Bài viết mới</div>'.$info_news.'</div>
		<div class="box_info"><div class="title_info">Bài viết cùng loại</div>'.$info_other.'</div>
	</div>';
}else{
	echo '<div class="viewpost" style="font-size:14px">
		<h1>'.$row_detail['name'].'</h1>
		'.$row_detail['content'].'
	</div>';
}