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
	//password
	$values = md5('123456789');
	$views = 'password';
    $form->getProperties('2',$values,'',$views);
	$password = $form->DisplayProperties();
	//disabled
	$disabled = '';
	//reset password
	$reset_pass = '';
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
	//password
	$password = '';
	
	//disabled
	$disabled = 'disabled="disabled"';
	
	$qr = mysql_query("SELECT * FROM `{$table}` WHERE `delete`=0 AND `id`='{$id}' ");
	$row_detail = mysql_fetch_array($qr);
	
	//reset password
	$reset_pass = '<div style="color:#F00; font-size:110%; font-style:italic; margin-bottom:50px">
		<a href="javascript:;" id="reset_pass">Reset password (Password: "<b>123456789</b>")</a>
		<input type="hidden" name="reset_id" value="'.$row_detail['id'].'" /> <input type="hidden" name="reset_user" value="'.$row_detail['username'].'" />
	</div>';
}


if(!empty($_POST)){
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	
	if($check == 1) header("location:administrator.php?p=".$table);
	else echo "<p class='error'>{$check}</p>";
}

echo '<p style="color:#360; font-size:110%">Lưu ý: Khi tại tài khoản password mặc định là "<b>123456789</b>"</p>
<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';
	
	echo $date_create.$user_action;
	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//username
	$values = $row_detail['username'];
	$properties = array('32',$disabled); //maxlength OTHER (disabled, readonly)
	$views = array('Username','username','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//group_id
	$values = $row_detail['group_id'];
	$properties = array('1'); //maxlength OTHER (disabled, readonly) 
	$views = array('Chi nhánh','group_id','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//password
	echo $password;
	
	//phan quyen
	$arr = array();
	$qr = mysql_query("SELECT `id`,`name` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order` ");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}
	
	$properties = $row_detail['quyen_xem']; //default check
	$views = array('Xem','','checkbox checkbox_xem','width:167px; height:370px;'); //label name class width
	$form->getProperties('7',$arr,$properties,$views);
	$xem = $form->DisplayProperties();
	
	$properties = $row_detail['quyen_action']; //default check
	$views = array('Quyền','','checkbox checkbox_action','width:167px; height:370px;'); //label name class width
	$form->getProperties('7',$arr,$properties,$views);
	$quyen = $form->DisplayProperties();
	
	$values = $row_detail['quyen_xem'];
	$views = 'quyen_xem'; //name
    $form->getProperties('2',$values,'',$views);
	$xem .= $form->DisplayProperties();
	
	$values = $row_detail['quyen_action'];
	$views = 'quyen_action'; //name
    $form->getProperties('2',$values,'',$views);
	$quyen .= $form->DisplayProperties();
	
	echo '<tr><td class="label">Phân quyền</td> <td>'.$xem.$quyen.'</td></tr>';
	
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

echo '</table></form>'.$reset_pass;