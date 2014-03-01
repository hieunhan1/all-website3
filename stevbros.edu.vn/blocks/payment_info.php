<?php
/*link url*/
$url_token = $_SERVER['REQUEST_URI'];
$url_token = explode('&token=',$url_token);
$token = $url_token[1];

$mTransactionID = $page;

if(count($url_token)==1){
	/*123Pay*/
	$result = NULL;
	$clientIP = $_SERVER['REMOTE_ADDR'];
	$aData = array
	(
		'mTransactionID' => $mTransactionID,
		'merchantCode' =>$merchantCode,
		'clientIP' =>$clientIP,
		'passcode' =>$passcode,
		'checksum' =>SHA1($mTransactionID + $merchantCode + $clientIP + $passcode + $secretKey),
	);
	$aConfig = array
	(
		'url'=>$queryOrder,
		'key'=>$secretKey,
		'passcode'=>$passcode,
	);
	try{
		$data = Common::callRest($aConfig, $aData);
		$result = $data->return;
	}catch(Exception $e){}
	
	if($result[0]==1 && $result[2]==1){
		$qr = $tc->view_thanhtoan_trave($mTransactionID);
		$row = mysql_fetch_array($qr);
		$navigator = $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$view_post .= '<div id="left"><div id="view_post">
			<h1>Thanh toán thành công</h1>
			<p style="line-height:22px; margin:10px 0">Kính gởi bạn <strong>'.$row['name'].'</strong></p>
			<p style="line-height:22px; margin:10px 0"><strong>Công ty đào tạo và tư vấn Stevbros</strong> – uỷ quyền đào tạo của <strong>Viện Quản Lý Dự Án Hoa Kỳ (PMI)</strong> mã số 3807 – kính chào bạn. Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
			<p style="line-height:22px; margin:10px 0">Stevbros xin thông báo bạn đã đăng ký khoá học thành công và Stevbros đã nhận được học phí của khoá học bạn đăng ký. Thông tin chi tiết như sau:</p>
			<p style="margin-left:30px">Tên khoá học: <strong>'.$row['tensp'].'</strong><br />
				Phí khoá học: <strong>'.number_format($row['price']).'</strong> vnđ<br />
				Email: <strong>'.$row['email'].'</strong></p>
			<p style="line-height:22px; margin:10px 0">Nếu bạn đã đăng ký khoá học qua mạng, Stevbros sẽ cung cấp thông tin tài khoản, mật mã và hướng dẫn truy cập hệ thống học qua mạng của Stevbros qua email của bạn trong vòng 24 giờ. Nếu bạn đã đăng ký khoá học khai giảng định kỳ, Stevbros cũng sẽ liên hệ bạn qua email và phone để thông báo địa điểm cụ thể và tài liệu khoá học trong vòng 24 giờ.</p>
	 
			<p style="line-height:22px; margin:10px 0">Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
			<p style="line-height:22px; margin:10px 0">Trân trọng,<br />
			Stevbros Training. </p>
		</div></div>
		
		<script type="text/javascript">
		document.write(unescape("%3Cscript id=%27pap_x2s6df8d%27 src=%27" + (("https:" == document.location.protocol) ? "https://" : "http://") + "lienket123.com/program/scripts/trackjs.js%27 type=%27text/javascript%27%3E%3C/script%3E")); 
		 </script> <script type="text/javascript">
		PostAffTracker.setAccountId(\'f4991c3f\');
		var sale = PostAffTracker.createSale();
		sale.setTotalCost(\''.$row['price'].'\');
		sale.setOrderID(\''.$mTransactionID.'\');
		sale.setProductID(\''.$row['tensp'].'\');
		
		PostAffTracker.register();
		</script>';
		if($row['status']==0){
			$name = $row['name'];
			$email = $row['email'];
			$content = $view_post.'<p style="line-height:22px; margin:10px 0"><strong>Đây là email tự động. Xin đừng trả lời. Nếu cần liên hệ xin email về <a href="mailto:support@stevbros.com">support@stevbros.com</a></strong></p>';
			$tc->update_khachhang($mTransactionID,$result[2],1);
			$send = ob_start();
			include_once('sendmail_smtp/sendmail_thanhtoan.php');
			$send = ob_get_clean();
		}
		$view_post = $navigator.$view_post;
	}else{
		$qr = $tc->view_thanhtoan_trave($mTransactionID);
		$row = mysql_fetch_array($qr);
		$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$view_post .= '
		<div id="left"><div id="view_post">
			<h1>Thanh toán thất bại.</h1>
			<p style="line-height:22px; margin:10px 0"><strong>Kính gởi quý khách,</strong></p>
			<p style="line-height:22px; margin:10px 0">Cảm ơn quý khách đã quan tâm đến các khoá học thanh toán qua mạng của Stevbros.</p>
			<p style="line-height:22px; margin:10px 0">Chúng tôi rất tiếc thông báo giao dịch của quý khách không thành công tại thời điểm này.</p>
			<p style="line-height:22px; margin:10px 0">Nếu quý khách cần hổ trợ, vui lòng email về <a href="mailto:support@stevbros.com">support@stevbros.com</a>. Chúng tôi rất vui lòng được phục vụ quý khách.</p>
			<p style="line-height:22px; margin:10px 0">Trân trọng,<br />Stevbros Training & Consultancy.</p>
		</div></div>';
	}
	/*end 123Pay*/
}else{
	/*Ngan luong*/
	include('nganluong/config.php');	
	include('nganluong/include/NL_Checkoutv3.php');
	
	$error_code = explode('?error_code=',$url_token[0]);
	$error_code = $error_code[1];
	
	$nlcheckout= new NL_CheckOutV3(MERCHANT_ID,MERCHANT_PASS,RECEIVER);
	$nl_result = $nlcheckout->GetTransactionDetail($token);
	
	if($nl_result){
		$nl_errorcode = (string)$nl_result->error_code;
		$nl_transaction_status  = (string)$nl_result->transaction_status;
		if($nl_errorcode == '00') {
			$qr = $tc->view_thanhtoan_trave($mTransactionID);
			$row = mysql_fetch_array($qr);
			$navigator = $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
			$view_post .= '<div id="left"><div id="view_post">
				<h1>Thanh toán thành công</h1>
				<p style="line-height:22px; margin:10px 0">Kính gởi bạn <strong>'.$row['name'].'</strong></p>
				<p style="line-height:22px; margin:10px 0"><strong>Công ty đào tạo và tư vấn Stevbros</strong> – uỷ quyền đào tạo của <strong>Viện Quản Lý Dự Án Hoa Kỳ (PMI)</strong> mã số 3807 – kính chào bạn. Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
				<p style="line-height:22px; margin:10px 0">Stevbros xin thông báo bạn đã đăng ký khoá học thành công và Stevbros đã nhận được học phí của khoá học bạn đăng ký. Thông tin chi tiết như sau:</p>
				<p style="margin-left:30px">Tên khoá học: <strong>'.$row['tensp'].'</strong><br />
					Phí khoá học: <strong>'.number_format($row['price']).'</strong> vnđ<br />
					Email: <strong>'.$row['email'].'</strong></p>
				<p style="line-height:22px; margin:10px 0">Nếu bạn đã đăng ký khoá học qua mạng, Stevbros sẽ cung cấp thông tin tài khoản, mật mã và hướng dẫn truy cập hệ thống học qua mạng của Stevbros qua email của bạn trong vòng 24 giờ. Nếu bạn đã đăng ký khoá học khai giảng định kỳ, Stevbros cũng sẽ liên hệ bạn qua email và phone để thông báo địa điểm cụ thể và tài liệu khoá học trong vòng 24 giờ.</p>
		 
				<p style="line-height:22px; margin:10px 0">Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
				<p style="line-height:22px; margin:10px 0">Trân trọng,<br />
				Stevbros Training. </p>
			</div></div>
			
			<script type="text/javascript">
			document.write(unescape("%3Cscript id=%27pap_x2s6df8d%27 src=%27" + (("https:" == document.location.protocol) ? "https://" : "http://") + "lienket123.com/program/scripts/trackjs.js%27 type=%27text/javascript%27%3E%3C/script%3E")); 
			 </script> <script type="text/javascript">
			PostAffTracker.setAccountId(\'f4991c3f\');
			var sale = PostAffTracker.createSale();
			sale.setTotalCost(\''.$row['price'].'\');
			sale.setOrderID(\''.$mTransactionID.'\');
			sale.setProductID(\''.$row['tensp'].'\');
			
			PostAffTracker.register();
			</script>';
			if($row['status']==0){
				$name = $row['name'];
				$email = $row['email'];
				$content = $view_post.'<p style="line-height:22px; margin:10px 0"><strong>Đây là email tự động. Xin đừng trả lời. Nếu cần liên hệ xin email về <a href="mailto:support@stevbros.com">support@stevbros.com</a></strong></p>';
				$tc->update_khachhang($mTransactionID,$nl_errorcode,1);
				$send = ob_start();
				include_once('sendmail_smtp/sendmail_thanhtoan.php');
				$send = ob_get_clean();
			}
			$view_post = $navigator.$view_post;
		}else{
			//echo $nlcheckout->GetErrorMessage($nl_errorcode);
			$qr = $tc->view_thanhtoan_trave($mTransactionID);
			$row = mysql_fetch_array($qr);
			$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
			$view_post .= '
			<div id="left"><div id="view_post">
				<h1>Thanh toán thất bại.</h1>
				<p style="line-height:22px; margin:10px 0"><strong>Kính gởi quý khách,</strong></p>
				<p style="line-height:22px; margin:10px 0">Cảm ơn quý khách đã quan tâm đến các khoá học thanh toán qua mạng của Stevbros.</p>
				<p style="line-height:22px; margin:10px 0">Chúng tôi rất tiếc thông báo giao dịch của quý khách không thành công tại thời điểm này.</p>
				<p style="line-height:22px; margin:10px 0">Nếu quý khách cần hổ trợ, vui lòng email về <a href="mailto:support@stevbros.com">support@stevbros.com</a>. Chúng tôi rất vui lòng được phục vụ quý khách.</p>
				<p style="line-height:22px; margin:10px 0">Trân trọng,<br />Stevbros Training & Consultancy.</p>
			</div></div>';
		}
	}
	/*end ngan luong*/
}