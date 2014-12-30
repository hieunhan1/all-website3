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
	$arr[] = array('id'=>'1', 'name'=>'Trả lời đúng');
	$arr[] = array('id'=>'2', 'name'=>'Trả lời sai');
	$arr[] = array('id'=>'0', 'name'=>'Thông tin sai');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//gender
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Nam');
	$arr[] = array('id'=>'0', 'name'=>'Nữ');
	$properties = $row_detail['gender']; //default check
	$views = array('Giới tính','gender','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
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

	//address
	$values = $row_detail['address'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','address','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	echo '<tr>
		<td class="label">Hình món ăn</td>
		<td><img height="150" src="http://www.dayamthuc.vn/event/monan/'.$row_detail['img_monan'].'.jpg" /></td>
	</tr>';
	
	//answer_1
	$values = $row_detail['answer_1'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tên món ăn','answer_1','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//answer_2
	/*$values = $row_detail['answer_2'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly) 
	$views = array('Câu 2','answer_2','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();*/
	$values = $row_detail['answer_2'];
	$properties = ''; //disabled, readonly
	$views = array('Nguyên liệu','answer_2','textarea'); //label id&name class colspan
	$other = ckeditor_custom('answer_2');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();

	//answer_3
	/*$values = $row_detail['answer_3'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Câu 3','answer_3','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();*/
	$values = $row_detail['answer_3'];
	$properties = ''; //disabled, readonly
	$views = array('Cách chế biến','answer_3','textarea'); //label id&name class colspan
	$other = ckeditor_custom('answer_3');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	$datetime = $row_detail['date_end'] - $row_detail['date_start'];
	echo '<tr>
		<td class="label">Tổng thời gian</td>
		<td valign="middle" style="color:#00F; font-weight:bold">'.date('i:s', $datetime).'</td>
	</tr>';
	
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