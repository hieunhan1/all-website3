<div id="home_about"><?php echo $row_menu_one['title']; ?></div>
<div id="contact">
    <div id="info"><?php echo $row_config['contact_form'];?></div>
    <br /><hr />
    <div id="form">
        <table width="90%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px; font-size:110%">
          <tr>
            <td width="120">Tên:</td>
            <td><input type="text" name="name" class="txt" /></td>
          </tr>
          <tr>
            <td width="120">Email:</td>
            <td><input type="text" name="email" class="txt" /></td>
          </tr>
          <tr>
            <td valign="top">Thông tin:</td>
            <td><textarea name="message" class="textarea"></textarea></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSend" class="btn" value="GỬI" /></td>
          </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var message = $("textarea[name=message]").val();
		if(name.length<3){
			alert("Nhập tên");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(message.length<10){
			alert("Nhập thông tin");
			$("textarea[name=message]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Processing...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,message:message,lang:"<?php echo 'vi'; ?>"},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Send success.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Undeliverable. Please press F5 to try again.</p>');
			});
			return true;
		}
	});
});
</script>