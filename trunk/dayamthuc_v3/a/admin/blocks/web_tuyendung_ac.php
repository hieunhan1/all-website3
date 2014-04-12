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
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//tuyendung_cty_id
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- chọn công ty -----');
	$qr = mysql_query("SELECT id,name FROM `web_tuyendung_cty` WHERE `delete`=0 AND `status`=1 ORDER BY `name`");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}
	$properties = $row_detail['tuyendung_cty_id']; //default check
	$views = array('<span style="color:#F00">** Công ty tuyển dụng</span>','tuyendung_cty_id','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//hannop
	$values = $row_detail['hannop'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Hạn nộp HS','hannop','input_large datetimepick'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//menu_id
	$values = $row_detail['menu_id'];
	$views = 'menu_id'; //name
    $form->getProperties('2',$values,'',$views);
	$hidden_item = $form->DisplayProperties();
	
	$where = "AND (type_id=1 OR type_id=11)";
	$arr = $qt->danhmuc_menu_checkbox(0,'',$where);
	$properties = $row_detail['parent_id']; //default check

	$properties = $row_detail['menu_id']; //default check
	$views = array('','','checkbox checkbox_item','width:345px; height:170px;'); //label name class width
    $form->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Danh mục</td> <td>'.$form->DisplayProperties().$hidden_item.'</td></tr>';
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//name_rewrite
	$values = $row_detail['name_rewrite'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Mô tả viết lại','name_rewrite','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//noilamviec
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- select -----');
	$arr[] = array('id'=>1, 'name'=>'Tp.HCM');
	$arr[] = array('id'=>2, 'name'=>'Hà Nội');
	$arr[] = array('id'=>3, 'name'=>'Huế');
	$arr[] = array('id'=>4, 'name'=>'Đà Nẵng');
	$arr[] = array('id'=>5, 'name'=>'Cần Thơ');
	$arr[] = array('id'=>6, 'name'=>'Khác');
	$properties = $row_detail['noilamviec']; //default check
	$views = array('Nơi làm việc','noilamviec','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//mucluong
	$values = $row_detail['mucluong'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mức lương','mucluong','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//soluongtuyen
	$values = $row_detail['soluongtuyen'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số lượng tuyển','soluongtuyen','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//metaDescription
	$values = $row_detail['metaDescription'];
	$properties = ''; //disabled, readonly
	$views = array('Mô tả ngắn công việc','metaDescription','textarea'); //label id&name class colspan
	//$other = ckeditor_custom('metaDescription');
    $form->getProperties('3',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//metaKeyword
	$values = $row_detail['metaKeyword'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Keyword','metaKeyword','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//quyenloi
	$values = $row_detail['quyenloi'];
	$properties = ''; //disabled, readonly
	$views = array('Quyền lợi','quyenloi','textarea'); //label id&name class colspan
	$other = ckeditor_custom('quyenloi');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//yeucau
	$values = $row_detail['yeucau'];
	$properties = ''; //disabled, readonly
	$views = array('Yêu cầu','yeucau','textarea'); //label id&name class colspan
	$other = ckeditor_custom('yeucau');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//content
	$values = $row_detail['content'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','content','textarea','colspan=2'); //label id&name class colspan
	$other = ckeditor_full('content');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//other
	$values = $row_detail['other'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Khác','other','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
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