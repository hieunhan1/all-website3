<?php
// file 02-smtp.php
//require_once('class.smtp.php');
//Nhúng thư viện phpmailer
require_once('class.phpmailer.php');

$email_gui = 'inform@hoahaudaiduongvietnam.com';
$email_gui_pass = 'inform1234';
$title = 'Đăng ký cuộc thi Hoa Hậu Đại Dương';

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

$array_timkiem = array('','Tivi','Báo chí','Internet','Bạn bè','Khác');
$array_trinhdo = array('','Chưa tốt nghiệp phổ thông','Tốt nghiệp phổ thông','Trung cấp','Cao đẳng','Đại học','Sau đại học');
//Thiết lập nội dung chính của email
$body = '<h3>Chào ban quản trị website.</h3><br />Bạn &nbsp;<strong>'.$name.'</strong>&nbsp;đăng ký cuộc thi Hoa Hậu Đại Dương Việt Năm năm 2014 với thông tin như sau:<br /><br />
<table width="90%" border="0" cellpadding="0" cellspacing="10">
	<tr>
    	<td width="30" align="right" valign="top" style="font-weight:bold">&nbsp;</td>
    	<td valign="top" colspan="2"><p>'.$url_hinh_view.'</p>
		<div style="clear:both; padding-top:10px">'.$url_hinh_name.'</div></td>
    </tr>
	<tr>
    	<td width="30" align="right" valign="top" style="font-weight:bold">1.</td>
    	<td width="200" valign="top">Họ tên:</td>
        <td>'.$name.'&nbsp;</td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">2.</td>
    	<td>Ngày sinh:</td>
        <td>'.date('d/m/Y',strtotime($ngaysinh)).'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nơi sinh: '.$noisinh.'</td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">3.</td>
    	<td>Chiều cao (m):</td>
        <td>'.$chieucao.'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cân nặng (kg): '.$cannang.'&nbsp;</td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">4.</td>
    	<td>Số đo 3 vòng (cm):</td>
        <td>'.$sodo.' (ngực - eo - mông)</td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">5.</td>
    	<td>Số CMND hoặc hộ chiếu:</td>
        <td>'.$cmnd.'&nbsp; &nbsp; &nbsp; &nbsp; Ngày cấp: '.date('d/m/Y',strtotime($ngaycap)).'&nbsp; &nbsp; &nbsp; &nbsp; Nơi cấp: '.$noicap.'&nbsp;</td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">6.</td>
    	<td>Hộ khẩu thường trú:</td>
        <td>'.$hokhau.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">7.</td>
    	<td>Chỗ ở hiện tại:</td>
        <td>'.$choohientai.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">8.</td>
    	<td>Điện thoại:</td>
        <td>'.$dienthoai.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">9.</td>
    	<td>Email:</td>
        <td>'.$email.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">10.</td>
    	<td>Địa chỉ các trang mạng xã hội:</td>
        <td>'.$trangmang_xh.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">11.</td>
    	<td>Nghề nghiệp hiện tại:</td>
        <td>'.$nghenghiep.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">12.</td>
    	<td>Địa chỉ đang công tác:</td>
        <td>'.$noicongtac.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">13.</td>
    	<td>Trình độ học vấn:</td>
        <td>'.$array_trinhdo[$trinhdo].'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">14.</td>
    	<td>Ngoại ngữ:</td>
        <td>'.$ngoaingu.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">15.</td>
    	<td>Sở thích:</td>
        <td>'.$sothich.'&nbsp; </td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">16.</td>
    	<td>Mô tả ngắn gọn về bản thân:</td>
        <td>'.$metaDescription.' &nbsp; </td>
    </tr>
    <tr>
    	<td align="right" valign="top" style="font-weight:bold">17.</td>
    	<td>Bạn biết thông tin Hoa Hậu Đại Dương Việt Nam 2014 từ đâu?</td>
        <td>'.$array_timkiem[$kenh_timkiem].' &nbsp;</td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">18.</td>
        <td colspan="2" valign="top">Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?<br />
        Trả lời: <em>'.$other2.'</em></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">19.</td>
        <td colspan="2" valign="top">Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?<br />
        Trả lời: <em>'.$other3.'</em></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">20.</td>
        <td colspan="2" valign="top">Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.<br />
        Trả lời: <em>'.$other4.'</em></td>
    </tr>
</table>
';

$mail->Body = $body;

if($mail->Send()) return true; else return false;

/*if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}*/