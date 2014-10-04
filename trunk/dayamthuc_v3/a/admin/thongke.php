<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$date_start = $_GET['date_start'];
$date_end	= $_GET['date_end'];
$sql_all_dangky = "SELECT `id` FROM `web_dangky_tructuyen` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}'";
$sql_all_contact = "SELECT `id` FROM `web_contact` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}'";

$sql_hcm = "SELECT `id` FROM `web_dangky_tructuyen` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}' AND `noihoc`='Tp.HCM'";
$sql_danang = "SELECT `id` FROM `web_dangky_tructuyen` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}' AND `noihoc`='DaNang'";
$sql_dalat = "SELECT `id` FROM `web_dangky_tructuyen` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}' AND `noihoc`='DaLat'";
$sql_cantho = "SELECT `id` FROM `web_dangky_tructuyen` WHERE `date_create`>'{$date_start}' AND `date_create`<'{$date_end}' AND `noihoc`='CanTho'";

$total_dangky = mysql_num_rows(mysql_query($sql_all_dangky));
$total_contact = mysql_num_rows(mysql_query($sql_all_contact));
$total = $total_dangky + $total_contact;

//$qr = mysql_query($sql);
//$total_all = mysql_num_rows($qr);
//mysql_num_rows(mysql_query($sql));
?>
<div style="width:500px; margin:auto">
<p>ajax.php?thongke=1&amp;date_start=2014-08-01&amp;date_end=2014-09-01</p>
<table width="100%" border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
	<tr>
    	<th colspan="2" align="left">Thống kê lượt đăng ký trực tuyến:</th>
    </tr>
    <tr>
    	<th align="left" width="20">1.</th>
    	<th align="left">NetSpace HCM: <?php echo mysql_num_rows(mysql_query($sql_hcm));?> lượt</th>
    </tr>
    
    <tr>
    	<th align="left" width="20">2.</th>
    	<th align="left">NetSpace Đà Nẵng: <?php echo mysql_num_rows(mysql_query($sql_danang));?> lượt</th>
    </tr>
    
    <tr>
    	<th align="left" width="20">3.</th>
    	<th align="left">NetSpace Đà Lạt: <?php echo mysql_num_rows(mysql_query($sql_dalat));?> lượt</th>
    </tr>
    
    <tr>
    	<th align="left" width="20">4.</th>
    	<th align="left">NetSpace Cần Thơ: <?php echo mysql_num_rows(mysql_query($sql_cantho));?> lượt</th>
    </tr>
    
    <tr>
    	<th colspan="2" align="left">Tổng cộng đăng ký: <?php echo $total_dangky;?> lượt</th>
    </tr>
    
    <tr>
    	<th colspan="2" align="left">Tổng cộng liên hệ: <?php echo $total_contact;?> lượt</th>
    </tr>
    
    <tr>
    	<th colspan="2" align="left">Tổng cộng: <?php echo $total;?> lượt đăng ký trực tuyến từ website dayamthuc.vn</th>
    </tr>
</table>
</div>

</body>
</html>