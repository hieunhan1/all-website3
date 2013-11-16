<?php
  class Config
  {  
	public static $_VERSION="3.1";
	public static $_FUNCTION ="SetExpressCheckout";
	public static $_URL_SERVICE ="https://www.nganluong.vn/checkout.api.nganluong.post.php";
  }
  
  
  class NL_CheckOutV3
  {
	          
			public $merchant_id = '';
			public $merchant_password = '';
			public $receiver_email = '';
			public $cur_code = 'vnd';
	

			function __construct($merchant_id, $merchant_password, $receiver_email)
			{
				$this->merchant_id = $merchant_id;
				$this->merchant_password = $merchant_password;
				$this->receiver_email = $receiver_email;				
			}	
			
		  function GetTransactionDetail($token){	
				###################### BEGIN #####################
						$params = array(
							'merchant_id'       => $this->merchant_id ,
							'merchant_password' => MD5($this->merchant_password),
							'version'           => Config::$_VERSION,
							'function'          => 'GetTransactionDetail',
							'token'             => $token
						);						
						$api_url = Config::$_URL_SERVICE;
						$post_field = '';
						foreach ($params as $key => $value){
							if ($post_field != '') $post_field .= '&';
							$post_field .= $key."=".$value;
						}
						$ch = curl_init();
						curl_setopt($ch, CURLOPT_URL,$api_url);
						curl_setopt($ch, CURLOPT_ENCODING , 'UTF-8');
						curl_setopt($ch, CURLOPT_VERBOSE, 1);
						curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
						curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
						curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
						curl_setopt($ch, CURLOPT_POST, 1);
						curl_setopt($ch, CURLOPT_POSTFIELDS, $post_field);
						$result = curl_exec($ch);
						$status = curl_getinfo($ch, CURLINFO_HTTP_CODE); 
						$error = curl_error($ch);
						
						if ($result != '' && $status==200){
							$nl_result  = simplexml_load_string($result);						
							return $nl_result;
						}
						
						return false;
				###################### END #####################
		  
		  }	
		  
		  
		/*

		Hàm lấy link thanh toán bằng thẻ visa
		===============================
		Tham số truyền vào bắt buộc phải có
					order_code
					total_amount
					payment_method

					buyer_fullname
					buyer_email
					buyer_mobile
		===============================			
			$array_items mảng danh sách các item name theo quy tắc 
			item_name1
			item_quantity1
			item_amount1
			item_url1
			.....
			payment_type Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
		 */			
		function VisaCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
									$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									$buyer_address,$array_items) 
				{
				 $params = array(
						'cur_code'			=>	$this->cur_code,
						'function'				=> Config::$_FUNCTION,
						'version'				=> Config::$_VERSION,
						'merchant_id'			=> $this->merchant_id, //Mã merchant khai báo tại NganLuong.vn
						'receiver_email'		=> $this->receiver_email,
						'merchant_password'		=> MD5($this->merchant_password), //MD5(Mật khẩu kết nối giữa merchant và NganLuong.vn)						
						'order_code'			=> $order_code, //Mã hóa đơn do website bán hàng sinh ra
						'total_amount'			=> $total_amount, //Tổng số tiền của hóa đơn
						'payment_method'		=> 'VISA', //Phương thức thanh toán, nhận một trong các giá trị 'VISA','ATM_ONLINE', 'ATM_OFFLINE' hoặc 'NH_OFFLINE'												
						'payment_type'			=> $payment_type, //Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
						'order_description'		=> $order_description, //Mô tả đơn hàng
						'tax_amount'			=> $tax_amount, //Tổng số tiền thuế
						'fee_shipping'			=> $fee_shipping, //Phí vận chuyển
						'discount_amount'		=> $discount_amount, //Số tiền giảm giá
						'return_url'			=> $return_url, //Địa chỉ website nhận thông báo giao dịch thành công
						'cancel_url'			=> $cancel_url, //Địa chỉ website nhận "Hủy giao dịch"
						'buyer_fullname'		=> $buyer_fullname, //Tên người mua hàng
						'buyer_email'			=> $buyer_email, //Địa chỉ Email người mua
						'buyer_mobile'			=> $buyer_mobile, //Điện thoại người mua
						'buyer_address'			=> $buyer_address, //Địa chỉ người mua hàng
						'total_item'			=> count($array_items)
					);
					$post_field = '';
					foreach ($params as $key => $value){
						if ($post_field != '') $post_field .= '&';
						$post_field .= $key."=".$value;
					}
					if(count($array_items)>0){
					 foreach($array_items as $array_item){
						foreach ($array_item as $key => $value){
							if ($post_field != '') $post_field .= '&';
							$post_field .= $key."=".$value;
						}
					}
					}
					//	die($post_field);
					
				$nl_result=$this->CheckoutCall($post_field);
				return $nl_result;
		    }
	
		/*
		Hàm lấy link thanh toán qua ngân hàng
		===============================
		Tham số truyền vào bắt buộc phải có
					order_code
					total_amount			
					bank_code // Theo bảng mã ngân hàng
					
					buyer_fullname
					buyer_email
					buyer_mobile
		===============================	
			
			$array_items mảng danh sách các item name theo quy tắc 
			item_name1
			item_quantity1
			item_amount1
			item_url1
			.....			
			payment_type Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn

		*/			  
		function BankCheckout($order_code,$total_amount,$bank_code,$payment_type,$order_description,$tax_amount,
									$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									$buyer_address,$array_items) 
		   {
				 $params = array(
						'cur_code'			=>	$this->cur_code,
						'function'				=> Config::$_FUNCTION,
						'version'				=> Config::$_VERSION,
						'merchant_id'			=> $this->merchant_id, //Mã merchant khai báo tại NganLuong.vn
						'receiver_email'		=> $this->receiver_email,
						'merchant_password'		=> MD5($this->merchant_password), //MD5(Mật khẩu kết nối giữa merchant và NganLuong.vn)						
						'order_code'			=> $order_code, //Mã hóa đơn do website bán hàng sinh ra
						'total_amount'			=> $total_amount, //Tổng số tiền của hóa đơn						
						'payment_method'		=> 'ATM_ONLINE', //Phương thức thanh toán, nhận một trong các giá trị 'ATM_ONLINE', 'ATM_OFFLINE' hoặc 'NH_OFFLINE'
						'bank_code'				=> $bank_code, //Mã Ngân hàng
						'payment_type'			=> $payment_type, //Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
						'order_description'		=> $order_description, //Mô tả đơn hàng
						'tax_amount'			=> $tax_amount, //Tổng số tiền thuế
						'fee_shipping'			=> $fee_shipping, //Phí vận chuyển
						'discount_amount'		=> $discount_amount, //Số tiền giảm giá
						'return_url'			=> $return_url, //Địa chỉ website nhận thông báo giao dịch thành công
						'cancel_url'			=> $cancel_url, //Địa chỉ website nhận "Hủy giao dịch"
						'buyer_fullname'		=> $buyer_fullname, //Tên người mua hàng
						'buyer_email'			=> $buyer_email, //Địa chỉ Email người mua
						'buyer_mobile'			=> $buyer_mobile, //Điện thoại người mua
						'buyer_address'			=> $buyer_address, //Địa chỉ người mua hàng
						'total_item'			=> count($array_items)
					);
					
					$post_field = '';
					foreach ($params as $key => $value){
						if ($post_field != '') $post_field .= '&';
						$post_field .= $key."=".$value;
					}
					if(count($array_items)>0){
					 foreach($array_items as $array_item){
						foreach ($array_item as $key => $value){
							if ($post_field != '') $post_field .= '&';
							$post_field .= $key."=".$value;
						}
					}
					}
				//$post_field="function=SetExpressCheckout&version=3.1&merchant_id=24338&receiver_email=payment@hellochao.com&merchant_password=5b39df2b8f3275d1c8d1ea982b51b775&order_code=macode_oerder123&total_amount=2000&payment_method=ATM_ONLINE&bank_code=ICB&payment_type=&order_description=&tax_amount=0&fee_shipping=0&discount_amount=0&return_url=http://localhost/testcode/nganluong.vn/checkoutv3/payment_success.php&cancel_url=http://nganluong.vn&buyer_fullname=Test&buyer_email=saritvn@gmail.com&buyer_mobile=0909224002&buyer_address=&total_item=1&item_name1=Product name&item_quantity1=1&item_amount1=2000&item_url1=http://nganluong.vn/"	;
				
				$nl_result=$this->CheckoutCall($post_field);
				return $nl_result;
		    }
			
		

			/*

			Hàm lấy link thanh toán tại văn phòng ngân lượng

			===============================
			Tham số truyền vào bắt buộc phải có
						order_code
						total_amount			
						bank_code // HN hoặc HCM
						
						buyer_fullname
						buyer_email
						buyer_mobile
			===============================	
				
				$array_items mảng danh sách các item name theo quy tắc 
				item_name1
				item_quantity1
				item_amount1
				item_url1
				.....			
				payment_type Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn

			*/			  
		 function TTVPCheckout($order_code,$total_amount,$bank_code,$payment_type,$order_description,$tax_amount,
									$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									$buyer_address,$array_items) 
		   {
				 $params = array(
						'cur_code'			=>	$this->cur_code,
						'function'				=> Config::$_FUNCTION,
						'version'				=> Config::$_VERSION,
						'merchant_id'			=> $this->merchant_id, //Mã merchant khai báo tại NganLuong.vn
						'receiver_email'		=> $this->receiver_email,
						'merchant_password'		=> MD5($this->merchant_password), //MD5(Mật khẩu kết nối giữa merchant và NganLuong.vn)						
						'order_code'			=> $order_code, //Mã hóa đơn do website bán hàng sinh ra
						'total_amount'			=> $total_amount, //Tổng số tiền của hóa đơn						
						'payment_method'		=> 'ATM_ONLINE', //Phương thức thanh toán, nhận một trong các giá trị 'ATM_ONLINE', 'ATM_OFFLINE' hoặc 'NH_OFFLINE'
						'bank_code'				=> $bank_code, //Mã Ngân hàng
						'payment_type'			=> $payment_type, //Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
						'order_description'		=> $order_description, //Mô tả đơn hàng
						'tax_amount'			=> $tax_amount, //Tổng số tiền thuế
						'fee_shipping'			=> $fee_shipping, //Phí vận chuyển
						'discount_amount'		=> $discount_amount, //Số tiền giảm giá
						'return_url'			=> $return_url, //Địa chỉ website nhận thông báo giao dịch thành công
						'cancel_url'			=> $cancel_url, //Địa chỉ website nhận "Hủy giao dịch"
						'buyer_fullname'		=> $buyer_fullname, //Tên người mua hàng
						'buyer_email'			=> $buyer_email, //Địa chỉ Email người mua
						'buyer_mobile'			=> $buyer_mobile, //Điện thoại người mua
						'buyer_address'			=> $buyer_address, //Địa chỉ người mua hàng
						'total_item'			=> count($array_items)
					);
					
					$post_field = '';
					foreach ($params as $key => $value){
						if ($post_field != '') $post_field .= '&';
						$post_field .= $key."=".$value;
					}
					if(count($array_items)>0){
					 foreach($array_items as $array_item){
						foreach ($array_item as $key => $value){
							if ($post_field != '') $post_field .= '&';
							$post_field .= $key."=".$value;
						}
					}
					}
					
				$nl_result=$this->CheckoutCall($post_field);
				return $nl_result;
		    }
			
			/*

			Hàm lấy link thanh toán dùng số dư ví ngân lượng
			===============================
			Tham số truyền vào bắt buộc phải có
						order_code
						total_amount
						payment_method

						buyer_fullname
						buyer_email
						buyer_mobile
			===============================			
				$array_items mảng danh sách các item name theo quy tắc 
				item_name1
				item_quantity1
				item_amount1
				item_url1
				.....

				payment_type Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
			 */			
		function NLCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
									$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile, 
									$buyer_address,$array_items) 
				{
				 $params = array(
						'cur_code'			=>$this->cur_code,
						'function'				=> Config::$_FUNCTION,
						'version'				=> Config::$_VERSION,
						'merchant_id'			=> $this->merchant_id, //Mã merchant khai báo tại NganLuong.vn
						'receiver_email'		=> $this->receiver_email,
						'merchant_password'		=> MD5($this->merchant_password), //MD5(Mật khẩu kết nối giữa merchant và NganLuong.vn)						
						'order_code'			=> $order_code, //Mã hóa đơn do website bán hàng sinh ra
						'total_amount'			=> $total_amount, //Tổng số tiền của hóa đơn						
						'payment_method'		=> 'NL', //Phương thức thanh toán
						'payment_type'			=> $payment_type, //Kiểu giao dịch: 1 - Ngay; 2 - Tạm giữ; Nếu không truyền hoặc bằng rỗng thì lấy theo chính sách của NganLuong.vn
						'order_description'		=> $order_description, //Mô tả đơn hàng
						'tax_amount'			=> $tax_amount, //Tổng số tiền thuế
						'fee_shipping'			=> $fee_shipping, //Phí vận chuyển
						'discount_amount'		=> $discount_amount, //Số tiền giảm giá
						'return_url'			=> $return_url, //Địa chỉ website nhận thông báo giao dịch thành công
						'cancel_url'			=> $cancel_url, //Địa chỉ website nhận "Hủy giao dịch"
						'buyer_fullname'		=> $buyer_fullname, //Tên người mua hàng
						'buyer_email'			=> $buyer_email, //Địa chỉ Email người mua
						'buyer_mobile'			=> $buyer_mobile, //Điện thoại người mua
						'buyer_address'			=> $buyer_address, //Địa chỉ người mua hàng
						'total_item'			=> count($array_items) //Tổng số sản phẩm trong đơn hàng
					);
					$post_field = '';
					foreach ($params as $key => $value){
						if ($post_field != '') $post_field .= '&';
						$post_field .= $key."=".$value;
					}
					if(count($array_items)>0){
					 foreach($array_items as $array_item){
						foreach ($array_item as $key => $value){
							if ($post_field != '') $post_field .= '&';
							$post_field .= $key."=".$value;
						}
					}
					}
					
				//die($post_field);
				$nl_result=$this->CheckoutCall($post_field);
				return $nl_result;
		    }
				
				
			
	function CheckoutCall($post_field){
			
				$api_url = Config::$_URL_SERVICE;
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL,$api_url);
				curl_setopt($ch, CURLOPT_ENCODING , 'UTF-8');
				curl_setopt($ch, CURLOPT_VERBOSE, 1);
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
				curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_POST, 1);
				curl_setopt($ch, CURLOPT_POSTFIELDS, $post_field);
				$result = curl_exec($ch);
				$status = curl_getinfo($ch, CURLINFO_HTTP_CODE); 
				$error = curl_error($ch);
				
				if ($result != '' && $status==200){						
					$xml_result = str_replace('&','&amp;',(string)$result);
					$nl_result  = simplexml_load_string($xml_result);					
					$nl_result->error_message = $this->GetErrorMessage($nl_result->error_code);										
				}
				else $nl_result->error_message = $error;
				return $nl_result;
			
			}
			
	function GetErrorMessage($error_code) {
				$arrCode = array(
				'00'=>  'Không có lỗi',
				'99'=>  'Lỗi không được định nghĩa hoặc không rõ nguyên nhân',
				'01'=>  'Lỗi tại NgânLượng.vn nên không sinh được phiếu thu hoặc giao dịch',
				'02'=>  'Địa chỉ IP của merchant gọi tới NganLuong.vn không được chấp nhận',
				'03'=>  'Sai tham số gửi tới NganLuong.vn (có tham số sai tên hoặc kiểu dữ liệu)',
				'04'=>  'Tên hàm API do merchant gọi tới không hợp lệ (không tồn tại)',
				'05'=>  'Sai version của API',
				'06'=>  'Mã merchant không tồn tại hoặc chưa được kích hoạt',
				'07'=>  'Sai mật khẩu của merchant',
				'08'=>  'Tài khoản người bán hàng không tồn tại',
				'09'=>  'Tài khoản người nhận tiền đang bị phong tỏa',
				'10'=>  'Hóa đơn thanh toán không hợp lệ',
				'11'=>  'Số tiền thanh toán không hợp lệ',
				'12'=>  'Đơn vị tiền tệ không hợp lệ',
				'13'=>  'Sai số lượng sản phẩm',
				'14'=>  'Tên sản phẩm không hợp lệ',
				'15'=>  'Sai số lượng sản phẩm/hàng hóa trong chi tiết đơn hàng',
				'16'=>  'Số tiền trong chi tiết đơn hàng không hợp lệ',
				'17'=>  'Phương thức thanh toán không được hỗ trợ',
				'18'=>  'Tài khoản hoặc mật khẩu NL của người thanh toán không chính xác',
				'19'=>  'Tài khoản người thanh toán đang bị phong tỏa, không thể thực hiện giao dịch',
				'20'=>  'Số dư khả dụng của người thanh toán không đủ thực hiện giao dịch',
				'21'=>  'Giao dịch NL đã được thanh toán trước đó, không thể thực hiện lại',
				'22'=>  'Ngân hàng từ chối thanh toán (do thẻ/tài khoản ngân hàng bị khóa hoặc chưa đăng ký sử dụng dịch vụ IB)',
				'23'=>  'Lỗi kết nối tới hệ thống Ngân hàng (NH không trả lời yêu cầu thanh toán)',
				'24'=>  'Thẻ/tài khoản hết hạn sử dụng',
				'25'=>  'Thẻ/Tài khoản không đủ số dư để thanh toán',
				'26'=>  'Nhập sai tài khoản truy cập Internet-Banking',
				'27'=>  'Nhập sai OTP quá số lần quy định',
				'28'=>  'Lỗi phía Ngân hàng xử lý giao dịch thanh toán nhưng chưa rõ nguyên nhân hoặc lỗi này chưa được mô tả',
				'29'=>  'Mã token không tồn tại',
				'30'=>  'Giao dịch không tồn tại ');

				   return $arrCode[(string)$error_code];
			}
			
			
			
  }
?>