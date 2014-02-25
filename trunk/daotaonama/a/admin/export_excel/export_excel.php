<?php
session_start();
$user = $_SESSION["user_admin"];
$quyen_xem = $_SESSION['quyen_xem'];
$show = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
if(@$user) {
	$type = $_GET['type_export_excel'];
	
	include_once('../../../class/class.quantri.php');
	$qt = new quantri();
	
	function export_excel($data,$title){
		require_once('php-excel.class.php');
		$xls = new Excel_XML('UTF-8', true, 'Sheet1'); 
		$xls->addArray($data);
		$xls->generateXML($title.date('his'));
	}
	function hocvien_theolop($lophoc){
		$qr = mysql_query("SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien FROM daotao_lophoc,daotao_giangvien WHERE daotao_lophoc.id='{$lophoc}' AND id_giangvien=daotao_giangvien.id");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[] = array('Mã lớp: ',$row['id']);
		$data[] = array('Tên lớp: ',$row['name']);
		$data[] = array('Cấp độ: ',$row['capdo']);
		$data[] = array('Giảng viên: ',$row['giangvien']);
		$data[] = array();
		$data[] = array('STT','Họ & tên','Giới tính','Email','Điện thoại','Địa chỉ','Username');
		
		if($lophoc=='' || $lophoc=='0'){
			echo 'Ban chua chon lop hoc de xuat du lieu';
			return false;
		} else {
			$i = 0;
			$str = "SELECT daotao_hocvien.* FROM daotao_hocvien,daotao_khoahoc WHERE daotao_hocvien.`delete`=0 AND daotao_hocvien.status=1 AND id_hocvien=daotao_hocvien.id AND id_lophoc='{$lophoc}'";
			$qr = mysql_query($str);
			while($row = mysql_fetch_array($qr)){
				$i++;
				$data[] = array($i,$row['name'],($row['gioitinh']==1) ? 'Nam':'Nữ',$row['email'],$row['phone'],$row['diachi'],$row['username']);
			}
			mysql_free_result($qr);
		}
		export_excel($data,'lophoc-');
	}
	
	function bangdiem_theolop($lophoc){
		$qr = mysql_query("SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien FROM daotao_lophoc,daotao_giangvien WHERE daotao_lophoc.id='{$lophoc}' AND id_giangvien=daotao_giangvien.id");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[] = array('Mã lớp: ',$row['id']);
		$data[] = array('Tên lớp: ',$row['name']);
		$data[] = array('Cấp độ: ',$row['capdo']);
		$data[] = array('Giảng viên: ',$row['giangvien']);
		$data[] = array();
		$data[] = array('STT','Họ & tên','Cột 1','Cột 2','Cột 3','Cột 4','Cột 5','Cột 6','Cột 7','Cột 8');
		
		if($lophoc=='' || $lophoc=='0'){
			echo 'Ban chua chon lop hoc de xuat du lieu';
			return false;
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
		export_excel($data,'lophoc-');
	}
	
	function hocvien_theokhoa($khoahoc){
		$qr = mysql_query("SELECT name FROM info WHERE id='{$khoahoc}' AND `delete`=0 ");
		$row = mysql_fetch_array($qr);
		
		$data = array();
		$data[] = array('Tên khóa: ',$row['name']);
		$data[] = array();
		$data[] = array('STT','Họ & tên','Giới tính','Email','Điện thoại','Địa chỉ','Username','Lớp học','Cấp độ','Giảng viên');
		
		/*if($lophoc=='' || $lophoc=='0'){
			echo 'Ban chua chon lop hoc de xuat du lieu';
			return false;
		} else {
			$i = 0;
			$str = "'";
			$qr = mysql_query($str);
			while($row = mysql_fetch_array($qr)){
				$i++;
				$data[] = array($i,$row['name'],($row['gioitinh']==1) ? 'Nam':'Nữ',$row['email'],$row['phone'],$row['diachi'],$row['username'],$row['lophoc'],$row['capdo'],$row['giangvien']);
			}
			mysql_free_result($qr);
		}*/
		export_excel($data,'khoahoc-');
	}
	
	$danhsach = $_GET['danhsach'];
	switch($type){
		case 1 : hocvien_theolop($danhsach); break;
		case 3 : bangdiem_theolop($danhsach); break;
		
		case 2 : hocvien_theokhoa($danhsach); break;
		case 4 : bangdiem_theokhoa($danhsach); break;
		default : echo 'Kiem tra lai thong tin'; break;
	}

}
?>