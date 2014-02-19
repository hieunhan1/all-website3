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

//tuyendung_cty_id
$values = array();
$qr = mysql_query("SELECT id,`name` FROM tuyendung_cty WHERE `delete`=0 AND status=1 ORDER BY `name`");
while($row = mysql_fetch_array($qr)){
	$values[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if(@$_POST['tuyendung_cty_id']) $check = $_POST['tuyendung_cty_id']; else $check = $detail['tuyendung_cty_id'];
$form->getProperties('<span style="color:#F00">** Công ty tuyển dụng</span>', 'tuyendung_cty_id', 6, 'input_medium', $values, $check);
echo $form->DisplayProperties();

//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Hạn nộp HS', 'date_update', 1, 'input_large select_date', $value, 20);
echo $form->DisplayProperties();

//Đệ qui lấy danh sách menu
$level = 0;
$style1 = '&nbsp;';
$style2 = '&nbsp;---';
$str_query = array("SELECT id, name FROM menu ", " WHERE `delete`=0 AND lang='".$_SESSION['language']."' AND (type_id=1 OR type_id=11) AND parent_id= ", " ORDER BY `order` ASC ");
$form->getProperties($level, $style1, 9, $style2, $str_query);
$values = $form->DisplayProperties();
//Menu_id hidden field 
if(@$_POST['menu_id']) $checks = $_POST['menu_id']; else $checks = $detail['menu_id'];
$form->getProperties(NULL, 'menu_id', 2, NULL, $checks, 20);
echo $form->DisplayProperties();
//Danh mục checkbox_group
//EX: getProperties(Display_Name, NULL, 41, CSS_Class, Value=array, list_check=$this->_length, '&nbsp; ')
$form->getProperties('Danh mục', NULL, 41, 'list_check', $values, $checks, 'checkbox');//$values danh sách, $value checked
echo $form->DisplayProperties();

//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Mô tả', 'name', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();
//name_rewrite
if(@$_POST['name_rewrite']) $value = $_POST['name_rewrite']; else $value = $detail['name_rewrite'];
$form->getProperties('Mô tả viết lại', 'name_rewrite', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//noilamviec
$values = array();
$values[] = array('id'=>1, 'name'=>'Tp.HCM');
$values[] = array('id'=>2, 'name'=>'Hà Nội');
$values[] = array('id'=>3, 'name'=>'Huế');
$values[] = array('id'=>4, 'name'=>'Đà Nẵng');
$values[] = array('id'=>5, 'name'=>'Cần Thơ');
$values[] = array('id'=>5, 'name'=>'Khác');
if(@$_POST['noilamviec']) $check = $_POST['noilamviec']; else $check = $detail['noilamviec'];
$form->getProperties('Nơi làm việc', 'noilamviec', 6, 'input_large', $values, $check);
echo $form->DisplayProperties();

//mucluong
if(@$_POST['mucluong']) $value = $_POST['mucluong']; else $value = $detail['mucluong'];
$form->getProperties('Mức lương', 'mucluong', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();
//soluongtuyen
if(@$_POST['soluongtuyen']) $value = $_POST['soluongtuyen']; else $value = $detail['soluongtuyen'];
$form->getProperties('Số lượng tuyển', 'soluongtuyen', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();

//quyenloi
$orther = "
<script>
CKEDITOR.replace( 'quyenloi', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>";
if(@$_POST['quyenloi']) $value = $_POST['quyenloi']; else $value = $detail['quyenloi'];
$form->getProperties('Quyền lợi', 'quyenloi', 3, 'textarea', $value, 1, $orther);
echo $form->DisplayProperties();
//yeucau
$orther = "
<script>
CKEDITOR.replace( 'yeucau', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>";
if(@$_POST['yeucau']) $value = $_POST['yeucau']; else $value = $detail['yeucau'];
$form->getProperties('Yêu cầu', 'yeucau', 3, 'textarea', $value, 1, $orther);
echo $form->DisplayProperties();

//metaDescription
if(@$_POST['metaDescription']) $value = $_POST['metaDescription']; else $value = $detail['metaDescription'];
$form->getProperties('Mô tả ngắn công việc', 'metaDescription', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();

//Nội dung content
//$length = 2 <=> trộn 2 cột thành 1 cột (colspan='2')
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
$form->getProperties('Nội dung', 'content', 3, 'textarea', $value, 3, $orther);
echo $form->DisplayProperties();

//metaKeyword
if(@$_POST['metaKeyword']) $value = $_POST['metaKeyword']; else $value = $detail['metaKeyword'];
$form->getProperties('Từ khóa (keyword)', 'metaKeyword', 1, 'input_medium', $value, 250);
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
?>