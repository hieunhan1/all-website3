<div id="left">
	<?php
    $qr = $tc->menu(const_id_trang_sao_chep,3,$lang);
	while($row = mysql_fetch_array($qr)){
		echo '<div class="left_title"><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a></div>';
		$qr2 = $tc->menu($row['id'],3,$lang);
		while($row2 = mysql_fetch_array($qr2)){
			if($idMenu != $row2['id']) echo '<div class="left_item"><a href="'.$lang.'/'.$row2['url'].'">'.$row2['name'].'</a></div>';
			else echo '<div class="left_item"><a href="'.$lang.'/'.$row2['url'].'" style="background-color:#8D8D8D">'.$row2['name'].'</a></div>';
		}
	}
	?>
    <div id="support">
    	<p>Hỗ trợ trực tuyến</p>
        <?php
		$hotline = explode(' - ',$row_config['facebook']);
        echo '<a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&m=g&t=1" style="padding:5px 0" /></a><br />
        <p>Hotline: '.$hotline[0].'</p><span>'.$hotline[1].'</span>';
		?>
    </div>
</div>

<div id="right">
<div id="contact">
    <div id="info"><?php echo $row_config['contact_form'];?></div>
    <div id="form">
        <table width="90%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px">
          <tr>
            <td colspan="2"><p style="font-size:200%"><?php echo const_noi_dung_yeu_cau;?></p></td>
          </tr>
          <tr>
            <td width="200">Tên tranh nếu có:</td>
            <td><input type="text" name="tentranh" class="txt" /></td>
          </tr>
          <tr>
            <td>Link tranh nếu có:</td>
            <td><input type="text" name="linktranh" class="txt" /></td>
          </tr>
          <tr>
            <td>Kích thước (dài x rộng cm):</td>
            <td><input type="text" name="kichthuoc" class="txt" /></td>
          </tr>
          <tr>
            <td>Khung tranh mỹ thuật:</td>
            <td><input type="radio" name="tranhmythuat" value="1" /> Có &nbsp; &nbsp; &nbsp; <input type="radio" name="tranhmythuat" value="0" checked="checked" /> Không</td>
          </tr>
          <tr>
            <td valign="top">Yêu cầu:</td>
            <td><textarea name="message" class="textarea"></textarea></td>
          </tr>
          
          <tr>
            <td colspan="2"><p style="font-size:200%"><?php echo const_thong_tin;?></p></td>
          </tr>
          <tr>
            <td>Họ & tên:</td>
            <td><input type="text" name="name" class="txt" /></td>
          </tr>
          <tr>
            <td>Email:</td>
            <td><input type="text" name="email" class="txt" /></td>
          </tr>
          <tr>
            <td>Điện thoại:</td>
            <td><input type="text" name="phone" class="txt" /></td>
          </tr>
          <tr>
            <td>Địa chỉ:</td>
            <td><input type="text" name="diachi" class="txt" /></td>
          </tr>
          <tr>
            <td width="100">&nbsp;</td>
            <td><input type="button" name="btnSend" class="btn" value="ĐẶT TRANH" /></td>
          </tr>
        </table>
    </div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		
		var tentranh = $("input[name=tentranh]").val();
		var linktranh = $("input[name=linktranh]").val();
		var kichthuoc = $("input[name=kichthuoc]").val();
		var tranhmythuat = $("input[name=tranhmythuat]:checked").val();
		var message = $("textarea[name=message]").val();
		if(name.length<3){
			alert("Input name");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Wrong email address");
			$("input[name=email]").focus();
			return false;
		}else if(phone.length<10){
			alert("Input phone");
			$("input[name=phone]").focus();
			return false;
		}else if(message.length<10){
			alert("Input Message");
			$("textarea[name=message]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Processing...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message,tentranh:tentranh,linktranh:linktranh,kichthuoc:kichthuoc,tranhmythuat:tranhmythuat,lang:"<?php echo $lang; ?>"},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Send success.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Undeliverable. Please press F5 to try again.</p>');
			});
			return true;
		}
	});
});
</script>