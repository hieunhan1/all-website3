<?php
$qr = $tc->home_gioithieu(2);
if(mysql_num_rows($qr) > 0){
	$row = mysql_fetch_array($qr);
	echo '<div id="home_about"><div id="img"><img src="public/images/articles/'.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
    <h1>'.$row['name'].'</h1><h2>'.$row['description'].'</h2>
	<p align="right"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">Xem thêm..</a></p></div>';
}

echo '<div class="danhmuc">Thực đơn tiệc</div>';
$qr = $tc->home_thucdon();
while($row = mysql_fetch_array($qr)) {
	echo '<div class="thucdon"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
	<div class="img"><img src="'.url_articles_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
	<h3>'.$row['name'].'</h3></a></div>';
}

$qr = $tc->home_danhmuc();
while($row = mysql_fetch_array($qr)){
	echo '<div style="clear:both; height:20px"></div><div class="danhmuc">'.$row['name'].'</div>';
	$qr2 = $tc->home_danhmuc_detail($row['id']);
	while($row2 = mysql_fetch_array($qr2)){
		echo '<div class="phongtiec"><a href="'.$row['url'].$row2['name_rewrite'].'.html">
		<div class="img"><img style="float:left; margin-right:5px" src="'.url_articles_thumb.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div>
		<h4>'.$row2['name'].'</h4></a>
		<p>'.$row2['description'].'</p></div>';
	}
}