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

	//menu_id
	$values = $row_detail['menu_id'];
	$views = 'menu_id'; //name
    $form->getProperties('2',$values,'',$views);
	$hidden_item = $form->DisplayProperties();
	
	$where = "AND (type_id=9 OR type_id=6)";
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
	
	//url_hinh
	$values = 'url_hinh'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$form->getProperties('6',$values,'',$views);
	$other = $form->DisplayProperties();
	if($row_detail['url_hinh'] != '') $other .= '<div class="avarta"><img src="'.url_articles_image_thumb.$row_detail['url_hinh'].'" /></div>';
	
	$values = $row_detail['url_hinh'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_medium'); //label id&name class
    $form->getProperties('1',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//link
	$values = $row_detail['link'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Code youtube','link','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//metaDescription
	$values = $row_detail['metaDescription'];
	$properties = ''; //disabled, readonly
	$views = array('Tóm tắt','metaDescription','textarea'); //label id&name class colspan
	//$other = ckeditor_custom('metaDescription');
    $form->getProperties('3',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//metaKeyword
	$values = $row_detail['metaKeyword'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Keyword','metaKeyword','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//content
	$values = $row_detail['content'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','content','textarea','colspan=2'); //label id&name class colspan
	$other = ckeditor_full('content');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//other
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['other']=='') $properties = 1; else $properties = $row_detail['other']; //default check
	$views = array('Hiện trang chủ','other','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
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