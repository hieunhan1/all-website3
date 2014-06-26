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
		header('location: http://www.stevbros.edu.vn/payment-info/'.$order_id);
		return true;
	}else{
		$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$view_post .= '<div id="left"><div id="view_post">
			<h1>Thanh toán thất bại.</h1>
			<p style="line-height:22px; margin:10px 0"><strong>Kính gởi quý khách,</strong></p>
			<p style="line-height:22px; margin:10px 0">Cảm ơn quý khách đã quan tâm đến các khoá học thanh toán qua mạng của Stevbros.</p>
			<p style="line-height:22px; margin:10px 0">Chúng tôi rất tiếc thông báo giao dịch của quý khách không thành công tại thời điểm này.</p>
			<p style="line-height:22px; margin:10px 0">Nếu quý khách cần hổ trợ, vui lòng email về <a href="mailto:support@stevbros.com">support@stevbros.com</a>. Chúng tôi rất vui lòng được phục vụ quý khách.</p>
			<p style="line-height:22px; margin:10px 0">Trân trọng,<br />Stevbros Training & Consultancy.</p>
		</div></div>';
	}
}else{
	$qr = mysql_query("SELECT id,name,last_name,(SELECT ma_kh FROM thanhtoan_khachhang_sacombank,thanhtoan_sanpham WHERE khoahoc_id=thanhtoan_sanpham.id AND thanhtoan_khachhang_sacombank.id='{$dt}' LIMIT 1) as ma_kh,khoahoc_name,email,signed_date,amount,status FROM thanhtoan_khachhang_sacombank WHERE `delete`=0 AND id='{$dt}' " );
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		$navigator = $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
		$data = '<h1>Thanh toán thành công</h1>
		<p style="line-height:22px; margin:10px 0">Kính gởi bạn '.$row['name'].' '.$row['last_name'].'</p>
		<p style="line-height:22px; margin:10px 0"><strong>Công ty đào tạo và tư vấn Stevbros</strong> – uỷ quyền đào tạo của <strong>Viện Quản Lý Dự Án Hoa Kỳ (PMI)</strong> mã số 3807 – kính chào bạn. Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
		<p style="line-height:22px; margin:10px 0">Stevbros xin thông báo bạn đã đăng ký khoá học thành công và Stevbros đã nhận được học phí của khoá học bạn đăng ký. Thông tin chi tiết như sau:</p>
		<p style="margin-left:30px">
			Order ID / Mercent Reference Number: <strong>'.$row['id'].'</strong><br />
			Course ID: <strong>'.$row['ma_kh'].'</strong><br />
			Tên khóa học: <strong>'.$row['khoahoc_name'].'</strong><br />
			Học phí: <strong>'.number_format($row['amount'],0,',','.').'</strong> VNĐ<br />
			Email: <strong>'.$row['email'].'</strong><br />
			Ngày giao dịch: '.date('d F Y', strtotime($row['signed_date'])).'</p>
		<p style="line-height:22px; margin:10px 0">Nếu bạn đã đăng ký khoá học qua mạng, Stevbros sẽ cung cấp thông tin tài khoản, mật mã và hướng dẫn truy cập hệ thống học qua mạng của Stevbros qua email của bạn trong vòng 24 giờ. Nếu bạn đã đăng ký khoá học khai giảng định kỳ, Stevbros cũng sẽ liên hệ bạn qua email và điện thoại để thông báo địa điểm cụ thể và tài liệu khoá học trong vòng 24 giờ.</p>
	
		<p style="line-height:22px; margin:10px 0">Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
		<p style="line-height:22px; margin:10px 0">Trân trọng,</p>
		<p><b>Stevbros Training & Consultancy</b></p>
		<p><b>Hotline:</b> +84 907 857746 - Phone: +84 8 3911 7362</p>
		<p><b>Office:</b> Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh, Việt Nam</p>
		<p><b>Website:</b> www.stevbros.edu.vn</p>
		<br />
		<p>Nếu bạn cần thông tin về hủy bỏ và hoàn lại tiền, xin vui lòng truy cập liên kết này: <a href="http://www.stevbros.edu.vn/tro-giup/tro-giup-va-dich-vu-khach-hang.html">bấm vào đây</a></p>
		<p>Email này được gửi tự động. Xin đừng trả lời. Liên hệ với chúng tôi <a href="mailto:support@stevbros.com">support@stevbros.com</a> để biết thêm thông tin.</p>';
		
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
		$view_post .= '<div id="left"><div id="view_post">
			<h1>Thanh toán thất bại.</h1>
			<p style="line-height:22px; margin:10px 0"><strong>Kính gởi quý khách,</strong></p>
			<p style="line-height:22px; margin:10px 0">Cảm ơn quý khách đã quan tâm đến các khoá học thanh toán qua mạng của Stevbros.</p>
			<p style="line-height:22px; margin:10px 0">Chúng tôi rất tiếc thông báo giao dịch của quý khách không thành công tại thời điểm này.</p>
			<p style="line-height:22px; margin:10px 0">Nếu quý khách cần hổ trợ, vui lòng email về <a href="mailto:support@stevbros.com">support@stevbros.com</a>. Chúng tôi rất vui lòng được phục vụ quý khách.</p>
			<p style="line-height:22px; margin:10px 0">Trân trọng,<br />Stevbros Training & Consultancy.</p>
		</div></div>';
	}
	
	$view_post = $navigator.$view_post;
}