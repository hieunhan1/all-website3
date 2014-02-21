<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="90">Thứ tự</th>
            <th width="90" class="create">Ngày tạo</th>
            <th width="90" class="create">Người tạo</th>
            <th width="90" class="update">Date update</th>
            <th width="90" class="update">User update</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
        $from = (($page - 1) * $max_results);
		$str = "SELECT id,name,order,status,date_create,date_update,user_create,user_update FROM {$url} WHERE `delete`=0 ORDER BY date_create DESC LIMIT {$from},{$max_results}";
		$qr = mysql_query($str);
		$i = $from;
		while($row = mysql_fetch_array($qr)){
			$i++;
			echo '<tr class="row row_'.$row['id'].'">
				<td align="center">'.$i.'</td>
				<td>'.$row['name'].'</td>
				<td align="center">'.$row['order'].'</td>
				<td align="center" class="create">'.$row['date_create'].'</td>
				<td align="center" class="create">'.$row['user_create'].'</td>
				<td align="center" class="update">'.$row['date_update'].'</td>
				<td align="center" class="update">'.$row['user_update'].'</td>
				<td align="center">
					<a href="javascript:;" class="status status_'.$row['id'].'" name="'.$row['status'].' -|- '.$url.' -|- '.$row['name'].'"><img src="images/anhien_'.$row['status'].'.gif"></a> &nbsp;
					<a href="administrator.php?p='.$url.'_ac&id='.$row['id'].'"><img src="images/edit.gif" alt=""></a> &nbsp;
					<a href="javascript:;" class="delete_one delete_one_'.$row['id'].'" name="'.$url.' -|- '.$row['name'].'"><img src="images/delete.gif" alt=""></a>
				</td>
			</tr>';
		}
		?>
    </table>
    <?php
    //$phantrang = $tc->phantrang($url_page,$page,$max_results,'id',$table,$where);
	//$str_info = '<div id="phantrang">'.$phantrang.'</div>';
	//echo $str.'111';
	?>
    
    
</div>