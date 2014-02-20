<?php
session_start();
$user = $_SESSION["user_admin"];
$quyen_xem = $_SESSION['quyen_xem'];
$show = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
if(@$user) {
	$page = $_GET['p'];
	$id = trim($_GET['ma']);
	$danhmuc = trim($_GET['khoahoc']);
	
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
	function title($page,$id){
		$qr = mysql_query("SELECT id,ten FROM {$page} WHERE `delete`=0 AND id='{$id}'");
		$row = mysql_fetch_array($qr);
		return $row['id'].' - '.$row['ten'];
	}
	function hocvien($page,$danhmuc){
		if(!@$id) return false;
		
		$data = array();
		$data[1] = array('STT','Họ & tên','Email','Điện thoại','Địa chỉ','Username');
		
		if($danhmuc=='0'){
			return $show.'Bạn chưa chọn dữ liệu nào để xuất';
		} else {
			$i = 0;
			$str = "SELECT * FROM {$page} WHERE `delete`=0 AND status=1 AND khoahoc='{$danhmuc}'";
			$qr = mysql_query($str);
			while($row = mysql_fetch_array($qr)){
				$i++;
				$data[] = array($i,$row['name'],$row['email'],$row['phone'],$row['diachi'],$row['username']);
			}
			mysql_free_result($qr);
		}
		export_excel($data,$page);
	}
	function diemthi($page,$id,$danhmuc){
		if(!@$id && !@$danhmuc) return '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />Bạn chưa chọn dữ liệu nào để xuất';
		$data = array();
		$data[1] = array('Học viên','KT lần 1','KT lần 2','KT lần 3','KT lần 4','TBKT','Điểm thi TN','Điểm TN','Xếp loại','Ghi chú');
		
		$str = "SELECT {$page}.*,concat(hocvien_id,' | ',ho,' ',ten) as hocvien FROM {$page},hocvien WHERE {$page}.`delete`=0 AND hocvien_id=hocvien.id ";
		if($id!=NULL && $id!='Mã học viên'){
			if(@$_GET['btnSearch']) $str .= " AND hocvien_id='{$id}' ";
			else $str .= " AND {$page}.id='{$id}' ";
		}
		if($danhmuc!=NULL && $danhmuc!='') $str .= " AND {$page}.lophoc_id='{$danhmuc}' ";
		$qr = mysql_query($str);
		while($row = mysql_fetch_array($qr)){
			$data[] = array($row['hocvien'],$row['kiemtra_lan1'],$row['kiemtra_lan2'],$row['kiemtra_lan3'],$row['kiemtra_lan4'],$row['kiemtra_tb'],$row['thi_tn'],$row['diem_tn'],$row['xeploai'],$row['notes']);
		}
		mysql_free_result($qr);
		export_excel($data,$page);
	}
	switch($page){
		case 'daotao_hocvien' : echo hocvien($page,$danhmuc); echo '111';break;
	}
}
?>