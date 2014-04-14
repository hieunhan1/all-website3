<?php
session_start();
$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');
include_once('class/class.trangchu.php');
$tc = new trangchu();

$lang = $_POST['lang'];
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			include_once('sendmail/sendmail.php');
			return true;
		}else{
			echo '0';
			return false;
		}
	}else{
		echo '0';
		return false;
	}
}

if($_POST['check_dathang']=='check_dathang'){
	if(count($_SESSION['list_soluong']) > 0) echo '<input type="button" name="btn_thanhtoan" value="THANH TOÁN" class="btn_popup" style="background-color:#E66460" />';
	return true;
}

if($_POST['dathang']=='dathang'){
	$id = trim($_POST['id']);
	$name = trim($_POST['name']);
	$soluong = trim($_POST['soluong']);
	
	$price = trim($_POST['price_km']);
	if($price==0 || $price=='') $price = trim($_POST['price']);
	
	if($id!='' && $name!='' && $price!='' && $soluong!=''){
		$_SESSION['list_name'][$id] = $name;
		$_SESSION['list_price'][$id] = $price;
		$_SESSION['list_soluong'][$id] += $soluong;
		echo 'http://'.$domain.'/gio-hang/';
		return true;
	}else{
		echo 0;
		return false;
	}
}

if(@$_POST['trash']){
	$id = $_POST["id"];
	unset($_SESSION['list_name'][$id]);
	unset($_SESSION['list_price'][$id]);
	unset($_SESSION['list_soluong'][$id]);
}
if(@$_POST['soluong']){
	$id = $_POST["id"];
	$soluong = $_POST["soluong"];
	$_SESSION['list_soluong'][$id] = $soluong;
}
if(@$_POST['huydh']){
	session_destroy();
}

if($_POST['form_thanhtoan']=='form_thanhtoan'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $phone!='' && $diachi!=''){
		$id_order = date('ymdis');
		$sosp = count($_SESSION['list_soluong']);
		if ($sosp > 0){
			reset($_SESSION['list_soluong']);
			reset($_SESSION['list_price']);
			for ($i=0; $i<$sosp; $i++) {
				$products_id = key($_SESSION['list_soluong']);
				$dongia = current($_SESSION['list_price']);
				$soluong = current($_SESSION['list_soluong']);
				$tien = $dongia*$soluong;
				$tongtien += $tien;
				$tc->insert_donhang_chitiet($id_order,$products_id,$dongia,$soluong,$tien);
				next($_SESSION['list_soluong']);
				next($_SESSION['list_price']);
			}//end for
		}
		$tc->insert_donhang($id_order,$name,$email,$phone,$diachi,$message,$tongtien);
		session_destroy();
		echo 1;
		return true;
	}else{
		echo '0';
		return false;
	}
}

if(@$_POST['nop_hs']){
	$tuyendung_id = trim($_POST['nop_hs']);
	$name = trim($_POST['name']);
	$diachi = trim($_POST['diachi']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$trinhdo = trim($_POST['trinhdo']);
	$content = trim($_POST['content']);
	
	if($tuyendung_id!='' && strlen($name)>5 && strlen($diachi)>5 && strlen($email)>5 && strlen($phone)>9 && $trinhdo!='' && strlen($content)>49){
		echo '1';
		$tc->tuyendung_hoso($name,$content,$diachi,$phone,$email,$trinhdo,$tuyendung_id);
		return true;
	}else{
		echo '0';
		return false;
	}
}

mysql_close();
return true;