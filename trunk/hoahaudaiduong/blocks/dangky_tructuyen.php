<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';
$view_post = '<div class="viewpost">
	<h1>'.$row_menu_one['title'].'</h1>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
	<p><a href="gioi-thieu/" target="_blank" style="color:#FF0; font-style:italic; padding-left:35px">Xem chi tiết thể lệ cuộc thi tại đây</a></p><br />
	<p style="color:#FF0; font-size:120%">Đã hết hạng đăng ký dự thi Hoa Hậu Đại Dương Việt Nam năm 2014</p>
</div>
<div style="clear:both; height:100px"></div>';

echo $navigator.$view_post;
?>