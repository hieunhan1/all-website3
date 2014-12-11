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
else if($detail['date_update'] != '') $value = date('Y/m/d', strtotime($detail['date_update']));
else $value = date('Y/m/d');
$form->getProperties('Date', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();
//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Name', 'name', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();
//lang
if(@$_POST['lang']) $value = $_POST['lang']; else $value = $detail['lang'];
$form->getProperties('Lang', 'lang', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//slogan
if(@$_POST['slogan']) $value = $_POST['slogan']; else $value = $detail['slogan'];
$form->getProperties('Slogan', 'slogan', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();
//max_product
if(@$_POST['max_product']) $value = $_POST['max_product']; else $value = $detail['max_product'];
$form->getProperties('Max product', 'max_product', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//max_news
if(@$_POST['max_news']) $value = $_POST['max_news']; else $value = $detail['max_news'];
$form->getProperties('Max news', 'max_news', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//max_picture
if(@$_POST['max_picture']) $value = $_POST['max_picture']; else $value = $detail['max_picture'];
$form->getProperties('Max news home', 'max_picture', 1, 'input_medium', $value, 2);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email', 'email', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//yahoo
if(@$_POST['yahoo']) $value = $_POST['yahoo']; else $value = $detail['yahoo'];
$form->getProperties('Yahoo', 'yahoo', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//tel
if(@$_POST['tel']) $value = $_POST['tel']; else $value = $detail['tel'];
$form->getProperties('Điện thoại', 'tel', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();
//facebook
if(@$_POST['facebook']) $value = $_POST['facebook']; else $value = $detail['facebook'];
$form->getProperties('Hotline', 'facebook', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();

//footer
$orther = "
<script>
CKEDITOR.replace( 'footer', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>
";
if(@$_POST['footer']) $value = $_POST['footer']; else $value = $detail['footer'];
$form->getProperties('Footer', 'footer', 3, 'textarea', $value, 1, $orther);
echo $form->DisplayProperties();

//contact
$orther = "
<script>
CKEDITOR.replace( 'contact', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
	]
});
</script>
";
if(@$_POST['contact']) $value = $_POST['contact']; else $value = $detail['contact'];
$form->getProperties('Contact home', 'contact', 3, 'textarea', $value, 1, $orther);
echo $form->DisplayProperties();
//contact_form
$orther = "
<script>
CKEDITOR.replace( 'contact_form', {
	uiColor: '#b5d8ef',
	toolbar: [
		['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-', 'Link', 'Unlink','Format','TextColor','BGColor'],
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