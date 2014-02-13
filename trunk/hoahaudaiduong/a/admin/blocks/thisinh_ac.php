<?php
$id = $_GET['id']; settype($id, int);
if(@$_POST['btnCancel']) btnCancel($page);
if($id == 0){ //create
	$name = 'btnSubmit';
	$display = 'Create';
	
	//hidden field user_create
	$form->getProperties(NULL, 'user_create', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	//hidden field date_create
	$form->getProperties(NULL, 'date_create', 2, NULL, date('Y-m-d H:i:s'), 20);
	$date_create = $form->DisplayProperties();
	
	$type = 1; //loại sql create $type = 1;
} else {  //update
	$name = 'btnSubmit';
	$display = 'Update';
	
	$qr_detail = mysql_query("SELECT * FROM {$page} WHERE id='{$id}'");
	$detail = mysql_fetch_array($qr_detail);
	mysql_free_result($qr_detail);
	
	//hidden field user_update
	$form->getProperties(NULL, 'user_update', 2, NULL, $user, 20);
	$user_login = $form->DisplayProperties();
	
	$type = 2; //loại sql update $type = 2;
}

if(!empty($_POST)){
	$table = str_replace('_ac','',$p);
	$field = array_keys($_POST);
	$value = array_values($_POST);
	$sql->get_sql($type,$table,$field,$value,$id);
	$check = $sql->executable();
	if($check == 1) header("location:administrator.php?p=".$page);
	else echo "<p class='error'>{$check}</p>";
}

/*
********************************************************************
* $form->getProperties($displayname, $name, $type, $cssclass, $value = NULL, $length = NULL, $orther = NULL);
* $form->DisplayProperties();
* $type = 1 // text
* $type = 2 // hidden
* $type = 3 // textarea
* $type = 4 // checkbox
* $type = 41// checkbox group
* $type = 5 // radio
* $type = 6 // select
* $type = 7 // button
* $type = 8 // submit
* $type = 9 // DeQuy
********************************************************************
***********
* NOT USED
* other, lang, delete
*/
// form
echo "
<form action='' method='post' name='form1'>
<table width='900' border='0' cellspacing='0' cellpadding='5'>
";
//date create
echo $date_create;
//user login
echo $user_login;

//Trạng thái status
$value = array(1 => 'Hiện', 0 => 'Ẩn');
if($_POST['status'] != '') $check = $_POST['status'];
else if($detail['status'] != '') $check = $detail['status'];
else $check = 1; //giá trị mặc định
$form->getProperties('Trạng thái', 'status', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();

//lang
$qr = $qt->language();
if(mysql_num_rows($qr) > 1){
	$values_lang = array();
	while($row = mysql_fetch_array($qr)){
		$values_lang[] = array('id'=>$row['ma'], 'name'=>$row['name']);
	}
	if($_GET['id']==0) $check = $_SESSION['language']; else $check = $detail['lang'];
	$form->getProperties('Ngôn ngữ', 'lang', 6, 'input_large', $values_lang, $check);
	echo $form->DisplayProperties();
}else{
	$row = mysql_fetch_array($qr);
	$form->getProperties("Lang", 'lang', 2, 'input_medium', $row['ma'], 3);
	echo $form->DisplayProperties();
}

//Đệ qui lấy danh sách menu
$level = 0;
$style1 = '&nbsp;';
$style2 = '&nbsp;---';
$str_query = array("SELECT id, name FROM menu ", " WHERE `delete`=0 AND lang='".$_SESSION['language']."' AND type_id=3 AND parent_id= ", " ORDER BY `order` ASC ");
$form->getProperties($level, $style1, 9, $style2, $str_query);
$values = $form->DisplayProperties();
//Menu_id hidden field 
if(@$_POST['menu_id']) $checks = $_POST['menu_id']; else $checks = $detail['menu_id'];
$form->getProperties(NULL, 'menu_id', 2, NULL, $checks, 20);
echo $form->DisplayProperties();
//Danh mục checkbox_group
//EX: getProperties(Display_Name, NULL, 41, CSS_Class, Value=array, list_check=$this->_length, '&nbsp; ')
$form->getProperties('Danh mục', NULL, 41, 'list_check', $values, $checks, 'checkbox');//$values danh sách, $value checked
echo $form->DisplayProperties();

//sbd
if(@$_POST['sbd']) $value = $_POST['sbd']; else $value = $detail['sbd'];
$form->getProperties('Số báo danh', 'sbd', 1, 'input_medium', $value, 6);
echo $form->DisplayProperties();

//Mô tả name
if(@$_POST['name']) $value = $_POST['name']; else $value = $detail['name'];
$form->getProperties('Tên TS', 'name', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Mô tả viết lại name_rewrite
if(@$_POST['name_rewrite']) $value = $_POST['name_rewrite']; else $value = $detail['name_rewrite'];
$form->getProperties('Tên TS không dấu', 'name_rewrite', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//Chọn file ảnh
$orther = "onclick=\"BrowseServer('Images:/','url_hinh')\"";
$form->getProperties('Chọn file ảnh', 'btnBrowse', 7, 'button', 0, NULL, $orther);
$orther = $form->DisplayProperties();
//Ảnh đại diện url_hinh
if(@$_POST['url_hinh']) $value = $_POST['url_hinh']; else $value = $detail['url_hinh'];
$form->getProperties('Ảnh đại diện', 'url_hinh', 1, 'input_large', $value, 150, $orther);
echo $form->DisplayProperties();

if($detail['url_hinh']!='') $image = '<p><img height="60" src="../../public/_thumbs/Images/thisinh/'.$detail['url_hinh'].'" alt="" /></p>';
echo '<tr><td>&nbsp;</td><td>'.$image.'</td></tr>';

//ngaysinh - date_update
if(@$_POST['ngaysinh']) $value = $_POST['ngaysinh']; else $value = $detail['ngaysinh'];
$form->getProperties('Ngày sinh', 'ngaysinh', 1, 'input_medium', $value, 20);
echo $form->DisplayProperties();

//noisinh
if(@$_POST['noisinh']) $value = $_POST['noisinh']; else $value = $detail['noisinh'];
$form->getProperties('Nơi sinh', 'noisinh', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//chieucao
if(@$_POST['chieucao']) $value = $_POST['chieucao']; else $value = $detail['chieucao'];
$form->getProperties('Chiều cao', 'chieucao', 1, 'input_medium', $value, 4);
echo $form->DisplayProperties();
//cannang
if(@$_POST['cannang']) $value = $_POST['cannang']; else $value = $detail['cannang'];
$form->getProperties('Cân nặng', 'cannang', 1, 'input_medium', $value, 4);
echo $form->DisplayProperties();
//sodo
if(@$_POST['sodo']) $value = $_POST['sodo']; else $value = $detail['sodo'];
$form->getProperties('Số đo 3 vòng', 'sodo', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();

//cmnd
if(@$_POST['cmnd']) $value = $_POST['cmnd']; else $value = $detail['cmnd'];
$form->getProperties('CMND', 'cmnd', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();
//ngaycap
if(@$_POST['ngaycap']) $value = $_POST['ngaycap']; else $value = $detail['ngaycap'];
$form->getProperties('Ngày cấp', 'ngaycap', 1, 'input_medium', $value, 10);
echo $form->DisplayProperties();
//noicap
if(@$_POST['noicap']) $value = $_POST['noicap']; else $value = $detail['noicap'];
$form->getProperties('Nơi cấp', 'noicap', 1, 'input_medium', $value, 50);
echo $form->DisplayProperties();
//hokhau
if(@$_POST['hokhau']) $value = $_POST['hokhau']; else $value = $detail['hokhau'];
$form->getProperties('HK thường trú', 'hokhau', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();
//choohientai
if(@$_POST['choohientai']) $value = $_POST['choohientai']; else $value = $detail['choohientai'];
$form->getProperties('Chỗ ở hiện tại', 'choohientai', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();
//dienthoai
if(@$_POST['dienthoai']) $value = $_POST['dienthoai']; else $value = $detail['dienthoai'];
$form->getProperties('Điện thoại', 'dienthoai', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();
//email
if(@$_POST['email']) $value = $_POST['email']; else $value = $detail['email'];
$form->getProperties('Email', 'email', 1, 'input_medium', $value, 60);
echo $form->DisplayProperties();
//trangmang_xh
if(@$_POST['trangmang_xh']) $value = $_POST['trangmang_xh']; else $value = $detail['trangmang_xh'];
$form->getProperties('Trang mạng XH', 'trangmang_xh', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();
//nghenghiep
if(@$_POST['nghenghiep']) $value = $_POST['nghenghiep']; else $value = $detail['nghenghiep'];
$form->getProperties('Nghề nghiệp', 'nghenghiep', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();
//noicongtac
if(@$_POST['noicongtac']) $value = $_POST['noicongtac']; else $value = $detail['noicongtac'];
$form->getProperties('Nơi công tác', 'noicongtac', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//trinhdo
$values = array();
$values[] = array('id'=>1, 'name'=>'Chưa tốt nghiệp phổ thông');
$values[] = array('id'=>2, 'name'=>'Tốt nghiệp phổ thông');
$values[] = array('id'=>3, 'name'=>'Trung cấp');
$values[] = array('id'=>4, 'name'=>'Cao đẳng');
$values[] = array('id'=>5, 'name'=>'Đại học');
$values[] = array('id'=>6, 'name'=>'Sau đại học');
if(@$_POST['trinhdo']) $check = $_POST['trinhdo']; else $check = $detail['trinhdo'];
$form->getProperties('Trình độ', 'trinhdo', 6, 'input_large', $values, $check);
echo $form->DisplayProperties();

//ngoaingu
if(@$_POST['ngoaingu']) $value = $_POST['ngoaingu']; else $value = $detail['ngoaingu'];
$form->getProperties('Ngoại ngữ', 'ngoaingu', 1, 'input_medium', $value, 100);
echo $form->DisplayProperties();

//kenh_timkiem
$values = array();
$values[] = array('id'=>1, 'name'=>'Tivi');
$values[] = array('id'=>2, 'name'=>'Báo chí');
$values[] = array('id'=>3, 'name'=>'Internet');
$values[] = array('id'=>4, 'name'=>'Bạn bè');
$values[] = array('id'=>5, 'name'=>'Khác');
if(@$_POST['kenh_timkiem']) $check = $_POST['kenh_timkiem']; else $check = $detail['kenh_timkiem'];
$form->getProperties('Kênh tìm kiếm', 'kenh_timkiem', 6, 'input_large', $values, $check);
echo $form->DisplayProperties();

//metaDescription - ve ban than
if(@$_POST['metaDescription']) $value = $_POST['metaDescription']; else $value = $detail['metaDescription'];
$form->getProperties('Về bản thân', 'metaDescription', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//other2 - Vì sao tham gia
if(@$_POST['other2']) $value = $_POST['other2']; else $value = $detail['other2'];
$form->getProperties('Vì sao tham gia', 'other2', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//other3 - Đã tham gia các cuộc thi
if(@$_POST['other3']) $value = $_POST['other3']; else $value = $detail['other3'];
$form->getProperties('Đã tham gia các cuộc thi', 'other3', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//other4 - Chịu sự Qlý độc quyền
if(@$_POST['other4']) $value = $_POST['other4']; else $value = $detail['other4'];
$form->getProperties('Chịu sự Qlý độc quyền', 'other4', 3, 'textarea', $value, 1);
echo $form->DisplayProperties();
//sothich
if(@$_POST['sothich']) $value = $_POST['sothich']; else $value = $detail['sothich'];
$form->getProperties('Sở thích', 'sothich', 1, 'input_medium', $value, 200);
echo $form->DisplayProperties();
//link_video
if(@$_POST['link_video']) $value = $_POST['link_video']; else $value = $detail['link_video'];
$form->getProperties('Mã link youtube', 'link_video', 1, 'input_medium', $value, 30);
echo $form->DisplayProperties();

//metaKeyword
if(@$_POST['metaKeyword']) $value = $_POST['metaKeyword']; else $value = $detail['metaKeyword'];
$form->getProperties('Tags (keyword)', 'metaKeyword', 1, 'input_medium', $value, 250);
echo $form->DisplayProperties();

//other
/*$value = array(1 => 'Có', 0 => 'Không');
if($_POST['other'] != '') $check = $_POST['other'];
else if($detail['other'] != '') $check = $detail['other'];
else $check = 0; //giá trị mặc định
$form->getProperties('Trang chủ', 'other', 5, $check, $value, ' &nbsp; ');
echo $form->DisplayProperties();*/
echo "
<tr style='background:#b0b0b0'>
    <th align='right'>&nbsp;</th> 
    <td><input type='submit' name='{$name}' value='{$display}' id='{$name}' class='button' />
	<input type='button' name='btnCancel' value='Cancel' class='button' onClick='window.location.href=\"administrator.php?p={$page}\"'>
	</td>
</tr>
</table></form><br /><br />";

if($id != 0){ ?>
<h2 style='color:blue'>Upload hình ảnh Thí Sinh</h2><br />
<table width="600" border="0" cellpadding="5" cellspacing="0">
	<tr bgcolor="#0099FF">
    	<th align="left">Mô tả</th>
    	<th width="280" align="left">Tên hình</th>
        <td width="90"><input type="hidden" name="id_bst" value="<?php echo $id; ?>" /><input type="hidden" name="form_name" value="<?php echo $page; ?>" /></td>
    </tr>
    <tr>
    	<td style="border-bottom:solid 1px #CCC"><input type="text" name="name_bst" class="input_large" /></td>
    	<td style="border-bottom:solid 1px #CCC">
            <input type='text' name='url_hinh_bst' id='url_hinh_bst' class='input_large' maxlength='150' value='' />
            <input type='button' name='btnBrowse' id='btnBrowse' value='Chọn ảnh' class='button' onclick="BrowseServer('Images:/','url_hinh_bst')"/>
        </td>
        <td style="border-bottom:solid 1px #CCC"><input type="button" name="btnImageCreate" value="Create" class="button" /></td>
    </tr>
    <tbody id="ajax_image"></tbody>
    <?php
    $qr = mysql_query("SELECT id,name,url_hinh_bst FROM thisinh_images WHERE `delete`=0 AND status=1 AND id_thisinh='{$id}' ORDER BY date_update DESC");
	while($row = mysql_fetch_array($qr)){
		echo '<tr id="ajax_id_'.$row['id'].'">
			<td style="border-bottom:solid 1px #CCC">'.$row['name'].'</td>
			<td style="border-bottom:solid 1px #CCC">'.$row['url_hinh_bst'].'</td>
			<td style="border-bottom:solid 1px #CCC"><a href="javascript:;" class="delete delete_'.$row['id'].'" title="'.$row['name'].'">Xóa</a></td>
		</tr>';
	}
	?>
</table>

<br /><br /><br /><br /><br />
<?php }?>