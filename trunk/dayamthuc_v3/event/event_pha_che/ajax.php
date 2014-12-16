<?php
include_once('../class/class.trangchu.php');
$tc = new trangchu();

$ip_address = $_SERVER['REMOTE_ADDR'];
$group_event = 2; //tim hieu nghe pha che

function _change_dau_nhay($str){
	$str = str_replace("'",'&#39;',$str);
	return $str;
}

function body_mail($name){
	$str = '<div style="line-height:22px">
	<p>Chào bạn: <b>'.$name.'</b></p>
	<p>Trường dạy nghề ẩm thực Netspace gửi bạn đáp án cuộc thi “TÌM HIỂU VỀ NGHỀ PHA CHẾ CHUYÊN NGHIỆP”. Mời bạn xem danh sách đoạt giải &nbsp; <a href="https://www.facebook.com/truong.day.am.thuc.netspace"><b>tại đây</b></a>.</p>
    <p style="font-weight:bold; font-style:italic">Đáp án.</p>
    <p style="margin-left:35px"><b>Câu 1:</b> Trường Netspace có bao nhiêu chương trình đào tạo pha chế chuyên nghiệp?<br />
    <em>Trả lời:</em> 5 chương trình đào tạo pha chế</p>
    <p style="margin-left:35px"><b>Câu 2:</b> Thời gian đào tạo chuyên viên pha chế tổng hợp tại trường Netspace là bao lâu?<br />
    <em>Trả lời:</em> 5 tuần (15 buổi)</p>
    <p style="margin-left:35px"><b>Câu 3:</b> Bài thi pha chế chuyên nghiệp được đánh giá theo 4 yếu tố nào?<br />
    <em>Trả lời:</em> Bài chấm điểm được đánh giá từ cách thức pha chế, thao tác pha chế, nắm rõ công thức và sản phẩm pha chế có đạt chất lượng hay không?</p>
	<p>Cuối cùng, Thay mặt toàn thể Netspace cám ơn sự ủng hộ nhiệt tình của các bạn thí sinh tham dự cuộc thi.</p>
	<p>Những bạn chưa nhận giải thưởng cũng đừng nản lòng nhé, còn rất nhiều sân chơi khác đang chờ đón các bạn.</p>
	<p>Chúc các bạn gặp nhiều may mắn và thành công trong cuộc sống!</p>
	<p>Trân trọng!<br />Trường dạy nghề Ẩm thực Netspace.</p>
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

if(isset($_POST['question'])){
	$question	= _change_dau_nhay(trim($_POST['question']));
	$answer		= _change_dau_nhay(trim($_POST['answer']));
	
	$qr = mysql_query("SELECT * FROM `web_event` WHERE `ip_address`='{$ip_address}' AND `group_event`='{$group_event}'");
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