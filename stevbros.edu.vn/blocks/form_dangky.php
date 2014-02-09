<style type="text/css">
	.txt_dk{width:250px; line-height:25px; height:25px; padding:0 5px; background:none; border:solid 1px #CCC}
	.textarea_dk{width:250px; line-height:20px; height:80px; overflow:auto; resize:none; padding:0 5px; background:none; border:solid 1px #CCC}
	.btn_dk{width:260px; padding:6px; text-align:center; color:#FFF; font-weight:bold; font-size:130%; background-color:#65A1BD; border:none; cursor:pointer}
</style>
<div style="font-size:120%; color:#C00; font-weight:bold; text-align:center; padding-top:20px">Đăng ký <?php echo $row_detail['name'].'<input type="hidden" name="khoahoc" value="'.$row_detail['name'].'" />'; ?></div>
<div id="dangky_khoahoc">
<table width="100%" border="0" cellpadding="0" cellspacing="10">
    <tr>
    	<td width="200" align="right">Họ và tên: </td>
    	<td><input type="text" name="name_dk" class="txt_dk" /></td>
    </tr>
	<tr>
    	<td align="right">Điện thoại: </td>
    	<td><input type="text" name="phone_dk" class="txt_dk" /></td>
    </tr>
	<tr>
    	<td align="right">Email: </td>
    	<td><input type="text" name="email_dk" class="txt_dk" /></td>
    </tr>
	<tr>
    	<td align="right">Địa chỉ: </td>
    	<td><input type="text" name="diachi_dk" class="txt_dk" /></td>
    </tr>
	<tr>
    	<td align="right" valign="top">Yêu cầu: </td>
    	<td><textarea name="message_dk" class="textarea_dk"></textarea></td>
    </tr>
	<tr>
    	<td>&nbsp;</td>
    	<td><input type="button" name="btn_DangKy" value="Đăng ký" class="btn_dk" /></td>
    </tr>
</table>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btn_DangKy]").click(function(){
		var name = $("input[name=name_dk]").val();
		var email = $("input[name=email_dk]").val();
		var phone = $("input[name=phone_dk]").val();
		var diachi = $("input[name=diachi_dk]").val();
		var message = $("textarea[name=message_dk]").val();
		var khoahoc = $("input[name=khoahoc]").val();
		
		if(name.length<2){
			alert("Nhập họ tên");
			$("input[name=name_dk]").focus();
			return false;
		}else if(phone.length<10){
			alert("Điện thoại phải 10 số");
			$("input[name=phone_dk]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email_dk]").focus();
			return false;
		}else if(diachi.length<6){
			alert("Địa chỉ phải hơn 6 ký tự");
			$("input[name=diachi_dk]").focus();
			return false;
		}else{
			$("#dangky_khoahoc").html('<p style="font-weight:bold; padding:30px; text-align:center">Đang xử lý...</p>');
			$.post("ajax.php",{dangky:"dangky",name:name,email:email,phone:phone,diachi:diachi,message:message,khoahoc:khoahoc},function(data){
				if(data!='0') setTimeout(function(){ $("#dangky_khoahoc").html('<p style="color:blue; font-weight:bold; padding:30px 0 60px; text-align:center">Đăng ký thành công. Chúng tôi sẽ liên hệ cho bạn sớm nhất.</p>'); },200);
				else $("#dangky_khoahoc").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px; text-align:center">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>