<?php
include_once('config.php');

function set_cookie($name, $value = ""){
	$expire_date = time() + 60*60*24*14;
	return setcookie($name,$value,$expire_date,"/","");
}

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$content = trim($_POST['content']);
	if($name!='' && $email!='' && $content!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$content)){
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