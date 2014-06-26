<?php
session_destroy();
include_once('sacombank/security.php');

$params = array();
foreach($_REQUEST as $name => $value) {
	$params[$name] = $value;
}

$order_id		= $params['req_reference_number'];
$name			= $params['req_bill_to_forename'];
$last_name		= $params['req_bill_to_surname'];
$country		= $params['req_bill_to_address_country'];
$postal_code	= $params['req_bill_to_address_postal_code'];
$address_line1	= $params['req_bill_to_address_line1'];
$address_line2	= $params['req_bill_to_address_line2'];
$address_city	= $params['req_bill_to_address_city'];
$email			= $params['req_bill_to_email'];
$signed_date	= $params['signed_date_time'];
$card_scheme	= $params['score_card_scheme'];
$card_number	= $params['req_card_number'];
$card_expiry_date = $params['req_card_expiry_date'];
$card_type		= $params['req_card_type'];
$amount			= $params['req_amount'];
$ip_address		= $params['customer_ip_address'];
$id_khoahoc		= $params['id_khoahoc'];
$datetime = date('Y-m-d H-i-s');

//$address_line2 .= " - {$ip_address} - {$id_khoahoc}";

$khoahoc_id		= explode('_',$order_id);
$khoahoc_id		= $khoahoc_id[1];
$qr = mysql_query("SELECT name FROM `thanhtoan_sanpham` WHERE `delete`=0 AND `status`=1 AND `id`='{$khoahoc_id}' ");
$row = mysql_fetch_array($qr);
$khoahoc_name	= $row['name'];

if($dt==''){
	$sql = "INSERT INTO `thanhtoan_khachhang_sacombank` VALUES ('{$order_id}', '{$name}', '{$last_name}', '{$country}', '{$postal_code}', '{$address_line1}', '{$address_line2}', '{$address_city}', '{$email	}', '{$signed_date}', '{$khoahoc_id}', '{$khoahoc_name}', '{$card_scheme}', '{$card_number}', '{$card_expiry_date}', '{$card_type}', '{$amount}', '0', '{$datetime}', NULL, 'khachhang', NULL, '0')";
	if(mysql_query($sql)){
		header('location: http://www.stevbros.com/payment-info/'.$order_id);
		return true;
	}else{
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
}else{
	$qr = mysql_query("SELECT id,name,last_name,(SELECT ma_kh FROM thanhtoan_khachhang_sacombank,thanhtoan_sanpham WHERE khoahoc_id=thanhtoan_sanpham.id AND thanhtoan_khachhang_sacombank.id='{$dt}' LIMIT 1) as ma_kh,khoahoc_name,email,signed_date,amount,status FROM thanhtoan_khachhang_sacombank WHERE `delete`=0 AND id='{$dt}' " );
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		$navigator = $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$data = '<h1>Payment transaction was successful</h1>
		<p style="line-height:22px; margin:10px 0">Dear '.$row['name'].' '.$row['last_name'].'</p>
		<p style="line-height:22px; margin:10px 0">Greetings from Stevbros Training and Consultancy - PMI® Registered Education Provider ID 3807.</p>
		<p style="line-height:22px; margin:10px 0">Thank you very much for your interest in Stevbros’ training courses.</p>
		<p style="line-height:22px; margin:10px 0">Please be informed that your enrollment is successful and your payment is well received. The detailed information is as follow:</p>
		<p style="margin-left:30px">
			Order ID / Mercent Reference Number: <strong>'.$row['id'].'</strong><br />
			Course ID: <strong>'.$row['ma_kh'].'</strong><br />
			Course name: <strong>'.$row['khoahoc_name'].'</strong><br />
			Course fee: <strong>'.number_format($row['amount']).'</strong> USD<br />
			Email: <strong>'.$row['email'].'</strong><br />
			Date of transaction: '.date('d F Y', strtotime($row['signed_date'])).'</p>
		<p style="line-height:22px; margin:10px 0">For customer enrolling online course, Stevbros will email you username, password, and guideline to access Stevbros’s online training system within 24 hours. For customers enrolling public course, Stevbros will also contact you for training venue and training materials within 24 hours.</p>
	
		<p style="line-height:22px; margin:10px 0">Again, thank you for your interest in Stevbros\' training courses.</p>
		<p style="line-height:22px; margin:10px 0">Best regards,</p>
		<p><b>Stevbros Training & Consultancy</b></p>
		<p><b>Hotline:</b> +84(0) 907 857746  Phone: +84 8 3911 7362</p>
		<p><b>Office:</b> 7th Floor, CMARD2, 45 Dinh Tien Hoang Street, Ben Nghe Ward, District 1, HCMC, Vietnam</p>
		<p><b>Website:</b> www.stevbros.com</p>
		<br /><br />
		<p>If you need information of cancelation and refunds, please access this link: <a href="http://www.stevbros.com/help/help-customer-service.html">click here</a></p>
		<p>This email is sent automatically. Please do not reply. Contact us at <a href="mailto:support@stevbros.com">support@stevbros.com</a> for further information</p>';
		
		$view_post .= '<div id="left"><div id="view_post">'.$data.'</div></div>';
		
		if($row['status']==0){
			$name_kh = $row['name'];
			$email_kh = $row['email'];
			$content = '<div style="line-height:22px; color:#666">'.$data.'</div>';
			mysql_query("UPDATE thanhtoan_khachhang_sacombank SET status=1 WHERE id='{$row['id']}'");
			
			$send = ob_start();
			include_once('sendmail_smtp/sendmail_thanhtoan.php');
			$send = ob_get_clean();
		}
	}else{
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
	
	$view_post = $navigator.$view_post;
}