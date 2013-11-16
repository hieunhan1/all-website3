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

if($_POST['dathang']=='dathang'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$content = trim($_POST['content']);
	$id = trim($_POST['id']);
	$name_sp = trim($_POST['name_sp']);
	$link_sp = 'http://'.$domain.trim($_POST['link_sp']);
	if($name!='' && $email!='' && $phone!='' && $id!='' && $name_sp!=''){
		if($tc->insert_order($id,$name_sp,$link_sp,$name,$email,$phone,$diachi,$content)){
			echo '1';
			include_once('sendmail/send_order.php');
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