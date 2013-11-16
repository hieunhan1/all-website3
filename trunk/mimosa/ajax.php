<?php
session_start();

if(!@$_POST['lang']) $lang = 'vi';
else $lang = $_POST['lang'];

include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	$tentranh = trim($_POST['tentranh']);
	$linktranh = trim($_POST['linktranh']);
	$kichthuoc = trim($_POST['kichthuoc']);
	$tranhmythuat = trim($_POST['tranhmythuat']);
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message,$tentranh,$linktranh,$kichthuoc,$tranhmythuat)){
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
	$kichthuoc = trim($_POST["kichthuoc"]);
	$price = trim($_POST["price"]);
	$lang = trim($_POST["lang"]);
	if($id!='' && $name !='' && $lang!=''){
		$qr = mysql_query("SELECT url FROM menu WHERE `delete`=0 AND status=1 AND type_id=4 AND lang='$lang'");
		$row = mysql_fetch_array($qr);
		$_SESSION['name'][$id] = $name;
		$_SESSION['kichthuoc'][$id] = $kichthuoc;
		$_SESSION['price'][$id] = $price;
		$_SESSION['daySoLuong'][$id] += 1;
		echo "/{$lang}/".$row['url'];
		return true;
	}else{
		echo 0;
		return false;
	}
}
if(@$_POST['trash']){
	$id = $_POST["id"];
	unset($_SESSION['name'][$id]);
	unset($_SESSION['kichthuoc'][$id]);
	unset($_SESSION['price'][$id]);
	unset($_SESSION['daySoLuong'][$id]);
}
if(@$_POST['soluong']){
	$id = $_POST["id"];
	$soluong = $_POST["soluong"];
	$_SESSION['daySoLuong'][$id] = $soluong;
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
		
		$sosp = count($_SESSION['daySoLuong']);
		if ($sosp > 0){
			reset($_SESSION['daySoLuong']);
			for ($i=0; $i<$sosp; $i++) {
				$products_id = key($_SESSION['daySoLuong']);
				$soluong = current($_SESSION['daySoLuong']);
				$tc->insert_donhang_chitiet($id,$products_id,$soluong);
				next($_SESSION['daySoLuong']);
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