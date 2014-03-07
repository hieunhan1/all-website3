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
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['status'] == '') $properties = 1; $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//date_update
	$values = $row_detail['date_update'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày','date_update','input_large datetimepick'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//lang
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- select -----');
	$qr = mysql_query("SELECT * FROM `web_language` WHERE `status`=1 ORDER BY `order` ");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['ma'], 'name'=>$row['name']);
	}
	$properties = $row_detail['lang']; //default check
	$views = array('Ngôn ngữ','lang','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//max_limit_1
	$values = $row_detail['max_limit_1'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số tin tức','max_limit_1','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//max_limit_2
	$values = $row_detail['max_limit_2'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số sản phẩm','max_limit_2','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//max_limit_3
	$values = $row_detail['max_limit_3'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số hình ảnh','max_limit_3','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//max_limit_4
	$values = $row_detail['max_limit_4'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số video','max_limit_4','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//copyright
	$values = $row_detail['copyright'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Copyright','copyright','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//yahoo
	$values = $row_detail['yahoo'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Yahoo','yahoo','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//tel
	$values = $row_detail['tel'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','tel','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//hotline
	$values = $row_detail['hotline'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Hotline','hotline','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//contact_foo
	$values = $row_detail['contact_foo'];
	$properties = ''; //disabled, readonly
	$views = array('Thông tin footer','contact_foo','textarea'); //label id&name class colspan
	$other = ckeditor_custom('contact_foo');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//contact_form
	$values = $row_detail['contact_form'];
	$properties = ''; //disabled, readonly
	$views = array('Thông tin contact','contact_form','textarea'); //label id&name class colspan
	$other = ckeditor_custom('contact_form');
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