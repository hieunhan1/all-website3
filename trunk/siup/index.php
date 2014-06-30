<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);
//date_default_timezone_set('Asia/Ho_Chi_Minh');

if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

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
	if(mysql_num_rows($menu_one)==0){
		header('location: /error/index.php');
		return false;
	}
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
			case 3 : include_once('blocks/project_1_list.php'); break;
			case 4 : include_once('blocks/project_2_list.php'); break;
			case 5 : include_once('blocks/project_3_list.php'); break;
			case 6 : include_once('blocks/contact.php'); break;
			
			default: echo '<p style="height:500px"><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 5 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_detail_image_thumb; include_once('blocks/articles.php'); break;
			case 3 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_project_image_thumb; include_once('blocks/project_detail.php'); break;
			case 4 : $qr = $tc->info_detail($dt); $row_detail = mysql_fetch_array($qr); $image_link = url_project_image_thumb; include_once('blocks/project_detail.php'); break;
			case 7 : include_once('blocks/search.php'); break;
			
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
	$idMenu = $menu_root = $row_menu_one['id'];
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

$qr = $tc->menu_one_id($menu_root);
$row = mysql_fetch_array($qr);
if($row['url_hinh'] != '') $header_img = url_catalog_image.$row['url_hinh'];
else $header_img = 'images/bg-header.jpg';
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
	<div id="header" style="background:url('<?php echo $header_img;?>') no-repeat #6A9EDC">
    	<div id="logo">
        	<a href="/<?php if($lang!='vi') echo '?lang='.$lang; ?>"><img src="images/logo.png" alt="SIUP" /></a>
            <div><?php echo $row_config['contact_foo'];?></div>
        </div>
        
        <div id="top">
        	<?php
			$qr = $tc->menu(0,1,$lang);
			while($row = mysql_fetch_array($qr)){
				echo '<li><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a>|</li>';
			}
			
			if($lang=='vi') echo '<a href="?lang=en" style="border:none"><img src="images/en.gif" alt="en" style="height:11px; float:left; margin-left:15px; padding-top:4px " /> English</a>';
			else echo '<a href="" style="border:none"><img src="images/vi.gif" alt="vi" style="height:11px; float:left; margin-left:15px; padding-top:4px " /> Tiếng Việt</a>';
			?>
            
        </div>
        
        <div id="search">
        	<input type="text" name="txtSearch" id="txtSearch" class="txt" placeholder="<?php echo const_txt_search;?>" />
            <input type="button" name="btnSearch" value="&nbsp;" class="btn" />
        </div>
        <?php
        $qr = $tc->menu_type(7,0,$lang);
		$row = mysql_fetch_array($qr);
		?>
        <script type="text/javascript">
		$(document).ready(function(e) {
            $("#txtSearch").keydown(function(e){
				var str = $.trim($("#txtSearch").val());
				if(str!='' && e.keyCode==13) window.location = "<?php echo $row['url'];?>" + str + ".html";
			});
			$("input[name=btnSearch]").click(function(){
				var str = $.trim($("#txtSearch").val());
				if(str!='') window.location = "<?php echo $row['url'];?>" + str + ".html";
			});
        });
		</script>
    </div>
	<?php
    include_once('blocks/menu.php'); flush();
    include_once('blocks/slider.php'); flush();
	?>
	
	<div id="content">
        <?php echo $include; flush();?>
        <div style="clear:both; height:30px"></div>
    </div>
	<div id="footer">
    	<div id="copyright">
        	<?php
            echo "<h4>{$row_config['copyright']}</h4>";
			$qr = $tc->menu(0,6);
			while($row = mysql_fetch_array($qr)){
				echo '<a href="'.$row['url'].'" target="_blank"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
        </div>
        <div id="partner">
        	<h4><?php echo const_partner; ?></h4>
            <div id="all_partner">
            	<!--partner-->
                <div class="simply-scroll simply-scroll-container">
                    <div class="simply-scroll-clip">
                        <ul id="scroller" class="simply-scroll-list" style="width:2255px">
                            <?php
                            $qr = $tc->slider_banner(2);
                            while($row = mysql_fetch_array($qr)){
                                echo '<li style="list-style:none"><a href="'.$row['link'].'" title="'.$row['name'].'" target="_blank"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'"></a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <script type="text/javascript" src="library/partner/common.js"></script>
				<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
                <script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>
                <!--end partner-->
            </div>
        </div>
    </div>


</div>
</body>
</html>