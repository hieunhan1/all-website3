<?php   
   
$password_new = 'hieunhana23aA';   

if($password_new!=$password_repeat) $error .= " - Mật khẩu mới và mật khẩu nhắc lại không khớp.<br />";
if( strlen($password_new) > 20 ) $error .= " - Mật khẩu phải bé hơn 20 ký tự <br />";
if( strlen($password_new) < 9 )  $error .= " - Mật khẩu phải hơn 10 ký tự <br />";   

if( !preg_match("#[0-9]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>SỐ</strong> <br />";  
if( !preg_match("#[a-z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>THƯỜNG</strong> <br />";   
if( !preg_match("#[A-Z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>HOA</strong> <br />";
   
   
/*if( !preg_match("#\W+#", $pwd) ) {   
	$error .= "Password must include at least one symbol! <br />";   
}  */
   
if($error){
	echo '<p style="color:#F00">Mật khẩu chưa đạt yêu cầu:<br />'.$error.'</p>';   
} else {   
	echo "Your password is strong.";   
}   
   
/*
$pwd = $_POST['pwd'];   
   
if (preg_match("#.*^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$#", $pwd)){   
echo "Your password is strong.";   
} else {   
echo "Your password is not safe.";   
}   
   
   

$pwd = $_POST['pwd'];   
   
if (preg_match("#.*^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$#", $pwd)){   
echo "Your password is good.";   
} else {   
echo "Your password is bad.";   
}
*/
?>


<?php   
$pwd = $_POST['pwd'];   
   
if( strlen($pwd) < 8 ) {   
$error .= "Password too short! <br />";   
}   
   
if( strlen($pwd) > 20 ) {   
$error .= "Password too long! <br />";   
}   
   
if( strlen($pwd) < 8 ) {   
$error .= "Password too short! <br />";   
}   
   
if( !preg_match("#[0-9]+#", $pwd) ) {   
$error .= "Password must include at least one number! <br />";   
}   
   
if( !preg_match("#[a-z]+#", $pwd) ) {   
$error .= "Password must include at least one letter! <br />";   
}   
   
if( !preg_match("#[A-Z]+#", $pwd) ) {   
$error .= "Password must include at least one CAPS! <br />";   
}   
   
   
if( !preg_match("#\W+#", $pwd) ) {   
$error .= "Password must include at least one symbol! <br />";   
}   
   
if($error){   
echo "Password validation failure(your choise is weak): $error";   
} else {   
echo "Your password is strong.";   
}   
?>

<?php   
$pwd = $_POST['pwd'];   
   
if (preg_match("#.*^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$#", $pwd)){   
echo "Your password is strong.";   
} else {   
echo "Your password is not safe.";   
}   
?> 
   
<?php   
$pwd = $_POST['pwd'];   
   
if (preg_match("#.*^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$#", $pwd)){   
echo "Your password is good.";   
} else {   
echo "Your password is bad.";   
}
?>