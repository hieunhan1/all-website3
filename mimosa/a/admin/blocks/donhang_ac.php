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

//chitiet don hàng
$qr2 = mysql_query("SELECT name,kichthuoc,soluong,price FROM products,donhang_chitiet WHERE donhang_id='{$id}' AND products_id=products.id");
while($row2 = mysql_fetch_array($qr2)){
	$tongtien += $row2['soluong']*$row2['price'];
	$chitiet .= '<tr>
		<td style="padding:8px 15px">'.$row2['name'].'</td>
		<td align="center">'.$row2['kichthuoc'].'</td>
		<td align="center">'.$row2['soluong'].'</td>
		<td align="center">'.number_format($row2['price'],0,',','.').'</td>
		<td align="right">'.number_format($row2['soluong']*$row2['price'],0,',','.').'</td>
	</tr>';
}
echo '<table width="620" border="0" cellpadding="0" cellspacing="0">
    	<tr><td colspan="5"><h2 style="padding: 10px 20px">Chi tiết đơn hàng</h2></td></tr>
        <tr bgcolor="#C3DDFE">
        	<th style="padding:8px 15px" align="left">Tên sản phẩm</th>
        	<th width="130">Kích thước</th>
        	<th width="100">Số lượng</th>
        	<th width="130">Đơn giá</th>
        	<th width="100">Tiền</th>
        </tr>'.$chitiet.'
		<tr>
			<td>&nbsp;</td>
			<td align="center">&nbsp;</td>
			<td align="center">&nbsp;</td>
			<td align="center" style="color:#2776ED; font-weight:bold">Tổng cộng</td>
			<td align="right" style="color:#2776ED; font-weight:bold">'.number_format($tongtien,0,',','.').'</td>
		</tr>
</table><br /><br />';

// form
echo "<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>
";
//date create
echo $date_create;
//user login
echo $user_login;

//Trạng thái status
$value = array(1 => 'Đã giao', 0 => 'Chưa giao');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('Y/m/d', strtotime($detail['date_update']));
else $value = date('Y/m/d');
$form->getProperties('Ngày', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Họ tên", 'name', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties("Email", 'email', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//phone
if(@$_POST['phone']) $value = $_POST['phone']; else $value = $detail['phone'];
$form->getProperties("Phone", 'phone', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();
//diachi
if(@$_POST['diachi']) $value = $_POST['diachi']; else $value = $detail['diachi'];
$form->getProperties("Địa chỉ", 'diachi', 1, 'input_medium', $value, 150);
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
$form->getProperties('Yêu cầu', 'message', 3, 'textarea', $value, 1, $orther);
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