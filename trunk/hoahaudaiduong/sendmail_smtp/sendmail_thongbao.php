<?php
// file 02-smtp.php
//require_once('class.smtp.php');
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');

$email_gui = 'inform@hoahaudaiduongvietnam.com';
$email_gui_pass = 'inform1234';
$title = 'Thông báo đăng ký thành công cuộc thi Hoa Hậu Đại Dương Việt Nam';

$email_nhan = $email;

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
$mail->SetFrom($email_gui,'No-reply');

//Thiết lập thông tin người nhận
$mail->AddAddress($email_nhan, $name);
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
$body = '<h3>Chào bạn '.$name.'</h3>
<p style="line-height:22px">Bạn đã đăng ký thành công cuộc thi Hoa Hậu Đại Dương Việt Nam năm 2014. Chúng tôi sẽ kiểm tra và xem xét thông tin của bạn đăng ký, nếu hợp lệ thông tin của bạn sẽ được chúng tôi cập nhật lên trang <b>Thí Sinh cuộc thi Hoa Hậu Đại Dương Việt Nam</b> <em>(<a href="http://www.hoahaudaiduongvietnam.com/thi-sinh/">Link các thí sinh</a>)</em>. <br />
Trân trọng,</p>';

$mail->Body = $body;

$mail->Send();

/*if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}*/