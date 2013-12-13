<?php 
require_once('class.db.php');
require_once('functions.php');
class trangchu extends db {
	function config($lang){
		$qr = "SELECT * FROM `config` WHERE status=1 AND lang='{$lang}'";
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
<meta name="abstract" content="'.$title.'" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />';
	}
	function slider_banner($id,$menu_id=NULL){
		if($menu_id!=NULL) $menu_id = "AND menu_id LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$qr = "SELECT name,url_hinh,link,content FROM slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' {$menu_id} ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,url,url_hinh,parent_id,title,metaDescription,metaKeyword,type_id,position_id FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu_one_id($id){
		$qr = "SELECT id,name,url,parent_id FROM menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function menu($level,$position=NULL,$lang=NULL){
		if($position!=NULL) $position = "AND position_id LIKE '%,{$position},%'"; else $position = '';
		if($lang!=NULL) $lang = "AND lang='{$lang}'"; else $lang = '';
		$qr = "SELECT id,name,url,url_hinh,title,metaDescription FROM menu WHERE `delete`=0 AND status=1 {$lang} {$position} AND parent_id ='{$level}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function getSubmenu($level){
		$sql = $this->menu($level);
		if(mysql_num_rows($sql) > 0){
			$view = '<ul>';
			while($row = mysql_fetch_array($sql)){
				$view .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a>';
				$view .= $this->getSubmenu($row['id']);
				$view .= '</li>';
			}
			mysql_free_result($sql);
			$view .= '</ul>';
		}
		return $view;
	}
	function menu_type($type,$parent_id,$lang){
		$qr = "SELECT id,name,url,url_hinh,parent_id,title,metaDescription,metaKeyword,lang FROM menu WHERE `delete`=0 AND status=1 AND type_id='{$type}' AND parent_id='{$parent_id}' AND lang='{$lang}'";
		return mysql_query($qr);
	}
	function menu_root($parent,$id){
		if($parent==0) return $id;
		else{
			$qr = $this->menu_one_id($parent);
			$row = mysql_fetch_array($qr);
			return $this->menu_root($row['parent_id'],$row['id']);
		}
	}
	function navigator($level){
		if($level == 0) return false;
		$qr = $this->menu_one_id($level);
		$row = mysql_fetch_array($qr);
		$view = '<span>&gt;&gt;</span><a href="'.$row['url'].'">'.$row['name'].'</a>'.$view;
		$view = $this->navigator($row['parent_id']).$view;
		return $view;
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
			for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
				if($page_number == $i){
					$str .= "<a href='{$link}/{$i}/' style='font-weight:bold; background-color:#FEE356; color:#333'>{$i}</a>";
				} elseif($i>0) {
					$str .= "<a href='{$link}/{$i}/'>{$i}</a>";
				}
			}
		}
		return $str;
	}
	
	/*home*/
	
	/*detail*/
	function info_detail($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,metaDescription,content,metaKeyword,date_create FROM info WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function product_detail($alias){
		$qr = "SELECT id,name,name_rewrite,price,url_hinh,metaDescription,list_mon,content,metaKeyword FROM products WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function picture_detail($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,metaDescription,metaKeyword,date_create FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function video_detail($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,link,metaDescription,content,metaKeyword,date_create FROM video WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	
	/*info*/
	function info_other($idMenu,$id){
		$qr = "SELECT name,name_rewrite FROM info WHERE `delete`=0 AND status=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY rand() LIMIT 5";
		return mysql_query($qr);
	}
	function info_news($idMenu,$id){
		$qr = "SELECT name,name_rewrite,menu_id FROM info WHERE `delete`=0 AND status=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 8";
		return mysql_query($qr);
	}
	
	/*image*/
	function image_news($idMenu,$id){
		$qr = "SELECT name,name_rewrite FROM menu WHERE `delete`=0 AND status=1 AND id<>'{$id}' AND parent_id='{$idMenu}' ORDER BY date_update DESC LIMIT 12";
		return mysql_query($qr);
	}
	function image_all($id){
		$qr = "SELECT name,url_hinh FROM photo_gallery WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$id},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	
	/*contact*/
	function insert_contact($name,$email,$phone,$diachi,$message){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `contact` VALUES ('','{$name}','{$email}','{$phone}','{$diachi}','{$message}','','0','{$date}','{$date}','khachhang','','0')";
		return mysql_query($qr);
	}
}// end trangchu
?>