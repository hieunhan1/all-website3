<div class='boxleft'>
	<div class='titleleft'></div>
	<div class='titlecenter'><a href='<?php echo $row_xem[url];?>'><?php echo $row_xem[name];?></a></div>
    <div class='titleright'></div>
    <div class='titleicon'><?php if($row_xem[url_hinh] != '') echo "<img src='".url_danhmuc_image."{$row_xem[url_hinh]}' alt='{$row_xem[name]}' />";?></div>
    <div style='clear:both; height:1px'></div>
    
    <div style="padding:0px 10px">
    	<?php echo '<h1 style="font-family: MyFont; margin-bottom:10px"><a href="javascript:;">'.$row_xem['title'].'</a></h1>';?>
		<br />
    	<div id="noidung">
<table cellpadding="6" cellspacing="0" style="border-bottom: black 1px solid; border-left: black 1px solid; width: 100%; border-collapse: collapse; border-top: black 1px solid; border-right: black 1px solid">
	<tbody>
		<tr bgcolor="#990000">
			<td style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid"><span style="color: rgb(255,240,0); font-weight: bold"><span style="font-size: 14pt">TÊN KHÓA HỌC</span></span></td>
			<td style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid"><span style="color: rgb(255,240,0); font-weight: bold"><span style="font-size: 14pt">KHAI GIẢNG</span></span></td>
		</tr>
        <?php
        $qr = $tc->menu($idMenu);
		while($row = mysql_fetch_array($qr)){
			echo '<tr bgcolor="#ffff99"><th colspan="2" style="border-bottom: black 1px solid; border-left: black 1px solid; color: #f00; border-top: black 1px solid; border-right: black 1px solid">'.$row['name'].'</th></tr>';
			$qr2 = $tc->menu($row['id']);
			if(mysql_num_rows($qr2) > 1){
				while($row2 = mysql_fetch_array($qr2)){
					echo '<tr><td colspan="2" style="border: 1px solid black; text-align: center; font-size:14px; color:#0000FF; font-weight:bold">'.$row2['name'].'</td></tr>';
					
					$qr_kg = mysql_query("SELECT name,link,khaigiang FROM lichkhaigiang WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,".$row2['id'].",%' ORDER BY `order`");
					$i = 0;
					while($row_kg = mysql_fetch_array($qr_kg)){
						$i++;
						echo '<tr><td style="border-bottom: black 1px solid; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid"><span style="font-weight: bold">'.$i.'. <a href="'.$row_kg['link'].'">'.$row_kg['name'].'</a></span></td>
						<td style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid">'.$row_kg['khaigiang'].'</td></tr>';
					}
				}
			}else{
				$qr_kg = mysql_query("SELECT name,link,khaigiang FROM lichkhaigiang WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,".$row['id'].",%' ORDER BY `order`");
				$i = 0;
				while($row_kg = mysql_fetch_array($qr_kg)){
					$i++;
					echo '<tr><td style="border-bottom: black 1px solid; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid"><span style="font-weight: bold">'.$i.'. <a href="'.$row_kg['link'].'">'.$row_kg['name'].'</a></span></td>
					<td style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; border-top: black 1px solid; border-right: black 1px solid">'.$row_kg['khaigiang'].'</td></tr>';
				}
			}
			
		}
		?>
	</tbody>
</table>
        </div>
    </div>
    
	<div style='clear:both'></div>
</div>