<div class='boxleft'>
<div class='titleleft'></div><div class='titlecenter'><a href='<?php echo $row_xem[url];?>'><?php echo $row_xem[name];?></a></div><div class='titleright'></div><div class='titleicon'><?php if($row_xem[url_hinh] != '') echo "<img src='".url_danhmuc_image."{$row_xem[url_hinh]}' alt='{$row_xem[name]}' />";?></div><div style='clear:both; height:1px'></div>
<?php
$view_ct = '<div id="chuongtrinh">';
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
$view_ct .= '</div>';
echo $view_ct;
mysql_free_result($chuongtrinh);
?>
<div style='clear:both'></div>
</div>