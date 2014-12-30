<?php
session_start();
if(isset($_POST['lang']))
	$lang = $_POST['lang'];
else
	$lang = 'vi';

date_default_timezone_set('Asia/Bangkok');
include_once('class/class.trangchu.php');
$tc = new trangchu();

include_once('config.php');
include_once("languages/{$lang}.php");

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			//include_once('sendmail_smtp/send_contact.php');
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

if($_POST['dangky']=='dangky'){
	$name = trim($_POST['HoTen']);
	$email = trim($_POST['Email']);
	$phone = str_replace(' ','',$_POST['DienThoai']);
	$diachi = trim($_POST['DiaChi']);
	$ngaysinh = trim($_POST['NgaySinh']);
	$khoahoc = trim($_POST['KhoaHoc']);
	$noihoc = trim($_POST['NoiHoc']);
	
	if($name!='' && $phone!=''){
		$id = $tc->dangky_tructuyen($name,$ngaysinh,$email,$phone,$diachi,$_POST['TotNghiep'],$khoahoc,$noihoc,$_POST['thongtin_khac'],$_POST['ThanhVienHoi']);
		echo '1';
		//include_once('sendmail_smtp/send_dangky.php');
		return true;
	}else{
		echo '0';
		return false;
	}
}

if($_POST['support_online']=='support_online'){
	$session_support = 'support_online_'.$lang;
	if(isset($_SESSION[$session_support])) {
		echo $_SESSION[$session_support];
		return true;
	}
	
	$i = 0;
	$qr = $tc->chinhanh_ds($lang);
	if(mysql_num_rows($qr) > 0){
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
				//$content = file_get_contents('http://opi.yahoo.com/online?u='.$yahoo_nick[$j].'&m=t');
				//if( preg_match('/NOT ONLINE$/', $content) ) $image_support = 'yahoo_off.png'; else $image_support = 'yahoo_on.png';
				$image_support = 'yahoo_on.png';
				
				$support_chinhanh .= '<div class="ds_support_item"><a href="ymsgr:sendIM?'.$yahoo_nick[$j].'">'.$yahoo_name[$j].'<img src="images/'.$image_support.'" alt="yahoo_on" /></a></div>';
			}
			$support_chinhanh .= '</div>';
			
			$hotline_chinhanh .= '<div id="support_hotline" class="ds_support ds_support_'.$i.'">'.const_contact_phone.': <span style="color:#00F; font-size:120%">'.$row['phone'].'</span><br />Hotline: <span style="color:#F00">'.$row['hotline'].'</span></div>';
		}
		$str_support = '<div id="ds_chinhanh">'.$name_chinhanh.'</div>'.$support_chinhanh.$hotline_chinhanh.'
		<script>
		$(document).ready(function($){
			$(".ds_support").hide();
			$(".ds_support_1").show();
		});
		</script>';
		$_SESSION[$session_support] = $str_support;
		echo $str_support;
	}else echo 0;
}

if(@$_POST['google_map']){
	$id_map = $_POST['google_map'];
	include_once('blocks/map_google.php');
	return true;
}

if(@$_POST['nop_hs']){
	$tuyendung_id = trim($_POST['nop_hs']);
	$name = trim($_POST['name']);
	$diachi = trim($_POST['diachi']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$trinhdo = trim($_POST['trinhdo']);
	$content = trim($_POST['content']);
	
	if($tuyendung_id!='' && strlen($name)>5 && strlen($diachi)>5 && strlen($email)>5 && strlen($phone)>9 && $trinhdo!='' && strlen($content)>49){
		echo '1';
		$tc->tuyendung_hoso($name,$content,$diachi,$phone,$email,$trinhdo,$tuyendung_id);
		return true;
	}else{
		echo '0';
		return false;
	}
}

if(@$_POST['sendmail_hv']){
	$nguoigui = trim($_POST['nguoigui']);
	
	$title = trim($_POST['title']);
	$ds_nguoinhan = trim($_POST['ds_nguoinhan']);
	$content = $_POST['content'];
	
	if($nguoigui!='' && $title!='' && $ds_nguoinhan!=''){
		include_once('sendmail_smtp/send_hocvien.php');
		return true;
	}else{
		echo '0';
		return false;
	}
}

if(isset($_POST['register_other'])){
	if($_SESSION['register_mongoi']==1){
		echo 'Bạn đã đăng ký cuộc thi trổ tài làm “CÁC MÓN GỎI ĐẲNG CẤP” vui lòng đợi Trường kiểm tra thông tin đăng ký dự thi.';
		return true;
	}
	echo '<table width="100%" border="0" cellpadding="0" cellspacing="15" id="form_nop_hs">
        	<tr>
            	<td width="140" valign="top">Họ tên:</td>
            	<td><input type="text" name="name" class="text_dangky" maxlength="50" /><p id="name" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Địa chỉ:</td>
            	<td><input type="text" name="diachi" class="text_dangky" maxlength="250" /><p id="diachi" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Điện thoại:</td>
            	<td><input type="text" name="phone" class="text_dangky" maxlength="11" /><p id="phone" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Email:</td>
            	<td><input type="text" name="email" class="text_dangky" maxlength="50" /><p id="email" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Học viên của trường khóa mấy?</td>
            	<td><input type="text" name="hocvien_khoa" class="text_dangky" maxlength="50" /><p id="hocvien_khoa" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">&nbsp;</td>
            	<td><input type="button" name="btn_register_other" value="Gửi hồ sơ đăng ký" style="padding:6px 25px" /></td>
            </tr>
        </table>';
}

if(isset($_POST['nop_hs_register'])){
	$name = trim($_POST['name']);
	$diachi = trim($_POST['diachi']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$hocvien_khoa = trim($_POST['hocvien_khoa']);
	
	if(strlen($name)>5 && strlen($diachi)>5 && strlen($email)>5 && strlen($phone)>9 &&  strlen($hocvien_khoa)>3){
		echo '1';
		$_SESSION['register_mongoi'] = 1;
		$tc->register_cacmongoi($name,$diachi,$phone,$email,$hocvien_khoa);
		return true;
	}else{
		echo '0';
		return false;
	}
}

mysql_close();
return true;