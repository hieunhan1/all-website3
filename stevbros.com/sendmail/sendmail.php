<?php 
include "class.phpmailer.php";  
include "class.smtp.php";  

$mail = new PHPMailer(); 
$mail->IsSMTP(); // set mailer to use SMTP 
$mail->Host = "smtp.gmail.com"; // specify main and backup server 
$mail->Port = 465; // set the port to use 
$mail->SMTPAuth = true; // turn on SMTP authentication 
$mail->SMTPSecure = 'ssl'; 
$mail->Username = "stevbros.contact@gmail.com"; // your SMTP username or your gmail username 
$mail->Password = "stevbros123"; // your SMTP password or your gmail password 
$from = "stevbros.contact@gmail.com"; // Reply to this email 
$to = 'hieunhan112@gmail.com';//"support@stevbros.com"; // Recipients email ID 
$name="Contact Stevbros"; // Recipient's name 
$mail->From = $from; 
$mail->FromName = $_POST['name']; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,$name); 
$mail->AddReplyTo($from,"admin"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Khách hàng liên hệ từ Website Stevbros'; 
$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;
$mail->Body = "<h3>Chào ban quản trị website.</h3></br>Bạn &nbsp;<strong>".$name."</strong>&nbsp;để lại lời nhắn sau:"."<br><br>".$content."<br>"."<br>"."<br>Email: ".$email; //HTML Body 
$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
$mail->Send();
/*if($mail->Send()) return true; 
else return false;*/