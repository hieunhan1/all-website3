<?php
include_once('class/functions.php');
function createUniqueOrderId($orderIdPrefix)
{
	return $orderIdPrefix.time();
}

$orderIdPrefix = $merchantCode;

$result = null;
$resultMessage = '';

$clientIP = $_SERVER['REMOTE_ADDR'];

if(@$_POST['createOrder'])
{
	$_SESSION['thanhtoan'] = 0;
	$mTransactionID = 'stevbros'.rand(1000000000,9999999999);
	$name = trim($_POST['custName']);
	$email = $_POST['custMail'];
	$dienthoai = trim($_POST['custPhone']);
	
	$custGender = trim($_POST['custGender']);
	$ma_nganhang = trim($_POST['bankCode']);
	$totalAmount = $row_detail['price'];
	
	$custAddress = 'Không có thông tin';
	$custDOB = '01/01/1988';
	$cancelURL = "http://{$domain}".$_SERVER['REQUEST_URI'];
	$redirectURL = "http://{$domain}/payment-info/{$mTransactionID}/";
	$errorURL = "http://{$domain}/payment-error/";
	
	if($tc->check_email($email)==false || strlen($ma_nganhang)<2) $error_form = '<div style="clear:both;height:1px"></div><p style="color:#F00; text-align:center; padding-top:20px">Vui lòng kiểm tra lại</p>';
	else{
		$resultMessage = 'Current order id: <strong>'.$mTransactionID.'</strong><br>';
		$aData = array
		(
			'mTransactionID' => $mTransactionID,
			'merchantCode' =>$merchantCode,
			'bankCode' =>$ma_nganhang,
			'totalAmount' =>$totalAmount,
			'clientIP' =>$clientIP,
			'custName' =>$name,
			'custAddress' =>$custAddress,
			'custGender' =>$custGender,
			'custDOB' =>$custDOB,
			'custPhone' =>$dienthoai,
			'custMail' =>$email,
			'description' => changeTitle($row_detail['name']),
			'cancelURL' => $cancelURL,
			'redirectURL' => $redirectURL,
			'errorURL' => $errorURL,
			'passcode' =>$passcode,
			'checksum' =>SHA1($mTransactionID + $merchantCode + $ma_nganhang + $totalAmount + $clientIP + $name + $custAddress + $custGender + $custDOB + $dienthoai + $email + $cancelURL + $redirectURL + $errorURL + $passcode + $secretKey),
			'addInfo' =>''
		);
		//print_r($aData);return true;
		$aConfig = array
		(
			'url'=>$createOrder,
			'key'=>$secretKey,
			'passcode'=>$passcode,
			'cancelURL' => 'merchantCancelURL', //fill cancelURL here
			'redirectURL' => 'merchantRedirectURL', //fill redirectURL here
			'errorURL' => 'merchantErrorURL', //fill errorURL here
		);
		//print_r($aConfig);
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
		
		/*insert database*/
		$expire_date = time() + 60*1*1*1;
		setcookie('error_thanhtoan',$result[1],$expire_date,"/","");
		
		$error = $result[0];
		$link_thanhtoan = $result[2];
		$tc->insert_khachhang($mTransactionID,$name,$custGender,$email,$dienthoai,$clientIP,'',$error,$ma_nganhang,$row_detail['id']);
		if($error==1) header("location:".$link_thanhtoan);
		else header("location:http://{$domain}/payment-error/{$error}.html");
	}
}
$mTransactionID = createUniqueOrderId($orderIdPrefix);
/*end thanh toan 123Pay*/

