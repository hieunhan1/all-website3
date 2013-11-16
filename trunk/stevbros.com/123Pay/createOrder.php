<?php
/**
 * 123Pay Merchant Service
 * @package		miservice
 * @subpackage 	createOrder.php
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
include 'rest.client.class.php';
include 'common.class.php';
function createUniqueOrderId($orderIdPrefix)
{
	return $orderIdPrefix.time();
}
$mTransactionID = '';
$orderIdPrefix = 'micode';

$result = null;
$resultMessage = '';
if($_POST)
{
	$mTransactionID=$_POST['mTransactionID'];
	$resultMessage = 'Current order id: <strong>'.$mTransactionID.'</strong><br>';
	$aData = array
	(
		'mTransactionID' => $mTransactionID,
		'merchantCode' =>$_POST['merchantCode'],
		'bankCode' =>$_POST['bankCode'],
		'totalAmount' =>$_POST['totalAmount'],
		'clientIP' =>$_POST['clientIP'],
		'custName' =>$_POST['custName'],
		'custAddress' =>$_POST['custAddress'],
		'custGender' =>$_POST['custGender'],
		'custDOB' =>$_POST['custDOB'],
		'custPhone' =>$_POST['custPhone'],
		'custMail' =>$_POST['custMail'],
		'description' =>$_POST['description'],
		'cancelURL' => $_POST['cancelURL'],
        'redirectURL' => $_POST['redirectURL'],
        'errorURL' => $_POST['errorURL'],
		'passcode' =>$_POST['passcode'],
		'checksum' =>'',
		'addInfo' =>''
	);
	//print_r($aData);
	$aConfig = array
	(
		'url'=>'https://sandbox.123pay.vn/miservice/createOrder1',
		'key'=>'MIKEY',
		'passcode'=>'MIPASSCODE',
		'cancelURL' => 'merchantCancelURL', //fill cancelURL here
		'redirectURL' => 'merchantRedirectURL', //fill redirectURL here
        'errorURL' => 'merchantErrorURL', //fill errorURL here
	);
	
	try
	{
		$data = Common::callRest($aConfig, $aData);//call 123Pay service
		$result = $data->return;
		if($result['httpcode'] ==  200)
		{
			//call service success do success flow
			if($result[0]=='1')//service return success
			{
				//re-create checksum
				$rawReturnValue = '1'.$result[1].$result[2];
				$reCalChecksumValue = sha1($rawReturnValue.$aConfig['key']);
				if($reCalChecksumValue == $result[3])//check checksum
				{
					$resultMessage .= 'Call service result:<hr>';
					$resultMessage .=  'mTransactionID='.$mTransactionID.'<br>';
					$resultMessage .=  '123PayTransactionID='.$result[1].'<br>';
					$resultMessage .=  'URL='.$result[2].'<br>';
					//call php header to redirect to input card page
					$resultMessage .= '<a style="color:red;font-weight:bold;" href="'.$result[2].'" target="_parent">Click here to go to payment process</a><br>';
				}else
				{
					//Call 123Pay service create order fail, return checksum is invalid
					$resultMessage .=  'Return data is invalid<br>';
				}
			}else{
				//Call 123Pay service create order fail, please refer to API document to understand error code list
				//$result[0]=error code, $result[1] = error description
				$resultMessage .=  $result[0].': '.$result[1];
			}
		}else{
			//call service fail, do error flow
			$resultMessage .=  'Call 123Pay service fail. Please recheck your network connection<br>';
		}
	}catch(Exception $e)
	{
		$resultMessage .=  '<pre>';
		$resultMessage .= $e->getMessage();
	}
	//create new orderid
}
$mTransactionID = createUniqueOrderId($orderIdPrefix);
?>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<div class="detail_main">
<form name="frmMain" method="post" enctype="multipart/form-data" onsubmit="return onSubmit();">

<table width="400" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;mTransactionID</td>
    <td><input type="text" name="mTransactionID" size="20" value="<?php echo $mTransactionID?>"></td>
  </tr>
  <tr>
    <td>&nbsp;merchantCode</td>
    <td><input type="text" name="merchantCode" size="20" value="MICODE" ></td>
  </tr>
  <tr>
    <td>&nbsp;bankCode</td>
    <td><input type="text" name="bankCode" size="20" value="123PVTB" ></td>
  </tr>
  <tr>
    <td>&nbsp;totalAmount</td>
    <td><input type="text" name="totalAmount" size="20" value="100000" ></td>
  </tr>
  <tr>
    <td>&nbsp;clientIP</td>
    <td><input type="text" name="clientIP" size="20" value="127.0.0.1" ></td>
  </tr>
  <tr>
    <td>&nbsp;custName</td>
    <td><input type="text" name="custName" size="20" value="Nguyễn Văn A" ></td>
  </tr>
  <tr>
    <td>&nbsp;custAddress</td>
    <td><input type="text" name="custAddress" size="20" value="123pay@vng.com.vn" ></td>
  </tr>
  <tr>
    <td>&nbsp;custGender</td>
    <td><input type="text" name="custGender" size="20" value="M" ></td>
  </tr>
  <tr>
    <td>&nbsp;custDOB</td>
    <td><input type="text" name="custDOB" size="20" value="20/10/1982" ></td>
  </tr>
  <tr>
    <td>&nbsp;custPhone</td>
    <td><input type="text" name="custPhone" size="20" value="0904904402" ></td>
  </tr>
  <tr>
    <td>&nbsp;custMail</td>
    <td><input type="text" name="custMail" size="20" value="123pay@vng.com.vn" ></td>
  </tr>
  <tr>
    <td>&nbsp;description</td>
    <td><input type="text" name="description" size="20" value="Mua hàng tại merchant ABC" ></td>
  </tr>
  <tr>
   <td>&nbsp;cancelURL</td>
   <td><input type="text" name="cancelURL" size="1000" value="<?php echo $aConfig['cancelURL'] ?>" ></td>
  </tr>
 <tr>
  <td>&nbsp;redirectURL</td>
  <td><input type="text" name="redirectURL" size="1000" value="<?php echo $aConfig['redirectURL'] ?>" ></td>
 </tr>
 <tr>
   <td>&nbsp;errorURL</td>
   <td><input type="text" name="errorURL" size="1000" value="<?php echo $aConfig['errorURL'] ?>" ></td>
 </tr>  
  <tr>
    <td>&nbsp;passcode</td>
    <td><input type="text" name="passcode" size="20" value="MIPASSCODE" ></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="" size="20" value="Submit"></td>
  </tr>
</table>

</form>

</div>
<hr>
<?php
//show result
echo $resultMessage;
?>
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