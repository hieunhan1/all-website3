<div id="chucnang">
<div style="clear:both; font-weight:bold; margin-bottom:20px"><a href="http://www.dayamthuc.vn/chat/username.php" style="color:#F00">Ấn vào đây để tư vấn trực tuyến</a></div>
<?php
$qr = $qt->menu_admin();
while($row = mysql_fetch_array($qr)){
	if( preg_match("/,{$row['id']},/i", $quyen_xem) ){
		echo '<div class="item">
		<a href="administrator.php?p='.$row['url'].'">
			<img src="images/'.$row['url_hinh'].'" alt="" />
			<p>'.$row['name'].'</p>
		</a></div>';
	}
}
?>
</div>