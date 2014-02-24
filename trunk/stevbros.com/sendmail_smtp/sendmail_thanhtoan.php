<?php
// file 02-smtp.php
//require_once('class.smtp.php');
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');

$email_gui = 'noreply@stevbros.com';
$email_gui_pass = 'noreply123';
$title = 'Stevbros PMI R.E.P: Thank you';

$email_nhan = $row_config['email'];

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
$mail->Host       = "gator474.hostgator.com"; // tên SMTP server
$mail->SMTPDebug  = 2; // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
$mail->Host       = "gator474.hostgator.com";         // Thiết lập thông tin của SMPT
$mail->Port       = 25;                    // Thiết lập cổng gửi email của máy
$mail->Username   = $email_gui;         // SMTP account username
$mail->Password   = $email_gui_pass;                // SMTP account password
$mail->IsHTML(true);
//Thiet lap thong tin nguoi gui va email nguoi gui
$mail->SetFrom($email_gui,'No-reply');

//Thiết lập thông tin người nhận
$mail->AddAddress($email_nhan,'Admin');
//$mail->AddCC('ceo@netspace.edu.vn','CEO');
//$mail->AddCC('temp@dayamthuc.vn','Temp');

//Thiết lập email nhận email hồi đáp
//nếu người nhận nhấn nút Reply
//$mail->AddReplyTo("demo@zend.vn","Pham Vu Khanh");

/*=====================================
 * THIET LAP NOI DUNG EMAIL
 *=====================================*/

//Thiết lập tiêu đề
$mail->Subject = $title;

//Thiết lập định dạng font chữ
$mail->CharSet = "utf-8";

//Thiết lập nội dung chính của email
$body = $content;

$mail->Body = $body;

$aa = ob_start();
$mail->Send();
$aa = ob_get_clean();

/*if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}*/