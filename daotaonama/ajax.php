<?php
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $message!=''){
		if($tc->insert_contact($name,$email,$message)){
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