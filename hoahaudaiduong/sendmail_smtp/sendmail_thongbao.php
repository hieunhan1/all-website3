<?php
// file 02-smtp.php
//require_once('class.smtp.php');
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');

$email_gui = 'inform@hoahaudaiduongvietnam.com';
$email_gui_pass = 'inform1234';
$title = 'BTC Cuộc thi “Hoa Hậu Đại Dương Việt Nam 2014” ';

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
$body = '<h3>Chào bạn!</h3>
<p>Bạn đã đăng ký dự thi cuộc thi “Hoa Hậu Đại Dương Việt Nam 2014” . BTC cần bạn bổ sung những giấy tờ cần thiết bao gồm:</p>
<p style="margin-left:35px">+ Bản sao chứng minh thư (có công chứng)</p>
<p style="margin-left:35px">+ Bản sao giấy khai sinh (nếu bản photo thì phải có công chứng)</p>
<p style="margin-left:35px">+ Sơ yếu lý lịch (được chính quyền địa phương hoặc cơ quan tổ chức nơi thí sinh đang hoạt động xác nhận) </p>
<p style="margin-left:35px">+ Bằng tốt nghiệp hoặc giấy xác nhận của nhà trường đã tốt nghiệp trung học phổ thông (có công chứng)</p>
<p style="margin-left:35px">+ Bằng cấp về học vấn vd: Trung cấp- Cao đẳng- Đại học…(nếu có)</p>
<p style="margin-left:35px">+ 02 ảnh chân dung và 02 ảnh toàn thân (mặc trang phục tự chọn và Bikini). </p>
<p style="margin-left:35px">+ Bằng chứng nhận giải thường các cuộc thi từng tham gia.(nếu có)</p><br />
<p style="font-weight:bold">Thời gian và địa chỉ như sau:</p>
<p style="margin-left:35px">- Trước  ngày <b>15/04/2014</b> từ <b>9h - 21h</b> </p>
<p style="margin-left:35px">- Địa chỉ: 115 đường Lý Tự Trọng, phường Bến Thành, Quận 1, Tp.Hồ Chí Minh</p>
<p style="margin-left:35px">- Điện thoại: 08 3914 2008</p>
Cám ơn bạn đã đăng ký dự thi
<p style="font-weight:bold; font-style:italic">BTC Cuộc thi “ Hoa Hậu Đại Dương Việt Nam 2014”</p>
<p style="font-weight:bold; font-style:italic">Trân Trọng</p>';

$mail->Body = $body;

$mail->Send();

/*if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}*/