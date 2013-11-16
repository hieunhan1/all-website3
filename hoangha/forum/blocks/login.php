<?php
if(@$_POST['btn_login']){
	$user = trim($_POST['username']);
	$pass = $_POST['password'];
	if(strlen($user)<4 || strlen($pass)<6) $message = '<font color="#F00">Username và Password không hợp lệ</font>';
	else{
		$qr = $tc->KiemTraLogin($user,$pass);
		if($qr==false) $message = '<font color="#F00">Username hoặc Password không đúng</font>';
		else header("location: http://{$domain}");
	}
}
?>

<div id="form_login">
    <form action="" name="login" method="post">
    <table width="50%" border="0" cellpadding="0" cellspacing="10" style="margin:30px auto">
        <tr>
            <th colspan="2" style="text-align:left; color:#017B80; font-size:20px; padding-bottom:10px">Đăng nhập forum</th>
        </tr>
        <tr><td colspan="2"><?php echo $message; ?></td></tr>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" class="txt_login" /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" class="txt_login" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="btn_login" value="ĐĂNG NHẬP" class="btn_login" /></td>
        </tr>
    </table>
    </form>
</div>