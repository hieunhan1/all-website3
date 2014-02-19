<?php 
require_once('class.db.php');
require_once('functions.php');
class trangchu extends db {
	function config(){
		$qr = "SELECT * FROM `forum_config` WHERE status=1";
		return mysql_query($qr);
	}
	function seo($domain,$title,$description,$keywords,$image,$url){
		return '<base href="http://'.$domain.'/" />
<title>'.$title.'</title>
<meta name="title" content="'.$title.'" />
<meta name="description" content="'.$description.'" />
<meta name="keywords" content="'.$keywords.'" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta http-equiv="content-language" content ="vi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="'.$title.'" />
<meta property="og:description" content="'.$description.'" />
<meta property="og:image" content="'.$image.'" />
<meta property="og:url" content="'.$url.'" />
<meta name="abstract" content="Trường dạy nghề ẩm thực NETSPACE" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />';
	}
	function slider_banner($id,$lang,$menu_id=NULL){
		if($menu_id!=NULL) $menu_id = "AND menu_id LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$qr = "SELECT name,url_hinh,link,info FROM slider_banner WHERE `delete`=0 AND status=1 AND lang='{$lang}' AND position_id='{$id}' {$menu_id} ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,parent_id,title,metaDescription,metaKeyword,type_id FROM forum_menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu_one_id($id){
		$qr = "SELECT id,name FROM forum_menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function menu_one_id_list($id){
		$menu_id = explode(',',$id);
		for($i=1; $i<(count($menu_id)-1); $i++){
			if($menu_id[$i]!=1) $str .= "id='{$menu_id[$i]}' OR ";
		}
		$str = trim($str,'OR ');
		$str = "({$str})";
		
		$qr = "SELECT id,name FROM forum_menu WHERE `delete`=0 AND status=1 AND {$str}";
		return mysql_query($qr);
	}
	function menu($level,$position){
		$qr = "SELECT id,name,url,url_hinh,title FROM forum_menu WHERE `delete`=0 AND status=1 AND position_id LIKE '%,{$position},%' AND parent_id ='{$level}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function getSubmenu($level,$position){
		$sql = $this->menu($level,$position);
		if(mysql_num_rows($sql) > 0){
			$view = '<ul>';
			while($row = mysql_fetch_array($sql)){
				$view .= "<li><a href=\"{$row['url']}\" >{$row['name']}</a>";
				$view .= $this->getSubmenu($row['id'],$position);
				$view .= '</li>';
			}
			mysql_free_result($sql);
			$view .= '</ul>';
		}
		return $view;
	}
	function list_item($select,$table,$where,$limit=NULL){
		$qr = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY date_create DESC {$limit}";
		return mysql_query($qr);
	}
	function link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$qr = mysql_query("SELECT url FROM forum_menu WHERE id='".$str[$i]."'");
		$row_m = mysql_fetch_array($qr);
		return $row_m['url'];
	}
	function phantrang($page_number,$max_results,$select,$table,$where,$idMenu){
		$qr = $this->list_item($select,$table,$where);
		$total = mysql_num_rows($qr);
		mysql_free_result($qr);
		
		$total_pages = ceil($total / $max_results);
		if($total_pages > 1){
			for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
				if($page_number == $i){
					$str .= '<a href="?type=catalog&id='.$idMenu.'&page='.$i.'" style="font-weight:bold; background-color:#ED1E28">'.$i.'</a>';
				} elseif($i>0) {
					$str .= '<a href="?type=catalog&id='.$idMenu.'&page='.$i.'">'.$i.'</a>';
				}
			}
		}
		return $str;
	}
	
	/*Tai khoan*/
	function KiemTraLogin($user,$pass){
		$pass = md5($pass);
		$qr = mysql_query("SELECT id,name,Username,idGroup,avarta FROM forum_users WHERE Username='{$user}' AND Password='{$pass}' AND status=1");
		if(mysql_num_rows($qr)==1) {
			$row = mysql_fetch_array($qr);
			$_SESSION['idUser']		= $row['id'];
			$_SESSION['name_forum']	= $row['name'];
			$_SESSION['Username'] 	= $row['Username'];
			$_SESSION['idGroup'] 	= $row['idGroup'];
			$_SESSION['avarta_forum'] 	= $row['avarta'];
			
			return true;
		}else return false;
	}
	function logout(){
		session_destroy();
		return true;
	}
	function DoiMatKhau($name,$password,$password_new,$password_repeat){
		if(strlen($password_new)<6) return 'Mật khẩu mới phải 6 ký tự trở lên';
		elseif($password_new!=$password_repeat) return 'Mật khẩu mới và mật khẩu nhắc lại không khớp';
		else{
			$pa = md5($password);
			$pa_new = md5($password_new);
			$qr = "SELECT id FROM forum_users WHERE id='".$_SESSION['idUser']."' AND password='{$pa}'";
			if(!$row = mysql_query($qr)) return false;
			if(mysql_num_rows($row) != 1) return 'Mật khẩu không đúng';
			else{
				$qr = mysql_query("UPDATE forum_users SET name='{$name}',password='{$pa_new}' WHERE id='".$_SESSION['idUser']."'");
				return 'Đổi mật khẩu thành công.';
			}
		}
	}
	
	/*Info comment*/
	function forum_info_comment_select($id){
		$qr = "SELECT date_create,user_create FROM forum_info_comment WHERE `delete`=0 AND status=1 AND forum_info_id='{$id}' ORDER BY date_create DESC";
		return mysql_query($qr);
	}
	function forum_info_select($id){
		$qr = "SELECT id,name,content,other,menu_id,date_create,user_create FROM forum_info WHERE `delete`=0 AND status=1 AND id='{$id}' ";
		return mysql_query($qr);
	}
	function forum_info_insert($name,$content,$menu_id,$other){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO forum_info VALUES ('','{$name}','{$content}','{$other}','1','{$menu_id}','{$date}','{$date}','".$_SESSION['Username']."','','0')";
		return mysql_query($qr);
	}
	
	function users_select($user){
		$qr = "SELECT forum_users.name,avarta,booking_form.name as chinhanh FROM forum_users,booking_form WHERE forum_users.`delete`=0 AND forum_users.status=1 AND Username='{$user}' AND chinhanh=booking_form.id";
		return mysql_query($qr);
	}
	
	function forum_info_comment_view($id){
		$qr = "SELECT content,forum_info_comment.date_create,forum_info_comment.user_create,avarta,forum_users.name as hoten,booking_form.name as chinhanh
		FROM forum_info_comment,forum_users,booking_form
		WHERE forum_info_comment.`delete`=0 AND forum_info_comment.status=1 AND forum_info_id='{$id}' AND forum_info_comment.user_create=Username AND chinhanh=booking_form.id
		ORDER BY forum_info_comment.date_create DESC";
		return mysql_query($qr);
	}
	function forum_info_insert_cm($content,$id){
		$date = date('Y-m-d H:i:s');
		$qr = mysql_query("SELECT id FROM forum_info_comment WHERE forum_info_id='{$id}' AND content='{$content}' ");
		if(mysql_num_rows($qr)==0) mysql_query("INSERT INTO forum_info_comment VALUES ('','{$id}','{$content}','1','{$date}','{$date}','".$_SESSION['Username']."','','0')");
	}
	
}// end trangchu
?>