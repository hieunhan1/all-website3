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
	
	$qr = mysql_query("SELECT * FROM `{$table}` WHERE `delete`=0 AND `id`='{$id}' ");
	$row_detail = mysql_fetch_array($qr);
}


if(!empty($_POST)){
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	
	if($check == 1) header("location:administrator.php?p=".$table);
	else echo "<p class='error'>{$check}</p>";
}

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';
	
	echo $date_create.$user_action;
	
	//status
	$arr = array();
	$arr[] = array('id'=>'0', 'name'=>'Chưa gửi');
	$arr[] = array('id'=>'2', 'name'=>'Đã gửi');
	$arr[] = array('id'=>'1', 'name'=>'Đã xem');
	if($row_detail['status']=='') $properties = 0; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//nhanvien_lienhe
	$other = '<input type="button" name="btn_gui_lienhe" value="Gửi thông tin" class="button" /><br /> <span id="ajax_gui_thongtin" class="message"></span>';
	
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- chọn nhân viên -----');
	$qr = mysql_query("SELECT id,name,email FROM `web_dangky_nhanvien` WHERE `delete`=0 AND `status`=1 ORDER BY `date_update`");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>"{$row['name']} - ({$row['email']})");
	}
	$properties = $row_detail['nhanvien_lienhe']; //default check
	$views = array('<span style="color:#F00">** Gửi đến nhân viên</span>','nhanvien_lienhe','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
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
	
	//message
	$values = $row_detail['message'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','message','textarea'); //label id&name class colspan
	$other = ckeditor_custom('message');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = 'id'; //name
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