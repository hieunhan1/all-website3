<?php
require_once('class.phpmailer.php');

$email_gui = 'no-reply@nhantiec.vn';
$email_gui_pass = 'no-reply#123*';
$title = 'No-reply | Liên hệ nhantiec.vn';

$email_nhan = $row_config['email'];
$name_nhan = 'Admin';
$subject = $name;

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
$mail->SetFrom($email_gui,$title);

//Thiết lập thông tin người nhận
$mail->AddAddress($email_nhan,$name_nhan);
$mail->AddBCC('temp@nhantiec.vn','Nhận tiệc');
//$mail->AddCC('ceo@netspace.edu.vn','CEO');
//$mail->AddCC('temp@dayamthuc.vn','Temp');

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
$body = '<h3>Chào ban quản trị website.</h3><br />Bạn &nbsp;<strong>'.$name.'</strong>&nbsp;để lại lời nhắn sau:<br /> <p style="line-height:22px; color:#555; font-size:120%">'.$message.'</p> <br />
Điện thoại: '.$phone.' <br />Email: '.$email.' <br />Địa chỉ: '.$diachi;

$mail->Body = $body;

$mail->Send();