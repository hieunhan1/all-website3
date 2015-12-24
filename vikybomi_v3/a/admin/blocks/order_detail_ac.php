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
//echo $date_create;
//user login
//echo $user_login;

//Trạng thái status
$value = array(1 => 'Hiện', 0 => 'Ẩn');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//order_id
if(@$_POST['order_id']) $value = $_POST['order_id']; else $value = $detail['order_id'];
$form->getProperties('Order ID', 'order_id', 1, 'input_medium', $value, 8);
echo $form->DisplayProperties();

//product_id
if(@$_POST['product_id']) $value = $_POST['product_id']; else $value = $detail['product_id'];
$form->getProperties('Product ID', 'product_id', 1, 'input_medium', $value, 8);
echo $form->DisplayProperties();

//soluong
if(@$_POST['soluong']) $value = $_POST['soluong']; else $value = $detail['soluong'];
$form->getProperties('Số lượng', 'soluong', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();

//price
if(@$_POST['price']) $value = $_POST['price']; else $value = $detail['price'];
$form->getProperties('Price', 'price', 1, 'input_medium', $value, 8);
echo $form->DisplayProperties();

//thanhtien
if(@$_POST['thanhtien']) $value = $_POST['thanhtien']; else $value = $detail['thanhtien'];
$form->getProperties('Thành tiền', 'thanhtien', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();

//nội dung
//$length = 2 <=> trộn 2 cột thành 1 cột (colspan='2')
$orther = "
<script>
CKEDITOR.replace( 'content', {
	uiColor: '#b5d8ef',
	toolbar: [
		[ 'Bold', 'Italic', '-', 'Link', 'Unlink' ],
	]
});
</script>
";
if(@$_POST['content']) $value = $_POST['content']; else $value = $detail['content'];
$form->getProperties('Nội dung', 'content', 3, 'textarea', $value, 1, $orther);
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