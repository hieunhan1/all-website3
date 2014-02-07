<?php 
include "class.phpmailer.php";  
include "class.smtp.php";  

$to='info@dayamthuc.vn';
if($_POST['NoiHoc']=='Đà Nẵng')
	$to='danang@dayamthuc.vn';
else if($_POST['NoiHoc']=='Cần Thơ')
	$to='cantho@dayamthuc.vn';

$mail = new PHPMailer(); 
$mail->IsSMTP(); // set mailer to use SMTP 
$mail->Host = "smtp.gmail.com"; // specify main and backup server 
$mail->Port = 465; // set the port to use 
$mail->SMTPAuth = true; // turn on SMTP authentication 
$mail->SMTPSecure = 'ssl'; 
$mail->Username = "dayamthuc@gmail.com"; // your SMTP username or your gmail username 
$mail->Password = "Netspacepro#123*"; // your SMTP password or your gmail password 
$from = 'dayamthuc@gmail.com'; // Reply to this email 
//$to = '';//$row_config['email']; // Recipients email ID 
//$name = 'Trường dạy nghề ẩm thực NETSPACE'; // Recipient's name 
$mail->From = $from; 
$mail->FromName = $_POST['HoTen']; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,'Dang ky hoc nau an'); 
$mail->AddReplyTo($from,"admin"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Đăng ký học '.$_POST['KhoaHoc']; 
$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;
$mail->Body = "<h3>Chào ban quản trị website.</h3><br />Bạn <strong>".$_POST['HoTen']."</strong> đăng ký học. <br />Tên khóa học: ".$_POST['KhoaHoc']."<br />Tại cơ sở: ".$_POST['NoiHoc']."<br /><br /><strong>Thông tin cá nhân</strong><br />Ngày sinh: ".$_POST['NgaySinh']."<br />Điện thoại: ".$_POST['DienThoai']."<br />Email: ".$_POST['Email']."<br />Địa chỉ: ".$_POST['DiaChi']."<br />Đã tốt nghiệp: ".$_POST['TotNghiep']."<br /><em>Là thành viên Hội đầu bếp chuyên nghiệp Sài Gòn</em>: ".$_POST['ThanhVienHoi'].'<br />Bạn biết khóa học này qua: '.$_POST['thongtin_khac']; //HTML Body 
$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
if($mail->Send()) return true; 
else return false;