<?php
/*search*/
if(isset($_GET['btnSearch'])){
	if($_GET['txt']!='' && $_GET['txt']!='Họ tên') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
	if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND ds_lophoc LIKE '%,{$_GET['dm']},%' ";
}else{
	$str_search = '';
}

if(isset($_POST['btnImport'])){
	$path = '../../public/temp/';
	$valid_formats = array("xls");
	$name = $_FILES["file_ecxel"]["name"];
	$size = $_FILES['file_ecxel']['size'];

	if(strlen($name)){
		list($txt, $ext) = explode(".", $name);
		if(in_array(strtolower($ext),$valid_formats)){
			if($size<(1024*1024*0.5)){
				$actual_image_name = date('his').'.'.$ext;
				$filename = $path.$actual_image_name;
				$tmp = $_FILES['file_ecxel']['tmp_name'];
				if(move_uploaded_file($tmp, $filename)){
					include_once('Excel2MySql/excel_reader.php'); // Thư viện xử lý
					$data = new Spreadsheet_Excel_Reader($filename,true,"UTF-8");
					
					$rowsnum = $data->rowcount($sheet_index=0); //Số hàng của sheet
					$colsnum = $data->colcount($sheet_index=0);//Số cột của sheet
					
					$strHtml  = "<p style='line-height:20px; padding:10px 0'>Số dòng: ".$rowsnum."<br />Số cột: &nbsp; &nbsp;"  .$colsnum."<br /><b>Đọc dữ liệu từ Excel</b><br /></p>";
					$strHtml .= "<table width='100%' border=1 cellspacing=1 cellpadding=3  style='border-collapse:collapse'>";
					$strHtml .= "<tr bgcolor='#CCC'> <td>STT</td>";
					$strHtml .= "<td>".$data->val(1,1)."</td>";
					$strHtml .= "<td align='center'>".$data->val(1,2)."</td>";
					$strHtml .= "<td align='center'>".$data->val(1,3)."</td>";
					$strHtml .= "<td>".$data->val(1,4)."</td>";
					$strHtml .= "<td>".$data->val(1,5)."</td>";
					$strHtml .= "<td>".$data->val(1,6)."</td>";
					$strHtml .= "<td>Ghi vào DB</td></tr>";
					
					$date = date('Y-m-d H:i:s');
					for ($i=2;$i<=$rowsnum;$i++){
						$j=$i-1;
						$strHtml .= "<tr>";
						$strHtml .= "<td align='center'>" .$j ."</td>";
						$strHtml .= "<td>".$data->val($i,1)."</td>";
						$strHtml .= "<td align='center'>".$data->val($i,2)."</td>";
						$strHtml .= "<td align='center'>".$data->val($i,3)."</td>";
						$strHtml .= "<td>".$data->val($i,4)."</td>";
						$strHtml .= "<td>".$data->val($i,5)."</td>";
						$strHtml .= "<td>".$data->val($i,6)."</td>";
						
						$sql = "INSERT INTO daotao_hocvien (name, ngaysinh, gioitinh, email, phone, diachi, date_create, date_update, user_create) values(";
						
						$hoten = $data->val($i,1);
						$sql .= "'".$hoten."'";
						$sql .= ",'".date('Y-m-d',strtotime($data->val($i,2)))."'";
						$sql .= ",'".$data->val($i,3)."'";
						$sql .= ",'".$data->val($i,4)."'";
						$sql .= ",'".$data->val($i,5)."'";
						$sql .= ",'".$data->val($i,6)."'";
						$sql .= ",'".$date."'";
						$sql .= ",'".$date."'";
						$sql .= ",'".$user."');";
						
						if($hoten != ''){
							$result = mysql_query($sql);
							$strHtml .= "<td align='center'>OK</td>";
						}else $strHtml .= " <td align='center'>ERROR</td></tr>";
					}
					$strHtml .= "</table><br />";
					unlink($filename); // xoa file
				}else $strHtml = '<p class="error">failed</p>';
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