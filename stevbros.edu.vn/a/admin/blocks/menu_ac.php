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
$value = array(1 => 'Show', 0 => 'Hide');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Status', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Date', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//Danh mục gốc
$level = 0;
$style1 = '&nbsp;';
$style2 = '&nbsp;--- ';
$str_query = array("SELECT id, name FROM menu ", " WHERE `delete`=0 AND parent_id= ", " ORDER BY `order` ");
$form->getProperties($level, $style1, 9, $style2, $str_query);
$values = $form->DisplayProperties();
if(@$_POST['parent_id']) $check = $_POST['parent_id']; else $check = $detail['parent_id'];
$form->getProperties('Root directory', 'parent_id', 6, 'input_large', $values, $check);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Name {$required}", 'name', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//Mô tả viết lại name_rewrite
if(@$_POST['name_rewrite']) $value = $_POST['name_rewrite']; else $value = $detail['name_rewrite'];
$form->getProperties("Name rewrite {$required}", 'name_rewrite', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//Chọn file ảnh
$orther = "onclick=\"BrowseServer('Images:/','url_hinh')\"";
$form->getProperties('Select image', 'btnBrowse', 7, 'button', 0, NULL, $orther);
$orther = $form->DisplayProperties();
//Ảnh đại diện url_hinh
if(@$_POST['url_hinh']) $value = $_POST['url_hinh']; else $value = $detail['url_hinh'];
$form->getProperties('Icon menu', 'url_hinh', 1, 'input_large', $value, 150, $orther);
echo $form->DisplayProperties();

//Vị trí menu
$type = 6; //loại sql select $type = 6;
$table = 'menu_position';
$field = array('id','name');
$sql->get_sql($type,$table,$field);
$qr = $sql->executable() or die ($error_sql);
$value = array();
while($row = mysql_fetch_array($qr)){
	$value[] = array('id' => $row['id'], 'name' => $row['name']);
}
//position_id hidden field 
if(@$_POST['position_id']) $checks = $_POST['position_id']; else $checks = $detail['position_id'];
$form->getProperties(NULL, 'position_id', 2, NULL, $checks, 20);
echo $form->DisplayProperties();
//Vị trí
$form->getProperties('Position', NULL, 41, '', $value, $checks, 'checkbox');
echo $form->DisplayProperties();

//Loại menu
$type = 6; //loại sql select $type = 6;
$table = 'menu_type';
$field = array('id','name');
$sql->get_sql($type,$table,$field);
$qr = $sql->executable() or die ($error_sql);
$value = array();
while($row = mysql_fetch_array($qr)){
	$value[$row['id']] = $row['name'];
}
mysql_free_result($qr);
if($_POST['type_id'] != '') $check = $_POST['type_id'];
else if($detail['type_id'] != '') $check = $detail['type_id'];
else $check = 1; //giá trị mặc định
$form->getProperties('Menu type', 'type_id', 5, $check, $value, '<br />');
echo $form->DisplayProperties();

//url Link
if(@$_POST['url']) $value = $_POST['url']; else $value = $detail['url'];
$form->getProperties("Link  {$required}", 'url', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

//thu tu - order
if(@$_POST['order']) $value = $_POST['order']; else $value = $detail['order'];
$form->getProperties('Order', 'order', 1, 'input_large', $value, 150);
echo $form->DisplayProperties();

//title
if(@$_POST['title']) $value = $_POST['title']; else $value = $detail['title'];
$form->getProperties("Title {$required}", 'title', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//Description
//$length = 0 <=> không trộn cột
if(@$_POST['metaDescription']) $value = $_POST['metaDescription']; else $value = $detail['metaDescription'];
$form->getProperties('Description', 'metaDescription', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();

//Tags (keyword)    tags
if(@$_POST['metaKeyword']) $value = $_POST['metaKeyword']; else $value = $detail['metaKeyword'];
$form->getProperties('Tags (keyword)', 'metaKeyword', 1, 'input_medium', $value, 250);
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