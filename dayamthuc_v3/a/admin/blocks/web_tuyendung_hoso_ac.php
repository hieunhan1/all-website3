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
	$arr[] = array('id'=>'1', 'name'=>'Đã gửi');
	$arr[] = array('id'=>'0', 'name'=>'Chưa gửi');
	if($row_detail['status']=='') $properties = 0; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//email nha tuyen dung
	$qr = mysql_query("SELECT web_tuyendung.name,name_rewrite,menu_id,email FROM web_tuyendung,web_tuyendung_cty WHERE web_tuyendung.`delete`=0 AND web_tuyendung.id='{$row_detail['tuyendung_id']}' AND tuyendung_cty_id=web_tuyendung_cty.id");
	$row_nha_tuyen_dung = mysql_fetch_array($qr);
	
	$values = $row_nha_tuyen_dung['email'];
	$properties = '<input type="button" name="btn_email_nhatuyendung" value="Gửi thông tin" class="button" /><br /> <span id="ajax_gui_hoso" class="message"></span>'; //other
	$views = array('Gửi hồ sơ','email_nhatuyendung','color:#00F; width:auto; line-height:25px; float:left'); //label id&name style
    $form->getProperties('10',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//diachi
	$values = $row_detail['diachi'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','diachi','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//phone
	$values = $row_detail['phone'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//email
	$values = $row_detail['email'];
	$properties = array('60'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//trinhdo
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- select -----');
	$arr[] = array('id'=>1, 'name'=>'Chưa tốt nghiệp phổ thông');
	$arr[] = array('id'=>2, 'name'=>'Tốt nghiệp phổ thông');
	$arr[] = array('id'=>3, 'name'=>'Trung cấp');
	$arr[] = array('id'=>4, 'name'=>'Cao đẳng');
	$arr[] = array('id'=>5, 'name'=>'Đại học');
	$arr[] = array('id'=>6, 'name'=>'Sau đại học');
	$properties = $row_detail['trinhdo']; //default check
	$views = array('Trình độ','trinhdo','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//content
	$values = $row_detail['content'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','content','textarea','colspan=2'); //label id&name class colspan
	$other = ckeditor_full('content');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//Xem thong tin tuyen dung
	echo '<tr><td colspan="2" style="font-weight:bold">Xem thông tin tuyển dụng: <a href="/'.$qt->link_detail($row_nha_tuyen_dung['menu_id']).$row_nha_tuyen_dung['name_rewrite'].'.html" target="_blank">'.$row_nha_tuyen_dung['name'].'</a></tr>';
	
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
	
	if($id != 0){
		//btn_submit
		$properties = ''; //disabled, readonly
		$views = array($lable_submit,'btn_action','submit btn_action'); //label id&name class style
		$form->getProperties('9','',$properties,$views,$other);
		echo $form->DisplayProperties();
	}else{
		echo '<tr><td>&nbsp;</td> <td>'.$other.'</td></tr>';
	}

echo '</table></form>';