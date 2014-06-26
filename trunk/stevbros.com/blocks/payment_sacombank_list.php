<?php
$qr = $tc->list_khoahoc();
while($row = mysql_fetch_array($qr)){
	$list_kh .= '<div class="list_kh"><a href="payment/'.$row['name_rewrite'].'.html"><img src="'.url_danhmuc_image.$row['url_hinh'].'" alt="'.$row['name'].'" /><h3>'.$row['name'].'</h3></a><p>Price: <b>'.number_format($row['price']).'</b> USD</p></div>';
}
$view_post .= '<div id="left"><div id="view_post">
	<h1>The courses accept online payment</h1><br />'.$list_kh.'
</div></div>';