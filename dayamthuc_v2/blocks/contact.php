<div id="content">
    <div id="navigator" style="padding-left:20px">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php
        include("languages/{$lang}.php");
        echo $tc->navigator($idMenu);
        ?>
    </div>
    <hr />
    <div id="contact">
        <div id="info"><?php echo $row_config['contact_form'];?></div>
        <div id="form">
            <table width="90%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px; font-size:110%">
              <tr>
                <td colspan="4"><p style="font-size:180%; color:#F00"><?php echo const_thong_tin;?></p></td>
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
    
    <?php
	$i = 0;
	$qr = $tc->chinhanh_ds();
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i!=1) $str = 'Chi nhánh: '.$row['name']; else $str = $row['name'].': <span style="font-size:15px">TRƯỜNG DẠY NGHỀ ẨM THỰC NETSPACE</span>';
		echo '<div class="viewpost" style="margin-left:25px; width:440px; height:200px; float:left">
			<p style="color:#C00; font-weight:bold">'.$str.'</p>
			<p>Địa chỉ: <b>'.$row['diachi'].'</b></p>
			<p>Điện thoại: <b>'.$row['phone'].'</b></p>
			<p>Hotline: <b>'.$row['hotline'].'</b></p>
			<p>Email: <b>'.$row['email'].'</b></p>
		</div>';
	}
	?>
    <div style="clear:both; height:30px"></div>
</div>