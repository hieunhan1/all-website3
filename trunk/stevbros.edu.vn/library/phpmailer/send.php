<?
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');
$mail = new PHPMailer();

/*=====================================
 * THIET LAP THONG TIN GUI MAIL
 *=====================================*/

$mail->IsSMTP(); // Gọi đến class xử lý SMTP
$mail->Host       = "www.thephinhxaydung.com"; // tên SMTP server
$mail->SMTPDebug  = 2;                    // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
$mail->SMTPSecure = "ssl";
$mail->Host       = "smtp.gmail.com";     // Thiết lập thông tin của SMPT
$mail->Port       = 465;                     // Thiết lập cổng gửi email của máy
$mail->Username   = "thephinhxd@gmail.com"; // SMTP account username
$mail->Password   = "thephinhxd123";            // SMTP account password

//Thiet lap thong tin nguoi gui va email nguoi gui
$mail->SetFrom('thephinhxd@gmail.com','No-replay | Thép hình XD');

//Thiết lập thông tin người nhận
$mail->AddAddress('info@thephinhxaydung.com','Admin Thép Hình');
//Thiết lập email nhận email hồi đáp
//nếu người nhận nhấn nút Reply
//$mail->AddReplyTo("khanhpham@zend.vn","Pham Vu Khanh");

/*=====================================
 * THIET LAP NOI DUNG EMAIL
 *=====================================*/
$mail->IsHTML(true); // send as HTML 
//Thiết lập tiêu đề
$mail->Subject    = $_POST['Title'];

//Thiết lập định dạng font chữ
$mail->CharSet = "utf-8";

//Thiết lập nội dung chính của email
$body = "<h2>Chào quản trị website.</h2></br><strong>".$_POST['FullName']."</strong>&nbsp;để lại lời nhắn:"."<br><br>".$_POST['Comment']."<br>"."<br>"."<br>Email: ".$_POST['Email']."<br>Address: ".$_POST['Address']."<br>Telephone: ".$_POST['Tel'];

$mail->Body = $body;

$mail->Send();