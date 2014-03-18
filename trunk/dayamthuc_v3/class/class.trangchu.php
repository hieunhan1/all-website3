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
	function slider_banner($id,$menu_id=NULL,$lang=NULL){
		if($menu_id!=NULL) $menu_id = "AND menu_id LIKE '%,{$menu_id},%'"; else $menu_id = '';
		if($lang!=NULL) $lang = " AND lang='{$lang}'"; else $lang = '';
		$qr = "SELECT name,url_hinh,link,info FROM slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' {$menu_id} {$lang} ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,parent_id,title,metaDescription,metaKeyword,type_id FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu_one_id($id){
		$qr = "SELECT id,name,url,parent_id FROM menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function menu($level,$position=NULL,$lang=NULL){
		if($position!=NULL) $position = "AND position_id LIKE '%,{$position},%'"; else $position = '';
		if($lang!=NULL) $lang = "AND lang='{$lang}'"; else $lang = '';
		$qr = "SELECT id,name,url,url_hinh,title FROM menu WHERE `delete`=0 AND status=1 {$lang} {$position} AND parent_id ='{$level}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function getSubmenu($level,$position,$lang){
		$sql = $this->menu($level,$position);
		if(mysql_num_rows($sql) > 0){
			$view = '<ul>';
			while($row = mysql_fetch_array($sql)){
				$view .= "<li><a href=\"{$lang}/{$row['url']}\" >{$row['name']}</a>";
				$view .= $this->getSubmenu($row['id'],$position,$lang);
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
	function navigator($level,$lang){
		if($level == 0) return false;
		$qr = $this->menu_one_id($level);
		$row = mysql_fetch_array($qr);
		$view = '<span>&gt;&gt;</span><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a>'.$view;
		$view = $this->navigator($row['parent_id'],$lang).$view;
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
					$str .= "<a href='{$link}_page_{$i}/' style='font-weight:bold; background-color:#ED1E28'>{$i}</a>";
				} elseif($i>0) {
					$str .= "<a href='{$link}_page_{$i}/'>{$i}</a>";
				}
			}
		}
		return $str;
	}
	
	/*home*/
	function home_about($idMenu){
		$qr = "SELECT name,content,url_hinh FROM info WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' LIMIT 1";
		return mysql_query($qr);
	}
	function home_noi_bat($lang){
		$qr = "SELECT id,name,url FROM menu WHERE `delete`=0 AND status=1 AND other=1 AND lang='{$lang}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function home_info_noi_bat($id){
		$qr = "SELECT name,name_rewrite,url_hinh,menu_id FROM info WHERE `delete`=0 AND status=1 AND other=1 AND menu_id LIKE '%,{$id},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function home_info_new($lang){
		$qr = "SELECT name,name_rewrite,menu_id FROM info WHERE `delete`=0 AND status=1 AND `other`=1 AND lang='{$lang}' ORDER BY date_update DESC LIMIT 5";
		return mysql_query($qr);
	}
	
	/*detail*/
	function info_left($idMenu){
		$qr = "SELECT name,name_rewrite,description,menu_id FROM info WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function info_detail($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,description,content,metaKeyword,date_update FROM info WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function info_other($id,$menu_id){
		$qr = "SELECT name,name_rewrite FROM info WHERE `delete`=0 AND status=1 AND id<>'{$id}' AND menu_id LIKE '%,{$menu_id},%' ORDER BY date_update DESC LIMIT 5";
		return mysql_query($qr);
	}
	
	/*products*/
	function product_list($idMenu){
		$qr = "SELECT name,name_rewrite,url_hinh,description,menu_id,kichthuoc,price FROM products WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function product_detail($alias){
		$qr = "SELECT id,name,name_rewrite,url_hinh,kichthuoc,price,description,content,metaKeyword FROM products WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	
	/*support*/
	function support_select($idMenu){
		$qr = "SELECT name,chucvu,yahoo,skype,phone,email FROM support WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function support_menu($idMenu){
		$qr = "SELECT id,name FROM menu WHERE `delete`=0 AND status=1 AND type_id=5 AND parent_id ='{$idMenu}' ORDER BY `order`";
		return mysql_query($qr);
	}
	
	/*booking*/
	function menu_type($id,$lang){
		$qr = "SELECT id,name,url FROM menu WHERE `delete`=0 AND status=1 AND type_id='{$id}' AND lang='{$lang}' AND parent_id=0";
		return mysql_query($qr);
	}
	function booking_form(){
		$qr = "SELECT ma,name FROM booking_form WHERE `delete`=0 AND status=1 ORDER BY `name` DESC";
		return mysql_query($qr);
	}
	function booking_banggia_to($ma){
		$qr = "SELECT ma,booking_to.name FROM booking_to,booking_banggia WHERE booking_to.`delete`=0 AND booking_to.status=1 AND booking_to.ma=`to` AND `form`='{$ma}' ORDER BY booking_to.`name`";
		return mysql_query($qr);
	}
	function booking_banggia($form,$to){
		$qr = "SELECT name,weight,rate,myc,msc,mcc,tcs,awb,service,other FROM booking_banggia WHERE `delete`=0 AND status=1 AND `form`='{$form}' AND `to`='{$to}'";
		return mysql_query($qr);
	}
	function booking_insert($name,$email,$phone,$diachi,$message,$mathang,$ngaydi,$form,$to,$soluong,$nhietdo,$other,$volume_weight){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `booking` VALUES ('','{$name}','{$email}','{$phone}','{$diachi}','{$message}','{$mathang}','{$form}','{$to}','{$soluong}','{$nhietdo}','{$other}','{$volume_weight}','','0','{$date}','{$ngaydi}','khachhang','','0')";
		return mysql_query($qr);
	}
	
	/*track_trace*/
	function track_trace_select($ma_bill){
		$qr = "SELECT ma FROM tracktrace WHERE `delete`=0 AND status=1 AND ma_bill='{$ma_bill}'";
		return mysql_query($qr);
	}
	function check_ma_3($ma){
		$str1 = substr($ma,0,3);
		$str2 = substr($ma,3,8);
		return array($str1,$str2);
	}
	function check_ma_2($ma){
		$str1 = substr($ma,0,2);
		$str2 = substr($ma,2,20);
		return array($str1,$str2);
	}
	
	/*tracing_express*/
	function select_tracking_express($ma){
		$qr = "SELECT * FROM tracing_express WHERE `delete`=0 AND name='{$ma}'";
		return mysql_query($qr);
	}
	function select_tracking_express_detail($id){
		$qr = "SELECT name,notes,date_update FROM tracing_express_detail WHERE `delete`=0 AND id_tracing_express='{$id}' ORDER BY date_update, id";
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