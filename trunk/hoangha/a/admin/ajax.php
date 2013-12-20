<?php session_start();
if(@$_SESSION["username_admin"]) {
	$user = $_SESSION["username_admin"];
	
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
	
	/////////////////
	if($_POST['tracing_express_detail']=='tracing_express_detail'){
		$id = trim($_POST['id']);
		$name = trim($_POST['name']);
		$vitri = trim($_POST['vitri']);
		$trangthai = trim($_POST['trangthai']);
		$notes = trim($_POST['notes']);
		$date_update = trim($_POST['date_update']);
		
		if($id!='0' && $id!='' && $name!='' && $date_update!=''){
			$qt->insert_tracing_express_detail($id,$name,$vitri,$trangthai,$notes,$date_update);
			echo "<tr>
				<td style='border-bottom:solid 1px #CCC'>{$date_update}</td>
				<td style='border-bottom:solid 1px #CCC'>{$name}</td>
				<td style='border-bottom:solid 1px #CCC'>{$vitri}</td>
				<td style='border-bottom:solid 1px #CCC'>{$trangthai}</td>
				<td style='border-bottom:solid 1px #CCC'>{$notes}</td>
				<td style='border-bottom:solid 1px #CCC'>Xóa</td>
			</tr>";
			return true;
		}else{
			echo 0; return false;
		}
		
	}
	if($_POST['delete_tracing_express_detail']=='delete_tracing_express_detail'){
		$id = trim($_POST['id']);
		if($id!=''){
			$qr = mysql_query("UPDATE tracing_express_detail SET `delete`=1 WHERE id='{$id}'");
			return true;
		}else{
			echo '0';
			return false;
		}
	}
}
?>