<?php
session_start();
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

include_once('config.php');

if(@$_GET['danhmuc']){
	$dm = $_GET['danhmuc'];
	$dm = explode('/',$dm);
	$danhmuc = $dm[0];
	if($dm[1]==''){
		$page = 1; $page_name = '';
	}else{
		$page = $dm[1]; $page_name = ' - Trang '.$page;
	}
	
	$menu_one = $tc->menu_one($danhmuc);
	$row_menu_one = mysql_fetch_array($menu_one);
	$idMenu = $row_menu_one['id'];
	$type = $row_menu_one['type_id'];
	$lang = $row_menu_one['lang'];
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_catalog_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$title = strip_tags($row_menu_one['title'], ''); $title = str_replace('"',' ',$title);
		$description = strip_tags($row_menu_one['metaDescription'],''); $description = str_replace('"',' ',$description);
		$keyword = strip_tags($row_menu_one['metaKeyword'],''); $keyword = str_replace('"',' ',$keyword);
		$seo = $tc->seo($domain,$title.$page_name,$description.$page_name,$keyword,$image,$url);
		
		$include = ob_start();
		if($type==2) include_once('blocks/articles_list.php');
		elseif($type==3) include_once('blocks/products_list.php');
		elseif($type==4) include_once('blocks/giohang.php');
		elseif($type==8) include_once('blocks/contact.php');
		else $view_post = '<font color="#FF0000"><b>Could not be found</b></font>';
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		if($type==2){
			$detail = $tc->info_detail($dt);
			$row_detail = mysql_fetch_array($detail);
			($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_detail_image_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
			include_once('blocks/articles.php');
		}elseif($type==3){
			$detail = $tc->info_product($dt);
			$row_detail = mysql_fetch_array($detail);
			($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_product_image_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
			include_once('blocks/products.php');
		}else{
			echo '<div id="left"><p><font color="#FF0000"><b>Could not be found</b></font></p></div>';
		}
		$include = ob_get_clean();
		
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

include("languages/{$lang}.php");
$qr = $tc->menu_type(4,0,$lang);
$row = mysql_fetch_array($qr);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php echo $seo; ?>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="library/jquery.min.js"></script>
</head>

<body>
<div>
    <div id="top">
    	<div id="logo"><a href="?lang=<?php echo $lang;?>"><img src="images/logo.jpg" alt="Gold Star" /></a></div>
        <div id="company_search">
        	<div id="company"></div>
            <div id="icon_giohang" style="float:right; margin:19px 20px 0 40px"><a href="<?php echo $row['url'];?>"><img src="images/gio-hang.jpg" alt="Giỏ hàng" /></a></div>
            <div id="search">
            	<input type="text" name="txtSearch" value="<?php echo const_txt_search;?>" onclick="if(value=='<?php echo const_txt_search;?>') value=''" onblur="if(value=='') value='<?php echo const_txt_search;?>'" id="txtSearch" class="txtSearch" />
                <input type="button" name="btnSearch" value="&nbsp;" class="btnSearch" />
            </div>
        </div>
        <div id="lang">
        	<p><a href="?lang=vi"><img src="images/vi.gif" alt="Tiếng Việt" />Tiếng Việt</a></p>
        	<p><a href="?lang=ko"><img src="images/ko.gif" alt="Tiếng Hàn" />Tiếng Hàn</a></p>
        </div>
        <div id="support"><p style="color:#666; width:auto; float:left; line-height:19px; text-align:center"><strong style="font-size:105%"><?php echo $row_config['tel'];?></strong><br />liên hệ trực tiếp</p>
        <p style="width:auto; float:left; margin:20px 0 0 17px"><?php echo '<a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&amp;m=g&amp;t=1"></a>';?></p></div>
        <div style="clear:both; height:15px;"></div>
        <?php include_once('blocks/menu.php');?>
    </div>
</div>

<div id="wrapper">
	<?php
	include_once('blocks/slider.php');
	echo $include;
	?>
    <div style="clear:both; height:40px"></div>
</div>
<!--Footer-->

<div id="footer">
    <div id="footer_menu">
        <?php
        $qr = $tc->menu(0,1,$lang);
        while($row = mysql_fetch_array($qr)){
            echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
        }
        ?>
        <span id="run_top"><img src="images/top.gif" alt="top" /></span>
    </div>
    <table width="1000px" border="0" cellpadding="10" cellspacing="0" style="line-height:25px; margin:10px auto 0 auto; padding:0 10px">
      <tr>
        <td width="250" valign="top" style="padding-right:30px">
            <div style="font-weight:bold; color:#333; padding-bottom:5px; border-bottom:solid 1px #CCC">Kết nối với chúng tôi</div>
            <div id="social">
            <?php
            $qr = $tc->menu(0,6);
            while($row = mysql_fetch_array($qr)){
                echo '<div class="item_social"><a href="'.$row['url'].'"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" />'.$row['name'].'</a></div>';
            }
            ?>
            </div>
        </td>
        <td valign="top" style="padding-top:5px"><?php echo $row_config['contact_foo'];?></td>
        <td align="right"><?php echo $row_config['copyright'];?></td>
      </tr>
    </table>
    
</div>


<?php include_once('blocks/qc2ben.php');?>
<script type="text/javascript" src="library/jquery.corner.js"></script>
<script type="text/javascript" src="website.js"></script>
<?php mysql_close();?>
</body>
</html>