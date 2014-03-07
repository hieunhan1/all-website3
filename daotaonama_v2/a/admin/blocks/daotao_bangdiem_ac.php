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
	
	//id_lophoc
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'--- Chọn lớp học ---');
	$qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 ORDER BY `name` ");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name']);
	}
	$properties = $row_detail['id_lophoc']; //default check
	$views = array('Lớp học','id_lophoc','input_medium lophoc'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//id_hocvien
	echo '<tr><td class="label">Học viên</td> <td><select name="id_hocvien" class="input_medium hocvien"></select></td></tr>';
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem1
	$values = $row_detail['diem1'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 1','diem1','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem2
	$values = $row_detail['diem2'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 2','diem2','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem3
	$values = $row_detail['diem3'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 3','diem3','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem4
	$values = $row_detail['diem4'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 4','diem4','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem5
	$values = $row_detail['diem5'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 5','diem5','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem6
	$values = $row_detail['diem6'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 6','diem6','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem7
	$values = $row_detail['diem7'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 7','diem7','input_large'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//diem8
	$values = $row_detail['diem8'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Cột điểm 8','diem8','input_large'); //label id&name class style
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