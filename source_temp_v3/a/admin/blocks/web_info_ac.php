<?php
if($id == 0) $lable_submit = 'Thêm mới'; else $lable_submit = 'Cập nhật';


if(!empty($_POST)){
	$table = str_replace('_ac','',$p);
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	if($check == 1) header("location:administrator.php?p=".$page);
	else echo "<p class='error'>{$check}</p>";
}

?>

<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">
	<?php
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	$properties = 1; //default check
	$views = array('Trạng thái','status','radio'); //label name class
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//date_update
	$values = '';
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày','date_update','input_large datetimepick'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();

	//menu_id
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Top');
	$arr[] = array('id'=>'2', 'name'=>'Left');
	$arr[] = array('id'=>'3', 'name'=>'Right');
	$properties = ',1,2,'; //default check
	$views = array('','name_checkbox_ds','checkbox','width:345px; height:70px;'); //label name class width
    $form->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Danh mục</td> <td>'.$form->DisplayProperties().'</td></tr>';
	
	//name
	$values = '';
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//name_rewrite
	$values = '';
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Mô tả viết lại','name_rewrite','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//url_hinh
	$values = 'url_hinh';
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$form->getProperties('6',$values,'',$views);
	$other = $form->DisplayProperties();
	
	$values = 'hinhanh.jpg';
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_large'); //label id&name class
    $form->getProperties('1',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//metaDescription
	$values = 'tran nhan text area';
	$properties = ''; //disabled, readonly
	$views = array('Tóm tắt','metaDescription','textarea'); //label id&name class colspan
	//$other = ckeditor_custom('metaDescription');
    $form->getProperties('3',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//metaKeyword
	$values = '';
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Keyword','metaKeyword','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//content
	$values = 'tran nhan text area';
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','content','textarea','colspan=2'); //label id&name class colspan
	$other = ckeditor_full('content');
    $form->getProperties('3',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//id
	$values = 'tran nhan id';
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
	?>
</table>
</form>