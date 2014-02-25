<?php
function export_excel($data,$title){
	require_once('export_excel/php-excel.class.php');
	$xls = new Excel_XML('UTF-8', true, 'Sheet1'); 
	$xls->addArray($data);
	$xls->generateXML($title.date('Ymd'));
}

if(@$_GET['type_export_excel']){
	$type = $_GET['type_export_excel'];
	
	if($type==1 || $type==3){
		$lophoc = $_GET['danhsach'];
		/*$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE id='{$lophoc}' ");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[1] = array('Mã lớp: ',$row['id'],'Tên lớp: ',$row['name']);
		$data[2] = array('STT','Họ & tên','Email','Điện thoại','Địa chỉ','Username');
		
		if($lophoc=='0'){
			$error_excel = 'Ban chua chon lop hoc de xuat du lieu';
			return false;
		} else {
			$i = 0;
			$str = "SELECT daotao_hocvien.* FROM daotao_hocvien,daotao_khoahoc WHERE daotao_hocvien.`delete`=0 AND daotao_hocvien.status=1 AND id_hocvien=daotao_hocvien.id AND id_lophoc='{$lophoc}'";
			$qr = mysql_query($str);
			while($row = mysql_fetch_array($qr)){
				$i++;
				$data[] = array($i,$row['name'],$row['email'],$row['phone'],$row['diachi'],$row['username']);
			}
			mysql_free_result($qr);
		}
		export_excel($data,'lophoc-');*/
	}else if($type==2 || $type==4){
		$khoahoc = $_GET['danhsach'];
		
		export_excel($data,'bangdiem-');
	}
}
?>

<div style="margin:30px">
    <form name="export_excel" action="export_excel/export_excel.php" method="get">
        <p><span style="display:block; color:#F00; font-weight:bold; font-size:120%; padding-bottom:10px">Chọn thông tin muốn xuất ra excel</span>
        <select name="type_export_excel" style="width:300px; padding:3px 10px" id="type_export_excel">
            <option value="0">-- Chọn loại muốn xuất --</option>
            <optgroup label="Xuất thông tin học viên" >
            	<option value="1">Theo lớp học</option>
            	<option value="2">Theo khóa học</option>
            </optgroup>
            
            <optgroup label="Xuất bảng điểm học viên" >
            	<option value="3">Theo lớp học</option>
            	<option value="4">Theo khóa học</option>
            </optgroup>
        </select></p><br />
        
        <p id="ajax_export_excel"></p><br />
        <p><input type="submit" name="btn_export_excel" value="Xuất ra excel" style="padding:5px 20px" /></p>
    </form>	
</div>
<script type="text/javascript" src="../../library/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("select[name=type_export_excel]").change(function(){
		var type = $(this).val();
		$.post("ajax.php",{type_export_excel:type},function(data){
			$("#ajax_export_excel").html(data);
		})
	});
});
</script>