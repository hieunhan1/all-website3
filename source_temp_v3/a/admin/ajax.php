<?php
session_start();
if(@$_SESSION["username_admin"]) {
	$user = $_SESSION["username_admin"];
	
	require_once 'config.php';
	$datetime = date('Y-m-d H:i:s');
	
	/*tai khoan*/
	if(isset($_POST['KiemTraUser'])) {
		$user = $_POST['KiemTraUser'];
		$total = mysql_result($qt->Users_KiemTraUser($user),0);
		if($total == 0 & eregi("^[[:alnum:]]+$", $user)) echo '<font color="#00CC00">Username hợp lệ</font>'; else echo '<font color="#FF0000">Username đã tồn tại hoặc có ký tự đặc biệt</font>';
	}
	if(isset($_POST['KiemTraEmail'])) {
		$email = $_POST['KiemTraEmail'];
		$total = mysql_result($qt->Users_KiemTraEmail($email),0);
		
		$pattern = '^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$';
		
		if (eregi($pattern, $email) & $total==0) echo '<font color="#00CC00">Email hợp lệ</font>';
		else echo '<font color="#FF0000">Email đã tồn tại hoặc chưa đúng định dạng</font>';
	}
	if(isset($_POST['ResetPass']) && $user=='admin') {
		$id = $_POST['id'];
		$user = $_POST['name'];
		$qt->Users_ResetPass($id,$user);
		echo '1';
		return true;
	}else{
		echo '0';
		return false;
	}
	
	/*status detele*/
	if(isset($_POST['status'])){
		$id = $_POST['id'];
		if($_POST['status'] == '1') $status = 0; else $status = 1;
		$url = $_POST['url'];
		$qr = "UPDATE `{$url}` SET `status`='{$status}',user_update='{$user}',date_update='{$datetime}' WHERE `delete`=0 AND `id`='{$id}' LIMIT 1 ";
		mysql_query($qr);
	}
	if(isset($_POST['delete_one'])){
		$id = $_POST['id'];
		$url = $_POST['url'];
		$qr = "UPDATE `{$url}` SET `delete`='1',user_update='{$user}',date_update='{$datetime}' WHERE `delete`=0 AND `id`='{$id}' LIMIT 1 ";
		mysql_query($qr);
	}
		
	//echo '111111111';	
}