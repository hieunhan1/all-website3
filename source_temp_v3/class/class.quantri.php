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
		function Users_ResetPass($id,$user){
			$date = date('Y-m-d H:i:s');
			$pass = md5('123456789');
			$qr = "UPDATE web_users SET password='{$pass}', date_update='{$date}', user_update='".$_SESSION["username_admin"]."' WHERE id='{$id}' AND username='{$user}'";
			return mysql_query($qr);
		}
		
		/*general*/
		function language(){
			$qr = "SELECT `id`,`name`,`ma` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
			return mysql_query($qr);
		}
		function MenuAdmin() {
			$qr = "SELECT name,url FROM web_menu_admin WHERE status=1 ORDER BY `order`";
			return mysql_query($qr);
		}
		function Navigator($url){
			$qr = "SELECT id,name,url FROM web_menu_admin WHERE status=1 AND url='{$url}' LIMIT 1";
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
		
		/*danh mục MENU*/
		function menu_view($table,$id,$stt,$name,$order,$date_create,$user_create,$date_update,$user_update,$status){
			$str = '<tr class="row row_'.$id.'">
			<td align="center">'.$stt.'</td>
			<td>'.$name.'</td>
			<td align="center">'.$order.'</td>
			<td align="center" class="create">'.date('d/m/Y H:i',strtotime($date_create)).'</td>
			<td align="center" class="create">'.$user_create.'</td>
			<td align="center" class="update">'.date('d/m/Y H:i',strtotime($date_update)).'</td>
			<td align="center" class="update">'.$user_update.'</td>
			<td align="center">
				<a href="javascript:;"><img src="images/anhien_'.$status.'.gif" class="status status_'.$id.'" status="'.$status.'" url="'.$table.'" name="'.$name.'"></a> &nbsp;
				<a href="?p='.$table.'_ac&id='.$id.'"><img src="images/edit.gif" alt=""></a> &nbsp;
				<a href="javascript:;" class="delete_one delete_one_'.$id.'" url="'.$table.'" name="'.$name.'"><img src="images/delete.gif" alt=""></a>
			</td></tr>';
			return $str;
		}
		function menu_root($level,$lang,$type=NULL){
			if($type != NULL) $type = "AND type_id='{$type}' "; else $type = '';
			
			$qr = "SELECT id,name,`order`,status,date_create,date_update,user_create,user_update FROM `web_menu` WHERE `delete`=0 AND `lang`='{$lang}' AND parent_id='{$level}' {$type} ORDER BY `order` ";
			return mysql_query($qr);
		}
		function danhmuc_menu($level,$lang,$style_1,$arr=NULL){
			if(!$arr) $arr = array();
			$style_2 = '-- ';
			
			$qr = $this->menu_root($level,$lang);
			while($row = mysql_fetch_array($qr)){
				$arr[] = array(
					'id'			=> $row['id'],
					'name'			=> $style_1.$row['name'],
					'order'			=> $row['order'],
					'status'		=> $row['status'],
					'date_create'	=> $row['date_create'],
					'user_create'	=> $row['user_create'],
					'date_update'	=> $row['date_update'],
					'user_update'	=> $row['user_update'],
				);
				$arr = $this->danhmuc_menu($row['id'],$lang,$style_1.$style_2,$arr);
			}
			return $arr;
		}
		function danhmuc_menu_select($level, $style1, $name_default, $arr=NULL){
			if(!$arr){
				$arr = array();
				$arr[] = array('id'=>0, 'name'=>"--------- {$name_default[0]} ---------");
			}
			$style2 = '-- ';
			
			$qr = mysql_query("SELECT id,name FROM web_menu WHERE `delete`=0 AND parent_id='{$level}' AND id<>'{$name_default[1]}' ORDER BY `order` ");
			while($row = mysql_fetch_array($qr)){
				$arr[] = array('id'=>$row['id'], 'name'=>$style1.$row['name']);
				$arr = $this->danhmuc_menu_select($row['id'],$style1.$style2,$name_default,$arr);
			}
			
			return $arr;  
		}
		function danhmuc_menu_checkbox($level,$style1,$where,$arr=NULL){
			if(!$arr) $arr = array();
			$style2 = '-- ';
			
			$qr = mysql_query("SELECT id,name FROM web_menu WHERE `delete`=0 AND parent_id='{$level}' {$where} ORDER BY `order` ");
			while($row = mysql_fetch_array($qr)){
				$arr[] = array('id'=>$row['id'], 'name'=>$style1.$row['name']);
				$arr = $this->danhmuc_menu_select($row['id'],$style1.$style2,$where,$arr);
			}
			
			return $arr;  
		}
		
		/*other quan tri*/
		
	}
?>