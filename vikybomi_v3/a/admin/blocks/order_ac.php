<?php
$id = $_GET['id']; settype($id, int);
if(@$_POST['btnCancel']) btnCancel($page);
if($id == 0){ //create
	$name = 'btnSubmit';
	$display = 'Thêm mới';
	
	//hidden field user_create
	$form->getProperties(NULL, 'user_create', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	//hidden field date_create
	$form->getProperties(NULL, 'date_create', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
	$type = 1; //loại sql create $type = 1;
} else {  //update
	$name = 'btnSubmit';
	$display = 'Cập nhật';
	
	$qr_detail = mysql_query("SELECT * FROM `{$page}` WHERE id='{$id}'");
	$detail = mysql_fetch_array($qr_detail);
	mysql_free_result($qr_detail);
	
	//hidden field user_update
	$form->getProperties(NULL, 'user_update', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	
	$type = 2; //loại sql update $type = 2;
}

if(!empty($_POST)){
	$table = str_replace('_ac','',$p);
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	if($check == 1) header("location:administrator.php?p=".$page);
	else echo "<p class='error'>{$check}</p>";
}

/*
* don hang chi tiet
*/
echo '
<style>
.dhct {width:600px; border-top:solid 1px #666; border-left:solid 1px #666; border-right:solid 1px #666}
.dhct .name{width:280px; padding:3px 5px; float:left}
.dhct .item1{width:30px; padding:3px 5px; float:left; text-align:center}
.dhct .item2{width:70px; padding:3px 5px; float:left; text-align:center}
.dhct .item3{width:60px; padding:3px 5px; float:left; text-align:center}
</style>
<div class="dhct" style="background-color:#FFCBCB"><div class="item1"><b>STT</b></div><div class="name"><b>Tên sản phẩm</b></div><div class="item3"><b>Số lượng</b></div><div class="item3"><b>Giá</b></div><div class="item2"><b>Thành tiền</b></div><div class="item1"><b>Xóa</b></div><div style="clear:both"></div></div>';

if(@$_GET['order_d']) mysql_query('UPDATE order_detail SET `delete`=1 WHERE id='.$_GET['order_d']);
$order_detail = mysql_query("SELECT order_detail.*,products.name as tensp FROM order_detail,products WHERE order_id='{$id}' AND product_id=products.id AND order_detail.delete=0");
$j = 0;
while($row_order = mysql_fetch_array($order_detail)){
	$j++;
	$tongsoluong += $row_order['soluong'];
	$tongtien += $row_order['thanhtien'];
	echo '<div class="dhct">
	<div class="item1"><b>'.$j.'</b></div>
	<div class="name">'.$row_order['tensp'].'</div>
	<div class="item3">'.$row_order['soluong'].'</div>
	<div class="item3">'.number_format($row_order['price']).'</div>
	<div class="item2">'.number_format($row_order['thanhtien']).'</div>
	<div class="item1"><a href="'.$_SERVER['REQUEST_URI'].'&order_d='.$row_order['id'].'">Xóa</a></div>
	<div style="clear:both"></div>
	</div>';
}
echo '<div class="dhct" style="background-color:#FFCBCB"><div class="item1">&nbsp;</div><div class="name"><b>Tổng cộng</b> <em>(chưa bao gồm VAT)</em></div><div class="item3"><b>'.$tongsoluong.'</b></div><div class="item3">&nbsp;</div><div class="item2"><b>'.number_format($tongtien).'</b></div><div style="clear:both"></div></div><br />';
/*
********************************************************************
* $form->getProperties($displayname, $name, $type, $cssclass, $value = NULL, $length = NULL, $orther = NULL);
* $form->DisplayProperties();
* $type = 1 // text
* $type = 2 // hidden
* $type = 3 // textarea
* $type = 4 // checkbox
* $type = 41// checkbox group
* $type = 5 // radio
* $type = 6 // select
* $type = 7 // button
* $type = 8 // submit
* $type = 9 // DeQuy
********************************************************************
***********
* NOT USED
* other, lang, delete
*/
// form
echo "
<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>
";
//date create
echo $date_create;
//user login
echo $user_login;

//Trạng thái status
$value = array(0 => 'Chưa giao', 2 => 'Đã xem', 1 => 'Đã giao');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Ngày giao hàng', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();
//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Tên KH', 'name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//adress
if(@$_POST['adress']) $value = $_POST['adress']; else $value = $detail['adress'];
$form->getProperties('Địa chỉ', 'adress', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//phone
if(@$_POST['phone']) $value = $_POST['phone']; else $value = $detail['phone'];
$form->getProperties('Điện thoại', 'phone', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email', 'email', 1, 'input_medium', $value, 60);
echo $form->DisplayProperties();
//message
if(@$_POST['message']) $value = $_POST['message']; else $value = $detail['message'];
$form->getProperties('Yêu cầu khác', 'message', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//phigiaohang
if(@$_POST['phigiaohang']) $value = $_POST['phigiaohang']; else $value = $detail['phigiaohang'];
$form->getProperties('Phí giao hàng', 'phigiaohang', 1, 'input_medium', $value, 8);
echo $form->DisplayProperties();
//tong_thanhtien
if(@$_POST['tong_thanhtien']) $value = $_POST['tong_thanhtien']; else $value = $detail['tong_thanhtien'];
$form->getProperties('Tổng cộng', 'tong_thanhtien', 1, 'input_medium', $value, 60);
echo $form->DisplayProperties();

echo "
<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td><input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />
	<input type='button' name='btnCancel' value='Hủy' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"'>
	</td>
</tr>
</table>
</form>
<br />
";
?>