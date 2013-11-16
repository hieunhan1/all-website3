<?php
if(@$_POST['btnSubmit_info']){
	$name = trim($_POST['name_info']);
	$content = $_POST['content'];
	$other = $_POST['other'];
	if(strlen($name)>2 && strlen($content)>25 && $row_menu['id']!=''){
		$tc->forum_info_insert($name,$content,$row_menu['id'],$other);
		header("location: http://{$domain}/?type=catalog&id=".$row_menu['id']);
	}else $message = 'Không đăng được. Vui lòng kiểm tra lại.';
}
?>
<script type="text/javascript" src="admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="admin/ckeditor/ckfinder/ckfinder.js"></script>
<div id="popupContact">
    <div style="width:785px;height:25px; float:right; text-align:right; position:absolute; z-index:1300;">
        <a href="javascript:void();" onClick="disablePopup();"><img src="images/close.png" alt="sản phẩm" /></a>
    </div>
    <div style="clear:both; height:15px"></div>
    <div style="clear:both; height:5px; background-color:#3A3A3A"></div>
    
    <div id="content_popup">
    	<div style="color:#F00; margin-bottom:10px"><?php echo $message; ?></div>
        <form action="" method="post" name="info" onSubmit="return KiemTra();">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr><td colspan="2" id="name_title"><p style="padding-bottom:20px; font-size:20px; color:blue">Đăng bài mục: <?php echo $row_menu['name']; ?></p></td></tr>
            <tr>
            	<th align="left" width="100">Tiêu đề:</th>
            	<td><input type="text" name="name_info" class="txt_login" style="width:640px" /></td>
            </tr>
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr>
            	<th align="left" valign="top">Nội dung:</th>
            	<td><textarea name="content"></textarea></td>
            </tr>
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr>
            	<th align="left" width="70">Cho trả lời:</th>
            	<td><input type="radio" name="other" value="1" checked="checked" /> Có &nbsp; &nbsp; &nbsp; &nbsp; <input type="radio" name="other" value="0" /> Không</td>
            </tr>
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr>
            	<th>&nbsp;</th>
            	<td><input type="submit" name="btnSubmit_info" value="ĐĂNG BÀI VIẾT" class="btn_login" style="background-color:#017B80" /></td>
            </tr>
        </table></form>
    </div>
</div>
<div id="backgroundPopup"></div>

<script>
sroll_top();
var height = $("#popupContact").height();
$("#popupContact").height(height);
centerPopup("absolute");
loadPopup();
$(window).bind("resize", function(){ centerPopup("absolute"); });
		
CKEDITOR.replace('content', {
	uiColor: '#b5d8ef',
	toolbar:
	[
	['Source','-','Cut','Copy','Paste','PasteText','PasteFromWord','-', 'SpellChecker', 'Scayt'],
	['Undo','Redo','-','Find','-','RemoveFormat'],
	['Link','Unlink','Iframe'],
	['Image','Table'],
	['NumberedList','BulletedList','-','Outdent','Indent'],
	'/',
	['Styles','FontSize'],
	['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
	['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
	['TextColor','BGColor','-','HorizontalRule','SpecialChar','Smiley']
	]
	});

function KiemTra() {
	myFrmObj = document.info;
	var content = CKEDITOR.instances["content"].getData();
	if(myFrmObj.name_info.value == "") {
		window.alert("Tiêu đề không được bỏ trống");
		myFrmObj.name_info.focus("name_info");
		return false;
	}else if(content.length < 26) {
		window.alert("Nội dung phải hơn 20 ký tự");
		return false;
	}
	return true;
}
</script>