<?php 
	require_once('class.db.php');
	class quantri extends db {
		///////////////TAI KHOAN///////////////
		function set_cookie($name, $value = ""){
			$expire_date = time() + 60*60*24*1;
			return setcookie($name,$value,$expire_date,"/","");
		}
		function get_cookie($name){
			if (isset($_COOKIE[$name])) return urldecode($_COOKIE[$name]);
			else return false;
		}
		function del_cookie($name, $value){
			$expire_date = time() - 60*60*24*1;
			return setcookie($name,$value,$expire_date,"/","");
		}

		function KiemTraLogin() {
			$un = $_POST["un"];
			$pa = md5($_POST["pa"]);
			$qr = "SELECT id,Username,idGroup,quyen_xem,quyen_action FROM users WHERE Username='{$un}' AND Password='{$pa}' AND idGroup=1";//thanh vien id=2
			$u = mysql_query($qr);
			if(mysql_num_rows($u)==1) {
				$row_u = mysql_fetch_array($u);
				$this->set_cookie("idUser",$row_u['id']);
				$this->set_cookie("Username",$row_u['Username']);
				$this->set_cookie("idGroup",$row_u['idGroup']);
				$this->set_cookie("quyen_xem",$row_u['quyen_xem']);
				$this->set_cookie("quyen_action",$row_u['quyen_action']);
				return true;
			} else {
				return false;
			}
		}
		function logout(){
			$this->del_cookie("idUser",'');
			$this->del_cookie("Username",'');
			$this->del_cookie("idGroup",'');
			$this->del_cookie("quyen_xem",'');
			$this->del_cookie("quyen_action",'');
			session_destroy();
			return true;
		}
		function DoiMatKhau(){
			$password = $_POST['password'];
			$password_new = $_POST['password_new'];
			$password_repeat = $_POST['password_repeat'];
			if($password_new!=$password_repeat) return '<span style="color:red">Mật khẩu mới và mật khẩu nhắc lại không khớp.</span>';
			elseif(strlen($password_new)<6) return '<span style="color:red">Mật khẩu mới phải 6 ký tự trở lên.</span>';
			else{
				$un = $_SESSION['Username'];
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
		/*function KiemTraUser($idUser) {
			$qr = mysql_query("SELECT idUser FROM users WHERE idUser=$idUser AND idGroup=1");
			if(mysql_num_rows($qr)==1) {
				return true;
			} else {
				return false;
			}
		}
		function ThongTinTaiKhoan($idUser){
			$qr = "SELECT * FROM users WHERE idUser=$idUser";
			return mysql_query($qr);
		}*/
		/*function KiemTraDoiThongTin($pass_cu, $idUser){
			$pass_cu = md5($pass_cu);
			$qr = mysql_query("SELECT idUser FROM users WHERE idUser=$idUser AND Password='$pass_cu'");
			//mysql_free_result($qr);
			return mysql_num_rows($qr);
		}
		function DoiThongTin($idUser){
			$HoTen = $_POST['HoTen'];
			$DiaChi = $_POST['DiaChi'];
			$Dienthoai = $_POST['Dienthoai'];
			$Email = $_POST['Email'];
			$m = explode('/', $_POST['NgaySinh']); $NgaySinh = $m[2].$m[1].$m[0];
			$GioiTinh = $_POST['GioiTinh'];
			$qr = "UPDATE users SET HoTen='$HoTen', DiaChi='$DiaChi', Dienthoai='$Dienthoai', Email='$Email', NgaySinh='$NgaySinh', GioiTinh='$GioiTinh' WHERE idUser=$idUser";
			mysql_query($qr);
		}
		function DoiThongTinAll($idUser){
			$pass_moi = md5($_POST['pass_moi']);
			$HoTen = $_POST['HoTen'];
			$DiaChi = $_POST['DiaChi'];
			$Dienthoai = $_POST['Dienthoai'];
			$Email = $_POST['Email'];
			$NgaySinh = $_POST['NgaySinh'];
			$GioiTinh = $_POST['GioiTinh'];
			$qr = "UPDATE users SET HoTen='$HoTen', Password='$pass_moi', DiaChi='$DiaChi', Dienthoai='$Dienthoai', Email='$Email', NgaySinh='$NgaySinh', GioiTinh='$GioiTinh' WHERE idUser=$idUser";
			mysql_query($qr);
		}*/
		///////////////END TAI KHOAN///////////////
		function select($select,$from,$where=NULL,$limit=NULL){
			$qr = "SELECT {$select} FROM {$from} {$where} ORDER BY date_create DESC {$limit}";
			return mysql_query($qr);
		}
		function Language(){
			$qr = "SELECT idLang, MoTa, file FROM language ORDER BY idLang ASC";
			return mysql_query($qr);
		}
		function MenuAdmin() {
			$qr = "SELECT name, url FROM menu_admin WHERE status=1 ORDER BY `order`";
			return mysql_query($qr);
		}
		function Navigator($p){
			$m = explode('_ac', $p);
			$qr = "SELECT id,name FROM menu_admin WHERE status=1 AND url='{$m[0]}' ORDER BY `order`";
			return mysql_query($qr);	
		}
		function ChucNang() {
			$qr = "SELECT name,url,url_hinh FROM menu_admin WHERE status=1 AND id<>1 ORDER BY `order2`";
			return mysql_query($qr);
		}
	}
?>