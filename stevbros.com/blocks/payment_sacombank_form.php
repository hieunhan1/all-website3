<?php
if(!isset($_SESSION['id_order'])) $_SESSION['id_order'] = 'stevbros'.date('dmHis').'_'.$row_detail['id'];

include_once('sacombank/security.php');		
$params = array();
$params['access_key'] = 'ef5c683f14613136aa2498f79d39a5c4';
$params['profile_id'] = 'stevbro';
$params['transaction_uuid'] = uniqid();
$params['signed_field_names'] = 'access_key,profile_id,transaction_uuid,signed_field_names,unsigned_field_names,signed_date_time,locale,transaction_type,reference_number,amount,currency';
$params['unsigned_field_names'] = '';
$params['signed_date_time'] = gmdate("Y-m-d\TH:i:s\Z");
$params['locale'] = 'en';
$params['transaction_type'] = 'sale';
$params['reference_number'] = $_SESSION['id_order'];
$params['amount'] = $row_detail['price'];
$params['currency'] = 'USD';
$params['submit'] = 'Submit';

$i=0;
foreach($_REQUEST as $name => $value) {
	$i++;
	if($i!=1) $params[$name] = $value;
}

$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'],'h3');

$thanhtoan = ob_start();
?>
<div id="left"><div id="view_post">
	<h1><?php echo $row_detail['name']; ?></h1>
	<div style="clear:both; height:30px"></div>

	<div id="nganluong">
		<table width="100%" border="0" cellpadding="0" cellspacing="20" style="margin-top:10px">
			<tr>
				<td width="180"><img width="180" src="<?php echo url_danhmuc_image.$row_detail['url_hinh']; ?>" alt="<?php echo $row_detail['name']; ?>" />
				<p style="color:#F00; font-size:140%; text-align:center">Price: <b><?php echo number_format($row_detail['price']); ?> USD</b></p></td>
				
				<td valign="top"><p style="margin-bottom:10px"><em style="text-decoration:underline">Please note:</em> Your order details & login credentials will be sent to this email address.</p>
				<p>Contact number is required to communicate the venue details of classroom trainings and for other support requirements.</p>
				<div id="sacombank">
                	<form action="https://testsecureacceptance.cybersource.com/pay" method="post" />
						<?php
                        foreach($params as $name => $value) {
							echo "<input type=\"hidden\" id=\"" . $name . "\" name=\"" . $name . "\" value=\"" . $value . "\"/>\n";
						}
						
                        echo "<input type=\"hidden\" id=\"signature\" name=\"signature\" value=\"" . sign($params) . "\"/>\n";
                        ?>
                        
                        <input type="submit" id="submit" name="submit" value="MAKE PAYMENT" style="width:180px; height:28px; line-height:28px; color:#FFF; font-weight:bold; margin-right:30px; border:none; background:url(images/chi-tiet-kh.png); text-align:center; cursor:pointer" />
                        <a href="javascript:;">Course details</a>
                    </form>
                </div>
                </td>
			</tr>		
		</table>
	</div>
</div></div>
<hr />
<?php
$thanhtoan = ob_get_clean();
$view_post .= $thanhtoan;
?>