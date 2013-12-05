<div style="width:710px; height:150px; background:url(upload/bg-chuong-trinh-dac-biet.gif)">
	<div style="width:220px; float:left; line-height:30px; text-align:center; margin-top:28px; font-size:22px; font-weight:bold; color:#FF0"><em style="font-size:20px">Chương trình<br />đào tạo<br /></em>ĐẶC BIỆT</div>
    <div style="width:210px; float:left; line-height:22px; text-align:center; margin:52px 0 0 30px; font-size:16px; font-weight:bold; color:#F00"><a style="display:block" title="Đào tạo đầu bếp chuyên nghiệp Quốc tế" href="xem-tin/Dau-Bep-Chuyen-Nghiep-Quoc-Te-210.html">Đào tạo đầu bếp<br />chuyên nghiệp Quốc tế</a></div>
    <div style="width:210px; float:left; line-height:22px; text-align:center; margin:52px 0 0 20px; font-size:16px; font-weight:bold; color:#F00"><a style="display:block" title="Kỹ năng bếp gia đình" href="xem-tin/Chuyen-Vien-Pha-Che-Chuyen-Nghiep-Barista-146.html">Pha chế chuyên nghiệp<br /><span style="font-size:14px">BARISTA</span></a></div>
</div>
<?php
$view_ct = "<div class='boxleft'><div class='titleleft'></div><div class='titlecenter'><a href='danh-muc/Chuong-Trinh-Dao-Tao-3-1.html'>Chương trình đào tạo</a></div><div class='titleright'></div><div class='titleicon'><img src='".url_danhmuc_image."icon-cooking-class.png' alt='Chương trình đào tạo' /></div><div id='chuongtrinh'>";
$chuongtrinh = $tc->chuongtrinhdaotao(3);
while($row=mysql_fetch_assoc($chuongtrinh))
{
	$list[]=$row;
}
foreach($list as $list_cm)
{
	$view_ct .= "<div class='item_ti'><h4>{$list_cm['name']}</h4><h6>{$list_cm[name]}</h6></div>";
	
	$ct_info = $tc->BaiVietTrangChu($row_ct['id'],NULL);
	$cmchuongtrinh = $tc->cmchuongtrinhdaotao($list_cm['id']);
	while($row_ctcm = mysql_fetch_assoc($cmchuongtrinh))
	{
		
		$ct_info = $tc->BaiVietTrangChu($row_ctcm['id'],NULL);
		if($list_cm['id']=="22")
		{
			if(mysql_num_rows($ct_info)!=0)
			{
				//$view_ct .= "<div style='width:40%; height:1px; background:red; clear:both'></div>";
				$view_ct .= "<div style='width:100%; height:20px; clear:both'><span style=' border-bottom: 1px solid #FF0000; font-style:italic; font-weight:bold; text-transform:uppercase;padding-left:5px; color:red'>".$row_ctcm['name']."</span></div>";
				while($row_ct_info = mysql_fetch_assoc($ct_info)) 
				{
					$view_ct .= "
					<div class='item'>
						<a href='{$linkpost}{$row_ct_info[name_rewrite]}-{$row_ct_info[id]}.html'><h2>{$row_ct_info[name]}</h2>
						<img src='".url_articles_thumb_image."{$row_ct_info[url_hinh]}' alt='{$row_ct_info[name]}' /></a>
						<div>{$row_ct_info[description]}</div>
					</div>
					";
				}
			}
		}
		else
		{
			while($row_ct_info = mysql_fetch_assoc($ct_info)) 
			{
				$view_ct .= "
				<div class='item'>
					<a href='{$linkpost}{$row_ct_info[name_rewrite]}-{$row_ct_info[id]}.html'><h2>{$row_ct_info[name]}</h2>
					<img src='".url_articles_thumb_image."{$row_ct_info[url_hinh]}' alt='{$row_ct_info[name]}' /></a>
					<div>{$row_ct_info[description]}</div>
				</div>
				";
			}
		}
	}
	$view_ct .= '<div style="clear:both; height:1px"></div><hr />';
	mysql_free_result($ct_info);
}
$view_ct .= "</div></div>";
echo $view_ct;
mysql_free_result($chuongtrinh);

/*$dmtrangchu = $tc->DanhMucTrangChu();
while($row_dmtrangchu = mysql_fetch_array($dmtrangchu)) {
	if($row_dmtrangchu[url_hinh] != '') $url_hinh = "<img src='".url_danhmuc_image."{$row_dmtrangchu[url_hinh]}' alt='{$row_dmtrangchu[name]}' />";
	else $url_hinh = '';
	echo "<div class='boxleft'><div class='titleleft'></div><div class='titlecenter'><a href='{$row_dmtrangchu[url]}'>{$row_dmtrangchu[name]}</a></div><div class='titleright'></div><div class='titleicon'>{$url_hinh}</div><div style='clear:both'></div>";
	$idMenuTC = $row_dmtrangchu['id'];
	$baiviettrangchu = $tc->BaiVietTrangChu($idMenuTC,4);
	while($row_baiviettrangchu = mysql_fetch_array($baiviettrangchu)) {
		echo "
		<div class='item'>
            <a href='{$linkpost}{$row_baiviettrangchu[name_rewrite]}-{$row_baiviettrangchu[id]}.html'><h2>{$row_baiviettrangchu[name]}</h2>
            <img src='".url_articles_thumb_image."/{$row_baiviettrangchu[url_hinh]}' alt='{$row_baiviettrangchu[name]}' /></a>
            <div>{$row_baiviettrangchu[description]}</div>
        </div>
		";
	}
	mysql_free_result($baiviettrangchu);
	echo "<div style='clear:both; height:25px;'></div></div>";
}
mysql_free_result($dmtrangchu);*/

$view_thuvien = '<div class="boxleft">
<div class="titleleft"></div>
<div class="titlecenter"><a href="Thu-Vien/">Thư viện</a></div>
<div class="titleright"></div>
<div style="clear:both; height:1px"></div>
<div id="chuongtrinh">';

	$thuvien2 = $tc->thuvien_sub(5);
	while($row_thuvien2 = mysql_fetch_array($thuvien2)){
		if($row_thuvien2['type_id']==5) $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
		elseif($row_thuvien2['type_id']==6) $view_thuvien .= '<div class="item_video"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3>'.$row_thuvien2['name'].'</h3></a></div>';
		else $view_thuvien .= '<div class="item_img"><a href="'.$row_thuvien2['url'].'"><img src="'.url_danhmuc_image.$row_thuvien2['url_hinh'].'" alt="'.$row_thuvien2['name'].'"><h3 class="transparent_class">'.$row_thuvien2['name'].'</h3></a></div>';
	}
	$view_thuvien .= '<div style="clear:both; height:10px"></div>';

echo $view_thuvien.'</div></div>';
?>