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
		if($lh!=0) $qr_lh = " AND daotao_lophoc.id='{$lh}' ";
		if($gv!=0) $qr_gv = " AND daotao_giangvien.id='{$gv}' ";
		$qr = "
		SELECT daotao_hocvien.name,daotao_lophoc.name as lophoc,capdo,daotao_giangvien.name as giangvien,diem1,diem2,diem3,diem4,diem5,diem6,diem7,diem8
		FROM daotao_hocvien,daotao_bangdiem,daotao_lophoc,daotao_giangvien
		WHERE daotao_hocvien.`delete`=0 AND id_hocvien=daotao_hocvien.id AND daotao_lophoc.id=id_lophoc AND id_giangvien=daotao_giangvien.id AND daotao_lophoc.id_khoahoc='{$kh}' {$qr_lh} {$qr_gv}
		ORDER BY daotao_lophoc.name,daotao_hocvien.name
		";
		$i = 0;
		$qr = mysql_query($qr);
		while($row = mysql_fetch_array($qr)){
			$i++;
			$str_search .= '<tr class="row row1">
				<td align="center">'.$i.'</td>
				<td>'.$row['name'].'</td>
				<td>'.$row['lophoc'].' | Level '.$row['capdo'].'</td>
				<td>'.$row['giangvien'].'</td>
				<td align="center">'.$row['diem1'].'</td>
				<td align="center">'.$row['diem2'].'</td>
				<td align="center">'.$row['diem3'].'</td>
				<td align="center">'.$row['diem4'].'</td>
				<td align="center">'.$row['diem5'].'</td>
				<td align="center">'.$row['diem6'].'</td>
				<td align="center">'.$row['diem7'].'</td>
				<td align="center">'.$row['diem8'].'</td>
        	</tr>';
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
    <input type="button" name="btnXuatBangDiemExcel" value="Xuất Excel" class="btn" onclick="window.location = 'export_excel/export_excel.php?type=bangdiem&<?php echo $_SERVER['QUERY_STRING']; ?>' " />
</div>
</form>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="300" align="left">Khóa học</th>
            <th width="150" align="left">Giảng viên</th>
            <th width="50">Điểm 1</th>
            <th width="50">Điểm 2</th>
            <th width="50">Điểm 3</th>
            <th width="50">Điểm 4</th>
            <th width="50">Điểm 5</th>
            <th width="50">Điểm 6</th>
            <th width="50">Điểm 7</th>
            <th width="50">Điểm 8</th>
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