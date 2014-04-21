<div id="navigator" style="margin:20px 30px 10px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>

<div style="width:460px; float:left; margin-left:30px">
	<div class="viewpost"><?php echo $row_config['contact_form'];?></div><br />
    <div style="height:460px" id="map_google"></div>
    <?php include_once('blocks/map_google.php');?>
</div>

<div id="contact" style="width:380px; float:right; margin:45px 30px 0 0; line-height:22px">
    <div id="form">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><p><?php echo const_thong_tin;?></p><br /></td>
          </tr>
          <tr>
            <td><?php echo '<input type="text" name="name" class="txt_contact bogoc_5px" value="'.const_contact_name.'" onfocus="if(value==\''.const_contact_name.'\') value=\'\'" onblur="if(value==\'\') value=\''.const_contact_name.'\'" />';?></td>
          </tr>
          <tr>
            <td><input type="text" name="email" class="txt_contact bogoc_5px" value="Email" onfocus="if(value=='Email') value=''" onblur="if(value=='') value='Email'" /></td>
          </tr>
          <tr>
            <td><?php echo '<input type="text" name="phone" class="txt_contact bogoc_5px" value="'.const_contact_phone.'" onfocus="if(value==\''.const_contact_phone.'\') value=\'\'" onblur="if(value==\'\') value=\''.const_contact_phone.'\'" />';?></td>
          </tr>
          <tr>
            <td><?php echo '<input type="text" name="diachi" class="txt_contact bogoc_5px" value="'.const_contact_diachi.'" onfocus="if(value==\''.const_contact_diachi.'\') value=\'\'" onblur="if(value==\'\') value=\''.const_contact_diachi.'\'" />';?></td>
          </tr>
          <tr>
            <td><?php echo '<textarea name="message" class="textarea_contact bogoc_5px" onfocus="if(value==\''.const_contact_message.'\') value=\'\'" onblur="if(value==\'\') value=\''.const_contact_message.'\'">'.const_contact_message.'</textarea>';?></td>
          </tr>
          <tr>
            <td><input type="button" name="btnSend" class="btn_contact bogoc_5px" value="<?php echo const_contact_sent;?>" /></td>
          </tr>
        </table>
    </div>
</div>
<div style="clear:both; height:20px"></div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var message = $("textarea[name=message]").val();
		if(name.length<3 || name=="<?php echo const_contact_name; ?>"){
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
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#00F; font-weight:bold; padding:30px 0 60px;"><?php echo const_contact_success;?></p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;"><?php echo const_contact_error;?></p>');
			});
			return true;
		}
	});
});
</script>