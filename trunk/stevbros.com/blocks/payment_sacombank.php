<?php
if($danhmuc=='payment-sacombank' && $dt!='') include_once('blocks/payment_form.php');
elseif($danhmuc=='payment-sacombank-info') include_once('blocks/payment_info.php');
elseif($danhmuc=='payment-sacombank-error') include_once('blocks/payment_error.php');
else include_once('blocks/payment_sacombank_list.php');

include_once('blocks/right.php');

$view_post .= $view_right.'<div style="clear:both; height:30px"></div>';