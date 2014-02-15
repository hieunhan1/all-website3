<?php 
include "class.phpmailer.php";  
include "class.smtp.php";  

$mail = new PHPMailer(); 
$mail->IsSMTP(); // set mailer to use SMTP 
$mail->Host = "smtp.gmail.com"; // specify main and backup server 
$mail->Port = 465; // set the port to use 
$mail->SMTPAuth = true; // turn on SMTP authentication 
$mail->SMTPSecure = 'ssl'; 
$mail->Username = "contactwebsite112@gmail.com"; // your SMTP username or your gmail username 
$mail->Password = "contactwebsite112#123*"; // your SMTP password or your gmail password 
$from = "contactwebsite112@gmail.com"; // Reply to this email 
$to = 'hieunhan112@gmail.com';//$row_config['email']; // Recipients email ID 
//$name="Thien Phat"; // Recipient's name 
$mail->From = $from; 
$mail->FromName = $name; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,'Lien he Hoa Hau Dai Duong'); 
$mail->AddReplyTo($from,"admin"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Khách hàng liên hệ từ Website Hoa Hậu Đại Dương'; 
$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;
$mail->Body = "<h3>Chào ban quản trị website.</h3></br>Bạn &nbsp;<strong>{$name}</strong>&nbsp;để lại lời nhắn sau:<br /><br />
{$message}<br /><br />
<br />Email: {$email}
<br />Phone: {$phone}
<br />Địa chỉ: {$diachi}"; //HTML Body 
$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
if($mail->Send()) return true; 
else return false;