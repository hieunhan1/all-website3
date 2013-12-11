<div class='boxright'><div class='title'><span style="background:url(images/icon-right.jpg) left no-repeat"><a href='hoat-dong-cua-truong-netspace/'><font color="#DA251D">&nbsp; &nbsp; &nbsp; Video hoạt động</font></a></span></div>
	<?php
    $qr = mysql_query("SELECT name,name_rewrite,url_hinh,link_video,menu_id FROM video WHERE `delete`=0 AND status=1 AND `other`=1 ORDER BY date_update DESC LIMIT 3");
	$data="";
	while($row = mysql_fetch_array($qr))
	{
		echo '<div class="item"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'"><div class="img_video"><img src="'.url_video_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div></a></div>';
	}
	?>
</div>

<div class='boxright'>
    <div class='title'><span style="background:url(images/icon-thong-tin.jpg) left no-repeat">&nbsp; &nbsp; &nbsp; Thông tin cần biết</span></div>
    <div><?php
        $thongtin = $tc->ThongTinCanBiet();
		while($row_thongtin = mysql_fetch_array($thongtin)){ echo "<div class='thongtin'><strong><a href='{$row_thongtin[url]}'>{$row_thongtin[name]}</a></strong></div>";}
	?></div>
</div>
<div class='boxright'>
    <div class='title'><span style="background:url(images/time.jpg) left no-repeat">&nbsp; &nbsp; &nbsp; Giờ làm việc</span></div>
    <div style="line-height:22px"><b style="color:#00F">7h đến 21h - Từ thứ 2 đến Chủ nhật</b><br /><br />
        <em>Ngoài giờ làm việc, vui lòng liên hệ hotline:</em> <b>
        <?php
        if($_COOKIE['tinhthanh']=='Đà Nẵng'){
            echo '0932 743 799';
        }		else if($_COOKIE['tinhthanh']=='Cần Thơ')		{			echo '0907.955.666 - 0932.930.993';		}		else echo $row_config['tel'];
        ?>
    </b></div>
</div>

<?php
$banner = $tc->slider_banner(2);
while($row_banner = mysql_fetch_array($banner)){
	echo '<div class="boxright"><a href="'.$row_banner['link'].'" title="'.$row_banner['name'].'"><img style="margin:5px 0" src="'.url_slider_image.$row_banner['url_hinh'].'" alt="'.$row_banner['name'].'" /></a></div>';
}
?>

<div class='boxright'>
	<div class='title'><a href="thong-bao/" title="Thông báo học viên trường dạy nghề ẩm thực NETSPACE"><span style="background:url(images/newsEventsIcon.jpg) left no-repeat; color:#ED1C24">&nbsp; &nbsp; &nbsp;Thông báo học viên</span></a></div>
    <?php
    $newsevent = $tc->NewsEvent(66,3);
	while($row_newsevent = mysql_fetch_array($newsevent)) {
		echo "<div class='boxevent'><a href='{$linkpost}{$row_newsevent[name_rewrite]}-{$row_newsevent[id]}.html'><img src='".url_articles_thumb_image."{$row_newsevent[url_hinh]}' alt='{$row_newsevent[name]}' /><h4>{$row_newsevent[name]}</h4></a><div style='clear:both'></div></div>";
	}
	mysql_free_result($newsevent);
	?>
</div>

<div class='boxright'>
	<!--<a href="danh-muc/Thong-Tin-Hoc-Nau-An-6-1.html" title="Thông tin học nấu ăn">
		<img alt="Thông tin học nấu ăn" src="upload/images/slider_banner/Untitled-1-01.gif" style="margin:5px 0" />
	</a>-->
	<div class="title"><a href="danh-muc/Thong-Tin-Hoc-Nau-An-6-1.html" title="Thông tin học nấu ăn"><span style="background:url(images/newsEventsIcon.jpg) left no-repeat; color:#ED1C24">&nbsp; &nbsp; &nbsp;Thông tin học nấu ăn</span></a></div>
    <?php
    $newsevent = $tc->NewsEvent(6,8);
	while($row_newsevent = mysql_fetch_array($newsevent)) {
		echo "<div class='boxevent'><a href='{$linkpost}{$row_newsevent[name_rewrite]}-{$row_newsevent[id]}.html'><img src='".url_articles_thumb_image."{$row_newsevent[url_hinh]}' alt='{$row_newsevent[name]}' /><h4>{$row_newsevent[name]}</h4></a><div style='clear:both'></div></div>";
	}
	?>
</div>

<div class='boxright'>
	<iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Ftruong.day.am.thuc.netspace&amp;width=265&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:265px; height:290px;" allowTransparency="true"></iframe>
	
</div>
<div class='boxright'>
	<!--
	<script src="https://apis.google.com/js/platform.js"></script>
	<script>
	  function onYtEvent(payload) {
		if (payload.eventType == 'subscribe') {
		  // Add code to handle subscribe event.
		} else if (payload.eventType == 'unsubscribe') {
		  // Add code to handle unsubscribe event.
		}
		if (window.console) { // for debugging only
		  window.console.log('YT event: ', payload);
		}
	  }
	</script>
	<div class="g-ytsubscribe" data-channelid="UC3NYiSS1mSe7YXXAeSFqZcw" data-layout="full" data-count="default" data-onytevent="onYtEvent"></div>-->
	<a href="http://www.youtube.com/channel/UC3NYiSS1mSe7YXXAeSFqZcw?feature=watch" title="youtube trường Netspace">
		<img alt="youtube trường Netspace" src="upload/images/slider_banner/Youtube.png" style="margin:5px 0" />
	</a>
</div>