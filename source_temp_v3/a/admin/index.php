<?php
session_start();
if(@$_SESSION["user_admin"]) header('location: administrator.php');
include_once('config.php');

if(@$_POST["btnLogin"]) {
	$kiemtra = $qt->KiemTraLogin();
	if($kiemtra==true) header("location:administrator.php"); else $error = "Tên đăng nhập hoặc mật khẩu sai";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản trị website</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="">
	<div id="login">
		<h2>Đăng nhập quản trị</h2>
		<p style="color:#F00"><?php echo $error; ?></p>
		<p>Tên đăng nhập:<br /><input type="text" name="un" id="un" /></p>
		<p>Mật khẩu:<br /><input type="password" name="pa" id="pa" /></p>
        <p style="width:auto; margin-top:10px"><input name="btnLogin" type="submit" id="btnLogin" value="&nbsp;" /></p>
	</div>
</form>
</body>
</html>