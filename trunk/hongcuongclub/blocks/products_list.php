<?php
$from = (($page - 1) * max_limit_2);
$select = 'id,name,name_rewrite,url_hinh,menu_id,price,metaDescription';
$table = 'products';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_2;
$list = $tc->list_item($select,$table,$where,$limit);
$i = 0;
while($row = mysql_fetch_array($list)){
	$i++;
	if($i%2 == 0) $float = 'style="float:right"'; else $float = 'style="float:left"';
	$link = $tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
	$menu_tiec .= '<div class="box_tiec" '.$float.'>
    	<div class="box_tiec_img"><a href="'.$link.'"><img src="'.url_product_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
        <div class="box_tiec_info">
        	<div class="box_tiec_price">'.$row['price'].'<div style="clear:both; height:1px; margin:2px 0; background-color:#FFF"></div>bàn tiệc</div>
        	<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
            <p>'.strip_tags($row['metaDescription']).'</p>
        </div>
    </div>';
}
echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
	'.$menu_tiec.'
	<div style="clear:both; height:10px"></div>
</div>';


if(@$dt){
	echo '<div id="popupContact">
		<div style="width:835px;height:30px; float:right; text-align:right; position:absolute; z-index:1300;">
			<a href="javascript:window.history.go(-1)"><img src="images/close.png" alt="sản phẩm" /></a>
		</div>
		<div style="clear:both; height:15px"></div>
		<div style="clear:both; height:5px; background-color:#3A3A3A"></div>
		
		<div id="content_popup">
			<div class="img"><img src="'.url_product_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" /></div>
			<div id="content_pp">
				<h1>'.$row_detail['name'].'</h1>
				<div style="clear:both; height:1px"></div>
				<div style="margin:0 0 30px 30px">'.$row_detail['list_mon'].'</div>
				<div id="price_pp">Trọn gói: '.$row_detail['price'].' / bàn tiệc</div>
			</div>
			<div style="clear:both; height:1px"></div>
			<div class="viewpost"><p style="font-size:130%; font-weight:bold">Thông tin thêm</p>'.$row_detail['content'].'</div>
		</div>
	</div>
	<div id="backgroundPopup"></div>
	<script type="text/javascript">
	$(document).ready(function() {
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
	});</script>';
}