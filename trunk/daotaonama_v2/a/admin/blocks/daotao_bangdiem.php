<?php
	/*search*/
	if(isset($_GET['btnSearch'])){
		if($_GET['txt']!='' && $_GET['txt']!='Mô tả') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
		if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND id_lophoc='{$_GET['dm']}' ";
	}else{
		$str_search = '';
	}
?>
<form action="" method="get" name="search">
<div id="search">
	<input type="hidden" name="p" value="<?php echo $table; ?>" />
    <input type="text" name="txt" value="<?php if(!isset($_GET['txt'])) echo 'Mô tả'; else echo $_GET['txt']; ?>" class="txt" onclick="if(value=='Mô tả') value=''" />
	<?php
    $qr = mysql_query("SELECT `id`,`name` FROM `web_menu` WHERE `delete`=0 AND (type_id=1 OR type_id=2) ");
    while($row = mysql_fetch_array($qr)){
        //echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
    }
    
    //parent_id
    $arr = array();
	$arr[] = array('id'=>0, 'name'=>'--- Chọn lớp học ---');
	$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 ORDER BY `id_khoahoc`,`name`");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}
    $properties = $_GET['dm']; //default check
    $views = array('','dm','select'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
    echo $form->DisplayProperties();
    ?>
    <input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
</div>
</form>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="110" class="create">Ngày tạo</th>
            <th width="90" class="create">Người tạo</th>
            <th width="110" class="update">Date update</th>
            <th width="90" class="update">User update</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
        $from = (($page_number - 1) * $max_results);
		$where = "`delete`=0 AND lang='{$lang}' ".$str_search;
		$limit = "LIMIT {$from},{$max_results}";
		$str = "SELECT id,name,status,date_create,date_update,user_create,user_update FROM {$table} WHERE {$where} ORDER BY `date_create` DESC {$limit}";
		$qr = mysql_query($str);
		$i = $from;
		while($row = mysql_fetch_array($qr)){
			$i++;
			echo '<tr class="row row_'.$row['id'].'">
				<td align="center">'.$i.'</td>
				<td>'.$row['name'].'</td>
				<td align="center" class="create">'.date('d/m/Y H:i',strtotime($row['date_create'])).'</td>
				<td align="center" class="create">'.$row['user_create'].'</td>
				<td align="center" class="update">'.date('d/m/Y H:i',strtotime($row['date_update'])).'</td>
				<td align="center" class="update">'.$row['user_update'].'</td>
				<td align="center">
					<a href="javascript:;"><img src="images/anhien_'.$row['status'].'.gif" class="status status_'.$row['id'].'" status="'.$row['status'].'" url="'.$table.'" name="'.$row['name'].'"></a> &nbsp;
					<a href="?p='.$table.'_ac&id='.$row['id'].'"><img src="images/edit.gif" alt=""></a> &nbsp;
					<a href="javascript:;" class="delete_one delete_one_'.$row['id'].'" url="'.$table.'" name="'.$row['name'].'"><img src="images/delete.gif" alt=""></a>
				</td>
			</tr>';
		}
		?>
    </table>
    <?php
    $phantrang = $qt->phantrang($table,$page_number,$max_results,'id',$where,$limit);
	echo '<div id="phantrang">'.$phantrang.'</div>';
	?>
    
    <div style="clear:both; height:50px"></div>
</div>