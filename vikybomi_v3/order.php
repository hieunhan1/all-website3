<?php
$lang = 'vi';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$id_order = $_GET['id_order'];

$sql = "SELECT * FROM `order` WHERE `delete`=0 AND id='{$id_order}' LIMIT 1";
$qr = mysql_query($sql);
$row_order = mysql_fetch_array($qr);

if($row_order['status']!=1){
	$sql = "UPDATE `order` SET `status`=1 WHERE id='{$id_order}' ";
	mysql_query($sql);
}

if(isset($_GET['status'])){
	$id_order = $_GET['id_order'];
	$sql = "UPDATE `order` SET `status`=1 WHERE id='{$id_order}' ";
	mysql_query($sql);
	return true;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Đơn hàng Website</title>
<meta name="robots" content="NOFOLLOW" />
<meta http-equiv="content-language" content ="vi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
<style>
body{font-size:13px; font-family:Arial, Helvetica, sans-serif; color:#333}
pre{font-size:13px; font-family:Arial, Helvetica, sans-serif; color:#333; margin:0; padding:0}
</style>
</head>
<body>

<div style="width:700px; text-align:right; margin:auto; "><a href="javascript:window.print();" id="print" style="height:25px; padding-left:35px; background:url(images/print.gif) no-repeat left">In đơn hàng</a></div>
<div style="width:700px; line-height:140%; margin:10px auto; padding:5px; border:solid 5px #333">
	<h3 style="text-align:center; font-size:140%">Đơn hàng website Vikybomi.com.vn</h3>
	<div style="color:#FFF; font-weight:bold; margin:10px 0; padding:3px 5px; background-color:#333">Thông tin đơn hàng</div>
    <table width="100%" border="0" cellpadding="5" cellspacing="0" style="line-height:140%; color:#333; font-size:13px;">
        <tr>
          <th colspan="2" align="left">Thông tin người thanh toán</th>
          <th colspan="2" align="left">Thông tin người nhận hàng</th>
        </tr>
        <tr>
          <td width="70">Họ tên:</td>
            <td><?php echo $row_order['name'];?></td>
          <td width="70">Họ tên:</td>
            <td><?php echo $row_order['name'];?></td>
        </tr>
        <tr>
          <td valign="top">Địa chỉ:</td>
          <td><?php echo $row_order['adress'];?></td>
          <td valign="top">Địa chỉ:</td>
          <td><?php echo $row_order['adress'];?></td>
        </tr>
        <tr>
            <td>Điện thoại:</td>
            <td><?php echo $row_order['phone'];?></td>
            <td>Điện thoại:</td>
            <td><?php echo $row_order['phone'];?></td>
        </tr>
        <?php if($row_order['message']!=''){?>
        <tr>
        	<td style="font-style:italic" valign="top">Yêu cầu khác</td>
        	<td colspan="3" style="font-style:italic" valign="top"><pre><?php echo $row_order['message'];?></pre></td>
        </tr>
        <?php }?>
    </table>
    
	<div style="color:#FFF; font-weight:bold; margin:10px 0; padding:3px 5px; background-color:#333">Chi tiết đơn hàng</div>
    <table width="100%" border="0" cellpadding="5" cellspacing="0" style="line-height:140%; color:#333; font-size:13px; margin-bottom:10px">
        <tr>
            <td><b>Mã số đơn hàng</b></td>
            <td><b style="color:#00F"><?php echo $row_order['id'];?></b></td>
        </tr>
        <tr>
            <td>Ngày đặt hàng</td>
            <td style="font-style:italic; font-weight:bold"><?php echo date('d/m/Y',strtotime($row_order['date_create']));?></td>
        </tr>
        <tr>
            <td>Phương thức thanh toán</td>
            <td>Thanh toán bằng tiền mặt</td>
        </tr>
        <tr>
            <td>Phương thức giao hàng</td>
            <td>Giao hàng tận nơi trong nội thành (Hồ Chí Minh)</td>
        </tr>
        <tr>
            <td>Ghi chú phương thức thanh toán</td>
            <td>Nhân viên giao hàng và thu tiền</td>
        </tr>	
    </table>
    <table width="100%" border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
        <tr bgcolor="#CCCCCC">
            <th align="left" width="400">Tên sản phẩm</th>
            <th>Số lượng</th>
            <th align="right">Giá</th>
            <th align="right">Thành tiền</th>
        </tr>
        <?php
		$tong_sl = 0;
		$tongcong = 0;
        $sql = "SELECT order_detail.*, products.name as tensp FROM `order_detail`,`products` WHERE order_detail.`delete`=0 AND order_id='{$id_order}' AND product_id=products.id ";
		$qr = mysql_query($sql);
		while($row = mysql_fetch_array($qr)){
			$tong_sl += $row['soluong'];
			$tongcong += $row['thanhtien'];
			echo '<tr>
				<td>'.$row['tensp'].'</td>
				<td align="center">'.$row['soluong'].'</td>
				<td align="right">'.number_format($row['price'],0,',','.').'</td>
				<td align="right">'.number_format($row['thanhtien'],0,',','.').'</td>
			</tr>';
		}
		$thanhtien = $tongcong + $row_order['phigiaohang'];
		?>
        <tr>
        	<td colspan="2" align="right">Tổng số lượng</td>
        	<td colspan="2" align="center" style="font-weight:bold"><?php echo $tong_sl;?></td>
        </tr>
        <tr>
        	<td colspan="2" align="right">Tổng cộng</td>
        	<td colspan="2" align="right"><?php echo number_format($tongcong,0,',','.');?> VNĐ</td>
        </tr>
        <tr>
        	<td colspan="2" align="right">Phí giao hàng</td>
        	<td colspan="2" align="right" style="color:#F00"><?php echo number_format($row_order['phigiaohang'],0,',','.');?> VNĐ</td>
        </tr>
        <tr>
        	<th colspan="2" align="right">Thành tiền</th>
        	<td colspan="2" align="right" style="font-weight:bold; color:#00F"><?php echo number_format($thanhtien,0,',','.');?> VNĐ</td>
        </tr>
    </table>
	<p style="font-weight:bold">Phương thức thanh toán "Bằng tiền mặt".</p>
	<p style="font-style:italic; color:#666">Mọi thắc mắc vui lòng liên hệ số điện thoại: 08 6686 4441</p>
</div>
<?php mysql_close();?>

<script type="text/javascript" src="library/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#print").click(function(){
		$.ajax({ 	
			url:"order.php",
			type:'get',
			data:{status:1,id_order:"<?php echo $row_order['id'];?>"},
			cache:false,
		});
	});
});
</script>
</body>
</html>