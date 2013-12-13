<?php
$qr = $tc->info_other($idMenu,$row_detail['id']);
if(mysql_num_rows($qr) > 0){
	while($row = mysql_fetch_array($qr)){
		$info_other .= '<p><span>&gt;&gt;</span><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></p>';
	}
	$info_other = '<div id="baiviet_khac"><h4>Bài viết khác</h4>'.$info_other.'</div>';
}

echo '<div class="viewpost"><h1>'.$row_detail['name'].'</h1>'.$row_detail['content'].'</div>'.$info_other;