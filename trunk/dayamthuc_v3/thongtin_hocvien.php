<?php
$lang = 'vi';

define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$id = $_GET['id'];
$nguoinhan = $_GET['nguoinhan'];

$qr1 = mysql_query("SELECT name FROM web_dangky_nhanvien WHERE `delete`=0 AND id='{$nguoinhan}' ");
$row_nguoinhan = mysql_fetch_array($qr1);

$qr = mysql_query("SELECT * FROM web_dangky_tructuyen WHERE `delete`=0 AND id='{$id}' AND nhanvien_lienhe='{$nguoinhan}' ");
$row = mysql_fetch_array($qr);

if(mysql_num_rows($qr)==1 && $row['status']==2){
	mysql_query("UPDATE web_dangky_tructuyen SET status=1,date_update='".date('Y-m-d H:i:s')."',user_update='".$nguoinhan."' WHERE id='{$id}'");
}
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Thông tin đăng ký học nấu ăn Trường NETSPACE</title>
<meta name="title" content="Thông tin đăng ký học nấu ăn Trường NETSPACE" />
<meta name="description" content="Thông tin đăng ký học nấu ăn Trường NETSPACE cho nhân viên tư vấn" />
<meta name="keywords" content="Thông tin đăng ký,học nấu ăn Trường NETSPACE,hoc nau an" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta http-equiv="content-language" content ="vi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="abstract" content="Trường dạy nghề ẩm thực NETSPACE" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" /><link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
<style>
	td{border-bottom:solid 1px #CCC}
	.thongtin{background-color:#FF9}
</style>
</head>
<body>
<?php
	//echo $id.'<br />'.$sdt.'<br />'.$email;
?>
<table width="500" border="0" cellpadding="10" cellspacing="0" align="center">
	<tr><td colspan="2" align="center">
    	<span style="color:#333; font-size:30px; font-weight:bold">Thông tin đăng ký học nấu ăn<br />Trường NETSPACE</span><br />
        <em>Ngày đăng ký: <b><?php echo date('d/m/Y', strtotime($row['date_create'])); ?></b></em><br />
    	Nhân viên tư vấn: <span style="color:#00F; font-weight:bold"><?php echo $row_nguoinhan['name']; ?></span>
    </td></tr>
    <tr class="thongtin">
    	<td width="140">Họ tên</td>
        <td><?php echo $row['name']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td width="140">Ngày sinh</td>
        <td><?php echo $row['ngaysinh']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td width="100">Điện thoại</td>
        <td><?php echo $row['phone']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td width="100">Địa chỉ</td>
        <td><?php echo $row['diachi']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td width="100">Email</td>
        <td><?php echo $row['email']; ?></td>
    </tr>
    <tr>
    	<td width="100">Tốt nghiệp</td>
        <td><?php echo $row['totnghiep']; ?></td>
    </tr>
    <tr>
    	<td width="100">Chọn khóa học</td>
        <td><?php echo $row['khoahoc']; ?></td>
    </tr>
    
    <tr>
    	<td width="100">Nơi học</td>
        <td><?php echo $row['noihoc']; ?></td>
    </tr>
    <tr>
    	<td width="100">Kênh tìm kiếm</td>
        <td><?php echo $row['other']; ?></td>
    </tr>
    <tr>
    	<td width="100">Thông tin khác</td>
        <td><?php echo $row['hoivien']; ?></td>
    </tr>
</table>

</body>
</html>