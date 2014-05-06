<?php echo '<div id="navigator" style="height:40px"><a href=""><img src="images/home.png" alt="Thiên Long mobile" /></a>'.$tc->navigator($row_menu_one['id']).'</div>'; ?>
<div id="contact_form">
	<h2>Thông tin liên hệ</h2>
	<div>Nếu có bất kỳ thắc mắc hoặc góp ý về dịch vụ, đừng ngần ngại, hãy liên hệ với chúng tôi theo địa chỉ bên dưới để được đáp ứng và giúp chúng tôi cải thiện dịch vụ ngày càng tốt hơn.</div>
	<div style="clear:both; height:1px; background-color:#E1E1E1; margin:30px 0"></div>
	<?php echo $row_config["contact_form"];?>
	<div style="clear:both; height:1px; background-color:#E1E1E1; margin:30px 0"></div>
	<h3 style="color:#F00; font-size:120%; margin-bottom:20px">Form liên hệ</h3>
    <table width="880" border="0" cellspacing="0" cellpadding="0" id="form_lienhe">
      <tr>
        <td width="10%">Họ &amp; tên: <span style="color:#FF0000">*</span></td>
		<td width="40%"><input type="text" name="name" maxlength="50" class="txt" /></td>
        <td width="10%">Phone:</td>
		<td width="40%"><input type="text" name="phone" maxlength="20" class="txt" /></td>
      </tr>
      <tr>
        <td>Email: <span style="color:#FF0000">*</span></td>
		<td><input type="text" name="email" maxlength="50" class="txt" /></td>
        <td>Địa chỉ:</td>
		<td><input type="text" name="diachi" maxlength="200" class="txt" /></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:10px">Nội dung: <span style="color:#FF0000">*</span></td>
		<td colspan="3"><textarea name="content" class="textarea"></textarea></td>
      </tr>
      <tr>
	  	<td>&nbsp;</td>
	    <td colspan="3"><input type="submit" name="submit_contact" value="Gửi đi" class="btn" /></td>
      </tr>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=submit_contact]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var content = $("textarea[name=content]").val();
		if(name.length<3){
			alert("Họ tên phải hơn 3 ký tự");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(content.length<10){
			alert("Nội dung phải hơn 10 ký tự");
			$("textarea[name=content]").focus();
			return false;
		}else{
			$("#form_lienhe").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,content:content},function(data){
				if(data!='0') setTimeout(function(){ $("#form_lienhe").html('<p style="color:#0054B1; font-weight:bold; padding:30px 0 60px;">Gửi thành công</p>'); },200);
				else $("#form_lienhe").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>