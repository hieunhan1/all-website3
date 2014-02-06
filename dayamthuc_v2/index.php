<?php
session_start();
$lang = 'vi';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();
include_once('config.php');

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('_page_',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){
		$page = 1; $page_name = '';
	}else{
		$page = $dm[1]; $page_name = ' - Page '.$page;
	}
	
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/products_list.php'); break;
			case 4 : include_once('blocks/picture_list.php'); break;
			case 5 : include_once('blocks/video_list.php'); break;
			case 6 : include_once('blocks/contact.php'); break;
			case 7 : include_once('blocks/giohang.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->product_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_product_image_thumb; include_once('blocks/products.php'); break;
			case 4 : $qr = $tc->picture_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_catalog_image_thumb; include_once('blocks/picture.php'); break;
			case 5 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_thumb; include_once('blocks/video.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
		
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.$image_link.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$title = strip_tags($row_detail['name'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_detail['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_detail['metaKeyword']); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title,$description,$keyword,$image,$url);
	}
}else{
	$menu_one = $tc->menu_type(1,0,$lang);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
	$url = 'http://'.$domain;
	$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
	$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
	$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
	$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);

	$include = ob_start();
	include_once('blocks/home.php');
	$include = ob_get_clean();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
    <div id="logo">
        <div class="aleoflash-swf" style="display:block;"><embed src="images/logo.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="320" height="80" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed></div>
        <script language="JavaScript">var hasFlash=false;if(window.ActiveXObject){ try { if (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) hasFlash=true;} catch(e){}} else { if(navigator.plugins["Shockwave Flash"]){hasFlash=true;}}var elems=document.getElementsByTagName("div"); for(var i in elems){if(!hasFlash && elems[i].className=="aleoflash-gif") elems[i].style.display="block"; else if ((!hasFlash && elems[i].className=="aleoflash-swf") || elems[i].className=="aleoflash") elems[i].style.display="none";}</script>
    </div>
    <?php include_once('blocks/menu.php'); ?>
	<div id="slider"><img src="upload/images/slider_banner/slider.jpg" alt=""  /></div>

	<script type="text/javascript" src="library/realshadow.js"></script>
    <div class="linkwebsite">
        <div class="link_item" style="background:url('images/day.png') no-repeat">	
            <h2 class="realshadow block round cr" rel="r" >DẠY ẨM THỰC</h2>
            <p class="realshadow block round cr" rel="r">Đào Tạo Nấu Ăn Và Pha Chế Chuyên Nghiệp</p>
            <a href="http://www.dayamthuc.vn" target="_blank">www.dayamthuc.vn</a>
        </div>
        <div class="link_item" style="background:url('images/cook.png') no-repeat">	
            <h2 class="realshadow block round cr" rel="r">COOKING CLASS</h2>
            <p class="realshadow block round cr" rel="r">Mang Ẩm Thực Việt Nam Ra Thế Giới</p>
            <a href="http://www.cookingclass.com.vn" target="_blank">www.cookingclass.com.vn</a>
        </div>
        <div class="link_item" style="background:url('images/tu van.png') no-repeat">	
            <h2 class="realshadow block round cr" rel="r">TƯ VẤN, SETUP</h2>
            <p class="realshadow block round cr" rel="r">Chuyên Nghiệp - Đẳng Cấp</p>
        </div>
         <script type="text/javascript">
            (function(){
                realshadow(document.getElementsByClassName('realshadow'));				
            })();
        </script>
    </div>
    
    <div id="nauan_other">
    	<div class="nauan_other_item">
        	<a href=""><img src="upload/images/danhmuc/cong-thuc-nau-an.png" alt="" />
            <h3>Công Thức Nấu Ăn</h3></a>
        </div>
    	<div class="nauan_other_item">
        	<a href=""><img src="upload/images/danhmuc/nghien-cuu-phat-trien.png" alt="" />
            <h3>Dạy Nấu Ăn Online</h3></a>
        </div>
    	<div class="nauan_other_item">
        	<a href=""><img src="upload/images/danhmuc/day-nau-an-online.png" alt="" />
            <h3>Nghiên Cứu &amp; Phát Triển Ẩm Thực</h3></a>
        </div>
    </div>
    
    <div id="about" class="viewpost">
    	<h1>Giới Thiệu NETSPACE</h1>
        <div id="about_info">
            <p>Được thành lập từ năm 2010, Netspace institute với khẩu hiệu "<b>Human resource power</b>", mong muốn tập hợp tất cả sức mạnh nguồn nhân lực có năng lực và có tâm huyết
    với ngành giáo dục trên cơ sở sự kết hợp hài hòa về sự đóng góp và lợi ích vào sự nghiệp giáo dục chung của đất nước. Cùng với một định hướng về giáo dục là dạy nghề theo chuẩn đào tạo quốc tế dựa trên tiêu chí hoạt động đó là kết nối trường học với xã hội, doanh nghiệp:</p>
            <p style="margin-left:35px">- Netspace School là trường học, cung ứng  cho xã hội, các doanh nghiệp những con người có khả năng làm việc tốt giúp xã hội, doanh nghiệp phát triển.</p>
            <p style="margin-left:35px">- Netspace School định hướng phát triển nhằm thiết lập nhiều mối quan hệ cùng với các đối tác, kết hợp những điểm mạnh của mỗi đối tác, tạo sức mạnh 
    tổng hợp phát triển sự nghiệp giáo dục tại Việt Nam.</p>
		</div>
        <div id="about_video"><iframe src="http://www.youtube.com/embed/CZHlP-NJE44?origin=http://www.dayamthuc.vn&rel=0" frameborder="0"></iframe></div>
        <div style="clear:both; height:1px"></div>
    </div>
    
    <div class="home_info">
        <div class="title">
            <div class="title_1"></div>
            <div class="title_2"><p>T</p><p>h</p><p>ô</p><p>n</p><p>g</p><p>&nbsp;</p><p>T</p><p>i</p><p>n</p></div>
            <div class="title_3"></div>
        </div>
        
        <div id="home_info_noibat">
        	<div class="home_info_noibat_item">
                <div class="home_info_noibat_img"><a href=""><img src="upload/images/danhmuc/1(5).jpg" alt="" /></a></div>
                <a href=""><h3>Học nấu ăn ở đâu tốt nhất? Học nấu ăn ở đâu tốt nhất?</h3></a>
                <div class="info">Netspace School là trường học, cung ứng  cho xã hội, các doanh nghiệp những con người có khả năng làm việc tốt giúp xã hội, doanh nghiệp phát triển.</div>
                <a href="" class="viewmore">Xem thêm..</a>
            </div>
        	<div class="home_info_noibat_item">
                <div class="home_info_noibat_img"><a href=""><img src="upload/images/danhmuc/1(5).jpg" alt="" /></a></div>
                <a href=""><h3>Học nấu ăn ở đâu tốt nhất? Học nấu ăn ở đâu tốt nhất?</h3></a>
                <div class="info">Netspace School là trường học, cung ứng  cho xã hội, các doanh nghiệp những con người có khả năng làm việc tốt giúp xã hội, doanh nghiệp phát triển.</div>
            </div>
        </div>
        
        <div id="home_info_new">
        	<li><a href="">Mẹo chọn và luộc gà ngon ngày Tết</a></li>
            <li><a href="">Nghề đầu bếp - nghề nổi tiếng không cần bằng cấp</a></li>
            <li><a href="">Nem công, chả phượng - Món ăn cung đình </a></li>
            <li><a href="">Học làm bánh Pizza</a></li>
            <li><a href="">Học rang xay cà phê</a></li>
            <li><a href="">Cách làm cơm tấm</a></li>
            <li><a href="">Cơm sâu - Món ăn lạ của Nhật Bản - Trường dạy học nấu ăn giới thiệu</a></li>
            <li><a href="">Học nấu ăn chay</a></li>
        </div>
        
        <div style="clear:both; height:1px"></div>
    </div>
    
    <div class="home_info">
        <div class="title">
            <div class="title_1"></div>
            <div class="title_2"><p>H</p><p>ì</p><p>n</p><p>h</p><p>&nbsp;</p><p>Ả</p><p>n</p><p>h</p></div>
            <div class="title_3"></div>
        </div>
        
        <div class="home_photo_item">
        	<a href=""><div class="home_photo_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <h4>Hoạt động của trường</h4></a>
        </div>
        
        <div class="home_photo_item">
        	<a href=""><div class="home_photo_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <h4>Hoạt động của trường</h4></a>
        </div>
        
        <div class="home_photo_item">
        	<a href=""><div class="home_photo_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <h4>Hoạt động của trường</h4></a>
        </div>
        
        <div class="home_photo_item">
        	<a href=""><div class="home_photo_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <h4>Hoạt động của trường</h4></a>
        </div>
        
        <div style="clear:both; height:10px"></div>
    </div>
    
    <div class="home_info">
        <div class="title">
            <div class="title_1"></div>
            <div class="title_2"><p>V</p><p>i</p><p>d</p><p>e</p><p>o</p></div>
            <div class="title_3"></div>
        </div>
        
		<div class="home_video_item">
        	<a href=""><div class="home_video_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <div class="play_video"></div>
            <img src="images/video.gif" alt="" style="margin-bottom:5px" />
            <h4>Tổng kết năm 2013 - Trường dạy học nấu ăn NETSPACE</h4></a>
        </div>
        
		<div class="home_video_item">
        	<a href=""><div class="home_video_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <div class="play_video"></div>
            <img src="images/video.gif" alt="" style="margin-bottom:5px" />
            <h4>Học viên trường học nấu ăn NETSPACE dã ngoại KDL Văn Thánh 10- 12 - 2013</h4></a>
        </div>
        
		<div class="home_video_item">
        	<a href=""><div class="home_video_item_img"><img src="upload/images/danhmuc/album-anh-cac-lop.jpg" alt="" /></div>
            <div class="play_video"></div>
            <img src="images/video.gif" alt="" style="margin-bottom:5px" />
            <h4>Diễn Viên- Trương Minh Cường học nấu ăn tại Trường NetSpace.</h4></a>
        </div>
        
        <div style="clear:both; height:20px"></div>
    </div>

	<?php echo $include; ?>
    
    <div id="contact_social">
    	<div id="contact_foo">
        	<div id="select_chinhanh">CHỌN CHI NHÁNH:
            	<span class="select_chinhanh select_chinhanh_active">Tp.HCM</span>
            	<span class="select_chinhanh">Đà Lạt</span>
            	<span class="select_chinhanh">Đà Nẵng</span>
            	<span class="select_chinhanh">Cần Thơ</span>
            </div>
        	Địa chỉ: 30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM<br />
            (Đối diện Chợ Đakao) <br />
            Điện thoại:(08) 6291 2698 - (08) 6291 0908 <br />
            Email: info@dayamthuc.vn<br />
        </div>
    	<div id="social">
        	<a href=""><img src="upload/images/danhmuc/youtube_2.png" alt="" /></a>
        	<a href=""><img src="upload/images/danhmuc/facebook.png" alt="" /></a>
        </div>
        
        <div style="clear:both; height:20px"></div>
    </div>
    
    <div style="clear:both; height:130px; margin:0 7px 10px 10px; padding-top:5px; background-color:#FFF">
        <div class="simply-scroll simply-scroll-container">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width:2255px">
                	<li style="list-style:none"><a href="http://www.vietnamchefs.com/" title="Hội đầu bếp chuyên nghiệp Sài Gòn" target="_blank"><img src="upload/images/slider_banner/hoi-dau-bep-01.jpg" alt="Hội đầu bếp chuyên nghiệp Sài Gòn"></a></li>
                    <li style="list-style:none"><a href="http://www.vedan.com.vn/" title="Vedan" target="_blank"><img src="upload/images/slider_banner/vedan.jpg" alt="Vedan"></a></li>
                    <li style="list-style:none"><a href="http://fannyicecream.wordpress.com/" title="Fanny Ice Cream" target="_blank"><img src="upload/images/slider_banner/fanny.jpg" alt="Fanny Ice Cream"></a></li>
                    <li style="list-style:none"><a href="http://www.simplex.com.sg/" title="Simplex Pte Ltd" target="_blank"><img src="upload/images/slider_banner/simplex.jpg" alt="Simplex Pte Ltd"></a></li>
                	<li style="list-style:none"><a href="http://www.vietnamchefs.com/" title="Hội đầu bếp chuyên nghiệp Sài Gòn" target="_blank"><img src="upload/images/slider_banner/hoi-dau-bep-01.jpg" alt="Hội đầu bếp chuyên nghiệp Sài Gòn"></a></li>
                    <li style="list-style:none"><a href="http://www.vedan.com.vn/" title="Vedan" target="_blank"><img src="upload/images/slider_banner/vedan.jpg" alt="Vedan"></a></li>
                    <li style="list-style:none"><a href="http://fannyicecream.wordpress.com/" title="Fanny Ice Cream" target="_blank"><img src="upload/images/slider_banner/fanny.jpg" alt="Fanny Ice Cream"></a></li>
                    <li style="list-style:none"><a href="http://www.simplex.com.sg/" title="Simplex Pte Ltd" target="_blank"><img src="upload/images/slider_banner/simplex.jpg" alt="Simplex Pte Ltd"></a></li>
                </ul>
            </div>
        </div>
    </div>

    
    
    <div id="footer">
    	<h5><strong>Trường dạy nghề ẩm thực NETSPACE</strong></h5>
    	<p style="width:auto; float:right">Copyright © 2014 by NETSPACE</p>
    </div>
</div>
<?php mysql_close();?>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>

<script type="text/javascript" src="library/partner/common.js"></script>
<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>
</body>
</html>