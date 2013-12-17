<?php 
require_once('class.db.php');
require_once('functions.php');
class trangchu extends db {
	function XemChiTiet($idMenu, $idTin) {
		if($idMenu!='') $qr = "SELECT id,name,name_rewrite,url,url_hinh,title,metaDescription,metaKeyword,type_id FROM menu WHERE id='{$idMenu}' AND status=1 AND `delete`=0";
		else $qr = "SELECT id,name,name_rewrite,url_hinh,description,content,metaKeyword,other2 FROM info WHERE id='{$idTin}' AND status=1 AND `delete`=0";
		return mysql_query($qr);
	}
	function MenuChinh() {
		$qr = "SELECT id,name,url FROM menu WHERE status=1 AND `delete`=0 AND parent_id=0 AND position_id LIKE '%,2,%' ORDER BY `order`";
		return mysql_query($qr);
	}
	function MenuChinh_Sub($idMenuChinh) {
		$qr = "SELECT id,name,url FROM menu WHERE status=1 AND `delete`=0 AND parent_id='{$idMenuChinh}' AND position_id=1 ORDER BY `order`";
		return mysql_query($qr);
	}
	function MenuBottom() {
		$qr = "SELECT id,name,url FROM menu WHERE status=1 AND `delete`=0 AND parent_id=0 AND position_id LIKE '%2%' ORDER BY `order`";
		return mysql_query($qr);
	}
	function Slider() {
		$qr = "SELECT name, url, url_hinh FROM quangcao WHERE status=1 AND `delete`=0 AND position_id=1 ORDER BY `order`";
		return mysql_query($qr);
	}
	//////////////TRANG CHU/////////////
	function chuongtrinhdaotao($id){
		$qr = "SELECT id,name FROM menu WHERE status=1 AND `delete`=0 AND parent_id='{$id}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function cmchuongtrinhdaotao($id){
		$qr = "SELECT id,name FROM menu WHERE status=1 AND `delete`=0 AND parent_id='{$id}' ORDER BY `order`";
		return mysql_query($qr);
	}
	function DanhMucTrangChu() {
		$qr = "SELECT id,name,url,url_hinh FROM menu WHERE status=1 AND `delete`=0 AND other=1 ORDER BY `order`";
		return mysql_query($qr);
	}
	function BaiVietTrangChu($idMenuTC,$limit) {
		if($limit != NULL) $limit = "LIMIT {$limit}";
		$qr = "SELECT id,name,name_rewrite,description,url_hinh FROM info WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$idMenuTC},%' ORDER BY date_update DESC {$limit}";
		return mysql_query($qr);
	}
	function ThongTinCanBiet(){
		$qr = "SELECT id, name, url FROM menu WHERE status=1 AND `delete`=0 AND parent_id=10 AND position_id LIKE '%4%' ORDER BY `order`";
		return mysql_query($qr);
	}
	function NewsEvent($id,$limit) {
		$qr = "SELECT id,name,name_rewrite,url_hinh FROM info WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$id},%' ORDER BY date_update DESC LIMIT {$limit}";
		return mysql_query($qr);
	}
	function thongthinpopup() {
		$qr = "SELECT id,name,name_rewrite,url_hinh FROM info WHERE status=1 AND `delete`=0 AND `other`=1 ORDER BY date_update DESC LIMIT ".max_product;
		return mysql_query($qr);
	}
	//////////////END TRANG CHU/////////////
	/////////BAI VIET//////////
	function DMBaiViet($idMenu, $from, $max_results) {
		$qr = "SELECT id,name,name_rewrite,description,url_hinh FROM info WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT $from, $max_results";
		return mysql_query($qr);
	}
	function DMBaiViet_All($idMenu) {
		$qr = "SELECT COUNT(id) as Num FROM info WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$idMenu},%'";
		return mysql_query($qr);
	}
	function BaiVietMoiHon($idTin, $idMenu) {
		$qr = "SELECT id,name,name_rewrite,url_hinh,description FROM info WHERE status=1 AND `delete`=0 AND id>'$idTin' AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 0,2";
		return mysql_query($qr);
	}
	function BaiVietCuHon($idTin, $idMenu) {
		$qr = "SELECT id,name,name_rewrite,url_hinh,description FROM info WHERE status=1 AND `delete`=0 AND id<'$idTin' AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC LIMIT 0,2";
		return mysql_query($qr);
	}
	function NavigatorBaiViet($idTin) {
		$qr = mysql_query("SELECT menu_id FROM info WHERE id='$idTin'");
		$row = mysql_fetch_array($qr);
		$id = trim($row['menu_id'],',');
		$qr = "SELECT name,url FROM menu WHERE id='$id'";
		return mysql_query($qr);
	}
	/////////////END BAI VIET//////////
	function PhotoAlbum($idMenu) {
		$qr = "SELECT name,url_hinh FROM photo_gallery WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function Video($idMenu) {
		$qr = "SELECT id,name,name_rewrite,url_hinh,description FROM video WHERE status=1 AND `delete`=0 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function VideoChiTiet($id,$idMenu) {
		if($id != 1) $qr = "SELECT name, url FROM video WHERE status=1 AND id='$id'";
		else $qr = "SELECT name, url FROM video WHERE status=1 AND `delete`=0 AND Khac1=1 AND id='{$idMenu}' ORDER BY `order` DESC, date_update DESC LIMIT 0,1";
		return mysql_query($qr);
	}
	/* UPDATE WEBSITE */
	function thuvien($idMenu,$type){
		$qr = "SELECT id,name,url,url_hinh FROM menu WHERE status=1 AND `delete`=0 AND parent_id='{$idMenu}' AND type_id='{$type}' ORDER BY `order` ASC";
		return mysql_query($qr);
	}
	function thuvien_sub($idMenu){
		$qr = "SELECT id,name,url,url_hinh,type_id FROM menu WHERE status=1 AND `delete`=0 AND parent_id='{$idMenu}' ORDER BY `order` ASC, date_update DESC";
		return mysql_query($qr);
	}
	function menu_dm($name_rewrite){
		$qr = "SELECT id,name,url,url_hinh,type_id FROM menu WHERE status=1 AND `delete`=0 AND name_rewrite='{$name_rewrite}' ";
		return mysql_query($qr);
	}
	function menu_xt($name_rewrite){
		$qr = mysql_query("SELECT menu_id FROM info WHERE status=1 AND name_rewrite='{$name_rewrite}' ");
		$row = mysql_fetch_array($qr);
		$menu_id = trim($row['menu_id'],',');
		$qr = "SELECT id,name,url,url_hinh,type_id FROM menu WHERE status=1 AND id='{$menu_id}' ";
		return mysql_query($qr);
	}
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
<meta name="abstract" content="Trường dạy nghề ẩm thực NETSPACE" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />';
	}
	function home(){
		$qr = "SELECT id,name,name_rewrite,url_hinh,price,menu_id FROM product WHERE `delete`=0 AND status=1 AND `other`=1 ORDER BY `date_update` DESC LIMIT 9";
		return mysql_query($qr);
	}
	function slider_banner($id){
		$qr = "SELECT name,url_hinh,link FROM slider_banner WHERE `delete`=0 AND status=1 AND position_id='{$id}' ORDER BY date_update DESC";
		return mysql_query($qr);
	}
	function menu_one($alias){
		$qr = "SELECT id,name,name_rewrite,url,url_hinh,title,metaDescription,metaKeyword,type_id FROM menu WHERE `delete`=0 AND status=1 AND name_rewrite='{$alias}'";
		return mysql_query($qr);
	}
	function menu($level,$position){
		$qr = "SELECT id,name,url FROM menu WHERE `delete`=0 AND status=1 AND position_id LIKE '%,{$position},%' AND parent_id ='{$level}' ORDER BY `order`";
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
	function detail($type,$alias){
		switch($type){
			case 2 : $qr = "SELECT id,name,name_rewrite,url_hinh,description,content,metaKeyword FROM info WHERE status=1 AND `delete`=0 AND name_rewrite='{$alias}'"; break;
			case 6 : $qr = "SELECT id,name,name_rewrite,url_hinh,link_video,description,content,metaKeyword FROM video WHERE status=1 AND `delete`=0 AND name_rewrite='{$alias}'"; break;
		}
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
					$str .= "<a href='{$link}{$i}/' style='color:#F00; font-weight:bold; background-color:#ffffcc'>{$i}</a>";
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
	/*contact*/
	function insert_contact($name,$email,$phone,$diachi,$message){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `contact` VALUES ('','{$name}','{$email}','{$phone}','{$diachi}','{$message}','','0','{$date}','{$date}','khachhang','','0')";
		return mysql_query($qr);
	}
	
	/*dang ky truc tuyen*/
	function dangky_tructuyen($name,$ngaysinh,$email,$phone,$diachi,$totnghiep,$khoahoc,$noihoc,$other,$hoivien){
		$date = date('Y-m-d H:i:s');
		$qr = "INSERT INTO `dangky_tructuyen` VALUES ('','{$name}','{$ngaysinh}','{$email}','{$phone}','{$diachi}','{$totnghiep}','{$khoahoc}','{$noihoc}','{$other}','{$hoivien}','','','0','{$date}','{$date}','khachhang','','0')";
		mysql_query($qr);
		return mysql_insert_id();
	}
	
}// end trangchu
?>