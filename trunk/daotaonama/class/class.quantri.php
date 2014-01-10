<?php
require_once('class.db.php');
class quantri extends db {
	///////////////TAI KHOAN///////////////
	function KiemTraLogin($group_id) {
		$un = trim($_POST["un"]);
		$pa = md5($_POST["pa"]);
		$qr = mysql_query("SELECT id,Username,group_id,quyen_xem,quyen_action FROM users WHERE Username='{$un}' AND Password='{$pa}' AND group_id='{$group_id}'");
		if(mysql_num_rows($qr)==1) {
			$row = mysql_fetch_array($qr);
			$_SESSION["id_admin"]		= $row['id'];
			$_SESSION["user_admin"]		= $row['Username'];
			$_SESSION["group_admin"]	= $row['group_id'];
			$_SESSION["quyen_xem"]		= $row['quyen_xem'];
			$_SESSION["quyen_action"]	= $row['quyen_action'];
			return true;
		} else {
			return false;
		}
	}
	function DoiMatKhau(){
		$password = $_POST['password'];
		$password_new = $_POST['password_new'];
		$password_repeat = $_POST['password_repeat'];
		if($password_new!=$password_repeat) return '<span style="color:red">Mật khẩu mới và mật khẩu nhắc lại không khớp.</span>';
		elseif(strlen($password_new)<6) return '<span style="color:red">Mật khẩu mới phải 6 ký tự trở lên.</span>';
		else{
			$un = $_SESSION['user_admin'];
			$pa = md5($password);
			$pa_new = md5($password_new);
			$qr = "SELECT id FROM users WHERE Username='{$un}' AND Password='{$pa}'";
			$row = mysql_query($qr);
			if(mysql_num_rows($row) != 1) return '<span style="color:red">Mật khẩu không đúng.</span>';
			else{
				$qr = "UPDATE users SET Password='{$pa_new}' WHERE Username='{$un}'";
				mysql_query($qr);
				return '<span style="color:blue">Đổi mật khẩu thành công.</span>';
			}
		}
	}
	///////////////END TAI KHOAN///////////////
	
	function select($select,$from,$where=NULL,$limit=NULL){
		$qr = "SELECT {$select} FROM {$from} {$where} ORDER BY date_create DESC {$limit}";
		return mysql_query($qr);
	}
	function language(){
		$qr = "SELECT id,name,ma FROM language WHERE status=1 ORDER BY `order` ASC";
		return mysql_query($qr);
	}
	function MenuAdmin() {
		$qr = "SELECT name,url FROM menu_admin WHERE status=1 ORDER BY `order`";
		return mysql_query($qr);
	}
	function Navigator($p){
		$m = explode('_ac', $p);
		$qr = "SELECT id,name FROM menu_admin WHERE status=1 AND url='{$m[0]}' ORDER BY `order`";
		return mysql_query($qr);	
	}
	
	/*register*/
	function checks_register($id){
		$qr = "SELECT id,name,notes FROM register_hocvien WHERE id_register='{$id}' AND status=1 AND `delete`=0";
		return mysql_query($qr);
	}
	
	function danhsach_khoahoc($id){
		$str = '<select name="id_khoahoc" style="width:160px"> <option value="0">-- CHỌN KHÓA HỌC --</option>'; 
		$qr = mysql_query("SELECT id,name FROM info WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$id},%' ORDER BY date_update DESC ");
		while($row = mysql_fetch_array($qr)){
			$str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		}
        $str .= '</select>';
		return $str;
	}
	
	function hocvien_khoahoc($id_hocvien){
		$qr = "SELECT info.name FROM info,register_khoahoc WHERE id_hocvien='{$id_hocvien}' AND register_khoahoc.status=1 AND id_khoahoc=info.id ORDER BY register_khoahoc.date_update";
		return mysql_query($qr);
	}
	
}