/*ngan luong*/
if(@$_POST['nlpayment']) {
	include('nganluong/config.php');	
	include('nganluong/include/NL_Checkoutv3.php');	
	$nlcheckout= new NL_CheckOutV3(MERCHANT_ID,MERCHANT_PASS,RECEIVER);
	
	 $array_items[0]= array('item_name1' => $row_detail['name'],
					 'item_quantity1' => 1,
					 'item_amount1' => $row_detail['price'],
					 'item_url1' => 'http://nganluong.vn/');
					 			 
	 $payment_method = 'VISA';
	 $bank_code = $_POST['bankCode'];
	 $order_code = 'stevbros'.rand(1000000000,9999999999);;
	 $total_amount = $row_detail['price'];
	 $payment_type ='';
	 if($bank_code=='VISA') $discount_amount = $row_detail['price'] * 0.2; else $discount_amount = 0;
	 $order_description='';
	 $tax_amount=0;
	 $fee_shipping=0;
	 $return_url = "http://{$domain}/payment-info/{$order_code}/";
	 $cancel_url =urlencode("http://{$domain}/payment-error/") ;
	 
	
	 $buyer_fullname =$_POST['buyer_fullname'];
	 $buyer_email =$_POST['buyer_email'];
	 $buyer_mobile =$_POST['buyer_mobile'];
	 
	 $buyer_address ='';

	if($payment_method !='' && $buyer_email !="" && $buyer_mobile !="" && $buyer_fullname !="" && filter_var( $buyer_email, FILTER_VALIDATE_EMAIL )  ){
		/*insert database*/
		$expire_date = time() + 60*1*1*1;
		setcookie('error_thanhtoan',$result[1],$expire_date,"/","");
		
		$tc->insert_khachhang($order_code,$buyer_fullname,'U',$buyer_email,$buyer_mobile,$_SERVER['REMOTE_ADDR'],'','00',$bank_code,$row_detail['id']);
			
		if($payment_method == "VISA"){
		
			$nl_result= $nlcheckout->VisaCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
											  $fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									          $buyer_address,$array_items,$bank_code);
											  
		}elseif($payment_method =="NL"){
			$nl_result= $nlcheckout->NLCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
												$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
												$buyer_address,$array_items);
												
		}elseif($payment_method =="ATM_ONLINE" && $bank_code !='' ){
			$nl_result= $nlcheckout->BankCheckout($order_code,$total_amount,$bank_code,$payment_type,$order_description,$tax_amount,
												  $fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
												  $buyer_address,$array_items) ;
		}	
		if ($nl_result->error_code =='00'){

		//Cập nhât order với token  $nl_result->token để sử dụng check hoàn thành sau này
		
	//https://www.nganluong.vn/checkout.api.nganluong.post.php?cur_code=usd&function=SetExpressCheckout&version=3.1&merchant_id=24338&receiver_email=hoannet@gmail.com&merchant_password=f1bfd514f667cebd7595218b5a40d5b1&order_code=228&total_amount=0.1&payment_method=VISA&payment_type=&order_description=&tax_amount=0&fee_shipping=0&discount_amount=0&return_url=http://smiletouristvietnam.com/book/successpayment&cancel_url=http://smiletouristvietnam.com/book/successpayment&buyer_fullname=&buyer_email=&buyer_mobile=&buyer_address=&total_item=1&item_name1=228&item_quantity1=1&item_amount1=0.1&item_url1=http://nganluong.vn/
			$script = '<script type="text/javascript">
			<!--
			window.location = "'.(string)$nl_result->checkout_url.'&lang=en"
			//-->
			</script>';
		}else{
			$error_nganluong .= $nl_result->error_message;
		}
			
	}else{
		$error_nganluong .= '<h3 style="color:#F00">Please input your information into all fields!</h3>';
	}
 }		
/*end ngan luong*/

$img_nganhang_NL = '<div style="clear:both; color:#0080FF; font-size:115%; font-weight:bold; padding:10px 0">Thanh toán bằng thẻ Quốc tế: <span style="clear:both; font-style:italic; font-weight:bold; color:#F00; margin-bottom:10px">Stevbros đang giảm 20% cho khách hàng thanh toán bằng Visa phát hành tại Việt Nam</span></div>';
$ds_nganhang = $tc->ds_nganhang(1);
while($row_nh = mysql_fetch_array($ds_nganhang)){
	$img_nganhang_NL .= '<img src="'.url_danhmuc_image.$row_nh['url_hinh'].'" alt="'.$row_nh['name'].'" class="nganluong img_nganhang img_nganhang_'.$row_nh['manh'].'" />';
}

