<?php
include_once('blocks/navigator.php');
$view_post .= '<div class="content">';
$view_post .= $navigator;

$qr = $tc->other_news($idMenu,$row_detail['id']);
if(mysql_num_rows($qr) > 0){
	while($row = mysql_fetch_array($qr)){
		$other_news .= '<div class="news_other"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
	}
	$other_news = '<div style="clear:both; height:30px; margin:0 30px; border-top:solid 1px #CCC"></div>
	<div id="title_other">Tin tức khác</div>'.$other_news.'<div style="clear:both; height:30px"></div>';
}

$view_post .= '<div id="view_info">
<h1>'.$row_detail['name'].'</h1>
<div id="date">Cập nhật '.date('d/m/Y',strtotime($row_detail['date_update'])).'</div>
<div id="social"></div>
<div style="clear:both; height:1px"></div>
'.$row_detail['content'].'
<div style="clear:both; height:1px"></div>
</div>'.$other_news;

echo $view_post.'</div>';