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
	function home_menu($id){
		$qr = "SELECT id,name,url,url_hinh FROM menu WHERE `delete`=0 AND status=1 AND id='{$id}'";
		return mysql_query($qr);
	}
	function home_info($idMenu,$limit){
		$qr = "SELECT name,name_rewrite,url_hinh,description,date_update,menu_id FROM info WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY `date_update` DESC LIMIT {$limit}";
		return mysql_query($qr);
	}
	function slider_banner($id){
		$qr = "SELECT name,url_hinh,link,info FROM slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function home_info_foo(){
		$qr = "SELECT name,name_rewrite,menu_id FROM info WHERE `delete`=0 AND status=1 ORDER BY `date_update` DESC LIMIT 5";
		return mysql_query($qr);
	}
	function home_info_foo_comment(){
		$qr = "SELECT info.name,name_rewrite,url_hinh,menu_id,count(info.id) as total FROM info_comment,info WHERE info_comment.status=1 AND info_alias=name_rewrite GROUP BY info_alias ORDER BY total DESC LIMIT 3";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,title,metaDescription,metaKeyword,type_id FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
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
	function navigator($url,$name,$title,$heading=NULL){
		if($heading!=NULL) $heading = "<{$heading}>{$title}</{$heading}>";
		else $heading = "<h1>{$title}</h1>";
		return '<div id="navigator"><a href="'.$url.'" title="'.$title.'">'.$heading.'</a></div><div style="clear:both; height:1px"></div>';	
	}
	function detail($alias,$type=NULL){
		if($type==NULL){
			$qr = "SELECT id,name,name_rewrite,url_hinh,description,content,date_create,metaKeyword,menu_id FROM info WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
			return mysql_query($qr);
		}else{
			$qr = "SELECT id,name,name_rewrite,url_hinh,price,link FROM thanhtoan_sanpham WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
			return mysql_query($qr);
		}
	}
	function ds_nganhang($loaithe){
		$qr = "SELECT manh,name,url_hinh FROM thanhtoan_nganhang WHERE `delete`=0 AND status=1 AND loaithe='{$loaithe}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function insert_khachhang($id,$name,$country,$gender,$email,$dienthoai,$ip,$checksum,$thanhtoan_error,$ma_nganhang,$ma_sanpham){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO thanhtoan_khachhang VALUES ('{$id}','{$name}','{$country}','{$gender}','{$email}','{$dienthoai}','{$ip}','{$checksum}','{$thanhtoan_error}','{$ma_nganhang}','{$ma_sanpham}','0','{$date}',NULL ,'khachhang',NULL ,'0')";
		return mysql_query($qr);
	}
	function view_thanhtoan_trave($id){
		$qr = "SELECT thanhtoan_khachhang.name,gender,email,thanhtoan_khachhang.status,thanhtoan_sanpham.name as tensp,url_hinh,price FROM thanhtoan_khachhang,thanhtoan_sanpham WHERE thanhtoan_khachhang.`delete`=0 AND thanhtoan_khachhang.id='{$id}' AND ma_sanpham=thanhtoan_sanpham.id";
		return mysql_query($qr);
	}
	function view_thanhtoan_error($id){
		$qr = "SELECT name FROM thanhtoan_error WHERE status=1 AND `delete`=0 AND ma='{$id}'";
		return mysql_query($qr);
	}
	function update_khachhang($id,$stt){
		$qr = mysql_query("SELECT thanhtoan_error FROM thanhtoan_khachhang WHERE `delete`=0 AND id='{$id}'");
		if(mysql_num_rows($qr)==1){
			$row = mysql_fetch_array($qr);
			$error = $row['thanhtoan_error'].",{$stt}";
			mysql_query("UPDATE thanhtoan_khachhang SET status=1,thanhtoan_error='{$error}' WHERE `delete`=0 AND id='{$id}'");
		}
	}
	function list_khoahoc(){
		$qr = "SELECT name,name_rewrite,url_hinh,price FROM thanhtoan_sanpham WHERE status=1 AND `delete`=0 ORDER BY date_update DESC";
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
			if($page_number > 1){
				$prev = ($page_number - 1);
				$str .= "<a href='{$link}{$prev}/'>Previous</a>";
			}
			for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
				if($page_number == $i){
					$str .= "<a href='{$link}{$i}/' style='color:#FFF; font-weight:bold; background-color:#338DB7'>{$i}</a>";
				} elseif($i>0) {
					$str .= "<a href='{$link}{$i}/'>{$i}</a>";
				}
			}
			if($page_number < $total_pages){
				$next = ($page_number + 1);
				$str .= "<a href='{$link}{$next}/'>Next</a>";
			}
		}
		return $str;
	}
	function baivietkhac($idMenu,$idDetail){
		$qr = "SELECT name,name_rewrite FROM info WHERE `delete`=0 AND status=1 AND id<>'$idDetail' AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 6";
		return mysql_query($qr);
	}
	function insert_nhanxet($name,$email,$content,$alias){
		$datetime = date('Y-m-d H:i:s');
		$qr = "INSERT INTO info_comment VALUES ('','{$datetime}','{$datetime}','{$content}','{$email}','{$name}','0','{$alias}','khachhang','','0')";
		return mysql_query($qr);
	}
	function insert_contact($name,$email,$content){
		$datetime = date('Y-m-d H:i:s');
		$qr = "INSERT INTO contact VALUES ('','{$datetime}','{$datetime}','{$content}','{$email}','{$name}','0','khachhang','','0')";
		return mysql_query($qr);
	}
	function view_nhanxet($alias){
		$qr = "SELECT name,content,date_create FROM info_comment WHERE `delete`=0 AND status=1 AND info_alias='{$alias}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function datetime($datetime){
		$date = date("d F Y",strtotime($datetime));
		$date = explode(' ',$date);
		
		return "<p style='font-size:250%; font-weight:bold; padding-bottom:5px'>{$date[0]}</p>
		<p>{$date[1]}</p>
		<p>{$date[2]}</p>";
	}
	function datetime_nx($datetime){
		$date = date("d F Y H:i",strtotime($datetime));
		$date = explode(' ',$date);
		
		return "<p style='font-size:110%; font-weight:bold'>{$date[3]}</p>
		<p>{$date[0]}</p>
		<p>{$date[1]}</p>";
	}
	function check_email($email){
		$pattern = '^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$';
		if(eregi($pattern, $email)) return true;
		else return false;
	}
}// end trangchu
?>