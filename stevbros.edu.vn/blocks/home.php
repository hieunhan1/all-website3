<?php
include_once('blocks/right.php');
$view_post = '<div id="left">
	<div class="item1">
		<div class="title_home" style="background:url(images/icon_1.gif) no-repeat top left"><h3>Stevbros – đơn vị chuyên đào tạo Quản Lý Dự Án mã số 3807 của Viện Quản Lý Dự Án Hoa Kỳ (PMI)</h3></div>
		<iframe src="http://www.youtube.com/embed/iSkm2Prr2WE?origin=http://'.$domain.'&rel=0" frameborder="0" allowfullscreen></iframe>
		<p>Stevbros chuyên thiết kế và cung cấp các khóa học quản lý dự án cho doanh nghiệp và cá nhân ở nhiều lĩnh vực khác nhau trong khu vực Châu Á và các khóa học quản lý dự án online toàn cầu.</p>
	</div>';

$view_post .= '<div class="item2"><div class="title_home" style="background:url(images/icon_2.gif) no-repeat top left"><h3>Các khoá học cho doanh nghiệp phổ biến</h3></div><div class="item">';
$home_info = $tc->home_info(16,3);
while($row_home = mysql_fetch_array($home_info)){
	$view_post .= '<div>
	<p class="img"><img src="'.url_detail_thumb_image.$row_home['url_hinh'].'" alt="'.$row_home['name'].'" /></p>
	<a href="khoa-hoc-va-chung-chi/'.$row_home['name_rewrite'].'.html" title="'.$row_home['name'].'"><h4>'.$row_home['name'].'</h4></a>
	<p class="content">'.$row_home['description'].'</p>
	</div>';
}
$view_post .= '</div></div>';

$view_post .= '<div class="item3"><div class="title_home" style="background:url(images/icon_3.gif) no-repeat top left"><h3>Các khoá học qua mạng phổ biến</h3></div><div class="content">';
$home_info = $tc->slider_banner(4);
while($row_home = mysql_fetch_array($home_info)){
	$view_post .= '<div><a href="'.$row_home['link'].'" title="'.$row_home['name'].'"><h4>'.$row_home['name'].'</h4><img src="'.url_slider_image.$row_home['url_hinh'].'" alt="'.$row_home['name'].'" /></a></div>';
}
$view_post .= '</div></div></div>';// end left
$view_post .= $view_right;

$view_post .= '<div id="study"><div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left"><h3>Tư vấn du học Singapore/ Mỹ</h3></div>
<p>Stevbros chuyên cung cấp giải pháp du học hiệu quả nhất với mục đích giúp các bạn chọn đúng ngành học, đúng trường học với thời gian học ngắn nhất và ngân sách tiết kiệm nhất đồng thời đảm bảo sự hài lòng của các bạn với chất lượng học tập quốc tế và bằng cấp được công nhận toàn cầu. Ngoài ra, Stevbros là đơn vị chuyên giải pháp visa du học Mỹ, đảm bảo 100%.</p></div>';

$view_post .= '<div id="partner"><ul id="scroller">';
$partner = $tc->slider_banner(3);
while($row_partner = mysql_fetch_array($partner)){
	$view_post .= '<li><a href="'.$row_partner['link'].'" title="'.$row_partner['name'].'" target="_blank"><img src="'.url_slider_image.$row_partner['url_hinh'].'" alt="'.$row_partner['name'].'" /></a></li>';
}
$view_post .= '</ul><script type="text/javascript" src="library/run_image/common.js"></script>
<script type="text/javascript" src="library/run_image/jquery.simplyscroll.min.js"></script>
<script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script></div>';