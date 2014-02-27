<?php 
	require_once('class.db.php');
	class quantri extends db {
		/*web_users*/
		function KiemTraLogin() {
			$un = $_POST["un"];
			$pa = md5($_POST["pa"]);
			$qr = "SELECT id,username,quyen_xem,quyen_action FROM web_users WHERE username='{$un}' AND password='{$pa}' AND status=1 AND `delete`=0";
			$u = mysql_query($qr);
			if(mysql_num_rows($u)==1) {
				$row_u = mysql_fetch_array($u);
				$_SESSION["id_user_admin"]		= $row_u['id'];
				$_SESSION["username_admin"]	= $row_u['username'];
				$_SESSION["quyen_xem_admin"]	= $row_u['quyen_xem'];
				$_SESSION["quyen_action_admin"]	= $row_u['quyen_action'];
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
			if( strlen($password_new) < 6 )  $error .= " - Mật khẩu phải hơn 6 ký tự <br />";   
			/*
			//mat khau kho
			if( !preg_match("#[0-9]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>SỐ</strong> <br />";  
			if( !preg_match("#[a-z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>THƯỜNG</strong> <br />";   
			if( !preg_match("#[A-Z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>HOA</strong> <br />";
			*/
			if($error) return '<p style="color:#F00">Mật khẩu chưa đạt yêu cầu:<br />'.$error.'</p>';   
			else {   
				$un = $_SESSION['username_admin'];
				$pa = md5($password);
				$pa_new = md5($password_new);
				$qr = "SELECT id FROM web_users WHERE username='{$un}' AND password='{$pa}'";
				$row = mysql_query($qr);
				if(mysql_num_rows($row) != 1) return '<span style="color:red">Mật khẩu không đúng.</span>';
				else{
					$qr = "UPDATE web_users SET password='{$pa_new}' WHERE `delete`=0 AND status=1 AND username='{$un}'";
					mysql_query($qr);
					return '<span style="color:blue">Đổi mật khẩu thành công.</span>';
				}
			}
		}
		
		/*general*/
		function language(){
			$qr = "SELECT id,name,ma FROM web_language ORDER BY `order` ";
			return mysql_query($qr);
		}
		function MenuAdmin() {
			$qr = "SELECT name,url FROM web_menu_admin WHERE status=1 ORDER BY `order`";
			return mysql_query($qr);
		}
		function Navigator($url){
			$qr = "SELECT id,name FROM web_menu_admin WHERE status=1 AND url='{$url}' LIMIT 1";
			return mysql_query($qr);	
		}
		function list_item($select,$table,$where,$limit=NULL){
			$qr = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY date_create DESC {$limit}";
			return mysql_query($qr);
		}
		function phantrang($url,$page_number,$max_results,$select,$where,$limit=NULL){
			$qr = $this->list_item($select,$url,$where);
			$total = mysql_num_rows($qr);
			
			$str = '<div style="clear:both"></div>';
			$total_pages = ceil($total / $max_results);
			if($total_pages > 1){
				for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
					if($page_number == $i){
						$str .= '<a href="?p='.$url.'&page_number='.$i.'" style="font-weight:bold; background-color:#ED1E28">'.$i.'</a>';
					} elseif($i > 0) {
						$str .= '<a href="?p='.$url.'&page_number='.$i.'">'.$i.'</a>';
					}
				}
			}
			return $str;
		}
		
		/*select view data*/
		function data_view(){
			$array = array(
				
			);
		}
		
		/*other quan tri*/
	}
?>