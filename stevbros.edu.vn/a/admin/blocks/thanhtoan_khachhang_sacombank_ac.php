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
	
	$form->getProperties(NULL, 'date_update', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
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

//signed_date	
if(@$_POST['signed_date']) $value = $_POST['signed_date']; else $value = $detail['signed_date'];
$form->getProperties('Signed date', 'signed_date', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('First Name', 'name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//last_name
if(@$_POST['last_name']) $value = $_POST['last_name']; else $value = $detail['last_name'];
$form->getProperties('Last Name', 'last_name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//email	
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email', 'email', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//address_line1	
if(@$_POST['address_line1']) $value = $_POST['address_line1']; else $value = $detail['address_line1'];
$form->getProperties('Address line 1', 'address_line1', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//address_line2
if(@$_POST['address_line2']) $value = $_POST['address_line2']; else $value = $detail['address_line2'];
$form->getProperties('Address line 2', 'address_line2', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//address_city	
if(@$_POST['address_city']) $value = $_POST['address_city']; else $value = $detail['address_city'];
$form->getProperties('Address city', 'address_city', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

//country
$country = array();
$qr = mysql_query("SELECT * FROM `countries`");
while($row = mysql_fetch_array($qr)){
	$country[] = array('id'=>$row['ccode'],'name'=>$row['country']);
}
if(@$_POST['country']) $check = $_POST['country']; else $check = $detail['country'];
$form->getProperties('Country', 'country', 6, 'input_large', $country, $check);
echo $form->DisplayProperties();

//postal_code	
if(@$_POST['postal_code']) $value = $_POST['postal_code']; else $value = $detail['postal_code'];
$form->getProperties('Postal code', 'postal_code', 1, 'input_large', $value, 10);
echo $form->DisplayProperties();

//dienthoai 	
/*if(@$_POST['dienthoai']) $value = $_POST['dienthoai']; else $value = $detail['dienthoai'];
$form->getProperties('Điện thoại', 'dienthoai', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();*/

//amount 	
if(@$_POST['amount']) $value = $_POST['amount']; else $value = $detail['amount'];
$form->getProperties('Amount', 'amount', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();

//khoahoc_name 	
if(@$_POST['khoahoc_name']) $value = $_POST['khoahoc_name']; else $value = $detail['khoahoc_name'];
$form->getProperties('Tên khóa học', 'khoahoc_name', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();


echo "<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td><input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />
	<input type='button' name='btnCancel' value='Cancel' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"'>
	</td>
</tr>

<tr><td colspan='2'><a href='http://www.stevbros.edu.vn/payment-info/{$detail['id']}' target='_bank'>Xem thông báo đăng ký khóa học thành công</a></td></tr>

</table>
</form>
<div style='clear:both; height:100px'></div>
";
?>