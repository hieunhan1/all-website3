<?php
/*thanh toan 123Pay*/
include '123Pay/rest.client.class.php';
include '123Pay/common.class.php';

$merchantCode = 'STEVBROSEDUVN';
$passcode = 'STEVBROSEDUVNhJuc67aJicaskcanHyajk';
$secretKey = 'STEVBROSEDUVNcfHycasnhuNJ45UcaI9i';

$createOrder = 'https://mi.123pay.vn/createOrder1';
$queryOrder = 'https://mi.123pay.vn/queryOrder1';

if($danhmuc=='payment' && $dt!='') include_once('blocks/payment_form.php');
elseif($danhmuc=='payment-info') include_once('blocks/payment_info.php');
elseif($danhmuc=='payment-error') include_once('blocks/payment_error.php');
else include_once('blocks/payment_list.php');

include_once('blocks/right.php');

$view_post .= $view_right.'<div style="clear:both; height:30px"></div>';