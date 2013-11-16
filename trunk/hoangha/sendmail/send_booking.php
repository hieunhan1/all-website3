<?php 
include "class.phpmailer.php";  
include "class.smtp.php";  

$mail = new PHPMailer(); 
$mail->IsSMTP(); // set mailer to use SMTP 
$mail->Host = "smtp.gmail.com"; // specify main and backup server 
$mail->Port = 465; // set the port to use 
$mail->SMTPAuth = true; // turn on SMTP authentication 
$mail->SMTPSecure = 'ssl'; 
$mail->Username = "hoangha.contact@gmail.com"; // your SMTP username or your gmail username 
$mail->Password = "hoangha#123*"; // your SMTP password or your gmail password 
$from = "hoangha.contact@gmail.com"; // Reply to this email 
$to = $row['email']; // Recipients email ID 
//$name="Thien Phat"; // Recipient's name 
$mail->From = $from; 
$mail->FromName = $name; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,'Booking Online Hoang Ha'); 
$mail->AddReplyTo($from,"Website"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Khach hang Booking Online tu Website Hoang Ha'; 
/*$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;*/
$mail->Body = "<h3>Chào ban quản trị website.</h3></br>Bạn &nbsp;<strong>{$name}</strong>&nbsp; đã Booking Online từ website Hoàng Hà.<br /><br />
<br />Mặt hàng: {$mathang}
<br />Ngày đi: {$ngaydi}
<br />Số lượng: {$soluong}
<br /><a href='http://www.hoangha.com/booking_online.php?lang={$lang}&id={$id_insert}&form={$form}&to={$to_booking}'>Xem chi tiết thông tin khách hàng.</a>"; //HTML Body 
$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
if($mail->Send()) return true; 
else return false;