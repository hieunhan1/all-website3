<?php
$lang = $_POST['lang'];
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			include_once('sendmail/sendmail.php');
			return true;
		}else{
			echo '0';
			return false;
		}
	}else{
		echo '0';
		return false;
	}
}

if($_POST['form']=='form'){
	$ma = $_POST['ma'];
	echo '<option value="">-- Select --</option>';
	$qr = $tc->booking_banggia_to($ma);
	while($row = mysql_fetch_array($qr)){
		echo '<option value="'.$row['ma'].'">'.$row['name'].'</option>';
	}
}

if($_POST['banggia']=='banggia'){
	$form = $_POST['form'];
	$to = $_POST['to'];
	
	$qr = $tc->booking_banggia($form,$to);
	if(mysql_num_rows($qr) > 0){
		$row = mysql_fetch_array($qr);
		
		$weight = str_replace(',','<br />',$row['weight']);
		$rate = str_replace(',','<br />',$row['rate']);
		$myc = str_replace(',','<br />',$row['myc']);
		$msc = str_replace(',','<br />',$row['msc']);
		$mcc = str_replace(',','<br />',$row['mcc']);
		$tcs = str_replace(',','<br />',$row['tcs']);
		$awb = str_replace(',','<br />',$row['awb']);
		$service = str_replace(',','<br />',$row['service']);
		
		echo '<p style="font-weight:bold; margin-bottom:10px; color:#017B80">Bảng giá tham khảo</p>
		<table width="100%" style="border-top:1px solid #CCC; border-left:1px solid #CCC; color:#666" cellpadding="0" cellspacing="0">
			<tr>
				<th class="banggia_cell">Routing<br />(Tuyến)</th>
				<th class="banggia_cell">Weight<br />(Trọng lượng)</th>
				<th class="banggia_cell">RATE<br />(USD/kg)</th>
				<th class="banggia_cell">MYC<br />(Phí xăng dầu)</th>
				<th class="banggia_cell">MSC<br />(Phí chiến tranh)</th>
				<th class="banggia_cell">MCC<br />(Phí soi máy)</th>
				<th class="banggia_cell">TCS</th>
				<th class="banggia_cell">AWB</th>
				<th class="banggia_cell">SERVICE</th>
				<th class="banggia_cell">Other</th>
			</tr>
			<tr style="line-height:35px">
				<td class="banggia_cell" align="center" valign="top">'.$row['name'].'</td>
				<td class="banggia_cell" align="center" valign="top">'.$weight.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$rate.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$myc.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$msc.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$mcc.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$tcs.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$awb.'</td>
				<td class="banggia_cell" align="center" valign="top">'.$service.'</td>
				<td class="banggia_cell" align="center" valign="top">
					<select name="other" class="sel_booking" style="width:auto">
						<option value="">-- Select --</option>
						<option value="AMS (Mỹ)">AMS (Mỹ)</option>
						<option value="EMS (Châu Âu)">EMS (Châu Âu)</option>
					</select>
				</td>
			</tr>
		</table>';
	}
}

if($_POST['booking']=='booking'){
	$ngaydi = str_replace('/','-',trim($_POST['ngaydi']));
	$ngaydi = date('Y-m-d', strtotime($ngaydi));
	$mathang = trim($_POST['mathang']);
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	$form = trim($_POST['form']);
	$to_booking = trim($_POST['to']);
	$soluong = trim($_POST['soluong']);
	$nhietdo = trim($_POST['nhietdo']);
	
	$other = trim($_POST['other']);
	$length = trim($_POST['length']);
	$width = trim($_POST['width']);
	$height = trim($_POST['height']);
	
	$volume_weight = ($length * $width * $height) / 6000;
	$volume_weight = "({$length} x {$width} x {$height}) / 6000 = {$volume_weight}";
	
	if($ngaydi!='' && $mathang!='' && $name!='' && $email!='' && $phone!='' && $diachi!='' && $form!='' && $to_booking!='' && $soluong!=''){
		if($tc->booking_insert($name,$email,$phone,$diachi,$message,$mathang,$ngaydi,$form,$to_booking,$soluong,$nhietdo,$other,$volume_weight)){
			$id_insert = mysql_insert_id();
			echo '1';
			$qr = mysql_query("SELECT email FROM booking_form WHERE ma='{$form}' ");
			$row = mysql_fetch_array($qr);
			include_once('sendmail/send_booking.php');
			return true;
		}else echo '0';
	}else echo '0';
}

