<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
	
</style>

<?php	
if(@$_POST['nlpayment']) {
	include('config.php');	
	include('include/NL_Checkoutv3.php');	
	$nlcheckout= new NL_CheckOutV3(MERCHANT_ID,MERCHANT_PASS,RECEIVER);
	
	 $array_items[0]= array('item_name1' => 'Product name',
					 'item_quantity1' => 1,
					 'item_amount1' => 90000,
					 'item_url1' => 'http://nganluong.vn/');
					 
					 
	 $payment_method =$_POST['option_payment'];
	 $bank_code =$_POST['bankcode'];
	 $order_code ="macode_oerder123";
	 $total_amount=90000;
	 $payment_type ='';
	 $discount_amount =10000;
	 $order_description='';
	 $tax_amount=0;
	 $fee_shipping=5000;
	 $return_url ='http://localhost/testcode/nganluong.vn/checkoutv3/payment_success.php';
	 $cancel_url =urlencode('http://thanhtoanonline.vn/?portal=topupairtime&abc=23434') ;
	 
	
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
		
		//Cập nhât order với token  $nl_result->token để sử dụng check hoàn thành sau này
		
	//https://www.nganluong.vn/checkout.api.nganluong.post.php?cur_code=usd&function=SetExpressCheckout&version=3.1&merchant_id=24338&receiver_email=hoannet@gmail.com&merchant_password=f1bfd514f667cebd7595218b5a40d5b1&order_code=228&total_amount=0.1&payment_method=VISA&payment_type=&order_description=&tax_amount=0&fee_shipping=0&discount_amount=0&return_url=http://smiletouristvietnam.com/book/successpayment&cancel_url=http://smiletouristvietnam.com/book/successpayment&buyer_fullname=&buyer_email=&buyer_mobile=&buyer_address=&total_item=1&item_name1=228&item_quantity1=1&item_amount1=0.1&item_url1=http://nganluong.vn/
		?>
		<script type="text/javascript">
		<!--
		window.location = "<?php echo(string)$nl_result->checkout_url.'&lang=en'; ?>"
		//-->
		</script>
		<?PHP
		}else{
			echo $nl_result->error_message;
		}
			
	}else{
		echo "<h3> Bạn chưa nhập đủ thông tin khách hàng </h3>";
	}
 }				
	
?>
<form  name="NLpayBank" action="#" method="post">		
<ul class="list-content">
    <li>
        <label><input type="radio" value="VISA" name="option_payment" selected="true">Thanh toán bằng thẻ Visa hoặc MasterCard</label>
        <div class="boxContent">
            <p><span style="color:#ff5a00;font-weight:bold;text-decoration:underline;">Lưu ý</span>: Dùng thẻ do các ngân hàng trong nước phát hành.</p>
            
        </div>
    </li>
</ul>
<table style="clear:both;width:500px;padding-left:46px;"> 
    <tr><td colspan="2"><span style="color:#ff5a00;font-weight:bold;text-decoration:underline;">Lưu ý</span> Bạn nhập đầy đủ thông tin sau </td></tr>
    <tr>
        <td>Họ Tên: </td>
        <td><input type="text" style="width:270px" id="fullname" name="buyer_fullname" class="field-check " value=""></td>
    </tr>
    <tr>
        <td>Email: </td>
        <td><input type="text" style="width:270px" id="fullname" name="buyer_email" class="field-check " value=""></td>
    </tr>
    <tr>
        <td>Số Điện thoại: </td>
        <td><input type="text" style="width:270px" id="fullname" name="buyer_mobile" class="field-check " value=""></td>
    </tr>	
    <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="nlpayment" value="thanh toán"/></td>
    </tr>					
</table>
</form>	
<script src="https://www.nganluong.vn/webskins/javascripts/jquery_min.js" type="text/javascript"></script>		
<script language="javascript">
    $('input[name="option_payment"]').bind('click', function() {
    $('.list-content li').removeClass('active');
    $(this).parent().parent('li').addClass('active');
    });		
</script>