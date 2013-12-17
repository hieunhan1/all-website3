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
$value = array(1 => 'Đã xem', 0 => 'Chưa xem');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 0; //giá trị mặc định
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
$form->getProperties("Họ tên", 'name', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//ngaysinh
if(@$_POST['ngaysinh']) $value = $_POST['ngaysinh']; else $value = $detail['ngaysinh'];
$form->getProperties("Ngày sinh", 'ngaysinh', 1, 'input_medium', $value, 30);
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
//totnghiep
if(@$_POST['totnghiep']) $value = $_POST['totnghiep']; else $value = $detail['totnghiep'];
$form->getProperties("Tốt nghiệp", 'totnghiep', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

//khoahoc
if(@$_POST['khoahoc']) $value = $_POST['khoahoc']; else $value = $detail['khoahoc'];
$form->getProperties("Khóa học", 'khoahoc', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//noihoc
if(@$_POST['noihoc']) $value = $_POST['noihoc']; else $value = $detail['noihoc'];
$form->getProperties("Nơi học", 'noihoc', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//other
if(@$_POST['other']) $value = $_POST['other']; else $value = $detail['other'];
$form->getProperties("Kênh tìm kiếm", 'other', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//hoivien
if(@$_POST['hoivien']) $value = $_POST['hoivien']; else $value = $detail['hoivien'];
$form->getProperties("Hội viên vietnamchefs", 'hoivien', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

if($idUser==25){
	$btn_ac = "<input type='button' name='gui_thongtin' value='Gửi thông tin' class='button' />
	<input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />";
	
	//nhanvien_lienhe
	$qr = mysql_query("SELECT id,name,email FROM dangky_nhanvien WHERE `delete`=0 AND status=1 ORDER BY date_update");
	$values = array();
	while($row = mysql_fetch_array($qr)){
		$values[] = array('id'=>$row['id'],'name'=>$row['name'].' - '.$row['email']);
	}
	
	if(@$_POST['nhanvien_lienhe']) $check = $_POST['nhanvien_lienhe']; else $check = $detail['nhanvien_lienhe'];
	$form->getProperties('Nhân viên liên hệ', 'nhanvien_lienhe', 6, 'input_large', $values, $check);
	echo $form->DisplayProperties();
}
echo "
<tr><td colspan='2'><p id='ajax_gui_thongtin'></p></td></tr>
<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td>{$btn_ac}
	<input type='button' name='btnCancel' value='Cancel' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"' />
	<input type='hidden' name='id_dk' value='{$id}' />
	</td>
</tr>
</table>
</form>
<br /><br /><br /><br /><br />
";