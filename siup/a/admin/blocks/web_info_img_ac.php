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
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//date_update
	$values = $row_detail['date_update'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày','date_update','input_large datetimepick'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//info_id
	$arr = array();
	$qr = mysql_query("SELECT id,name FROM web_info WHERE `delete`=0 AND status=1 ORDER BY `name` ");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}

	$properties = $row_detail['info_id']; //default check
	$views = array('Dự án','info_id','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//url_hinh
	$values = 'url_hinh'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$form->getProperties('6',$values,'',$views);
	$other = $form->DisplayProperties();
	if($row_detail['url_hinh'] != '') $other .= '<div class="avarta"><img src="'.url_project_image_thumb.$row_detail['url_hinh'].'" /></div>';
	
	$values = $row_detail['url_hinh'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_medium'); //label id&name class
    $form->getProperties('1',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	/*//theloai
	$values = $row_detail['theloai'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thể loại','theloai','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diadiem
	$values = $row_detail['diadiem'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa điểm','diadiem','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//chudautu
	$values = $row_detail['chudautu'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Chủ đầu tư','chudautu','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//chitieu
	$values = $row_detail['chitieu'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Chỉ tiêu','chitieu','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//congviec
	$values = $row_detail['congviec'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Công việc','congviec','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//nampheduyet
	$values = $row_detail['nampheduyet'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Năm phê duyệt','nampheduyet','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();*/
	
	//info
	$values = $row_detail['info'];
	$properties = ''; //maxlength OTHER (disabled, readonly) 
	$views = array('Tóm lược','info','textarea'); //label id&name class colspan
	$other = ckeditor_custom('info');
    $form->getProperties('3',$values,$properties,$views,$other);
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