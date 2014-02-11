<?php
include_once('config.php');

$id = $_GET['id'];

$qr = mysql_query("SELECT * FROM dangky WHERE `delete`=0 AND id='{$id}' LIMIT 1 ");
$row = mysql_fetch_array($qr);

if(mysql_num_rows($qr)==1 && $row['status']!=1){
	mysql_query("UPDATE dangky SET status=1,date_update='".date('Y-m-d H:i:s')."',user_update='admin' WHERE id='{$id}'");
}


?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Thông tin đăng ký học Quản Lý Dự Án</title>
<meta name="title" content="Thông tin đăng ký học Quản Lý Dự Án" />
<meta name="description" content="Thông tin đăng ký học Quản Lý Dự Án của Stevbros." />
<meta name="keywords" content="Quản Lý Dự Án của Stevbros,đăng ký học Quản Lý Dự Án" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta http-equiv="content-language" content ="vi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
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
	<tr><td colspan="2" align="center"><span style="color:#333; font-size:30px; font-weight:bold">Thông tin đăng ký học<br />Quản Lý Dự Án của Stevbros</span> <br /><em>Ngày đăng ký: <b><?php echo date('d/m/Y', strtotime($row['date_create'])); ?></b></em></td></tr>
    <tr class="thongtin">
    	<td width="140">Họ tên</td>
        <td><?php echo $row['name']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td>Điện thoại</td>
        <td><?php echo $row['phone']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td>Địa chỉ</td>
        <td><?php echo $row['diachi']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td>Email</td>
        <td><?php echo $row['email']; ?></td>
    </tr>
    <tr>
    	<td>Khóa học</td>
        <td><?php echo $row['khoahoc']; ?></td>
    </tr>
    <tr>
    	<td>Yêu cầu</td>
        <td><?php echo $row['message']; ?></td>
    </tr>
</table>

</body>
</html>