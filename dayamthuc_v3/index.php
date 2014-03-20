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
	$dm = explode('/',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){
		$page = 1; $page_name = '';
	}else{
		$page = $dm[1]; $page_name = ' - Page '.$page;
	}
	
	if($danhmuc!='danh-muc'){
		$menu_one = $tc->menu_one($danhmuc);
		$row_menu_one = mysql_fetch_array($menu_one);
		$idMenu = $row_menu_one['id'];
		$type = $row_menu_one['type_id'];
	}else{
		$alias = substr($_GET['detail'],0,-5);
		
		$menu_one = $tc->menu_one_v2($alias);
		$row_menu_one = mysql_fetch_array($menu_one);
		$idMenu = $row_menu_one['id'];
		$type = $row_menu_one['type_id'];
	}
	
	if($row_menu_one['parent_id']!=0) $menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	else $menu_root = $idMenu;
	
	$str_daynauan = '<h3>'.$row_config['contact_foo'].'</h3>';
	
	if(!@$_GET['detail'] || $danhmuc=='danh-muc'){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 3 : include_once('blocks/chuongtrinh_list.php'); break;
			case 4 : include_once('blocks/lichkhaigiang.php'); break;
			case 5 : include_once('blocks/photo_list.php'); break;
			case 6 : include_once('blocks/video_list.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			case 8 : include_once('blocks/dangky.php'); break;
			case 9 : include_once('blocks/thuvien.php'); break;
			case 11 : include_once('blocks/tuyendung_list.php'); break;
			
			default: echo '<div id="content"><p style="height:200px; padding:20px 10px"><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image; include_once('blocks/articles.php'); break;
			case 6 : $qr = $tc->video_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_video_image; include_once('blocks/video.php'); break;
			case 11 : $qr = $tc->tuyendung_detail($dt); $row_detail = mysql_fetch_array($qr); include_once('blocks/tuyendung.php'); break;
			
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
	
	$str_daynauan = '<h1>'.$row_config['contact_foo'].'</h1>';
	
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

<div id="top"></div>

<div class="wrapper">
    <img src="images/bg-header.png" width="960" style="margin:5px 10px" />
    <?php
    include_once('blocks/menu.php');
    include_once('blocks/slider.php');
    ?>
    
    <div id="home_item_1">
    	<div class="item_1" style="margin-left:18px; background:url(upload/images/danhmuc/dich-vu-tu-van.png) no-repeat">
        	<h2><a href="">Dịch vụ Tư Vấn Setup</a></h2>
            <p>Tư vấn ý tưởng, quản lý, điều hành, tái cấu trúc các mô hình, nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...</p>
            <p><a href="">Xem chi tiết</a></p>
        </div>
        
    	<div class="item_1" style="margin-left:45px; background:url(upload/images/danhmuc/tuyen-dung.png) no-repeat">
        	<h2><a href="">Dịch vụ đặt tiệc</a></h2>
            <p>Nhận đặt tiệc cưới, sinh nhật, sự kiện theo yêu cầu</p>
            <p><a href="">Xem chi tiết</a></p>
        </div>
        
    	<div class="item_1" style="margin-left:45px; background:url(upload/images/danhmuc/cung-ung-nhan-su.png) no-repeat">
        	<h2><a href="">Cung ứng & tuyển dụng Nhân sự</a></h2>
            <p>Cung ứng và tuyển dụng nhân sự cấp cao trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...</p>
            <p><a href="">Xem chi tiết</a></p>
        </div>
    </div>
</div>
    
<div id="home_item_2">
	<div class="wrapper" style="padding:0 10px">
    	<div class="item_2">
        	<div class="img_item_2">
            	<div class="img_item_bg"></div>
            	<div class="img_item_bo"><img src="upload/images/danhmuc/cam-nghi-hoc-vien.png" alt="" /></div>
            </div>
            <a href=""><h2>Cảm nghĩ học viên</h2></a>

        </div>
        
        <div class="item_2">
        	<div class="img_item_2">
            	<div class="img_item_bg"></div>
            	<div class="img_item_bo"><img src="upload/images/danhmuc/cam-nghi-hoc-vien.png" alt="" /></div>
            </div>
            <a href=""><h2>Các mô hình kinh doanh của học viên</h2></a>
        </div>
        
        <div class="item_2">
        	<div class="img_item_2">
            	<div class="img_item_bg"></div>
            	<div class="img_item_bo"><img src="upload/images/danhmuc/cam-nghi-hoc-vien.png" alt="" /></div>
            </div>
            <a href=""><h2>Nghiên cứu & phát triễn món ăn, thức uống mới</h2></a>
        </div>
    </div>
</div>

<div class="wrapper">
    <div class="home_title">Thông tin</div>
    <div class="home_item_3">
        <div class="more_item_3">
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        	<a href=""><h3>Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ</h3></a>
        </div>
        
    	<div class="nb_item_3">
        	<div class="img_item_3"><img src="upload/_thumbs/Images/articles/1(2).jpg" alt="" /></div>
            <a href=""><h3>Chương trình đào tạo Quản Lý Nhà Hàng rình đào tạo Quản Lý Nhà Hàng</h3></a>
            <p>Kinh doanh Nhà hàng là mô hình kinh doanh đặc thù, đòi hỏi Nhà quản lý không những có khả năng tổ chức, quản lý con người mà còn am hiểu về ẩm thực thức ăn, thức...</p>
            <a href="" style="color:#ED1C24; font-style:italic; font-weight:bold; font-size:90%">Xem chi tiết</a>
        </div>
    	<div class="nb_item_3">
        	<div class="img_item_3"><img src="upload/_thumbs/Images/articles/1(2).jpg" alt="" /></div>
            <a href=""><h3>Chương trình đào tạo Quản Lý Nhà Hàng</h3></a>
            <p>Kinh doanh Nhà hàng là mô hình kinh doanh đặc thù, đòi hỏi Nhà quản lý không những có khả năng tổ chức, quản lý con người mà còn am hiểu về ẩm thực thức ăn, thức...</p>
            <a href="" style="color:#ED1C24; font-style:italic; font-weight:bold; font-size:90%">Xem chi tiết</a>
        </div>
        
        <div style="clear:both; height:1px"></div>
    </div>
    
    <div class="home_title">Hình ảnh</div>
    <div class="home_item_3">
    	<div class="photo_item">
        	
        </div>
    </div>
</div>

<div style="clear:both; height:30px"></div>

<div class="wrapper">
    <!--partner-->
    <div class="home_item_3" style="height:130px; padding:5px 0">
        <div class="simply-scroll simply-scroll-container">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width:2255px">
                    <?php
                    $qr = $tc->slider_banner(3);
					while($row = mysql_fetch_array($qr)){
						echo '<li style="list-style:none"><a href="'.$row['link'].'" title="'.$row['name'].'" target="_blank"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'"></a></li>';
					}
					?>
                </ul>
            </div>
        </div>
    </div>
</div>

    <!--Contact Social-->
    <div id="contact_social">
    	<div id="contact_foo">
        	<?php
            $i = 0;
			$qr = $tc->chinhanh_ds();
			$name_chinhanh = '';
			$info_chinhanh = '';
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($i!=1){
					$name_chinhanh .= '<span class="select_chinhanh chinhanh'.$i.'">'.$row['name'].'</span>';
					$info_chinhanh .= '<div class="chinhanh" id="chinhanh'.$i.'">
					<p>Địa chỉ: <b>'.$row['diachi'].'</b></p>
					<p>Điện thoại: <b>'.$row['phone'].'</b></p>
					<p>Hotline: <b>'.$row['hotline'].'</b></p>
					<p>Email: <b>'.$row['email'].'</b></p></div>';
				}else{
					$name_chinhanh .= '<span class="select_chinhanh chinhanh1 select_chinhanh_active">'.$row['name'].'</span>';
					$info_chinhanh .= '<div class="chinhanh" id="chinhanh1">
					<p>Địa chỉ: <b>'.$row['diachi'].'</b></p> <p style="color:#F00; margin-left:50px; font-size:90%">(Đối diện Chợ Đakao)</p>
					<p>Điện thoại: <b>'.$row['phone'].'</b></p>
					<p>Hotline: <b>'.$row['hotline'].'</b></p>
					<p>Email: <b>'.$row['email'].'</b></p></div>';
				}
			}
			echo '<div id="select_chinhanh"><span style="font-size:110%">CHỌN CHI NHÁNH:</span> '.$name_chinhanh.'</div>'.$info_chinhanh;
			?>
        </div>
    	<div id="social">
        	<?php
            $qr = $tc->menu(1,3);
			while($row = mysql_fetch_array($qr)){
				echo '<a href="'.$row['url'].'" target="_blank"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
        </div>
        <div style="clear:both; height:20px"></div>
    </div>

    <div id="footer">
    	<?php echo $str_daynauan.'<p style="width:auto; float:right">'.$row_config['copyright'].'</p>'; ?>
    </div>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>

<script type="text/javascript" src="library/partner/common.js"></script>
<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>

<div id="support_online">
	<img src="images/support-online.gif" alt="support online" id="btn_support" />
    <div id="ajax_support">
    	<img src="images/loading1.gif" alt="loading" width="270" id="loading_support" />
        <div id="ajax_support_data"></div>
    </div>
</div>
<?php
if(@$script_slider) echo $script_slider;
if(@$script_photo) echo $script_photo;
mysql_close();
?>
</body>
</html>