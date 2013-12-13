<?php
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


mysql_close();
return true;