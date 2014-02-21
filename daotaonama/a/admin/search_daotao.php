<?php 
if(@$_GET['btnSearch']){
	($_GET['txtname'] != '') ? $order.=" AND name LIKE '%{$_GET['txtname']}%' " : $order.='';
}

if($page=='daotao_hocvien') $select = 'khoahoc'; else $select = 'lophoc';

?>
<div id="search">
<form action="" method="get" name="search">
    <input type="hidden" name="p" value="<?php echo $p; ?>" />
    <input type="text" name="txtname" class="txt" value="<?php if(@$_POST['txtname']) echo $_POST['txtname']?>" />
    <input type="submit" name="btnSearch" value="Tìm" class="btn" />
</form>
</div>