<?php
session_start();
$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');
include_once('class/class.trangchu.php');
$tc = new trangchu();

$lang = 'vi';
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			include_once('sendmail_smtp/send_contact.php');
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

mysql_close();
return true;