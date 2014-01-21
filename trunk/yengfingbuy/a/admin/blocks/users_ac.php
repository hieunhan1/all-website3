<?php
$id = $_GET['id'];
if(@$_POST['btnCancel']) btnCancel($page);
if($id == '0'){ //create
	$name = 'btnSubmit';
	$display = 'Thêm mới';
	
	//hidden field user_create
	$form->getProperties(NULL, 'user_create', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	$form->getProperties(NULL, 'date_create', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
	$type = 1; //loại sql create $type = 1;
} else {  //update
	$name = 'btnSubmit';
	$display = 'Cập nhật';
	$qr_detail = mysql_query("SELECT * FROM {$page} WHERE id='{$id}'");
	$detail = mysql_fetch_array($qr_detail);
	mysql_free_result($qr_detail);
	
	//hidden field
	$form->getProperties(NULL, 'user_update', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	$form->getProperties(NULL, 'date_update', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
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
echo "<em>Lưu ý:</em> Tài khoản tạo ra có mật khẩu mặc định là <strong>123456</strong><br /><br />
<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>
";
echo $user_login.$date_create;
//Username
if(@$_POST['Username']) $value = $_POST['Username']; else $value = $detail['Username'];
$form->getProperties('Username', 'Username', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//HoTen
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Họ tên', 'name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//Password
if(!@$detail['Password']) $value = md5('123456'); else $value = $detail['Password'];
$form->getProperties('', 'Password', 2, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//idGroup
$form->getProperties('', 'group_id', 2, 'input_medium', 1, 50);
echo $form->DisplayProperties();

//phan quyen
$displayname = 'Quyền';
$name1 = 'quyen_xem';
$name2 = 'quyen_action';
$cssclass = 'list_check';
$checks_xem = explode(',', $detail['quyen_xem']);
$checks_action = explode(',', $detail['quyen_action']);

$str = "<tr><th align='right' valign='top'>{$displayname}</th><td><div style='background-color:#FFFFCC; padding:3px; border:solid 1px #999; width:150px; float:left'><b>Xem</b><br />";
$str_query = mysql_query("SELECT id,name FROM menu_admin WHERE `delete`=0 AND status=1 ORDER BY `order` ASC ");
while($row_str_query = mysql_fetch_array($str_query)){
	$str .= "<input type='checkbox' class='checkbox_xem' ";
	for($i=1; $i<=count($checks_xem); $i++){
		if($checks_xem[$i] == $row_str_query['id']) $str .= 'checked="checked"'; else $str .= '';
	}
	$str .= " value='{$row_str_query['id']}' />&nbsp; {$row_str_query['name']} <br />";
}
$str .= '</div>';

$str .= "<div style='background-color:#FFFFCC; padding:3px; border:solid 1px #999; width:150px; float:left'><b>Thêm, sửa</b><br />";
$str_query2 = mysql_query("SELECT id,name FROM menu_admin WHERE `delete`=0 AND status=1 ORDER BY `order` ASC ");
while($row_str_query = mysql_fetch_array($str_query2)){
	$str .= "<input type='checkbox' class='checkbox_action' ";
	for($i=1; $i<=count($checks_action); $i++){
		if($checks_action[$i] == $row_str_query['id']) $str .= 'checked="checked"'; else $str .= '';
	}
	$str .= " value='{$row_str_query['id']}' />&nbsp; {$row_str_query['name']} <br />";
}
echo $str.'</div>  </td></tr>';
//hidden field
if(@$_POST['quyen_xem']) $checks = $_POST['quyen_xem']; else $checks = $detail['quyen_xem'];
$form->getProperties(NULL, 'quyen_xem', 2, NULL, $checks, 200);
echo $form->DisplayProperties();
if(@$_POST['quyen_action']) $checks = $_POST['quyen_action']; else $checks = $detail['quyen_action'];
$form->getProperties(NULL, 'quyen_action', 2, NULL, $checks, 200);
echo $form->DisplayProperties();

/*
//Danh mục checkbox_group
$form->getProperties('Dsách môn học', NULL, 41, 'list_check', $values, $checks, 'checkbox');
echo $form->DisplayProperties();*/

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