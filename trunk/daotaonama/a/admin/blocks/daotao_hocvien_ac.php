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
	$disabled = "'  disabled='disabled";
	
	$qr_detail = mysql_query("SELECT * FROM {$page} WHERE id='{$id}'");
	$detail = mysql_fetch_array($qr_detail);
	mysql_free_result($qr_detail);
	
	//hidden field user_update
	$form->getProperties(NULL, 'user_update', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	
	$type = 2; //loại sql update $type = 2;
	
	$qr = $qt->checks_register($id);
	$row = mysql_fetch_array($qr);
	if($row['username']=='' && $row['password']==''){
		$check_create_user = "<tr id='create_user'>
			<td style='border-bottom:solid 1px #CCC'><input type='text' name='username' maxlength='20' size='10' /></td>
			<td style='border-bottom:solid 1px #CCC'>&nbsp;</td>
			<td style='border-bottom:solid 1px #CCC'><input type='button' name='create_user' value='Tạo user' /> <input type='hidden' name='id_register' value='{$id}' /></td>
		</tr>";
	}else{
		$qr = $qt->hocvien_khoahoc($id);
		while($row_ds_kh = mysql_fetch_array($qr)){
			$str_ds_kh .= '<p style="color:blue">- '.$row_ds_kh['name'].'</p>';
		}
		
		$check_create_user = "<tr>
			<td style='border-bottom:solid 1px #CCC'>{$row['username']}</td>
			<td style='border-bottom:solid 1px #CCC'><div id='ajax_khoahoc'>{$str_ds_kh}</div>".$qt->danhsach_khoahoc(5)." &nbsp;</td>
			<td style='border-bottom:solid 1px #CCC'><input type='button' name='create_khoahoc' value='Đăng ký học' /> <input type='hidden' name='id_hocvien' value='{$id}' /></td>
		</tr>";
	}
	
	$create_acc = "<table width='700' border='0' cellspacing='0' cellpadding='5'>
		<tr><td colspan='3'><em><b>Lưu ý:</b><br /> - Mật khẩu có dạng <b>username + 123</b> <br /> - Trạng thái bắt buộc phải được <b>enable</b> <br />
		VD: Username là <b>daotaonama</b> thì mật khẩu là <b>daotaonama123</b></em></td></tr>
		<tr style='background:#AEC7FF'>
			<th align='left' width='100'>Username</th>
			<th align='left' width='300'>Khóa học</th>
			<th align='left' width='60'>&nbsp; <input type='hidden' name='id_tracing_express' value='{$id}' /></th>
		</tr>
		<tbody id='ajax_user'>".$check_create_user."</tbody>
		<tr><td colspan='3'>&nbsp;</td></tr>
	</table>";
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
echo $create_acc."<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>";
//date create
echo $date_create;
//user login
echo $user_login;

//Trạng thái status
$value = array(1 => 'enable', 0 => 'disable');
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
$form->getProperties("Họ tên {$required}", 'name', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties("Email  {$required}", 'email', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();
//phone
if(@$_POST['phone']) $value = $_POST['phone']; else $value = $detail['phone'];
$form->getProperties("Phone", 'phone', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();
//diachi
if(@$_POST['diachi']) $value = $_POST['diachi']; else $value = $detail['diachi'];
$form->getProperties("Địa chỉ", 'diachi', 1, 'input_medium', $value, 150);
echo $form->DisplayProperties();

//khoahoc
$qr = mysql_query("SELECT name FROM info WHERE id='{$detail['khoahoc']}'");
$row_kh = mysql_fetch_array($qr);

if(@$_POST['khoahoc']) $value = $_POST['khoahoc']; else $value = $detail['khoahoc'];
$form->getProperties("Khóa học", 'khoahoc', 1, 'input_medium'.$disabled, $value, 10, '<p style="color:blue">'.$row_kh['name'].'</p>');
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
<br /><br /><br /><br /><br />
";