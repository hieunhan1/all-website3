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
		$email_nhan = $_POST['sendmail_nhatuyendung'];
		
		$arr = array(
		1=>'Chưa tốt nghiệp phổ thông',
		2=>'Tốt nghiệp phổ thông',
		3=>'Trung cấp',
		4=>'Cao đẳng',
		5=>'Đại học',
		6=>'Sau đại học');
		
		$qr = mysql_query("SELECT * FROM web_tuyendung_hoso WHERE `delete`=0 AND id='{$id}' LIMIT 1");
		$row = mysql_fetch_array($qr);
		
		$qr2 = mysql_query("SELECT web_tuyendung_cty.name as name_cty,web_tuyendung.name as name,name_rewrite,menu_id FROM web_tuyendung,web_tuyendung_cty WHERE web_tuyendung.id='{$row['tuyendung_id']}' AND tuyendung_cty_id=web_tuyendung_cty.id ");
		$row2 = mysql_fetch_array($qr2);
		
		if(!(mysql_num_rows($qr)==1 && mysql_num_rows($qr2)==1)){
			echo 0;
			return FALSE;
		}
		
		mysql_query("UPDATE web_tuyendung_hoso SET `status`=1 WHERE `delete`=0 AND id='{$id}' LIMIT 1");
		
		
		$link_tuyendung = '';
		
		$body = '<h2>Chào '.$row2['name_cty'].'</h2>
		<p style="line-height:22px; font-size:13pt; margin:15px 0"><b>'.$row2['name_cty'].'</b> có đăng tin tuyển dụng trên website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a></p>
		<p style="line-height:22px; font-size:13pt; margin:15px 0">Xem chi tiết thông tin tuyển dụng: <a href="http://www.dayamthuc.vn/'.$qt->link_detail($row2['menu_id']).$row2['name_rewrite'].'.html" target="_blank">'.$row2['name'].'</a></p>
		<p style="line-height:22px; font-size:13pt; margin:10px 0; font-weight:bold">Hồ sơ tuyển dụng gửi qua website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> như sau:</p>
		<p style="line-height:22px; font-size:13pt; margin:10px 0">
			<strong>Họ tên:</strong> '.$row['name'].'<br />
			<strong>Địa chỉ:</strong> '.$row['diachi'].'<br />
			<strong>Điện thoại:</strong> '.$row['phone'].'<br />
			<strong>Email:</strong> '.$row['email'].'<br />
			<strong>Trình độ:</strong> '.$arr[$row['trinhdo']].'<br />
			<strong>Kinh nghiệm làm việc:</strong> <span style="color:#5c5c5c">'.$row['content'].'</span>
		</p>';
		
		include_once('../../sendmail_smtp/send_nhatuyendung.php');
	}
}