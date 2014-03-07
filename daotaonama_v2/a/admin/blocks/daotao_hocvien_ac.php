<?php
if($id == 0){
	$lable_submit = 'Thêm mới';
	$type = 1;
	
	//date_create
	$values = date('Y-m-d H:i:s');
	$views = 'date_create';
    $form->getProperties('2',$values,'',$views);
	$date_create = $form->DisplayProperties();
	//user_create
	$values = $user;
	$views = 'user_create';
    $form->getProperties('2',$values,'',$views);
	$user_action = $form->DisplayProperties();
	//disabled
	$disabled = '';
}else{
	$lable_submit = 'Cập nhật';
	$type = 2;
	
	//date_update
	$values = date('Y-m-d H:i:s');
	$views = 'date_update';
    $form->getProperties('2',$values,'',$views);
	$date_create = $form->DisplayProperties();
	//user_update
	$values = $user;
	$views = 'user_update';
    $form->getProperties('2',$values,'',$views);
	$user_action = $form->DisplayProperties();
	
	//disabled
	$disabled = '" disabled="disabled';
	
	$qr = mysql_query("SELECT * FROM `{$table}` WHERE `delete`=0 AND `id`='{$id}' ");
	$row_detail = mysql_fetch_array($qr);
	
	if($row_detail['username'] == '') $btn_user_hv = '<span id="ajax_user_hv" style="font-weight:bold; color:#F00; font-size:120%"><input type="text" name="username" class="input_large" /> <input type="button" name="create_user" class="button" value="Tạo tài khoản" /></span>';
	else $btn_user_hv = '<span id="ajax_user_hv" style="font-weight:bold; color:#F00; font-size:120%">'.$row_detail['username'].'</span>';
		
	//user_hocvien
	$user_hv = '<div style="line-height:20px; margin-bottom:20px"><em><b>Lưu ý:</b><br> - Mật khẩu có dạng <b>username + 123</b> <br> - Trạng thái bắt buộc phải được <b>enable</b> <br>
	VD: Username là <b>daotaonama</b> thì mật khẩu là <b>daotaonama123</b></em></div>
	<div style="margin-bottom:20px; padding:5px 10px; background-color:#FFA">Tài khoản: '.$btn_user_hv.'</div>';
}


if(!empty($_POST)){
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	
	if($check == 1) header("location:administrator.php?p=".$table);
	else echo "<p class='error'>{$check}</p>";
}

echo $user_hv;
echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';
	
	echo $date_create.$user_action;
	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'enable');
	$arr[] = array('id'=>'0', 'name'=>'disable');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//ds_lophoc
	$values = $row_detail['ds_lophoc'];
	$views = 'ds_lophoc'; //name
    $form->getProperties('2',$values,'',$views);
	$hidden_item = $form->DisplayProperties();
	
	$date = date('Y-m-d');
	$arr = array();
	$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 AND ngay_kg>='{$date}' ORDER BY `id_khoahoc`,`name`");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}

	$properties = $row_detail['ds_lophoc']; //default check
	$views = array('','','checkbox checkbox_item','width:345px; height:300px;'); //label name class width
    $form->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Lớp học</td> <td>'.$form->DisplayProperties().$hidden_item.'</td></tr>';
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//ngaysinh
	$values = $row_detail['ngaysinh'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày sinh','ngaysinh','input_large datetimepick'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//gioitinh
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Nam');
	$arr[] = array('id'=>'0', 'name'=>'Nữ');
	$properties = $row_detail['gioitinh']; //default check
	$views = array('Giới tính','gioitinh','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diachi
	$values = $row_detail['diachi'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','diachi','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//id_khoahoc
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'--- Chọn khóa học ---');
	$qr = mysql_query("SELECT id,name FROM web_info WHERE `delete`=0 AND menu_id LIKE '%,5,%' ORDER BY `name` ");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}
	$properties = $row_detail['id_khoahoc']; //default check
	$views = array('Khóa học','id_khoahoc','input_medium'.$disabled); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = 'id'; //name
    $form->getProperties('2',$values,'',$views);
	echo $form->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = 'lang'; //name
    $form->getProperties('2',$values,'',$views);
	echo $form->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\'administrator.php?p='.$table.'\'" />';
	
	//btn_submit
	$properties = ''; //disabled, readonly
	$views = array($lable_submit,'btn_action','submit btn_action'); //label id&name class style
    $form->getProperties('9','',$properties,$views,$other);
	echo $form->DisplayProperties();

echo '</table></form>';