<?php
$lang = 'vi';
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $message!=''){
		if($tc->insert_contact($name,$email,$message)){
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

if($_POST['register']=='register'){
	$name = trim($_POST['name']);
	$phone = trim($_POST['phone']);
	$email = trim($_POST['email']);
	$khoahoc = trim($_POST['nhucauhoc']);
	
	if($name!='' && $email!='' && $phone!='' && $khoahoc!=''){
		if($tc->insert_register($name,$phone,$email,$khoahoc)){
			echo '1';
			return true;
		}else{
			echo '0';
			return false;
		}
	}else{
		echo '2';
		return false;
	}
}

if($_POST['checks_support']=='checks_support'){
	$array_yahoo	= explode(',',$row_config['yahoo_nick']); //array('hieu_nhan1','hieu_nhan111');
	$array_name		= explode(',',$row_config['yahoo_name']); //array('Trần Ngọc Phú','Nguyễn Trọng Thắng');
	$array_phone	= explode(',',$row_config['yahoo_phone']); //array('090 387 65 67','091 939 23 43');
	
	for($i = 0; $i < count($array_yahoo); $i++){
		$content = file_get_contents('http://opi.yahoo.com/online?u='.$array_yahoo[$i].'&m=t');
		if( preg_match('/NOT ONLINE$/', $content) ) {
			$str_yahoo .= '<tr>
				<td><a href="ymsgr:sendIM?'.$array_yahoo[$i].'"><img src="images/yahoo_off.png" alt="'.$array_name[$i].'" /></a></td>
				<td><a href="ymsgr:sendIM?'.$array_yahoo[$i].'">'.$array_name[$i].'</a></td>
				<td align="right">'.$array_phone[$i].'</td>
			</tr>';
		} else {
			$str_yahoo .= '<tr>
				<td><a href="ymsgr:sendIM?'.$array_yahoo[$i].'"><img src="images/yahoo_on.png" alt="'.$array_name[$i].'" /></a></td>
				<td><a href="ymsgr:sendIM?'.$array_yahoo[$i].'">'.$array_name[$i].'</a></td>
				<td align="right">'.$array_phone[$i].'</td>
			</tr>';
		}
	}
	
	
	echo '<table width="100%" border="0" cellpadding="0" cellspacing="0">
		'.$str_yahoo.'
		
		<tr>
			<td colspan="3">
				<p style="font-size:180%; color:#DC0100; text-align:center">HOTLINE</p>
				<p style="font-size:160%; color:#666666; text-align:center">'.$row_config['hotline'].'</p>
			</td>
		</tr>
	</table>';
}


mysql_close();
return true;