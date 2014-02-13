<?php
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

if($_POST['dangky_tructuyen']=='dangky_tructuyen'){
	$name = trim($_POST['name']);
	$ngaysinh = trim($_POST['ngaysinh']);
	$noisinh = trim($_POST['noisinh']);
	$chieucao = trim($_POST['chieucao']);
	$cannang = trim($_POST['cannang']);
	$cmnd = trim($_POST['cmnd']);
	$ngaycap = trim($_POST['ngaycap']);
	$noicap = trim($_POST['noicap']);
	$hokhau = trim($_POST['hokhau']);
	$choohientai = trim($_POST['choohientai']);
	$dienthoai = trim($_POST['dienthoai']);
	$email = trim($_POST['email']);
	$trangmang_xh = trim($_POST['trangmang_xh']);
	$nghenghiep = trim($_POST['nghenghiep']);
	$noicongtac = trim($_POST['noicongtac']);
	$trinhdo = trim($_POST['trinhdo']);
	$ngoaingu = trim($_POST['ngoaingu']);
	$sothich = trim($_POST['sothich']);
	$metaDescription = trim($_POST['metaDescription']);
	$kenh_timkiem = trim($_POST['kenh_timkiem']);
	$other2 = trim($_POST['other2']);
	$other3 = trim($_POST['other3']);
	$other4 = trim($_POST['other4']);
	
	
	$qr =  "INSERT INTO `thisinh` VALUES (NULL, 'name', 'name_rewrite', 'url_hinh', 'metaDescription', 'metaKeyword', '123', '2014-02-13', 'noisinh', 'chieucao', 'cannang', 'sodo', 'cmnd', '2014-02-13',  'noicap', 'hokhau', 'choohientai', 'dienthoai', 'email', 'trangmang_xh', 'nghenghiep', 'noicongtac', 'trinhdo', 'ngoaingu', 'kenh_timkiem', 'sothich', 'link_video', 'other2', 'other3', 'other4',  '0', 'vi', ',6,19,', '1', '2014-02-13 17:30:10', '2014-02-13 17:30:10', 'admin', NULL , '0') ";
	return true;
}

mysql_close();
return true;