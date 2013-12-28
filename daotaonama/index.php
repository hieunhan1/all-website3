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
<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript" src="library/jquery.corner.js"></script>
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="header">
    	<p id="logo"><img src="images/trung-tam-dao-tao-nam-a.gif" alt="Trung tâm đào tạo Nam Á" /></p>
        <?php
	    include_once('blocks/menu.php');
		?>
    </div>
    <div id="slider"><img src="public/images/slider/slider.jpg" alt="" width="1200" /></div>
    <div id="hot_login">
    	<div id="hotline"><font color="#DA0000">HOTLINE:</font> <?php echo $row_config['hotline']; ?></div>
    	<div id="login">ID <input type="text" name="username" class="txt_bo" /> Pass <input type="text" name="password" class="txt_bo" /></div>
    </div>
    <div id="left">
    	<div id="home_chuongtrinh">
        	<h1>Các chương trình tiếng anh</h1>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <li><a href="">Anh văn thiếu nhi</a></li>
            <div style="clear:both; height:1px"></div>
        </div>
        
        <link rel="stylesheet" href="library/example/css/website.css" type="text/css" media="screen"/>
		<script type="text/javascript" src="library/example/js/jquery.tinyscrollbar.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#scrollbar1').tinyscrollbar();
            });
        </script>
        <div id="home_about">Giới thiệu</div>
        <div id="scrollbar1">
            <div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
            <div class="viewport">
                 <div class="viewpost overview" style="text-align:justify">
                 	<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>
                   <p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>
                   <p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>
                 	<p>Để tiếp sức cho thế hệ trẻ Việt Nam trên bước đường hội nhập, Anh Văn Hội Việt Mỹ cam kết mang đến những chương trình đào tạo Anh ngữ chất lượng hàng đầu Việt Nam thông qua việc thường xuyên cập nhật những xu hướng và phương pháp giảng dạy hiện đại nhất của thế giới bằng việc hợp tác với đối tác chiến lược là Đại học CUNY Hoa Kỳ (The City University of New York), Đại học công lập quy mô hàng đầu hợp chủng quốc Hoa Kỳ với 450.000 sinh viên đang theo học.</p>
                   <p>Điều kiện học tập thuận lợi, các trang thiết bị tiên tiến cùng với đội ngũ giảng viên ưu tú, các nhà quản lý chuyên nghiệp, Anh Văn Hội Việt Mỹ chắc chắn sẽ mang đến cho các bạn học viên thành công trong bước đường học tập Anh ngữ của mình.</p>
                   <p>Chúc các bạn gặt hái được những thành tích vượt bậc trong quá trình học tập và tạo được những thay đổi, những kỳ tích đột phá trên bước đường tương lai!</p>
                </div>
            </div>
        </div>
        
    </div>
    <div id="right">
    	<div id="tin_noibat">
        	<div id="title_noibat">Tin nổi bật</div>
            <li><a href="">Họat động chào mừng ngày nhà giáo VIệt Nam</a></li>
            <li><a href="">Tặng 200 phần quà cho Tết Nguyên Đán 2014</a></li>
            <li><a href="">Tặng 200 phần quà cho Tết Nguyên Đán 2014</a></li>
        </div>
        <div id="register">
        	<div id="title_register">Đăng ký online</div>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
            	<tr>
                	<td>Họ tên</td>
                	<td><input type="text" name="hoten" class="txt_register" /></td>
                </tr>
            	<tr>
                	<td>Số điện thoại</td>
                	<td><input type="text" name="phone" class="txt_register" /></td>
                </tr>
            	<tr>
                	<td>Email</td>
                	<td><input type="text" name="email" class="txt_register" /></td>
                </tr>
            	<tr>
                	<td>Nhu cầu học</td>
                	<td><select name="nhucauhoc" class="sel_register">
                    	<option value="">Anh văn giao tiếp</option>
                    	<option value="">Anh văn giao tiếp</option>
                    	<option value="">Anh văn giao tiếp</option>
                    </select></td>
                </tr>
            	<tr>
                	<td>&nbsp;</td>
                	<td><input type="button" name="btnRegister" value="Đăng ký" class="btn_register" /></td>
                </tr>
            </table>
        </div>
    </div>
    <div style="clear:both; height:20px"></div>
    <div id="footer"><?php echo $row_config['contact_foo']; ?></div>
    
    
</div>
<?php mysql_close();?>
</body>
</html>