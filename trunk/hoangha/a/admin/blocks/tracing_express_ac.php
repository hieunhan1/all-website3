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
	
	$qr = $qt->select_tracing_express_detail($id);
	while($row_te = mysql_fetch_array($qr)){
		$str_te .= "<tr id='tracing_express_detail_{$row_te['id']}'>
			<td style='border-bottom:solid 1px #CCC'>".date('d/m/Y H:i',strtotime($row_te['date_update']))."</td>
			<td style='border-bottom:solid 1px #CCC'>{$row_te['name']}</td>
			<td style='border-bottom:solid 1px #CCC'>{$row_te['notes']}</td>
			<td style='border-bottom:solid 1px #CCC'><p class='delete_tracing_express_detail {$row_te['id']}'><a href='javascript:;'>Xóa</a></p></td>
		</tr>";
	}
	$str_te = "<br /><div id='add_tracing_express_detail' style='color:blue; font-weight:bold'>Chi tiết Tracing Express</div><br />
	<table width='900' border='0' cellspacing='0' cellpadding='5'>
		<tr style='background:#AEC7FF'>
			<th align='left' width='140'>Ngày</th>
			<th align='left' width='200'>Bưu cục</th>
			<th align='left'>Ghi chú</th>
			<th align='left' width='60'>&nbsp; <input type='hidden' name='id_tracing_express' value='{$id}' /></th>
		</tr>
		<tbody id='ajax_detail'>".$str_te."</tbody>
		<tr>
			<td style='border-bottom:solid 1px #CCC'><input type='text' name='date_update' id='ngay_detail' maxlength='10' size='15' /></td>
			<td style='border-bottom:solid 1px #CCC'><input type='text' name='buucuc' maxlength='100' size='25' /></td>
			<td style='border-bottom:solid 1px #CCC'><input type='text' name='notes' size='65' /></td>
			<td style='border-bottom:solid 1px #CCC'><input type='button' name='them_detail' value='Thêm' /></td>
		</tr>
	</table>
	<br /><br /><br />";
	
	$ma_bill = "'  disabled='disabled";
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

echo $str_te;

echo "<form action='' method='post' name='form1'>
<table width='620' border='0' cellspacing='0' cellpadding='5'>
";

//name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties("Mã Bill:", 'name', 1, "input_medium".$ma_bill, $value, 20);
echo $form->DisplayProperties();

//noi_gui
if(@$_POST['noi_gui']) $value = $_POST['noi_gui']; else $value = $detail['noi_gui'];
$form->getProperties("Nơi gửi:", 'noi_gui', 1, "input_medium", $value, 50);
echo $form->DisplayProperties();

//buucuc_gui
if(@$_POST['buucuc_gui']) $value = $_POST['buucuc_gui']; else $value = $detail['buucuc_gui'];
$form->getProperties("Bưu cục gửi:", 'buucuc_gui', 1, "input_medium", $value, 50);
echo $form->DisplayProperties();

//ngay_gui
if(@$_POST['ngay_gui']) $value = $_POST['ngay_gui'];
else if($detail['ngay_gui'] != '') $value = $detail['ngay_gui'];
$form->getProperties('Thời gian gửi', 'ngay_gui', 1, 'input_large datetimepick', $value, 20);
echo $form->DisplayProperties();

//loaihang
if(@$_POST['loaihang']) $value = $_POST['loaihang']; else $value = $detail['loaihang'];
$form->getProperties("Loại hàng:", 'loaihang', 1, "input_medium", $value, 50);
echo $form->DisplayProperties();

//status
$value = array(1 => 'Đã đến nơi', 0 => 'Đang phát');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 0; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//nguoi_nhan
if(@$_POST['nguoi_nhan']) $value = $_POST['nguoi_nhan']; else $value = $detail['nguoi_nhan'];
$form->getProperties("Người nhận:", 'nguoi_nhan', 1, "input_medium", $value, 50);
echo $form->DisplayProperties();

//buucuc_nhan
if(@$_POST['buucuc_nhan']) $value = $_POST['buucuc_nhan']; else $value = $detail['buucuc_nhan'];
$form->getProperties("Bưu cục phát:", 'buucuc_nhan', 1, "input_medium", $value, 50);
echo $form->DisplayProperties();

//date_update
if(@$_POST['date_update']) $value = $_POST['date_update'];
else if($detail['date_update'] != '') $value = $detail['date_update'];
$form->getProperties('Thời gian nhận:', 'date_update', 1, 'input_large', $value, 20);
echo $form->DisplayProperties();

//trongluong
if(@$_POST['trongluong']) $value = $_POST['trongluong']; else $value = $detail['trongluong'];
$form->getProperties("Trọng lượng:", 'trongluong', 1, "input_medium", $value, 10);
echo $form->DisplayProperties();

//date create
echo $date_create;
//user login
echo $user_login;

echo "<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td><input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />
	<input type='button' name='btnCancel' value='Cancel' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"'>
	</td>
</tr>
<tr><td colspan='2'>&nbsp;<br /><br /></td></tr>";



echo "</table></form><br />";