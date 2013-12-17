<?php
require_once('config.php');

function set_cookie($name, $value = ""){
	$expire_date = time() + 60*60*24*14;
	return setcookie($name,$value,$expire_date,"/","");
}
if($_POST['tinhthanh']=='tinhthanh'){
	$id = $_POST['id'];
	if($id==1){
		set_cookie('tinhthanh','Tp.HCM');
		set_cookie('email','info@dayamthuc.vn');
	}elseif($id==2){
		set_cookie('tinhthanh','Đà Nẵng');
		set_cookie('email','danang@dayamthuc.vn');
	}elseif($id==3){
		set_cookie('tinhthanh','Cần Thơ');
		set_cookie('email','cantho@dayamthuc.vn');
	}	
	return true;
}

if($_POST['popup']=='popup'){
	$id = $_POST['id'];
	set_cookie('popup',$id);
}

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $message!=''){
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

if($_POST['dangky']=='dangky'){
	$name = trim($_POST['HoTen']);
	$email = trim($_POST['Email']);
	$phone = str_replace(' ','',$_POST['DienThoai']);
	$diachi = trim($_POST['DiaChi']);
	$ngaysinh = trim($_POST['NgaySinh']);
	
	if($name!='' && $email!='' && $phone!='' && $diachi!=''){
		$id = $tc->dangky_tructuyen($name,$ngaysinh,$email,$phone,$diachi,$_POST['TotNghiep'],$_POST['KhoaHoc'],$_POST['NoiHoc'],$_POST['thongtin_khac'],$_POST['ThanhVienHoi']);
		echo '1';
		include_once('sendmail/sendmailDK.php');
		return true;
	}else{
		echo '0';
		return false;
	}
}