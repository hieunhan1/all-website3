<?php
$list = mysql_query("SELECT name,name_rewrite,menu_id,soluong_tuyen,noilamviec,date_update FROM tuyendung WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ");
$total = mysql_num_rows($list);

if($total > 1){
	$view_post = '<table width="100%" border="0" cellpadding="0" cellspacing="0" id="tuyendung">
		<tr>
			<th align="left">Vị trí tuyển dụng</th>
			<th>Số lượng</th>
			<th>Nơi làm việc</th>
			<th>Hạn nộp hồ sơ</th>
			<th>Chi tiết</th>
		</tr>
	';
	while($row = mysql_fetch_array($list)){
		$view_post .= '<tr>
			<td>'.$row['name'].'</td>
			<td align="center">'.$row['soluong_tuyen'].'</td>
			<td align="center">'.$row['noilamviec'].'</td>
			<td align="center">'.date('d/m/Y',strtotime($row['date_update'])).'</td>
			<td align="center"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">Xem</a></td>
		</tr>';
	}
	$view_post .= '</table><div style="clear:both; height:20px"></div>';
}elseif($total==1){
	$row = mysql_fetch_array($list);
	header('location: http://'.$domain.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html');
}else $view_post .= '<div style="padding:20px">is updated...</div>';

echo '<div id="left">';
include_once('blocks/danhmuc_sp.php');
echo '</div>
<div id="right">
	<div id="title_detail"><h1>'.$row_menu_one['title'].'</h1></div>
	'.$view_post.'
</div>
<div style="clear:both; height:20px"></div>';