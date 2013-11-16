<?php
$id = $_GET['id'];
if(@$_POST['btnCancel']) btnCancel($page);
if($id=='0'){ //create
	$name = 'btnSubmit';
	$display = 'Create';
	
	//hidden field user_create
	$form->getProperties(NULL, 'user_create', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	//hidden field date_create
	$form->getProperties(NULL, 'date_create', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
	$type = 1; //loại sql create $type = 1;
} else {  //update
	$name = 'btnSubmit';
	$display = 'Update';
	
	$qr_detail = mysql_query("SELECT * FROM {$page} WHERE id='{$id}'");
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
$value = array(1 => 'Hiện', 0 => 'Ẩn');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Ngày', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Mô tả', 'name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//gender
if(@$_POST['gender']) $value = $_POST['gender']; else $value = $detail['gender'];
$form->getProperties('Giới tính', 'gender', 1, 'input_medium', $value, 1);
echo $form->DisplayProperties();

//email	
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email', 'email', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//dienthoai 	
if(@$_POST['dienthoai']) $value = $_POST['dienthoai']; else $value = $detail['dienthoai'];
$form->getProperties('Điện thoại', 'dienthoai', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//ip 	
if(@$_POST['ip']) $value = $_POST['ip']; else $value = $detail['ip'];
$form->getProperties('Địa chỉ IP', 'ip', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();
	
//thanhtoan_error 	
if(@$_POST['thanhtoan_error']) $value = $_POST['thanhtoan_error']; else $value = $detail['thanhtoan_error'];
$form->getProperties('Thanh toán mã error', 'thanhtoan_error', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();

//ma_nganhang 	
if(@$_POST['ma_nganhang']) $value = $_POST['ma_nganhang']; else $value = $detail['ma_nganhang'];
$form->getProperties('Mã ngân hàng', 'ma_nganhang', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();

$qr_sp = mysql_query("SELECT name FROM thanhtoan_sanpham WHERE id='{$detail['ma_sanpham']}'");
$row_sp = mysql_fetch_array($qr_sp);
//ma_sanpham 	
if(@$_POST['ma_sanpham']) $value = $_POST['ma_sanpham']; else $value = $detail['ma_sanpham'];
$form->getProperties('Mã sản phẩm', 'ma_sanpham', 1, 'input_medium', $value, 20,'<p style="color:#0054B1">'.$row_sp['name'].'</p>');
echo $form->DisplayProperties();


echo "
<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td><input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />
	<input type='button' name='btnCancel' value='Cancel' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"'>
	</td>
</tr>
</table>
</form>
<div style='clear:both; height:100px'></div>
";
?>