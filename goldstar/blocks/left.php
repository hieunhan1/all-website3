<?php
echo '<div id="left">
<div class="box_left" style="border:solid 1px #E3908D">';
$qr = $tc->menu($menu_root,4);
while($row = mysql_fetch_array($qr)){
	if($row['url']!=$danhmuc.'/') echo '<div class="item_left"><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a></div>';
	else echo '<div class="item_left"><a href="'.$row['url'].'" title="'.$row['title'].'" style="color:#ED1E24; background:url(images/left-icon.gif) no-repeat; background-position:0px -50px">'.$row['name'].'</a></div>';
}
echo '</div>';

$qr = $tc->menu(0,4,$lang);
while($row = mysql_fetch_array($qr)){
	echo '<div class="box_left" style="border:solid 1px #999">
	<div style="clear:both; color:#666; font-size:120%; font-weight:bold; text-transform:uppercase; padding:5px 0 5px 15px; border-bottom:solid 3px #9A9A9A"><a href="'.$row['url'].'" style="color:#666">'.$row['name'].'</a></div>';
	$qr2 = $tc->info_left($row['id'],5);
	while($row2 = mysql_fetch_array($qr2)){
		echo '<div class="item_left2"><a href="'.$row['url'].$row2['name_rewrite'].'.html">'.$row2['name'].'</a></div>';
	}
	echo '</div>';
}
echo '</div><!--end left-->';