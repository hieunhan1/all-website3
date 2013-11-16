<?php 
require_once('class.db.php');
require_once('functions.php');
class trangchu extends db {
	function config(){
		$qr = "SELECT * FROM `config`";
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
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />';
	}
	function slider_banner($id,$idMenu=NULL){
		if($idMenu==NULL) $menu_id = ''; else $menu_id = "AND menu_id LIKE '%,{$idMenu},%'";
		$qr = "SELECT name,url_hinh,link,info FROM slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' {$menu_id} ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,title,metaDescription,metaKeyword,type_id,parent_id FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu_one_id($id){
		$qr = "SELECT id,parent_id FROM menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function menu($level,$position){
		$qr = "SELECT id,name,url,url_hinh,title FROM menu WHERE `delete`=0 AND status=1 AND position_id LIKE '%,{$position},%' AND parent_id = {$level} ORDER BY `order`";
		return mysql_query($qr);
	}
	function getSubmenu($level,$position){
		$sql = $this->menu($level,$position);
		if(mysql_num_rows($sql) > 0){
			$view = '<ul>';
			while($row = mysql_fetch_array($sql)){
				$view .= '<li><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a>';
				$view .= $this->getSubmenu($row['id'],$position);
				$view .= '</li>';
			}
			mysql_free_result($sql);
			$view .= '</ul>';
		}
		return $view;
	}
	function menu_root($parent,$id){
		if($parent==0) return $id;
		else{
			$qr = $this->menu_one_id($parent);
			$row = mysql_fetch_array($qr);
			return $this->menu_root($row['parent_id'],$row['id']);
		}
	}
	function navigator($url,$name,$title){
		return '<div id="navigator"><a href="/">Trang chủ</a>  <span style="font-size:90%; padding:0 10px">&gt;&gt;</span>  <a href="'.$url.'" title="'.$title.'">'.$title.'</a></div>';	
	}
	function detail_info($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,description,content,date_update,metaKeyword FROM info WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function detail_product($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,download_file,description,content,date_update,metaKeyword FROM products WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function list_item($select,$table,$where,$limit=NULL){
		$qr = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY date_update DESC {$limit}";
		return mysql_query($qr);
	}
	function link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$qr = mysql_query("SELECT url FROM menu WHERE id='".$str[$i]."'");
		$row_m = mysql_fetch_array($qr);
		return $row_m['url'];
	}
	function phantrang($link,$page_number,$max_results,$select,$table,$where,$keyword=NULL,$catalog=NULL,$order=NULL){
		$qr = $this->list_item($select,$table,$where);
		$total = mysql_num_rows($qr);
		mysql_free_result($qr);
		
		$str = '<div style="clear:both"></div>';
		$total_pages = ceil($total / $max_results);
		if($total_pages > 1){
			/*if($page_number > 1){
				$prev = ($page_number - 1);
				$str .= "<a href='{$link}{$prev}/'>Previous</a>";
			}*/
			for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
				if($page_number == $i){
					$str .= "<a href='{$link}{$i}/' style='color:#FFF; font-weight:bold; background-color:#376C2C'>{$i}</a>";
				} elseif($i>0) {
					$str .= "<a href='{$link}{$i}/'>{$i}</a>";
				}
			}
			/*if($page_number < $total_pages){
				$next = ($page_number + 1);
				$str .= "<a href='{$link}{$next}/'>Next</a>";
			}*/
		}
		return $str;
	}
	
	/*home*/
	function home_gioithieu($idMenu){
		$qr = "SELECT name,name_rewrite,url_hinh,description,menu_id FROM info WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 1";
		return mysql_query($qr);
	}
	function home_thucdon(){
		$qr = "SELECT name,name_rewrite,url_hinh,description,menu_id FROM info WHERE `delete`=0 AND status=1 AND other=1 ORDER BY date_update DESC LIMIT ".max_product_home;
		return mysql_query($qr);
	}
	function home_danhmuc(){
		$qr = "SELECT id,name,url FROM menu WHERE `delete`=0 AND status=1 AND other=1 ORDER BY `order`";
		return mysql_query($qr);
	}
	function home_danhmuc_detail($idMenu){
		$qr = "SELECT name,name_rewrite,url_hinh,description FROM info WHERE `delete`=0 AND status=1 AND other=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 4";
		return mysql_query($qr);
	}
	
	/*other*/
	function other_news($idMenu,$id){
		$qr = "SELECT name,name_rewrite FROM info WHERE `delete`=0 AND status=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 5";
		return mysql_query($qr);
	}
	
	function insert_contact($name,$email,$phone,$diachi,$content){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `contact` VALUES ('','{$date}','{$date}','{$content}','{$email}','{$name}','{$phone}','{$diachi}','0','khachhang','','0')";
		return mysql_query($qr);
	}
	function insert_order($id,$name_sp,$link_sp,$name,$email,$phone,$diachi,$content){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `dathang` VALUES ('{$id}','{$date}','{$date}','{$content}','{$email}','{$name}','{$phone}','{$diachi}','{$name_sp}','{$link_sp}','0','khachhang','','0')";
		return mysql_query($qr);
	}
}// end trangchu
?>