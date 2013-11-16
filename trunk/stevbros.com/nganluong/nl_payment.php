<?php	

	include('config.php');	
	include('include/NL_Checkoutv3.php');	
	$nlcheckout= new NL_CheckOutV3( MERCHANT_ID,MERCHANT_PASS,RECEIVER );
	
	 $payment_method =$_POST['option_payment'];
	 $bank_code =$_POST['bankcode'];
	 $order_code ="macode_oerder";
	 $total_amount=100000;
	 $payment_type =1;
	 $discount_amount =0;
	 $order_description='';
	 $tax_amount=0;
	 $fee_shipping=0;
	 $return_url ='http://nganluong.vn';
	 $cancel_url ='http://nganluong.vn';
	 $buyer_fullname ='';
	 $buyer_email ='';
	 $buyer_mobile ='';
	 $buyer_address ='';
	 $array_items[0]= array('item_name1' => 'Product name',
					 'item_quantity1' => 1,
					 'item_amount1' => 100000,
					 'item_url1' => 'http://nganluong.vn/');
	 
    if($payment_method =="VISA"){
		$nl_result= $nlcheckout->VisaCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
											  $fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									          $buyer_address,$array_items);
	}elseif($payment_method =="NL"){
		$nl_result= $nlcheckout->NLCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
											$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
											$buyer_address,$array_items);
	}elseif($payment_method =="ATM_ONLINE"){
		$nl_result= $nlcheckout->BankCheckout($order_code,$total_amount,$bank_code,$payment_type,$order_description,$tax_amount,
											  $fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
											  $buyer_address,$array_items) ;
	}	

if ($nl_result->error_code =='00'){
?>

<script type="text/javascript">
<!--
window.location = "<?php echo(string)$nl_result->checkout_url; ?>"
//-->
</script>
<?PHP
}else{
	die($nl_result->error_message);
}
?>

1 https://www.nganluong.vn/?portal=checkout&page=express3&token_code=1028334-3d3940efdda39fce451d769555b2a335

2 http://localhost/testcode/nganluong.vn/checkoutv3/payment_success.php?error_code=00&token=1028334-3d3940efdda39fce451d769555b2a335