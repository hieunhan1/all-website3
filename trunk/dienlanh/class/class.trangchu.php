<?php 
require_once('class.db.php');
require_once('functions.php');
class trangchu extends db {
	function config(){
		$qr = "SELECT * FROM `web_config`";
		return mysql_query($qr);
	}
	function seo($domain,$title,$description,$keywords,$image,$url){
		$title = str_replace('"','',$title);
		$description = str_replace('"','',$description);
		$keywords = str_replace('"','',$keywords);
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
		$qr = "SELECT name,url_hinh,link FROM web_slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' {$menu_id} ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,title,metaDescription,metaKeyword,type_id,lang FROM web_menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu_one_id($id){
		$qr = "SELECT id,name,url,parent_id FROM web_menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function menu($level,$position=NULL){
		if($position!=NULL) $position = "AND position_id LIKE '%,{$position},%'"; else $position = '';
		$qr = "SELECT id,name,url,url_hinh,title FROM web_menu WHERE `delete`=0 AND status=1 AND parent_id={$level} {$position} ORDER BY `order`";
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
	function menu_type($type,$parent_id,$lang){
		$qr = "SELECT id,name,url,url_hinh,parent_id,title,metaDescription,metaKeyword,lang FROM web_menu WHERE `delete`=0 AND status=1 AND type_id='{$type}' AND parent_id='{$parent_id}' AND lang='{$lang}'";
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
	function detail_info($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,metaDescription,content,date_update,metaKeyword FROM web_info WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function detail_product($alias){
		$qr = "SELECT * FROM web_products WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function list_item($select,$table,$where,$limit=NULL){
		$qr = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY date_update DESC {$limit}";
		return mysql_query($qr);
	}
	function link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$qr = mysql_query("SELECT url FROM web_menu WHERE id='".$str[$i]."' ORDER BY `order`");
		$row_m = mysql_fetch_array($qr);
		return $row_m['url'];
	}
	function phantrang($link,$page_number,$max_results,$select,$table,$where,$orther_link=NULL){
		$qr = $this->list_item($select,$table,$where);
		$total = mysql_num_rows($qr);
		mysql_free_result($qr);
		
		$str = '<div style="clear:both; height:1px"></div>';
		$total_pages = ceil($total / $max_results);
		if($total_pages > 1){
			for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
				if($page_number == $i){
					$str .= "<a href='{$link}{$i}/{$orther_link}' style='color:#FFF; font-weight:bold; background-color:#FF8A00'>{$i}</a>";
				} elseif($i>0) {
					$str .= "<a href='{$link}{$i}/{$orther_link}'>{$i}</a>";
				}
			}
		}
		return $str;
	}
	
	/*home*/
	function type_noibat($id){
		if($id==0) return '';
		elseif($id==3) return '<span style="background-color:#FF5555">Mới</span>';
		elseif($id==2) return '<span style="background-color:#FF8A00">Khuyến mãi</span>';
		elseif($id==1) return '<span style="background-color:#387EFF">Sắp có</span>';
	}
	function home_danhuc(){
		$qr = "SELECT id,name,url FROM web_menu WHERE `delete`=0 AND status=1 AND `other`=1 ORDER BY `order` ";
		return mysql_query($qr);
	}
	
	/*other*/
	function thon_tin_moi(){
		$qr = "SELECT name,name_rewrite,url_hinh,menu_id FROM web_info WHERE `delete`=0 AND status=1 ORDER BY date_update DESC LIMIT 5";
		return mysql_query($qr);
	}
	
	/*products*/
	function product_theomuc($idMenu,$limit){
		$qr = "SELECT name,name_rewrite,url_hinh,price,menu_id,noibat FROM web_products WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT {$limit}";
		return mysql_query($qr);
	}
	function products_image($id){
		$qr = "SELECT name,url_hinh FROM web_products_image WHERE `delete`=0 AND status=1 AND products_id='{$id}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function add_sosanh($id){
		$qr = "SELECT name,name_rewrite,url_hinh,menu_id,price FROM web_products WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function autoview_sosanh($str){
		$qr = "SELECT * FROM web_products WHERE `delete`=0 AND status=1 AND ({$str})";
		return mysql_query($qr);
	}
	function dienthoai_cungmuc($id,$price){
		if($price >= 14000000){
			$price = 'AND price>=14000000';
		}elseif($price >= 11000000){
			$price = 'AND price BETWEEN 9000000 AND 14000000';
		}elseif($price >= 7000000){
			$price = 'AND price BETWEEN 6000000 AND 9000000';
		}elseif($price >= 5000000){
			$price = 'AND price BETWEEN 4000000 AND 6000000';
		}elseif($price >= 2500000){
			$price = 'AND price BETWEEN 2000000 AND 3000000';
		}else{
			$price = 'AND price<=2000000';
		}
		$qr = "SELECT name,name_rewrite,url_hinh,menu_id,price FROM web_products WHERE `delete`=0 AND status=1 AND id<>'{$id}' {$price} ORDER BY date_update DESC LIMIT 4";
		return mysql_query($qr);
	}
	function danhgia_sp($id){
		$qr = "SELECT name,content FROM web_products_comment WHERE `delete`=0 AND status=1 AND products_id='{$id}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function insert_danhgia_sp($name,$email,$content,$product_id){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO web_products_comment VALUES ('','{$name}','{$content}','{$email}','1','{$product_id}','{$date}','{$date}','khachhang','','0')";
		return mysql_query($qr);
	}
	function insert_products_order($name,$email,$phone,$diachi,$content,$product_id,$link_sp){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO web_products_order VALUES ('','{$content}','{$email}','{$name}','{$phone}','{$diachi}','{$product_id}','{$link_sp}','0','{$date}','{$date}','khachhang','','0')";
		return mysql_query($qr);
	}
	
	/*contact*/
	function insert_contact($name,$email,$phone,$diachi,$content){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `web_contact` VALUES ('','{$date}','{$date}','{$content}','{$email}','{$name}','{$phone}','{$diachi}','0','khachhang','','0')";
		return mysql_query($qr);
	}
	
	/*ham kiem tra du lieu*/
	function check_email($email){
		$pattern = '^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$';
		if(eregi($pattern, $email)) return true;
		else return false;
	}
	function remove_tag_html($string){
		return strip_tags($string, "");
	}
}// end trangchu
?>