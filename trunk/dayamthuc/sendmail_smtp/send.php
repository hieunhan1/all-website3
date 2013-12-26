<?php
// file 02-smtp.php
//require_once('class.smtp.php');
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');

$email_gui = 'info@dayamthuc.vn';
$email_gui_pass = 'Netspacepro#123*';
$title = 'Đăng ký học';

/*
$email_nhan = 'hieunhan112@gmail.com';
$name = 'Admin';
$subject = 'Phụ bếp';
*/

//Khởi tạo đối tượng
$mail = new PHPMailer();

/*=====================================
 * THIET LAP THONG TIN GUI MAIL
 *=====================================*/

$mail->IsSMTP(); // Gọi đến class xử lý SMTP
$mail->Host       = "localhost"; // tên SMTP server
$mail->SMTPDebug  = 2; // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
$mail->Host       = "localhost";         // Thiết lập thông tin của SMPT
$mail->Port       = 25;                    // Thiết lập cổng gửi email của máy
$mail->Username   = $email_gui;         // SMTP account username
$mail->Password   = $email_gui_pass;                // SMTP account password
$mail->IsHTML(true);
//Thiet lap thong tin nguoi gui va email nguoi gui
$mail->SetFrom($email_gui,'No-reply | '.$title);

//Thiết lập thông tin người nhận
$mail->AddAddress($email_nhan,$name);
$mail->AddCC('ceo@netspace.edu.vn','CEO');
$mail->AddCC('temp@dayamthuc.vn','Temp');

//Thiết lập email nhận email hồi đáp
//nếu người nhận nhấn nút Reply
//$mail->AddReplyTo("demo@zend.vn","Pham Vu Khanh");

/*=====================================
 * THIET LAP NOI DUNG EMAIL
 *=====================================*/

//Thiết lập tiêu đề
$mail->Subject = $subject;

//Thiết lập định dạng font chữ
$mail->CharSet = "utf-8";

//Thiết lập nội dung chính của email
$body = '<h3>Chào ban quản trị website.</h3><br />
Bạn <strong>'.$name_hv.'</strong> đăng ký học. <br />
Tên khóa học: '.$subject.'<br />
Tại cơ sở: '.$noihoc.'<br /><br />
<strong>Thông tin cá nhân: </strong><a href="http://www.dayamthuc.vn/thongtin_hocvien.php?chinhanh=HCM-'.$name.'&id='.$id.'&phone='.$phone.'&email='.$email.'">Click vào đây để xem thông tin học viên</a>';

$mail->Body = $body;

$mail->Send();

/*if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}*/