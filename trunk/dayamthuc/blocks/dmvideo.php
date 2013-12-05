<div class='boxleft'>
    <div class='titleleft'></div>
    <div class='titlecenter'><a href='<?php echo $row_xem[url];?>'><?php echo $row_xem[name];?></a></div>
    <div class='titleright'></div>
    <div class='titleicon'></div>
    <div style='clear:both; height:1px'></div>
<?php
$view_video = '<div id="chuongtrinh">';
if(!@$_GET['detail']){
	$view_video .= '<h1>'.$row_xem['title'].'</h1><h2 style="color:#666; font-size:13px; font-weight:100; margin:0 20px; padding-bottom:30px">'.$row_xem['metaDescription'].'</h2>';
    $danhmuc = $tc->Video($idMenu);
	while($row_danhmuc = mysql_fetch_array($danhmuc)){
		$view_video .= "
		<div class='item'>
			<a href='{$row_xem['url']}{$row_danhmuc[name_rewrite]}.html'><h3>{$row_danhmuc[name]}</h3>
			<img src='".url_video_thumb_image."{$row_danhmuc[url_hinh]}' alt='{$row_danhmuc[name]}' /></a>
			<div>{$row_danhmuc[description]}</div>
		</div>";
	}
}else{
	$alias = $_GET['detail'];
	$video = $tc->detail($type_menu,$alias);
	$row_video = mysql_fetch_array($video);
	$view_video .= '<h1>'.$row_video['name'].'</h1><br />
	<div id="frmvideo"><iframe id="video" src="'.$row_video['link_video'].'?autoplay=1&origin=http://'.$domain.'&rel=0" frameborder="0"></iframe></div><br />
	<div id="noidung" style="margin:0 10px">'.$row_video['content'].'</div>
	';
}

echo $view_video;
?>
</div><div style="clear:both; height:1px"></div></div>