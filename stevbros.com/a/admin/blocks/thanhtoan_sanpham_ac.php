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

//ma_kh
if(@$_POST['ma_kh']) $value = $_POST['ma_kh']; else $value = $detail['ma_kh'];
$form->getProperties('Mã khóa học', 'ma_kh', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Mô tả', 'name', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Mô tả viết lại name_rewrite
if(@$_POST['name_rewrite']) $value = $_POST['name_rewrite']; else $value = $detail['name_rewrite'];
$form->getProperties('Mô tả viết lại', 'name_rewrite', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Chọn file ảnh
$orther = "onclick=\"BrowseServer('Images:/','url_hinh')\"";
$form->getProperties('Chọn file ảnh', 'btnBrowse', 7, 'button', 0, NULL, $orther);
$orther = $form->DisplayProperties();
//Ảnh đại diện url_hinh
if(@$_POST['url_hinh']) $value = $_POST['url_hinh']; else $value = $detail['url_hinh'];
$form->getProperties('Ảnh đại diện', 'url_hinh', 1, 'input_large', $value, 150, $orther);
echo $form->DisplayProperties();

//link
if(@$_POST['link']) $value = $_POST['link']; else $value = $detail['link'];
$form->getProperties('Link khóa học', 'link', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();

//price
if(@$_POST['price']) $value = $_POST['price']; else $value = $detail['price'];
$form->getProperties('Giá', 'price', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//courseid
$other = '<p style="color:#666; font-style:italic">ID khóa học trên module học online</p>';
if(@$_POST['courseid']) $value = $_POST['courseid']; else $value = $detail['courseid'];
$form->getProperties('Course ID', 'courseid', 1, 'input_medium', $value, 3, $other);
echo $form->DisplayProperties();

//timeend
$other = '<p style="color:#666; font-style:italic">Gõ số ngày học khóa này.</p>';
if(@$_POST['timeend']) $value = $_POST['timeend']; else $value = $detail['timeend'];
$form->getProperties('Time end', 'timeend', 1, 'input_medium', $value, 3, $other);
echo $form->DisplayProperties();

//auto_course
$value = array(1 => 'Tự động', 0 => 'Không');
if($_POST['auto_course'] != '') $check = $_POST['auto_course'];
else if($detail['auto_course'] != '') $check = $detail['auto_course'];
else $check = 1; //giá trị mặc định
$form->getProperties('Cấp tài khoản auto', 'auto_course', 5, $check, $value, ' &nbsp; ');
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