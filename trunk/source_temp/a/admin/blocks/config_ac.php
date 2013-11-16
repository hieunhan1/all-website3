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
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();
//Ngày date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = date('d/m/Y', strtotime($detail['date_update']));
else $value = date('d/m/Y');
$form->getProperties('Ngày', 'date_update', 1, 'input_large select_date', $value, 20);
echo $form->DisplayProperties();
//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Mô tả', 'name', 1, 'input_medium', $value, 20);
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

/*
//slogan
if(@$_POST['slogan']) $value = $_POST['slogan']; else $value = $detail['slogan'];
$form->getProperties('Slogan', 'slogan', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();
//domain
if(@$_POST['domain']) $value = $_POST['domain']; else $value = $detail['domain'];
$form->getProperties('Domain', 'domain', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
*/

//max_limit_1
if(@$_POST['max_limit_1']) $value = $_POST['max_limit_1']; else $value = $detail['max_limit_1'];
$form->getProperties('Max limit 1', 'max_limit_1', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//max_limit_2
if(@$_POST['max_limit_2']) $value = $_POST['max_limit_2']; else $value = $detail['max_limit_2'];
$form->getProperties('Max limit 2', 'max_limit_2', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//max_limit_3
if(@$_POST['max_limit_3']) $value = $_POST['max_limit_3']; else $value = $detail['max_limit_3'];
$form->getProperties('Max limit 3', 'max_limit_3', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//max_limit_4
if(@$_POST['max_limit_4']) $value = $_POST['max_limit_4']; else $value = $detail['max_limit_4'];
$form->getProperties('Max limit 4', 'max_limit_4', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();

//copyright
if(@$_POST['copyright']) $value = $_POST['copyright']; else $value = $detail['copyright'];
$form->getProperties('Copyright', 'copyright', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email liên hệ', 'email', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();

/*
//yahoo
if(@$_POST['yahoo']) $value = $_POST['yahoo']; else $value = $detail['yahoo'];
$form->getProperties('Yahoo', 'yahoo', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//tel
if(@$_POST['tel']) $value = $_POST['tel']; else $value = $detail['tel'];
$form->getProperties('Điện thoại', 'tel', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//hotline
if(@$_POST['hotline']) $value = $_POST['hotline']; else $value = $detail['hotline'];
$form->getProperties('Hotline', 'hotline', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//facebook
if(@$_POST['facebook']) $value = $_POST['facebook']; else $value = $detail['facebook'];
$form->getProperties('Facebook', 'facebook', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
*/

//contact
$orther = "
<script>
CKEDITOR.replace( 'contact_foo', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>
";
if(@$_POST['contact_foo']) $value = $_POST['contact_foo']; else $value = $detail['contact_foo'];
$form->getProperties('Contact footer', 'contact_foo', 3, 'textarea', $value, 1, $orther);
echo $form->DisplayProperties();
//contact_form
$orther = "
<script>
CKEDITOR.replace( 'contact_form', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic','Table', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>
";
if(@$_POST['contact_form']) $value = $_POST['contact_form']; else $value = $detail['contact_form'];
$form->getProperties('Contact form', 'contact_form', 3, 'textarea', $value, 1, $orther);
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