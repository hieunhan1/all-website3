<?php
include_once('config.php');

if($_POST['post_nhanxet']=='post_nhanxet'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$content = trim($_POST['content']);
	$alias = trim($_POST['alias']);
	$link_baiviet = trim($_POST['link_baiviet']);
	if($name!='' && $email!='' && $content!='' && $alias!=''){
		$tc->insert_nhanxet($name,$email,$content,$alias);
		$view_post = '<div class="item_nx">
			<div style="color:#999; text-align:center; width:40px; margin-right:20px; float:left">'.$tc->datetime_nx(date('Y-m-d H:i:s')).'</div>
			<span style="font-weight:bold; color:#338DB7">'.$name.': </span> <span style="color:#F00">đăng nhận xét thành công.</span>
			<div style="clear:both; height:1px"></div>
		</div>';
		echo $view_post;
		include_once('sendmail_smtp/sendmail_nhanxet.php');
		return true;
	}else{
		echo '0';
		return false;
	}
}
if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$phone = trim($_POST['phone']);
	$email = trim($_POST['email']);
	$content = trim($_POST['content']);
	if($name!='' && $phone!='' && $email!='' && $content!=''){
		if($tc->insert_contact($name,$phone,$email,$content)){
			echo '1';
			include_once('sendmail_smtp/sendmail.php');
			return true;
		}
	}else{
		echo '0';
		return false;
	}
}

if($_POST['dangky']=='dangky'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	$khoahoc = trim($_POST['khoahoc']);
	
	if($name!='' && $email!='' && $phone!='' && $diachi!='' && $khoahoc!=''){
		if($tc->insert_dangky($name,$email,$phone,$diachi,$message,$khoahoc)){
			$id = mysql_insert_id();
			include_once('sendmail_smtp/sendmail_dk.php');
			echo '1';
			return true;
		}
	}else{
		echo '0';
		return false;
	}
}