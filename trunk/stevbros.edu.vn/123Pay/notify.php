<?php
/**
 * 123Pay Merchant Service
 * @package		miservice
 * @subpackage 	notify.php
 * @copyright	Copyright (c) 2012 VNG
 * @version 	1.0
 * @author 		quannd3@vng.com.vn (live support; zingchat:kibac2001, yahoo:kibac2001, Tel:0904904402)
 * @created 	01/10/2012
 * @modified 	05/10/2012
 */
//this sample code use both GET and POST method
//You can modify to use one that you like


$mTransactionID = $_REQUEST['mTransactionID'];
$bankCode = $_REQUEST['bankCode'];
$transactionStatus = $_REQUEST['transactionStatus'];
$description = $_REQUEST['description'];
$ts = $_REQUEST['ts'];
$checksum = $_REQUEST['checksum'];

$sMySecretkey = 'STEVBROSEDUVNcfHycasnhuNJ45UcaI9i';//key use to hash checksum that will be provided by 123Pay
$sRawMyCheckSum = $mTransactionID.$bankCode.$transactionStatus.$ts.$sMySecretkey;
$sMyCheckSum = sha1($sRawMyCheckSum);
/*if($sMyCheckSum != $checksum)
{
	 response($mTransactionID, '-1', $sMySecretkey);
}
$iCurrentTS = time();
$iTotalSecond = $iCurrentTS - $ts;

$iLimitSecond = 300;//5 min = 5*60 = 300
if($iTotalSecond < 0 || $iTotalSecond > $iLimitSecond)
{
	response($mTransactionID, '-2', $sMySecretkey); 
}*/
$processResult = process($mTransactionID, $bankCode, $transactionStatus);

/*update database*/
include_once('../config.php');

$qr = $tc->view_thanhtoan_trave($mTransactionID);
$row = mysql_fetch_array($qr);
$view_post .= '<div id="left"><div id="view_post">
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
</div></div>';
if($row['status']==0 && $transactionStatus==1){
	$name = $row['name'];
	$email = $row['email'];
	$content = $view_post.'<p style="line-height:22px; margin:10px 0"><strong>Đây là email tự động. Xin đừng trả lời. Nếu cần liên hệ xin email về <a href="mailto:support@stevbros.com">support@stevbros.com</a></strong></p>';
	$tc->update_khachhang($mTransactionID,$transactionStatus,1);
	$send = ob_start();
	include_once('sendmail/sendmail_thanhtoan.php');
	$send = ob_get_clean();
}else $tc->update_khachhang($mTransactionID,$transactionStatus,0);
/*end update database*/

response($mTransactionID, $processResult, $sMySecretkey);

/*===============================Function region=======================================*/
function process($mTransactionID, $bankCode, $transactionStatus)
{
	try
	{
		//do you update order status process
		return 1;//if process successfully
		//return 2;//if you have been received notify status before
		
	}
	catch(Exception $_e)
	{
		return -3;	
	}
}
function response($mTransactionID, $returnCode, $key)
{
	$ts = time();
	$sRawMyCheckSum = $mTransactionID.$returnCode.$ts.$key;
	$checksum = sha1($sRawMyCheckSum);
	$aData = array(
		'mTransactionID' => $mTransactionID,
		'returnCode' => $returnCode,
		'ts' => time(),
		'checksum' => $checksum
	);
	echo json_encode($aData);
	exit;
}
/*===============================End Function region=======================================*/
?>