<?php
$_SESSION['id_order'] = 'stevbros'.date('dmHis').'_'.$row_detail['id'];

$merchant_name = 'stevbrosvn';
$device_fingerprint_id = 'stevbrosvn_dev';

include_once('sacombank/security.php');
$params = array();
$params['access_key'] = '11b6059c386e35c69c4af69dd3dd79a8';
$params['profile_id'] = 'stevbro';
$params['transaction_uuid'] = uniqid();
$params['signed_field_names'] = 'access_key,profile_id,transaction_uuid,signed_field_names,unsigned_field_names,signed_date_time,locale,transaction_type,reference_number,amount,currency,device_fingerprint_id,customer_ip_address';
$params['unsigned_field_names'] = '';
$params['signed_date_time'] = gmdate("Y-m-d\TH:i:s\Z");
$params['locale'] = 'en';
$params['transaction_type'] = 'sale';
$params['reference_number'] = $_SESSION['id_order'];
$params['amount'] = $row_detail['price'];
$params['currency'] = 'USD';
$params['submit'] = 'Submit';
$params['device_fingerprint_id'] = $_SESSION['id_order'];
$params['customer_ip_address'] = $_SERVER['REMOTE_ADDR'];
//$params['id_khoahoc'] = $row_detail['id'];

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
				<td width="180">
                	<img width="180" src="<?php echo url_danhmuc_image.$row_detail['url_hinh']; ?>" alt="<?php echo $row_detail['name']; ?>" />
					<p style="color:#F00; font-size:140%; text-align:center">Price: <b><?php echo number_format($row_detail['price']); ?> USD</b></p>
                </td>
				<td valign="top">
                	<div style="padding-bottom:20px">
                    	<p style="font-size:140%; font-weight:bold; color:#0380FC">We accept the following international cards</p>
                        <img src="public/images/catalog/master.png" width="80" alt="master" />
                        <img src="public/images/catalog/visa.png" width="80" alt="visa" />
                        <img src="public/images/catalog/jcb.png" width="80" alt="jcb" />
                    </div>
                    <div id="sacombank">
                        <form action="https://secureacceptance.cybersource.com/pay" method="post">
                            <?php
                            foreach($params as $name => $value) {
                                echo "<input type=\"hidden\" id=\"" . $name . "\" name=\"" . $name . "\" value=\"" . $value . "\"/>\n";
                            }
                            
                            echo "<input type=\"hidden\" id=\"signature\" name=\"signature\" value=\"" . sign($params) . "\"/>\n";
                            ?>
                            
                            <input type="submit" id="submit" name="submit" value="MAKE PAYMENT" style="width:244px; height:38px; line-height:38px; color:#FFF; font-size:120%; font-weight:bold; margin-right:30px; border:none; background:url(images/chi-tiet-kh.png) no-repeat; cursor:pointer" />
                            <a href="<?php echo $row_detail['link'];?>">Course details</a>
                        </form>
                    </div>
                </td>
			</tr>		
		</table>
	</div>
    <p style="background:url(https://h.online-metrix.net/fp/clear.png?org_id=k8vif92e&session_id=<?php echo $merchant_name.$_SESSION['id_order'];?>&m=1)"></p>
	<img src="https://h.online-metrix.net/fp/clear.png?org_id=k8vif92e&session_id=<?php echo $merchant_name.$_SESSION['id_order'];?>&m=2" alt="" />
    <object type="application/x-shockwave-flash" data="https://h.online-metrix.net/fp/fp.swf?org_id=k8vif92e&session_id=<?php echo $merchant_name.$_SESSION['id_order'];?>" width="1" height="1" id="thm_fp"> 
    	<param name="movie" value="https://h.online-metrix.net/fp/fp.swf?org_id=k8vif92e&session_id=<?php echo $merchant_name.$_SESSION['id_order'];?>" />
    </object>
	<script src="https://h.online-metrix.net/fp/check.js?org_id=k8vif92e&session_id=<?php echo $merchant_name.$_SESSION['id_order'];?>" type="text/javascript"></script>
</div></div>

<?php
$thanhtoan = ob_get_clean();
$view_post .= $thanhtoan;
?>