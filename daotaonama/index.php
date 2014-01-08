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
			case 3 : include_once('blocks/articles_list.php'); break;
			case 8 : include_once('blocks/contact.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_product_image_thumb; include_once('blocks/articles.php'); break;
			
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
    <?php include_once('blocks/slider.php'); ?>
    <div id="hot_login">
    	<div id="hotline"><font color="#DA0000">HOTLINE:</font> <?php echo $row_config['hotline']; ?></div>
    	<div id="login">ID <input type="text" name="username" class="txt_bo" /> Pass <input type="text" name="password" class="txt_bo" /></div>
    </div>
    <div id="left">
    	<div id="home_chuongtrinh">
        	<?php
            $qr = $tc->menu_type(3,0,'vi');
			$row = mysql_fetch_array($qr);
			echo '<h2>'.$row['title'].'</h2>';
			
			$id_chuongtrinh = $row['id'];
			
			$i = 0;
			$qr = $tc->home_chuongtrinh($id_chuongtrinh);
			while($row_ct = mysql_fetch_array($qr)){
				$i++;
				if($i%2 == 1){
					$str_l .= '<li><a href="'.$row['url'].$row_ct['name_rewrite'].'.html">'.$row_ct['name'].'</a></li>';
				}else{
					$str_r .= '<li><a href="'.$row['url'].$row_ct['name_rewrite'].'.html">'.$row_ct['name'].'</a></li>';
				} 
			}
			echo '<div style="width:310px; float:left">'.$str_l.'</div>
			<div style="width:380px; float:right">'.$str_r.'</div>';
			?>
            <div style="clear:both; height:1px"></div>
        </div>
        
        <?php echo $include; ?>
        
    </div>
    <div id="right">
    	<div id="tin_noibat">
        	<div id="title_noibat">Tin nổi bật</div>
            <?php
            $qr = $tc->tinnoibat();
			while($row = mysql_fetch_array($qr)){
				echo '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
			?>
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
                    <?php
                    $qr = $tc->home_chuongtrinh($id_chuongtrinh);
					while($row = mysql_fetch_array($qr)){
						echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
					}
					?>
                    </select></td>
                </tr>
            	<tr>
                	<td>&nbsp;</td>
                	<td><input type="button" name="btnRegister" value="Đăng ký" class="btn_register" /></td>
                </tr>
            </table>
        </div>
        <?php
        if(@$dt && $type==2){
			$qr = $tc->other($idMenu);
			while($row = mysql_fetch_array($qr)){
				$str_other .= '<li class="li_1"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
			echo '<div id="other"><div id="title_other">Các tin khác</div>
			'.$str_other.'</div>';
		}elseif(@$dt && $type==3){
			$qr = $tc->other($idMenu);
			while($row = mysql_fetch_array($qr)){
				$str_other .= '<li class="li_2"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
			echo '<div id="other">'.$str_other.'</div>';
		}
		?>
    </div>
    <div style="clear:both; height:20px"></div>
    <div id="footer"><?php echo $row_config['contact_foo']; ?></div>
    
    
</div>
<?php mysql_close();?>
</body>
</html>