<?php 
include "class.phpmailer.php";  
include "class.smtp.php";  

$mail = new PHPMailer(); 
$mail->IsSMTP(); // set mailer to use SMTP 
$mail->Host = "smtp.gmail.com"; // specify main and backup server 
$mail->Port = 465; // set the port to use 
$mail->SMTPAuth = true; // turn on SMTP authentication 
$mail->SMTPSecure = 'ssl'; 
$mail->Username = "contactwebsite112@gmail.com"; // your SMTP username or your gmail username 
$mail->Password = "contactwebsite112#123*"; // your SMTP password or your gmail password 
$from = "contactwebsite112@gmail.com"; // Reply to this email 
$to = $row_config['email']; // Recipients email ID 
//$name="Thien Phat"; // Recipient's name 
$mail->From = $from; 
$mail->FromName = $_POST['name']; // Name to indicate where the email came from when the recepient received 
$mail->AddAddress($to,'Đăng ký Hoa Hậu Đại Dương Việt Nam'); 
$mail->AddReplyTo($from,"Admin"); 
$mail->WordWrap = 50; // set word wrap 
$mail->IsHTML(true); // send as HTML 
$mail->Subject = 'Đăng ký Hoa Hậu Đại Dương Việt Nam'; 
$mail->HoTen = $name;
$mail->Email = $email;
$mail->LoiNhan = $content;
$mail->Body = '<h3>Chào ban quản trị website.</h3><br />Bạn &nbsp;<strong>'.$name.'</strong>&nbsp;đăng ký cuộc thi Hoa Hậu Đại Dương Việt Năm năm 2014 với thông tin như sau:<br /><br />
<table width="90%" border="0" cellpadding="0" cellspacing="10">
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
        <td>'.$trinhdo.'&nbsp; </td>
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
        <td>'.$kenh_timkiem.' &nbsp;</td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">18.</td>
        <td colspan="2" valign="top">Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?<br />
        '.$other2.'</td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">19.</td>
        <td colspan="2" valign="top">Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?<br />
        '.$other3.'</td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">20.</td>
        <td colspan="2" valign="top">Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.<br />
        '.$other4.'</td>
    </tr>
</table>
'; //HTML Body 

$mail->AltBody =''; //Text Body 
//$mail->SMTPDebug = 2; 
$mail->SetFrom($tmp, 'Test Mail'); 
$mail->CharSet = "UTF-8"; 
if($mail->Send()) return true; 
else return false;