if($_POST['tracktrace']=='tracktrace'){
	$ma_bill = $tc->check_ma_3($_POST['ma_bill']); 
	$qr = $tc->track_trace_select($ma_bill[0]);
	//echo mysql_num_rows($qr); return true;
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		if($ma_bill[0]=='738' || $ma_bill[0]=='079'){
			$link = 'http://www.cargoserv.com/trace/trace.asp?Carrier='.$row['ma'].'&Shipment_text='.$ma_bill[0].'-'.$ma_bill[1].'&Header=no&Site=Cserv';
			echo '<iframe class="frame" id="myFrame" width="100%" height="600" frameborder="0" vspace="0" hspace="0" marginwidth="0" marginheight="0" src="'.$link.'">
				&lt;/td&gt;
				&lt;/tr&gt;
				
				&lt;/p&gt;
				&lt;/td&gt;
				&lt;/tr&gt;
				
				&lt;/table&gt;
				&lt;/td&gt;
				&lt;!-- END: Center column --&gt;
				&lt;!-- START: Right column --&gt;
				&lt;td valign="top" width=30%&gt;
				&lt;table align="right"&gt;
				&lt;tr&gt;
				
				&lt;td align="left"&gt;
				&lt;script type="text/javascript"&gt;&lt;!--
				google_ad_client = "pub-5276420894543522";
				google_ad_width = 160;
				google_ad_height = 600;
				google_ad_format = "160x600_as";
				google_ad_channel ="";
				google_color_border = "FFFFFF";
				google_color_bg = "FFFFFF";
				google_color_link = "FF0000";
				google_color_url = "336699";
				google_color_text = "333333";
				//--&gt;&lt;/script&gt;
				&lt;script type="text/javascript"
				src="http://pagead2.googlesyndication.com/pagead/show_ads.js"&gt;
				&lt;/script&gt;
				&lt;/td&gt;
				
				&lt;/tr&gt;
				&lt;/table&gt;
				&lt;/tr&gt;
				&lt;/table&gt;
				
				&lt;/td&gt;
				&lt;/tr&gt;
				&lt;tr&gt;
				&lt;td&gt;
				&lt;div style="text-align: center"&gt;&lt;font color="gray"&gt;&amp;copy; CHAMP Cargosystems 2013&lt;/font&gt;&lt;/div&gt;
				&lt;div style="text-align: center" class="hidden"&gt;
				CUWWW06
				
				&lt;/div&gt;	
				&lt;/td&gt;
				&lt;/tr&gt;
				&lt;/table&gt;
				&lt;/body&gt;
				&lt;/html&gt;
			</iframe>';
			return true;
		}elseif($ma_bill[0]=='160'){
			$link = 'http://www.cathaypacificcargo.com/ManageYourShipment/TrackYourShipment/tabid/108/SingleAWBNo/'.$ma_bill[0].'-'.$ma_bill[1].'/language/en-US/Default.aspx';
			echo '<iframe src="'.$link.'"  data-full-screen="'.$link.'"  data-form="217" class="track_res_frame" id="track-res-frame" name="resframe-194" onLoad="multiFrameLoaded();" width="100%" height="600"></iframe>';
		}else{
			echo '<script type="text/javascript"> window.open("track_trace/'.$ma_bill[0].'.php?ma='.$ma_bill[0].'&number='.$ma_bill[1].'","_blank"); </script>';
			return true;
		}
	}
	
	$ma_bill = $tc->check_ma_2($_POST['ma_bill']); 
	$qr = $tc->track_trace_select($ma_bill[0]);
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		if($ma_bill[0]=='89'){
			$link = 'http://www.dhl.com/content/g0/en/express/tracking.shtml?brand=DHL&AWB='.$_POST['ma_bill'].'&commit=Track%21';
			echo '<iframe width="100%" height="600" frameborder="0" vspace="0" hspace="0" marginwidth="0" marginheight="0" src="'.$link.'"></iframe>';
			return true;
		}elseif($ma_bill[0]=='1Z'){
			$link = 'http://wwwapps.ups.com/etracking/tracking.cgi?TypeOfInquiryNumber=T&InquiryNumber1='.$_POST['ma_bill'].'&commit=Track%21';
			echo '<script type="text/javascript"> window.open("'.$link.'","_blank"); </script>';
			return true;
		}
	}
	echo '<p style="color:#F00">Không tìm thấy dữ liệu</p>';
	return false;
}

mysql_close();
return true;