$img_nganhang_123Pay = '<div style="clear:both; color:#0080FF; font-size:115%; font-weight:bold; padding:30px 0 10px 0">Thanh toán bằng thẻ nội địa</div>
<div><p><em><strong>Các bạn thanh toán bằng thẻ nội địa lưu ý 2 lỗi thường gặp:</strong></em></p>
<li style="margin:10px 25px">1/ Cần <strong>đăng ký chức năng e-commerce</strong> cho thẻ ATM với ngân hàng phát hành thẻ trước khi giao dịch. Hiện nay, ngân hàng tại Việt Nam tách biệt chức năng e-commerce và chức năng internet banking. Nếu bạn đã đăng ký chức năng internet banking nhưng chưa đăng ký chức năng e-commerce thì vẫn chưa thanh toán qua mạng bằng thẻ ATM được.</li>
<li style="margin:10px 25px">2/ Khi giao dịch, các bạn vui lòng <strong>nhập số thẻ in trên thẻ</strong> chứ không phải số tài khoản.</li>
<li style="margin:15px 60px; font-weight:bold">Nếu việc thanh toán qua mạng gây bất tiện, các bạn có thể email về <a href="mailto:support@stevbros.com">support@stevbros.com</a> để yêu cầu thanh toán chuyển khoản.</li>
<p style="font-weight:bold">Vui lòng chọn ngân hàng:</p></div>';
$ds_nganhang = $tc->ds_nganhang(0);
while($row_nh = mysql_fetch_array($ds_nganhang)){
	$img_nganhang_123Pay .= '<img src="'.url_danhmuc_image.$row_nh['url_hinh'].'" alt="'.$row_nh['name'].'" class="123pay img_nganhang img_nganhang_'.$row_nh['manh'].'" />';
}

$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');

$view_post .= '
<div id="left"><div id="view_post">
	<h1>'.$row_detail['name'].'</h1>
	
	<div style="width:180px; float:left"><img width="180" src="'.url_danhmuc_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" />
	<p style="color:#F00; font-size:140%; text-align:center">Giá: <b>'.number_format($row_detail['price']).'đ</b></p></div>
	<div style="width:400px; float:right"><p style="margin-bottom:10px"><em style="text-decoration:underline">Chú ý:</em> Chi tiết đơn hàng của bạn và thông tin truy cập khoá học sẽ được gởi vào địa chỉ email do bạn cung cấp</p><p>Bạn vui lòng cung cấp số điện thoại để Stevbros hỗ trợ bạn nhanh chóng lúc cần thiết.</p>
	<p style="width:180px; height:28px; line-height:28px; font-weight:bold; background:url(images/chi-tiet-kh.png); text-align:center"><a href="'.$row_detail['link'].'" style="color:#FFF">Chi tiết khóa học</a></p></div>
	
	<div style="clear:both; font-weight:bold; font-size:130%; color:#008040; padding:25px 0 5px">Mời bạn chọn thẻ, sau đó điền thông tin bên dưới:</div>
	<div style="margin-left:25px">'.$img_nganhang_NL.$error_form.'</div>
	'.$error_nganluong.'
	<div id="nganluong" style="display:none; clear:both">
		'.$script.'
		<form  name="NLpayBank" action="" method="post" onsubmit="return KiemTra2()">
		<table width="100%" border="0" cellpadding="0" cellspacing="20" style="margin-top:10px">
			<tr>
				<td width="180" align="right">Họ Tên: </td>
				<td><input type="text" id="fullname" name="buyer_fullname" class="field-check txtthanhtoan" value=""></td>
			</tr>
			<tr>
				<td align="right">Email: </td>
				<td><input type="text" id="fullname" name="buyer_email" class="field-check txtthanhtoan" value=""></td>
			</tr>
			<tr>
				<td align="right">Số Điện thoại: </td>
				<td><input type="text" id="fullname" name="buyer_mobile" class="field-check txtthanhtoan" value=""></td>
			</tr>	
			<tr>
				<td>&nbsp;<input type="hidden" name="bankCode" value="" /></td>
				<td><input type="submit" name="nlpayment" value="Thanh toán" class="btnthanhtoan" /></td>
			</tr>					
		</table>
		</form>
	</div>
	
	<div style="clear:both; height:10px"></div>
	
	<div style="margin-left:25px">'.$img_nganhang_123Pay.$error_form.'</div>
	<div id="123pay" style="display:none">
		<form action="" method="post" name="thanhtoan" onsubmit="return KiemTra()">
	<table width="100%" border="0" cellpadding="0" cellspacing="20" style="margin-top:10px">
		<tr>
			<td style="font-weight:bold; text-align:right">Xưng hô:</td>
			<td><select name="custGender" class="txtthanhtoan">
				<option value="M">Anh</option>
				<option value="F">Chị</option>
			</select></td>
		</tr>
		<tr>
			<td style="font-weight:bold; text-align:right">Họ tên:</td>
			<td><input type="text" name="custName" value="" class="txtthanhtoan" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold; text-align:right"><font color="#F00">**</font> Email:</td>
			<td><input type="text" name="custMail" value="" class="txtthanhtoan" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold; text-align:right">Điện thoại:</td>
			<td>
				<input type="text" name="custPhone" value="" class="txtthanhtoan" />
			</td>
		</tr>
		<tr>
			<td>&nbsp;<input type="hidden" name="bankCode" value="" />
			<input type="hidden" name="id_sp" value="'.$row_detail['id'].'" /></td>
			<td><input type="submit" name="createOrder" value="Thanh toán" class="btnthanhtoan" /></td>
		</tr>
	</table></form>
	</div>
	
	
	
