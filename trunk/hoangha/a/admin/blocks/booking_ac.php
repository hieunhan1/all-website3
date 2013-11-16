<?php
$id = $_GET['id']; settype($id, int);
if(@$_POST['btnCancel']) btnCancel($page);
if($id == 0){ //create
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
$value = array(1 => 'Đã xem', 0 => 'Chưa xem');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Ngày đi', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Họ tên", 'name', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties("Email  {$required}", 'email', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//phone
if(@$_POST['phone']) $value = $_POST['phone']; else $value = $detail['phone'];
$form->getProperties("Phone", 'phone', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();
//diachi
if(@$_POST['diachi']) $value = $_POST['diachi']; else $value = $detail['diachi'];
$form->getProperties("Địa chỉ", 'diachi', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

//mathang
if(@$_POST['mathang']) $value = $_POST['mathang']; else $value = $detail['mathang'];
$form->getProperties("Mặt hàng", 'mathang', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();
//tuyen
$qr = mysql_query("SELECT name FROM booking_banggia WHERE `delete`=0 AND `form`='{$detail['form']}' AND `to`='{$detail['to']}' ");
$row = mysql_fetch_array($qr);
echo '<tr><th align="right">Tuyến</th><td style="color:#1E1EF2; font-weight:bold">'.$row['name'].'</td></tr>';

//soluong
if(@$_POST['soluong']) $value = $_POST['soluong']; else $value = $detail['soluong'];
$form->getProperties("Số lượng", 'soluong', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//nhietdo
if(@$_POST['nhietdo']) $value = $_POST['nhietdo']; else $value = $detail['nhietdo'];
$form->getProperties("Nhiệt độ", 'nhietdo', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//volume_weight
if(@$_POST['volume_weight']) $value = $_POST['volume_weight']; else $value = $detail['volume_weight'];
$form->getProperties("Volume weight", 'volume_weight', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();
//other
if(@$_POST['other']) $value = $_POST['other']; else $value = $detail['other'];
$form->getProperties("Other", 'other', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//message
$orther = "
<script>
CKEDITOR.replace( 'message', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>
";
if(@$_POST['message']) $value = $_POST['message']; else $value = $detail['message'];
$form->getProperties('Nội dung', 'message', 3, 'textarea', $value, 1, $orther);
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
<br />
";