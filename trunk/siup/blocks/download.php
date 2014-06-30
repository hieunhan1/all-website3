<div id="left">
	<div style="clear:both; height:30px"></div>
	<?php
	$qr = $tc->menu($menu_root,3);
	
	if(mysql_num_rows($qr) > 0){
		//$str_left .= "<h3>{$row['title']}</h3>";
		while($row = mysql_fetch_array($qr)){
			if($row_menu_one['url']!=$row['url']) $str_left .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
			else $str_left .= '<li><a href="'.$row['url'].'" style="color:#D61D22">'.$row['name'].'</a></li>';
		}
	}else{
		$qr = $tc->home_left($lang,3);
		$row = mysql_fetch_array($qr);
		//$str_left .= "<h3>{$row['title']}</h3>";
		
		$qr = $tc->menu($row['id'],3,$lang);
		while($row = mysql_fetch_array($qr)){
			$str_left .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		}
	}
	
	echo $str_left;
	?>
</div>

<div id="right">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="10">
    	<tr>
        	<th width="50">STT</th>
            <th align="left">Tên</th>
            <th>&nbsp;</th>
        </tr>
        <?php
		$i = 0;
		$qr = mysql_query("SELECT name,url FROM web_download WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC");
		while($row = mysql_fetch_array($qr)){
			$i++;
			echo '<tr>
				<td align="center">'.$i.'</td>
				<td>'.$row['name'].' - <em><a href="'.url_download.$row['url'].'">Tải về</a></em></td>
			</tr>';
		}
		?>
        
    </table>
    
    
</div>