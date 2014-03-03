<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="90">Thứ tự</th>
            <th width="110" class="create">Ngày tạo</th>
            <th width="90" class="create">Người tạo</th>
            <th width="110" class="update">Date update</th>
            <th width="90" class="update">User update</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		echo '<select name="aaaa">';
		$arr = $qt->dequy_menu_select(0,'');
		foreach($arr as $gt){
			echo '<option value="'.$gt['id'].'">'.$gt['name'].'</option>';
		}
		echo '</select>';
		
		$stt = 0;
		$qr = $qt->menu_root(0,$lang);
		while($row = mysql_fetch_array($qr)){
			$stt++;
			$str .= $qt->menu_view($table,$row['id'],$stt,$row['name'],$row['order'],$row['date_create'],$row['user_create'],$row['date_update'],$row['user_update'],$row['status']);
			$str .= $qt->get_submenu($row['id'],$lang,$table);
		}
		echo $str;
		?>
    </table>
    
    <div style="clear:both; height:50px"></div>
</div>