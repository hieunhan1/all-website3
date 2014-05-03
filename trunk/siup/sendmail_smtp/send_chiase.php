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
$body = '<h3 style="line-height:26px; font-size:16px">Chào bạn, </h3>
<p style="line-height:25px; font-size:14px"><b>'.$name_gui_share.'</b> chia sẻ bài viết từ website sisp.org.vn</p>
<p style="line-height:25px; font-size:14px">Thông diệp: '.$message.'</p>
<p style="line-height:25px; font-size:14px; font-weight:bold">Xem bài viết chia sẻ: <a href="http://sisp.org.vn'.$link_share.'">ấn vào đây</a></p>';

$mail->Body = $body;

$mail->Send();