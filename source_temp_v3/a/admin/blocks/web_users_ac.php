<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10">
	<tr>
    	<td class="label">Trạng thái</td>
        <td><select name="" id="" class="input_medium">
        	<option value="1">111111111</option>
        </select></td>
    </tr>
	<?php
	/*input_radio*/
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	$properties = 1; /*default check*/
	$views = array('Trạng thái','status','radio'); /*label name class*/
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	/*select*/
	$arr = array();
	$arr[] = array('id'=>'0', 'name'=>'-- Chọn danh sách --');
	$arr[] = array('id'=>'1', 'name'=>'Trang 1');
	$arr[] = array('id'=>'2', 'name'=>'Trang 2');
	$arr[] = array('id'=>'3', 'name'=>'Trang 3');
	$properties = '3'; /*default check*/
	$views = array('Danh sách','danhsach','input_medium'); /*label id&name class*/
    $form->getProperties('5',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	/*input_radio*/
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Top');
	$arr[] = array('id'=>'2', 'name'=>'Left');
	$arr[] = array('id'=>'3', 'name'=>'Right');
	$properties = ',1,2,'; /*default check*/
	$views = array('Check box','name_checkbox','checkbox'); /*label name class*/
    $form->getProperties('7',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	/*input_text*/
	$values = 'tran nhan';
	$properties = array('12'); /*maxlength OTHER (disabled="disabled" - readonly="readonly") */
	$views = array('Mô tả','name','input_medium'); /*label id&name class style*/
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	/*input_hidden*/
	$values = 'tran nhan id';
	$views = 'id'; /*name*/
    $form->getProperties('2',$values,'',$views);
	echo $form->DisplayProperties();
	
	/*input_hinhanh*/
	$values = 'url_hinh';
	$views = array('Chọn file ảnh','btnBrowse','button'); /*label id&name class*/
	$form->getProperties('6',$values,'',$views);
	$other = $form->DisplayProperties();
	
	$values = 'hinhanh.jpg';
	$properties = array('150'); /*maxlength OTHER (disabled="disabled" - readonly="readonly") */
	$views = array('Ảnh đại diện','url_hinh','input_large'); /*label id&name class*/
    $form->getProperties('1',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	/*textarea*/
	$values = 'tran nhan text area';
	$properties = ''; /*disabled="disabled" - readonly="readonly"*/
	$views = array('Noi dung','content','textarea'); /*label id&name class*/
    $form->getProperties('3',$values,$properties,$views);
	echo $form->DisplayProperties();
	?>
</table>
</form>