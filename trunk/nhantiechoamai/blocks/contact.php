<div id="content">
    <div id="navigator">
        <a href="http://'.$domain.'">Trang chủ</a>
        <?php echo $tc->navigator($idMenu);?>
    </div>
    <div id="contact">
        <div id="info"><?php echo $row_menu_one['metaDescription'];?></div>
        <div id="map_contact">
        	<h1><?php echo $row_menu_one['title'];?></h1>
			<?php echo $row_config['contact_form'];?>
            <div style="height:300px; margin-top:10px" id="map_google"></div>
            <?php include_once('blocks/map_google.php');?>
        </div>
        <div id="form">
            <table width="100%" border="0" cellspacing="20" cellpadding="0">
              <tr><td colspan="4"><p style="font-size:160%; color:#00A651">Form liên hệ</p></td></tr>
              <tr><td><input type="text" name="name" class="txt" value="Họ tên:" onfocus="if(value=='Họ tên:') value=''" onblur="if(value=='') value='Họ tên:'" /></td></tr>
              <tr><td><input type="text" name="phone" class="txt" value="Điện thoại:" onfocus="if(value=='Điện thoại:') value=''" onblur="if(value=='') value='Điện thoại:'" /></td></tr>
              <tr><td><input type="text" name="email" class="txt" value="Email:" onfocus="if(value=='Email:') value=''" onblur="if(value=='') value='Email:'" /></td></tr>
              <tr><td><input type="text" name="diachi" class="txt" value="Địa chỉ:" onfocus="if(value=='Địa chỉ:') value=''" onblur="if(value=='') value='Địa chỉ:'" /></td></tr>
              <tr><td colspan="3"><textarea name="message" class="textarea" onfocus="if(value=='Nội dung liên hệ') value=''" onblur="if(value=='') value='Nội dung liên hệ'">Nội dung liên hệ</textarea></td></tr>
              <tr><td><input type="button" name="btnSend" class="btn" value="Gửi liên hệ" /></td></tr>
            </table>
        </div>
        <div style="clear:both; height:50px"></div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var phone = $("input[name=phone]").val();
		var email = $("input[name=email]").val();
		var diachi = $("input[name=diachi]").val();
		var message = $("textarea[name=message]").val();

		if(name=='Họ tên:' || name.length<3){
			alert("Nhập họ tên");
			$("input[name=name]").focus();
			return false;
		}else if(phone=='Điện thoại:' || phone.length<10){
			alert("Nhập số điện thoại");
			$("input[name=phone]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Nhập email");
			$("input[name=email]").focus();
			return false;
		}else if(message=='Nội dung liên hệ' || message.length<10){
			alert("Nhập nội dung");
			$("textarea[name=message]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Liên hệ thành công. Chúng tôi sẽ trả lời cho Quí khách sớm nhất.<br /><br />Thân,<br />Đặt tiệc Hoa Mai</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại và điền đầy đủ thông tin.</p>');
			});
			return true;
		}
	});
});
</script>