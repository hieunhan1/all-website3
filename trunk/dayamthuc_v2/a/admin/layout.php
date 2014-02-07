<?php
$column_full = array(
	0 => "<div class='col_full'>Mô tả</div>",
	1 => "<div class='col_action'>Thao tác</div>",
	2 => "<div class='col_create'>Người đăng</div>",
	3 => "<div class='col_create'>Ngày đăng</div>",
	4 => "<div class='col_update'>Người cập nhật</div>",
	5 => "<div class='col_update'>Ngày cập nhật</div>",
	6 => "<div class='col_order'>Thứ tự</div>"
);
function btnCancel($page){
	header("location:administrator.php?p={$page}");
}
function column_general($p) {
	$m = explode('_ac', $p);
	if(count($m) == 1){
		$display =  
		"<span id='action'>
			<a href='administrator.php?p={$m[0]}_ac&id=0'><img src='img/add.gif' alt='' /> Thêm mới</a> | 
			<a href='javascript:;' id='update'>See the change</a>
			<a href='javascript:;' id='create'>See the not change</a>
		</span>";
	} else {$display = "<span id='action'><a href='administrator.php?p={$m[0]}'><img src='img/back.png' alt='' /> Trở lại</a></span>";}
	return $display;
}
function list_column($page, $id, $mota, $status, $user_create, $date_create, $user_update, $date_update, $order = NULL){
	//echo $date_create;
	$date_c = date('d/m/Y', strtotime($date_create));
	if(!@$date_update) $date_u = '&nbsp;'; else $date_u = date('d/m/Y', strtotime($date_update));
	if(!@$user_update) $user_update = '&nbsp;';
	if($order != '') $od = "<div class='col_order'>{$order} &nbsp;</div>"; else $od = '';
	return "
	<div class='row'>
		<div class='col_full'>{$mota} &nbsp;</div>
		<div class='col_action'>
			<a href='javascript:;' class='status' id='{$id}' page='{$page}' name='{$mota}' set='{$status}'><img src='img/anhien_{$status}.gif' alt='' /></a> &nbsp;
			<a href='administrator.php?p={$page}_ac&id={$id}' class='edit'><img src='img/edit.gif' alt='' /></a> &nbsp;
			<a href='javascript:;' class='delete_one' id='{$id}' page='{$page}' name='{$mota}'><img src='img/delete.gif' alt='' /></a>
		</div>
		<div class='col_create'>{$user_create} &nbsp;</div>
		<div class='col_create'>{$date_c} &nbsp;</div>
		<div class='col_update'>{$user_update} &nbsp;</div>
		<div class='col_update'>{$date_u} &nbsp;</div>
		{$od}
	</div>";
}
function phantrang($page,$max_results,$page_number,$search,$type=6){
	global $sql;
	$from = (($page_number * $max_results) - $max_results);
	$link = "administrator.php?p={$page}&page_number=";
	//$type = 6; //loại sql select $type = 6;
	$table = $page;
	$field = array('id');
	$sql->get_sql($type,$table,$field,$search);
	$qr = $sql->executable() or die ('<p class="error">Không truy vấn được</p>');
	$total = mysql_num_rows($qr);
	mysql_free_result($qr);
	
	$total_pages = ceil($total / $max_results);
	if($total_pages > 1){
		if($page_number > 1){
			$prev = ($page_number - 1);
			echo "<a href='{$link}{$prev}'>Trang trước</a>";
		}
		for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
			if($page_number == $i){
				echo "<a href='{$link}{$i}' style='color:#F00; font-weight:bold; background-color:#ffffcc'>{$i}</a>";
			} elseif($i>0) {
				echo "<a href='{$link}{$i}'>{$i}</a>";
			}
		}
		if($page_number < $total_pages){
			$next = ($page_number + 1);
			echo "<a href='{$link}{$next}'>Trang sau</a>";
		}
	}
}