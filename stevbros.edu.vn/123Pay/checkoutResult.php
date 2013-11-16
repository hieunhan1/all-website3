<?php
/**
 * 123Pay Merchant Service
 * @package		miservice
 * @subpackage 	checkoutResult.php
 * @copyright	Copyright (c) 2012 VNG
 * @version 	1.0
 * @author 		quannd3@vng.com.vn (live support; zingchat:kibac2001, yahoo:kibac2001, Tel:0904904402)
 * @created 	01/10/2012
 * @modified 	05/10/2012
 */
 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/Site.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sample Code Call 123Pay Service</title>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/tooltip_script.js" type="text/javascript"></script>
<script src="js/jcarousellite_1.js" type="text/javascript"></script>
<script language="javascript">
function selectService(service)
{
	window.location = service + '.php';
}
</script>
<script type="text/javascript">
	$(document).ready(function(){
	    $(".bank_footer").jCarouselLite({
	        btnNext: ".bank_next",
	        btnPrev: ".bank_pre",
	        visible: 11, start: 0, scroll: 8,
	    });
	});
</script>
</head>

<body>
<div class="header">
   <div class="header_in">
        <div class="header_logo"><a target="_blank" href="javascript:void(0)">
        <img border="0" src="images/logo_top.gif"></a></div>
        
        <div class="header_right">
            <div id="header_right_top">
           
            </div>
            <div id="header_right_bottom"> <img border="0" src="images/home_b_03.gif"> <a target="_blank" href="https://123pay.vn">Trang chủ 123Pay</a> </div>

        </div>
   </div>
</div>
<div class="content">
<table width="914px" cellpadding="0" cellspacing="0">
<tr>
<td width="30%" valign="top" style="padding-right:10px;">
<h1>Service</h1>
<hr />
<a href="javascript:void()" onclick="selectService('createOrder')">createOrder</a><br /><br />
<a href="javascript:void()" onclick="selectService('queryOrder')">queryOrder</a><br /><br />
</td>
<td width="70%"><!-- InstanceBeginEditable name="Content" -->

<?php
include 'common.class.php';

//get all data from querystring
//transactionID=123P1210020000506&time=1349164000&status=1&ticket=0d5b8e8d4aea134c3cd159dd500f3598

$aConfig = array
(
	'merchantCode'=>'MICODE',
	'url'=>'https://sandbox.123pay.vn/miservice/queryOrder',
	'key'=>'MIKEY',
	'passcode'=>'MIPASSCODE',
);

$transactionID = $_GET['transactionID'];
$time = $_GET['time'];
$status = $_GET['status'];
$ticket = $_GET['ticket'];

$recalChecksum = md5($status.$time.$transactionID.$aConfig['key']);
if($recalChecksum != $ticket)
{
	echo 'Invalid url';
	exit;	
}
$iCurrentTS = time();
$iTotalSecond = $iCurrentTS - $time;

$iLimitSecond = 300;//5 min = 5*60 = 300
if($iTotalSecond < 0 || $iTotalSecond > $iLimitSecond)
{
	echo 'Expired url';
	exit;	 
}

//now connect to your database and load order info
//if you did not receive notify status from 123Pay
//please call service queryOrder to get a final order status
$notifiedStatus = 0;//for example your system did not receive notify status from 123Pay yet
if(!$notifiedStatus)
{	
		try
		{
			$aData = array
			(
				'mTransactionID' => $transactionID,
				'merchantCode' =>$aConfig['merchantCode'],
				'clientIP' =>'127.0.0.1',//current browser ip
				'passcode' =>$aConfig['passcode'],
				'checksum' =>'',
			);
			$data = Common::callRest($aConfig, $aData);
			
			$result = $data->return;
			if($result['httpcode'] ==  200)
			{
				/* Retun data format
				Array
				(
					[0] => 1
					[1] => 123P1210020000507
					[2] => 1
					[3] => 100000
					[4] => 100000
					[5] => BANKNET
					[6] => 
					[7] => bc44083e998b5e24a922ffad04ea779a84bb2ee3
					[httpcode] => 200
				)
				*/
				if($result[0]=='1')
				{
					echo 'Order info:<hr>';
					echo 'mTransactionId:'.$transactionID.'<br>';
					echo '123PayTransactionId: '.$result[1].'<br>';
					echo 'Status: '.$result[2].'<br>';
					echo 'Amount: '.$result[3].'<br>';
					echo '<hr>';
					if($result[2]=='1')//success
					{
						//Do success call service
						echo 'Checkout process successfully';
					}else{					
						echo 'Show message base on order status ('.$result[2].')';
					}
				}else{
					echo 'Call service queryOrder fail: Order is processing. Please waiting some munite and check your order history list';
				}
			}else{
				//do error call service.
				echo 'Call service queryOrder fail: Order is processing. Please waiting some munite and check your order history list';
			}
		}catch(Exception $e)
		{
			//write log here to monitor your exception
			echo 'Call service queryOrder fail: Order is processing. Please waiting some munite and check your order history list';
		}
}else{
	echo 'Show checkout result base on notify status';
}
?>
<hr>
</div>

<!-- InstanceEndEditable --></td></tr>
<tr><td width="30%" align="left" style="color:#CCCCCC; font-size:11px; font-style:italic;"> Version 1.0</td>
<td  align="left" style="color:#CCCCCC; font-size:11px;font-style:italic;">Copyright @123Pay Team</td></tr>
</table>
</div>

<script language="javascript">
showBankMessage('');
var sysError = '';
var selectedProvince = '';

var minAmount = '50000';
var total_err = 'Số tiền thanh toán tối thiểu là 50,000 đồng.';
var required_err = 'Bạn phải nhập thông tin này.';
var required_money_err = 'Vui lòng nhập số tiền.';
var email_err = 'Địa chỉ email không hợp lệ.';
var sys_busy_err = 'Hệ thống đang bận hoặc quá tải, xin vui lòng thực hiện lại sau vài phút.';
var required_bank_err = 'Vui lòng chọn ngân hàng.';

$('#provinceId').val(selectedProvince);
if(sysError != '')
{
	alert(sysError);	
}

</script>
        
        <div class="footer">
               <div class="footer_in">
               
                    <div class="title_accept">
                           <img src="images/logo_02.jpg"> Chấp nhận thanh toán thẻ từ các đơn vị :
                    </div>
                    <div class="bank_carool">
                        <div class="bank_pre"> </div>
                        <div class="bank_next"></div>
                       <div class="bank_footer_out"> 
                        <div class="bank_footer" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 902px;">
                            <ul style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 3116px; left: -902px;"><li class="scb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vib_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="mb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="hdb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="acb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vtb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="dab_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vpb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="mtb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vab_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="nvb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="visa_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="master_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="bidv_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="exb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="vcb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="scb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="vib_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="mb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="hdb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="acb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="vtb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="dab_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="vpb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="mtb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="vab_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                               <li class="nvb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li>
                            <li class="visa_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="master_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="bidv_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="exb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vcb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="scb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vib_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="mb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="hdb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="acb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li><li class="vtb_bank" style="overflow: hidden; float: left; width: 78px; height: 41px;"></li></ul>
                        </div>
                    </div>    
                   </div>
              </div>
        </div>
<div class="c1"></div>
</body>
<!-- InstanceEnd --></html>