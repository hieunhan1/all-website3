<?php 
	require_once('class.db.php');
	class quantri extends db {
		///////////////TAI KHOAN///////////////
		function KiemTraLogin() {
			$un = $_POST["un"];
			$pa = md5($_POST["pa"]);
			$qr = "SELECT id,Username,idGroup,quyen_xem,quyen_action FROM users WHERE Username='{$un}' AND Password='{$pa}' AND idGroup=1";//thanh vien id=2
			$u = mysql_query($qr);
			if(mysql_num_rows($u)==1) {
				$row_u = mysql_fetch_array($u);
				$_SESSION["id_user_admin"]		= $row_u['id'];
				$_SESSION["username_admin"]	= $row_u['Username'];
				$_SESSION["idGroup"]	= $row_u['idGroup'];
				$_SESSION["quyen_xem"]	= $row_u['quyen_xem'];
				$_SESSION["quyen_action"]	= $row_u['quyen_action'];
				return true;
			} else {
				return false;
			}
		}
		function DoiMatKhau(){
			$password = $_POST['password'];
			$password_new = $_POST['password_new'];
			$password_repeat = $_POST['password_repeat'];
			
			if($password_new!=$password_repeat) $error .= " - Mật khẩu mới và mật khẩu nhắc lại không khớp.<br />";
			if( strlen($password_new) > 20 ) $error .= " - Mật khẩu phải bé hơn 20 ký tự <br />";
			if( strlen($password_new) < 9 )  $error .= " - Mật khẩu phải hơn 10 ký tự <br />";   
			
			if( !preg_match("#[0-9]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>SỐ</strong> <br />";  
			if( !preg_match("#[a-z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>THƯỜNG</strong> <br />";   
			if( !preg_match("#[A-Z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>HOA</strong> <br />";
			
			if($error) return '<p style="color:#F00">Mật khẩu chưa đạt yêu cầu:<br />'.$error.'</p>';   
			else {   
				$un = $_SESSION['username_admin'];
				$pa = md5($password);
				$pa_new = md5($password_new);
				$qr = "SELECT id FROM users WHERE Username='{$un}' AND Password='{$pa}'";
				$row = mysql_query($qr);
				if(mysql_num_rows($row) != 1) return '<span style="color:red">Mật khẩu cũ không đúng.</span>';
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
		
		function select_tracing_express_detail($id){
			$qr = "SELECT * FROM tracing_express_detail WHERE `delete`=0 AND status=1 AND id_tracing_express='{$id}' ORDER BY date_update, id";
			return mysql_query($qr);
		}
		function insert_tracing_express_detail($id,$name,$notes,$date_update){
			$user = $_SESSION['username_admin'];
			$date = date('Y-m-d H:i:s');
			$qr = "INSERT INTO tracing_express_detail VALUES ('','{$name}','{$notes}','vi','1','{$id}','{$date}','{$date_update}','{$user}',NULL,'0')";
			mysql_query($qr);
			return mysql_insert_id();
		}
	}
?>