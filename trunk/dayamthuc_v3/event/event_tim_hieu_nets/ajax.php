<?php
include_once('../class/class.trangchu.php');
$tc = new trangchu();

function _change_dau_nhay($str){
	$str = str_replace("'",'&#39;',$str);
	return $str;
}

function body_mail($name){
	$str = '<div style="line-height:22px">
	<p>Chào bạn: <b>'.$name.'</b></p>
	<p>Trường dạy nghề ẩm thực Netspace gửi bạn đáp án cuộc thi “Tìm hiểu về Netspace”. Mời bạn xem danh sách đoạt giải &nbsp; <a href="https://www.facebook.com/truong.day.am.thuc.netspace"><b>tại đây</b></a>.</p>
    <p>Cảm ơn bạn đã tham gia cuộc thi, chúc bạn thành công và may mắn trong cuộc sống!</p>
    <p style="font-weight:bold; font-style:italic">Đáp án.</p>
    <p style="margin-left:35px"><b>Câu 1:</b> Trường NetSpace có bao nhiêu chi nhánh trên cả nước?<br />
    <em>Trả lời:</em> Có 4 chi nhánh - Trường dạy nghề ẩm thực Netspace hiện có trụ sở chính tại số 30 Nguyễn Huy Tự, P.ĐaKao, Quận 1, TP.HCM và 4 chi nhánh:<br />
    - 19 Đặng Tất, P.Tân Định, Quận 1,Tp HCM<br />
    - 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng<br />
    - 140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ<br />
    - 51D Hùng Vương, Phường 9, Tp.Đà Lạt.
    </p>
    <p style="margin-left:35px"><b>Câu 2:</b> Trường NetSpace có bao nhiêu chương trình đào tạo?<br />
    <em>Trả lời:</em> Trường hiện có 37 chương trình đào tạo khác nhau. (bao gồm tất cả chương trình đào tạo các khoá bếp, pha chế và các khoá đặc biệt, khoá chuyên đề)</p>
    <p style="margin-left:35px"><b>Câu 3:</b> Theo bạn vì sao học nấu ăn và pha chế không dễ chút nào?<br />
    <em>Trả lời:</em> Khó bởi vì đặc thù của nghề bếp và pha chế là rất vất vả, để gắn bó với nghề lâu dài, bạn cần phải có đam mê, một chút năng khiếu, và sự nỗ lực, rèn luyện trong học tập.</p>
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
	$ip_address = $_SERVER['REMOTE_ADDR'];
	$date_start = time();
	$group_event = 1; //tim hieu ve netspace
	
	if($name!='' && $gender!='' && $phone!='' && $email!='' && $address!=''){
		$date_current = date('Y-m-d H:i:s');
		$sql = "INSERT INTO `web_event` (`name`,`gender`,`phone`,`email`,`address`,`ip_address`,`date_start`,`date_create`,`group_event`) VALUES ('{$name}','{$gender}','{$phone}','{$email}','{$address}','{$ip_address}','{$date_start}','{$date_current}','{$group_event}')";
		if(mysql_query($sql)){
			echo 1;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
}

if(isset($_POST['question'])){
	$question	= _change_dau_nhay(trim($_POST['question']));
	$answer		= _change_dau_nhay(trim($_POST['answer']));
	$ip_address = $_SERVER['REMOTE_ADDR'];
	
	$qr = mysql_query("SELECT * FROM `web_event` WHERE ip_address='{$ip_address}' ");
	$row = mysql_fetch_array($qr);
	if($row['date_end']==NULL){
		if($question==1 || $question==2){
			$sql = "UPDATE `web_event` SET `answer_{$question}`='{$answer}' WHERE ip_address='{$ip_address}' ";
		}else{
			$date_end = time();
			$sql = "UPDATE `web_event` SET `answer_{$question}`='{$answer}', `date_end`='{$date_end}' WHERE ip_address='{$ip_address}' ";
		}
		if(mysql_query($sql)){
			echo '1'; return true;
		}else{
			echo 'Vui lòng kiểm tra lại'; return false;
		}
	}else{
		echo 'Bạn đã trả lời xong 3 câu'; return false;
	}
}

if(isset($_POST['succeed'])){
	$ip_address = $_SERVER['REMOTE_ADDR'];
	$qr = mysql_query("SELECT * FROM `web_event` WHERE ip_address='{$ip_address}' ");
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