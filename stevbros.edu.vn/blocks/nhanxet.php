<?php
$nhanxet = $tc->view_nhanxet($row_detail['name_rewrite']);
$total = mysql_num_rows($nhanxet);
if($total > 0){
	$view_post .= '<div id="nhanxet"><div id="total"></div><div id="list_nx">';
	while($row_nx = mysql_fetch_array($nhanxet)){
		$view_post .= '<div class="item_nx">
			<div style="color:#999; text-align:center; width:40px; margin-right:20px; float:left">'.$tc->datetime_nx($row_nx['date_create']).'</div>
			<span style="font-weight:bold; color:#338DB7">'.$row_nx['name'].' </span>'.$row_nx['content'].'
			<div style="clear:both; height:1px"></div>
		</div>';
	}
}else $view_post .= '<div id="nhanxet"><div id="total"></div><div id="list_nx">';


$view_post .= '</div><div id="view_more_nx"><a href="javascript:;">Xem thêm</a></div>
<div class="nx_txt"><input type="text" name="name" value="Họ tên" />
<input type="text" name="email" value="Email" /></div>
<div class="nx_txt_area"><textarea name="content">Nhập nhận xét...</textarea></div>
<input type="hidden" name="alias" value="'.$row_detail['name_rewrite'].'" />
<div class="nx_btn"><input type="button" name="btnNhatxet" value="Đăng nhận xét" /></div>
<input type="hidden" name="link_baiviet" value="http://www.stevbros.edu.vn'.$_SERVER['REQUEST_URI'].'" />
<div style="clear:both; height:20px"></div></div>';