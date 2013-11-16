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
$to = $email; // Recipients email ID 
//$name = "Contact Stevbros"; // Recipient's name 
$mail->From = $from; 
$mail->FromName = 'Stevbros'; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,$name); 
$mail->AddReplyTo($from,"Stevbros"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Thông báo thanh toán thành công - Stevbros'; 
$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;
$mail->Body = $content; //HTML Body 
$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
$mail->Send();