<?php
session_start();
$user = $_SESSION["user_admin"];
$quyen_xem = $_SESSION['quyen_xem'];
$show = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
if(@$user) {
	$page = $_GET['p'];
	$lophoc = trim($_GET['lophoc']);
	
	include_once('../../../class/class.quantri.php');
	$qt = new quantri();
	
	function xuat_theo_cot(){
		$data_cols = array();
		$data_cols[1] = array('Name', 'Tel');
		$data_cols[] = array('Nhân', '0123');
		$data_cols[] = array('Nương', '01232');
	}
	function xuat_theo_dong(){
		$name = array();
		$name[] = 'Tên: ';
		$name[] = 'Trần Văn A';
		$name[] = 'Nguyễn Thị Bé';
		$tel = array();
		$tel[] = 'Điện thoại: ';
		$tel[] = '0988 388 003';
		$tel[] = '072 3611272';
		$data_rows = array(1=>$name,$tel);
	}
	function export_excel($data,$title){
		require_once('php-excel.class.php');
		$xls = new Excel_XML('UTF-8', true, 'Sheet1'); 
		$xls->addArray($data);
		$xls->generateXML($title.date('Ymd'));
	}
	function xu_ly_ngay($date){
		return date('d/m/Y',strtotime($date));
	}
	function hocvien($page,$lophoc){
		$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE id='{$lophoc}' ");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[1] = array('Mã lớp: ',$row['id'],'Tên lớp: ',$row['name']);
		$data[2] = array('STT','Họ & tên','Email','Điện thoại','Địa chỉ','Username');
		
		if($lophoc=='' || $lophoc=='0'){
			return $show.'Ban chua chon lop hoc de xuat du lieu';
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
		export_excel($data,$page);
	}
	function bangdiem($page,$lophoc){
		$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE id='{$lophoc}' ");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[1] = array('Mã lớp: ',$row['id'],'Tên lớp: ',$row['name']);
		$data[2] = array('STT','Họ & tên','Cột 1','Cột 2','Cột 3','Cột 4','Cột 5','Cột 6','Cột 7','Cột 8');
		
		if($lophoc=='' || $lophoc=='0'){
			return $show.'Ban chua chon lop hoc de xuat du lieu';
		} else {
			$i = 0;
			$str = "SELECT diem1,diem2,diem3,diem4,diem5,diem6,diem7,diem8,daotao_hocvien.name as hoten FROM daotao_bangdiem,daotao_hocvien WHERE daotao_bangdiem.`delete`=0 AND id_hocvien=daotao_hocvien.id AND id_lophoc='{$lophoc}' ";
			$qr = mysql_query($str);
			while($row = mysql_fetch_array($qr)){
				$i++;
				$data[] = array($i,$row['hoten'],$row['diem1'],$row['diem2'],$row['diem3'],$row['diem4'],$row['diem5'],$row['diem6'],$row['diem7'],$row['diem8']);
			}
			mysql_free_result($qr);
		}
		export_excel($data,$page);
	}
	
	switch($page){
		case 'daotao_hocvien' : hocvien($page,$lophoc); break;
		case 'daotao_bangdiem' : bangdiem($page,$lophoc); break;
	}
	
	$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 AND status=1 ORDER BY `name`");
	while($row = mysql_fetch_array($qr)){
		$str_lophoc .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
	}
	
	$form = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<form action="" method="get" name="search">
    	<input type="hidden" name="p" value="'.$page.'" />
    	<select name="lophoc">
    		<option value="0">-- Chọn lớp học --</option>'.$str_lophoc.'
    	</select>
    	<input type="submit" name="btnXuat" value="Xuất" />
	</form>';
	
	if(!@$_GET['btnXuat']) echo $form;
}
?>