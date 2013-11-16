<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.png" alt="Home" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

$view_post .= $navigator;

$view_post .= "<div id='contact'><div style='line-height:22px; margin-bottom:30px'>".$row_config['contact_form']."</div>
	<h3 style='font-size:120%; margin-bottom:10px'>Form liên hệ</h3>
    <table width='100%' border='0' cellspacing='10' cellpadding='0' id='form_lienhe' style='margin-left:50px'>
      <tr>
        <td width='10%'>Họ &amp; tên: <span style='color:#FF0000'>*</span></td>
		<td width='40%'><input type='text' name='name' maxlength='50' class='txt' /></td>
      </tr>
	  <tr>
        <td width='10%'>Phone:</td>
		<td width='40%'><input type='text' name='phone' maxlength='20' class='txt' /></td>
      </tr>
      <tr>
        <td>Email: <span style='color:#FF0000'>*</span></td>
		<td><input type='text' name='email' maxlength='50' class='txt' /></td>
      </tr>
      <tr>
        <td>Địa chỉ:</td>
		<td><input type='text' name='diachi' maxlength='200' class='txt' /></td>
      </tr>
      <tr>
        <td valign='top' style='padding-top:10px'>Nội dung: <span style='color:#FF0000'>*</span></td>
		<td><textarea name='content' class='textarea'></textarea></td>
      </tr>
      <tr>
	  	<td>&nbsp;</td>
	    <td><input type='submit' name='submit_contact' value='Gửi đi' class='btn' /></td>
      </tr>
    </table>
	</div>";

echo $view_post;?>
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