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
		echo $qr = "UPDATE `{$url}` SET `status`='{$status}',user_update='{$user}',date_update='{$datetime}' WHERE `delete`=0 AND `id`='{$id}' LIMIT 1 ";
		mysql_query($qr);
	}
	if(isset($_POST['delete_one'])){
		$id = $_POST['id'];
		$url = $_POST['url'];
		$qr = "UPDATE `{$url}` SET `delete`='1',user_update='{$user}',date_update='{$datetime}' WHERE `delete`=0 AND `id`='{$id}' LIMIT 1 ";
		mysql_query($qr);
	}
		
	/*other*/
	if(isset($_POST['create_user'])){
		$id = trim($_POST['create_user']);
		$username = trim($_POST['username']);
		$password = md5($username.'123');
		$date = date('Y-m-d H:i:s');
		
		if($username!='' && $id!=''){
			if(!eregi("^[[:alnum:]]+$", $username)){ echo '3'; return false; }
			$qr = mysql_query("SELECT id FROM daotao_hocvien WHERE username='{$username}' ");
			if(mysql_num_rows($qr) == 0){
				mysql_query("UPDATE daotao_hocvien SET username='{$username}',password='{$password}',date_update='{$date}' WHERE id='{$id}' ");
				echo $username;
				return true;
			}else{
				echo '2'; return false;
			}
		}else{
			echo '0'; return false;
		}
	}
	
	if(@$_POST['lophoc_hocvien']){
		$id_lophoc = $_POST['lophoc_hocvien'];
		
		if($_POST['id_hocvien']=='') $id_hocvien = ''; else $id_hocvien = " AND id_hocvien<>'{$id_hocvien}' ";
		
		$qr = mysql_query("SELECT daotao_hocvien.id,daotao_hocvien.name FROM daotao_hocvien WHERE daotao_hocvien.`delete`=0 AND ds_lophoc LIKE '%,{$id_lophoc},%' AND daotao_hocvien.id NOT IN (SELECT id_hocvien FROM daotao_bangdiem WHERE id_lophoc='{$id_lophoc}' {$id_hocvien}) ORDER BY daotao_hocvien.`name`");
		
		while($row = mysql_fetch_array($qr)){
			if($row['id'] != $id_hocvien) echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
			else echo '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
		}
		return true;
	}
	
	/*excel_tracuu*/
	if(isset($_POST['kh_lh'])){
		$kh = $_POST['kh_lh'];
		$qr = mysql_query("SELECT id,name,capdo FROM daotao_lophoc WHERE `delete`=0 AND id_khoahoc='{$kh}' ORDER BY `name`");
		while($row = mysql_fetch_array($qr)){
			$str .= '<option value="'.$row['id'].'">'.$row['name'].' | Level '.$row['capdo'].'</option>';
		}
		echo '<option value="0">-- Chọn lớp học --</option>'.$str.'';
	}
}