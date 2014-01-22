<div id="left"><?php include_once('blocks/danhmuc_sp.php'); ?></div>
<div id="right">
	<div id="title_detail"><h1><?php echo $row_menu_one['title']; ?></h1></div>
    <div id="contact">
        <div id="info"><?php echo $row_config['contact_form'];?></div>
        <hr />
        <div id="form">
            <table width="90%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="right" width="120"><?php echo const_contact_name;?>: &nbsp;</td>
                <td><input type="text" name="name" class="txt" /></td>
              </tr>
              <tr>
                <td align="right">Email: &nbsp;</td>
                <td><input type="text" name="email" class="txt" /></td>
              </tr>
              <tr>
                <td align="right"><?php echo const_contact_phone;?>: &nbsp;</td>
                <td><input type="text" name="phone" class="txt" /></td>
              </tr>
              <tr>
                <td align="right"><?php echo const_contact_diachi;?>: &nbsp;</td>
                <td><input type="text" name="diachi" class="txt" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><?php echo const_contact_message;?>: &nbsp;</td>
                <td><textarea name="message" class="textarea"></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="button" name="btnSend" class="btn" value="<?php echo const_contact_sent;?>" /></td>
              </tr>
            </table>
        </div>
    </div>
</div>
<div style="clear:both; height:40px"></div>
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
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Send success.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Undeliverable. Please press F5 to try again.</p>');
			});
			return true;
		}
	});
});
</script>