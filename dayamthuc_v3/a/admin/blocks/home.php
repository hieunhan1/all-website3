<div id="chucnang">
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