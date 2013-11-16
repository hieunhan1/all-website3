<?php
ob_start('ob_gzhandler');
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
	
	$menu_root = $tc->menu_root($row_menu_one['parent_id'],$idMenu);
	
	if(!@$_GET['detail']){
		($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
		$url = 'http://'.$domain.'/'.$row_menu_one['url'];
		$seo = $tc->seo($domain,$row_menu_one['title'].$page_name,$row_menu_one['metaDescription'].$page_name,$row_menu_one['metaKeyword'],$image,$url);
		
		$include = ob_start();
		switch($type){
			case 2 : include_once('blocks/articles_list.php'); break;
			case 7 : include_once('blocks/contact.php'); break;
			default: $view_post = '<p><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
	}else{
		$dt = $_GET['detail'];
		$include = ob_start();
		switch($type){
			case 2 : $detail = $tc->detail_info($dt); $row_detail = mysql_fetch_array($detail); include_once('blocks/articles.php'); break;
			default: echo '<p><font color="#FF0000"><b>Could not be found</b></font></p>';
		}
		$include = ob_get_clean();
		
		($row_detail['url_hinh']!='') ? $image='http://'.$domain.'/'.url_articles_thumb.$row_detail['url_hinh'] : $image='http://'.$domain.'/'.url_default_image;
		$url = 'http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html';
		$seo = $tc->seo($domain,$row_detail['name'],$row_detail['description'],$row_detail['metaKeyword'],$image,$url);
	}
}else{
	$menu_one = $tc->menu_one('trang-chu');
	$row_menu_one = mysql_fetch_array($menu_one);
	$url = 'http://'.$domain;
	($row_menu_one['url_hinh']=='') ? $image='http://'.$domain.'/'.url_default_image : $image='http://'.$domain.'/'.url_danhmuc_image.$row_menu_one['url_hinh'];
	$seo = $tc->seo($domain,$row_menu_one['title'],$row_menu_one['metaDescription'],$row_menu_one['metaKeyword'],$image,$url);
	
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
<script type="text/javascript" src="website.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="header">
    	<div style="float:left"><a href=""><img align="left" src="images/logo.gif" /></a></div>
        <div id="search">
        	<div id="txtF"><input type="text" name="txtSearch" id="txtSearch" size="25" value="Nhập từ khóa.." onClick="if(value=='Nhập từ khóa..') value=''" onBlur="if(value=='') value='Nhập từ khóa..'" /></div>
        	<div id="btn"><input type="image" name="imageField" id="btnSearch" src="images/tk.gif" /></div>
        </div>
    </div>
    <?php
    require_once('blocks/menu.php');
    require_once('blocks/slider.php');
	?>
    <div id="contenner">
    	<div id="left">
			<?php
            $qr = $tc->menu(0,3);
            while($row = mysql_fetch_array($qr)) {
                echo '<div class="danhmuc">'.$row['name'].'</div>';
                $qr2 = $tc->menu($row['id'],3);
                while($row2 = mysql_fetch_array($qr2)){
                    if($row2['url']!=$row_menu_one['url']) echo '<div class="subdanhmuc"><a href="'.$row2['url'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></div>';
                    else echo '<div class="subdanhmuc"><a href="'.$row2['url'].'" title="'.$row2['title'].'" style="color:#F00">'.$row2['name'].'</a></div>';
                }
                echo '<div style="clear:both; height:50px"></div>';
            }
            ?>
        </div>
        <div id="right"><?php echo $include?></div>
    	<div style="clear:both; height:1px"></div>
    </div>
  	<div id="footer">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
            	<td><?php echo $row_config['contact'];?></td>
                <td align="right"><?php echo $row_config['footer'];?></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
<?php mysql_close();?>