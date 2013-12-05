<?php session_start();
if(@$_COOKIE["Username"]) {
	$user = $_COOKIE["Username"];
	
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
	
	/* popup */
	if(@$_POST['item_status']){
		if($_POST['status']==0) $status=1; else $status=0;
		mysql_query("UPDATE answers SET status={$status} WHERE id=".$_POST['id']);
	}
	if(@$_POST['item_hoidap']){
		$qr = mysql_query('SELECT name,email,content FROM answers WHERE id='.$_POST['id']);
		$row = mysql_fetch_array($qr);
		echo '<div id="popupContact">
			<h4 style="color:#FFF000; font-size:16px; margin-bottom:5px">Nội dung trả lời</h4>
			<p><input type="text" name="namea" value="'.$row['name'].'" maxlength="50" class="input_medium" /></p>
			<p><input type="text" name="emaila" value="'.$row['email'].'" maxlength="50" class="input_medium" /></p>
			<p><textarea class="textarea" name="contenta">'.$row['content'].'</textarea></p>
			<p><input type="button" name="btnTraLoi" value="Gửi" class="button" />
			<input type="button" name="btnCancel" value="Hủy" class="button" /></p>
			<input type="hidden" name="id" value="'.$_POST['id'].'" />
		</div><div id="backgroundPopup"></div>';
	}
	if(@$_POST['capnhattraloi']){
		$date = date('Y-m-d H:i:s');
		if($_POST['id']==0) $qr = "INSERT INTO answers VALUES (null,'{$_POST['name']}','{$_POST['email']}','".$_SESSION['cauhoi']."','{$_POST['content']}',1,'{$date}','{$date}','".$_SESSION['Username']."','',0)";
		else $qr = "UPDATE answers SET name='{$_POST['name']}',email='{$_POST['email']}',content='{$_POST['content']}',date_update='{$date}',user_update='".$_SESSION['Username']."' WHERE id=".$_POST['id'];
		mysql_query($qr);
	}
}
?>