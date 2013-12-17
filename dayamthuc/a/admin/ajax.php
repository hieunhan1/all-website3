<?php session_start();
if(@$_SESSION["id_admin"]) {
	$user = $_SESSION["user_admin"];
	
	require_once 'config.php';
	require_once DIR.'class.quantri.php';
	$qt = new quantri();
	
	require_once DIR.'class.sql.php';
	$sql = new sql();
	
	if(@$_POST['delete']){
		$type = 3;
		$table = $_POST['page'];
		$id = $_POST['id'];
		$sql->get_sql($type,$table,$user,$id);
		$sql->executable();
	}
	if(@$_POST['status']){
		$type = 7;
		$table = $_POST['page'];
		$set = $_POST['set'];
		$id = $_POST['id'];
		$sql->get_sql($type,$table,$user,$set,$id);
		echo $sql->executable();
	}
	
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
	if(isset($_POST['ResetPass']) & $_SESSION["idUser1"]==25) {
		$user = $_POST['ResetPass'];
		$qt->Users_ResetPass($user);
	}
	if(@$_POST['info_id']){
		$qr = mysql_query("SELECT name FROM info WHERE id=".$_POST['info_id']);
		$row = mysql_fetch_array($qr);
		echo $row['name'];
	}
	
	if($_POST['gui_thongtin']=='gui_thongtin'){
		$date = date('Y-m-d H:i:s');
		$id = $_POST['id'];
		$name_hv = $_POST['name'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$noihoc = $_POST['noihoc'];
		$nhanvien = $_POST['nhanvien'];
		
		$qr = mysql_query("SELECT name,email FROM dangky_nhanvien WHERE `delete`=0 AND id='{$nhanvien}'");
		$row_nv = mysql_fetch_array($qr);
		$email_nhan = $row_nv['email'];
		$name = $row_nv['name'];
		$subject = $_POST['khoahoc'];
		
		mysql_query("UPDATE dangky_nhanvien SET date_update='{$date}' WHERE `delete`=0 AND id='{$nhanvien}'");
		mysql_query("UPDATE dangky_tructuyen SET nhanvien_lienhe='{$nhanvien}' WHERE `delete`=0 AND id='{$id}'");
		include_once('../../sendmail_smtp/send.php');
	}
}
?>