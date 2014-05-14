<?php
require_once('class.phpmailer.php');

$email_gui = 'no-reply@dayamthuc.vn';
$email_gui_pass = 'no-reply#123*';
$title = 'Hồ sơ tuyển dụng';

$email_nhan = $email_ntd;
//$name_nhan = 'Admin';
//$subject = $name;

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
$mail->AddAddress($email_nhan);
$mail->AddBCC('temp@dayamthuc.vn','Temp');

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
$body = '<h3>Chào ban quản trị website.</h3><br />Bạn &nbsp;<strong>'.$name.'</strong>&nbsp;để lại lời nhắn sau:<br />
<p style="color:#666; font-size:110%">'.$message.'</p><br />
<p><strong>Thông tin cá nhân: </strong> <a href="http://www.dayamthuc.vn/hocvien_lienhe.php?nguoinhan='.$id_nv.'&id='.$id.'">Click vào đây để xem thông tin học viên</a></p>';

$mail->Body = $body;

$mail->Send();