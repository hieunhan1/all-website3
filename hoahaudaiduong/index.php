<?php
session_start();
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

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
	$lang = $row_menu_one['lang'];
	
	include("languages/{$lang}.php");
	include_once('config.php');
	
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
	$lang = $row_menu_one['lang'];
	
	include("languages/{$lang}.php");
	include_once('config.php');
	
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
<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="top">
    	<div id="lang">
        	<li><a href="javascript:;"><img src="images/vi.gif" alt="Tiếng Việt" /> Tiếng Việt</a></li>
            <li><a href="javascript:;"><img src="images/en.gif" alt="English" /> English</a></li>
        </div>
        <div id="search">
        	<input type="text" name="txtSearch" class="txtSearch" value="Nhập từ khóa.." onfocus="if(value=='Nhập từ khóa..') value=''" onblur="if(value=='') value='Nhập từ khóa..'" />
            <input type="button" name="btnSearch" class="btnSearch" value="&nbsp;" />
        </div>
    </div>
	<div id="logo_slider">
    	<div id="logo"><a href=""><img src="images/logo.png" alt="<?php echo $row_menu_one['title'];?>" /></a></div>
        <?php include_once('blocks/slider.php'); ?>
        <!--<div id="slider"><img src="public/images/slider/slider.jpg" alt="" /></div>-->
    </div>
	<?php include_once('blocks/menu.php'); ?>
	<div id="home_new">
    	<div id="box_new_nb">
        	<a href="">
            	<div class="img"><img src="public/images/articles/le-ky-ket.jpg" alt="" /></div>
                <h3>Lễ ký kết hợp tác xây dựng và triển khai “Blue Ocean World”</h3>
            </a>
            <p>Vũng Tàu đã diễn ra lễ ký kết Thỏa thuận hợp tác xây dựng và triển khai dự án “Blue Ocean World” giữa Quỹ Bảo vệ môi trường Việt Nam và Công ty TNHH MTV Võ Việt Chung.</p>
        </div>
        <div id="box_new_more">
        	<p>Thông tin mới</p>
        	<li><a href="">Năng động với áo len dài và quần jeans </a></li>
        	<li><a href="">Diện bốt lông ấm áp ngày đông</a></li>
        	<li><a href="">9 thói quen xấu gây ra nếp nhăn</a></li>
        	<li><a href="">Năng động với áo len dài và quần jeans</a></li>
        	<li><a href="">Diện bốt lông ấm áp ngày đông</a></li>
        	<li><a href="">9 thói quen xấu gây ra nếp nhăn</a></li>
        	<li><a href="">Diện bốt lông ấm áp ngày đông</a></li>
        	<li><a href="">9 thói quen xấu gây ra nếp nhăn</a></li>
        </div>
        <div id="box_new_video">
        	<iframe width="310" height="220" src="//www.youtube.com/embed/txMAS8BUkxI?rel=0" frameborder="0" allowfullscreen></iframe>
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
    
	<div id="footer">
    	<div id="menu_foo">
        <?php
		$menu = $tc->menu(0,3,$lang);
		while($row = mysql_fetch_array($menu)){
			echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
		}
		?>
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td style="width:240px">
                	<p style="font-weight:bold; margin:0 15px 10px 0; padding-bottom:10px; border-bottom:solid 1px #666">Kết nối với chúng tôi</p>
                    <p style="line-height:33px; width:120px; float:left"><a href="" style="color:#CCC"><img style="float:left; margin-right:5px" src="public/images/catalog/facebook.jpg" alt="" />Facebook</a></p>
                    <p style="line-height:33px; width:120px; float:left"><a href="" style="color:#CCC"><img style="float:left; margin-right:5px" src="public/images/catalog/youtube.gif" alt="" />Youtube</a></p>
                </td>
            	<td><?php echo $row_config['contact_foo']; ?></td>
            	<td align="right" style="width:250px"><?php echo $row_config['copyright']; ?></td>
            </tr>
        </table><br />
    </div>
    
    <div id="formdangky"><a href="public/Ban_DK_Du_Thi_Hoa_Hau_Dai_Duong_VN_2014.docx"><img src="images/download.png" alt="" />Tải form đăng ký Hoa Hậu Đại Dương</a></div>
</div>
<?php mysql_close();?>
</body>
</html>