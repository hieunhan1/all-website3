<?php
include_once('blocks/navigator.php');
$view_post .= '<div class="content">';
$view_post .= $navigator;

$qr = $tc->menu(3,3);
while($row = mysql_fetch_array($qr)){
	if($row['name_rewrite']!=$row_menu_one['url']) $product_all .= '<div class="item_l"><a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a></div>';
	else $product_all .= '<div class="item_l"><a style="width:200px; padding-right:18px; background:url(images/left.jpg) no-repeat right #3E4095" href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a></div>';
}

$qr = $tc->other_product($idMenu,$row_detail['id']);
while($row = mysql_fetch_array($qr)){
	$product_other .= '<div class="item_product2"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html"><img src="'.url_product_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /><h4>'.$row['name'].'</h4></a></div>';
}

if($row_detail['download_file']!='') $download = '<div class="dathang" style="background-color:#999"><a href="'.url_download_file.$row_detail['download_file'].'" style="color:#FFF">Download mẫu đơn đặt hàng</a></div>';

$view_post .= '
<div id="view_left">
	<div style="margin-right:10px; padding:5px 0; background-color:#39BB7F"></div>
	'.$product_all.'
	<div style="margin-right:10px; padding:5px 0; background-color:#39BB7F"></div>
</div>

<div id="view_product">
	<h1>'.$row_detail['name'].'</h1>'.$row_detail['content'].'
	<div style="clear:both; height:20px"></div>
	<div id="dathang" class="dathang">Đặt hàng nhanh</div>'.$download.'
	<div style="clear:both; padding:30px 0; font-weight:bold">Hoặc liên hệ <span style="color:#ED3237; font-size:120%">'.$row_config['hotline'].'</span> để được hỗ trợ tốt nhất từ Thiên Phát!</div>
	<div id="other_product">Sản phẩm khác</div>
	'.$product_other.'
	<div style="clear:both; height:1px"></div>
</div>
<div style="clear:both; height:30px"></div>';

echo $view_post.'</div>

<div id="popupContact">
	<div style="width:950px;height:30px; float:right; text-align:right; position:absolute; z-index:1300;">
		<img src="images/close.png" alt="close" class="popupContactClose" />
	</div>
	<div style="clear:both; height:15px"></div>
	<div style="clear:both; height:15px; background-color:#FFF"></div>
	
	<div id="content_popup">
		<div id="title_pp">Đặt hàng nhanh</div>
		<div style="line-height:22px; margin-bottom:10px">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus convis dapibus magna. Proin eu justo ut massa molestie pellentesque. In hastel habitasse platea dictumst. Ut arcu. Maecenas sed ante. In hacei haasse platea dictumst.</div>
		<div style="line-height:22px; margin-bottom:20px">Mã đơn đặt hàng của quý khách: <span id="id_order" style="font-weight:bold; color:#0bac60">KH-'.date('Ymd-is').'</span></div>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="form_lienhe">
		  <tr>
			<td width="10%">Họ &amp; tên: <span style="color:#FF0000">*</span></td>
			<td width="40%"><input type="text" name="name" maxlength="50" class="txt" /></td>
			<td width="10%">Điện thoại: <span style="color:#FF0000">*</span></td>
			<td width="40%"><input type="text" name="phone" maxlength="20" class="txt" /></td>
		  </tr>
		  <tr>
			<td>Email: <span style="color:#FF0000">*</span></td>
			<td><input type="text" name="email" maxlength="50" class="txt" /></td>
			<td>Địa chỉ: <span style="color:#FF0000">*</span></td>
			<td><input type="text" name="diachi" maxlength="200" class="txt" /></td>
		  </tr>
		  <tr>
			<td valign="top" style="padding-top:10px">Yêu cầu:</td>
			<td colspan="3"><textarea name="content" class="textarea"></textarea></td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3"><input type="submit" name="submit_contact" value="Gửi đi" class="btn" /></td>
		  </tr>
		</table>
	</div>
</div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function() {
	$("#dathang").click(function(){
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });	
	});
	
	$(".popupContactClose").click(function(){
		disablePopup();
	});
	
	$("input[name=submit_contact]").click(function(){
		var id = $("#id_order").html();
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var content = $("textarea[name=content]").val();
		var name_sp = $("h1").html();
		if(name.length<3){
			alert("Họ tên phải hơn 3 ký tự");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(phone.length<10){
			alert("Điện thoại chưa đúng");
			$("input[name=phone]").focus();
			return false;
		}else{
			$("#form_lienhe").html(\'<p style="font-weight:bold; padding:30px">Đang xử lý...</p>\');
			$.post("ajax.php",{dathang:"dathang",name:name,email:email,phone:phone,diachi:diachi,content:content,id:id,name_sp:name_sp,link_sp:"'.$_SERVER['REQUEST_URI'].'"},function(data){
				if(data!="0") setTimeout(function(){ $("#form_lienhe").html(\'<p style="color:#0054B1; font-weight:bold; padding:30px 0 60px;">Gửi thành công</p>\'); },200);
				else $("#form_lienhe").html(\'<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>\');
			});
			return true;
		}
	});
});
</script>';