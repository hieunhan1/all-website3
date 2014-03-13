<?php
/*search*/
if(isset($_GET['btnSearch'])){
	if($_GET['txt']!='' && $_GET['txt']!='Mô tả') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
	if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND id_lophoc='{$_GET['dm']}' ";
}else{
	$str_search = '';
}
	
if(isset($_POST['btnImport'])){
	$valid_formats = array("xml");
	$name = $_FILES["file_ecxel"]["name"];
	$size = $_FILES['file_ecxel']['size'];

	if(strlen($name)){
		list($txt, $ext) = explode(".", $name);
		if(in_array(strtolower($ext),$valid_formats)){
			if($size<(1024*1024*0.5)){
				$data = array();
				function add_person($ma_hv, $hoten, $ma_lop, $tenlop, $diem1, $diem2, $diem3, $diem4, $diem5, $diem6, $diem7, $diem8){
					global $data;
					$data[] = array('ma_hv'=>$ma_hv,'hoten'=>$hoten,'ma_lop'=>$ma_lop,'tenlop'=>$tenlop,'diem1'=>$diem1,'diem2'=>$diem2,'diem3'=>$diem3,'diem4'=>$diem4,'diem5'=>$diem5,'diem6'=>$diem6,'diem7'=>$diem7,'diem8'=>$diem8);
				}
				
				$dom = DOMDocument::load($_FILES['file_ecxel']['tmp_name'] );
				$rows = $dom->getElementsByTagName('Row');
				$first_row = true;
				foreach ($rows as $row){
					if( !$first_row){
						$ma_hv 	= "";
						$hoten 	= "";
						$ma_lop 	= "";
						$tenlop = "";
						$diem1 	= "";
						$diem2 	= "";
						$diem3 	= "";
						$diem4 	= "";
						$diem5 	= "";
						$diem6 	= "";
						$diem7 	= "";
						$diem8 	= "";
						$index = 1;
						$cells = $row->getElementsByTagName( 'Cell' );
						foreach( $cells as $cell ){
							$ind = $cell->getAttribute( 'Index' );
							if ( $ind != null ) $index	= $ind;
							if ( $index == 1 ) $ma_hv	= $cell->nodeValue;
							if ( $index == 2 ) $hoten	= $cell->nodeValue;
							if ( $index == 3 ) $ma_lop	= $cell->nodeValue;
							if ( $index == 4 ) $tenlop	= $cell->nodeValue;
							if ( $index == 5 ) $diem1	= $cell->nodeValue;
							if ( $index == 6 ) $diem2	= $cell->nodeValue;
							if ( $index == 7 ) $diem3	= $cell->nodeValue;
							if ( $index == 8 ) $diem4	= $cell->nodeValue;
							if ( $index == 9 ) $diem5	= $cell->nodeValue;
							if ( $index == 10) $diem6	= $cell->nodeValue;
							if ( $index == 11) $diem7	= $cell->nodeValue;
							if ( $index == 12) $diem8	= $cell->nodeValue;
							$index += 1;
						}
						add_person($ma_hv, $hoten, $ma_lop, $tenlop, $diem1, $diem2, $diem3, $diem4, $diem5, $diem6, $diem7, $diem8);
					}
					$first_row = false;
				}
				
				$date = date('Y-m-d H:i:s');
				foreach($data as $row){
					$sql = "INSERT INTO daotao_bangdiem (name, id_lophoc, id_hocvien, diem1, diem2, diem3, diem4, diem5, diem6, diem7, diem8, date_create, date_update, user_create) VALUES ('{$row['tenlop']} | {$row['hoten']}','{$row['ma_lop']}','{$row['ma_hv']}','{$row['diem1']}','{$row['diem2']}','{$row['diem3']}','{$row['diem4']}','{$row['diem5']}','{$row['diem6']}','{$row['diem7']}','{$row['diem8']}','{$date}','{$date}','{$user}')";
					
					if($row['ma_lop']!='' && $row['ma_hv']!='') mysql_query($sql);
				}
				
				$strHtml = '<p class="message" style="font-size:120%">Import thành công</p>';
				unlink($_FILES['file_ecxel']['tmp_name']); // xoa file
				
			}else $strHtml = '<p class="error">File size max 512KB</p>';					
		}else $strHtml = '<p class="error">Invalid file format..</p>';	
	}else $strHtml = '<p class="error">Please select file..!</p>';
}
?>
<div id="search">
    <div style="width:auto; float:left"><form action="" method="get" name="search">
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
	</form></div>
    
    <div style="width:auto; float:right">
        <form action="" method="post" name="import" enctype="multipart/form-data">
            <input type="submit" name="btnImport" value="Import" class="btn" style="float:right; margin-left:5px" />
            <input type="file" name="file_ecxel" class="txt" style="width:200px; float:right; padding:1px; background-color:#FFF" />
        </form>
    </div>
	<div style="clear:both; height:1px"></div>
</div>

<?php echo $strHtml; ?>

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