<?php
include_once('config.php');

if($_POST['post_nhanxet']=='post_nhanxet'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$content = trim($_POST['content']);
	$alias = trim($_POST['alias']);
	if($name!='' && $email!='' && $content!='' && $alias!=''){
		$tc->insert_nhanxet($name,$email,$content,$alias);
		$view_post = '<div class="item_nx">
			<div style="color:#999; text-align:center; width:40px; margin-right:20px; float:left">'.$tc->datetime_nx(date('Y-m-d H:i:s')).'</div>
			<span style="font-weight:bold; color:#338DB7">'.$name.' </span>'.$content.'
			<div style="clear:both; height:1px"></div>
		</div>';
		echo $view_post;
		return true;
	}else{
		echo '0';
		return false;
	}
}
if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$content = trim($_POST['content']);
	if($name!='' && $email!='' && $content!=''){
		if($tc->insert_contact($name,$email,$content)){
			echo '1';
			include_once('sendmail/sendmail.php');
		}
	}else{
		echo '0';
		return false;
	}
}