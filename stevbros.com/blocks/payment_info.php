<?php
$mTransactionID = $page;

include('nganluong/config.php');	
include('nganluong/include/NL_Checkoutv3.php');

$url_token = $_SERVER['REQUEST_URI'];
$url_token = explode('&token=',$url_token);
$token = $url_token[1];

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
		$view_post .= '
		<div id="left"><div id="view_post">
			<h1>Payment transaction was successful</h1>
			<p style="line-height:22px; margin:10px 0">Dear '.$row['name'].'</p>
			<p style="line-height:22px; margin:10px 0">Greetings from Stevbros Training and Consultancy - PMI® Registered Education Provider ID 3807.</p>
			<p style="line-height:22px; margin:10px 0">Thank you very much for your interest in Stevbros’ training courses.</p>
			<p style="line-height:22px; margin:10px 0">Please be informed that your enrollment is successful and your payment is well received. The detailed information is as follow:</p>
			<p style="margin-left:30px">
				Order ID: <strong>'.$mTransactionID.'</strong><br />
				Course ID: <strong>'.$row['idsp'].'</strong><br />
				Course name: <strong>'.$row['tensp'].'</strong><br />
				Course fee: <strong>'.number_format($row['price']).'</strong> USD<br />
				Email: <strong>'.$row['email'].'</strong></p>
			<p style="line-height:22px; margin:10px 0">For customer enrolling online course, Stevbros will email you username, password, and guideline to access Stevbros’s online training system within 24 hours. For customers enrolling public course, Stevbros will also contact you for training venue and training materials within 24 hours.</p>
	 
			<p style="line-height:22px; margin:10px 0">Again, thank you for your interest in Stevbros\' training courses.</p>
			<p style="line-height:22px; margin:10px 0">Best regards,<br />
			Stevbros Training. </p>
		</div></div>';
		if($row['status']==0){
			$name = $row['name'];
			$email = $row['email'];
			$content = $view_post.'
			<p style="line-height:22px; margin:10px 0">If you need information of cancelation and refunds, please access this link: <a href="http://www.stevbros.com/help/help-customer-service.html">click here</a></p>
			<p style="line-height:22px; margin:10px 0"><strong>This email is sent automatically. Please do not reply. Contact us at <a href="mailto:support@stevbros.com">support@stevbros.com</a> for further information</strong></p>';
			$tc->update_khachhang($mTransactionID,$nl_errorcode,$_SERVER['REQUEST_URI']);
			$send = ob_start();
			include_once('sendmail_smtp/sendmail_thanhtoan.php');
			$send = ob_get_clean();
		}
		$view_post = $navigator.$view_post;
	}else{
		//echo $nlcheckout->GetErrorMessage($nl_errorcode);
		$qr = $tc->view_thanhtoan_error($result[0]);
		$row = mysql_fetch_array($qr);
		$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$view_post .= '
		<div id="left"><div id="view_post">
			<h1>Payment transaction failed</h1>
			<p style="line-height:22px; margin:10px 0"><strong>Dear Valued Customer,</strong></p>
			<p style="line-height:22px; margin:10px 0">Thank you for your interest in Stevbros\' training courses.</p>
			<p style="line-height:22px; margin:10px 0">We regret to inform you that your payment transaction is not successful now.</p>
			<p style="line-height:22px; margin:10px 0">Please feel free to contact us at <a href="mailto:support@stevbros.com">support@stevbros.com</a> if you need any support.</p>
			<p style="line-height:22px; margin:10px 0">Yours sincerely,<br />Stevbros Training & Consultancy.</p>
		</div></div>';
	}
}