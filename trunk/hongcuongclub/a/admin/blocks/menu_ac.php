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
	//hidden field lang
	$form->getProperties(NULL, 'lang', 2, NULL, $_SESSION['language'], 3);
	$frm_language = $form->DisplayProperties();
	
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
echo $frm_language;

//Trạng thái status
$value = array(1 => 'Hiện', 0 => 'Ẩn');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//lang
$qr = $qt->language();
if(mysql_num_rows($qr) > 1){
	$values_lang = array();
	while($row = mysql_fetch_array($qr)){
		$values_lang[] = array('id'=>$row['ma'], 'name'=>$row['name']);
	}
	if($_GET['id']==0) $check = $_SESSION['language']; else $check = $detail['lang'];
	$form->getProperties('Ngôn ngữ', 'lang', 6, 'input_large', $values_lang, $check);
	echo $form->DisplayProperties();
}else{
	$row = mysql_fetch_array($qr);
	$form->getProperties("Lang", 'lang', 2, 'input_medium', $row['ma'], 3);
	echo $form->DisplayProperties();
}

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Ngày', 'date_update', 1, 'input_large select_date', $value, 20);
echo $form->DisplayProperties();

//Vị trí menu
$value = array();
$qr = mysql_query("SELECT * FROM menu_position WHERE `delete`=0 ");
while($row_temp = mysql_fetch_array($qr)){
	$value[] = array('id' => $row_temp['id'], 'name' => $row_temp['name']);
}
//position_id hidden field 
if(@$_POST['position_id']) $checks = $_POST['position_id']; else $checks = $detail['position_id'];
$form->getProperties(NULL, 'position_id', 2, NULL, $checks, 20);
echo $form->DisplayProperties();
//Vị trí
$form->getProperties('Vị trí', NULL, 41, '', $value, $checks, 'checkbox');
echo $form->DisplayProperties();

//Loại menu
$value = array();
$qr = mysql_query("SELECT * FROM menu_type WHERE `delete`=0 ");
while($row_temp = mysql_fetch_array($qr)){
	$value[$row_temp['id']] = $row_temp['name'];
}
if($_POST['type_id'] != '') $check = $_POST['type_id'];
else if($detail['type_id'] != '') $check = $detail['type_id'];
else $check = 9; //giá trị mặc định
$form->getProperties('Loại menu', 'type_id', 5, $check, $value, '<br />');
echo $form->DisplayProperties();

//Danh mục gốc
$level = 0;
$style1 = '&nbsp;';
$style2 = '&nbsp;--- ';
$str_query = array("SELECT id, name FROM menu ", " WHERE `delete`=0 AND lang='".$_SESSION['language']."' AND parent_id= ", " ORDER BY `order` ");
$form->getProperties($level, $style1, 9, $style2, $str_query);
$values = $form->DisplayProperties();
if(@$_POST['parent_id']) $check = $_POST['parent_id']; else $check = $detail['parent_id'];
$form->getProperties('Danh mục', 'parent_id', 6, 'input_large', $values, $check);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Tên hiển thị {$required}", 'name', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//title
if(@$_POST['title']) $value = $_POST['title']; else $value = $detail['title'];
$form->getProperties("Tiêu đề {$required}", 'title', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//Mô tả viết lại name_rewrite
if(@$_POST['name_rewrite']) $value = $_POST['name_rewrite']; else $value = $detail['name_rewrite'];
$form->getProperties("Tiêu đề không dấu {$required}", 'name_rewrite', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//url Link
if(@$_POST['url']) $value = $_POST['url']; else $value = $detail['url'];
$form->getProperties("Link  {$required}", 'url', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

//Description
//$length = 0 <=> không trộn cột
if(@$_POST['metaDescription']) $value = $_POST['metaDescription']; else $value = $detail['metaDescription'];
$form->getProperties("Description {$required}", 'metaDescription', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();

//Tags (keyword)    tags
if(@$_POST['metaKeyword']) $value = $_POST['metaKeyword']; else $value = $detail['metaKeyword'];
$form->getProperties("Tags (keyword) {$required}", 'metaKeyword', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Chọn file ảnh
$orther = "onclick=\"BrowseServer('Images:/','url_hinh')\"";
$form->getProperties('Chọn ảnh', 'btnBrowse', 7, 'button', 0, NULL, $orther);
$orther = $form->DisplayProperties();
//Ảnh đại diện url_hinh
if(@$_POST['url_hinh']) $value = $_POST['url_hinh']; else $value = $detail['url_hinh'];
$form->getProperties('Ảnh đại diện', 'url_hinh', 1, 'input_large', $value, 150, $orther);
echo $form->DisplayProperties();

//thu tu - order
if(@$_POST['order']) $value = $_POST['order']; else $value = $detail['order'];
$form->getProperties('Thứ tự', 'order', 1, 'input_large', $value, 150);
echo $form->DisplayProperties();

//other
$value = array(1 => 'Hiện', 0 => 'Ẩn');
if($_POST['other'] != '') $check = $_POST['other'];
else if($detail['other'] != '') $check = $detail['other'];
else $check = 0; //giá trị mặc định
$form->getProperties('Trang chủ', 'other', 5, $check, $value, ' &nbsp; ');
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