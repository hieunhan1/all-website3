<?php 
	require_once('class.db.php');
	class quantri extends db {
		///////////////TAI KHOAN///////////////
		function KiemTraLogin() {
			$un = $_POST["un"];
			$pa = md5($_POST["pa"]);
			$qr = "SELECT id,Username,idGroup,quyen_xem,quyen_action FROM forum_users WHERE Username='{$un}' AND Password='{$pa}' AND idGroup LIKE '%,1,%'";//thanh vien id=2
			$u = mysql_query($qr);
			if(mysql_num_rows($u)==1) {
				$row_u = mysql_fetch_array($u);
				$_SESSION["id_user_forum"]		= $row_u['id'];
				$_SESSION["username_forum"]	= $row_u['Username'];
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
		///////////////END TAI KHOAN///////////////
		function select($select,$from,$where=NULL,$limit=NULL){
			$qr = "SELECT {$select} FROM {$from} {$where} ORDER BY date_create DESC {$limit}";
			return mysql_query($qr);
		}
		function MenuAdmin() {
			$qr = "SELECT name, url FROM forum_menu_admin WHERE `delete`=0 AND status=1 ORDER BY `order`";
			return mysql_query($qr);
		}
		function Navigator($p){
			$m = explode('_ac', $p);
			$qr = "SELECT id,name FROM forum_menu_admin WHERE `delete`=0 AND status=1 AND url='{$m[0]}' ORDER BY `order`";
			return mysql_query($qr);	
		}
		function ChucNang() {
			$qr = "SELECT name,url,url_hinh FROM forum_menu_admin WHERE `delete`=0 AND status=1 AND id<>1 ORDER BY `order2`";
			return mysql_query($qr);
		}
	}
?>