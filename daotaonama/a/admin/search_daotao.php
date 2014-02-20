<?php 
if(@$_GET['btnSearch']){
	($_GET['txtname'] != '') ? $order.=" AND name LIKE '%{$_GET['txtname']}%' " : $order.='';
	($_GET['khoahoc'] != 0) ? $order.=" AND khoahoc='{$_GET['khoahoc']}' " : $order.='';
}


?>
<div id="search">
<form action="" method="get" name="search">
    <input type="hidden" name="p" value="<?php echo $p; ?>" />
    <select name="khoahoc" class="select">
    	<option value="0">-- Chọn lớp học --</option>
    	<?php
        $qr = mysql_query("SELECT id,name FROM daotao_lophoc WHERE `delete`=0 AND status=1 ORDER BY `name`");
		while($row = mysql_fetch_array($qr)){
			echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		}
		?>
    </select>
    <input type="submit" name="btnSearch" value="Tìm" class="btn" />
</form>
</div>