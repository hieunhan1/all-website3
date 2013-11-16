<div id="right">
<?php
$left = $tc->menu(0,3,$lang);

$row_left = mysql_fetch_array($left);
$news .= '<div class="box1" style="padding-bottom:10px"><div class="title1">'.$row_left['title'].'</div>';
$qr = $tc->info_left($row_left['id']);
while($row = mysql_fetch_array($qr)){
	$news .= '<div class="item3"><a href="'.$lang.'/'.$row_left['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
}
$news .= '</div>';

$row_left = mysql_fetch_array($left);
echo '<div class="box1" style="padding-bottom:10px"><div class="title1">'.$row_left['name'].'</div>';
$qr = $tc->info_left($row_left['id']);
while($row = mysql_fetch_array($qr)){
	echo '<div class="item"><a href="'.$lang.'/'.$row_left['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
}
echo '</div>';

?>
    
    <div class="box1">
    <?php
    $qr = $tc->slider_banner(2,$lang);
	while($row = mysql_fetch_array($qr)){
		echo '<div class="item2"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /><a href="'.$row['link'].'">Xem</a></div>';
	}
	?>
    </div>
    
    <?php echo $news;?>
</div>