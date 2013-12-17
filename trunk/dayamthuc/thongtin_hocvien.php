<?php
session_start();
ob_start('ob_gzhandler');
$request = $_SERVER['REQUEST_URI'];
require_once('config.php');

$id = $_GET['id'];
$phone = $_GET['phone'];
$email = $_GET['email'];
$chinhanh = $_GET['chinhanh'];

$qr = mysql_query("SELECT * FROM dangky_tructuyen WHERE `delete`=0 AND id='{$id}' AND `phone`='{$phone}' AND `email`='{$email}' ");
$row = mysql_fetch_array($qr);

if(mysql_num_rows($qr)==1 && $row['status']!=1){
	mysql_query("UPDATE dangky_tructuyen SET status=1,date_update='".date('Y-m-d H:i:s')."',user_update='".$chinhanh."' WHERE id='{$id}'");
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
	<tr><td colspan="2" align="center"><span style="color:#333; font-size:30px; font-weight:bold">Thông tin đăng ký học nấu ăn<br />Trường NETSPACE</span> <br /><em>Ngày đăng ký: <b><?php echo date('d/m/Y', strtotime($row['date_create'])); ?></b></em></td></tr>
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
</table>

</body>
</html>