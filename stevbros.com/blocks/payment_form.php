<?php
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
	 $bank_code = $_POST['bankcode'];
	 $order_code = 'stevbros'.rand(1000000000,9999999999);;
	 $total_amount = $row_detail['price'];
	 $payment_type ='';
	 $discount_amount =0;
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
		if($payment_method =="VISA"){
		
			$nl_result= $nlcheckout->VisaCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
											  $fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									          $buyer_address,$array_items);
											  
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
			/*insert database*/
			$expire_date = time() + 60*1*1*1;
			setcookie('error_thanhtoan',$result[1],$expire_date,"/","");
			
			$tc->insert_khachhang($order_code,$buyer_fullname,$_POST['country'],'U',$buyer_email,$buyer_mobile,$_SERVER['REMOTE_ADDR'],'','00','TTQT',$row_detail['id']);
			
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



$img_nganhang = '<div style="clear:both; color:#0080FF; font-size:115%; font-weight:bold; padding:10px 0">We accept the following international cards</div>';
$ds_nganhang = $tc->ds_nganhang(1);
while($row_nh = mysql_fetch_array($ds_nganhang)){
	$img_nganhang .= '<img src="'.url_danhmuc_image.$row_nh['url_hinh'].'" alt="'.$row_nh['name'].'" class="img_nganhang img_nganhang_'.$row_nh['manh'].'" />';
}

/*$img_nganhang .= '<div style="clear:both; color:#0080FF; font-size:115%; font-weight:bold; padding:30px 0 10px 0">And the following cards of local banks in Vietnam</div>';
$ds_nganhang = $tc->ds_nganhang(0);
while($row_nh = mysql_fetch_array($ds_nganhang)){
	$img_nganhang .= '<img src="'.url_danhmuc_image.$row_nh['url_hinh'].'" alt="'.$row_nh['name'].'" class="img_nganhang img_nganhang_'.$row_nh['manh'].'" />';
}*/

$qr = mysql_query("SELECT * FROM countries");
while($row = mysql_fetch_array($qr)){
	$country .= '<option value="'.$row['ccode'].'">'.$row['country'].'</option>';
}

$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');
$view_post .= '
<div id="left"><div id="view_post">
	<h1>'.$row_detail['name'].'</h1>
	<div style="clear:both; height:30px"></div>

	<div id="nganluong">
		<form  name="NLpayBank" action="" method="post">
		<table width="100%" border="0" cellpadding="0" cellspacing="20" style="margin-top:10px">
			<tr>
				<td width="180"><img width="180" src="'.url_danhmuc_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" />
				<p style="color:#F00; font-size:140%; text-align:center">Price: <b>'.number_format($row_detail['price']).' USD</b></p></td>
				
				<td valign="top"><p style="margin-bottom:10px"><em style="text-decoration:underline">Please note:</em> Your order details & login credentials will be sent to this email address.</p>
				<p>Contact number is required to communicate the venue details of classroom trainings and for other support requirements.</p>
				<p style="width:180px; height:28px; line-height:28px; font-weight:bold; background:url(images/chi-tiet-kh.png); text-align:center"><a href="'.$row_detail['link'].'" style="color:#FFF">Course details</a></p></td>
			</tr>
			<tr><td colspan="2"><div>'.$img_nganhang.$error_form.$script.$error_nganluong.'</div></td></tr>
			<tr>
				<td align="right">Country: </td>
				<td><select name="country" class="txtthanhtoan">
					<option value="">-- Select --</option>'.$country.'
				</select></td>
			</tr>
			<tr>
				<td align="right">Name: </td>
				<td><input type="text" id="fullname" name="buyer_fullname" class="field-check txtthanhtoan" value=""></td>
			</tr>
			<tr>
				<td align="right">Email: </td>
				<td><input type="text" id="fullname" name="buyer_email" class="field-check txtthanhtoan" value=""></td>
			</tr>
			<tr>
				<td align="right">Phone: </td>
				<td><input type="text" id="fullname" name="buyer_mobile" class="field-check txtthanhtoan" value=""></td>
			</tr>	
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="nlpayment" value="Make payment" class="btnthanhtoan" /></td>
			</tr>					
		</table>
		</form>
	</div>
	
</div></div>
<hr />

<script type="text/javascript">
function KiemTra() {
	myFrmObj = document.NLpayBank
	
	if(myFrmObj.country.value == "") {
		window.alert("Select country");
		myFrmObj.country.focus("country");
		return false;
	}else if(myFrmObj.buyer_fullname.value == "") {
		window.alert("Input name");
		myFrmObj.buyer_fullname.focus("buyer_fullname");
		return false;
	}else if(myFrmObj.buyer_email.value == "") {
		window.alert("Input email");
		myFrmObj.buyer_email.focus("buyer_email");
		return false;
	}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myFrmObj.buyer_email.value))){
		window.alert("Wrong email address");
		myFrmObj.buyer_email.focus("buyer_email");
		return false;
	}else if(myFrmObj.buyer_mobile.value.length < 10) {
		window.alert("Input phone");
		myFrmObj.buyer_mobile.focus("buyer_mobile");
		return false;
	}
	return true;
}

$(document).ready(function(){
	$(".img_nganhang").click(function(){
		var id = ($(this).attr("class")).split(" img_nganhang_");
		$(".img_nganhang").removeClass("img_nganhang_ac");
		$(this).addClass("img_nganhang_ac");
		$("input[name=bankCode]").val(id[1]);
	});
	
	$("input[name=nlpayment]").click(function(){
		if(KiemTra()==false) return false;
		else setTimeout(function(){
			$(this).attr("disabled", true);
		},500);
	});
});
</script>';
