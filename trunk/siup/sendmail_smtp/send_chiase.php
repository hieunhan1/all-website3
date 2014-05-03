<?php
require_once('class.phpmailer.php');

$email_gui = 'no-reply@sisp.org.vn';
$email_gui_pass = 'no-reply#123*';
$title = 'Chia sẻ bài viết';

$email_nhan = $email_nhan_share;
$name_nhan = $email_nhan_share;
$subject = "{$name_gui_share} - {$title}";

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
$mail->SetFrom($email_gui,'No-reply | SISP.ORG.VN');

//Thiết lập thông tin người nhận
$mail->AddAddress($email_nhan,$name_nhan);

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
$body = '<h3>Chào bạn, </h3><br />
<b>'.$name_gui_share.'</b> chia sẻ bài viết từ website <b>sisp.org.vn</b> <br />
Thông diệp: '.$message.'<br /><br />
Xem chi tiết: <a href="http://sisp.org.vn'.$link_share.'">ấn vào đây</a>';

$mail->Body = $body;

$mail->Send();