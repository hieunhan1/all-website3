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
	//hidden field date_update
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
echo $create_acc."<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>";
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

//id_lophoc
$values = array();
$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 AND status=1 ORDER BY name, date_update DESC");
while($row = mysql_fetch_array($qr)){
	$values[] = array('id'=>$row['id'],'name'=>$row['name']);
}
if(@$_POST['id_lophoc']) $check = $_POST['id_lophoc']; else $check = $detail['id_lophoc'];
$form->getProperties('Lớp học', 'id_lophoc', 6, 'input_medium select_lophoc', $values, $check);
echo $form->DisplayProperties();
//id_hocvien
if($detail['id_hocvien']=='') $check = '0'; else $check = $detail['id_hocvien'];
echo '<tr>
	<th align="right">Học viên</th>
	<td><select name="id_hocvien" class="input_medium select_hocvien"><option value="'.$check.'">-- Chọn học viên --</option></select></td>
</tr>';

//id_cotdiem
if($detail['id_cotdiem']=='') $check = '0'; else $check = $detail['id_cotdiem'];
echo '<tr>
	<th align="right">Cột điểm</th>
	<td><select name="id_cotdiem" class="input_medium select_cotdiem"><option value="'.$check.'">-- Chọn cột điểm --</option></select></td>
</tr>';

//diem
if(@$_POST['diem']) $value = $_POST['diem']; else $value = $detail['diem'];
$form->getProperties("Điểm", 'diem', 1, 'input_medium', $value, 5);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Ghi chú", 'name', 1, 'input_medium', $value, 100);
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