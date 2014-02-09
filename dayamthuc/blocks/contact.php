<style type="text/css">
.style4 {color: #ff0000;}
#ref{margin-left:20px;}
#hinh_captcha{float:left;}
.style5 {color: #FF0000}
</style>
<div class='boxleft'>
    <div class='titleleft'></div>
    <div class='titlecenter'><a href='lien-he.html'>Liên hệ</a></div>
    <div class='titleright'></div>
    <div class='titleicon'></div>
    <div style='clear:both'></div>
    <div style="margin-left:15px"><h1 style="color:#CC0000; font-size:16px">Trường dạy nghề ẩm thực NETSPACE</h1><?php echo $row_config['contact']?>
        <p align="center"><img src="images/map-lien-he.jpg" align="ban do, dia chi, truong day nghe am thuc" /></p><br />
        <p><strong style="color:#C00">Chi nhánh Đặng Tất</strong><br />
        <strong>Địa chỉ: Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM</strong><br />
        Điện thoại: 08.3526.8716
        
        </p><br />
        <p><strong style="color:#C00">Chi nhánh Đà Nẵng:</strong><br />
        <strong>Địa chỉ: Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng.</strong><br />
        Điện thoại: 05113.634.879 - 05113.634.877<br />
        Hotline: 0905 295 402 - 0932 743 799</p><br />
        
        <p><strong style="color:#C00">Chi nhánh Cần Thơ:</strong><br />
        <strong>Địa chỉ: 118 Đường 3/2 P.Xuân Khánh, Q.Ninh Kiều, Tp.Cần Thơ</strong><br />
        Hotline: 0912.187.489 - 0912.287.489<br />
        Điện thoại: 0710 373 4371<br />
        Fax: 0710 373 4375
        </p><br />
    </div>
    <br />
<div id="form">
  <table border="0" cellpadding="10" cellspacing="0" style="margin-left:50px;" id="form_contact" >
    <tr>
      <td width="100px" valign="top"><label for="HoTen">Họ tên:<span class="style4">*</span></label></td>
      <td width="400px"><input type="text" name="name" size="60" /></td>
    </tr>
    <tr>
      <td valign="top"><label for="Email">Email:<span class="style4">*</span></label></td>
      <td><input type="text" name="email" size="60" /></td>
    </tr>
    <tr>
      <td valign="top"><label for="DiaChi">Địa chỉ:</label></td>
      <td><input type="text" name="diachi" size="60" /></td>
    </tr>
    <tr>
      <td valign="top"><label for="DienThoai">Điện thoại:</label></td>
      <td><input type="text" name="phone" size="60" /></td>
    </tr>
    <tr>
      <td valign="top"><label for="LoiNhan">Lời nhắn:<span class="style4">*</span></label></td>
      <td><textarea name="message" cols="47" rows="15" class="txtlienhe"></textarea><div class="style5" id="LoiNhan"></div></td>
    </tr>
    <tr><td>&nbsp;</td>
    <td><input type="button" name="btnSend" style="padding:5px 25px" value="GỬI" /></td>
  </tr>
</table>
</div>
<br /><br />
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
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:blue; font-size:16px; font-weight:bold; padding:30px 0 60px 30px;">Gửi thành công. Chúng tôi sẽ liên hệ Quý khách sớm nhất.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px 30px;">Có sự cố. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>