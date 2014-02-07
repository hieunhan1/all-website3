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
echo $date_create;
//user login
echo $user_login;
//lang
$form->getProperties('', 'lang', 2, 'input_medium', $lang, 2);
echo $form->DisplayProperties();
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

//Đệ qui lấy danh sách menu
$level = 0;
$style1 = '';
$style2 = '---';
$str_query = array("SELECT id, name FROM menu ", " WHERE `delete`=0 AND (type_id=5 OR type_id=9) AND parent_id= ", " ORDER BY `order` ASC, date_update DESC ");
$form->getProperties($level, $style1, 9, $style2, $str_query);
$values = $form->DisplayProperties();
//Menu_id hidden field 
if(@$_POST['menu_id']) $checks = $_POST['menu_id']; else $checks = $detail['menu_id'];
$form->getProperties(NULL, 'menu_id', 2, NULL, $checks, 20);
echo $form->DisplayProperties();
//Danh mục checkbox_group
//EX: getProperties(Display_Name, NULL, 41, CSS_Class, Value=array, list_check=$this->_length, '&nbsp; ')
$form->getProperties('Danh mục', NULL, 41, 'list_check2', $values, $checks, 'checkbox');//$values danh sách, $value checked
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Mô tả', 'name', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Chọn file ảnh
$orther = "onclick=\"BrowseServer('Images:/','url_hinh')\"";
$form->getProperties('Chọn file ảnh', 'btnBrowse', 7, 'button', 0, NULL, $orther);
$orther = $form->DisplayProperties();
//Ảnh đại diện url_hinh
if(@$_POST['url_hinh']) $value = $_POST['url_hinh']; else $value = $detail['url_hinh'];
$form->getProperties('Ảnh đại diện', 'url_hinh', 1, 'input_medium', $value, 150, $orther);
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