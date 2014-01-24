<?php
echo '<div id="left">';
include_once('blocks/danhmuc_sp.php');
echo '</div>
<div id="right">
	<div id="title_detail"><h1>'.$row_detail['name'].'</h1></div>
	<div class="viewpost">
	<table width="400" border="0" cellpadding="0" cellspacing="10" style="margin-left:200px">
		<tr>
			<td align="right" width="100">Vị trí tuyển dụng: </td>
			<th align="left">'.$row_detail['name'].'</th>
		</tr>
		<tr>
			<td align="right" width="100">Số lượng: </td>
			<th align="left">'.$row_detail['soluong_tuyen'].'</th>
		</tr>
		<tr>
			<td align="right" width="100">Nơi làm việc: </td>
			<th align="left">'.$row_detail['noilamviec'].'</th>
		</tr>
		<tr>
			<td align="right" width="100">Hạn nộp hồ sơ: </td>
			<th align="left">'.date('d/m/Y',strtotime($row_detail['date_update'])).'</th>
		</tr>
	</table>'.$row_detail['content'].'</div>
</div>
<div style="clear:both; height:20px"></div>';