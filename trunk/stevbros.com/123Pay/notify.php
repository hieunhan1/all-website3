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

$sMySecretkey = 'STEVBROSCOMzxNycam56jMcamOKIOca';//key use to hash checksum that will be provided by 123Pay
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
$tc->update_khachhang_error($mTransactionID,$processResult);

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