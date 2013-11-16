<?php 
if(@$_POST['btnSearch']){
	($_POST['txtname'] != '') ? $order.=" AND name LIKE '%{$_POST['txtname']}%' " : $order.='';
	($_POST['danhmuc'] != 0) ? $order.=" AND menu_id LIKE '%,{$_POST['danhmuc']},%' " : $order.='';
}
//Danh mục
/*switch($p){
	case 'info' : $type_id=2; break;
	case 'product' : $type_id=3; break;
	case 'photo_gallery' : $type_id=4; break;
	case 'video' : $type_id=5; break;
	default : $type_id=0;
}*/

function danhmuctim($parent_id=0,$style='',$arr=NULL){
	if(!$arr) $arr = array();
	$qr = "SELECT id,name FROM menu WHERE `delete`=0 AND type_id<>6 AND type_id<>7 AND parent_id=";
	$qr .= $parent_id;
	$qr .= ' ORDER BY `order`';
	$sql = mysql_query($qr);
	while($row = mysql_fetch_array($sql)){
		$arr[] = array('id'=>$row['id'],'name'=>$style.$row['name']);
		$arr = danhmuctim($row['id'],$style.'--- ',$arr);
	}
	return $arr;
}
$danhmuc = danhmuctim(0);
?>
<div id="search">
<form action="" method="post" name="search">
	<input type="text" name="txtname" class="txt" value="<?php if(@$_POST['txtname']) echo $_POST['txtname']?>" />
    <select name="danhmuc" class="select">
    	<option value="0">-- Chọn danh mục --</option>
    	<?php
        foreach($danhmuc as $dm){
			if($_POST['danhmuc']!=$dm['id']) echo "<option value=\"{$dm['id']}\">{$dm['name']}</option>";
			else echo "<option value=\"{$dm['id']}\" selected=\"selected\">{$dm['name']}</option>";
		}
		?>
    </select>
    <input type="submit" name="btnSearch" value="Tìm" class="btn" />
</form>
</div>