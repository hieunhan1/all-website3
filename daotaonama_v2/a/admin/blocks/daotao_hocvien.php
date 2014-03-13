<?php
/*search*/
if(isset($_GET['btnSearch'])){
	if($_GET['txt']!='' && $_GET['txt']!='Họ tên') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
	if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND ds_lophoc LIKE '%,{$_GET['dm']},%' ";
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
				function add_person($name, $ngaysinh, $gioitinh, $email, $phone, $diachi){
					global $data;
					$data[] = array('name'=>$name,'ngaysinh'=>$ngaysinh,'gioitinh'=>$gioitinh,'email'=>$email,'phone'=>$phone,'diachi'=>$diachi);
				}
				
				$dom = DOMDocument::load($_FILES['file_ecxel']['tmp_name'] );
				$rows = $dom->getElementsByTagName('Row');
				$first_row = true;
				foreach ($rows as $row){
					if( !$first_row){
						$name 		= "";
						$ngaysinh 	= "";
						$gioitinh 	= "";
						$email 		= "";
						$phone 		= "";
						$diachi 	= "";
						$index = 1;
						$cells = $row->getElementsByTagName( 'Cell' );
						foreach( $cells as $cell ){
							$ind = $cell->getAttribute( 'Index' );
							if ( $ind != null ) $index	= $ind;
							if ( $index == 1 ) $name	= $cell->nodeValue;
							if ( $index == 2 ) $ngaysinh= $cell->nodeValue;
							if ( $index == 3 ) $gioitinh= $cell->nodeValue;
							if ( $index == 4 ) $email	= $cell->nodeValue;
							if ( $index == 5 ) $phone	= $cell->nodeValue;
							if ( $index == 6 ) $diachi	= $cell->nodeValue;
							$index += 1;
						}
						add_person($name, $ngaysinh, $gioitinh, $email, $phone, $diachi);
					}
					$first_row = false;
				}
				
				$date = date('Y-m-d H:i:s');
				foreach($data as $row){
					$sql = "INSERT INTO daotao_hocvien (name, ngaysinh, gioitinh, email, phone, diachi, date_create, date_update, user_create) VALUES ('{$row['name']}','{$row['ngaysinh']}','{$row['gioitinh']}','{$row['email']}','{$row['phone']}','{$row['diachi']}','{$date}','{$date}','{$user}')";
					
					if($row['name'] != '') mysql_query($sql);
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
        <input type="text" name="txt" value="<?php if(!isset($_GET['txt'])) echo 'Họ tên'; else echo $_GET['txt']; ?>" class="txt" onclick="if(value=='Họ tên') value=''" />
        <?php
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
            <th width="60">Mã HV</th>
            <th align="left">Họ tên</th>
            <th width="120">Tài khoản</th>
            <th width="110">Điện thoại</th>
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
		$str = "SELECT id,name,phone,username,status,date_create,date_update,user_create,user_update FROM {$table} WHERE {$where} ORDER BY `date_create` DESC {$limit}";
		$qr = mysql_query($str);
		$i = $from;
		while($row = mysql_fetch_array($qr)){
			$i++;
			echo '<tr class="row row_'.$row['id'].'">
				<td align="center">'.$i.'</td>
				<td align="center">'.$row['id'].'</td>
				<td>'.$row['name'].'</td>
				<td align="center">'.$row['username'].'&nbsp;</td>
				<td align="center">'.$row['phone'].'&nbsp;</td>
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