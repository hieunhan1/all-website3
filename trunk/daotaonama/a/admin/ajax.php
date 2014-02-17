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
	
	if($_POST['create_user']=='create_user'){
		$username = trim($_POST['username']);
		$password = md5($username.'123');
		$id_register = trim($_POST['id_register']);
		$date = date('Y-m-d H:i:s');
		
		if($username != ''){
			if(!eregi("^[[:alnum:]]+$", $username)){ echo '3'; return false; }
			
			$qr = mysql_query("UPDATE daotao_hocvien SET username='{$username}', password='{$password}' WHERE id='{$id_register}' ");
			if($qr){
				echo "<tr>
					<td style='border-bottom:solid 1px #CCC'>{$username}</td>
					<td style='border-bottom:solid 1px #CCC'><div id='ajax_khoahoc'></div>".$qt->danhsach_khoahoc(5)." &nbsp;</td>
					<td style='border-bottom:solid 1px #CCC'><input type='button' name='create_khoahoc' value='Đăng ký học' /> <input type='hidden' name='id_hocvien' value='{$id_register}' /></td>
				</tr>";
			}else echo '2';
			return true;
		}else{
			echo '0'; return false;
		}
	}
	
	if($_POST['create_khoahoc'] == 'create_khoahoc'){
		$id_khoahoc = $_POST['id_khoahoc'];
		$id_hocvien = $_POST['id_hocvien'];
		
		$qr = mysql_query("SELECT id FROM daotao_khoahoc WHERE id_lophoc='{$id_khoahoc}' AND id_hocvien='{$id_hocvien}' ");
		if(mysql_num_rows($qr)==0 && $id_khoahoc!=0 && $id_hocvien!=''){
			$date = date('Y-m-d H:i:s');
			mysql_query("INSERT INTO daotao_khoahoc VALUES ('','{$id_khoahoc}','{$id_hocvien}','vi','1','{$date}','{$date}','{$user}','','0')");
			echo '1'; return true;
		}else{
			echo '0'; return false;
		}
	}
	
	if(@$_POST['select_hocvien']){
		echo '<option value="0">-- Chọn học viên --</option>';
		$lophoc = $_POST['select_hocvien'];
		$hocvien = $_POST['hocvien'];
		$qr = mysql_query("SELECT daotao_hocvien.id,daotao_hocvien.name FROM daotao_hocvien,daotao_khoahoc WHERE  daotao_khoahoc.`delete`=0 AND id_lophoc='{$lophoc}' AND id_hocvien=daotao_hocvien.id AND daotao_hocvien.id NOT IN (SELECT id_hocvien FROM daotao_bangdiem WHERE id_lophoc='{$lophoc}') ORDER BY daotao_hocvien.name");
		while($row = mysql_fetch_array($qr)){
			if($row['id'] != $hocvien) echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
			else echo '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
		}
		return true;
	}
	
	/*if(@$_POST['select_cotdiem']){
		$lophoc = $_POST['select_cotdiem'];
		$cotdiem = $_POST['cotdiem'];
		$qr = mysql_query("
		SELECT daotao_cotdiem.id,daotao_cotdiem.name
		FROM daotao_lophoc,daotao_cotdiem
		WHERE daotao_cotdiem.`delete`=0 AND daotao_lophoc.id='{$lophoc}' AND daotao_lophoc.id_khoahoc=daotao_cotdiem.id_khoahoc
		ORDER BY `order`");
		while($row = mysql_fetch_array($qr)){
			if($row['id'] != $cotdiem) echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
			else echo '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
		}
		return true;
	}*/
}
?>