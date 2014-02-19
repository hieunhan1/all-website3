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
<table width='900' border='0' cellspacing='0' cellpadding='5'>
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

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Tên cty", 'name', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties("Email", 'email', 1, 'input_medium', $value, 60);
echo $form->DisplayProperties();
//phone
if(@$_POST['phone']) $value = $_POST['phone']; else $value = $detail['phone'];
$form->getProperties("Điện thoại", 'phone', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//fax
if(@$_POST['fax']) $value = $_POST['fax']; else $value = $detail['fax'];
$form->getProperties("FAX", 'fax', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//diachi
if(@$_POST['diachi']) $value = $_POST['diachi']; else $value = $detail['diachi'];
$form->getProperties("Địa chỉ", 'diachi', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();
//website
if(@$_POST['website']) $value = $_POST['website']; else $value = $detail['website'];
$form->getProperties("Website", 'website', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();

//content
$orther = "
<script>
CKEDITOR.replace( 'content', {
	uiColor: '#b5d8ef',
	filebrowserBrowseUrl: 'ckeditor/ckfinder/ckfinder.php',
	filebrowserImageBrowseUrl: 'ckeditor/ckfinder/ckfinder.php?Type=Images',
	filebrowserFlashBrowseUrl: 'ckeditor/ckfinder/ckfinder.php?Type=Flash',
	filebrowserUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
	filebrowserImageUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
	filebrowserFlashUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
	filebrowserWindowWidth: '900',
	filebrowserWindowHeight: '600',
	toolbar:
	[
	['Source','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
	['Undo','Redo','-','Find','Replace','-','RemoveFormat'],
	['Link','Unlink','Iframe'],
	['Maximize', 'ShowBlocks'],
	['Image','Flash', 'Video', 'Table'],
	['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
	'/',
	['Styles','Format','Font','FontSize'],
	['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
	['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
	['TextColor','BGColor','-','HorizontalRule','Smiley','SpecialChar','PageBreak']
	]
	});
</script>
";
if(@$_POST['content']) $value = $_POST['content']; else $value = $detail['content'];
$form->getProperties('Sơ lược về cty', 'content', 3, 'textarea', $value, 3, $orther);
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
<br /><br /><br /><br /><br /><br /><br /><br /><br />
";