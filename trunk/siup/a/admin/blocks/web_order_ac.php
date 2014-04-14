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

echo '
<style>
.dhct {width:600px; border-top:solid 1px #666; border-left:solid 1px #666; border-right:solid 1px #666}
.dhct .name{width:280px; padding:3px 5px; float:left}
.dhct .item1{width:30px; padding:3px 5px; float:left; text-align:center}
.dhct .item2{width:70px; padding:3px 5px; float:left; text-align:center}
.dhct .item3{width:60px; padding:3px 5px; float:left; text-align:center}
</style>
<div class="dhct" style="background-color:#FFCBCB"><div class="item1"><b>STT</b></div><div class="name"><b>Tên sản phẩm</b></div><div class="item3"><b>Số lượng</b></div><div class="item3"><b>Giá</b></div><div class="item2"><b>Thành tiền</b></div><div class="item1"><b>Xóa</b></div><div style="clear:both"></div></div>';

if(@$_GET['order_d']) mysql_query('UPDATE web_order_detail SET `delete`=1 WHERE id='.$_GET['order_d']);
$order_detail = mysql_query("SELECT web_order_detail.*,web_products.name as tensp FROM web_order_detail,web_products WHERE order_id='{$id}' AND product_id=web_products.id AND web_order_detail.delete=0");
$j = 0;
while($row_order = mysql_fetch_array($order_detail)){
	$j++;
	$tongsoluong += $row_order['soluong'];
	$tongtien += $row_order['thanhtien'];
	echo '<div class="dhct">
	<div class="item1"><b>'.$j.'</b></div>
	<div class="name">'.$row_order['tensp'].'</div>
	<div class="item3">'.$row_order['soluong'].'</div>
	<div class="item3">'.number_format($row_order['price']).'</div>
	<div class="item2">'.number_format($row_order['thanhtien']).'</div>
	<div class="item1"><a href="'.$_SERVER['REQUEST_URI'].'&order_d='.$row_order['id'].'">Xóa</a></div>
	<div style="clear:both"></div>
	</div>';
}
echo '<div class="dhct" style="background-color:#FFCBCB"><div class="item1">&nbsp;</div><div class="name"><b>Tổng cộng</b> <em>(chưa bao gồm VAT)</em></div><div class="item3"><b>'.$tongsoluong.'</b></div><div class="item3">&nbsp;</div><div class="item2"><b>'.number_format($tongtien).'</b></div><div style="clear:both"></div></div><br />';

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';
	
	echo $date_create.$user_action;
	
	//status
	$arr = array();
	$arr[] = array('id'=>'0', 'name'=>'Chưa gửi');
	$arr[] = array('id'=>'2', 'name'=>'Đã gửi');
	$arr[] = array('id'=>'1', 'name'=>'Đã xem');
	if($row_detail['status']=='') $properties = 0; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $form->getProperties('4',$arr,$properties,$views);
	echo $form->DisplayProperties();
	
	//nhanvien_lienhe
	$other = '<input type="button" name="btn_gui_thongtin" value="Gửi thông tin" class="button" /><br /> <span id="ajax_gui_thongtin" class="message"></span>';
	
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- chọn nhân viên -----');
	$qr = mysql_query("SELECT id,name,email FROM `web_dangky_nhanvien` WHERE `delete`=0 AND `status`=1 ORDER BY `date_update`");
	while($row = mysql_fetch_array($qr)){
		$arr[] = array('id'=>$row['id'], 'name'=>"{$row['name']} - ({$row['email']})");
	}
	$properties = $row_detail['nhanvien_lienhe']; //default check
	$views = array('<span style="color:#F00">** Gửi đến nhân viên</span>','nhanvien_lienhe','input_medium'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views,$other);
	echo $form->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//adress
	$values = $row_detail['adress'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','adress','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//message
	$values = $row_detail['message'];
	$properties = ''; //disabled, readonly
	$views = array('Yêu cầu khác','message','textarea'); //label id&name class colspan
    $form->getProperties('3',$values,$properties,$views);
	echo $form->DisplayProperties();
	
	//tong_thanhtien
	$values = $row_detail['tong_thanhtien'];
	$properties = array('10'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tổng cộng','tong_thanhtien','input_medium'); //label id&name class style
    $form->getProperties('1',$values,$properties,$views);
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