<?php
session_start();
$user = $_SESSION["username_admin"];
$show = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
if(@$user) {
	include_once('../../../class/class.quantri.php');
	$qt = new quantri();
	
	function export_excel($data,$title){
		require_once('php-excel.class.php');
		$xls = new Excel_XML('UTF-8', true, 'Sheet1'); 
		$xls->addArray($data);
		$xls->generateXML($title.date('his'));
	}
	
	function bangdiem($kh,$lh,$gv){
		$data = array();
		$data[] = array('STT','Họ & tên','Lớp học','Cấp độ','Giảng viên','Cột 1','Cột 2','Cột 3','Cột 4','Cột 5','Cột 6','Cột 7','Cột 8');
		
		if($kh!=0) $qr_kh = " AND daotao_lophoc.id_khoahoc='{$kh}' ";
		if($lh!=0) $qr_lh = " AND daotao_lophoc.id='{$lh}' ";
		if($gv!=0) $qr_gv = " AND daotao_giangvien.id='{$gv}' ";
		$qr = "
		SELECT daotao_hocvien.name,daotao_lophoc.name as lophoc,capdo,daotao_giangvien.name as giangvien,diem1,diem2,diem3,diem4,diem5,diem6,diem7,diem8
		FROM daotao_hocvien,daotao_bangdiem,daotao_lophoc,daotao_giangvien
		WHERE daotao_hocvien.`delete`=0 AND id_hocvien=daotao_hocvien.id AND daotao_lophoc.id=id_lophoc AND id_giangvien=daotao_giangvien.id {$qr_kh} {$qr_lh} {$qr_gv}
		ORDER BY daotao_lophoc.name,daotao_hocvien.name
		";
		
		$i = 0;
		$qr = mysql_query($qr);
		while($row = mysql_fetch_array($qr)){
			$i++;
			$data[] = array($i,$row['name'],$row['lophoc'],$row['capdo'],$row['giangvien'],$row['diem1'],$row['diem2'],$row['diem3'],$row['diem4'],$row['diem5'],$row['diem6'],$row['diem7'],$row['diem8']);
		}
		
		export_excel($data,'bangdiem-'.date('His'));
	}
	
	function hocvien($kh,$lh,$gv){
		$data = array();
		$data[] = array('STT','Họ & tên','Ngày sinh','Giới tính','Điện thoại','Email','Địa chỉ');
		
		if($kh!=0){
			if($gv!=0) $qr_gv = " AND id_giangvien='{$gv}' ";
			if($lh!=0) $qr_lh = " AND daotao_lophoc.id='{$lh}' ";
			
			$qr_lh = "SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien 
			FROM daotao_lophoc,daotao_giangvien 
			WHERE daotao_lophoc.`delete`=0 AND id_khoahoc='{$kh}' AND id_giangvien=daotao_giangvien.id {$qr_lh} {$qr_gv}
			ORDER BY daotao_lophoc.`name` ";
			
			$qr_lh = mysql_query($qr_lh);
			while($row_lh = mysql_fetch_array($qr_lh)){
				$i = 0;
				$qr = mysql_query("SELECT id,name,ngaysinh,gioitinh,phone,email,diachi FROM daotao_hocvien WHERE `delete`=0 AND ds_lophoc LIKE '%,{$row_lh['id']},%' ORDER BY `name` ");
				while($row = mysql_fetch_array($qr)){
					$i++;
					if($row['gioitinh']==1) $gioitinh = 'Nam'; else $gioitinh = 'Nữ';
					$data[] = array($i,$row['name'],date('m/d/Y',strtotime($row['ngaysinh'])),$gioitinh,$row['phone'],$row['email'],$row['diachi']);
				}
				$data[] = array('Lớp học',$row_lh['name']);
				$data[] = array('Cấp độ',$row_lh['capdo']);
				$data[] = array('Giảng viên',$row_lh['giangvien']);
				$data[] = array();
				$data[] = array();
			}
		}elseif($gv!=0){
			$qr_lh = "SELECT daotao_lophoc.id,daotao_lophoc.name,capdo,daotao_giangvien.name as giangvien 
			FROM daotao_lophoc,daotao_giangvien 
			WHERE daotao_lophoc.`delete`=0 AND id_giangvien=daotao_giangvien.id AND id_giangvien='{$gv}'
			ORDER BY daotao_lophoc.`name` ";
			
			$qr_lh = mysql_query($qr_lh);
			while($row_lh = mysql_fetch_array($qr_lh)){
				$i = 0;
				$qr = mysql_query("SELECT id,name,ngaysinh,gioitinh,phone,email,diachi FROM daotao_hocvien WHERE `delete`=0 AND ds_lophoc LIKE '%,{$row_lh['id']},%' ORDER BY `name` ");
				while($row = mysql_fetch_array($qr)){
					$i++;
					if($row['gioitinh']==1) $gioitinh = 'Nam'; else $gioitinh = 'Nữ';
					$data[] = array($i,$row['name'],date('m/d/Y',strtotime($row['ngaysinh'])),$gioitinh,$row['phone'],$row['email'],$row['diachi']);
				}
				$data[] = array('Lớp học',$row_lh['name']);
				$data[] = array('Cấp độ',$row_lh['capdo']);
				$data[] = array('Giảng viên',$row_lh['giangvien']);
				$data[] = array();
				$data[] = array();
			}
		}
		export_excel($data,'hocvien-'.date('His'));
	}
	
	$kh = $_GET['kh'];
	$lh = $_GET['lh'];
	$gv = $_GET['gv'];
	$type = $_GET['type'];
	if($type == 'bangdiem') bangdiem($kh,$lh,$gv);
	if($type == 'thongtin') hocvien($kh,$lh,$gv);

}
?>