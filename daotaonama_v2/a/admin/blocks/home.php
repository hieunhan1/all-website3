<div id="chucnang">
<?php
$qr = $qt->MenuAdmin();
while($row = mysql_fetch_array($qr)){
	echo '<div class="item">
	<a href="administrator.php?p='.$row['url'].'">
		<img src="images/'.$row['url_hinh'].'" alt="" />
		<p>'.$row['name'].'</p>
	</a></div>';
}
?>
<div style="clear:both; height:1px"></div>
</div>