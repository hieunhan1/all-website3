<div style="clear:both; height:20px"></div>
<div id="navigator" style="margin-bottom:30px; padding-left:20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>
<?php
$qr = $tc->video_news($menu_root,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$news .= '<div class="item_baiviet_2"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></div>';
}

echo '<div id="baiviet">
	<div id="left_baiviet" style="padding-left:20px">
		<h1>'.$row_detail['name'].'</h1>
		<div class="date_baiviet">Cập nhật ngày '.date('d-m-Y H:i', strtotime($row_detail['date_create'])).'</div>
		<div><iframe width="680" height="500" src="'.$row_detail['link'].'?origin='.$domain.'&amp;rel=0" frameborder="0"></iframe></div>
		<div class="viewpost" style="font-size:14px">'.$row_detail['content'].'</div>
	</div>

	<div id="right_baiviet">
		<div class="box_baiviet"><div class="title_baiviet">Video mới</div>'.$news.'</div>
	</div>
</div>';