<?php
	$kh = $_GET['kh'];
	$lh = $_GET['lh'];
	$gv = $_GET['gv'];

	/*khoa hoc*/
	$str = '';
	$qr = mysql_query("SELECT id,name FROM web_info WHERE `delete`=0 AND menu_id LIKE '%,5,%' ORDER BY `name` ");
	while($row = mysql_fetch_array($qr)){
		if($_GET['kh'] != $row['id']) $str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		else $str .= '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
	}
	$khoahoc = '<option value="0">-- Chọn khóa học --</option>'.$str.'';
	
	/*lop hoc*/
	if(isset($_GET['kh'])){
		$str = '';
		$qr = mysql_query("SELECT id,name,capdo FROM daotao_lophoc WHERE `delete`=0 AND id_khoahoc='{$kh}' ORDER BY `name`");
		while($row = mysql_fetch_array($qr)){
			if($_GET['lh'] != $row['id']) $str .= '<option value="'.$row['id'].'">'.$row['name'].' | Level '.$row['capdo'].'</option>';
			else $str .= '<option value="'.$row['id'].'" selected="selected">'.$row['name'].' | Level '.$row['capdo'].'</option>';
		}
		$lophoc = '<option value="0">-- Chọn lớp học --</option>'.$str.'';
	}else $lophoc = '<option value="0">-- Chọn lớp học --</option>';
	
	/*giang vien*/
	$str = '';
	$qr = mysql_query("SELECT id,name FROM daotao_giangvien WHERE `delete`=0 ORDER BY `name` ");
	while($row = mysql_fetch_array($qr)){
		if($gv != $row['id']) $str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		else $str .= '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
	}
	$giangvien = '<option value="0">-- Chọn giảng viên --</option>'.$str.'';
	
	/*search*/
	if(isset($_GET['btnSearch']) && $kh!=0){
		if($gv!=0) $qr_gv = " AND id_giangvien='{$gv}' ";
		if($lh!=0) $qr_lh = " AND daotao_lophoc.id='{$lh}' ";
		
		$qr_lh = "SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien 
		FROM daotao_lophoc,daotao_giangvien 
		WHERE daotao_lophoc.`delete`=0 AND id_khoahoc='{$kh}' AND id_giangvien=daotao_giangvien.id {$qr_lh} {$qr_gv}
		ORDER BY daotao_lophoc.`name` ";
		
		$i = 0;
		$qr_lh = mysql_query($qr_lh);
		while($row_lh = mysql_fetch_array($qr_lh)){
			$qr = mysql_query("SELECT id,name,ngaysinh,gioitinh,phone,email FROM daotao_hocvien WHERE `delete`=0 AND ds_lophoc LIKE '%,{$row_lh['id']},%' ORDER BY `name` ");
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($row['gioitinh']==1) $gioitinh = 'Nam'; else $gioitinh = 'Nữ';
				$str_search .= '<tr class="row row1">
					<td align="center">'.$i.'</td>
					<td>'.$row['name'].'</td>
					<td align="center">'.date('d/m/Y',strtotime($row['ngaysinh'])).'</td>
					<td align="center">'.$gioitinh.'</td>
					<td align="center">'.$row['phone'].'</td>
					<td>'.$row['email'].'</td>
					<td>'.$row_lh['name'].'</td>
					<td align="center">'.$row_lh['capdo'].'</td>
					<td>'.$row_lh['giangvien'].'</td>
				</tr>';
			}
		}
	}elseif($gv!=0){
		$qr_lh = "SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien 
		FROM daotao_lophoc,daotao_giangvien 
		WHERE daotao_lophoc.`delete`=0 AND id_giangvien=daotao_giangvien.id AND id_giangvien='{$gv}'
		ORDER BY daotao_lophoc.`name` ";
		
		$i = 0;
		$qr_lh = mysql_query($qr_lh);
		while($row_lh = mysql_fetch_array($qr_lh)){
			$qr = mysql_query("SELECT id,name,ngaysinh,gioitinh,phone,email FROM daotao_hocvien WHERE `delete`=0 AND ds_lophoc LIKE '%,{$row_lh['id']},%' ORDER BY `name` ");
			while($row = mysql_fetch_array($qr)){
				$i++;
				if($row['gioitinh']==1) $gioitinh = 'Nam'; else $gioitinh = 'Nữ';
				$str_search .= '<tr class="row row1">
					<td align="center">'.$i.'</td>
					<td>'.$row['name'].'</td>
					<td align="center">'.date('d/m/Y',strtotime($row['ngaysinh'])).'</td>
					<td align="center">'.$gioitinh.'</td>
					<td align="center">'.$row['phone'].'</td>
					<td>'.$row['email'].'</td>
					<td>'.$row_lh['name'].'</td>
					<td align="center">'.$row_lh['capdo'].'</td>
					<td>'.$row_lh['giangvien'].'</td>
				</tr>';
			}
		}
	}
?>
<form action="" method="get" name="search">
<div id="search">
	<input type="hidden" name="p" value="<?php echo $table; ?>" />
    <select name="kh" class="select"><?php echo $khoahoc; ?></select>
    <select name="lh" class="select"><?php echo $lophoc; ?></select>
    <select name="gv" class="select"><?php echo $giangvien; ?></select>
    <input type="submit" name="btnSearch" value="Filter" class="btn" />
    <input type="button" name="btnXuatBangDiemExcel" value="Xuất Excel" class="btn" onclick="window.location = 'export_excel/export_excel.php?type=thongtin&<?php echo $_SERVER['QUERY_STRING']; ?>' " />
</div>
</form>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="80">Ngày sinh</th>
            <th width="80">Giới tính</th>
            <th width="100">Điện thoại</th>
            <th width="200" align="left">Email</th>
            <th width="250" align="left">Khóa học</th>
            <th width="60" align="center">Level</th>
            <th width="200" align="left">Giảng viên</th>
        </tr>
        
		<?php echo $str_search; ?>
    </table>
    <div style="clear:both; height:50px"></div>
</div>
<script>
	$(document).ready(function() {
        $("#wrapper").width(1530); //1130px
        $("#right").width(1300); //900px
    });
</script>