<div id="contact">
    <div class="viewpost">
        <h1><?php echo $row_menu_one['title'];?></h1>
        <h3><?php echo $row_menu_one['metaDescription'];?></h3><br />
    </div>
    <?php include_once('blocks/map_google.php');?>
    <br /><br />
    <div id="form">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="4"><p style="font-size:180%; color:#FFF">Form liên hệ</p></td>
          </tr>
          <tr>
            <td width="100">Họ tên:</td>
            <td><input type="text" name="name" class="txt" /></td>
            <td width="100" align="center">Email:</td>
            <td><input type="text" name="email" class="txt" /></td>
          </tr>
          <tr>
            <td>Điện thoại:</td>
            <td><input type="text" name="phone" class="txt" /></td>
            <td align="center">Địa chỉ:</td>
            <td><input type="text" name="diachi" class="txt" /></td>
          </tr>
          <tr>
            <td valign="top">Nội dung:</td>
            <td colspan="3"><textarea name="message" class="textarea"></textarea></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSend" class="btn" value="Gửi liên hệ" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </div>
    <div style="clear:both; height:50px"></div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var message = $("textarea[name=message]").val();
		if(name.length<3){
			alert("Input name");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Wrong email address");
			$("input[name=email]").focus();
			return false;
		}else if(message.length<10){
			alert("Input Message");
			$("textarea[name=message]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message,lang:"<?php echo $lang; ?>"},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Liên hệ thành công.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>