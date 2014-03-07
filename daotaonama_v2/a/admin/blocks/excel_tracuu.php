<?php
	/*search*/
	if(isset($_GET['btnSearch'])){
		if($_GET['txt']!='' && $_GET['txt']!='Mô tả') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
		if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND id_lophoc='{$_GET['dm']}' ";
	}else{
		$str_search = '';
	}
	
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
		$kh = $_GET['kh'];
		$lh = $_GET['lh'];
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
		if($_GET['gv'] != $row['id']) $str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		else $str .= '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
	}
	$giangvien = '<option value="0">-- Chọn giảng viên --</option>'.$str.'';
?>
<form action="" method="get" name="search">
<div id="search">
	<input type="hidden" name="p" value="<?php echo $table; ?>" />
    <select name="kh" class="select"><?php echo $khoahoc; ?></select>
    <select name="lh" class="select"><?php echo $lophoc; ?></select>
    <select name="gv" class="select"><?php echo $giangvien; ?></select>
    <input type="submit" name="btnSearch" value="Filter" class="btn" />
</div>
</form>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="110" align="left">Khóa học</th>
            <th width="110" align="left">Giảng viên</th>
            <th width="50">Điểm 1</th>
            <th width="50">Điểm 2</th>
            <th width="50">Điểm 3</th>
            <th width="50">Điểm 4</th>
            <th width="50">Điểm 5</th>
            <th width="50">Điểm 6</th>
            <th width="50">Điểm 7</th>
            <th width="50">Điểm 8</th>
        </tr>
        
		<tr>
        	<td align="center">STT</td>
            <td>Họ tên</td>
            <td>Khóa học</td>
            <td>Giảng viên</td>
            <td align="center">Điểm 1</td>
            <td align="center">Điểm 2</td>
            <td align="center">Điểm 3</td>
            <td align="center">Điểm 4</td>
            <td align="center">Điểm 5</td>
            <td align="center">Điểm 6</td>
            <td align="center">Điểm 7</td>
            <td align="center">Điểm 8</td>
        </tr>
    </table>
    <div style="clear:both; height:50px"></div>
</div>