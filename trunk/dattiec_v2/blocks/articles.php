<?php
$qr = $tc->other_news($idMenu,$row_detail['id']);
if(mysql_num_rows($qr)>0){
    $other_news .= '<hr /><div id="other"><div class="title2">Bài viết khác</div>';
    while($row = mysql_fetch_array($qr)){
        $other_news .= '<li><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></li>';
    }
    $other_news .= '</div><div style="clear:both; height:30px"></div>';
}

$navigator = '<div id="navigator"><a href="http://'.$domain.'/"><img src="images/home.png" alt="Home" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

$view_post .= $navigator.'
<div class="viewpost">
	<h1>'.$row_detail['name'].'</h1>
	<div class="date">Cập nhật '.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>
	'.$row_detail['content'].'
	<div style="clear:both; height:20px"></div>
</div>'.$other_news;

echo $view_post;