</div></div>
<hr />

<script type="text/javascript">
$(document).ready(function(){
	$(".img_nganhang").click(function(){
		var id = ($(this).attr("class")).split(" img_nganhang_");
		$(".img_nganhang").removeClass("img_nganhang_ac");
		$(this).addClass("img_nganhang_ac");
		$("input[name=bankCode]").val(id[1]);
	});
	$(".123pay").click(function(){
		$("#nganluong").hide(100);
		$("#123pay").show(100);
	});
	$(".nganluong").click(function(){
		$("#123pay").hide(100);
		$("#nganluong").show(100);
	});
});
</script>

<script language="javascript">
	function KiemTra() {
		myFrmObj = document.thanhtoan
		
		if(myFrmObj.custName.value == "") {
			window.alert("Nhập họ tên");
			myFrmObj.custName.focus("custName");
			return false;
		}
		else if(myFrmObj.custMail.value == "") {
			window.alert("Nhập email");
			myFrmObj.custMail.focus("custMail");
			return false;
		}
		else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myFrmObj.custMail.value))){
			window.alert("Email chưa đúng.");
			myFrmObj.custMail.focus("custMail");
			return false;
		}
		else if(myFrmObj.bankCode.value == "") {
			window.alert("Chọn ngân hàng");
			return false;
		}
		return true;
	}
	function KiemTra2() {
		myFrmObj = document.NLpayBank
		
		if(myFrmObj.buyer_fullname.value == "") {
			window.alert("Nhập họ tên");
			myFrmObj.buyer_fullname.focus("buyer_fullname");
			return false;
		}
		else if(myFrmObj.buyer_email.value == "") {
			window.alert("Nhập email");
			myFrmObj.buyer_email.focus("buyer_email");
			return false;
		}
		else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myFrmObj.buyer_email.value))){
			window.alert("Email chưa đúng");
			myFrmObj.buyer_email.focus("buyer_email");
			return false;
		}
		else if(myFrmObj.buyer_mobile.value.length < 10) {
			window.alert("Nhập số điện thoại");
			myFrmObj.buyer_mobile.focus("buyer_mobile");
			return false;
		}
		return true;
	}
</script>';