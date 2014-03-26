<div style="clear:both; height:20px"></div>
<div id="navigator" style="padding-left:20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php
    include("languages/{$lang}.php");
	echo $tc->navigator($idMenu);
	?>
</div>
<div id="contact">
    <div id="info"><?php echo $row_config['contact_form'];?></div>
    <p align="center"><img src="images/map.jpg" alt="map" /></p>
    <hr />
    <div id="form">
        <table width="90%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px; font-size:110%">
          <tr>
            <td colspan="4"><p style="font-size:180%; color:#017B80"><?php echo const_thong_tin;?></p></td>
          </tr>
          <tr>
            <td width="120"><?php echo const_contact_name;?>:</td>
            <td><input type="text" name="name" class="txt" /></td>
            <td width="120" align="center">Email:</td>
            <td><input type="text" name="email" class="txt" /></td>
          </tr>
          <tr>
            <td><?php echo const_contact_phone;?>:</td>
            <td><input type="text" name="phone" class="txt" /></td>
            <td align="center"><?php echo const_contact_diachi;?>:</td>
            <td><input type="text" name="diachi" class="txt" /></td>
          </tr>
          <tr>
            <td valign="top"><?php echo const_contact_message;?>:</td>
            <td colspan="3"><textarea name="message" class="textarea"></textarea></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSend" class="btn" value="<?php echo const_contact_sent;?>" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </div>
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
			$("#form").html('<p style="font-weight:bold; padding:30px">Processing...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message,lang:"<?php echo $lang; ?>"},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#00F; font-weight:bold; padding:30px 0 60px;">Send success.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Undeliverable. Please press F5 to try again.</p>');
			});
			return true;
		}
	});
});
</script>