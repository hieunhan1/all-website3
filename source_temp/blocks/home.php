<div id="home_new">
	<?php
	$str_nb = '';
	
    $qr = $tc->info_noibat();
	$i = 0;
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i != 1){
			$box_new_more .= '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
		}else{
			$box_new_nb = '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="img"><img src="'.url_detail_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3></a><p>'.strip_tags($row['metaDescription']).'</p>';
		}
	}
	
	echo '<div id="box_new_nb">'.$box_new_nb.'</div>
	<div id="box_new_more"><p>Thông tin mới</p>'.$box_new_more.'</div>';
	?>
    
    <div id="box_new_video">
        <iframe width="310" height="220" src="//www.youtube.com/embed/txMAS8BUkxI?rel=0&wmode=transparent" frameborder="0" allowfullscreen></iframe>
        <a href="" style="color:#FFF"><h3>42 Người đẹp Việt tham dự VCK tự giới thiệu</h3></a>
        <li><a href="">Đêm chung kết HHTGNV 2010 - Phần I</a></li>
        <li><a href="">Đêm chung kết HHTGNV 2010 - Phần II</a></li>
        <li><a href="">Đêm chung kết HHTGNV 2010 - Phần III</a></li>
        <li><a href="">Á hậu Kiều Khanh tham dự Miss World</a></li>
    </div>
</div>
<div id="home_bst">
    <div class="home_bts_title">Bộ sưu tập</div>
    <div class="home_bts_item"><a href=""><div class="img"><img src="public/_thumbs/Images/bosuutap/bosuutap-1.jpg" alt="" /></div><h4>Bộ sưu tập xuân hè 2014</h4></a></div>
    <div class="home_bts_item" style="margin-left:8px"><a href=""><div class="img"><img src="public/_thumbs/Images/bosuutap/bosuutap-2.jpg" alt="" /></div><h4>Bộ sưu tập cưới năm 2014</h4></a></div>
    <div class="home_bts_item" style="margin-left:8px"><a href=""><div class="img"><img src="public/_thumbs/Images/bosuutap/bosuutap-3.jpg" alt="" /></div><h4>Bộ sưu tập thời trang 2014</h4></a></div>
    <div class="home_bts_item" style="margin-left:8px"><a href=""><div class="img"><img src="public/_thumbs/Images/bosuutap/bosuutap-4.jpg" alt="" /></div><h4>Bộ sưu tập thời trang biển 2014</h4></a></div>
</div>
<div id="home_thisinh">
    <div class="home_thisinh_title">Thí sinh dự thi được bình chọn nhiều nhất</div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div class="home_thisinh_item">
        <a href=""><div class="img"><img src="public/_thumbs/Images/thisinh/thisinh-1.jpg" alt="" /></div><h5>Phan Thị Lý</h5></a>
        SBD: 679<br />
        41524 bình chọn
    </div>
    <div style="clear:both; height:30px"></div>
</div>
<div id="home_thisinh">
    <div class="home_thisinh_title">Nhà tài trợ</div>

    <script type="text/javascript" src="library/partner/common.js"></script>
    <script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
    <script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script>
    <div class="simply-scroll simply-scroll-container" style="width:1000px; margin:auto">
        <div class="simply-scroll-clip">
            <ul id="scroller" class="simply-scroll-list" style="width: 2255px;">
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-1.jpg" alt=""></a></li>
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-2.jpg" alt=""></a></li>
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-3.jpg" alt=""></a></li>
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-4.jpg" alt=""></a></li>
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-5.jpg" alt=""></a></li>
                <li style="list-style:none"><a href="" title="" target="_blank"><img src="public/images/slider/partner-6.jpg" alt=""></a></li>
            </ul>
        </div>
    </div>
    <div style="clear:both; height:30px"></div>
</div>
<?php
	if(!@$_SESSION['popup']){
		$_SESSION['popup'] = 1;
		include_once('blocks/popup.php');
	}
?>