<?php session_start(); //ob_start();
if(@$_SESSION["Username"]) header('location: administrator.php');
require 'config.php';
	if(isset($_POST["btnLogin"])) {
		$un = $_POST["un"]; $pa = $_POST["pa"];
		$kiemtra = $qt->KiemTraLogin($un, $pa);
		if($kiemtra==true) header("location:administrator.php"); else $error = "Tên đăng nhập hoặc mật khẩu sai.<br />";
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
<div style="width:240px; height:260px; background:url(img/bg-dangnhap.gif) repeat-x; padding:10px; border:solid 1px #a9c1d4; margin-left:auto; margin-right:auto">
<h2 style="display:block; padding-bottom:10px; border-bottom:solid 1px #b4b8be;">Đăng nhập</h2>
<font color="#FF0000"><?=$error?></font>
<p style="font-size:16px">Tên đăng nhập:<br />
<input style="background-color:#C6DDFF; width:198px" type="text" name="un" id="un" /></p>
<p style="font-size:16px; margin-top:10px">Mật khẩu:<br />
<input style="background-color:#C6DDFF; width:198px" type="password" name="pa" id="pa" /></p>
<input style="margin:10px 25px;" name="btnLogin" type="submit" src="img/btn-dangnhap.gif" id="btnLogin" value="Đăng nhập"  />
</div>
</form>
</body>
</html>
