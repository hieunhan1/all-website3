<?php
include_once('../class/class.trangchu.php');
$tc = new trangchu();

$ip_address = $_SERVER['REMOTE_ADDR'];
$group_event = 3; //noel 2014

function _change_dau_nhay($str){
	$str = str_replace("'",'&#39;',$str);
	return $str;
}

function body_mail($name){
	$str = '<div style="line-height:22px">
	<p>Chào bạn: <b>'.$name.'</b></p>
	<p>Trường dạy nghề ẩm thực Netspace gửi bạn đáp án cuộc thi “VUI GIÁNG SINH – RINH QUÀ CÙNG NETSPACE”. Mời bạn xem danh sách đoạt giải &nbsp; <a href="https://www.facebook.com/truong.day.am.thuc.netspace"><b>tại đây</b></a>.</p>
    <p>Nhân dịp năm mới sắp đến, Trường dạy nghề ẩm thực NetSpace chúc bạn và gia đình một năm mới hạnh phúc, an khang!</p>
	<p>Cám ơn sự ủng hộ nhiệt tình của các bạn thí sinh tham dự cuộc thi.</p>
	<p>Trân trọng!</p>
</div>';
	return $str;
}

if(isset($_POST['thongtincanhan'])){
	$name	= _change_dau_nhay(trim($_POST['name']));
	$gender	= _change_dau_nhay(trim($_POST['gender']));
	$phone	= _change_dau_nhay(trim($_POST['phone']));
	$email	= _change_dau_nhay(trim($_POST['email']));
	$address= _change_dau_nhay(trim($_POST['address']));
	$date_start = time();
	
	if($name!='' && $gender!='' && $phone!='' && $email!='' && $address!=''){
		$date_current = date('Y-m-d H:i:s');
		$sql = "INSERT INTO `web_event` (`name`,`gender`,`phone`,`email`,`address`,`ip_address`,`date_start`,`date_create`,`group_event`) VALUES ('{$name}','{$gender}','{$phone}','{$email}','{$address}','{$ip_address}','{$date_start}','{$date_current}','{$group_event}')";
		$qr_kt = mysql_query("SELECT `id` FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
		$total = mysql_num_rows($qr_kt);
		if($total==0){
			mysql_query($sql);
			echo 1;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
}

if(isset($_POST['getname'])){
	$qr = mysql_query("SELECT `name` FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
	$row = mysql_fetch_array($qr);
	$name = explode(' ', $row['name']);
	$total = count($name);
	echo $name[$total-2].' '.$name[$total-1];
}
if(isset($_POST['img_monan'])){
	$arr_monan = rand(1,10);
	$qr = mysql_query("SELECT `img_monan` FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
	$row = mysql_fetch_array($qr);
	if($row['img_monan']==''){
		mysql_query("UPDATE `web_event` SET `img_monan`='{$arr_monan}' WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
		echo '<img src="monan/'.$arr_monan.'.jpg" alt="mon an" />';
	}else{
		echo '<img src="monan/'.$row['img_monan'].'.jpg" alt="mon an" />';
	}
}
if(isset($_POST['answer'])){
	$answer1 = _change_dau_nhay(trim($_POST['answer1']));
	$answer2 = _change_dau_nhay(trim($_POST['answer2']));
	$answer3 = _change_dau_nhay(trim($_POST['answer3']));
	
	$qr = mysql_query("SELECT * FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
	$row = mysql_fetch_array($qr);
	if($answer1!='' && $answer2!='' && $answer3!=''){
		$date_end = time();
		$sql = "UPDATE `web_event` SET `answer_1`='{$answer1}', `answer_2`='{$answer2}', `answer_3`='{$answer3}', `date_end`='{$date_end}' WHERE ip_address='{$ip_address}' AND `group_event`='{$group_event}'";

		if(mysql_query($sql)){
			echo '1'; return true;
		}else{
			echo 'Vui lòng kiểm tra lại'; return false;
		}
	}else{
		echo 'Vui lòng trả lời tên món ăn, nguyên liệu, cách chế biến'; return false;
	}
}

if(isset($_POST['succeed'])){
	$qr = mysql_query("SELECT * FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}' ");
	$row = mysql_fetch_array($qr);
	$datetime = $row['date_end'] - $row['date_start'];
	echo date('i:s', $datetime);
}

if(isset($_POST['send_mail'])){
	$id = trim(_change_dau_nhay($_POST['send_mail']));
	$name_nhan = trim(_change_dau_nhay($_POST['name']));
	$email_nhan= trim(_change_dau_nhay($_POST['email']));
	
	mysql_query("UPDATE `web_event` SET `send_mail`='1' WHERE `id`='{$id}' ");
	
	$body = body_mail(strtoupper($name_nhan));
	include('../sendmail_smtp/send_event.php');
}
?>