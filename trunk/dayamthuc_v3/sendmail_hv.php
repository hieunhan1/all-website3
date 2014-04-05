<?php
$lang = 'vi';

define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$id = $_GET['id'];
$nguoinhan = $_GET['nguoinhan'];

$qr1 = mysql_query("SELECT name FROM web_dangky_nhanvien WHERE `delete`=0 AND id='{$nguoinhan}' ");
$row_nguoinhan = mysql_fetch_array($qr1);

$qr = mysql_query("SELECT * FROM web_dangky_tructuyen WHERE `delete`=0 AND id='{$id}' AND nhanvien_lienhe='{$nguoinhan}' ");
$row = mysql_fetch_array($qr);

if(mysql_num_rows($qr)==1 && $row['status']==2){
	mysql_query("UPDATE web_dangky_tructuyen SET status=1,date_update='".date('Y-m-d H:i:s')."',user_update='".$row_nguoinhan['name']."' WHERE id='{$id}'");
}
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Gửi mail thông báo cho học viên Trường NETSPACE</title>
<meta name="title" content="Gửi mail thông báo cho học viên Trường NETSPACE" />
<meta name="description" content="Gửi mail thông báo cho học viên Trường NETSPACE" />
<meta name="keywords" content="Gửi mail thông báo cho học viên Trường NETSPACE" />
<meta name="robots" content="INDEX,FOLLOW" />
<meta http-equiv="content-language" content ="vi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="abstract" content="Trường dạy nghề ẩm thực NETSPACE" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
<style>
	td{border-bottom:solid 1px #CCC}
	.thongtin{background-color:#FF9}
	.txt{width:350px; line-height:25px; height:25px; border:solid 1px #999; background-color:#FFF}
	.btn{line-height:30px; height:30px; padding:5px 25px; color:#666; font-weight:bold}
	#ajax{width:600px; margin:auto; text-align:center; font-size:20px; font-weight:bold}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="library/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="library/ckeditor/ckfinder/ckfinder.js"></script>


</head>
<body>
<div id="ajax"></div>
<table width="600" border="0" cellpadding="10" cellspacing="0" align="center" id="form_sendmail">
	<tr><td colspan="2" align="center">
    	<span style="color:#333; font-size:30px; font-weight:bold">Gửi mail thông báo cho học viên<br />Trường NETSPACE</span>
    </td></tr>
    <tr class="thongtin">
    	<td width="140">Người gửi</td>
        <td><input type="text" name="nguoigui" class="txt" /></td>
    </tr>
    <tr class="thongtin">
    	<td width="140">Tiêu đề</td>
        <td><input type="text" name="title" class="txt" /></td>
    </tr>
    <tr class="thongtin">
    	<td width="140" valign="top">Danh sách người nhận</td>
        <td><textarea name="ds_nguoinhan" class="txt" style="height:80px; line-height:20px; resize:none; overflow:auto"></textarea></td>
    </tr>
    <tr class="thongtin">
    	<td width="140" valign="top">Nội dung</td>
        <td><textarea name="content"></textarea>
            <script>
			CKEDITOR.replace( 'content', {
				uiColor: '#b5d8ef',
				toolbar:
				[
				['Source','-','Maximize','-','PasteText','PasteFromWord'],
				['Link','Unlink', 'NumberedList','BulletedList','-','Outdent','Indent'],
				'/',
				['FontSize','Bold','Italic','Underline'],
				['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','TextColor','BGColor'],
				]
				});
			</script>
        </td>
    </tr>
    <tr class="thongtin">
    	<td width="140" valign="top">&nbsp;</td>
        <td><input type="button" name="btnSend" value="GỬI MAIL THÔNG BÁO" class="btn" /></td>
    </tr>
</table>
<script>
$(document).ready(function(e) {
    $('input[name=btnSend]').click(function(){
		var nguoigui	 = $('input[name=nguoigui]').val();
		var title 		 = $('input[name=title]').val();
		var ds_nguoinhan = $('textarea[name=ds_nguoinhan]').val();
		var content = $.trim(CKEDITOR.instances["content"].getData());
		
		if(nguoigui.length<2){
			alert("Nhập người gửi");
			$("input[name=nguoigui]").focus();
			return false;
		}else if(title.length<5){
			alert("Nhập tiêu đề");
			$("input[name=title]").focus();
			return false;
		}else if(ds_nguoinhan.length<10){
			alert("Người nhận phải hơn 10 ký tự");
			$("textarea[name=ds_nguoinhan]").focus();
			return false;
		}else if(content.length<30){
			alert("Nội dung phải hơn 30 ký tự");
			return false;
		}else{
			$("#form_sendmail").hide();
			$("#ajax").html("Đang xử lý");
			
			$.post("ajax.php",{sendmail_hv:"sendmail_hv",nguoigui:nguoigui,title:title,ds_nguoinhan:ds_nguoinhan,content:content},function(data){
				if(data != '0'){
					setTimeout(function(){
						$("#ajax").html("Gửi mail thành công");
					},2000);
					return true;
				}else{
					$("#form_sendmail").html('Lỗi: Vui lòng ấn F5 thử lại.');
					return false;
				}
			});	
		}
	});
});
</script>
</body>
</html>