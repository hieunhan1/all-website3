<div class="wrapper"><div class="home_item_3">
    <div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    <div id="contact">
        <div id="form">
            <table width="95%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px; font-size:110%">
              <tr>
                <td colspan="4"><p style="font-size:180%; color:#F00">Thông tin liên hệ</p></td>
              </tr>
              <tr>
                <td width="100">Họ &amp; tên:</td>
                <td><input type="text" name="name" class="txt" maxlength="50" /></td>
                <td width="100" align="right">Email:</td>
                <td><input type="text" name="email" class="txt" maxlength="60" /></td>
              </tr>
              <tr>
                <td>Điện thoại:</td>
                <td><input type="text" name="phone" class="txt" maxlength="11" /></td>
                <td align="right">Địa chỉ:</td>
                <td><input type="text" name="diachi" class="txt" maxlength="250" /></td>
              </tr>
              <tr>
                <td valign="top">Nội dung:</td>
                <td colspan="3"><textarea name="message" class="textarea"></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="button" name="btnSend" class="btn" value="GỬI LIÊN HỆ" /></td>
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
		if($i!=1) $str = 'Chi nhánh: '.$row['name']; else $str = '<h1 style="font-size:100%; line-height:22px">'.$row['name'].': TRƯỜNG DẠY NGHỀ ẨM THỰC NETSPACE</h1>';
		echo '<div class="viewpost" style="width:460px; height:200px; float:left">
			<p style="color:#C00; font-weight:bold">'.$str.'</p>
			<p>Địa chỉ: <b>'.$row['diachi'].'</b></p>
			<p>Điện thoại: <b>'.$row['phone'].'</b></p>
			<p>Hotline: <b>'.$row['hotline'].'</b></p>
			<p>Email: <b>'.$row['email'].'</b></p>
			<p>Bản đồ: <a href="javascript:;" class="google_map" name="'.$row['google_map'].'"><b>Click vào đây để xem bản đồ</b></a></p>
		</div>';
	}
	?>
    <div style="clear:both; height:1px"></div>
</div></div>

<div id="popupContact">
    <div id="content_popup" style="width:600px; padding:15px">
    	<!--<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="" /></a></div>-->
        <div id="ajax_google_map" style="height:450px"></div>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
	</div>
</div>
<div id="backgroundPopup"></div>