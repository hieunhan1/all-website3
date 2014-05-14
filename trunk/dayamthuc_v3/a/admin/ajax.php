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
		
	/*other*/
	// cap nhat: dang ky, lien he, nop ho so
	if(isset($_POST['hocvien_dangky'])){
		$qr = mysql_query("SELECT id FROM web_dangky_tructuyen WHERE `delete`=0 AND `status`=0 ");
		echo mysql_num_rows($qr);
	}
	if(isset($_POST['hocvien_lienhe'])){
		$qr = mysql_query("SELECT id FROM web_contact WHERE `delete`=0 AND `status`=0 ");
		echo mysql_num_rows($qr);
	}
	if(isset($_POST['hoso_tuyendung'])){
		$qr = mysql_query("SELECT id FROM web_tuyendung_hoso WHERE `delete`=0 AND `status`=0 ");
		echo mysql_num_rows($qr);
	}
	
	//gui thong tin
	if(isset($_POST['gui_thongtin'])){
		$id_nv = $_POST['gui_thongtin'];
		$id_dk = $_POST['id_dk'];
		
		$qr = mysql_query("SELECT id,name,email FROM web_dangky_nhanvien WHERE `delete`=0 AND `status`=1 AND id='{$id_nv}' ");
		$row = mysql_fetch_array($qr);
		$email_nhan = $row['email'];
		$name_nhan = $row['name'];
		
		$qr = mysql_query("SELECT id,name,khoahoc,noihoc FROM web_dangky_tructuyen WHERE `delete`=0 AND id='{$id_dk}' ");
		$row = mysql_fetch_array($qr);
		$id = $row['id'];
		$khoahoc = $row['khoahoc'];
		$name = $row['name'];
		$noihoc = $row['noihoc'];
		include_once('../../sendmail_smtp/send_dangky.php');
		
		if( mysql_query("UPDATE web_dangky_nhanvien SET date_update='".date('Y-m-d H:i:s')."' WHERE `delete`=0 AND id='{$id_nv}' ") && mysql_query("UPDATE web_dangky_tructuyen SET `status`=2,nhanvien_lienhe='{$id_nv}' WHERE `delete`=0 AND id='{$id_dk}' ") ){
			echo '1';
		}else echo '0';
	}
	
	//gui lien he
	if(isset($_POST['gui_lienhe'])){
		$id_nv = $_POST['gui_lienhe'];
		$id_dk = $_POST['id_dk'];
		
		$qr = mysql_query("SELECT id,name,email FROM web_dangky_nhanvien WHERE `delete`=0 AND `status`=1 AND id='{$id_nv}' ");
		$row = mysql_fetch_array($qr);
		$email_nhan = $row['email'];
		$name_nhan = $row['name'];
		
		$qr = mysql_query("SELECT id,name,message FROM web_contact WHERE `delete`=0 AND id='{$id_dk}' ");
		$row = mysql_fetch_array($qr);
		$id = $row['id'];
		$name = $row['name'];
		$message = $row['message'];
		include_once('../../sendmail_smtp/send_contact.php');
		
		if( mysql_query("UPDATE web_dangky_nhanvien SET date_update='".date('Y-m-d H:i:s')."' WHERE `delete`=0 AND id='{$id_nv}' ") && mysql_query("UPDATE web_contact SET `status`=2,nhanvien_lienhe='{$id_nv}' WHERE `delete`=0 AND id='{$id_dk}' ") ){
			echo '1';
		}else echo '0';
	}
	
	//sendmail nha tuyen dung
	if(isset($_POST['sendmail_nhatuyendung'])){
		$id = $_POST['id'];
		$email_ntd = $_POST['sendmail_nhatuyendung'];
		
		$qr = mysql_query("SELECT * FROM web_tuyendung_hoso WHERE `delete`=0 AND id='{$id}' LIMIT 1");
		$row = mysql_fetch_array($qr);
		
	}
}