<?php
session_start();
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

if($_POST['dathang']=='dathang'){
	$id = trim($_POST["id"]);
	$name = trim($_POST["name"]);
	$price = trim($_POST["price"]);
	$soluong = trim($_POST["soluong"]);
	if($id!='' && $name!='' && $price!='' && $soluong!=''){
		$_SESSION['list_name'][$id] = $name;
		$_SESSION['list_price'][$id] = $price;
		$_SESSION['list_soluong'][$id] += $soluong;
		echo 'http://www.goldstars.com.vn/gio-hang-banh-keo-han-quoc/';
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
	
	if($name!='' && $email!='' && $phone!=''){
		$id = $tc->insert_donhang($name,$email,$phone,$diachi,$message);
		
		$sosp = count($_SESSION['list_soluong']);
		if ($sosp > 0){
			reset($_SESSION['list_soluong']);
			for ($i=0; $i<$sosp; $i++) {
				$products_id = key($_SESSION['list_soluong']);
				$soluong = current($_SESSION['list_soluong']);
				$tc->insert_donhang_chitiet($id,$products_id,$soluong);
				next($_SESSION['list_soluong']);
			}//end for
		}
		
		session_destroy();
		echo 1;
		return true;
	}else{
		echo '0';
		return false;
	}
}

mysql_close();
return true;