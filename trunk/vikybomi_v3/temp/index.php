<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
#photos * {margin: 0px; padding: 0px}
#photos ul {width:100%; margin-left:20px}
#photos ul li {display: inline; width:196px; height:156px; float:left; margin:10px}
#photos .wide {border-bottom: 1px #000 solid; width:4000px;}
#photos .img {width:180px; height:140px; float:left; border:1px solid #999999; padding: 8px}
</style>

<link rel="stylesheet" type="text/css" href="slider_pic/prettyPhoto.css"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="slider_pic/jquery.prettyPhoto.js"></script>

</head>
<body>



<div id="photos">
    <ul class="gallery clearfix">
    	<?php
		$album_number	= array(12,15,4);
		$album_name		= array('Đà Nẵng','Phú Yên','Chị Liễu');
		$album_link		= array('danang/','phuyen/','chilieu/');
		$j = count($album_number);
		for($i = 0; $i < $j; $i++){
			echo '<h2 style="color:blue; clear:both; padding:20px 0">'.$album_name[$i].'</h2>';
			for($k = 1; $k <= $album_number[$i]; $k++){
				$thumb = 'thumbs_/'.$album_link[$i].$k.'.JPG';
				$picture = 'images/'.$album_link[$i].$k.'.JPG';
				echo '<li><a href="'.$picture.'" rel="prettyPhoto[gallery1]"><img class="img" src="'.$thumb.'" alt="" /></a></li>';
			}
		}
		?>
    </ul>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".gallery a[rel^='prettyPhoto']").prettyPhoto({
			theme:'facebook'
		});
	});
</script>

<div style="clear:both; padding:20px 0; line-height:25px">
	<h2>Download file gốc tại đây. &lt;4MB</h2>
    <a href="http://www.vikybomi.com.vn/nhamay.zip">Đà Nẵng</a><br />
    <a href="http://www.vikybomi.com.vn/ThapNhan.zip">Phú Yên</a><br />
    <a href="http://www.vikybomi.com.vn/chilieu.zip">Chị Liễu</a><br />
</div>

</body>
</html>