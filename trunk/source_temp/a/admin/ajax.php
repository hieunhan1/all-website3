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
		
		if (eregi($pattern, $email) && $total==0) echo '<font color="#00CC00">Email hợp lệ</font>';
		else echo '<font color="#FF0000">Email đã tồn tại hoặc chưa đúng định dạng</font>';
	}
	if(isset($_POST['ResetPass']) && $_SESSION["idUser1"]==25) {
		$user = $_POST['ResetPass'];
		$qt->Users_ResetPass($user);
	}
	if(@$_POST['info_id']){
		$qr = mysql_query("SELECT name FROM info WHERE id=".$_POST['info_id']);
		$row = mysql_fetch_array($qr);
		echo $row['name'];
	}
	
	if(@$_POST['upload_image_bst']){
		$id_bst = trim($_POST['id_bst']);
		$name = trim($_POST['name_bst']);
		$url_hinh_bst = trim($_POST['url_hinh_bst']);
		$date = date('Y-m-d H:i:s');
		
		if($id_bst!='' && $name!='' && $url_hinh_bst!=''){
			$qr = "INSERT INTO  `bosuutap_images` VALUES (NULL,'{$id_bst}','{$name}','{$url_hinh_bst}','vi','1','{$date}','{$date}','".$_SESSION['user_admin']."',NULL,'0')";
			mysql_query($qr);
			echo '1';
			return true;
		}else{ echo '0'; return false; }
		
	}
	if(@$_POST['delete_image']){
		$id = trim($_POST['id']);
		$date = date('Y-m-d H:i:s');
		
		if($id!=''){
			$qr = "UPDATE `bosuutap_images` SET `delete`=1,date_update='{$date}',user_update='".$_SESSION['user_admin']."' WHERE `delete`=0 AND status=1 AND id='{$id}'";
			mysql_query($qr);
			echo '1';
			return true;
		}else{ echo '0'; return false; }
		
	}
	
}
?>