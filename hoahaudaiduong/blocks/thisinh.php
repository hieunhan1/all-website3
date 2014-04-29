<?php
$i = 0;
$qr = mysql_query("SELECT name,url_hinh_bst FROM thisinh_images WHERE `delete`=0 AND status=1 AND id_thisinh='".$row_detail['id']."' ORDER BY date_update DESC");
while($row = mysql_fetch_array($qr)){
	$i++;
	if($i%3 == 1) $style = ''; else $style = 'style="margin-left:8px"';
	$str_image .= '<div class="box_photos_bst" '.$style.'><a class="fancybox" href="'.url_thisinh_image.$row['url_hinh_bst'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.url_thisinh_image_thumb.$row['url_hinh_bst'].'" alt="'.$row['name'].'" /></a><div class="box_photos_title">'.$row['name'].'</div></div>';
}
$str_image = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />

<div id="photos">'.$str_image.'</div>
<div style="clear:both; height:30px;"></div>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$(".fancybox").fancybox();
	});
</script>';

$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';

$qr = $tc->menu_one_id($menu_root);
$row = mysql_fetch_array($qr);
$view_right = '<div id="right" style="float:left"><div class="right_title">'.$row['name'].'</div>';
$qr = $tc->menu($menu_root,1);
$total_right = mysql_num_rows($qr);
while($row = mysql_fetch_array($qr)){
	if(trim($row['url'],'/') != $danhmuc) $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	else $view_right .= '<li class="left_item_1"><a href="'.$row['url'].'" style="color:#3EB1FF">'.$row['name'].'</a></li>';
}

$img_thisinh = '<div id="img_thisinh"><img src="'.url_thisinh_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" /></div>';
$view_right .= $img_thisinh.'</div>';

$array_trinhdo = array('','Chưa tốt nghiệp phổ thông','Tốt nghiệp phổ thông','Trung cấp','Cao đẳng','Đại học','Sau đại học');
for($i=0; $i<=6; $i++){
	if($i==$row_detail['trinhdo']){
		$trinhdo = $array_trinhdo[$i];
		break;
	}
}
$ngaysinh = date('Y') - date('Y',strtotime($row_detail['ngaysinh']));
$info = '<table width="100%" border="0" cellpadding="0" cellspacing="0" id="info_thisinh">
	<tr>
		<td>Chiều cao: '.$row_detail['chieucao'].'</td>
		<td>Cân nặng: '.$row_detail['cannang'].'</td>
		<td>Số đo: '.$row_detail['sodo'].'</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td><p>Trình độ: '.$trinhdo.'</p>
			<p>Sở thích: '.$row_detail['sothich'].'</p></td>
		<td style="font-weight:bold" width="140" align="right"><p>Số báo danh: <font color="#FFFF80">'.$row_detail['sbd'].'</font></p>
			<p>Bình chọn: <font color="#FFFF80">Chưa</font></p></td>
	</tr>
</table>

<p style="text-align:center; font-size:130%; font-weight:bold; color:#FFF; margin-top:20px">Hình ảnh về thí sinh '.$row_detail['name'].'</p>';

echo $navigator.'<div id="left" style="float:right"><div class="viewpost"><h1>'.$row_detail['name'].' - '.$ngaysinh.' tuổi</h1>'.$info.'</div>'.$str_image.'</div>'.$view_right.'
<div style="clear:both; height:40px"></div>';