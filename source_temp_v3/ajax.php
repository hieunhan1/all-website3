<?php
$lang = 'vi';

include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			include_once('sendmail/sendmail.php');
			return true;
		}else{
			echo '0';
			return false;
		}
	}else{
		echo '0';
		return false;
	}
}

if($_POST['support_online']=='support_online'){
	$i = 0;
	$qr = $tc->chinhanh_ds();
	$name_chinhanh = '';
	$info_chinhanh = '';
	while($row = mysql_fetch_array($qr)){
		$i++;
		if($i != 1) $style = ''; else $style = ' ds_chinhanh_item_active';
		$name_chinhanh .= '<div class="ds_chinhanh_item ds_support_'.$i.$style.'">'.$row['name'].'</div>';
		
		$support_chinhanh .= '<div id="ds_support" class="ds_support ds_support_'.$i.'">';
		$yahoo_nick = explode(',', $row['yahoo_nick']);
		$yahoo_name = explode(',', $row['yahoo_name']);
		for($j=0; $j<count($yahoo_nick); $j++){
			$content = file_get_contents('http://opi.yahoo.com/online?u='.$yahoo_nick[$j].'&m=t');
			if( preg_match('/NOT ONLINE$/', $content) ) $image_support = 'yahoo_off.png'; else $image_support = 'yahoo_on.png';
			
			$support_chinhanh .= '<div class="ds_support_item"><a href="ymsgr:sendIM?'.$yahoo_nick[$j].'">'.$yahoo_name[$j].'<img src="images/'.$image_support.'" alt="yahoo_on" /></a></div>';
		}
		$support_chinhanh .= '</div>';
		
		$hotline_chinhanh .= '<div id="support_hotline" class="ds_support ds_support_'.$i.'">Hotline: <span style="color:#F00">'.$row['hotline'].'</span></div>';
	}
	echo '<div id="ds_chinhanh">'.$name_chinhanh.'</div>'.$support_chinhanh.$hotline_chinhanh.'
	<script>
	$(document).ready(function($){
		$(".ds_support").hide();
		$(".ds_support_1").show();
	});
	</script>';
}

mysql_close();
return true;