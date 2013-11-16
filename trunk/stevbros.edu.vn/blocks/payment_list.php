<?php
$qr = $tc->list_khoahoc();
while($row = mysql_fetch_array($qr)){
	$list_kh .= '<div class="list_kh"><a href="payment/'.$row['name_rewrite'].'.html"><img src="'.url_danhmuc_image.$row['url_hinh'].'" alt="'.$row['name'].'" /><h3>'.$row['name'].'</h3></a><p>Giá: <b>'.number_format($row['price']).'</b> vnđ</p></div>';
}
$view_post .= '<div id="left"><div id="view_post">
	<h1>Danh sách các khoá học thanh toán qua mạng</h1><br />'.$list_kh.'
</div></div>';