<?php
$lang = $_GET['lang'];
$id = $_GET['id'];
$form = $_GET['form'];
$to = $_GET['to'];

include_once('config.php');

$qr = mysql_query("SELECT * FROM booking WHERE `delete`=0 AND id='{$id}' AND `form`='{$form}' AND `to`='{$to}' ");
$row = mysql_fetch_array($qr);

$ditu  = mysql_fetch_array(mysql_query("SELECT name FROM booking_form WHERE ma='{$form}' "));
$diden = mysql_fetch_array(mysql_query("SELECT name FROM booking_to WHERE ma='{$to}' "));

if($row['status']!=1){
	mysql_query("UPDATE booking SET status=1,date_update='".date('Y-m-d H:i:s')."',user_update='NV_{$form}' WHERE id='{$id}' AND `form`='{$form}' AND `to`='{$to}' ");
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thông tin Booking Online</title>
<meta name="robots" content="nofollow" />
<style>
	td{border-bottom:solid 1px #CCC}
	.thongtin{background-color:#FF9}
</style>
</head>

<body>

<table width="500" border="0" cellpadding="10" cellspacing="0" align="center">
	<tr><td colspan="2" align="center" style="font-size:24px; font-weight:bold">Thông tin khách hàng Booking Online</td></tr>
    <tr class="thongtin">
    	<td width="140">Họ tên</td>
        <td><?php echo $row['name']; ?></td>
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
    	<td width="100">Mặt hàng</td>
        <td><?php echo $row['mathang']; ?></td>
    </tr>
    <tr>
    	<td width="100">Ngày đi</td>
        <td><?php echo date('d-m-Y', strtotime($row['date_update'])); ?></td>
    </tr>
    
    <tr>
    	<td width="100">Tuyến</td>
        <td><?php echo $ditu['name'].' - '.$diden['name']; ?></td>
    </tr>
    <tr>
    	<td width="100">Số lượng</td>
        <td><?php echo $row['soluong']; ?></td>
    </tr>
    <tr>
    	<td width="100">Nhiệt độ</td>
        <td><?php echo $row['nhietdo']; ?></td>
    </tr>
    <tr>
    	<td width="100">Volume weight (cm)</td>
        <td><?php echo $row['volume_weight']; ?></td>
    </tr>
    <tr>
    	<td width="100">Other</td>
        <td><?php echo $row['other']; ?></td>
    </tr>
    
    
    <tr>
    	<td width="100" valign="top">Yêu cầu</td>
        <td><?php echo $row['message']; ?></td>
    </tr>
</table>

</body>
</html>