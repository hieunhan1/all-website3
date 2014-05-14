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
	
	$where = "AND lang='{$lang}' AND type_id=3 ";
	$arr = $qt->danhmuc_menu_checkbox(0,'',$where);
	$properties = $row_detail['parent_id']; //default check

	$properties = $row_detail['menu_id']; //default check
	$views = array('','','checkbox checkbox_item_menu','width:345px; height:270px;'); //label name class width
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
	if($row_detail['url_hinh'] != '') $other .= '<div class="avarta"><img src="'.url_product_image_thumb.$row_detail['url_hinh'].'" /></div>';
	
	$values = $row_detail['url_hinh'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_medium'); //label id&name class
    $form->getProperties('1',$values,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//price
	$values = $row_detail['price'];
	$properties = array('9'); //maxlength OTHER (disabled, readonly) 
	$views = array('Giá SP','price','input_medium'); //label id&name class style
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
	
	//thongtin_them
	$values = $row_detail['thongtin_them'];
	$properties = ''; //disabled, readonly
	$views = array('Thông tin thêm','thongtin_them','textarea'); //label id&name class colspan
	$other = ckeditor_custom('thongtin_them');
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
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Có');
	$arr[] = array('id'=>'0', 'name'=>'Không');
	if($row_detail['other']=='') $properties = 0; else $properties = $row_detail['other']; //default check
	$views = array('Trang chủ OR nổi bật','other','radio',' &nbsp; '); //label name class other
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

// hinh san pham them
if($id != 0){ ?>
<h2 style='color:blue'>Upload hình ảnh sản phẩm</h2><br />
<table border="0" cellpadding="5" cellspacing="0">
	<tr bgcolor="#0099FF">
    	<th align="left">Mô tả</th>
    	<th align="left">Tên hình</th>
        <td><input type="hidden" name="id_other" value="<?php echo $id; ?>" /></td>
    </tr>
    <tr>
    	<td style="border-bottom:solid 1px #CCC"><input type="text" name="name_other" class="input_large" /></td>
    	<td style="border-bottom:solid 1px #CCC">
            <input type='text' name='url_hinh_other' id='url_hinh_other' class='input_large' maxlength='150' value='' />
            <input type='button' name='btnBrowse' id='btnBrowse' value='Chọn ảnh' class='button' onclick="BrowseServer('Images:/','url_hinh_other')"/>
        </td>
        <td style="border-bottom:solid 1px #CCC"><input type="button" name="btnImageCreate" value="Create" class="button" /></td>
    </tr>
    <tbody id="ajax_image"></tbody>
    <?php
    $qr = mysql_query("SELECT id,name,url_hinh FROM web_products_image WHERE `delete`=0 AND status=1 AND products_id='{$id}' ORDER BY date_update DESC");
	while($row = mysql_fetch_array($qr)){
		echo '<tr id="ajax_id_'.$row['id'].'">
			<td style="border-bottom:solid 1px #CCC">'.$row['name'].'</td>
			<td style="border-bottom:solid 1px #CCC">'.$row['url_hinh'].'</td>
			<td style="border-bottom:solid 1px #CCC"><a href="javascript:;" class="delete_img delete_img_'.$row['id'].'" title="'.$row['name'].'">Xóa</a></td>
		</tr>';
	}
	?>
</table>

<br /><br /><br /><br /><br />
<?php }?>