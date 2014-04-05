<?php
require_once('class.phpmailer.php');

$email_gui = 'no-reply@dayamthuc.vn';
$email_gui_pass = 'no-reply#123*';

//$email_nhan = $row_config['email'];
//$name_nhan = 'Admin';
$subject = $title;

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
$mail->SetFrom($email_gui,'No-reply | '.$nguoigui.' - NETSPACE');

//Thiết lập thông tin người nhận
$ds_nguoinhan = explode(';',$ds_nguoinhan);
for($i=0; $i<count($ds_nguoinhan); $i++){
	$email_hv = trim($ds_nguoinhan[$i]);
	if($i!=0) $mail->AddCC($email_hv);
	else $mail->AddAddress($email_hv);
}

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
$mail->Body = $content;

$mail->Send();